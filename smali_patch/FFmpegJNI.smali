.class public Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;
.super Ljava/lang/Object;
.source "FFmpegJNI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$samsungimaging$asphodel$multimedia$FFmpegJNI$Command:[I = null

.field public static final ARG_VIDEO_STREAMING_FLUSH:Ljava/lang/String; = "ffplay flush"

.field public static final ARG_VIDEO_STREAMING_QUIT:Ljava/lang/String; = "ffplay quit"

.field public static final ARG_VIDEO_STREAMING_TOGGLE_PAUSE:Ljava/lang/String; = "ffplay toggle_pause"

.field private static final DELIMITER:Ljava/lang/String; = " "

.field private static final FFMPEG_ARGB:I = 0x1b

.field private static final FFMPEG_RGB565LE:I = 0x2c

.field public static final RESOLUTION_QVGA:I = 0x0

.field public static final RESOLUTION_VGA:I = 0x1

.field public static final SCREEN_TYPE_PHONE_LAND_CAMERA_LAND:I = 0x2

.field public static final SCREEN_TYPE_PHONE_LAND_CAMERA_PORT:I = 0x3

.field public static final SCREEN_TYPE_PHONE_PORT_CAMERA_LAND:I = 0x0

.field public static final SCREEN_TYPE_PHONE_PORT_CAMERA_PORT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[FFmpegJNI]"

.field public static mConnectResponse:Z

.field private static m_Resolution:I

.field private static m_argc:I

