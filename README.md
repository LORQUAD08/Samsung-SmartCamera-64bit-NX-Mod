# Samsung Smart Camera App - 64-Bit Mod (Remote Viewfinder Fix)

Restores full **64-bit Android compatibility** (Galaxy S24 / S25 / S26 series, Pixel 7 / 8 / 9 / 10, Android 14 / 15 / 16) and fixes the **Remote Viewfinder** crash on **Samsung NX series** mirrorless cameras (tested on **Samsung NX300**).

---
<img width="280" alt="Screenshot_20261108_151738_Samsung Smart Camera App" src="https://github.com/user-attachments/assets/903e3645-9ff2-44f4-b838-21a35056b088" />

## The Problem

1. **32-bit Native Libraries (`armeabi-v7a`):** The official Samsung Smart Camera App (`com.samsungimaging.connectionmanager`) bundles legacy 32-bit JNI libraries (`libcpufeatures-jni.so`, `libffplay-jni.so`, `libffplay-neon-jni.so`). Modern 64-bit-only ARMv9 smartphones refuse to install the app or crash immediately when launching the Remote Viewfinder.
2. **Proprietary AVI H.264 Stream:** Samsung NX cameras stream live viewfinder video over HTTP (`http://192.168.102.1:7679/livestream.avi`) inside an AVI container (`RIFF...AVI LIST...movi`) using **H.264 (`vidsH264`)** video chunks (`00dc` / `00db`).
3. **Android 14+ Installation Block:** The original app targets API 19, causing Android 14 / 15 / 16 to block standard APK installation without ADB.

---

## What This Mod Does

* **100% 64-Bit Native Compatibility:** Removes all legacy 32-bit `.so` libraries and replaces JNI calls in `CPUFeaturesJNI` and `FFmpegJNI`.
* **Hardware-Accelerated H.264 Decoder (`H264Player.smali`):** Implements a custom AVI `00dc` demuxer that feeds H.264 frames directly into Android's hardware `MediaCodec` (`video/avc`) in off-screen `YUV_420_888` mode.
* **Aspect Ratio, Rotation & Memory Leak Fixes (`FFmpegScreen.smali`):** Preserves 4:3 / 3:2 / 16:9 aspect ratios across portrait/landscape phone and camera rotations while fixing a `Bitmap` memory leak in Samsung's original rendering loop.
* **Direct Install on Android 14 / 15 / 16:** Updates `targetSdkVersion` to `28` so users can install the APK directly on their phone without needing a PC or ADB.

---

## Installation Guide (English)

1. **Uninstall** any previous version of *Samsung Smart Camera App* from your phone.
2. Download **`Samsung_SmartCamera_64bit_v1.0.apk`** from the [**Releases**](../../releases) section (on the right sidebar) and install it on your phone.
3. **Important Connection Tip for Modern Phones:**
   * Turn on your Samsung NX camera and launch **Remote Viewfinder** (or *MobileLink*).
   * On your smartphone, **turn OFF Mobile Data (4G/5G)** temporarily and connect to the camera's Wi-Fi (`AP_SSC_NX...`). *(Modern Android versions automatically route HTTP traffic over 5G if the Wi-Fi network has no internet access).*
   * Open the **Samsung Smart Camera App** and enjoy!

---

## Italiano - Guida e Descrizione

Questa modifica ripristina il funzionamento nativo a **64-bit** dell'app **Samsung Smart Camera** sui moderni smartphone Android (serie Galaxy S24 / S25 / S26, Google Pixel 7 / 8 / 9 / 10, Android 14 / 15 / 16) che hanno rimosso il supporto alle vecchie librerie a 32-bit (`armeabi-v7a`).

### Novita della versione 1.0:
* **Rimozione dipendenze a 32-bit:** Eliminati i crash all'avvio del *Remote Viewfinder*.
* **Nuovo motore video H.264 (`H264Player`):** Sfrutta il decoder hardware a 64-bit `MediaCodec` (`video/avc`) di Android per decodificare il flusso `livestream.avi` (`vidsH264`) delle fotocamere serie **Samsung NX** (testato su **Samsung NX300**).
* **Proporzioni e Rotazione corrette:** Risolto lo stretching dell'immagine e i crash di memoria durante la rotazione dello smartphone o della fotocamera.
* **Installazione diretta su Android 14 / 15 / 16:** Aggiornato `targetSdkVersion` a `28` per consentire l'installazione diretta dal telefono senza usare il PC o ADB.

### Come installare e usare l'app:
1. Disinstalla eventuali versioni precedenti dell'app dal telefono.
2. Scarica e installa **`Samsung_SmartCamera_64bit_v1.0.apk`** dalla sezione [**Releases**](../../releases) (nella colonna in alto a destra).
3. **Nota importante per la connessione Wi-Fi:** Prima di connetterti al Wi-Fi della fotocamera (`AP_SSC_NX300...`), **disattiva temporaneamente i Dati Mobili (4G/5G)** sullo smartphone (altrimenti Android instradera il traffico sulla rete mobile ignorando la fotocamera perche il Wi-Fi della NX non ha accesso a Internet).

---

## Building From Source / Self-Patching

If you prefer to patch your own copy of the original Samsung APK (`com.samsungimaging.connectionmanager_1.5.21151029.apk`):
1. Install `apktool`, `zipalign`, and `apksigner`.
2. Place the untouched original APK in this repository folder and rename it to `original.apk`.
3. Run `./build_from_original.ps1` in PowerShell.

## Disclaimer
This is an unofficial community-driven compatibility patch created for hardware preservation and interoperability purposes (allowing legacy Samsung NX cameras to continue functioning with modern 64-bit smartphones). All original trademarks and app resources belong to Samsung Electronics Co., Ltd.
