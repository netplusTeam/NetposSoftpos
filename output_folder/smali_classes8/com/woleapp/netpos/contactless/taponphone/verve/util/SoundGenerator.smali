.class public final Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;
.super Ljava/lang/Object;
.source "SoundGenerator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004H\u0002J&\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004J\u0006\u0010\u0013\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;",
        "",
        "()V",
        "SAMPLE_RATE",
        "",
        "audioTrack",
        "Landroid/media/AudioTrack;",
        "volume",
        "",
        "generateWave",
        "",
        "duration",
        "",
        "frequencyTone",
        "playSound",
        "",
        "durationMS",
        "intervalMs",
        "count",
        "stopTone",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;

.field private static final SAMPLE_RATE:I = 0xac44

.field private static audioTrack:Landroid/media/AudioTrack;

.field private static volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->INSTANCE:Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;

    .line 13
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->volume:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final generateWave(DI)[B
    .locals 14
    .param p1, "duration"    # D
    .param p3, "frequencyTone"    # I

    .line 67
    const/16 v0, 0x3e8

    int-to-double v0, v0

    div-double v0, p1, v0

    const v2, 0xac44

    int-to-double v2, v2

    mul-double/2addr v0, v2

    .line 68
    .local v0, "dnumSamples":D
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 69
    double-to-int v4, v0

    .line 70
    .local v4, "numSamples":I
    new-array v5, v4, [D

    .line 71
    .local v5, "sample":[D
    mul-int/lit8 v6, v4, 0x2

    new-array v6, v6, [B

    .line 72
    .local v6, "generatedSnd":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_0

    .line 73
    mul-int/lit8 v8, p3, 0x2

    int-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    int-to-double v10, v7

    mul-double/2addr v8, v10

    div-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    aput-wide v8, v5, v7

    .line 72
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 77
    .end local v7    # "i":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "idx":I
    const/4 v3, 0x0

    .line 79
    .local v3, "i":I
    div-int/lit8 v7, v4, 0x14

    .line 80
    .local v7, "ramp":I
    const/4 v3, 0x0

    .line 81
    :goto_1
    const v8, 0xff00

    const/16 v9, 0x7fff

    if-ge v3, v7, :cond_1

    .line 84
    aget-wide v10, v5, v3

    int-to-double v12, v9

    mul-double/2addr v10, v12

    int-to-double v12, v3

    mul-double/2addr v10, v12

    int-to-double v12, v7

    div-double/2addr v10, v12

    double-to-int v9, v10

    int-to-short v9, v9

    .line 86
    .local v9, "val":S
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "idx":I
    .local v10, "idx":I
    and-int/lit16 v11, v9, 0xff

    int-to-byte v11, v11

    aput-byte v11, v6, v2

    .line 87
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "idx":I
    .restart local v2    # "idx":I
    and-int/2addr v8, v9

    ushr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v10

    add-int/lit8 v3, v3, 0x1

    .line 88
    nop

    .end local v9    # "val":S
    goto :goto_1

    .line 90
    :cond_1
    move v3, v7

    .line 91
    :goto_2
    sub-int v10, v4, v7

    if-ge v3, v10, :cond_2

    .line 94
    aget-wide v10, v5, v3

    int-to-double v12, v9

    mul-double/2addr v10, v12

    double-to-int v10, v10

    int-to-short v10, v10

    .line 96
    .local v10, "val":S
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "idx":I
    .local v11, "idx":I
    and-int/lit16 v12, v10, 0xff

    int-to-byte v12, v12

    aput-byte v12, v6, v2

    .line 97
    add-int/lit8 v2, v11, 0x1

    .end local v11    # "idx":I
    .restart local v2    # "idx":I
    and-int v12, v10, v8

    ushr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v6, v11

    add-int/lit8 v3, v3, 0x1

    .line 98
    nop

    .end local v10    # "val":S
    goto :goto_2

    .line 100
    :cond_2
    sub-int v3, v4, v7

    .line 101
    :goto_3
    if-ge v3, v4, :cond_3

    .line 104
    aget-wide v10, v5, v3

    int-to-double v12, v9

    mul-double/2addr v10, v12

    sub-int v12, v4, v3

    int-to-double v12, v12

    mul-double/2addr v10, v12

    int-to-double v12, v7

    div-double/2addr v10, v12

    double-to-int v10, v10

    int-to-short v10, v10

    .line 106
    .restart local v10    # "val":S
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "idx":I
    .restart local v11    # "idx":I
    and-int/lit16 v12, v10, 0xff

    int-to-byte v12, v12

    aput-byte v12, v6, v2

    .line 107
    add-int/lit8 v2, v11, 0x1

    .end local v11    # "idx":I
    .restart local v2    # "idx":I
    and-int v12, v10, v8

    ushr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v6, v11

    add-int/lit8 v3, v3, 0x1

    .line 108
    nop

    .end local v10    # "val":S
    goto :goto_3

    .line 110
    :cond_3
    return-object v6
.end method


# virtual methods
.method public final playSound(IIII)V
    .locals 9
    .param p1, "frequencyTone"    # I
    .param p2, "durationMS"    # I
    .param p3, "intervalMs"    # I
    .param p4, "count"    # I

    .line 15
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    .local v0, "audioBuffer":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, p4, :cond_0

    .line 18
    nop

    .line 19
    int-to-double v3, p2

    :try_start_0
    invoke-direct {p0, v3, v4, p1}, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->generateWave(DI)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 20
    int-to-double v3, p3

    invoke-direct {p0, v3, v4, v2}, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->generateWave(DI)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 21
    :catch_0
    move-exception v2

    .line 22
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 16
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v1    # "i":I
    :cond_0
    nop

    .line 27
    nop

    .line 28
    nop

    .line 29
    nop

    .line 26
    const/4 v1, 0x2

    const v3, 0xac44

    const/4 v4, 0x4

    :try_start_1
    invoke-static {v3, v4, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 31
    .local v5, "bufferSize":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_1

    .line 32
    new-instance v6, Landroid/media/AudioTrack$Builder;

    invoke-direct {v6}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 33
    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 34
    invoke-virtual {v7, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 35
    invoke-virtual {v7}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v7

    .line 32
    invoke-virtual {v6, v7}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v6

    .line 38
    new-instance v7, Landroid/media/AudioFormat$Builder;

    invoke-direct {v7}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v7, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    .line 37
    invoke-virtual {v6, v1}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v5}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v1

    .line 32
    sput-object v1, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->audioTrack:Landroid/media/AudioTrack;

    .line 47
    :cond_1
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    .line 48
    .local v1, "maxVolume":F
    sget v3, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->volume:F

    cmpl-float v4, v3, v1

    if-lez v4, :cond_2

    .line 49
    sput v1, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->volume:F

    goto :goto_2

    .line 50
    :cond_2
    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 51
    sput v4, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->volume:F

    .line 53
    :cond_3
    :goto_2
    sget-object v3, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v4, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->volume:F

    invoke-virtual {v3, v4}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 54
    sget-object v3, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    .line 55
    sget-object v3, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 57
    nop

    .line 58
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    .line 55
    invoke-virtual {v3, v4, v2, v6}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 60
    .end local v1    # "maxVolume":F
    .end local v5    # "bufferSize":I
    :catch_1
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->stopTone()V

    .line 64
    return-void
.end method

.method public final stopTone()V
    .locals 2

    .line 114
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 115
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 116
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 118
    :cond_0
    return-void
.end method
