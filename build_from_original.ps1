$ErrorActionPreference = "Stop"
if (-not (Test-Path "original.apk")) {
    Write-Host "ERROR: Place the original Samsung APK in this folder as 'original.apk'" -ForegroundColor Red
    exit
}
apktool d original.apk -o decompiled_app -f
if (Test-Path "decompiled_app\lib") { Remove-Item "decompiled_app\lib" -Recurse -Force }
Copy-Item "smali_patch\*.smali" "decompiled_app\smali\com\samsungimaging\asphodel\multimedia\" -Force
$cpuFile = "decompiled_app\smali\com\samsungimaging\asphodel\multimedia\CPUFeaturesJNI.smali"
if (Test-Path $cpuFile) {
    $cpuContent = (Get-Content $cpuFile -Raw) -replace 'invoke-static \{v0\}, Ljava/lang/System;->loadLibrary\(Ljava/lang/String;\)V', '# removed 32-bit loadLibrary'
    [System.IO.File]::WriteAllText((Resolve-Path $cpuFile), $cpuContent, (New-Object System.Text.UTF8Encoding $false))
}
$yml = "decompiled_app\apktool.yml"
$ymlText = (Get-Content $yml -Raw) -replace "targetSdkVersion:\s*'?\d+'?", "targetSdkVersion: '28'"
[System.IO.File]::WriteAllText((Resolve-Path $yml), $ymlText, (New-Object System.Text.UTF8Encoding $false))
apktool b decompiled_app -o patched_unsigned.apk
zipalign -p -f 4 patched_unsigned.apk patched_aligned.apk
Write-Host "Done! Sign 'patched_aligned.apk' with apksigner." -ForegroundColor Green