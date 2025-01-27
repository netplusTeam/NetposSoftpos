.class public final Lcom/itextpdf/io/image/GifImageHelper;
.super Ljava/lang/Object;
.source "GifImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/image/GifImageHelper$GifParameters;
    }
.end annotation


# static fields
.field static final MAX_STACK_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeImageData(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)Z
    .locals 33
    .param p0, "gif"    # Lcom/itextpdf/io/image/GifImageHelper$GifParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    move-object/from16 v0, p0

    const/4 v1, -0x1

    .line 349
    .local v1, "NullCode":I
    iget v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->iw:I

    iget v3, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ih:I

    mul-int/2addr v2, v3

    .line 352
    .local v2, "npix":I
    const/4 v3, 0x0

    .line 354
    .local v3, "skipZero":Z
    iget-object v4, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->prefix:[S

    const/16 v5, 0x1000

    if-nez v4, :cond_0

    .line 355
    new-array v4, v5, [S

    iput-object v4, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->prefix:[S

    .line 356
    :cond_0
    iget-object v4, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->suffix:[B

    if-nez v4, :cond_1

    .line 357
    new-array v4, v5, [B

    iput-object v4, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->suffix:[B

    .line 358
    :cond_1
    iget-object v4, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->pixelStack:[B

    if-nez v4, :cond_2

    .line 359
    const/16 v4, 0x1001

    new-array v4, v4, [B

    iput-object v4, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->pixelStack:[B

    .line 361
    :cond_2
    iget v4, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->iw:I

    iget v6, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    mul-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x7

    const/16 v6, 0x8

    div-int/2addr v4, v6

    iput v4, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_line_stride:I

    .line 362
    iget v4, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_line_stride:I

    iget v7, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ih:I

    mul-int/2addr v4, v7

    new-array v4, v4, [B

    iput-object v4, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_out:[B

    .line 363
    const/4 v4, 0x1

    .line 364
    .local v4, "pass":I
    iget-boolean v7, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->interlace:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    move v6, v8

    .line 365
    .local v6, "inc":I
    :goto_0
    const/4 v7, 0x0

    .line 366
    .local v7, "line":I
    const/4 v9, 0x0

    .line 370
    .local v9, "xpos":I
    iget-object v10, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 371
    .local v10, "data_size":I
    shl-int v11, v8, v10

    .line 372
    .local v11, "clear":I
    add-int/lit8 v12, v11, 0x1

    .line 373
    .local v12, "end_of_information":I
    add-int/lit8 v13, v11, 0x2

    .line 374
    .local v13, "available":I
    move v14, v1

    .line 375
    .local v14, "old_code":I
    add-int/lit8 v15, v10, 0x1

    .line 376
    .local v15, "code_size":I
    shl-int v16, v8, v15

    add-int/lit8 v16, v16, -0x1

    .line 377
    .local v16, "code_mask":I
    const/16 v17, 0x0

    move/from16 v5, v17

    .local v5, "code":I
    :goto_1
    const/16 v17, 0x0

    if-ge v5, v11, :cond_4

    .line 378
    iget-object v8, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->prefix:[S

    aput-short v17, v8, v5

    .line 379
    iget-object v8, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->suffix:[B

    move/from16 v20, v3

    .end local v3    # "skipZero":Z
    .local v20, "skipZero":Z
    int-to-byte v3, v5

    aput-byte v3, v8, v5

    .line 377
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v20

    const/4 v8, 0x1

    goto :goto_1

    .line 384
    .end local v20    # "skipZero":Z
    .restart local v3    # "skipZero":Z
    :cond_4
    move/from16 v20, v3

    .end local v3    # "skipZero":Z
    .restart local v20    # "skipZero":Z
    move/from16 v3, v17

    .local v3, "bi":I
    move/from16 v8, v17

    .local v8, "top":I
    move/from16 v21, v17

    .local v21, "first":I
    move/from16 v22, v17

    .local v22, "count":I
    move/from16 v23, v17

    .line 386
    .local v17, "datum":I
    .local v23, "bits":I
    const/16 v24, 0x0

    move/from16 v30, v21

    move/from16 v21, v3

    move/from16 v3, v30

    move/from16 v31, v23

    move/from16 v23, v4

    move/from16 v4, v31

    move/from16 v32, v24

    move/from16 v24, v5

    move/from16 v5, v32

    .local v3, "first":I
    .local v4, "bits":I
    .local v5, "i":I
    .local v21, "bi":I
    .local v23, "pass":I
    .local v24, "code":I
    :goto_2
    if-ge v5, v2, :cond_16

    .line 387
    if-nez v8, :cond_11

    .line 388
    if-ge v4, v15, :cond_7

    .line 390
    if-nez v22, :cond_6

    .line 392
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/GifImageHelper;->readBlock(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    move-result v22

    .line 393
    if-gtz v22, :cond_5

    .line 394
    const/16 v18, 0x1

    .line 395
    .end local v20    # "skipZero":Z
    .local v18, "skipZero":Z
    move/from16 v26, v1

    move/from16 v25, v2

    move/from16 v29, v3

    move/from16 v3, v18

    goto/16 :goto_8

    .line 397
    .end local v18    # "skipZero":Z
    .restart local v20    # "skipZero":Z
    :cond_5
    const/16 v21, 0x0

    .line 399
    :cond_6
    move/from16 v25, v2

    .end local v2    # "npix":I
    .local v25, "npix":I
    iget-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->block:[B

    aget-byte v2, v2, v21

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    add-int v17, v17, v2

    .line 400
    add-int/lit8 v4, v4, 0x8

    .line 401
    const/4 v2, 0x1

    add-int/lit8 v21, v21, 0x1

    .line 402
    add-int/lit8 v22, v22, -0x1

    .line 403
    move/from16 v2, v25

    goto :goto_2

    .line 408
    .end local v25    # "npix":I
    .restart local v2    # "npix":I
    :cond_7
    move/from16 v25, v2

    .end local v2    # "npix":I
    .restart local v25    # "npix":I
    and-int v2, v17, v16

    .line 409
    .end local v24    # "code":I
    .local v2, "code":I
    shr-int v17, v17, v15

    .line 410
    sub-int/2addr v4, v15

    .line 414
    if-gt v2, v13, :cond_10

    if-ne v2, v12, :cond_8

    .line 415
    move/from16 v26, v1

    move/from16 v28, v2

    move/from16 v29, v3

    move/from16 v27, v4

    goto/16 :goto_5

    .line 416
    :cond_8
    if-ne v2, v11, :cond_9

    .line 418
    add-int/lit8 v15, v10, 0x1

    .line 419
    const/16 v19, 0x1

    shl-int v24, v19, v15

    add-int/lit8 v16, v24, -0x1

    .line 420
    add-int/lit8 v13, v11, 0x2

    .line 421
    move v14, v1

    .line 422
    move/from16 v24, v2

    move/from16 v2, v25

    goto :goto_2

    .line 424
    :cond_9
    if-ne v14, v1, :cond_a

    .line 425
    move/from16 v26, v1

    .end local v1    # "NullCode":I
    .local v26, "NullCode":I
    iget-object v1, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->pixelStack:[B

    add-int/lit8 v24, v8, 0x1

    move/from16 v27, v4

    .end local v4    # "bits":I
    .end local v8    # "top":I
    .local v24, "top":I
    .local v27, "bits":I
    iget-object v4, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->suffix:[B

    aget-byte v4, v4, v2

    aput-byte v4, v1, v8

    .line 426
    move v14, v2

    .line 427
    move v3, v2

    .line 428
    move/from16 v8, v24

    move/from16 v1, v26

    move/from16 v4, v27

    move/from16 v24, v2

    move/from16 v2, v25

    goto :goto_2

    .line 430
    .end local v24    # "top":I
    .end local v26    # "NullCode":I
    .end local v27    # "bits":I
    .restart local v1    # "NullCode":I
    .restart local v4    # "bits":I
    .restart local v8    # "top":I
    :cond_a
    move/from16 v26, v1

    move/from16 v27, v4

    .end local v1    # "NullCode":I
    .end local v4    # "bits":I
    .restart local v26    # "NullCode":I
    .restart local v27    # "bits":I
    move v1, v2

    .line 431
    .local v1, "in_code":I
    if-ne v2, v13, :cond_b

    .line 432
    iget-object v4, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->pixelStack:[B

    add-int/lit8 v24, v8, 0x1

    move/from16 v28, v2

    .end local v2    # "code":I
    .end local v8    # "top":I
    .restart local v24    # "top":I
    .local v28, "code":I
    int-to-byte v2, v3

    aput-byte v2, v4, v8

    .line 433
    move v2, v14

    move/from16 v8, v24

    .end local v28    # "code":I
    .restart local v2    # "code":I
    goto :goto_3

    .line 431
    .end local v24    # "top":I
    .restart local v8    # "top":I
    :cond_b
    move/from16 v28, v2

    .line 435
    :goto_3
    if-le v2, v11, :cond_c

    .line 436
    iget-object v4, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->pixelStack:[B

    add-int/lit8 v24, v8, 0x1

    move/from16 v29, v3

    .end local v3    # "first":I
    .end local v8    # "top":I
    .restart local v24    # "top":I
    .local v29, "first":I
    iget-object v3, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->suffix:[B

    aget-byte v3, v3, v2

    aput-byte v3, v4, v8

    .line 437
    iget-object v3, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->prefix:[S

    aget-short v2, v3, v2

    move/from16 v8, v24

    move/from16 v3, v29

    goto :goto_3

    .line 439
    .end local v24    # "top":I
    .end local v29    # "first":I
    .restart local v3    # "first":I
    .restart local v8    # "top":I
    :cond_c
    move/from16 v29, v3

    .end local v3    # "first":I
    .restart local v29    # "first":I
    iget-object v3, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->suffix:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    .line 443
    .end local v29    # "first":I
    .restart local v3    # "first":I
    const/16 v4, 0x1000

    if-lt v13, v4, :cond_d

    .line 444
    move/from16 v24, v2

    move/from16 v29, v3

    move/from16 v3, v20

    move/from16 v4, v27

    goto/16 :goto_8

    .line 445
    :cond_d
    iget-object v4, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->pixelStack:[B

    add-int/lit8 v24, v8, 0x1

    move/from16 v28, v2

    .end local v2    # "code":I
    .end local v8    # "top":I
    .restart local v24    # "top":I
    .restart local v28    # "code":I
    int-to-byte v2, v3

    aput-byte v2, v4, v8

    .line 446
    iget-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->prefix:[S

    int-to-short v4, v14

    aput-short v4, v2, v13

    .line 447
    iget-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->suffix:[B

    int-to-byte v4, v3

    aput-byte v4, v2, v13

    .line 448
    add-int/lit8 v13, v13, 0x1

    .line 449
    and-int v2, v13, v16

    if-nez v2, :cond_e

    const/16 v2, 0x1000

    if-ge v13, v2, :cond_f

    .line 450
    add-int/lit8 v15, v15, 0x1

    .line 451
    add-int v16, v16, v13

    goto :goto_4

    .line 449
    :cond_e
    const/16 v2, 0x1000

    .line 453
    :cond_f
    :goto_4
    move v4, v1

    move v14, v4

    move/from16 v8, v24

    move/from16 v4, v27

    move/from16 v24, v28

    .end local v14    # "old_code":I
    .local v4, "old_code":I
    goto :goto_6

    .line 414
    .end local v24    # "top":I
    .end local v26    # "NullCode":I
    .end local v27    # "bits":I
    .end local v28    # "code":I
    .local v1, "NullCode":I
    .restart local v2    # "code":I
    .local v4, "bits":I
    .restart local v8    # "top":I
    .restart local v14    # "old_code":I
    :cond_10
    move/from16 v26, v1

    move/from16 v28, v2

    move/from16 v29, v3

    move/from16 v27, v4

    .line 497
    .end local v1    # "NullCode":I
    .end local v2    # "code":I
    .end local v3    # "first":I
    .end local v4    # "bits":I
    .restart local v26    # "NullCode":I
    .restart local v27    # "bits":I
    .restart local v28    # "code":I
    .restart local v29    # "first":I
    :goto_5
    move/from16 v3, v20

    move/from16 v4, v27

    move/from16 v24, v28

    goto/16 :goto_8

    .line 387
    .end local v25    # "npix":I
    .end local v26    # "NullCode":I
    .end local v27    # "bits":I
    .end local v28    # "code":I
    .end local v29    # "first":I
    .restart local v1    # "NullCode":I
    .local v2, "npix":I
    .restart local v3    # "first":I
    .restart local v4    # "bits":I
    .local v24, "code":I
    :cond_11
    move/from16 v26, v1

    move/from16 v25, v2

    move/from16 v29, v3

    const/16 v2, 0x1000

    .line 458
    .end local v1    # "NullCode":I
    .end local v2    # "npix":I
    .restart local v25    # "npix":I
    .restart local v26    # "NullCode":I
    :goto_6
    add-int/lit8 v8, v8, -0x1

    .line 459
    add-int/lit8 v5, v5, 0x1

    .line 461
    iget-object v1, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->pixelStack:[B

    aget-byte v1, v1, v8

    invoke-static {v9, v7, v1, v0}, Lcom/itextpdf/io/image/GifImageHelper;->setPixel(IIILcom/itextpdf/io/image/GifImageHelper$GifParameters;)V

    .line 462
    add-int/lit8 v9, v9, 0x1

    .line 463
    iget v1, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->iw:I

    if-lt v9, v1, :cond_15

    .line 464
    const/4 v9, 0x0

    .line 465
    add-int/2addr v7, v6

    .line 466
    iget v1, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ih:I

    if-lt v7, v1, :cond_14

    .line 467
    iget-boolean v1, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->interlace:Z

    if-eqz v1, :cond_13

    .line 469
    :cond_12
    const/4 v1, 0x1

    add-int/lit8 v23, v23, 0x1

    .line 470
    packed-switch v23, :pswitch_data_0

    .line 484
    iget v1, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ih:I

    const/16 v18, 0x1

    add-int/lit8 v1, v1, -0x1

    .line 485
    .end local v7    # "line":I
    .local v1, "line":I
    const/4 v6, 0x0

    move v7, v1

    goto :goto_7

    .line 479
    .end local v1    # "line":I
    .restart local v7    # "line":I
    :pswitch_0
    const/4 v1, 0x1

    .line 480
    .end local v7    # "line":I
    .restart local v1    # "line":I
    const/4 v6, 0x2

    .line 481
    move v7, v1

    goto :goto_7

    .line 475
    .end local v1    # "line":I
    .restart local v7    # "line":I
    :pswitch_1
    const/4 v1, 0x2

    .line 476
    .end local v7    # "line":I
    .restart local v1    # "line":I
    const/4 v6, 0x4

    .line 477
    move v7, v1

    goto :goto_7

    .line 472
    .end local v1    # "line":I
    .restart local v7    # "line":I
    :pswitch_2
    const/4 v1, 0x4

    .line 473
    .end local v7    # "line":I
    .restart local v1    # "line":I
    move v7, v1

    .line 487
    .end local v1    # "line":I
    .restart local v7    # "line":I
    :goto_7
    iget v1, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ih:I

    if-ge v7, v1, :cond_12

    move/from16 v2, v25

    move/from16 v1, v26

    goto/16 :goto_2

    .line 491
    :cond_13
    iget v1, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ih:I

    const/16 v18, 0x1

    add-int/lit8 v7, v1, -0x1

    .line 492
    const/4 v6, 0x0

    move/from16 v2, v25

    move/from16 v1, v26

    goto/16 :goto_2

    .line 466
    :cond_14
    const/16 v18, 0x1

    move/from16 v2, v25

    move/from16 v1, v26

    goto/16 :goto_2

    .line 463
    :cond_15
    const/16 v18, 0x1

    move/from16 v2, v25

    move/from16 v1, v26

    goto/16 :goto_2

    .line 386
    .end local v25    # "npix":I
    .end local v26    # "NullCode":I
    .local v1, "NullCode":I
    .restart local v2    # "npix":I
    :cond_16
    move/from16 v26, v1

    move/from16 v25, v2

    move/from16 v29, v3

    .end local v1    # "NullCode":I
    .end local v2    # "npix":I
    .end local v3    # "first":I
    .restart local v25    # "npix":I
    .restart local v26    # "NullCode":I
    .restart local v29    # "first":I
    move/from16 v3, v20

    .line 497
    .end local v20    # "skipZero":Z
    .local v3, "skipZero":Z
    :goto_8
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static newBpc(I)I
    .locals 1
    .param p0, "bpc"    # I

    .line 230
    packed-switch p0, :pswitch_data_0

    .line 238
    const/16 v0, 0x8

    return v0

    .line 236
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 234
    :pswitch_1
    nop

    .line 240
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static process(Ljava/io/InputStream;Lcom/itextpdf/io/image/GifImageHelper$GifParameters;I)V
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "gif"    # Lcom/itextpdf/io/image/GifImageHelper$GifParameters;
    .param p2, "lastFrameNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iput-object p0, p1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    .line 152
    invoke-static {p1}, Lcom/itextpdf/io/image/GifImageHelper;->readHeader(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V

    .line 153
    invoke-static {p1, p2}, Lcom/itextpdf/io/image/GifImageHelper;->readContents(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;I)V

    .line 154
    iget v0, p1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->currentFrame:I

    if-le v0, p2, :cond_0

    .line 157
    return-void

    .line 155
    :cond_0
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Cannot find frame number {0} (zero-based)"

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public static processImage(Lcom/itextpdf/io/image/GifImageData;)V
    .locals 1
    .param p0, "image"    # Lcom/itextpdf/io/image/GifImageData;

    .line 128
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/GifImageHelper;->processImage(Lcom/itextpdf/io/image/GifImageData;I)V

    .line 129
    return-void
.end method

.method public static processImage(Lcom/itextpdf/io/image/GifImageData;I)V
    .locals 4
    .param p0, "image"    # Lcom/itextpdf/io/image/GifImageData;
    .param p1, "lastFrameNumber"    # I

    .line 137
    new-instance v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;-><init>(Lcom/itextpdf/io/image/GifImageData;)V

    .line 140
    .local v0, "gif":Lcom/itextpdf/io/image/GifImageHelper$GifParameters;
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/io/image/GifImageData;->getData()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/itextpdf/io/image/GifImageData;->loadData()V

    .line 143
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/GifImageData;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 144
    .local v1, "gifStream":Ljava/io/InputStream;
    invoke-static {v1, v0, p1}, Lcom/itextpdf/io/image/GifImageHelper;->process(Ljava/io/InputStream;Lcom/itextpdf/io/image/GifImageHelper$GifParameters;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    nop

    .line 148
    return-void

    .line 145
    .end local v1    # "gifStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "GIF image exception."

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static readBlock(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I
    .locals 4
    .param p0, "gif"    # Lcom/itextpdf/io/image/GifImageHelper$GifParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->blockSize:I

    .line 211
    iget v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->blockSize:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 212
    iput v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->blockSize:I

    return v1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->block:[B

    iget v3, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->blockSize:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->blockSize:I

    .line 216
    iget v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->blockSize:I

    return v0
.end method

.method private static readColorTable(ILcom/itextpdf/io/image/GifImageHelper$GifParameters;)[B
    .locals 5
    .param p0, "bpc"    # I
    .param p1, "gif"    # Lcom/itextpdf/io/image/GifImageHelper$GifParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    const/4 v0, 0x1

    shl-int v1, v0, p0

    .line 221
    .local v1, "ncolors":I
    mul-int/lit8 v2, v1, 0x3

    .line 222
    .local v2, "nbytes":I
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->newBpc(I)I

    move-result p0

    .line 223
    shl-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    .line 224
    .local v0, "table":[B
    iget-object v3, p1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v2}, Lcom/itextpdf/io/util/StreamUtil;->readFully(Ljava/io/InputStream;[BII)V

    .line 225
    return-object v0
.end method

.method private static readContents(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;I)V
    .locals 3
    .param p0, "gif"    # Lcom/itextpdf/io/image/GifImageHelper$GifParameters;
    .param p1, "lastFrameNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "done":Z
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->currentFrame:I

    .line 247
    :goto_0
    if-nez v0, :cond_1

    .line 248
    iget-object v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 249
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    .line 278
    const/4 v0, 0x1

    goto :goto_1

    .line 252
    :sswitch_0
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readFrame(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V

    .line 253
    iget v2, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->currentFrame:I

    if-ne v2, p1, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 256
    :cond_0
    iget v2, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->currentFrame:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->currentFrame:I

    .line 257
    goto :goto_1

    .line 260
    :sswitch_1
    iget-object v2, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 261
    sparse-switch v1, :sswitch_data_1

    .line 274
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->skip(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V

    .line 276
    goto :goto_1

    .line 268
    :sswitch_2
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readBlock(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    .line 270
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->skip(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V

    .line 271
    goto :goto_1

    .line 264
    :sswitch_3
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readGraphicControlExt(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V

    .line 265
    nop

    .line 281
    .end local v1    # "code":I
    :goto_1
    goto :goto_0

    .line 282
    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_2
    .end sparse-switch
.end method

.method private static readFrame(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V
    .locals 18
    .param p0, "gif"    # Lcom/itextpdf/io/image/GifImageHelper$GifParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    move-object/from16 v1, p0

    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/GifImageHelper;->readShort(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    move-result v0

    iput v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ix:I

    .line 290
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/GifImageHelper;->readShort(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    move-result v0

    iput v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->iy:I

    .line 291
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/GifImageHelper;->readShort(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    move-result v0

    iput v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->iw:I

    .line 292
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/GifImageHelper;->readShort(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    move-result v0

    iput v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ih:I

    .line 294
    iget-object v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 296
    .local v2, "packed":I
    and-int/lit16 v0, v2, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->lctFlag:Z

    .line 298
    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->interlace:Z

    .line 302
    and-int/lit8 v0, v2, 0x7

    const/4 v5, 0x2

    shl-int v0, v5, v0

    iput v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->lctSize:I

    .line 303
    iget v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_gbpc:I

    invoke-static {v0}, Lcom/itextpdf/io/image/GifImageHelper;->newBpc(I)I

    move-result v0

    iput v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    .line 304
    iget-boolean v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->lctFlag:Z

    if-eqz v0, :cond_2

    .line 306
    and-int/lit8 v0, v2, 0x7

    add-int/2addr v0, v4

    invoke-static {v0, v1}, Lcom/itextpdf/io/image/GifImageHelper;->readColorTable(ILcom/itextpdf/io/image/GifImageHelper$GifParameters;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_curr_table:[B

    .line 307
    and-int/lit8 v0, v2, 0x7

    add-int/2addr v0, v4

    invoke-static {v0}, Lcom/itextpdf/io/image/GifImageHelper;->newBpc(I)I

    move-result v0

    iput v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    goto :goto_2

    .line 310
    :cond_2
    iget-object v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_global_table:[B

    iput-object v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_curr_table:[B

    .line 312
    :goto_2
    iget-boolean v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transparency:Z

    const/4 v6, 0x3

    if-eqz v0, :cond_3

    iget v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transIndex:I

    iget-object v7, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_curr_table:[B

    array-length v7, v7

    div-int/2addr v7, v6

    if-lt v0, v7, :cond_3

    .line 313
    iput-boolean v3, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transparency:Z

    .line 315
    :cond_3
    iget-boolean v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transparency:Z

    if-eqz v0, :cond_4

    iget v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    if-ne v0, v4, :cond_4

    .line 316
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 317
    .local v0, "tp":[B
    iget-object v7, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_curr_table:[B

    const/4 v8, 0x6

    invoke-static {v7, v3, v0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    iput-object v0, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_curr_table:[B

    .line 319
    iput v5, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    .line 322
    .end local v0    # "tp":[B
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/GifImageHelper;->decodeImageData(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)Z

    move-result v7

    .line 323
    .local v7, "skipZero":Z
    if-nez v7, :cond_5

    .line 324
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/GifImageHelper;->skip(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V

    .line 327
    :cond_5
    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 328
    .local v0, "colorspace":[Ljava/lang/Object;
    const-string v8, "/Indexed"

    aput-object v8, v0, v3

    .line 329
    const-string v8, "/DeviceRGB"

    aput-object v8, v0, v4

    .line 330
    iget-object v8, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_curr_table:[B

    array-length v8, v8

    .line 331
    .local v8, "len":I
    div-int/lit8 v9, v8, 0x3

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v5

    .line 332
    iget-object v9, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_curr_table:[B

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v6

    .line 333
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 334
    .local v6, "ad":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "ColorSpace"

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    new-instance v9, Lcom/itextpdf/io/image/RawImageData;

    iget-object v10, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_out:[B

    sget-object v11, Lcom/itextpdf/io/image/ImageType;->GIF:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {v9, v10, v11}, Lcom/itextpdf/io/image/RawImageData;-><init>([BLcom/itextpdf/io/image/ImageType;)V

    .line 336
    .local v9, "img":Lcom/itextpdf/io/image/RawImageData;
    iget v13, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->iw:I

    iget v14, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ih:I

    const/4 v15, 0x1

    iget v10, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    iget-object v11, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_out:[B

    move-object v12, v9

    move/from16 v16, v10

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v17}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 337
    invoke-static {v9, v6}, Lcom/itextpdf/io/image/RawImageHelper;->updateImageAttributes(Lcom/itextpdf/io/image/RawImageData;Ljava/util/Map;)V

    .line 338
    iget-object v10, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->image:Lcom/itextpdf/io/image/GifImageData;

    invoke-virtual {v10, v9}, Lcom/itextpdf/io/image/GifImageData;->addFrame(Lcom/itextpdf/io/image/ImageData;)V

    .line 339
    iget-boolean v10, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transparency:Z

    if-eqz v10, :cond_6

    .line 340
    new-array v5, v5, [I

    iget v10, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transIndex:I

    aput v10, v5, v3

    iget v3, v1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transIndex:I

    aput v3, v5, v4

    invoke-virtual {v9, v5}, Lcom/itextpdf/io/image/RawImageData;->setTransparency([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v0    # "colorspace":[Ljava/lang/Object;
    .end local v6    # "ad":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "len":I
    .end local v9    # "img":Lcom/itextpdf/io/image/RawImageData;
    :cond_6
    nop

    .line 345
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string v4, "GIF image exception."

    invoke-direct {v3, v4, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static readGraphicControlExt(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V
    .locals 3
    .param p0, "gif"    # Lcom/itextpdf/io/image/GifImageHelper$GifParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 520
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 522
    .local v0, "packed":I
    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->dispose:I

    .line 523
    iget v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->dispose:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 525
    iput v2, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->dispose:I

    .line 527
    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transparency:Z

    .line 529
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readShort(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->delay:I

    .line 531
    iget-object v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transIndex:I

    .line 533
    iget-object v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 534
    return-void
.end method

.method private static readHeader(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V
    .locals 3
    .param p0, "gif"    # Lcom/itextpdf/io/image/GifImageHelper$GifParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "id":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GIF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readLSD(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V

    .line 171
    iget-boolean v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->gctFlag:Z

    if-eqz v1, :cond_1

    .line 172
    iget v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_gbpc:I

    invoke-static {v1, p0}, Lcom/itextpdf/io/image/GifImageHelper;->readColorTable(ILcom/itextpdf/io/image/GifImageHelper$GifParameters;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_global_table:[B

    .line 174
    :cond_1
    return-void

    .line 167
    :cond_2
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "GIF signature not found."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static readLSD(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V
    .locals 3
    .param p0, "gif"    # Lcom/itextpdf/io/image/GifImageHelper$GifParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->image:Lcom/itextpdf/io/image/GifImageData;

    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readShort(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/image/GifImageData;->setLogicalWidth(F)V

    .line 183
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->image:Lcom/itextpdf/io/image/GifImageData;

    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readShort(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/image/GifImageData;->setLogicalHeight(F)V

    .line 186
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 188
    .local v0, "packed":I
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->gctFlag:Z

    .line 189
    and-int/lit8 v1, v0, 0x7

    add-int/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_gbpc:I

    .line 191
    iget-object v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->bgIndex:I

    .line 193
    iget-object v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->pixelAspect:I

    .line 194
    return-void
.end method

.method private static readShort(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I
    .locals 2
    .param p0, "gif"    # Lcom/itextpdf/io/image/GifImageHelper$GifParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private static setPixel(IIILcom/itextpdf/io/image/GifImageHelper$GifParameters;)V
    .locals 5
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "v"    # I
    .param p3, "gif"    # Lcom/itextpdf/io/image/GifImageHelper$GifParameters;

    .line 502
    iget v0, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 503
    iget v0, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->iw:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p0

    .line 504
    .local v0, "pos":I
    iget-object v1, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_out:[B

    int-to-byte v2, p2

    aput-byte v2, v1, v0

    .line 505
    .end local v0    # "pos":I
    goto :goto_0

    .line 507
    :cond_0
    iget v0, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_line_stride:I

    mul-int/2addr v0, p1

    iget v2, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    div-int v2, v1, v2

    div-int v2, p0, v2

    add-int/2addr v0, v2

    .line 508
    .restart local v0    # "pos":I
    iget v2, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    iget v3, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    div-int v3, v1, v3

    rem-int v3, p0, v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    sub-int/2addr v1, v2

    shl-int v1, p2, v1

    .line 509
    .local v1, "vout":I
    iget-object v2, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_out:[B

    aget-byte v3, v2, v0

    int-to-byte v4, v1

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 511
    .end local v0    # "pos":I
    .end local v1    # "vout":I
    :goto_0
    return-void
.end method

.method private static skip(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V
    .locals 1
    .param p0, "gif"    # Lcom/itextpdf/io/image/GifImageHelper$GifParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    :goto_0
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readBlock(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    .line 543
    iget v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->blockSize:I

    if-gtz v0, :cond_0

    .line 544
    return-void

    .line 543
    :cond_0
    goto :goto_0
.end method