.field private static m_argv:[Ljava/lang/String;

.field private static m_currentFrameIdx:I

.field private static m_ffmpegMainThread:Ljava/lang/Thread;

.field private static m_ffmpegPicture:[Lcom/samsungimaging/asphodel/multimedia/FFmpegPicture;

.field private static m_ffmpegScreen:Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;

.field private static m_frameCount:I

.field private static m_pictureHeigtht:I

.field private static m_pictureQueueLen:I

.field private static m_pictureWidth:I

.field private static m_run:Z

.field private static volatile m_isStreaming:Z = false

.field private static volatile m_isPaused:Z = false
.field private static volatile m_camDegree:I = 0
.field private static volatile m_holder:Landroid/view/SurfaceHolder;


# direct methods
.method static synthetic $SWITCH_TABLE$com$samsungimaging$asphodel$multimedia$FFmpegJNI$Command()[I
    .locals 3

    .prologue
    .line 11
    sget-object v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->$SWITCH_TABLE$com$samsungimaging$asphodel$multimedia$FFmpegJNI$Command:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->values()[Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->FRAME_COUNT_GET:Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;

    invoke-virtual {v1}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->SCREEN_CONFIG_CHANGE:Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;

    invoke-virtual {v1}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->SURFACE_CHANGED:Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;

    invoke-virtual {v1}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->SURFACE_CREATED:Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;

    invoke-virtual {v1}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->SURFACE_DESTROYED:Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;

    invoke-virtual {v1}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->VIDEO_STREAMING_FLUSH:Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;

    invoke-virtual {v1}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->VIDEO_STREAMING_QUIT:Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;

    invoke-virtual {v1}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->VIDEO_STREAMING_START:Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;

    invoke-virtual {v1}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->VIDEO_STREAMING_TOGGLE_PAUSE:Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;

    invoke-virtual {v1}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->$SWITCH_TABLE$com$samsungimaging$asphodel$multimedia$FFmpegJNI$Command:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 46
    sput-boolean v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_run:Z

    .line 47
    sput v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_argc:I

    .line 48
    sput-object v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_argv:[Ljava/lang/String;

    .line 49
    sput-object v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_ffmpegMainThread:Ljava/lang/Thread;

    .line 50
    sput-object v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_ffmpegScreen:Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;

    .line 51
    sput v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_frameCount:I

    .line 52
    sput v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_currentFrameIdx:I

    .line 53
    sput v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_pictureQueueLen:I

    .line 54
    sput v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_pictureWidth:I

    .line 55
    sput v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_pictureHeigtht:I

    .line 56
    sput-object v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_ffmpegPicture:[Lcom/samsungimaging/asphodel/multimedia/FFmpegPicture;

    .line 57
    const/4 v0, 0x1

    sput v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_Resolution:I

    .line 60
    sput-boolean v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->mConnectResponse:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_argc:I

    return v0
.end method

.method static synthetic access$1()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_argv:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(I[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 228
    invoke-static {p0, p1}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->ffplayMain(I[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 49
    sput-object p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_ffmpegMainThread:Ljava/lang/Thread;

    return-void
.end method

.method public static construct(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[[I[[III)I
    .locals 8

    new-instance v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;
    move-object v1, p0
    move-object v2, p1
    move-object v3, p2
    move-object v4, p3
    move v5, p4
    move v6, p5
    invoke-direct/range {v0 .. v6}, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[[I[[III)V

    sput-object v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_ffmpegScreen:Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;

    const/4 v7, 0x1
    sput-boolean v7, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_run:Z

    return v7
.end method


.method public static destruct()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    sput-boolean v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_run:Z

    .line 87
    sput v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_frameCount:I

    .line 88
    return v0
.end method

.method public static getCameraDegree()I
    .locals 1
    sget v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_camDegree:I
    return v0
.end method

.method public static getValidSurface()Landroid/view/Surface;
    .locals 2
    sget-object v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_holder:Landroid/view/SurfaceHolder;
    if-eqz v0, :null_surf
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;
    move-result-object v0
    if-eqz v0, :null_surf
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z
    move-result v1
    if-eqz v1, :null_surf
    return-object v0
    :null_surf
    const/4 v0, 0x0
    return-object v0
.end method

.method public static isActive()Z
    .locals 1
    sget-boolean v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_isStreaming:Z
    if-eqz v0, :no
    sget-boolean v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_run:Z
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method

.method public static incFrame()V
    .locals 1
    sget v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_frameCount:I
    add-int/lit8 v0, v0, 0x1
    sput v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_frameCount:I
    return-void
.end method

.method public static renderPixels([III)V
    .locals 9

    :try_r
    sget v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_pictureWidth:I
    if-ne v0, p1, :reinit_q
    sget v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_pictureHeigtht:I
    if-eq v0, p2, :q_ok
    :reinit_q
    const/4 v0, 0x5
    const/16 v1, 0x1b
    invoke-static {v0, p1, p2, v1}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->onInitPictureQueue(IIII)I

    :q_ok
    sget v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_currentFrameIdx:I
    add-int/lit8 v0, v0, 0x1
    sget v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_pictureQueueLen:I
    if-lez v1, :end_r
    rem-int v8, v0, v1

    invoke-static {v8}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->onGetPicture(I)Landroid/graphics/Bitmap;
    move-result-object v0
    if-eqz v0, :end_r

    const/4 v2, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x0
    move-object v1, p0
    move v3, p1
    move v6, p1
    move v7, p2
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-static {v8}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->onDisplay(I)I
    :try_r_e
    .catch Ljava/lang/Exception; {:try_r .. :try_r_e} :catch_r
    :catch_r
    :end_r
    return-void
.end method

.method private static ffplayMain(I[Ljava/lang/String;)I
    .locals 3

    if-eqz p1, :err
    array-length v0, p1
    if-nez v0, :ok
    :err
    const/4 v0, -0x1
    return v0

    :ok
    add-int/lit8 v0, v0, -0x1
    aget-object v0, p1, v0

    const/4 v1, 0x1
    sput-boolean v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_isStreaming:Z
    sput v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_frameCount:I

    const/16 v1, 0xc8
    const/4 v2, 0x0
    invoke-static {v1, v2}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->onHttpConnetResponse(II)I

    const/4 v1, 0x0
    invoke-static {v0, v1}, Lcom/samsungimaging/asphodel/multimedia/H264Player;->play(Ljava/lang/String;Landroid/view/Surface;)V

    const/4 v0, 0x0
    sput-boolean v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_isStreaming:Z
    return v0
.end method

.method private static ffplaySDL(I[Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :done
    array-length v0, p1
    const/4 v1, 0x1
    if-le v0, v1, :done

    aget-object v0, p1, v1

    const-string v1, "quit"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :check_pause

    const/4 v0, 0x0
    sput-boolean v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_isStreaming:Z
    goto :done

    :check_pause
    const-string v1, "toggle_pause"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :done

    sget-boolean v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_isPaused:Z
    xor-int/lit8 v0, v0, 0x1
    sput-boolean v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_isPaused:Z

    :done
    const/4 v0, 0x0
    return v0
.end method


.method public static getCurrentFrame()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 335
    sget v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_currentFrameIdx:I

    invoke-static {v0}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->onGetPicture(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getFreeHeapSize()J
    .locals 6

    .prologue
    .line 272
    sget-object v0, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxMemory : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 273
    const-string v2, " totalMemory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 274
    const-string v2, " freeMemory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v0, v1}, Lcom/samsungimaging/connectionmanager/util/Trace;->d(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 275
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static getQueueSize()I
    .locals 1

    .prologue
    .line 268
    const/16 v0, 0xf

    return v0
.end method

.method public static getResolution()I
    .locals 1

    .prologue
    .line 327
    sget v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_Resolution:I

    return v0
.end method

.method private static onDisplay(I)I
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 299
    sput p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_currentFrameIdx:I

    .line 300
    sget-object v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_ffmpegScreen:Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;

    invoke-static {p0}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->onGetPicture(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->drawScreen(Landroid/graphics/Bitmap;)I

    .line 302
    sget v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_frameCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_frameCount:I

    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public static onFreezeDisplay()V
    .locals 0
    return-void
.end method

.method private static declared-synchronized onGetPicture(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 285
    const-class v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_pictureQueueLen:I

    if-ge p0, v0, :cond_0

    .line 286
    sget-object v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_ffmpegPicture:[Lcom/samsungimaging/asphodel/multimedia/FFmpegPicture;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Lcom/samsungimaging/asphodel/multimedia/FFmpegPicture;->getPicture()Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 289
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static onHttpConnectRequest(II)I
    .locals 1
    .param p0, "status"    # I
    .param p1, "value"    # I

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public static onHttpConnetResponse(II)I
    .locals 1
    .param p0, "status"    # I
    .param p1, "value"    # I

    .prologue
    .line 315
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->mConnectResponse:Z

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method private static onInitPictureQueue(IIII)I
    .locals 6
    .param p0, "len"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rgbType"    # I

    .prologue
    .line 236
    sget-object v2, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "picture queue len : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsungimaging/connectionmanager/util/Trace;->i(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 237
    sget-object v2, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "picture width : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsungimaging/connectionmanager/util/Trace;->i(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 238
    sget-object v2, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "picture height : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsungimaging/connectionmanager/util/Trace;->i(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 239
    sget-object v2, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "picture type : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsungimaging/connectionmanager/util/Trace;->i(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 241
    sput p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_pictureQueueLen:I

    .line 242
    sget-object v2, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_ffmpegScreen:Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;

    iput p0, v2, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_pictureQueueLen:I

    .line 243
    sput p1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_pictureWidth:I

    .line 244
    sput p2, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_pictureHeigtht:I

    .line 247
    const/16 v2, 0x1b

    if-ne p3, v2, :cond_0

    .line 248
    sget-object v2, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    const-string v3, "RGB Type : ARGB8888"

    invoke-static {v2, v3}, Lcom/samsungimaging/connectionmanager/util/Trace;->i(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 249
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 260
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    sget v2, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_pictureQueueLen:I

    new-array v2, v2, [Lcom/samsungimaging/asphodel/multimedia/FFmpegPicture;

    sput-object v2, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_ffmpegPicture:[Lcom/samsungimaging/asphodel/multimedia/FFmpegPicture;

    .line 261
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget v2, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_pictureQueueLen:I

    if-lt v1, v2, :cond_2

    .line 264
    const/4 v2, 0x0

    .end local v0    # "config":Landroid/graphics/Bitmap$Config;
    .end local v1    # "i":I
    :goto_2
    return v2

    .line 251
    :cond_0
    const/16 v2, 0x2c

    if-ne p3, v2, :cond_1

    .line 252
    sget-object v2, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    const-string v3, "RGB Type : RGB565"

    invoke-static {v2, v3}, Lcom/samsungimaging/connectionmanager/util/Trace;->i(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 253
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 254
    .restart local v0    # "config":Landroid/graphics/Bitmap$Config;
    goto :goto_0

    .line 256
    .end local v0    # "config":Landroid/graphics/Bitmap$Config;
    :cond_1
    sget-object v2, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    const-string v3, "Unknown RGB Type!"

    invoke-static {v2, v3}, Lcom/samsungimaging/connectionmanager/util/Trace;->e(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 257
    const/4 v2, -0x1

    goto :goto_2

    .line 262
    .restart local v0    # "config":Landroid/graphics/Bitmap$Config;
    .restart local v1    # "i":I
    :cond_2
    sget-object v2, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_ffmpegPicture:[Lcom/samsungimaging/asphodel/multimedia/FFmpegPicture;

    new-instance v3, Lcom/samsungimaging/asphodel/multimedia/FFmpegPicture;

    sget v4, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_pictureWidth:I

    sget v5, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_pictureHeigtht:I

    invoke-direct {v3, v4, v5, v0}, Lcom/samsungimaging/asphodel/multimedia/FFmpegPicture;-><init>(IILandroid/graphics/Bitmap$Config;)V

    aput-object v3, v2, v1

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static request(Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;II[[I[[I)I
    .locals 3

    sput p2, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_camDegree:I
    .param p0, "cmd"    # Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;
    .param p1, "param1"    # I
    .param p2, "param2"    # I
    .param p3, "param3"    # [[I
    .param p4, "param4"    # [[I

    .prologue
    const/4 v0, -0x1

    .line 194
    sget-boolean v1, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_run:Z

    if-nez v1, :cond_0

    .line 195
    sget-object v1, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    const-string v2, "You should call construct() function first!"

    invoke-static {v1, v2}, Lcom/samsungimaging/connectionmanager/util/Trace;->e(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 225
    :goto_0
    return v0

    .line 199
    :cond_0
    invoke-static {}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->$SWITCH_TABLE$com$samsungimaging$asphodel$multimedia$FFmpegJNI$Command()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 220
    sget-object v1, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    const-string v2, "Unknown Command!"

    invoke-static {v1, v2}, Lcom/samsungimaging/connectionmanager/util/Trace;->e(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :pswitch_0
    sget-object v0, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Command : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsungimaging/connectionmanager/util/Trace;->i(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_ffmpegScreen:Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->changeScreenConfig(II[[I[[I)I

    .line 225
    const/4 v0, 0x0

    goto :goto_0

    .line 215
    :pswitch_1
    sget v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_frameCount:I

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static request(Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;Landroid/view/SurfaceHolder;)I
    .locals 2

    sget-boolean v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_run:Z
    if-eqz v0, :not_run
    sget-object v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_ffmpegScreen:Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;
    if-eqz v0, :not_run
    invoke-virtual {v0, p0, p1}, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->configureSurface(Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;Landroid/view/SurfaceHolder;)V
    :not_run
    const/4 v0, 0x0
    return v0
.end method

.method public static request(Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;Ljava/lang/String;)I
    .locals 10
    .param p0, "cmd"    # Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 93
    sget-boolean v7, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_run:Z

    if-nez v7, :cond_0

    .line 94
    sget-object v7, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    const-string v8, "You should call construct() function first!"

    invoke-static {v7, v8}, Lcom/samsungimaging/connectionmanager/util/Trace;->e(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 159
    :goto_0
    return v6

    .line 98
    :cond_0
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_argv:[Ljava/lang/String;

    .line 99
    sget-object v7, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_argv:[Ljava/lang/String;

    array-length v7, v7

    sput v7, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_argc:I

    .line 101
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget v7, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_argc:I

    if-lt v3, v7, :cond_1

    .line 104
    sget-object v7, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "m_argc : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_argc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsungimaging/connectionmanager/util/Trace;->i(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 105
    sget-object v7, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Command : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsungimaging/connectionmanager/util/Trace;->i(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->$SWITCH_TABLE$com$samsungimaging$asphodel$multimedia$FFmpegJNI$Command()[I

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 154
    sget-object v7, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    const-string v8, "Unknown Command!"

    invoke-static {v7, v8}, Lcom/samsungimaging/connectionmanager/util/Trace;->e(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    sget-object v7, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "m_argv["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_argv:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsungimaging/connectionmanager/util/Trace;->i(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 109
    :pswitch_0
    sget-object v7, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_ffmpegMainThread:Ljava/lang/Thread;

    if-nez v7, :cond_3

    .line 110
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$1;

    invoke-direct {v7}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$1;-><init>()V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v6, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_ffmpegMainThread:Ljava/lang/Thread;

    .line 117
    sget-object v6, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_ffmpegMainThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 159
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 120
    :cond_3
    sget-object v7, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    const-string v8, "Video Streaming already started!"

    invoke-static {v7, v8}, Lcom/samsungimaging/connectionmanager/util/Trace;->i(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :pswitch_1
    sget v6, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_argc:I

    sget-object v7, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_argv:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->ffplaySDL(I[Ljava/lang/String;)I

    .line 131
    sget-object v6, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->VIDEO_STREAMING_QUIT:Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;

    if-ne p0, v6, :cond_2

    .line 132
    const/4 v4, 0x0

    .line 133
    .local v4, "loop_count":I
    const/16 v0, 0x64

    .line 134
    .local v0, "IDLE_MSEC":I
    const/16 v1, 0xbb8

    .line 137
    .local v1, "MAX_WAIT_MSEC":I
    :goto_2
    sget-object v6, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    const-string v7, "wait for termination,..."

    invoke-static {v6, v7}, Lcom/samsungimaging/connectionmanager/util/Trace;->i(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 140
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_3
    sget-boolean v6, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_run:Z

    if-eqz v6, :cond_2

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "loop_count":I
    .local v5, "loop_count":I
    const/16 v6, 0x1e

    if-gt v4, v6, :cond_2

    sget-object v6, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_ffmpegMainThread:Ljava/lang/Thread;

    if-eqz v6, :cond_2

    move v4, v5

    .end local v5    # "loop_count":I
    .restart local v4    # "loop_count":I
    goto :goto_2

    .line 141
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static setResolution(I)V
    .locals 0
    .param p0, "resolution"    # I

    .prologue
    .line 331
    sput p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->m_Resolution:I

    .line 332
    return-void
.end method



