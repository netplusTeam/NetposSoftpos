.class public Lorg/jline/utils/Colors;
.super Ljava/lang/Object;
.source "Colors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/utils/Colors$Distance;
    }
.end annotation


# static fields
.field private static final A:I = 0x1

.field public static final AdobeRGB_environment:[D

.field private static final B:I = 0x2

.field public static final C:I = 0x2

.field private static COLORS_256:[I = null

.field private static COLOR_NAMES:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final D50:[D

.field public static final D65:[D

.field public static final DEFAULT_COLORS_256:[I

.field public static final DEFAULT_COLORS_88:[I

.field public static final H:I = 0x5

.field public static final J:I = 0x0

.field private static final L:I = 0x0

.field public static final M:I = 0x3

.field public static final Q:I = 0x1

.field static final SUR_C:I = 0x1

.field static final SUR_F:I = 0x0

.field static final SUR_N_C:I = 0x2

.field static final VC_A_W:I = 0xc

.field static final VC_C:I = 0x6

.field static final VC_D_RGB_B:I = 0x10

.field static final VC_D_RGB_G:I = 0xf

.field static final VC_D_RGB_R:I = 0xe

.field static final VC_F:I = 0x5

.field static final VC_F_L:I = 0xd

.field static final VC_L_A:I = 0x3

.field static final VC_N:I = 0x9

.field static final VC_N_BB:I = 0xa

.field static final VC_N_C:I = 0x7

.field static final VC_N_CB:I = 0xb

.field static final VC_X_W:I = 0x0

.field static final VC_Y_B:I = 0x4

.field static final VC_Y_W:I = 0x1

.field static final VC_Z:I = 0x8

.field static final VC_Z_W:I = 0x2

.field private static final X:I = 0x0

.field private static final Y:I = 0x1

.field private static final Z:I = 0x2

.field public static final averageSurrounding:[D

.field public static final darkSurrounding:[D

.field public static final dimSurrounding:[D

.field private static final epsilon:D = 0.008856451679035631

.field public static final h:I = 0x6

.field private static final k1:D = 0.045

.field private static final k2:D = 0.015

.field private static final kappa:D = 903.2962962962963

.field private static final kc:D = 1.0

.field private static final kh:D = 1.0

.field private static final kl:D = 2.0

.field public static final s:I = 0x4

.field public static final sRGB_encoding_environment:[D

.field public static final sRGB_typical_environment:[D


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 27
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jline/utils/Colors;->DEFAULT_COLORS_256:[I

    .line 84
    const/16 v1, 0x58

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/jline/utils/Colors;->DEFAULT_COLORS_88:[I

    .line 115
    const/4 v1, 0x3

    new-array v8, v1, [D

    fill-array-data v8, :array_2

    sput-object v8, Lorg/jline/utils/Colors;->D50:[D

    .line 117
    new-array v9, v1, [D

    fill-array-data v9, :array_3

    sput-object v9, Lorg/jline/utils/Colors;->D65:[D

    .line 120
    new-array v10, v1, [D

    fill-array-data v10, :array_4

    sput-object v10, Lorg/jline/utils/Colors;->averageSurrounding:[D

    .line 122
    new-array v7, v1, [D

    fill-array-data v7, :array_5

    sput-object v7, Lorg/jline/utils/Colors;->dimSurrounding:[D

    .line 124
    new-array v1, v1, [D

    fill-array-data v1, :array_6

    sput-object v1, Lorg/jline/utils/Colors;->darkSurrounding:[D

    .line 127
    const-wide/high16 v3, 0x4050000000000000L    # 64.0

    const-wide v5, 0x402999999999999aL    # 12.8

    move-object v2, v8

    invoke-static/range {v2 .. v7}, Lorg/jline/utils/Colors;->vc([DDD[D)[D

    move-result-object v1

    sput-object v1, Lorg/jline/utils/Colors;->sRGB_encoding_environment:[D

    .line 129
    const-wide/high16 v3, 0x4069000000000000L    # 200.0

    const-wide/high16 v5, 0x4044000000000000L    # 40.0

    move-object v7, v10

    invoke-static/range {v2 .. v7}, Lorg/jline/utils/Colors;->vc([DDD[D)[D

    move-result-object v1

    sput-object v1, Lorg/jline/utils/Colors;->sRGB_typical_environment:[D

    .line 131
    const-wide/high16 v3, 0x4064000000000000L    # 160.0

    const-wide/high16 v5, 0x4040000000000000L    # 32.0

    move-object v2, v9

    invoke-static/range {v2 .. v7}, Lorg/jline/utils/Colors;->vc([DDD[D)[D

    move-result-object v1

    sput-object v1, Lorg/jline/utils/Colors;->AdobeRGB_environment:[D

    .line 133
    sput-object v0, Lorg/jline/utils/Colors;->COLORS_256:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x800000
        0x8000
        0x808000
        0x80
        0x800080
        0x8080
        0xc0c0c0
        0x808080
        0xff0000
        0xff00
        0xffff00
        0xff
        0xff00ff
        0xffff
        0xffffff
        0x0
        0x5f
        0x87
        0xaf
        0xd7
        0xff
        0x5f00
        0x5f5f
        0x5f87
        0x5faf
        0x5fd7
        0x5fff
        0x8700
        0x875f
        0x8787
        0x87af
        0x87d7
        0x87ff
        0xaf00
        0xaf5f
        0xaf87
        0xafaf
        0xafd7
        0xafff
        0xd700
        0xd75f
        0xd787
        0xd7af
        0xd7d7
        0xd7ff
        0xff00
        0xff5f
        0xff87
        0xffaf
        0xffd7
        0xffff
        0x5f0000
        0x5f005f
        0x5f0087
        0x5f00af
        0x5f00d7
        0x5f00ff
        0x5f5f00
        0x5f5f5f
        0x5f5f87
        0x5f5faf
        0x5f5fd7
        0x5f5fff
        0x5f8700
        0x5f875f
        0x5f8787
        0x5f87af
        0x5f87d7
        0x5f87ff
        0x5faf00
        0x5faf5f
        0x5faf87
        0x5fafaf
        0x5fafd7
        0x5fafff
        0x5fd700
        0x5fd75f
        0x5fd787
        0x5fd7af
        0x5fd7d7
        0x5fd7ff
        0x5fff00
        0x5fff5f
        0x5fff87
        0x5fffaf
        0x5fffd7
        0x5fffff
        0x870000
        0x87005f
        0x870087
        0x8700af
        0x8700d7
        0x8700ff
        0x875f00
        0x875f5f
        0x875f87
        0x875faf
        0x875fd7
        0x875fff
        0x878700
        0x87875f
        0x878787
        0x8787af
        0x8787d7
        0x8787ff
        0x87af00
        0x87af5f
        0x87af87
        0x87afaf
        0x87afd7
        0x87afff
        0x87d700
        0x87d75f
        0x87d787
        0x87d7af
        0x87d7d7
        0x87d7ff
        0x87ff00
        0x87ff5f
        0x87ff87
        0x87ffaf
        0x87ffd7
        0x87ffff
        0xaf0000
        0xaf005f
        0xaf0087
        0xaf00af
        0xaf00d7
        0xaf00ff
        0xaf5f00
        0xaf5f5f
        0xaf5f87
        0xaf5faf
        0xaf5fd7
        0xaf5fff
        0xaf8700
        0xaf875f
        0xaf8787
        0xaf87af
        0xaf87d7
        0xaf87ff    # 1.6119998E-38f
        0xafaf00
        0xafaf5f
        0xafaf87
        0xafafaf
        0xafafd7
        0xafafff
        0xafd700
        0xafd75f
        0xafd787
        0xafd7af
        0xafd7d7
        0xafd7ff
        0xafff00
        0xafff5f
        0xafff87
        0xafffaf
        0xafffd7
        0xafffff
        0xd70000
        0xd7005f
        0xd70087
        0xd700af
        0xd700d7
        0xd700ff
        0xd75f00
        0xd75f5f
        0xd75f87
        0xd75faf
        0xd75fd7
        0xd75fff
        0xd78700
        0xd7875f
        0xd78787
        0xd787af
        0xd787d7
        0xd787ff
        0xd7af00
        0xd7af5f
        0xd7af87
        0xd7afaf
        0xd7afd7
        0xd7afff
        0xd7d700
        0xd7d75f
        0xd7d787
        0xd7d7af
        0xd7d7d7
        0xd7d7ff
        0xd7ff00
        0xd7ff5f
        0xd7ff87
        0xd7ffaf
        0xd7ffd7
        0xd7ffff
        0xff0000
        0xff005f
        0xff0087
        0xff00af
        0xff00d7
        0xff00ff
        0xff5f00
        0xff5f5f
        0xff5f87
        0xff5faf
        0xff5fd7
        0xff5fff
        0xff8700
        0xff875f
        0xff8787
        0xff87af
        0xff87d7
        0xff87ff
        0xffaf00
        0xffaf5f
        0xffaf87
        0xffafaf
        0xffafd7
        0xffafff
        0xffd700
        0xffd75f
        0xffd787
        0xffd7af
        0xffd7d7
        0xffd7ff
        0xffff00
        0xffff5f
        0xffff87
        0xffffaf
        0xffffd7
        0xffffff
        0x80808
        0x121212
        0x1c1c1c
        0x262626
        0x303030
        0x3a3a3a
        0x444444
        0x4e4e4e
        0x585858
        0x626262
        0x6c6c6c
        0x767676
        0x808080
        0x8a8a8a
        0x949494
        0x9e9e9e
        0xa8a8a8
        0xb2b2b2
        0xbcbcbc
        0xc6c6c6
        0xd0d0d0
        0xdadada
        0xe4e4e4
        0xeeeeee
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x800000
        0x8000
        0x808000
        0x80
        0x800080
        0x8080
        0xc0c0c0
        0x808080
        0xff0000
        0xff00
        0xffff00
        0xff
        0xff00ff
        0xffff
        0xffffff
        0x0
        0x8b
        0xcd
        0xff
        0x8b00
        0x8b8b
        0x8bcd
        0x8bff
        0xcd00
        0xcd8b
        0xcdcd
        0xcdff
        0xff00
        0xff8b
        0xffcd
        0xffff
        0x8b0000
        0x8b008b
        0x8b00cd
        0x8b00ff
        0x8b8b00
        0x8b8b8b
        0x8b8bcd
        0x8b8bff
        0x8bcd00
        0x8bcd8b
        0x8bcdcd
        0x8bcdff
        0x8bff00
        0x8bff8b
        0x8bffcd
        0x8bffff
        0xcd0000
        0xcd008b
        0xcd00cd
        0xcd00ff
        0xcd8b00
        0xcd8b8b
        0xcd8bcd
        0xcd8bff
        0xcdcd00
        0xcdcd8b    # 1.8900012E-38f
        0xcdcdcd
        0xcdcdff
        0xcdff00
        0xcdff8b
        0xcdffcd
        0xcdffff
        0xff0000
        0xff008b
        0xff00cd
        0xff00ff
        0xff8b00
        0xff8b8b
        0xff8bcd
        0xff8bff
        0xffcd00
        0xffcd8b
        0xffcdcd
        0xffcdff
        0xffff00
        0xffff8b
        0xffffcd
        0xffffff
        0x2e2e2e
        0x5c5c5c
        0x737373
        0x8b8b8b
        0xa2a2a2
        0xb9b9b9
        0xd0d0d0
        0xe7e7e7
    .end array-data

    :array_2
    .array-data 8
        0x40581b0200000000L    # 96.4219970703125
        0x4059000000000000L    # 100.0
        0x4054a15820000000L    # 82.52100372314453
    .end array-data

    :array_3
    .array-data 8
        0x4057c3020c49ba5eL    # 95.047
        0x4059000000000000L    # 100.0
        0x405b3883126e978dL    # 108.883
    .end array-data

    :array_4
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fe6147ae147ae14L    # 0.69
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_5
    .array-data 8
        0x3feccccccccccccdL    # 0.9
        0x3fe2e147ae147ae1L    # 0.59
        0x3feccccccccccccdL    # 0.9
    .end array-data

    :array_6
    .array-data 8
        0x3fe999999999999aL    # 0.8
        0x3fe0cccccccccccdL    # 0.525
        0x3fe999999999999aL    # 0.8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CAT02toHPE([D)[D
    .locals 10
    .param p0, "RGB"    # [D

    .line 560
    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 561
    .local v0, "RGBPrime":[D
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    const-wide v4, 0x3fe7b61a02e08510L    # 0.7409792

    mul-double/2addr v2, v4

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    const-wide v7, 0x3fcbe83e425aee63L    # 0.218025

    mul-double/2addr v5, v7

    add-double/2addr v2, v5

    const/4 v5, 0x2

    aget-wide v6, p0, v5

    const-wide v8, 0x3fa4feb653e483a3L    # 0.0410058

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    aput-wide v2, v0, v1

    .line 562
    aget-wide v2, p0, v1

    const-wide v6, 0x3fd2433a1173c5caL    # 0.2853532

    mul-double/2addr v2, v6

    aget-wide v6, p0, v4

    const-wide v8, 0x3fe3f97536e3c1dcL    # 0.6242014

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    aget-wide v6, p0, v5

    const-wide v8, 0x3fb7276e0312d9f7L    # 0.0904454

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    aput-wide v2, v0, v4

    .line 563
    aget-wide v1, p0, v1

    const-wide v6, -0x407c4827b6fe2e6fL    # -0.009628

    mul-double/2addr v1, v6

    aget-wide v3, p0, v4

    const-wide v6, 0x3f7756c93a711516L    # 0.005698

    mul-double/2addr v3, v6

    sub-double/2addr v1, v3

    aget-wide v3, p0, v5

    const-wide v6, 0x3ff03ec679cc74b8L    # 1.015326

    mul-double/2addr v3, v6

    add-double/2addr v1, v3

    aput-wide v1, v0, v5

    .line 564
    return-object v0
.end method

.method private static calculateH(D)D
    .locals 13
    .param p0, "h"    # D

    .line 517
    const-wide v0, 0x403423d70a3d70a4L    # 20.14

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    .line 518
    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr p0, v2

    .line 520
    :cond_0
    cmpl-double v2, p0, v0

    const-wide v3, 0x3fe999999999999aL    # 0.8

    const-wide v5, 0x3fe6666666666666L    # 0.7

    const-wide v7, 0x4056800000000000L    # 90.0

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    if-ltz v2, :cond_1

    cmpg-double v2, p0, v7

    if-gez v2, :cond_1

    .line 521
    sub-double v0, p0, v0

    div-double/2addr v0, v3

    .line 522
    .local v0, "i":D
    mul-double/2addr v9, v0

    sub-double/2addr v7, p0

    div-double/2addr v7, v5

    add-double/2addr v7, v0

    div-double/2addr v9, v7

    return-wide v9

    .line 523
    .end local v0    # "i":D
    :cond_1
    const-wide v0, 0x4064880000000000L    # 164.25

    cmpg-double v2, p0, v0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-gez v2, :cond_2

    .line 524
    sub-double v2, p0, v7

    div-double/2addr v2, v5

    .line 525
    .local v2, "i":D
    mul-double v4, v2, v9

    sub-double/2addr v0, p0

    div-double/2addr v0, v11

    add-double/2addr v0, v2

    div-double/2addr v4, v0

    add-double/2addr v4, v9

    return-wide v4

    .line 526
    .end local v2    # "i":D
    :cond_2
    const-wide v5, 0x406db0f5c28f5c29L    # 237.53

    cmpg-double v2, p0, v5

    const-wide v7, 0x3ff3333333333333L    # 1.2

    if-gez v2, :cond_3

    .line 527
    sub-double v0, p0, v0

    div-double/2addr v0, v11

    .line 528
    .restart local v0    # "i":D
    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    mul-double/2addr v9, v0

    sub-double/2addr v5, p0

    div-double/2addr v5, v7

    add-double/2addr v5, v0

    div-double/2addr v9, v5

    add-double/2addr v9, v2

    return-wide v9

    .line 529
    .end local v0    # "i":D
    :cond_3
    const-wide v0, 0x4077c23d70a3d70aL    # 380.14

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_5

    .line 530
    sub-double v5, p0, v5

    div-double/2addr v5, v7

    .line 531
    .local v5, "i":D
    const-wide v7, 0x4072c00000000000L    # 300.0

    mul-double/2addr v9, v5

    sub-double/2addr v0, p0

    div-double/2addr v0, v3

    add-double/2addr v0, v5

    div-double/2addr v9, v0

    add-double/2addr v9, v7

    .line 533
    .local v9, "H":D
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    cmpg-double v0, v9, v0

    if-gtz v0, :cond_4

    const-wide v0, 0x4078fffbe76c8b44L    # 399.999

    cmpl-double v0, v9, v0

    if-ltz v0, :cond_4

    .line 534
    const-wide/16 v9, 0x0

    .line 535
    :cond_4
    return-wide v9

    .line 537
    .end local v5    # "i":D
    .end local v9    # "H":D
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h outside assumed range 0..360: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static cam02(II[D)D
    .locals 4
    .param p0, "p1"    # I
    .param p1, "p2"    # I
    .param p2, "vc"    # [D

    .line 385
    invoke-static {p0, p2}, Lorg/jline/utils/Colors;->camlch(I[D)[D

    move-result-object v0

    invoke-static {v0}, Lorg/jline/utils/Colors;->jmh2ucs([D)[D

    move-result-object v0

    .line 386
    .local v0, "c1":[D
    invoke-static {p1, p2}, Lorg/jline/utils/Colors;->camlch(I[D)[D

    move-result-object v1

    invoke-static {v1}, Lorg/jline/utils/Colors;->jmh2ucs([D)[D

    move-result-object v1

    .line 387
    .local v1, "c2":[D
    invoke-static {v0, v1}, Lorg/jline/utils/Colors;->scalar([D[D)D

    move-result-wide v2

    return-wide v2
.end method

.method static camlab(I)[D
    .locals 1
    .param p0, "color"    # I

    .line 448
    sget-object v0, Lorg/jline/utils/Colors;->sRGB_typical_environment:[D

    invoke-static {p0, v0}, Lorg/jline/utils/Colors;->camlab(I[D)[D

    move-result-object v0

    return-object v0
.end method

.method static camlab(I[D)[D
    .locals 1
    .param p0, "color"    # I
    .param p1, "vc"    # [D

    .line 452
    invoke-static {p0, p1}, Lorg/jline/utils/Colors;->camlch(I[D)[D

    move-result-object v0

    invoke-static {v0}, Lorg/jline/utils/Colors;->lch2lab([D)[D

    move-result-object v0

    return-object v0
.end method

.method static camlch([D[D)D
    .locals 2
    .param p0, "c1"    # [D
    .param p1, "c2"    # [D

    .line 399
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Lorg/jline/utils/Colors;->camlch([D[D[D)D

    move-result-wide v0

    return-wide v0

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method static camlch([D[D[D)D
    .locals 19
    .param p0, "c1"    # [D
    .param p1, "c2"    # [D
    .param p2, "w"    # [D

    .line 404
    const/4 v0, 0x0

    aget-wide v1, p2, v0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    .line 405
    .local v1, "lightnessWeight":D
    const/4 v3, 0x1

    aget-wide v4, p2, v3

    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    div-double/2addr v4, v6

    .line 406
    .local v4, "colorfulnessWeight":D
    const/4 v6, 0x2

    aget-wide v7, p2, v6

    const-wide v9, 0x4076800000000000L    # 360.0

    div-double/2addr v7, v9

    .line 408
    .local v7, "hueWeight":D
    aget-wide v9, p0, v0

    aget-wide v11, p1, v0

    sub-double/2addr v9, v11

    mul-double/2addr v9, v1

    .line 409
    .local v9, "dl":D
    aget-wide v11, p0, v3

    aget-wide v13, p1, v3

    sub-double/2addr v11, v13

    mul-double/2addr v11, v4

    .line 410
    .local v11, "dc":D
    aget-wide v13, p0, v6

    aget-wide v15, p1, v6

    const-wide v17, 0x4076800000000000L    # 360.0

    invoke-static/range {v13 .. v18}, Lorg/jline/utils/Colors;->hueDifference(DDD)D

    move-result-wide v13

    mul-double/2addr v13, v7

    .line 411
    .local v13, "dh":D
    mul-double v15, v9, v9

    mul-double v17, v11, v11

    add-double v15, v15, v17

    mul-double v17, v13, v13

    add-double v15, v15, v17

    return-wide v15
.end method

.method static camlch(I)[D
    .locals 1
    .param p0, "color"    # I

    .line 440
    sget-object v0, Lorg/jline/utils/Colors;->sRGB_typical_environment:[D

    invoke-static {p0, v0}, Lorg/jline/utils/Colors;->camlch(I[D)[D

    move-result-object v0

    return-object v0
.end method

.method static camlch(I[D)[D
    .locals 1
    .param p0, "color"    # I
    .param p1, "vc"    # [D

    .line 444
    invoke-static {p0}, Lorg/jline/utils/Colors;->rgb2xyz(I)[D

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jline/utils/Colors;->xyz2camlch([D[D)[D

    move-result-object v0

    return-object v0
.end method

.method private static cie00([D[D)D
    .locals 77
    .param p0, "lab1"    # [D
    .param p1, "lab2"    # [D

    .line 323
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p0, v0

    mul-double/2addr v1, v3

    const/4 v3, 0x2

    aget-wide v4, p0, v3

    aget-wide v6, p0, v3

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 324
    .local v1, "c_star_1_ab":D
    aget-wide v4, p1, v0

    aget-wide v6, p1, v0

    mul-double/2addr v4, v6

    aget-wide v6, p1, v3

    aget-wide v8, p1, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 325
    .local v4, "c_star_2_ab":D
    add-double v6, v1, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    .line 326
    .local v6, "c_star_average_ab":D
    mul-double v10, v6, v6

    mul-double/2addr v10, v6

    .line 327
    .local v10, "c_star_average_ab_pot_3":D
    mul-double v12, v10, v10

    mul-double/2addr v12, v6

    .line 328
    .local v12, "c_star_average_ab_pot_7":D
    const-wide v14, 0x41f6bcc41e900000L    # 6.103515625E9

    add-double v16, v12, v14

    div-double v16, v12, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v16, v18, v16

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    mul-double v16, v16, v20

    .line 329
    .local v16, "G":D
    add-double v20, v16, v18

    aget-wide v22, p0, v0

    mul-double v14, v20, v22

    .line 330
    .local v14, "a1_prime":D
    add-double v20, v16, v18

    aget-wide v22, p1, v0

    mul-double v8, v20, v22

    .line 331
    .local v8, "a2_prime":D
    mul-double v20, v14, v14

    aget-wide v22, p0, v3

    aget-wide v28, p0, v3

    mul-double v22, v22, v28

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    .line 332
    .local v20, "C_prime_1":D
    mul-double v22, v8, v8

    aget-wide v28, p1, v3

    aget-wide v30, p1, v3

    mul-double v28, v28, v30

    add-double v22, v22, v28

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    .line 333
    .local v22, "C_prime_2":D
    move-wide/from16 v28, v1

    .end local v1    # "c_star_1_ab":D
    .local v28, "c_star_1_ab":D
    aget-wide v0, p0, v3

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v30, 0x4076800000000000L    # 360.0

    add-double v0, v0, v30

    rem-double v0, v0, v30

    .line 334
    .local v0, "h_prime_1":D
    aget-wide v2, p1, v3

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    add-double v2, v2, v30

    rem-double v2, v2, v30

    .line 335
    .local v2, "h_prime_2":D
    const/16 v32, 0x0

    aget-wide v33, p1, v32

    aget-wide v35, p0, v32

    sub-double v33, v33, v35

    .line 336
    .local v33, "delta_L_prime":D
    sub-double v35, v22, v20

    .line 337
    .local v35, "delta_C_prime":D
    sub-double v37, v0, v2

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->abs(D)D

    move-result-wide v37

    .line 339
    .local v37, "h_bar":D
    mul-double v39, v20, v22

    const-wide/16 v41, 0x0

    cmpl-double v39, v39, v41

    const-wide v43, 0x4066800000000000L    # 180.0

    if-nez v39, :cond_0

    .line 340
    const-wide/16 v39, 0x0

    .local v39, "delta_h_prime":D
    goto :goto_0

    .line 341
    .end local v39    # "delta_h_prime":D
    :cond_0
    cmpg-double v39, v37, v43

    if-gtz v39, :cond_1

    .line 342
    sub-double v39, v2, v0

    .restart local v39    # "delta_h_prime":D
    goto :goto_0

    .line 343
    .end local v39    # "delta_h_prime":D
    :cond_1
    cmpg-double v39, v2, v0

    if-gtz v39, :cond_2

    .line 344
    sub-double v39, v2, v0

    add-double v39, v39, v30

    .restart local v39    # "delta_h_prime":D
    goto :goto_0

    .line 346
    .end local v39    # "delta_h_prime":D
    :cond_2
    sub-double v39, v2, v0

    sub-double v39, v39, v30

    .line 348
    .restart local v39    # "delta_h_prime":D
    :goto_0
    mul-double v45, v20, v22

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v45

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v45, v45, v26

    div-double v47, v39, v26

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v47

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->sin(D)D

    move-result-wide v47

    mul-double v45, v45, v47

    .line 349
    .local v45, "delta_H_prime":D
    aget-wide v47, p0, v32

    aget-wide v49, p1, v32

    add-double v47, v47, v49

    div-double v47, v47, v26

    .line 350
    .local v47, "L_prime_average":D
    add-double v49, v20, v22

    div-double v49, v49, v26

    .line 352
    .local v49, "C_prime_average":D
    mul-double v51, v20, v22

    cmpl-double v32, v51, v41

    if-nez v32, :cond_3

    .line 353
    const-wide/16 v30, 0x0

    .local v30, "h_prime_average":D
    goto :goto_1

    .line 354
    .end local v30    # "h_prime_average":D
    :cond_3
    cmpg-double v32, v37, v43

    if-gtz v32, :cond_4

    .line 355
    add-double v30, v0, v2

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    div-double v30, v30, v26

    .restart local v30    # "h_prime_average":D
    goto :goto_1

    .line 356
    .end local v30    # "h_prime_average":D
    :cond_4
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v41, v0, v2

    cmpg-double v32, v41, v30

    if-gez v32, :cond_5

    .line 357
    add-double v41, v0, v2

    add-double v41, v41, v30

    div-double v30, v41, v26

    .restart local v30    # "h_prime_average":D
    goto :goto_1

    .line 359
    .end local v30    # "h_prime_average":D
    :cond_5
    add-double v41, v0, v2

    sub-double v41, v41, v30

    div-double v30, v41, v26

    .line 361
    .restart local v30    # "h_prime_average":D
    :goto_1
    const-wide/high16 v41, 0x4049000000000000L    # 50.0

    sub-double v41, v47, v41

    .line 362
    .local v41, "L_prime_average_minus_50":D
    mul-double v43, v41, v41

    .line 363
    .local v43, "L_prime_average_minus_50_square":D
    const-wide v51, 0x3fc5c28f5c28f5c3L    # 0.17

    const-wide/high16 v53, 0x403e000000000000L    # 30.0

    sub-double v55, v30, v53

    .line 364
    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->cos(D)D

    move-result-wide v55

    mul-double v55, v55, v51

    sub-double v51, v18, v55

    const-wide v55, 0x3fceb851eb851eb8L    # 0.24

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v57, v30, v26

    .line 365
    invoke-static/range {v57 .. v58}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v57

    invoke-static/range {v57 .. v58}, Ljava/lang/Math;->cos(D)D

    move-result-wide v57

    mul-double v57, v57, v55

    add-double v51, v51, v57

    const-wide v55, 0x3fd47ae147ae147bL    # 0.32

    const-wide/high16 v57, 0x4008000000000000L    # 3.0

    mul-double v57, v57, v30

    const-wide/high16 v59, 0x4018000000000000L    # 6.0

    add-double v57, v57, v59

    .line 366
    invoke-static/range {v57 .. v58}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v57

    invoke-static/range {v57 .. v58}, Ljava/lang/Math;->cos(D)D

    move-result-wide v57

    mul-double v57, v57, v55

    add-double v51, v51, v57

    const-wide v55, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v57, 0x4010000000000000L    # 4.0

    mul-double v57, v57, v30

    const-wide v59, 0x404f800000000000L    # 63.0

    sub-double v57, v57, v59

    .line 367
    invoke-static/range {v57 .. v58}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v57

    invoke-static/range {v57 .. v58}, Ljava/lang/Math;->cos(D)D

    move-result-wide v57

    mul-double v57, v57, v55

    sub-double v51, v51, v57

    .line 368
    .local v51, "T":D
    const-wide v55, 0x3f8eb851eb851eb8L    # 0.015

    mul-double v57, v43, v55

    const-wide/high16 v59, 0x4034000000000000L    # 20.0

    add-double v59, v43, v59

    invoke-static/range {v59 .. v60}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v59

    div-double v57, v57, v59

    add-double v57, v57, v18

    .line 369
    .local v57, "S_L":D
    const-wide v59, 0x3fa70a3d70a3d70aL    # 0.045

    mul-double v59, v59, v49

    add-double v59, v59, v18

    .line 370
    .local v59, "S_C":D
    mul-double v55, v55, v51

    mul-double v55, v55, v49

    add-double v55, v55, v18

    .line 371
    .local v55, "S_H":D
    const-wide v61, 0x4071300000000000L    # 275.0

    sub-double v61, v30, v61

    const-wide/high16 v63, 0x4039000000000000L    # 25.0

    div-double v61, v61, v63

    .line 372
    .local v61, "h_prime_average_minus_275_div_25":D
    move-wide/from16 v63, v0

    .end local v0    # "h_prime_1":D
    .local v63, "h_prime_1":D
    mul-double v0, v61, v61

    .line 373
    .local v0, "h_prime_average_minus_275_div_25_square":D
    move-wide/from16 v65, v2

    .end local v2    # "h_prime_2":D
    .local v65, "h_prime_2":D
    neg-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double v2, v2, v53

    .line 374
    .local v2, "delta_theta":D
    mul-double v53, v49, v49

    mul-double v53, v53, v49

    .line 375
    .local v53, "C_prime_average_pot_3":D
    mul-double v67, v53, v53

    mul-double v67, v67, v49

    .line 376
    .local v67, "C_prime_average_pot_7":D
    const-wide v24, 0x41f6bcc41e900000L    # 6.103515625E9

    add-double v24, v67, v24

    div-double v24, v67, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v24, v24, v26

    .line 377
    .local v24, "R_C":D
    mul-double v69, v2, v26

    invoke-static/range {v69 .. v70}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v69

    move-wide/from16 v71, v0

    .end local v0    # "h_prime_average_minus_275_div_25_square":D
    .local v71, "h_prime_average_minus_275_div_25_square":D
    invoke-static/range {v69 .. v70}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    mul-double v0, v0, v24

    .line 378
    .local v0, "R_T":D
    mul-double v26, v26, v57

    div-double v26, v33, v26

    .line 379
    .local v26, "dLKlsl":D
    mul-double v69, v59, v18

    div-double v69, v35, v69

    .line 380
    .local v69, "dCkcsc":D
    mul-double v18, v18, v55

    div-double v18, v45, v18

    .line 381
    .local v18, "dHkhsh":D
    mul-double v73, v26, v26

    mul-double v75, v69, v69

    add-double v73, v73, v75

    mul-double v75, v18, v18

    add-double v73, v73, v75

    mul-double v75, v0, v69

    mul-double v75, v75, v18

    add-double v73, v73, v75

    return-wide v73
.end method

.method private static cie94([D[D)D
    .locals 32
    .param p0, "lab1"    # [D
    .param p1, "lab2"    # [D

    .line 305
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    .line 306
    .local v1, "dl":D
    const/4 v0, 0x1

    aget-wide v3, p0, v0

    aget-wide v5, p1, v0

    sub-double/2addr v3, v5

    .line 307
    .local v3, "da":D
    const/4 v5, 0x2

    aget-wide v6, p0, v5

    aget-wide v8, p1, v5

    sub-double/2addr v6, v8

    .line 308
    .local v6, "db":D
    aget-wide v8, p0, v0

    aget-wide v10, p0, v0

    mul-double/2addr v8, v10

    aget-wide v10, p0, v5

    aget-wide v12, p0, v5

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 309
    .local v8, "c1":D
    aget-wide v10, p1, v0

    aget-wide v12, p1, v0

    mul-double/2addr v10, v12

    aget-wide v12, p1, v5

    aget-wide v14, p1, v5

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 310
    .local v10, "c2":D
    sub-double v12, v8, v10

    .line 311
    .local v12, "dc":D
    mul-double v14, v3, v3

    mul-double v16, v6, v6

    add-double v14, v14, v16

    mul-double v16, v12, v12

    sub-double v14, v14, v16

    .line 312
    .local v14, "dh":D
    const-wide/16 v16, 0x0

    cmpg-double v0, v14, v16

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    :goto_0
    move-wide/from16 v14, v16

    .line 313
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 314
    .local v16, "sl":D
    const-wide v18, 0x3fa70a3d70a3d70aL    # 0.045

    mul-double v18, v18, v8

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v20

    .line 315
    .local v18, "sc":D
    const-wide v22, 0x3f8eb851eb851eb8L    # 0.015

    mul-double v22, v22, v8

    add-double v22, v22, v20

    .line 316
    .local v22, "sh":D
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v24, v24, v16

    div-double v24, v1, v24

    .line 317
    .local v24, "dLKlsl":D
    mul-double v26, v18, v20

    div-double v26, v12, v26

    .line 318
    .local v26, "dCkcsc":D
    mul-double v20, v20, v22

    div-double v20, v14, v20

    .line 319
    .local v20, "dHkhsh":D
    mul-double v28, v24, v24

    mul-double v30, v26, v26

    add-double v28, v28, v30

    mul-double v30, v20, v20

    add-double v28, v28, v30

    return-wide v28
.end method

.method private static doGetDistance(Ljava/lang/String;)Lorg/jline/utils/Colors$Distance;
    .locals 3
    .param p0, "dist"    # Ljava/lang/String;

    .line 213
    const-string v0, "rgb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Lorg/jline/utils/Colors$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/jline/utils/Colors$$ExternalSyntheticLambda0;-><init>()V

    return-object v0

    .line 223
    :cond_0
    const-string v0, "rgb\\(([0-9]+(\\.[0-9]+)?),([0-9]+(\\.[0-9]+)?),([0-9]+(\\.[0-9]+)?)\\)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    new-instance v0, Lorg/jline/utils/Colors$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/jline/utils/Colors$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 226
    :cond_1
    const-string v0, "lab"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "cie76"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 229
    :cond_2
    const-string v0, "lab\\(([0-9]+(\\.[0-9]+)?),([0-9]+(\\.[0-9]+)?)\\)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    invoke-static {p0}, Lorg/jline/utils/Colors;->getWeights(Ljava/lang/String;)[D

    move-result-object v0

    .line 231
    .local v0, "w":[D
    new-instance v1, Lorg/jline/utils/Colors$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lorg/jline/utils/Colors$$ExternalSyntheticLambda9;-><init>([D)V

    return-object v1

    .line 233
    .end local v0    # "w":[D
    :cond_3
    const-string v0, "cie94"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    new-instance v0, Lorg/jline/utils/Colors$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lorg/jline/utils/Colors$$ExternalSyntheticLambda10;-><init>()V

    return-object v0

    .line 236
    :cond_4
    const-string v0, "cie00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "cie2000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 239
    :cond_5
    const-string v0, "cam02"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 240
    new-instance v0, Lorg/jline/utils/Colors$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lorg/jline/utils/Colors$$ExternalSyntheticLambda12;-><init>()V

    return-object v0

    .line 242
    :cond_6
    const-string v0, "camlab"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 243
    new-instance v0, Lorg/jline/utils/Colors$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lorg/jline/utils/Colors$$ExternalSyntheticLambda13;-><init>()V

    return-object v0

    .line 249
    :cond_7
    const-string v0, "camlab\\(([0-9]+(\\.[0-9]+)?),([0-9]+(\\.[0-9]+)?)\\)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 250
    new-instance v0, Lorg/jline/utils/Colors$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/jline/utils/Colors$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 257
    :cond_8
    const-string v0, "camlch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 258
    new-instance v0, Lorg/jline/utils/Colors$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/jline/utils/Colors$$ExternalSyntheticLambda1;-><init>()V

    return-object v0

    .line 264
    :cond_9
    const-string v0, "camlch\\(([0-9]+(\\.[0-9]+)?),([0-9]+(\\.[0-9]+)?),([0-9]+(\\.[0-9]+)?)\\)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 265
    new-instance v0, Lorg/jline/utils/Colors$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/jline/utils/Colors$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 272
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported distance function: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_b
    :goto_0
    new-instance v0, Lorg/jline/utils/Colors$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lorg/jline/utils/Colors$$ExternalSyntheticLambda11;-><init>()V

    return-object v0

    .line 227
    :cond_c
    :goto_1
    new-instance v0, Lorg/jline/utils/Colors$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/jline/utils/Colors$$ExternalSyntheticLambda8;-><init>()V

    return-object v0
.end method

.method private static forwardPostAdaptationConeResponse([D[D)[D
    .locals 6
    .param p0, "RGB"    # [D
    .param p1, "vc"    # [D

    .line 556
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/16 v1, 0xe

    aget-wide v1, p1, v1

    const/4 v3, 0x0

    aget-wide v4, p0, v3

    mul-double/2addr v1, v4

    aput-wide v1, v0, v3

    const/16 v1, 0xf

    aget-wide v1, p1, v1

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    mul-double/2addr v1, v4

    aput-wide v1, v0, v3

    const/16 v1, 0x10

    aget-wide v1, p1, v1

    const/4 v3, 0x2

    aget-wide v4, p0, v3

    mul-double/2addr v1, v4

    aput-wide v1, v0, v3

    return-object v0
.end method

.method private static forwardPreAdaptationConeResponse([D)[D
    .locals 10
    .param p0, "XYZ"    # [D

    .line 568
    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 569
    .local v0, "RGB":[D
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    const-wide v4, 0x3fe77318fc504817L    # 0.7328

    mul-double/2addr v2, v4

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    const-wide v7, 0x3fdb7e90ff972474L    # 0.4296

    mul-double/2addr v5, v7

    add-double/2addr v2, v5

    const/4 v5, 0x2

    aget-wide v6, p0, v5

    const-wide v8, 0x3fc4c985f06f6944L    # 0.1624

    mul-double/2addr v6, v8

    sub-double/2addr v2, v6

    aput-wide v2, v0, v1

    .line 570
    aget-wide v2, p0, v1

    const-wide v6, -0x40197c1bda5119ceL    # -0.7036

    mul-double/2addr v2, v6

    aget-wide v6, p0, v4

    const-wide v8, 0x3ffb28f5c28f5c29L    # 1.6975

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    aget-wide v6, p0, v5

    const-wide v8, 0x3f78fc504816f007L    # 0.0061

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    aput-wide v2, v0, v4

    .line 571
    aget-wide v1, p0, v1

    const-wide v6, 0x3f689374bc6a7efaL    # 0.003

    mul-double/2addr v1, v6

    aget-wide v3, p0, v4

    const-wide v6, 0x3f8bda5119ce075fL    # 0.0136

    mul-double/2addr v3, v6

    add-double/2addr v1, v3

    aget-wide v3, p0, v5

    const-wide v6, 0x3fef780346dc5d64L    # 0.9834

    mul-double/2addr v3, v6

    add-double/2addr v1, v3

    aput-wide v1, v0, v5

    .line 572
    return-object v0
.end method

.method private static forwardResponseCompression([D[D)[D
    .locals 17
    .param p0, "RGB"    # [D
    .param p1, "vc"    # [D

    .line 542
    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v1, v1, [D

    .line 543
    .local v1, "result":[D
    const/4 v2, 0x0

    .local v2, "channel":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 544
    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    const-wide v4, 0x3fb999999999999aL    # 0.1

    const-wide v6, 0x403b2147ae147ae1L    # 27.13

    const-wide v8, 0x3fdae147ae147ae1L    # 0.42

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const/16 v12, 0xd

    if-ltz v3, :cond_0

    .line 545
    aget-wide v12, p1, v12

    aget-wide v14, v0, v2

    mul-double/2addr v12, v14

    div-double/2addr v12, v10

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 546
    .local v8, "n":D
    const-wide/high16 v10, 0x4079000000000000L    # 400.0

    mul-double/2addr v10, v8

    add-double/2addr v6, v8

    div-double/2addr v10, v6

    add-double/2addr v10, v4

    aput-wide v10, v1, v2

    .line 547
    .end local v8    # "n":D
    goto :goto_1

    .line 548
    :cond_0
    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    aget-wide v15, p1, v12

    mul-double/2addr v15, v13

    aget-wide v12, v0, v2

    mul-double/2addr v15, v12

    div-double v10, v15, v10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 549
    .restart local v8    # "n":D
    const-wide/high16 v10, -0x3f87000000000000L    # -400.0

    mul-double/2addr v10, v8

    add-double/2addr v6, v8

    div-double/2addr v10, v6

    add-double/2addr v10, v4

    aput-wide v10, v1, v2

    .line 543
    .end local v8    # "n":D
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    .end local v2    # "channel":I
    :cond_1
    return-object v1
.end method

.method private static forwardTransform([D[D)[D
    .locals 33
    .param p0, "XYZ"    # [D
    .param p1, "vc"    # [D

    .line 485
    move-object/from16 v0, p1

    invoke-static/range {p0 .. p0}, Lorg/jline/utils/Colors;->forwardPreAdaptationConeResponse([D)[D

    move-result-object v1

    .line 487
    .local v1, "RGB":[D
    invoke-static {v1, v0}, Lorg/jline/utils/Colors;->forwardPostAdaptationConeResponse([D[D)[D

    move-result-object v2

    .line 489
    .local v2, "RGB_c":[D
    invoke-static {v2}, Lorg/jline/utils/Colors;->CAT02toHPE([D)[D

    move-result-object v3

    .line 491
    .local v3, "RGBPrime":[D
    invoke-static {v3, v0}, Lorg/jline/utils/Colors;->forwardResponseCompression([D[D)[D

    move-result-object v4

    .line 493
    .local v4, "RGBPrime_a":[D
    const/4 v5, 0x0

    aget-wide v6, v4, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const/4 v10, 0x1

    aget-wide v11, v4, v10

    add-double/2addr v6, v11

    const/4 v11, 0x2

    aget-wide v12, v4, v11

    const-wide/high16 v14, 0x4034000000000000L    # 20.0

    div-double/2addr v12, v14

    add-double/2addr v6, v12

    const-wide v12, 0x3fd3851eb851eb85L    # 0.305

    sub-double/2addr v6, v12

    const/16 v12, 0xa

    aget-wide v12, v0, v12

    mul-double/2addr v6, v12

    .line 495
    .local v6, "A":D
    const/16 v12, 0xc

    aget-wide v13, v0, v12

    div-double v13, v6, v13

    const/16 v15, 0x8

    aget-wide v15, v0, v15

    const/16 v17, 0x6

    aget-wide v18, v0, v17

    mul-double v8, v15, v18

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v13

    .line 497
    .local v8, "J":D
    aget-wide v15, v4, v5

    aget-wide v18, v4, v10

    const-wide/high16 v22, -0x3fd8000000000000L    # -12.0

    mul-double v18, v18, v22

    aget-wide v22, v4, v11

    add-double v18, v18, v22

    const-wide/high16 v22, 0x4026000000000000L    # 11.0

    div-double v18, v18, v22

    add-double v12, v15, v18

    .line 498
    .local v12, "a":D
    aget-wide v14, v4, v5

    aget-wide v18, v4, v10

    add-double v14, v14, v18

    aget-wide v18, v4, v11

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v20

    sub-double v14, v14, v18

    const-wide/high16 v18, 0x4022000000000000L    # 9.0

    div-double v14, v14, v18

    .line 500
    .local v14, "b":D
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    const-wide v25, 0x4076800000000000L    # 360.0

    add-double v18, v18, v25

    rem-double v18, v18, v25

    .line 502
    .local v18, "h":D
    const/4 v11, 0x7

    aget-wide v25, v0, v11

    const-wide v27, 0x408e0c4ec4ec4ec5L    # 961.5384615384615

    mul-double v25, v25, v27

    const/16 v27, 0xb

    aget-wide v27, v0, v27

    mul-double v25, v25, v27

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v27

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    add-double v27, v27, v10

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    const-wide v27, 0x400e666666666666L    # 3.8

    add-double v20, v20, v27

    mul-double v25, v25, v20

    .line 504
    .local v25, "e":D
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double v20, v20, v10

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v10, v10, v25

    aget-wide v20, v4, v5

    const/16 v27, 0x1

    aget-wide v29, v4, v27

    add-double v20, v20, v29

    const/16 v16, 0x2

    aget-wide v27, v4, v16

    const-wide v29, 0x3ff0cccccccccccdL    # 1.05

    mul-double v27, v27, v29

    add-double v20, v20, v27

    div-double v10, v10, v20

    .line 506
    .local v10, "t":D
    aget-wide v20, v0, v17

    const-wide/high16 v27, 0x4010000000000000L    # 4.0

    div-double v20, v27, v20

    const-wide/high16 v23, 0x4059000000000000L    # 100.0

    div-double v29, v8, v23

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v29

    mul-double v20, v20, v29

    const/16 v22, 0xc

    aget-wide v29, v0, v22

    add-double v29, v29, v27

    mul-double v20, v20, v29

    const/16 v22, 0xd

    move-wide/from16 v29, v6

    .end local v6    # "A":D
    .local v29, "A":D
    aget-wide v5, v0, v22

    move-object v7, v1

    move-object/from16 v28, v2

    .end local v1    # "RGB":[D
    .end local v2    # "RGB_c":[D
    .local v7, "RGB":[D
    .local v28, "RGB_c":[D
    const-wide/high16 v1, 0x3fd0000000000000L    # 0.25

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double v20, v20, v5

    .line 508
    .local v20, "Q":D
    invoke-static {v10, v11}, Ljava/lang/Math;->signum(D)D

    move-result-wide v5

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    .end local v3    # "RGBPrime":[D
    .end local v4    # "RGBPrime_a":[D
    .local v31, "RGBPrime":[D
    .local v32, "RGBPrime_a":[D
    const-wide v3, 0x3feccccccccccccdL    # 0.9

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v5, v1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    div-double v3, v8, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double/2addr v5, v1

    const/16 v1, 0x9

    aget-wide v1, v0, v1

    const-wide v3, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide v3, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v3, v1

    const-wide v1, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v5, v1

    .line 509
    .local v5, "C":D
    aget-wide v1, v0, v22

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v1, v5

    .line 510
    .local v1, "M":D
    div-double v3, v1, v20

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v22

    .line 512
    .local v3, "s":D
    invoke-static/range {v18 .. v19}, Lorg/jline/utils/Colors;->calculateH(D)D

    move-result-wide v22

    .line 513
    .local v22, "H":D
    const/4 v0, 0x7

    new-array v0, v0, [D

    const/16 v24, 0x0

    aput-wide v8, v0, v24

    const/16 v24, 0x1

    aput-wide v20, v0, v24

    const/16 v16, 0x2

    aput-wide v5, v0, v16

    const/16 v16, 0x3

    aput-wide v1, v0, v16

    const/16 v16, 0x4

    aput-wide v3, v0, v16

    const/16 v16, 0x5

    aput-wide v22, v0, v16

    aput-wide v18, v0, v17

    return-object v0
.end method

.method static getDistance(Ljava/lang/String;)Lorg/jline/utils/Colors$Distance;
    .locals 2
    .param p0, "dist"    # Ljava/lang/String;

    .line 206
    if-nez p0, :cond_0

    .line 207
    const-string v0, "org.jline.utils.colorDistance"

    const-string v1, "cie76"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 209
    :cond_0
    invoke-static {p0}, Lorg/jline/utils/Colors;->doGetDistance(Ljava/lang/String;)Lorg/jline/utils/Colors$Distance;

    move-result-object v0

    return-object v0
.end method

.method private static getWeights(Ljava/lang/String;)[D
    .locals 3
    .param p0, "dist"    # Ljava/lang/String;

    .line 276
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "weights":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/utils/Colors$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/jline/utils/Colors$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v1

    return-object v1
.end method

.method private static hueDifference(DDD)D
    .locals 6
    .param p0, "hue1"    # D
    .param p2, "hue2"    # D
    .param p4, "c"    # D

    .line 415
    sub-double v0, p2, p0

    rem-double/2addr v0, p4

    .line 416
    .local v0, "difference":D
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p4, v2

    .line 417
    .local v2, "ch":D
    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 418
    sub-double/2addr v0, p4

    .line 419
    :cond_0
    neg-double v4, v2

    cmpg-double v4, v0, v4

    if-gez v4, :cond_1

    .line 420
    add-double/2addr v0, p4

    .line 421
    :cond_1
    return-wide v0
.end method

.method private static jmh2ucs([D)[D
    .locals 12
    .param p0, "lch"    # [D

    .line 391
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide v3, 0x3ffb333333333334L    # 1.7000000000000002

    mul-double/2addr v1, v3

    aget-wide v3, p0, v0

    const-wide v5, 0x3f7cac083126e979L    # 0.007

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    div-double/2addr v1, v3

    .line 392
    .local v1, "sJ":D
    const/4 v3, 0x1

    aget-wide v7, p0, v3

    const-wide v9, 0x3f9758e219652bd4L    # 0.0228

    mul-double/2addr v7, v9

    add-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide v6, 0x4045ee08fb823ee0L    # 43.859649122807014

    mul-double/2addr v4, v6

    .line 393
    .local v4, "sM":D
    const/4 v6, 0x2

    aget-wide v7, p0, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v4

    .line 394
    .local v7, "a":D
    aget-wide v9, p0, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v4

    .line 395
    .local v9, "b":D
    const/4 v11, 0x3

    new-array v11, v11, [D

    aput-wide v1, v11, v0

    aput-wide v7, v11, v3

    aput-wide v9, v11, v6

    return-object v11
.end method

.method static synthetic lambda$doGetDistance$10(II)D
    .locals 4
    .param p0, "p1"    # I
    .param p1, "p2"    # I

    .line 244
    sget-object v0, Lorg/jline/utils/Colors;->sRGB_typical_environment:[D

    invoke-static {p0, v0}, Lorg/jline/utils/Colors;->camlab(I[D)[D

    move-result-object v1

    .line 245
    .local v1, "c1":[D
    invoke-static {p1, v0}, Lorg/jline/utils/Colors;->camlab(I[D)[D

    move-result-object v0

    .line 246
    .local v0, "c2":[D
    invoke-static {v1, v0}, Lorg/jline/utils/Colors;->scalar([D[D)D

    move-result-wide v2

    return-wide v2
.end method

.method static synthetic lambda$doGetDistance$11(Ljava/lang/String;II)D
    .locals 7
    .param p0, "dist"    # Ljava/lang/String;
    .param p1, "p1"    # I
    .param p2, "p2"    # I

    .line 251
    sget-object v0, Lorg/jline/utils/Colors;->sRGB_typical_environment:[D

    invoke-static {p1, v0}, Lorg/jline/utils/Colors;->camlab(I[D)[D

    move-result-object v1

    .line 252
    .local v1, "c1":[D
    invoke-static {p2, v0}, Lorg/jline/utils/Colors;->camlab(I[D)[D

    move-result-object v0

    .line 253
    .local v0, "c2":[D
    invoke-static {p0}, Lorg/jline/utils/Colors;->getWeights(Ljava/lang/String;)[D

    move-result-object v2

    .line 254
    .local v2, "w":[D
    const/4 v3, 0x3

    new-array v3, v3, [D

    const/4 v4, 0x0

    aget-wide v5, v2, v4

    aput-wide v5, v3, v4

    const/4 v4, 0x1

    aget-wide v5, v2, v4

    aput-wide v5, v3, v4

    aget-wide v4, v2, v4

    const/4 v6, 0x2

    aput-wide v4, v3, v6

    invoke-static {v1, v0, v3}, Lorg/jline/utils/Colors;->scalar([D[D[D)D

    move-result-wide v3

    return-wide v3
.end method

.method static synthetic lambda$doGetDistance$12(II)D
    .locals 4
    .param p0, "p1"    # I
    .param p1, "p2"    # I

    .line 259
    sget-object v0, Lorg/jline/utils/Colors;->sRGB_typical_environment:[D

    invoke-static {p0, v0}, Lorg/jline/utils/Colors;->camlch(I[D)[D

    move-result-object v1

    .line 260
    .local v1, "c1":[D
    invoke-static {p1, v0}, Lorg/jline/utils/Colors;->camlch(I[D)[D

    move-result-object v0

    .line 261
    .local v0, "c2":[D
    invoke-static {v1, v0}, Lorg/jline/utils/Colors;->camlch([D[D)D

    move-result-wide v2

    return-wide v2
.end method

.method static synthetic lambda$doGetDistance$13(Ljava/lang/String;II)D
    .locals 5
    .param p0, "dist"    # Ljava/lang/String;
    .param p1, "p1"    # I
    .param p2, "p2"    # I

    .line 266
    sget-object v0, Lorg/jline/utils/Colors;->sRGB_typical_environment:[D

    invoke-static {p1, v0}, Lorg/jline/utils/Colors;->camlch(I[D)[D

    move-result-object v1

    .line 267
    .local v1, "c1":[D
    invoke-static {p2, v0}, Lorg/jline/utils/Colors;->camlch(I[D)[D

    move-result-object v0

    .line 268
    .local v0, "c2":[D
    invoke-static {p0}, Lorg/jline/utils/Colors;->getWeights(Ljava/lang/String;)[D

    move-result-object v2

    .line 269
    .local v2, "w":[D
    invoke-static {v1, v0, v2}, Lorg/jline/utils/Colors;->camlch([D[D[D)D

    move-result-wide v3

    return-wide v3
.end method

.method static synthetic lambda$doGetDistance$3(II)D
    .locals 8
    .param p0, "p1"    # I
    .param p1, "p2"    # I

    .line 216
    invoke-static {p0}, Lorg/jline/utils/Colors;->rgb(I)[D

    move-result-object v0

    .line 217
    .local v0, "c1":[D
    invoke-static {p1}, Lorg/jline/utils/Colors;->rgb(I)[D

    move-result-object v1

    .line 218
    .local v1, "c2":[D
    const/4 v2, 0x0

    aget-wide v3, v0, v2

    aget-wide v5, v1, v2

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    .line 219
    .local v3, "rmean":D
    const/4 v7, 0x3

    new-array v7, v7, [D

    add-double/2addr v5, v3

    aput-wide v5, v7, v2

    const/4 v2, 0x1

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    aput-wide v5, v7, v2

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    sub-double/2addr v5, v3

    const/4 v2, 0x2

    aput-wide v5, v7, v2

    move-object v2, v7

    .line 220
    .local v2, "w":[D
    invoke-static {v0, v1, v2}, Lorg/jline/utils/Colors;->scalar([D[D[D)D

    move-result-wide v5

    return-wide v5
.end method

.method static synthetic lambda$doGetDistance$4(Ljava/lang/String;II)D
    .locals 3
    .param p0, "dist"    # Ljava/lang/String;
    .param p1, "p1"    # I
    .param p2, "p2"    # I

    .line 224
    invoke-static {p1}, Lorg/jline/utils/Colors;->rgb(I)[D

    move-result-object v0

    invoke-static {p2}, Lorg/jline/utils/Colors;->rgb(I)[D

    move-result-object v1

    invoke-static {p0}, Lorg/jline/utils/Colors;->getWeights(Ljava/lang/String;)[D

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/jline/utils/Colors;->scalar([D[D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$doGetDistance$5(II)D
    .locals 2
    .param p0, "p1"    # I
    .param p1, "p2"    # I

    .line 227
    invoke-static {p0}, Lorg/jline/utils/Colors;->rgb2cielab(I)[D

    move-result-object v0

    invoke-static {p1}, Lorg/jline/utils/Colors;->rgb2cielab(I)[D

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jline/utils/Colors;->scalar([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$doGetDistance$6([DII)D
    .locals 6
    .param p0, "w"    # [D
    .param p1, "p1"    # I
    .param p2, "p2"    # I

    .line 231
    invoke-static {p1}, Lorg/jline/utils/Colors;->rgb2cielab(I)[D

    move-result-object v0

    invoke-static {p2}, Lorg/jline/utils/Colors;->rgb2cielab(I)[D

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [D

    const/4 v3, 0x0

    aget-wide v4, p0, v3

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    aput-wide v4, v2, v3

    aget-wide v3, p0, v3

    const/4 v5, 0x2

    aput-wide v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/jline/utils/Colors;->scalar([D[D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$doGetDistance$7(II)D
    .locals 2
    .param p0, "p1"    # I
    .param p1, "p2"    # I

    .line 234
    invoke-static {p0}, Lorg/jline/utils/Colors;->rgb2cielab(I)[D

    move-result-object v0

    invoke-static {p1}, Lorg/jline/utils/Colors;->rgb2cielab(I)[D

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jline/utils/Colors;->cie94([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$doGetDistance$8(II)D
    .locals 2
    .param p0, "p1"    # I
    .param p1, "p2"    # I

    .line 237
    invoke-static {p0}, Lorg/jline/utils/Colors;->rgb2cielab(I)[D

    move-result-object v0

    invoke-static {p1}, Lorg/jline/utils/Colors;->rgb2cielab(I)[D

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jline/utils/Colors;->cie00([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$doGetDistance$9(II)D
    .locals 2
    .param p0, "p1"    # I
    .param p1, "p2"    # I

    .line 240
    sget-object v0, Lorg/jline/utils/Colors;->sRGB_typical_environment:[D

    invoke-static {p0, p1, v0}, Lorg/jline/utils/Colors;->cam02(II[D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$rgbColor$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 154
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$rgbColor$1(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$rgbColor$2(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p0, "colors"    # Ljava/util/Map;
    .param p1, "s"    # Ljava/lang/String;

    .line 157
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method static lch2lab([D)[D
    .locals 9
    .param p0, "lch"    # [D

    .line 456
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    .line 457
    .local v0, "toRad":D
    const/4 v2, 0x3

    new-array v2, v2, [D

    const/4 v3, 0x0

    aget-wide v4, p0, v3

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/4 v6, 0x2

    aget-wide v7, p0, v6

    mul-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v4, v7

    aput-wide v4, v2, v3

    aget-wide v3, p0, v3

    aget-wide v7, p0, v6

    mul-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v3, v7

    aput-wide v3, v2, v6

    return-object v2
.end method

.method private static pivotRgb(D)D
    .locals 4
    .param p0, "n"    # D

    .line 667
    const-wide v0, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v0, p0

    const-wide v2, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v0, v2

    const-wide v2, 0x4003333333333333L    # 2.4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    div-double v0, p0, v0

    :goto_0
    return-wide v0
.end method

.method private static pivotXyz(D)D
    .locals 4
    .param p0, "n"    # D

    .line 683
    const-wide v0, 0x3f822354d28f7cd6L    # 0.008856451679035631

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x408c3a5ed097b426L    # 903.2962962962963

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private static rgb(I)[D
    .locals 9
    .param p0, "color"    # I

    .line 425
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 426
    .local v0, "r":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 427
    .local v1, "g":I
    shr-int/lit8 v2, p0, 0x0

    and-int/lit16 v2, v2, 0xff

    .line 428
    .local v2, "b":I
    const/4 v3, 0x3

    new-array v3, v3, [D

    int-to-double v4, v0

    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double/2addr v4, v6

    const/4 v8, 0x0

    aput-wide v4, v3, v8

    int-to-double v4, v1

    div-double/2addr v4, v6

    const/4 v8, 0x1

    aput-wide v4, v3, v8

    int-to-double v4, v2

    div-double/2addr v4, v6

    const/4 v6, 0x2

    aput-wide v4, v3, v6

    return-object v3
.end method

.method static rgb2cielab(I)[D
    .locals 1
    .param p0, "color"    # I

    .line 436
    invoke-static {p0}, Lorg/jline/utils/Colors;->rgb(I)[D

    move-result-object v0

    invoke-static {v0}, Lorg/jline/utils/Colors;->rgb2cielab([D)[D

    move-result-object v0

    return-object v0
.end method

.method public static rgb2cielab([D)[D
    .locals 1
    .param p0, "rgb"    # [D

    .line 652
    invoke-static {p0}, Lorg/jline/utils/Colors;->rgb2xyz([D)[D

    move-result-object v0

    invoke-static {v0}, Lorg/jline/utils/Colors;->xyz2lab([D)[D

    move-result-object v0

    return-object v0
.end method

.method static rgb2xyz(I)[D
    .locals 1
    .param p0, "color"    # I

    .line 432
    invoke-static {p0}, Lorg/jline/utils/Colors;->rgb(I)[D

    move-result-object v0

    invoke-static {v0}, Lorg/jline/utils/Colors;->rgb2xyz([D)[D

    move-result-object v0

    return-object v0
.end method

.method private static rgb2xyz([D)[D
    .locals 17
    .param p0, "rgb"    # [D

    .line 656
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Lorg/jline/utils/Colors;->pivotRgb(D)D

    move-result-wide v1

    .line 657
    .local v1, "vr":D
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lorg/jline/utils/Colors;->pivotRgb(D)D

    move-result-wide v4

    .line 658
    .local v4, "vg":D
    const/4 v6, 0x2

    aget-wide v7, p0, v6

    invoke-static {v7, v8}, Lorg/jline/utils/Colors;->pivotRgb(D)D

    move-result-wide v7

    .line 660
    .local v7, "vb":D
    const-wide v9, 0x3fda65af8741a841L    # 0.4124564

    mul-double/2addr v9, v1

    const-wide v11, 0x3fd6e286ddd532cdL    # 0.3575761

    mul-double/2addr v11, v4

    add-double/2addr v9, v11

    const-wide v11, 0x3fc7189374bc6a7fL    # 0.1804375

    mul-double/2addr v11, v7

    add-double/2addr v9, v11

    .line 661
    .local v9, "x":D
    const-wide v11, 0x3fcb38dd971f6bd6L    # 0.2126729

    mul-double/2addr v11, v1

    const-wide v13, 0x3fe6e286ddd532cdL    # 0.7151522

    mul-double/2addr v13, v4

    add-double/2addr v11, v13

    const-wide v13, 0x3fb27a0f9096bb99L    # 0.072175

    mul-double/2addr v13, v7

    add-double/2addr v11, v13

    .line 662
    .local v11, "y":D
    const-wide v13, 0x3f93cc4410d1089cL    # 0.0193339

    mul-double/2addr v13, v1

    const-wide v15, 0x3fbe835dedf1e083L    # 0.119192

    mul-double/2addr v15, v4

    add-double/2addr v13, v15

    const-wide v15, 0x3fee68e424d8269dL    # 0.9503041

    mul-double/2addr v15, v7

    add-double/2addr v13, v15

    .line 663
    .local v13, "z":D
    const/4 v15, 0x3

    new-array v15, v15, [D

    aput-wide v9, v15, v0

    aput-wide v11, v15, v3

    aput-wide v13, v15, v6

    return-object v15
.end method

.method public static rgbColor(I)I
    .locals 1
    .param p0, "col"    # I

    .line 145
    sget-object v0, Lorg/jline/utils/Colors;->COLORS_256:[I

    aget v0, v0, p0

    return v0
.end method

.method public static rgbColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 149
    sget-object v0, Lorg/jline/utils/Colors;->COLOR_NAMES:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 150
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 151
    .local v0, "colors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    const-class v1, Lorg/jline/utils/InfoCmp;

    const-string v2, "colors.txt"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Lorg/jline/utils/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Lorg/jline/utils/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 153
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/jline/utils/Colors$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lorg/jline/utils/Colors$$ExternalSyntheticLambda3;-><init>()V

    .line 154
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/jline/utils/Colors$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lorg/jline/utils/Colors$$ExternalSyntheticLambda4;-><init>()V

    .line 155
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/jline/utils/Colors$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Lorg/jline/utils/Colors$$ExternalSyntheticLambda5;-><init>(Ljava/util/Map;)V

    .line 156
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 159
    sput-object v0, Lorg/jline/utils/Colors;->COLOR_NAMES:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v2    # "br":Ljava/io/BufferedReader;
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 162
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    goto :goto_2

    .line 151
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "colors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "is":Ljava/io/InputStream;
    .end local p0    # "name":Ljava/lang/String;
    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "colors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local p0    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "colors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local p0    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 160
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "colors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local p0    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 164
    .end local v0    # "colors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    sget-object v0, Lorg/jline/utils/Colors;->COLOR_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static roundColor(II)I
    .locals 1
    .param p0, "col"    # I
    .param p1, "max"    # I

    .line 168
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/jline/utils/Colors;->roundColor(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static roundColor(IILjava/lang/String;)I
    .locals 2
    .param p0, "col"    # I
    .param p1, "max"    # I
    .param p2, "dist"    # Ljava/lang/String;

    .line 172
    if-lt p0, p1, :cond_0

    .line 173
    sget-object v0, Lorg/jline/utils/Colors;->COLORS_256:[I

    aget v1, v0, p0

    .line 174
    .local v1, "c":I
    invoke-static {v1, v0, p1, p2}, Lorg/jline/utils/Colors;->roundColor(I[IILjava/lang/String;)I

    move-result p0

    .line 176
    .end local v1    # "c":I
    :cond_0
    return p0
.end method

.method static roundColor(I[IILjava/lang/String;)I
    .locals 1
    .param p0, "color"    # I
    .param p1, "colors"    # [I
    .param p2, "max"    # I
    .param p3, "dist"    # Ljava/lang/String;

    .line 184
    invoke-static {p3}, Lorg/jline/utils/Colors;->getDistance(Ljava/lang/String;)Lorg/jline/utils/Colors$Distance;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/jline/utils/Colors;->roundColor(I[IILorg/jline/utils/Colors$Distance;)I

    move-result v0

    return v0
.end method

.method static roundColor(I[IILorg/jline/utils/Colors$Distance;)I
    .locals 7
    .param p0, "color"    # I
    .param p1, "colors"    # [I
    .param p2, "max"    # I
    .param p3, "distance"    # Lorg/jline/utils/Colors$Distance;

    .line 193
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    .line 194
    .local v0, "best_distance":D
    const v2, 0x7fffffff

    .line 195
    .local v2, "best_index":I
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    if-ge v3, p2, :cond_1

    .line 196
    aget v4, p1, v3

    invoke-interface {p3, p0, v4}, Lorg/jline/utils/Colors$Distance;->compute(II)D

    move-result-wide v4

    .line 197
    .local v4, "d":D
    cmpg-double v6, v4, v0

    if-gtz v6, :cond_0

    .line 198
    move v2, v3

    .line 199
    move-wide v0, v4

    .line 195
    .end local v4    # "d":D
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    .end local v3    # "idx":I
    :cond_1
    return v2
.end method

.method public static roundRgbColor(IIII)I
    .locals 4
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "max"    # I

    .line 180
    shl-int/lit8 v0, p0, 0x10

    shl-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    sget-object v1, Lorg/jline/utils/Colors;->COLORS_256:[I

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v1, p3, v2}, Lorg/jline/utils/Colors;->roundColor(I[IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static scalar([D[D)D
    .locals 7
    .param p0, "c1"    # [D
    .param p1, "c2"    # [D

    .line 287
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/jline/utils/Colors;->sqr(D)D

    move-result-wide v0

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    .line 288
    invoke-static {v3, v4}, Lorg/jline/utils/Colors;->sqr(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const/4 v2, 0x2

    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    .line 289
    invoke-static {v3, v4}, Lorg/jline/utils/Colors;->sqr(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 287
    return-wide v0
.end method

.method private static scalar([D[D[D)D
    .locals 7
    .param p0, "c1"    # [D
    .param p1, "c2"    # [D
    .param p2, "w"    # [D

    .line 281
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    aget-wide v3, p2, v0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/jline/utils/Colors;->sqr(D)D

    move-result-wide v0

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    aget-wide v5, p2, v2

    mul-double/2addr v3, v5

    .line 282
    invoke-static {v3, v4}, Lorg/jline/utils/Colors;->sqr(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const/4 v2, 0x2

    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    aget-wide v5, p2, v2

    mul-double/2addr v3, v5

    .line 283
    invoke-static {v3, v4}, Lorg/jline/utils/Colors;->sqr(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 281
    return-wide v0
.end method

.method public static setRgbColors([I)V
    .locals 2
    .param p0, "colors"    # [I

    .line 138
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 141
    sput-object p0, Lorg/jline/utils/Colors;->COLORS_256:[I

    .line 142
    return-void

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static sqr(D)D
    .locals 2
    .param p0, "n"    # D

    .line 687
    mul-double v0, p0, p0

    return-wide v0
.end method

.method static vc([DDD[D)[D
    .locals 41
    .param p0, "xyz_w"    # [D
    .param p1, "L_A"    # D
    .param p3, "Y_b"    # D
    .param p5, "surrounding"    # [D

    .line 599
    move-wide/from16 v0, p1

    const/16 v2, 0x11

    new-array v2, v2, [D

    .line 600
    .local v2, "vc":[D
    const/4 v3, 0x0

    aget-wide v4, p0, v3

    aput-wide v4, v2, v3

    .line 601
    const/4 v4, 0x1

    aget-wide v5, p0, v4

    aput-wide v5, v2, v4

    .line 602
    const/4 v5, 0x2

    aget-wide v6, p0, v5

    aput-wide v6, v2, v5

    .line 603
    const/4 v6, 0x3

    aput-wide v0, v2, v6

    .line 604
    const/4 v7, 0x4

    aput-wide p3, v2, v7

    .line 605
    aget-wide v7, p5, v3

    const/4 v9, 0x5

    aput-wide v7, v2, v9

    .line 606
    aget-wide v7, p5, v4

    const/4 v10, 0x6

    aput-wide v7, v2, v10

    .line 607
    aget-wide v7, p5, v5

    const/4 v10, 0x7

    aput-wide v7, v2, v10

    .line 609
    invoke-static/range {p0 .. p0}, Lorg/jline/utils/Colors;->forwardPreAdaptationConeResponse([D)[D

    move-result-object v7

    .line 610
    .local v7, "RGB_w":[D
    aget-wide v8, v2, v9

    neg-double v10, v0

    const-wide/high16 v12, 0x4045000000000000L    # 42.0

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4057000000000000L    # 92.0

    div-double/2addr v10, v12

    const-wide v12, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v10, v12, v10

    mul-double/2addr v8, v10

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 611
    .local v8, "D":D
    aget-wide v14, p0, v4

    .line 612
    .local v14, "Yw":D
    new-array v10, v6, [D

    mul-double v18, v8, v14

    aget-wide v20, v7, v3

    div-double v18, v18, v20

    sub-double v20, v12, v8

    add-double v18, v18, v20

    aput-wide v18, v10, v3

    mul-double v18, v8, v14

    aget-wide v20, v7, v4

    div-double v18, v18, v20

    sub-double v20, v12, v8

    add-double v18, v18, v20

    aput-wide v18, v10, v4

    mul-double v18, v8, v14

    aget-wide v20, v7, v5

    div-double v18, v18, v20

    sub-double v20, v12, v8

    add-double v18, v18, v20

    aput-wide v18, v10, v5

    .line 619
    .local v10, "RGB_c":[D
    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    mul-double v4, v0, v18

    .line 620
    .local v4, "L_Ax5":D
    add-double v18, v4, v12

    move-object/from16 v22, v7

    .end local v7    # "RGB_w":[D
    .local v22, "RGB_w":[D
    div-double v6, v12, v18

    .line 621
    .local v6, "k":D
    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    .line 622
    .local v23, "kpow4":D
    const-wide v11, 0x3fc999999999999aL    # 0.2

    mul-double v25, v23, v11

    mul-double v25, v25, v4

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v11, v18, v23

    move-wide/from16 v29, v14

    .end local v14    # "Yw":D
    .local v29, "Yw":D
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    const-wide v31, 0x3fb999999999999aL    # 0.1

    mul-double v11, v11, v31

    const-wide v13, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double v25, v25, v11

    const/16 v12, 0xd

    aput-wide v25, v2, v12

    .line 625
    div-double v13, p3, v29

    const/16 v11, 0x9

    aput-wide v13, v2, v11

    .line 626
    aget-wide v13, v2, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    const-wide v25, 0x3ff7ae147ae147aeL    # 1.48

    add-double v13, v13, v25

    const/16 v25, 0x8

    aput-wide v13, v2, v25

    .line 628
    aget-wide v13, v2, v11

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    div-double v13, v18, v13

    move-wide/from16 v25, v4

    const-wide v3, 0x3fc999999999999aL    # 0.2

    .end local v4    # "L_Ax5":D
    .local v25, "L_Ax5":D
    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide v13, 0x3fe7333333333333L    # 0.725

    mul-double/2addr v3, v13

    const/16 v5, 0xa

    aput-wide v3, v2, v5

    .line 629
    aget-wide v3, v2, v5

    const/16 v11, 0xb

    aput-wide v3, v2, v11

    .line 632
    const/4 v3, 0x3

    new-array v4, v3, [D

    const/4 v3, 0x0

    aget-wide v13, v10, v3

    aget-wide v18, v22, v3

    mul-double v13, v13, v18

    aput-wide v13, v4, v3

    const/4 v3, 0x1

    aget-wide v13, v10, v3

    aget-wide v27, v22, v3

    mul-double v13, v13, v27

    aput-wide v13, v4, v3

    const/4 v3, 0x2

    aget-wide v13, v10, v3

    aget-wide v19, v22, v3

    mul-double v13, v13, v19

    aput-wide v13, v4, v3

    move-object v3, v4

    .line 633
    .local v3, "RGB_wc":[D
    invoke-static {v3}, Lorg/jline/utils/Colors;->CAT02toHPE([D)[D

    move-result-object v4

    .line 634
    .local v4, "RGBPrime_w":[D
    const/4 v13, 0x3

    new-array v13, v13, [D

    .line 635
    .local v13, "RGBPrime_aw":[D
    const/4 v14, 0x0

    .local v14, "channel":I
    :goto_0
    array-length v15, v4

    if-ge v14, v15, :cond_1

    .line 636
    aget-wide v27, v4, v14

    const-wide/16 v15, 0x0

    cmpl-double v17, v27, v15

    const-wide v27, 0x403b2147ae147ae1L    # 27.13

    move-wide/from16 v33, v6

    .end local v6    # "k":D
    .local v33, "k":D
    const-wide v5, 0x3fdae147ae147ae1L    # 0.42

    const-wide/high16 v35, 0x4059000000000000L    # 100.0

    if-ltz v17, :cond_0

    .line 637
    aget-wide v37, v2, v12

    aget-wide v39, v4, v14

    mul-double v37, v37, v39

    move-wide/from16 v39, v8

    .end local v8    # "D":D
    .local v39, "D":D
    div-double v7, v37, v35

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    .line 638
    .local v5, "n":D
    const-wide/high16 v7, 0x4079000000000000L    # 400.0

    mul-double/2addr v7, v5

    add-double v27, v5, v27

    div-double v7, v7, v27

    add-double v7, v7, v31

    aput-wide v7, v13, v14

    .line 639
    .end local v5    # "n":D
    goto :goto_1

    .line 640
    .end local v39    # "D":D
    .restart local v8    # "D":D
    :cond_0
    move-wide/from16 v39, v8

    .end local v8    # "D":D
    .restart local v39    # "D":D
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    aget-wide v37, v2, v12

    mul-double v37, v37, v7

    aget-wide v7, v4, v14

    mul-double v37, v37, v7

    div-double v7, v37, v35

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    .line 641
    .restart local v5    # "n":D
    const-wide/high16 v7, -0x3f87000000000000L    # -400.0

    mul-double/2addr v7, v5

    add-double v27, v5, v27

    div-double v7, v7, v27

    add-double v7, v7, v31

    aput-wide v7, v13, v14

    .line 635
    .end local v5    # "n":D
    :goto_1
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v6, v33

    move-wide/from16 v8, v39

    const/16 v5, 0xa

    goto :goto_0

    .end local v33    # "k":D
    .end local v39    # "D":D
    .restart local v6    # "k":D
    .restart local v8    # "D":D
    :cond_1
    move-wide/from16 v33, v6

    .line 644
    .end local v6    # "k":D
    .end local v14    # "channel":I
    .restart local v33    # "k":D
    const/16 v5, 0xc

    const/4 v6, 0x0

    aget-wide v7, v13, v6

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v14

    const/4 v6, 0x1

    aget-wide v14, v13, v6

    add-double/2addr v7, v14

    const/4 v6, 0x2

    aget-wide v14, v13, v6

    const-wide/high16 v16, 0x4034000000000000L    # 20.0

    div-double v14, v14, v16

    add-double/2addr v7, v14

    const-wide v14, 0x3fd3851eb851eb85L    # 0.305

    sub-double/2addr v7, v14

    const/16 v6, 0xa

    aget-wide v14, v2, v6

    mul-double/2addr v7, v14

    aput-wide v7, v2, v5

    .line 645
    const/16 v5, 0xe

    const/4 v6, 0x0

    aget-wide v6, v10, v6

    aput-wide v6, v2, v5

    .line 646
    const/16 v5, 0xf

    const/4 v6, 0x1

    aget-wide v6, v10, v6

    aput-wide v6, v2, v5

    .line 647
    const/16 v5, 0x10

    const/4 v6, 0x2

    aget-wide v6, v10, v6

    aput-wide v6, v2, v5

    .line 648
    return-object v2
.end method

.method private static xyz2camlch([D[D)[D
    .locals 9
    .param p0, "xyz"    # [D
    .param p1, "vc"    # [D

    .line 461
    const/4 v0, 0x3

    new-array v1, v0, [D

    const/4 v2, 0x0

    aget-wide v3, p0, v2

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    aput-wide v3, v1, v2

    const/4 v3, 0x1

    aget-wide v7, p0, v3

    mul-double/2addr v7, v5

    aput-wide v7, v1, v3

    const/4 v4, 0x2

    aget-wide v7, p0, v4

    mul-double/2addr v7, v5

    aput-wide v7, v1, v4

    .line 462
    .local v1, "XYZ":[D
    invoke-static {v1, p1}, Lorg/jline/utils/Colors;->forwardTransform([D[D)[D

    move-result-object v5

    .line 463
    .local v5, "cam":[D
    new-array v6, v0, [D

    aget-wide v7, v5, v2

    aput-wide v7, v6, v2

    aget-wide v7, v5, v0

    aput-wide v7, v6, v3

    const/4 v0, 0x6

    aget-wide v2, v5, v0

    aput-wide v2, v6, v4

    return-object v6
.end method

.method private static xyz2lab([D)[D
    .locals 17
    .param p0, "xyz"    # [D

    .line 671
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Lorg/jline/utils/Colors;->pivotXyz(D)D

    move-result-wide v1

    .line 672
    .local v1, "fx":D
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lorg/jline/utils/Colors;->pivotXyz(D)D

    move-result-wide v4

    .line 673
    .local v4, "fy":D
    const/4 v6, 0x2

    aget-wide v7, p0, v6

    invoke-static {v7, v8}, Lorg/jline/utils/Colors;->pivotXyz(D)D

    move-result-wide v7

    .line 674
    .local v7, "fz":D
    const-wide/high16 v9, 0x405d000000000000L    # 116.0

    mul-double/2addr v9, v4

    const-wide/high16 v11, 0x4030000000000000L    # 16.0

    sub-double/2addr v9, v11

    .line 675
    .local v9, "l":D
    sub-double v11, v1, v4

    const-wide v13, 0x407f400000000000L    # 500.0

    mul-double/2addr v11, v13

    .line 676
    .local v11, "a":D
    sub-double v13, v4, v7

    const-wide/high16 v15, 0x4069000000000000L    # 200.0

    mul-double/2addr v13, v15

    .line 677
    .local v13, "b":D
    const/4 v15, 0x3

    new-array v15, v15, [D

    aput-wide v9, v15, v0

    aput-wide v11, v15, v3

    aput-wide v13, v15, v6

    return-object v15
.end method
