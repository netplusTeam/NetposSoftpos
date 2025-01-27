.class public final Lcom/google/android/gms/internal/vision/zzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"


# direct methods
.method public static zza(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/vision/zzs;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/vision/zzs;->zze:I

    if-eqz v0, :cond_0

    .line 4
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 5
    iget v0, p1, Lcom/google/android/gms/internal/vision/zzs;->zze:I

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported rotation degree."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :pswitch_0
    const/16 v0, 0x10e

    goto :goto_0

    .line 9
    :pswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    .line 8
    :pswitch_2
    const/16 v0, 0x5a

    goto :goto_0

    .line 7
    :pswitch_3
    const/4 v0, 0x0

    .line 12
    :goto_0
    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 13
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v3, v7

    move v4, v8

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 14
    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/vision/zzs;->zze:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/vision/zzs;->zze:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 15
    :cond_1
    iput v8, p1, Lcom/google/android/gms/internal/vision/zzs;->zza:I

    .line 16
    iput v7, p1, Lcom/google/android/gms/internal/vision/zzs;->zzb:I

    .line 17
    :cond_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zza(Landroid/graphics/Bitmap;Z)Ljava/nio/ByteBuffer;
    .locals 11

    .line 18
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 20
    mul-int v1, p1, v0

    .line 21
    add-int/lit8 v2, p1, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    mul-int/2addr v2, v0

    shl-int/lit8 v0, v2, 0x1

    .line 22
    add-int/2addr v0, v1

    .line 23
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 24
    nop

    .line 25
    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, v1, :cond_1

    .line 26
    rem-int v4, v2, p1

    div-int v5, v2, p1

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 27
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 28
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 29
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 30
    const v9, 0x3e991687    # 0.299f

    int-to-float v7, v7

    mul-float/2addr v9, v7

    const v10, 0x3f1645a2    # 0.587f

    int-to-float v8, v8

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    const v10, 0x3de978d5    # 0.114f

    int-to-float v6, v6

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    .line 31
    float-to-int v9, v9

    int-to-byte v9, v9

    invoke-virtual {v0, v2, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 32
    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    .line 33
    const v4, -0x41d2f1aa    # -0.169f

    mul-float/2addr v4, v7

    const v5, -0x4156872b    # -0.331f

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v9, v6, v5

    add-float/2addr v4, v9

    const/high16 v9, 0x43000000    # 128.0f

    add-float/2addr v4, v9

    .line 34
    mul-float/2addr v7, v5

    const v5, -0x412978d5    # -0.419f

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    const v5, -0x425a1cac    # -0.081f

    mul-float/2addr v6, v5

    add-float/2addr v7, v6

    add-float/2addr v7, v9

    .line 35
    add-int/lit8 v5, v3, 0x1

    float-to-int v4, v4

    int-to-byte v4, v4

    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 36
    add-int/lit8 v3, v5, 0x1

    float-to-int v4, v7

    int-to-byte v4, v4

    invoke-virtual {v0, v5, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_1
    return-object v0
.end method
