.class public Lcom/samsungimaging/asphodel/multimedia/H264Player;
.super Ljava/lang/Object;

.field private static s_pts:J = 0x0L
.field private static s_rgb:[I

.method public static play(Ljava/lang/String;Landroid/view/Surface;)V
    .locals 11

    const/high16 v0, 0x40000
    new-array v6, v0, [B
    new-instance v5, Landroid/media/MediaCodec$BufferInfo;
    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :reconnect_loop
    invoke-static {}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->isActive()Z
    move-result v0
    if-eqz v0, :exit_all

    const/4 v2, 0x0
    const/4 v3, 0x0
    const/4 v4, 0x0

    :try_start_all
    new-instance v0, Ljava/net/URL;
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    move-result-object v0
    check-cast v0, Ljava/net/HttpURLConnection;
    move-object v2, v0

    const/16 v0, 0xfa0
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    const/4 v0, 0x1
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v0, Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedInputStream;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    move-result-object v7
    const/high16 v8, 0x40000
    invoke-direct {v1, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    move-object v3, v0

    # Inizializza MediaCodec in modalita Off-Screen (Surface = null): immune alle rotazioni dello schermo!
    invoke-static {}, Lcom/samsungimaging/asphodel/multimedia/H264Player;->initOffscreenCodec()Landroid/media/MediaCodec;
    move-result-object v4
    if-eqz v4, :cleanup

    const/4 v7, 0x0

    :find_movi
    invoke-static {}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->isActive()Z
    move-result v0
    if-eqz v0, :cleanup

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I
    move-result v0
    const/4 v1, -0x1
    if-eq v0, v1, :cleanup

    shl-int/lit8 v1, v7, 0x8
    and-int/lit16 v0, v0, 0xff
    or-int v7, v1, v0

    const v0, 0x6d6f7669
    if-eq v7, v0, :chunk_loop
    goto :find_movi

    :chunk_loop
    invoke-static {}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->isActive()Z
    move-result v0
    if-eqz v0, :cleanup

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I
    move-result v0
    const/4 v1, -0x1
    if-eq v0, v1, :cleanup

    shl-int/lit8 v1, v7, 0x8
    and-int/lit16 v0, v0, 0xff
    or-int v7, v1, v0

    const v0, 0x30306463
    if-eq v7, v0, :found_chunk
    const v0, 0x30306462
    if-ne v7, v0, :chunk_loop

    :found_chunk
    const/4 v7, 0x0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I
    move-result v0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I
    move-result v1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I
    move-result v8
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I
    move-result v9
    or-int v10, v0, v1
    or-int/2addr v10, v8
    or-int/2addr v10, v9
    if-ltz v10, :cleanup

    shl-int/lit8 v1, v1, 0x8
    or-int/2addr v0, v1
    shl-int/lit8 v8, v8, 0x10
    or-int/2addr v0, v8
    shl-int/lit8 v9, v9, 0x18
    or-int v8, v0, v9

    if-lez v8, :chunk_loop
    const/high16 v0, 0x40000
    if-ge v8, v0, :chunk_loop

    const/4 v0, 0x0
    invoke-virtual {v3, v6, v0, v8}, Ljava/io/DataInputStream;->readFully([BII)V

    invoke-static {v4, v6, v8, v5}, Lcom/samsungimaging/asphodel/multimedia/H264Player;->decodeToBitmap(Landroid/media/MediaCodec;[BILandroid/media/MediaCodec$BufferInfo;)Z
    move-result v0
    if-eqz v0, :cleanup
    goto :chunk_loop
    :try_end_all
    .catch Ljava/lang/Exception; {:try_start_all .. :try_end_all} :catch_all

    :catch_all
    move-exception v0

    :cleanup
    invoke-static {v4}, Lcom/samsungimaging/asphodel/multimedia/H264Player;->closeCodec(Landroid/media/MediaCodec;)V
    :try_start_c
    if-eqz v3, :c2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :c2
    if-eqz v2, :done_iter
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c
    :catch_c

    :done_iter
    invoke-static {}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->isActive()Z
    move-result v0
    if-eqz v0, :exit_all
    const-wide/16 v0, 0x64
    :try_sl
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_sl_e
    .catch Ljava/lang/Exception; {:try_sl .. :try_sl_e} :catch_sl
    :catch_sl
    goto :reconnect_loop

    :exit_all
    return-void
.end method

.method private static initOffscreenCodec()Landroid/media/MediaCodec;
    .locals 5
    const/4 v0, 0x0
    :try_init
    const-string v1, "video/avc"
    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    move-result-object v0

    const-string v1, "video/avc"
    const/16 v2, 0x280
    const/16 v3, 0x1e0
    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    move-result-object v1

    # Richiede formato YUV420 flessibile standard (COLOR_FormatYUV420Flexible = 0x7f420888)
    const-string v2, "color-format"
    const v3, 0x7f420888
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v2, 0x0
    const/4 v3, 0x0
    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    return-object v0
    :try_init_e
    .catch Ljava/lang/Exception; {:try_init .. :try_init_e} :catch_init
    :catch_init
    invoke-static {v0}, Lcom/samsungimaging/asphodel/multimedia/H264Player;->closeCodec(Landroid/media/MediaCodec;)V
    const/4 v0, 0x0
    return-object v0
.end method

.method private static decodeToBitmap(Landroid/media/MediaCodec;[BILandroid/media/MediaCodec$BufferInfo;)Z
    .locals 6
    :try_dec
    const/4 v3, 0x0

    :retry_in
    const-wide/16 v0, 0x0
    invoke-virtual {p0, p3, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    move-result v2
    if-ltz v2, :try_deq_in
    invoke-static {p0, v2}, Lcom/samsungimaging/asphodel/multimedia/H264Player;->processOutputImage(Landroid/media/MediaCodec;I)V
    const/4 v0, 0x0
    invoke-virtual {p0, v2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    goto :retry_in

    :try_deq_in
    const-wide/16 v0, 0x1388
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    move-result v2
    if-gez v2, :got_in_buf
    add-int/lit8 v3, v3, 0x1
    const/16 v0, 0x28
    if-ge v3, v0, :dec_ok
    goto :retry_in

    :got_in_buf
    invoke-virtual {p0, v2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;
    move-result-object v0
    if-eqz v0, :drain_post
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    const/4 v1, 0x0
    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sget-wide v4, Lcom/samsungimaging/asphodel/multimedia/H264Player;->s_pts:J
    const-wide/32 v0, 0x8235
    add-long/2addr v4, v0
    sput-wide v4, Lcom/samsungimaging/asphodel/multimedia/H264Player;->s_pts:J

    invoke-static {p0, v2, p2, v4, v5}, Lcom/samsungimaging/asphodel/multimedia/H264Player;->queueIn(Landroid/media/MediaCodec;IIJ)V

    :drain_post
    const-wide/16 v0, 0x0
    invoke-virtual {p0, p3, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    move-result v2
    if-ltz v2, :dec_ok
    invoke-static {p0, v2}, Lcom/samsungimaging/asphodel/multimedia/H264Player;->processOutputImage(Landroid/media/MediaCodec;I)V
    const/4 v0, 0x0
    invoke-virtual {p0, v2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    goto :drain_post

    :dec_ok
    const/4 v0, 0x1
    return v0
    :try_dec_e
    .catch Ljava/lang/Exception; {:try_dec .. :try_dec_e} :catch_dec
    :catch_dec
    const/4 v0, 0x0
    return v0
.end method

# Estrae l'Image YUV_420_888 da MediaCodec, la converte in ARGB dentro la Bitmap di FFmpegJNI e chiama onDisplay()!
.method private static processOutputImage(Landroid/media/MediaCodec;I)V
    .locals 22

    :try_img
    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaCodec;->getOutputImage(I)Landroid/media/Image;
    move-result-object v1
    if-eqz v1, :done_img

    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I
    move-result v8
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I
    move-result v9

    mul-int v0, v8, v9
    sget-object v2, Lcom/samsungimaging/asphodel/multimedia/H264Player;->s_rgb:[I
    if-eqz v2, :alloc_rgb
    array-length v3, v2
    if-ge v3, v0, :rgb_ok
    :alloc_rgb
    new-array v2, v0, [I
    sput-object v2, Lcom/samsungimaging/asphodel/multimedia/H264Player;->s_rgb:[I

    :rgb_ok
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;
    move-result-object v0
    const/4 v3, 0x0
    aget-object v3, v0, v3
    const/4 v4, 0x1
    aget-object v4, v0, v4
    const/4 v5, 0x2
    aget-object v5, v0, v5

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;
    move-result-object v6
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;
    move-result-object v7
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;
    move-result-object v10

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I
    move-result v3
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I
    move-result v11
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I
    move-result v4

    const/4 v12, 0x0
    const/4 v13, 0x0

    :loop_y
    if-ge v12, v9, :copy_to_bmp
    mul-int v14, v12, v3
    shr-int/lit8 v0, v12, 0x1
    mul-int v15, v0, v11

    const/16 v16, 0x0
    :loop_x
    move/from16 v0, v16
    if-ge v0, v8, :next_y

    add-int v0, v14, v16
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->get(I)B
    move-result v0
    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v17, v16, 0x1
    mul-int v17, v17, v4
    add-int v17, v15, v17

    move/from16 v5, v17
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->get(I)B
    move-result v18
    move/from16 v0, v18
    and-int/lit16 v0, v0, 0xff
    add-int/lit8 v18, v0, -0x80

    invoke-virtual {v10, v5}, Ljava/nio/ByteBuffer;->get(I)B
    move-result v5
    and-int/lit16 v5, v5, 0xff
    add-int/lit8 v5, v5, -0x80

    add-int v0, v14, v16
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->get(I)B
    move-result v0
    and-int/lit16 v0, v0, 0xff

    # Conversione rapida YUV -> RGB intero
    mul-int/lit16 v19, v5, 0x59c
    shr-int/lit8 v19, v19, 0xa
    add-int v19, v0, v19

    mul-int/lit16 v20, v18, 0x160
    mul-int/lit16 v5, v5, 0x2db
    add-int v20, v20, v5
    shr-int/lit8 v20, v20, 0xa
    sub-int v20, v0, v20

    mul-int/lit16 v5, v18, 0x718
    shr-int/lit8 v5, v5, 0xa
    add-int/2addr v0, v5

    const/16 v5, 0xff
    if-gez v19, :r_max
    const/16 v19, 0x0
    goto :g_chk
    :r_max
    move/from16 v21, v19
    if-le v21, v5, :g_chk
    const/16 v19, 0xff

    :g_chk
    if-gez v20, :g_max
    const/16 v20, 0x0
    goto :b_chk
    :g_max
    move/from16 v21, v20
    if-le v21, v5, :b_chk
    const/16 v20, 0xff

    :b_chk
    if-gez v0, :b_max
    const/4 v0, 0x0
    goto :pack_px
    :b_max
    if-le v0, v5, :pack_px
    const/16 v0, 0xff

    :pack_px
    const/high16 v5, -0x1000000
    shl-int/lit8 v19, v19, 0x10
    or-int v5, v5, v19
    shl-int/lit8 v20, v20, 0x8
    or-int v5, v5, v20
    or-int/2addr v5, v0

    aput v5, v2, v13
    add-int/lit8 v13, v13, 0x1
    add-int/lit8 v16, v16, 0x1
    goto :loop_x

    :next_y
    add-int/lit8 v12, v12, 0x1
    goto :loop_y

    :copy_to_bmp
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    invoke-static {v2, v8, v9}, Lcom/samsungimaging/asphodel/multimedia/FFmpegJNI;->renderPixels([III)V
    :try_img_e
    .catch Ljava/lang/Exception; {:try_img .. :try_img_e} :catch_img
    :catch_img
    :done_img
    return-void
.end method

.method private static closeCodec(Landroid/media/MediaCodec;)V
    .locals 1
    if-eqz p0, :done_close
    :try_cl
    invoke-virtual {p0}, Landroid/media/MediaCodec;->stop()V
    :try_cl_e
    .catch Ljava/lang/Exception; {:try_cl .. :try_cl_e} :catch_cl
    :catch_cl
    :try_rel
    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V
    :try_rel_e
    .catch Ljava/lang/Exception; {:try_rel .. :try_rel_e} :catch_rel
    :catch_rel
    :done_close
    return-void
.end method

.method private static queueIn(Landroid/media/MediaCodec;IIJ)V
    .locals 7
    const/4 v2, 0x0
    const/4 v6, 0x0
    move-object v0, p0
    move v1, p1
    move v3, p2
    move-wide v4, p3
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    return-void
.end method