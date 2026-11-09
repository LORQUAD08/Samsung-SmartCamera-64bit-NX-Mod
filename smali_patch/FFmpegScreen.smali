.class Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;
.super Ljava/lang/Object;
.source "FFmpegJNI.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$samsungimaging$asphodel$multimedia$FFmpegJNI$Command:[I = null

.field private static final SCREEN_TYPE_NUM:I = 0x4

.field private static final TAG:Ljava/lang/String; = "[FFmpegScreen]"

.field private static m_surfaceHolder:Landroid/view/SurfaceHolder;


# instance fields
.field private m_background:[Landroid/graphics/Bitmap;

.field private m_canvas:Landroid/graphics/Canvas;

.field private m_canvasClearCount:I

.field private m_curCameraRotate:I

.field private m_curScreenType:I

.field private m_matrix:Landroid/graphics/Matrix;

.field public m_pictureQueueLen:I

.field private m_screenPositoin:[[I

.field private m_screenSize:[[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$samsungimaging$asphodel$multimedia$FFmpegJNI$Command()[I
    .locals 3

    .prologue
    .line 359
    sget-object v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->$SWITCH_TABLE$com$samsungimaging$asphodel$multimedia$FFmpegJNI$Command:[I

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
    sput-object v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->$SWITCH_TABLE$com$samsungimaging$asphodel$multimedia$FFmpegJNI$Command:[I

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
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    sput-object v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_surfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[[I[[III)V
    .locals 3
    .param p1, "portraitBackground"    # Landroid/graphics/Bitmap;
    .param p2, "landscapeBackground"    # Landroid/graphics/Bitmap;
    .param p3, "screenPositoin"    # [[I
    .param p4, "screenSize"    # [[I
    .param p5, "curScreenType"    # I
    .param p6, "curCameraRotate"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object v0, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_background:[Landroid/graphics/Bitmap;

    .line 367
    iput-object v0, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_screenPositoin:[[I

    .line 368
    iput-object v0, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_screenSize:[[I

    .line 369
    iput v1, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_curScreenType:I

    .line 370
    iput v1, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_curCameraRotate:I

    .line 371
    iput-object v0, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_canvas:Landroid/graphics/Canvas;

    .line 372
    iput-object v0, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_matrix:Landroid/graphics/Matrix;

    .line 373
    iput v1, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_canvasClearCount:I

    .line 374
    iput v1, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_pictureQueueLen:I

    .line 382
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_matrix:Landroid/graphics/Matrix;

    .line 384
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_background:[Landroid/graphics/Bitmap;

    .line 385
    iget-object v0, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_background:[Landroid/graphics/Bitmap;

    aput-object p1, v0, v1

    .line 386
    iget-object v0, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_background:[Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 388
    new-array v0, v2, [[I

    iput-object v0, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_screenPositoin:[[I

    .line 389
    new-array v0, v2, [[I

    iput-object v0, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_screenSize:[[I

    .line 391
    invoke-virtual {p0, p5, p6, p3, p4}, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->changeScreenConfig(II[[I[[I)I

    .line 392
    return-void
.end method

.method private delay(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "tm"    # I

    .prologue
    .line 476
    if-gez p2, :cond_0

    .line 477
    const/16 p2, 0x7d0

    .line 478
    :cond_0
    sget-object v0, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-=> delay1 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsungimaging/connectionmanager/util/Trace;->d(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 480
    int-to-long v0, p2

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_0
    sget-object v0, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-=> delay2 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsungimaging/connectionmanager/util/Trace;->d(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 485
    return-void

    .line 481
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public changeScreenConfig(II[[I[[I)I
    .locals 6
    .param p1, "curScreenType"    # I
    .param p2, "curCameraRotate"    # I
    .param p3, "screenPositoin"    # [[I
    .param p4, "screenSize"    # [[I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 519
    iput v3, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_canvasClearCount:I

    .line 521
    iput p1, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_curScreenType:I

    .line 522
    iput p2, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_curCameraRotate:I

    .line 524
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 544
    return v3

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_screenPositoin:[[I

    new-array v2, v5, [I

    aput-object v2, v1, v0

    .line 529
    if-eqz p3, :cond_1

    .line 530
    iget-object v1, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_screenPositoin:[[I

    aget-object v1, v1, v0

    aget-object v2, p3, v0

    aget v2, v2, v3

    aput v2, v1, v3

    .line 531
    iget-object v1, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_screenPositoin:[[I

    aget-object v1, v1, v0

    aget-object v2, p3, v0

    aget v2, v2, v4

    aput v2, v1, v4

    .line 535
    :cond_1
    iget-object v1, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_screenSize:[[I

    new-array v2, v5, [I

    aput-object v2, v1, v0

    .line 538
    if-eqz p4, :cond_2

    .line 539
    iget-object v1, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_screenSize:[[I

    aget-object v1, v1, v0

    aget-object v2, p4, v0

    aget v2, v2, v3

    aput v2, v1, v3

    .line 540
    iget-object v1, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_screenSize:[[I

    aget-object v1, v1, v0

    aget-object v2, p4, v0

    aget v2, v2, v4

    aput v2, v1, v4

    .line 524
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public configureSurface(Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "cmd"    # Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 488
    invoke-static {}, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->$SWITCH_TABLE$com$samsungimaging$asphodel$multimedia$FFmpegJNI$Command()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI$Command;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 513
    sget-object v0, Lcom/samsungimaging/connectionmanager/util/Trace$Tag;->FFMPEG:Lcom/samsungimaging/connectionmanager/util/Trace$Tag;

    const-string v1, "Unknown Command!"

    invoke-static {v0, v1}, Lcom/samsungimaging/connectionmanager/util/Trace;->e(Lcom/samsungimaging/connectionmanager/util/Trace$Tag;Ljava/lang/String;)V

    .line 516
    :goto_0
    :pswitch_0
    return-void

    .line 499
    :pswitch_1
    sput-object p2, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_surfaceHolder:Landroid/view/SurfaceHolder;

    goto :goto_0

    .line 488
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public drawScreen(Landroid/graphics/Bitmap;)I
    .locals 6

    if-eqz p1, :ret_err
    sget-object v0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_surfaceHolder:Landroid/view/SurfaceHolder;
    if-eqz v0, :ret_err

    :try_draw
    monitor-enter v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;
    move-result-object v1
    if-nez v1, :canvas_ok
    monitor-exit v0
    const/4 v0, -0x1
    return v0

    :canvas_ok
    # Pulisce lo sfondo con il nero (evita artefatti ai bordi quando cambia aspect ratio o rotazione!)
    const/high16 v2, -0x1000000
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget v2, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_curCameraRotate:I
    sparse-switch v2, :sswitch_data_rot
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
    move-result v3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
    move-result v4
    goto :calc_mat

    :sswitch_90_270
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
    move-result v3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
    move-result v4

    :calc_mat
    iget-object v2, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_matrix:Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget v5, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_curCameraRotate:I
    if-eqz v5, :scale_mat
    int-to-float v5, v5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
    move-result v2
    int-to-float v2, v2
    const/high16 v4, 0x40000000    # 2.0f
    div-float/2addr v2, v4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
    move-result v3
    int-to-float v3, v3
    div-float/2addr v3, v4
    iget-object v4, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_matrix:Landroid/graphics/Matrix;
    invoke-virtual {v4, v5, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget v2, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_curCameraRotate:I
    const/16 v3, 0x5a
    if-eq v2, v3, :rot_dims
    const/16 v3, 0x10e
    if-ne v2, v3, :norm_dims
    :rot_dims
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
    move-result v3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
    move-result v4
    goto :scale_mat
    :norm_dims
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
    move-result v3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
    move-result v4

    :scale_mat
    iget-object v2, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_screenSize:[[I
    iget v5, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_curScreenType:I
    aget-object v2, v2, v5
    const/4 v5, 0x0
    aget v5, v2, v5
    int-to-float v5, v5
    int-to-float v3, v3
    div-float/2addr v5, v3

    const/4 v3, 0x1
    aget v2, v2, v3
    int-to-float v2, v2
    int-to-float v3, v4
    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_matrix:Landroid/graphics/Matrix;
    invoke-virtual {v3, v5, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    # Sposta l'immagine nella posizione calcolata da RemoteViewFinder (centrata col giusto aspect ratio!)
    iget-object v2, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_screenPositoin:[[I
    iget v3, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_curScreenType:I
    aget-object v2, v2, v3
    const/4 v3, 0x0
    aget v3, v2, v3
    int-to-float v3, v3
    const/4 v4, 0x1
    aget v2, v2, v4
    int-to-float v2, v2
    iget-object v4, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_matrix:Landroid/graphics/Matrix;
    invoke-virtual {v4, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    # Disegna direttamente con la Matrix senza allocare nuove Bitmap in RAM!
    iget-object v2, p0, Lcom/samsungimaging/asphodel/multimedia/FFmpegScreen;->m_matrix:Landroid/graphics/Matrix;
    const/4 v3, 0x0
    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    monitor-exit v0
    const/4 v0, 0x0
    return v0

    :catchall_draw
    move-exception v1
    monitor-exit v0
    throw v1
    :try_draw_e
    .catchall {:try_draw .. :try_draw_e} :catchall_draw
    .catch Ljava/lang/Exception; {:try_draw .. :try_draw_e} :catch_draw

    :catch_draw
    :ret_err
    const/4 v0, -0x1
    return v0

    nop
    :sswitch_data_rot
    .sparse-switch
        0x5a -> :sswitch_90_270
        0x10e -> :sswitch_90_270
    .end sparse-switch
.end method
