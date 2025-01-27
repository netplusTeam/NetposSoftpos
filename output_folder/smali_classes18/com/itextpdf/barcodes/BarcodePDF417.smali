.class public Lcom/itextpdf/barcodes/BarcodePDF417;
.super Lcom/itextpdf/barcodes/Barcode2D;
.source "BarcodePDF417.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;,
        Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    }
.end annotation


# static fields
.field protected static final ABSOLUTE_MAX_TEXT_SIZE:I = 0x152c

.field protected static final AL:I = 0x1c

.field protected static final ALPHA:I = 0x10000

.field protected static final AS:I = 0x1b

.field protected static final BYTESHIFT:I = 0x391

.field protected static final BYTE_MODE:I = 0x385

.field protected static final BYTE_MODE_6:I = 0x39c

.field private static final CLUSTERS:[[I

.field protected static final DEFAUL_MODULE_HEIGHT:F = 1.0f

.field protected static final DEFAUL_MODULE_WIDTH:F = 1.0f

.field private static final ERROR_LEVEL:[[I

.field protected static final ISBYTE:I = 0x100000

.field protected static final LL:I = 0x1b

.field protected static final LOWER:I = 0x20000

.field protected static final MACRO_LAST_SEGMENT:I = 0x39a

.field protected static final MACRO_SEGMENT_ID:I = 0x3a0

.field protected static final MAX_DATA_CODEWORDS:I = 0x39e

.field protected static final MIXED:I = 0x40000

.field private static final MIXED_SET:Ljava/lang/String; = "0123456789&\r\t,:#-.$/+%*=^"

.field protected static final ML:I = 0x1c

.field protected static final MOD:I = 0x3a1

.field protected static final NUMERIC_MODE:I = 0x386

.field protected static final PAL:I = 0x1d

.field public static final PDF417_AUTO_ERROR_LEVEL:I = 0x0

.field public static final PDF417_FIXED_COLUMNS:I = 0x2

.field public static final PDF417_FIXED_RECTANGLE:I = 0x1

.field public static final PDF417_FIXED_ROWS:I = 0x4

.field public static final PDF417_FORCE_BINARY:I = 0x20

.field public static final PDF417_INVERT_BITMAP:I = 0x80

.field public static final PDF417_USE_ASPECT_RATIO:I = 0x0

.field public static final PDF417_USE_ERROR_LEVEL:I = 0x10

.field public static final PDF417_USE_MACRO:I = 0x100

.field public static final PDF417_USE_RAW_CODEWORDS:I = 0x40

.field protected static final PL:I = 0x19

.field protected static final PS:I = 0x1d

.field protected static final PUNCTUATION:I = 0x80000

.field private static final PUNCTUATION_SET:Ljava/lang/String; = ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

.field protected static final SPACE:I = 0x1a

.field protected static final START_CODE_SIZE:I = 0x11

.field protected static final START_PATTERN:I = 0x1fea8

.field protected static final STOP_PATTERN:I = 0x3fa29

.field protected static final STOP_SIZE:I = 0x12

.field protected static final TEXT_MODE:I = 0x384


# instance fields
.field private aspectRatio:F

.field private bitColumns:I

.field protected bitPtr:I

.field private code:[B

.field private codeColumns:I

.field private codeRows:I

.field private codewords:[I

.field protected cwPtr:I

.field private errorLevel:I

.field private lenCodewords:I

.field private macroFileId:Ljava/lang/String;

.field private macroIndex:I

.field private macroSegmentCount:I

.field private macroSegmentId:I

.field private options:I

.field private outBits:[B

.field protected segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

.field private yHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 143
    const/4 v0, 0x3

    new-array v1, v0, [[I

    const/16 v2, 0x3a1

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sput-object v1, Lcom/itextpdf/barcodes/BarcodePDF417;->CLUSTERS:[[I

    .line 500
    const/16 v1, 0x9

    new-array v1, v1, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v4

    const/4 v2, 0x4

    new-array v4, v2, [I

    fill-array-data v4, :array_4

    aput-object v4, v1, v5

    const/16 v4, 0x8

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    aput-object v5, v1, v3

    const/16 v3, 0x10

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v0

    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    aput-object v0, v1, v2

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const/16 v0, 0x80

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    const/4 v2, 0x7

    aput-object v0, v1, v2

    const/16 v0, 0x200

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    aput-object v0, v1, v4

    sput-object v1, Lcom/itextpdf/barcodes/BarcodePDF417;->ERROR_LEVEL:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1d5c0
        0x1eaf0
        0x1f57c
        0x1d4e0
        0x1ea78
        0x1f53e
        0x1a8c0
        0x1d470
        0x1a860
        0x15040
        0x1a830
        0x15020
        0x1adc0
        0x1d6f0
        0x1eb7c
        0x1ace0
        0x1d678
        0x1eb3e
        0x158c0
        0x1ac70
        0x15860
        0x15dc0
        0x1aef0
        0x1d77c
        0x15ce0
        0x1ae78
        0x1d73e
        0x15c70
        0x1ae3c
        0x15ef0
        0x1af7c
        0x15e78
        0x1af3e
        0x15f7c
        0x1f5fa
        0x1d2e0
        0x1e978
        0x1f4be
        0x1a4c0
        0x1d270
        0x1e93c
        0x1a460
        0x1d238
        0x14840
        0x1a430
        0x1d21c
        0x14820
        0x1a418
        0x14810
        0x1a6e0
        0x1d378
        0x1e9be
        0x14cc0
        0x1a670
        0x1d33c
        0x14c60
        0x1a638
        0x1d31e
        0x14c30
        0x1a61c
        0x14ee0
        0x1a778
        0x1d3be
        0x14e70
        0x1a73c
        0x14e38
        0x1a71e
        0x14f78
        0x1a7be
        0x14f3c
        0x14f1e
        0x1a2c0
        0x1d170
        0x1e8bc
        0x1a260
        0x1d138
        0x1e89e
        0x14440
        0x1a230
        0x1d11c
        0x14420
        0x1a218
        0x14410
        0x14408
        0x146c0
        0x1a370
        0x1d1bc
        0x14660
        0x1a338
        0x1d19e
        0x14630
        0x1a31c
        0x14618
        0x1460c
        0x14770
        0x1a3bc
        0x14738
        0x1a39e
        0x1471c
        0x147bc
        0x1a160
        0x1d0b8
        0x1e85e
        0x14240
        0x1a130
        0x1d09c
        0x14220
        0x1a118
        0x1d08e
        0x14210
        0x1a10c
        0x14208
        0x1a106
        0x14360
        0x1a1b8
        0x1d0de
        0x14330
        0x1a19c
        0x14318
        0x1a18e
        0x1430c
        0x14306
        0x1a1de
        0x1438e
        0x14140
        0x1a0b0
        0x1d05c
        0x14120
        0x1a098
        0x1d04e
        0x14110
        0x1a08c
        0x14108
        0x1a086
        0x14104
        0x141b0
        0x14198
        0x1418c
        0x140a0
        0x1d02e
        0x1a04c
        0x1a046
        0x14082
        0x1cae0
        0x1e578
        0x1f2be
        0x194c0
        0x1ca70
        0x1e53c
        0x19460
        0x1ca38
        0x1e51e
        0x12840
        0x19430
        0x12820
        0x196e0
        0x1cb78
        0x1e5be
        0x12cc0
        0x19670
        0x1cb3c
        0x12c60
        0x19638
        0x12c30
        0x12c18
        0x12ee0
        0x19778
        0x1cbbe
        0x12e70
        0x1973c
        0x12e38
        0x12e1c
        0x12f78
        0x197be
        0x12f3c
        0x12fbe
        0x1dac0
        0x1ed70
        0x1f6bc
        0x1da60
        0x1ed38
        0x1f69e
        0x1b440
        0x1da30
        0x1ed1c
        0x1b420
        0x1da18
        0x1ed0e
        0x1b410
        0x1da0c
        0x192c0
        0x1c970
        0x1e4bc
        0x1b6c0
        0x19260
        0x1c938
        0x1e49e
        0x1b660
        0x1db38
        0x1ed9e
        0x16c40
        0x12420
        0x19218
        0x1c90e
        0x16c20
        0x1b618
        0x16c10
        0x126c0
        0x19370
        0x1c9bc
        0x16ec0
        0x12660
        0x19338
        0x1c99e
        0x16e60
        0x1b738
        0x1db9e
        0x16e30
        0x12618
        0x16e18
        0x12770
        0x193bc
        0x16f70
        0x12738
        0x1939e
        0x16f38
        0x1b79e
        0x16f1c
        0x127bc
        0x16fbc
        0x1279e
        0x16f9e
        0x1d960
        0x1ecb8
        0x1f65e
        0x1b240
        0x1d930
        0x1ec9c
        0x1b220
        0x1d918
        0x1ec8e
        0x1b210
        0x1d90c
        0x1b208
        0x1b204
        0x19160
        0x1c8b8
        0x1e45e
        0x1b360
        0x19130
        0x1c89c
        0x16640
        0x12220
        0x1d99c
        0x1c88e
        0x16620
        0x12210
        0x1910c
        0x16610
        0x1b30c
        0x19106
        0x12204
        0x12360
        0x191b8
        0x1c8de
        0x16760
        0x12330
        0x1919c
        0x16730
        0x1b39c
        0x1918e
        0x16718
        0x1230c
        0x12306
        0x123b8
        0x191de
        0x167b8
        0x1239c
        0x1679c
        0x1238e
        0x1678e
        0x167de
        0x1b140
        0x1d8b0
        0x1ec5c
        0x1b120
        0x1d898
        0x1ec4e
        0x1b110
        0x1d88c
        0x1b108
        0x1d886
        0x1b104
        0x1b102
        0x12140
        0x190b0
        0x1c85c
        0x16340
        0x12120
        0x19098
        0x1c84e
        0x16320
        0x1b198
        0x1d8ce
        0x16310
        0x12108
        0x19086
        0x16308
        0x1b186
        0x16304
        0x121b0
        0x190dc
        0x163b0
        0x12198
        0x190ce
        0x16398
        0x1b1ce
        0x1638c
        0x12186
        0x16386
        0x163dc
        0x163ce
        0x1b0a0
        0x1d858
        0x1ec2e
        0x1b090
        0x1d84c
        0x1b088
        0x1d846
        0x1b084
        0x1b082
        0x120a0
        0x19058
        0x1c82e
        0x161a0
        0x12090
        0x1904c
        0x16190
        0x1b0cc
        0x19046
        0x16188
        0x12084
        0x16184
        0x12082
        0x120d8
        0x161d8
        0x161cc
        0x161c6
        0x1d82c
        0x1d826
        0x1b042
        0x1902c
        0x12048
        0x160c8
        0x160c4
        0x160c2
        0x18ac0
        0x1c570
        0x1e2bc
        0x18a60
        0x1c538
        0x11440
        0x18a30
        0x1c51c
        0x11420
        0x18a18
        0x11410
        0x11408
        0x116c0    # 9.9997E-41f
        0x18b70
        0x1c5bc
        0x11660
        0x18b38
        0x1c59e
        0x11630
        0x18b1c
        0x11618
        0x1160c
        0x11770
        0x18bbc
        0x11738
        0x18b9e
        0x1171c
        0x117bc
        0x1179e
        0x1cd60
        0x1e6b8
        0x1f35e
        0x19a40
        0x1cd30
        0x1e69c
        0x19a20
        0x1cd18
        0x1e68e
        0x19a10
        0x1cd0c
        0x19a08
        0x1cd06
        0x18960
        0x1c4b8
        0x1e25e
        0x19b60
        0x18930
        0x1c49c
        0x13640
        0x11220
        0x1cd9c
        0x1c48e
        0x13620
        0x19b18
        0x1890c
        0x13610
        0x11208
        0x13608
        0x11360
        0x189b8
        0x1c4de
        0x13760
        0x11330
        0x1cdde
        0x13730
        0x19b9c
        0x1898e
        0x13718
        0x1130c
        0x1370c
        0x113b8
        0x189de
        0x137b8
        0x1139c
        0x1379c
        0x1138e
        0x113de
        0x137de
        0x1dd40
        0x1eeb0
        0x1f75c
        0x1dd20
        0x1ee98
        0x1f74e
        0x1dd10
        0x1ee8c
        0x1dd08
        0x1ee86
        0x1dd04
        0x19940
        0x1ccb0
        0x1e65c
        0x1bb40
        0x19920
        0x1eedc
        0x1e64e
        0x1bb20
        0x1dd98
        0x1eece
        0x1bb10
        0x19908
        0x1cc86
        0x1bb08
        0x1dd86
        0x19902
        0x11140
        0x188b0
        0x1c45c
        0x13340
        0x11120
        0x18898
        0x1c44e
        0x17740
        0x13320
        0x19998
        0x1ccce
        0x17720
        0x1bb98
        0x1ddce
        0x18886
        0x17710
        0x13308
        0x19986
        0x17708
        0x11102
        0x111b0
        0x188dc
        0x133b0
        0x11198
        0x188ce
        0x177b0
        0x13398
        0x199ce
        0x17798
        0x1bbce
        0x11186
        0x13386
        0x111dc
        0x133dc
        0x111ce
        0x177dc
        0x133ce
        0x1dca0
        0x1ee58
        0x1f72e
        0x1dc90
        0x1ee4c
        0x1dc88
        0x1ee46
        0x1dc84
        0x1dc82
        0x198a0
        0x1cc58
        0x1e62e
        0x1b9a0
        0x19890
        0x1ee6e
        0x1b990
        0x1dccc
        0x1cc46
        0x1b988
        0x19884
        0x1b984
        0x19882
        0x1b982
        0x110a0
        0x18858
        0x1c42e
        0x131a0
        0x11090
        0x1884c
        0x173a0
        0x13190
        0x198cc
        0x18846
        0x17390
        0x1b9cc
        0x11084
        0x17388
        0x13184
        0x11082
        0x13182
        0x110d8
        0x1886e
        0x131d8
        0x110cc
        0x173d8
        0x131cc
        0x110c6
        0x173cc
        0x131c6
        0x110ee
        0x173ee
        0x1dc50
        0x1ee2c
        0x1dc48
        0x1ee26
        0x1dc44
        0x1dc42
        0x19850
        0x1cc2c
        0x1b8d0
        0x19848
        0x1cc26
        0x1b8c8
        0x1dc66
        0x1b8c4
        0x19842
        0x1b8c2
        0x11050
        0x1882c
        0x130d0
        0x11048
        0x18826
        0x171d0
        0x130c8
        0x19866
        0x171c8
        0x1b8e6
        0x11042
        0x171c4
        0x130c2
        0x171c2
        0x130ec
        0x171ec
        0x171e6
        0x1ee16
        0x1dc22
        0x1cc16
        0x19824
        0x19822
        0x11028
        0x13068
        0x170e8
        0x11022
        0x13062
        0x18560
        0x10a40
        0x18530
        0x10a20
        0x18518
        0x1c28e
        0x10a10
        0x1850c
        0x10a08
        0x18506
        0x10b60
        0x185b8
        0x1c2de
        0x10b30
        0x1859c
        0x10b18
        0x1858e
        0x10b0c
        0x10b06
        0x10bb8
        0x185de
        0x10b9c    # 9.6E-41f
        0x10b8e
        0x10bde
        0x18d40
        0x1c6b0
        0x1e35c
        0x18d20
        0x1c698
        0x18d10
        0x1c68c
        0x18d08
        0x1c686
        0x18d04
        0x10940
        0x184b0
        0x1c25c
        0x11b40
        0x10920
        0x1c6dc
        0x1c24e
        0x11b20
        0x18d98
        0x1c6ce
        0x11b10
        0x10908
        0x18486
        0x11b08
        0x18d86
        0x10902
        0x109b0
        0x184dc
        0x11bb0
        0x10998
        0x184ce
        0x11b98
        0x18dce
        0x11b8c
        0x10986
        0x109dc
        0x11bdc
        0x109ce
        0x11bce
        0x1cea0
        0x1e758
        0x1f3ae
        0x1ce90
        0x1e74c
        0x1ce88
        0x1e746
        0x1ce84
        0x1ce82
        0x18ca0
        0x1c658
        0x19da0
        0x18c90
        0x1c64c
        0x19d90
        0x1cecc
        0x1c646
        0x19d88
        0x18c84
        0x19d84
        0x18c82
        0x19d82
        0x108a0
        0x18458
        0x119a0
        0x10890
        0x1c66e
        0x13ba0
        0x11990
        0x18ccc
        0x18446
        0x13b90
        0x19dcc
        0x10884
        0x13b88
        0x11984
        0x10882
        0x11982
        0x108d8
        0x1846e
        0x119d8
        0x108cc
        0x13bd8
        0x119cc
        0x108c6
        0x13bcc
        0x119c6
        0x108ee
        0x119ee
        0x13bee
        0x1ef50
        0x1f7ac
        0x1ef48
        0x1f7a6
        0x1ef44
        0x1ef42
        0x1ce50
        0x1e72c
        0x1ded0
        0x1ef6c
        0x1e726
        0x1dec8
        0x1ef66
        0x1dec4
        0x1ce42
        0x1dec2
        0x18c50
        0x1c62c
        0x19cd0
        0x18c48
        0x1c626
        0x1bdd0
        0x19cc8
        0x1ce66
        0x1bdc8
        0x1dee6
        0x18c42
        0x1bdc4
        0x19cc2
        0x1bdc2
        0x10850
        0x1842c
        0x118d0
        0x10848
        0x18426
        0x139d0
        0x118c8
        0x18c66
        0x17bd0
        0x139c8
        0x19ce6
        0x10842
        0x17bc8
        0x1bde6
        0x118c2
        0x17bc4
        0x1086c
        0x118ec
        0x10866
        0x139ec
        0x118e6
        0x17bec
        0x139e6
        0x17be6
        0x1ef28
        0x1f796
        0x1ef24
        0x1ef22
        0x1ce28
        0x1e716
        0x1de68
        0x1ef36
        0x1de64
        0x1ce22
        0x1de62
        0x18c28
        0x1c616
        0x19c68
        0x18c24
        0x1bce8
        0x19c64
        0x18c22
        0x1bce4
        0x19c62
        0x1bce2
        0x10828
        0x18416
        0x11868
        0x18c36
        0x138e8
        0x11864
        0x10822
        0x179e8
        0x138e4
        0x11862
        0x179e4
        0x138e2
        0x179e2
        0x11876
        0x179f6
        0x1ef12
        0x1de34
        0x1de32
        0x19c34
        0x1bc74
        0x1bc72
        0x11834
        0x13874
        0x178f4
        0x178f2
        0x10540
        0x10520
        0x18298
        0x10510
        0x10508
        0x10504
        0x105b0
        0x10598
        0x1058c
        0x10586
        0x105dc
        0x105ce
        0x186a0
        0x18690
        0x1c34c
        0x18688
        0x1c346
        0x18684
        0x18682
        0x104a0
        0x18258
        0x10da0
        0x186d8
        0x1824c
        0x10d90
        0x186cc
        0x10d88
        0x186c6
        0x10d84
        0x10482
        0x10d82
        0x104d8
        0x1826e
        0x10dd8
        0x186ee
        0x10dcc
        0x104c6
        0x10dc6
        0x104ee
        0x10dee
        0x1c750
        0x1c748
        0x1c744
        0x1c742
        0x18650
        0x18ed0
        0x1c76c
        0x1c326
        0x18ec8
        0x1c766
        0x18ec4
        0x18642    # 1.39998E-40f
        0x18ec2
        0x10450
        0x10cd0
        0x10448
        0x18226
        0x11dd0
        0x10cc8
        0x10444
        0x11dc8
        0x10cc4
        0x10442
        0x11dc4
        0x10cc2
        0x1046c
        0x10cec
        0x10466
        0x11dec
        0x10ce6
        0x11de6
        0x1e7a8
        0x1e7a4
        0x1e7a2
        0x1c728
        0x1cf68
        0x1e7b6
        0x1cf64
        0x1c722
        0x1cf62
        0x18628
        0x1c316
        0x18e68
        0x1c736
        0x19ee8
        0x18e64
        0x18622
        0x19ee4
        0x18e62
        0x19ee2
        0x10428
        0x18216
        0x10c68
        0x18636
        0x11ce8
        0x10c64
        0x10422
        0x13de8
        0x11ce4
        0x10c62
        0x13de4
        0x11ce2
        0x10436
        0x10c76
        0x11cf6
        0x13df6
        0x1f7d4
        0x1f7d2
        0x1e794
        0x1efb4
        0x1e792
        0x1efb2
        0x1c714
        0x1cf34
        0x1c712
        0x1df74
        0x1cf32
        0x1df72
        0x18614
        0x18e34
        0x18612
        0x19e74
        0x18e32
        0x1bef4
    .end array-data

    :array_1
    .array-data 4
        0x1f560
        0x1fab8
        0x1ea40
        0x1f530
        0x1fa9c
        0x1ea20
        0x1f518
        0x1fa8e
        0x1ea10
        0x1f50c
        0x1ea08
        0x1f506
        0x1ea04
        0x1eb60
        0x1f5b8
        0x1fade
        0x1d640
        0x1eb30
        0x1f59c
        0x1d620
        0x1eb18
        0x1f58e
        0x1d610
        0x1eb0c
        0x1d608
        0x1eb06
        0x1d604
        0x1d760
        0x1ebb8
        0x1f5de
        0x1ae40
        0x1d730
        0x1eb9c
        0x1ae20
        0x1d718
        0x1eb8e
        0x1ae10
        0x1d70c
        0x1ae08
        0x1d706
        0x1ae04
        0x1af60
        0x1d7b8
        0x1ebde
        0x15e40
        0x1af30
        0x1d79c
        0x15e20
        0x1af18
        0x1d78e
        0x15e10
        0x1af0c
        0x15e08
        0x1af06
        0x15f60
        0x1afb8
        0x1d7de
        0x15f30
        0x1af9c
        0x15f18
        0x1af8e
        0x15f0c
        0x15fb8
        0x1afde
        0x15f9c
        0x15f8e
        0x1e940
        0x1f4b0
        0x1fa5c
        0x1e920
        0x1f498
        0x1fa4e
        0x1e910
        0x1f48c
        0x1e908
        0x1f486
        0x1e904
        0x1e902
        0x1d340
        0x1e9b0
        0x1f4dc
        0x1d320
        0x1e998
        0x1f4ce
        0x1d310
        0x1e98c
        0x1d308
        0x1e986
        0x1d304
        0x1d302
        0x1a740
        0x1d3b0
        0x1e9dc
        0x1a720
        0x1d398
        0x1e9ce
        0x1a710
        0x1d38c
        0x1a708
        0x1d386
        0x1a704
        0x1a702
        0x14f40
        0x1a7b0
        0x1d3dc
        0x14f20
        0x1a798
        0x1d3ce
        0x14f10
        0x1a78c
        0x14f08
        0x1a786
        0x14f04
        0x14fb0
        0x1a7dc
        0x14f98
        0x1a7ce
        0x14f8c
        0x14f86
        0x14fdc
        0x14fce
        0x1e8a0
        0x1f458
        0x1fa2e
        0x1e890
        0x1f44c
        0x1e888
        0x1f446
        0x1e884
        0x1e882
        0x1d1a0
        0x1e8d8
        0x1f46e
        0x1d190
        0x1e8cc
        0x1d188
        0x1e8c6
        0x1d184
        0x1d182
        0x1a3a0
        0x1d1d8
        0x1e8ee
        0x1a390
        0x1d1cc
        0x1a388
        0x1d1c6
        0x1a384
        0x1a382
        0x147a0
        0x1a3d8
        0x1d1ee
        0x14790
        0x1a3cc
        0x14788
        0x1a3c6
        0x14784
        0x14782
        0x147d8
        0x1a3ee
        0x147cc
        0x147c6
        0x147ee
        0x1e850
        0x1f42c
        0x1e848
        0x1f426
        0x1e844
        0x1e842
        0x1d0d0
        0x1e86c
        0x1d0c8
        0x1e866
        0x1d0c4
        0x1d0c2
        0x1a1d0
        0x1d0ec
        0x1a1c8
        0x1d0e6
        0x1a1c4
        0x1a1c2
        0x143d0
        0x1a1ec
        0x143c8
        0x1a1e6
        0x143c4
        0x143c2
        0x143ec
        0x143e6
        0x1e828
        0x1f416
        0x1e824
        0x1e822
        0x1d068
        0x1e836
        0x1d064
        0x1d062
        0x1a0e8
        0x1d076
        0x1a0e4
        0x1a0e2
        0x141e8
        0x1a0f6
        0x141e4
        0x141e2
        0x1e814
        0x1e812
        0x1d034
        0x1d032
        0x1a074
        0x1a072
        0x1e540
        0x1f2b0
        0x1f95c
        0x1e520
        0x1f298
        0x1f94e
        0x1e510
        0x1f28c
        0x1e508
        0x1f286
        0x1e504
        0x1e502
        0x1cb40
        0x1e5b0
        0x1f2dc
        0x1cb20
        0x1e598
        0x1f2ce
        0x1cb10
        0x1e58c
        0x1cb08
        0x1e586
        0x1cb04
        0x1cb02
        0x19740
        0x1cbb0
        0x1e5dc
        0x19720
        0x1cb98
        0x1e5ce
        0x19710
        0x1cb8c
        0x19708
        0x1cb86
        0x19704
        0x19702
        0x12f40
        0x197b0
        0x1cbdc
        0x12f20
        0x19798
        0x1cbce
        0x12f10
        0x1978c
        0x12f08
        0x19786
        0x12f04
        0x12fb0
        0x197dc
        0x12f98
        0x197ce
        0x12f8c
        0x12f86
        0x12fdc
        0x12fce
        0x1f6a0
        0x1fb58
        0x16bf0
        0x1f690
        0x1fb4c
        0x169f8
        0x1f688
        0x1fb46
        0x168fc
        0x1f684
        0x1f682
        0x1e4a0
        0x1f258
        0x1f92e
        0x1eda0
        0x1e490
        0x1fb6e
        0x1ed90
        0x1f6cc
        0x1f246
        0x1ed88
        0x1e484
        0x1ed84
        0x1e482
        0x1ed82
        0x1c9a0
        0x1e4d8
        0x1f26e
        0x1dba0
        0x1c990
        0x1e4cc
        0x1db90
        0x1edcc
        0x1e4c6
        0x1db88
        0x1c984
        0x1db84
        0x1c982
        0x1db82
        0x193a0
        0x1c9d8
        0x1e4ee
        0x1b7a0
        0x19390
        0x1c9cc
        0x1b790
        0x1dbcc
        0x1c9c6
        0x1b788
        0x19384
        0x1b784
        0x19382
        0x1b782
        0x127a0
        0x193d8
        0x1c9ee
        0x16fa0
        0x12790
        0x193cc
        0x16f90
        0x1b7cc
        0x193c6
        0x16f88
        0x12784
        0x16f84
        0x12782
        0x127d8
        0x193ee
        0x16fd8
        0x127cc
        0x16fcc
        0x127c6
        0x16fc6
        0x127ee
        0x1f650
        0x1fb2c
        0x165f8
        0x1f648
        0x1fb26
        0x164fc
        0x1f644
        0x1647e
        0x1f642
        0x1e450
        0x1f22c
        0x1ecd0
        0x1e448
        0x1f226
        0x1ecc8
        0x1f666
        0x1ecc4
        0x1e442
        0x1ecc2
        0x1c8d0
        0x1e46c
        0x1d9d0
        0x1c8c8
        0x1e466
        0x1d9c8
        0x1ece6
        0x1d9c4
        0x1c8c2
        0x1d9c2
        0x191d0
        0x1c8ec
        0x1b3d0
        0x191c8
        0x1c8e6
        0x1b3c8
        0x1d9e6    # 1.70003E-40f
        0x1b3c4
        0x191c2
        0x1b3c2
        0x123d0
        0x191ec
        0x167d0
        0x123c8
        0x191e6
        0x167c8
        0x1b3e6
        0x167c4
        0x123c2
        0x167c2
        0x123ec
        0x167ec
        0x123e6
        0x167e6
        0x1f628
        0x1fb16
        0x162fc
        0x1f624
        0x1627e
        0x1f622
        0x1e428
        0x1f216
        0x1ec68
        0x1f636
        0x1ec64
        0x1e422
        0x1ec62
        0x1c868
        0x1e436
        0x1d8e8
        0x1c864
        0x1d8e4
        0x1c862
        0x1d8e2
        0x190e8
        0x1c876
        0x1b1e8
        0x1d8f6
        0x1b1e4
        0x190e2
        0x1b1e2
        0x121e8
        0x190f6
        0x163e8
        0x121e4
        0x163e4
        0x121e2
        0x163e2
        0x121f6
        0x163f6
        0x1f614
        0x1617e
        0x1f612
        0x1e414
        0x1ec34
        0x1e412
        0x1ec32
        0x1c834
        0x1d874
        0x1c832
        0x1d872
        0x19074
        0x1b0f4
        0x19072
        0x1b0f2
        0x120f4
        0x161f4
        0x120f2
        0x161f2
        0x1f60a
        0x1e40a
        0x1ec1a
        0x1c81a
        0x1d83a
        0x1903a
        0x1b07a
        0x1e2a0
        0x1f158
        0x1f8ae
        0x1e290
        0x1f14c
        0x1e288
        0x1f146
        0x1e284
        0x1e282
        0x1c5a0
        0x1e2d8
        0x1f16e
        0x1c590
        0x1e2cc
        0x1c588
        0x1e2c6
        0x1c584
        0x1c582
        0x18ba0
        0x1c5d8
        0x1e2ee
        0x18b90
        0x1c5cc
        0x18b88
        0x1c5c6
        0x18b84
        0x18b82
        0x117a0
        0x18bd8
        0x1c5ee
        0x11790
        0x18bcc
        0x11788
        0x18bc6
        0x11784
        0x11782
        0x117d8
        0x18bee
        0x117cc
        0x117c6
        0x117ee
        0x1f350
        0x1f9ac
        0x135f8
        0x1f348
        0x1f9a6
        0x134fc
        0x1f344
        0x1347e
        0x1f342
        0x1e250
        0x1f12c
        0x1e6d0
        0x1e248
        0x1f126
        0x1e6c8
        0x1f366
        0x1e6c4
        0x1e242
        0x1e6c2
        0x1c4d0
        0x1e26c
        0x1cdd0
        0x1c4c8
        0x1e266
        0x1cdc8
        0x1e6e6
        0x1cdc4
        0x1c4c2
        0x1cdc2
        0x189d0
        0x1c4ec
        0x19bd0
        0x189c8
        0x1c4e6
        0x19bc8
        0x1cde6
        0x19bc4
        0x189c2
        0x19bc2
        0x113d0
        0x189ec
        0x137d0
        0x113c8
        0x189e6
        0x137c8
        0x19be6
        0x137c4
        0x113c2
        0x137c2
        0x113ec
        0x137ec
        0x113e6
        0x137e6
        0x1fba8
        0x175f0
        0x1bafc
        0x1fba4
        0x174f8
        0x1ba7e
        0x1fba2
        0x1747c
        0x1743e
        0x1f328
        0x1f996
        0x132fc
        0x1f768
        0x1fbb6
        0x176fc
        0x1327e
        0x1f764
        0x1f322
        0x1767e
        0x1f762
        0x1e228
        0x1f116
        0x1e668
        0x1e224
        0x1eee8
        0x1f776
        0x1e222
        0x1eee4
        0x1e662
        0x1eee2
        0x1c468
        0x1e236
        0x1cce8
        0x1c464
        0x1dde8
        0x1cce4
        0x1c462
        0x1dde4
        0x1cce2
        0x1dde2
        0x188e8
        0x1c476
        0x199e8
        0x188e4
        0x1bbe8
        0x199e4
        0x188e2
        0x1bbe4
        0x199e2
        0x1bbe2
        0x111e8
        0x188f6
        0x133e8
        0x111e4
        0x177e8
        0x133e4
        0x111e2
        0x177e4
        0x133e2
        0x177e2
        0x111f6
        0x133f6
        0x1fb94
        0x172f8
        0x1b97e
        0x1fb92
        0x1727c
        0x1723e
        0x1f314
        0x1317e
        0x1f734
        0x1f312
        0x1737e
        0x1f732
        0x1e214
        0x1e634
        0x1e212
        0x1ee74
        0x1e632
        0x1ee72
        0x1c434
        0x1cc74
        0x1c432
        0x1dcf4
        0x1cc72
        0x1dcf2
        0x18874
        0x198f4
        0x18872
        0x1b9f4
        0x198f2
        0x1b9f2
        0x110f4
        0x131f4
        0x110f2
        0x173f4
        0x131f2
        0x173f2
        0x1fb8a
        0x1717c
        0x1713e
        0x1f30a
        0x1f71a
        0x1e20a
        0x1e61a
        0x1ee3a
        0x1c41a
        0x1cc3a
        0x1dc7a
        0x1883a
        0x1987a
        0x1b8fa
        0x1107a
        0x130fa
        0x171fa
        0x170be
        0x1e150
        0x1f0ac
        0x1e148
        0x1f0a6
        0x1e144
        0x1e142
        0x1c2d0
        0x1e16c
        0x1c2c8
        0x1e166
        0x1c2c4
        0x1c2c2
        0x185d0
        0x1c2ec
        0x185c8
        0x1c2e6
        0x185c4
        0x185c2
        0x10bd0
        0x185ec
        0x10bc8
        0x185e6
        0x10bc4
        0x10bc2
        0x10bec
        0x10be6
        0x1f1a8
        0x1f8d6
        0x11afc
        0x1f1a4
        0x11a7e
        0x1f1a2
        0x1e128
        0x1f096
        0x1e368
        0x1e124
        0x1e364
        0x1e122
        0x1e362
        0x1c268
        0x1e136
        0x1c6e8
        0x1c264
        0x1c6e4
        0x1c262
        0x1c6e2
        0x184e8
        0x1c276
        0x18de8
        0x184e4
        0x18de4
        0x184e2
        0x18de2
        0x109e8
        0x184f6
        0x11be8
        0x109e4
        0x11be4
        0x109e2
        0x11be2
        0x109f6
        0x11bf6
        0x1f9d4
        0x13af8
        0x19d7e
        0x1f9d2
        0x13a7c
        0x13a3e
        0x1f194
        0x1197e
        0x1f3b4
        0x1f192
        0x13b7e
        0x1f3b2
        0x1e114
        0x1e334
        0x1e112
        0x1e774
        0x1e332
        0x1e772
        0x1c234
        0x1c674
        0x1c232
        0x1cef4
        0x1c672
        0x1cef2
        0x18474
        0x18cf4
        0x18472
        0x19df4
        0x18cf2
        0x19df2
        0x108f4
        0x119f4
        0x108f2
        0x13bf4
        0x119f2
        0x13bf2
        0x17af0
        0x1bd7c
        0x17a78
        0x1bd3e
        0x17a3c
        0x17a1e
        0x1f9ca
        0x1397c
        0x1fbda
        0x17b7c
        0x1393e
        0x17b3e
        0x1f18a
        0x1f39a
        0x1f7ba
        0x1e10a
        0x1e31a
        0x1e73a
        0x1ef7a
        0x1c21a
        0x1c63a
        0x1ce7a
        0x1defa
        0x1843a
        0x18c7a
        0x19cfa
        0x1bdfa
        0x1087a
        0x118fa
        0x139fa
        0x17978
        0x1bcbe
        0x1793c
        0x1791e
        0x138be
        0x179be
        0x178bc
        0x1789e
        0x1785e
        0x1e0a8
        0x1e0a4
        0x1e0a2
        0x1c168
        0x1e0b6
        0x1c164
        0x1c162
        0x182e8
        0x1c176
        0x182e4
        0x182e2
        0x105e8
        0x182f6
        0x105e4
        0x105e2
        0x105f6
        0x1f0d4
        0x10d7e
        0x1f0d2
        0x1e094
        0x1e1b4
        0x1e092
        0x1e1b2
        0x1c134
        0x1c374
        0x1c132
        0x1c372
        0x18274
        0x186f4
        0x18272
        0x186f2
        0x104f4
        0x10df4
        0x104f2
        0x10df2
        0x1f8ea
        0x11d7c
        0x11d3e
        0x1f0ca
        0x1f1da
        0x1e08a
        0x1e19a
        0x1e3ba
        0x1c11a
        0x1c33a
        0x1c77a
        0x1823a
        0x1867a
        0x18efa
        0x1047a
        0x10cfa
        0x11dfa
        0x13d78
        0x19ebe
        0x13d3c
        0x13d1e
        0x11cbe
        0x13dbe
        0x17d70
        0x1bebc
        0x17d38
        0x1be9e
        0x17d1c
        0x17d0e
        0x13cbc
        0x17dbc
        0x13c9e
        0x17d9e
        0x17cb8
        0x1be5e
        0x17c9c
        0x17c8e
        0x13c5e
        0x17cde
        0x17c5c
        0x17c4e
        0x17c2e
        0x1c0b4
        0x1c0b2
        0x18174
        0x18172
        0x102f4
        0x102f2
        0x1e0da
        0x1c09a
        0x1c1ba
        0x1813a
        0x1837a
        0x1027a
        0x106fa
        0x10ebe
        0x11ebc
        0x11e9e
        0x13eb8
        0x19f5e
        0x13e9c
        0x13e8e
        0x11e5e
        0x13ede
        0x17eb0
        0x1bf5c
        0x17e98
        0x1bf4e
        0x17e8c
        0x17e86
        0x13e5c
        0x17edc
        0x13e4e
        0x17ece
        0x17e58
        0x1bf2e
        0x17e4c
        0x17e46
        0x13e2e
        0x17e6e
        0x17e2c
        0x17e26
        0x10f5e
        0x11f5c
        0x11f4e
        0x13f58
        0x19fae
        0x13f4c
        0x13f46
        0x11f2e
        0x13f6e
        0x13f2c
        0x13f26
    .end array-data

    :array_2
    .array-data 4
        0x1abe0
        0x1d5f8
        0x153c0
        0x1a9f0
        0x1d4fc
        0x151e0
        0x1a8f8
        0x1d47e
        0x150f0
        0x1a87c
        0x15078
        0x1fad0
        0x15be0
        0x1adf8
        0x1fac8
        0x159f0
        0x1acfc
        0x1fac4
        0x158f8
        0x1ac7e
        0x1fac2
        0x1587c
        0x1f5d0
        0x1faec
        0x15df8
        0x1f5c8    # 1.80005E-40f
        0x1fae6
        0x15cfc
        0x1f5c4    # 1.8E-40f
        0x15c7e
        0x1f5c2    # 1.79997E-40f
        0x1ebd0
        0x1f5ec
        0x1ebc8
        0x1f5e6
        0x1ebc4
        0x1ebc2
        0x1d7d0
        0x1ebec
        0x1d7c8
        0x1ebe6
        0x1d7c4
        0x1d7c2
        0x1afd0
        0x1d7ec
        0x1afc8
        0x1d7e6
        0x1afc4
        0x14bc0
        0x1a5f0
        0x1d2fc
        0x149e0
        0x1a4f8
        0x1d27e
        0x148f0
        0x1a47c
        0x14878
        0x1a43e
        0x1483c
        0x1fa68
        0x14df0
        0x1a6fc
        0x1fa64
        0x14cf8
        0x1a67e
        0x1fa62
        0x14c7c
        0x14c3e
        0x1f4e8
        0x1fa76
        0x14efc
        0x1f4e4
        0x14e7e
        0x1f4e2
        0x1e9e8
        0x1f4f6
        0x1e9e4
        0x1e9e2
        0x1d3e8
        0x1e9f6
        0x1d3e4
        0x1d3e2
        0x1a7e8
        0x1d3f6
        0x1a7e4
        0x1a7e2
        0x145e0
        0x1a2f8
        0x1d17e
        0x144f0
        0x1a27c
        0x14478
        0x1a23e
        0x1443c
        0x1441e
        0x1fa34
        0x146f8
        0x1a37e
        0x1fa32
        0x1467c
        0x1463e
        0x1f474
        0x1477e
        0x1f472
        0x1e8f4
        0x1e8f2
        0x1d1f4
        0x1d1f2
        0x1a3f4
        0x1a3f2
        0x142f0
        0x1a17c
        0x14278
        0x1a13e
        0x1423c
        0x1421e
        0x1fa1a
        0x1437c
        0x1433e
        0x1f43a
        0x1e87a
        0x1d0fa
        0x14178
        0x1a0be
        0x1413c
        0x1411e
        0x141be
        0x140bc
        0x1409e
        0x12bc0
        0x195f0
        0x1cafc
        0x129e0
        0x194f8
        0x1ca7e
        0x128f0
        0x1947c
        0x12878
        0x1943e
        0x1283c
        0x1f968
        0x12df0
        0x196fc
        0x1f964
        0x12cf8
        0x1967e
        0x1f962
        0x12c7c
        0x12c3e
        0x1f2e8
        0x1f976
        0x12efc
        0x1f2e4
        0x12e7e
        0x1f2e2
        0x1e5e8
        0x1f2f6
        0x1e5e4
        0x1e5e2
        0x1cbe8
        0x1e5f6
        0x1cbe4
        0x1cbe2
        0x197e8
        0x1cbf6
        0x197e4
        0x197e2
        0x1b5e0
        0x1daf8
        0x1ed7e
        0x169c0
        0x1b4f0
        0x1da7c
        0x168e0
        0x1b478
        0x1da3e
        0x16870
        0x1b43c
        0x16838
        0x1b41e
        0x1681c
        0x125e0
        0x192f8
        0x1c97e
        0x16de0
        0x124f0
        0x1927c
        0x16cf0
        0x1b67c
        0x1923e
        0x16c78
        0x1243c
        0x16c3c
        0x1241e
        0x16c1e
        0x1f934
        0x126f8
        0x1937e
        0x1fb74
        0x1f932
        0x16ef8
        0x1267c
        0x1fb72
        0x16e7c
        0x1263e
        0x16e3e
        0x1f274
        0x1277e
        0x1f6f4
        0x1f272
        0x16f7e
        0x1f6f2
        0x1e4f4
        0x1edf4
        0x1e4f2
        0x1edf2
        0x1c9f4
        0x1dbf4
        0x1c9f2
        0x1dbf2
        0x193f4
        0x193f2
        0x165c0
        0x1b2f0
        0x1d97c
        0x164e0
        0x1b278
        0x1d93e
        0x16470
        0x1b23c
        0x16438
        0x1b21e
        0x1641c
        0x1640e
        0x122f0
        0x1917c
        0x166f0
        0x12278
        0x1913e
        0x16678
        0x1b33e
        0x1663c
        0x1221e
        0x1661e
        0x1f91a
        0x1237c
        0x1fb3a
        0x1677c
        0x1233e
        0x1673e
        0x1f23a
        0x1f67a
        0x1e47a
        0x1ecfa
        0x1c8fa
        0x1d9fa
        0x191fa
        0x162e0
        0x1b178
        0x1d8be
        0x16270
        0x1b13c
        0x16238
        0x1b11e
        0x1621c
        0x1620e
        0x12178
        0x190be
        0x16378
        0x1213c
        0x1633c
        0x1211e
        0x1631e
        0x121be
        0x163be
        0x16170
        0x1b0bc
        0x16138
        0x1b09e
        0x1611c
        0x1610e
        0x120bc
        0x161bc
        0x1209e
        0x1619e
        0x160b8
        0x1b05e
        0x1609c
        0x1608e
        0x1205e
        0x160de
        0x1605c
        0x1604e
        0x115e0
        0x18af8
        0x1c57e
        0x114f0
        0x18a7c
        0x11478
        0x18a3e
        0x1143c
        0x1141e
        0x1f8b4
        0x116f8    # 1.00075E-40f
        0x18b7e
        0x1f8b2
        0x1167c
        0x1163e
        0x1f174
        0x1177e
        0x1f172
        0x1e2f4
        0x1e2f2
        0x1c5f4
        0x1c5f2
        0x18bf4
        0x18bf2
        0x135c0
        0x19af0
        0x1cd7c
        0x134e0
        0x19a78
        0x1cd3e
        0x13470
        0x19a3c
        0x13438
        0x19a1e
        0x1341c
        0x1340e
        0x112f0
        0x1897c
        0x136f0
        0x11278
        0x1893e
        0x13678
        0x19b3e
        0x1363c
        0x1121e
        0x1361e
        0x1f89a
        0x1137c
        0x1f9ba
        0x1377c
        0x1133e
        0x1373e
        0x1f13a
        0x1f37a
        0x1e27a
        0x1e6fa
        0x1c4fa
        0x1cdfa
        0x189fa
        0x1bae0
        0x1dd78
        0x1eebe
        0x174c0
        0x1ba70
        0x1dd3c
        0x17460
        0x1ba38
        0x1dd1e
        0x17430
        0x1ba1c
        0x17418
        0x1ba0e
        0x1740c
        0x132e0
        0x19978
        0x1ccbe
        0x176e0
        0x13270
        0x1993c
        0x17670
        0x1bb3c
        0x1991e
        0x17638
        0x1321c
        0x1761c
        0x1320e
        0x1760e
        0x11178
        0x188be
        0x13378
        0x1113c
        0x17778
        0x1333c
        0x1111e
        0x1773c
        0x1331e
        0x1771e
        0x111be
        0x133be
        0x177be
        0x172c0
        0x1b970
        0x1dcbc
        0x17260
        0x1b938
        0x1dc9e
        0x17230
        0x1b91c
        0x17218
        0x1b90e
        0x1720c
        0x17206
        0x13170
        0x198bc
        0x17370
        0x13138
        0x1989e
        0x17338
        0x1b99e
        0x1731c
        0x1310e
        0x1730e
        0x110bc
        0x131bc
        0x1109e
        0x173bc
        0x1319e
        0x1739e
        0x17160
        0x1b8b8
        0x1dc5e
        0x17130
        0x1b89c
        0x17118
        0x1b88e
        0x1710c
        0x17106
        0x130b8
        0x1985e
        0x171b8
        0x1309c
        0x1719c
        0x1308e
        0x1718e
        0x1105e
        0x130de
        0x171de
        0x170b0
        0x1b85c
        0x17098
        0x1b84e
        0x1708c
        0x17086
        0x1305c
        0x170dc
        0x1304e
        0x170ce
        0x17058
        0x1b82e
        0x1704c
        0x17046
        0x1302e
        0x1706e
        0x1702c
        0x17026
        0x10af0
        0x1857c
        0x10a78
        0x1853e
        0x10a3c
        0x10a1e
        0x10b7c
        0x10b3e
        0x1f0ba
        0x1e17a
        0x1c2fa
        0x185fa
        0x11ae0
        0x18d78
        0x1c6be
        0x11a70
        0x18d3c
        0x11a38
        0x18d1e
        0x11a1c
        0x11a0e
        0x10978
        0x184be
        0x11b78
        0x1093c
        0x11b3c
        0x1091e
        0x11b1e
        0x109be
        0x11bbe
        0x13ac0
        0x19d70
        0x1cebc
        0x13a60
        0x19d38
        0x1ce9e
        0x13a30
        0x19d1c
        0x13a18
        0x19d0e
        0x13a0c
        0x13a06
        0x11970
        0x18cbc
        0x13b70
        0x11938
        0x18c9e
        0x13b38
        0x1191c
        0x13b1c
        0x1190e
        0x13b0e
        0x108bc
        0x119bc
        0x1089e
        0x13bbc
        0x1199e
        0x13b9e
        0x1bd60
        0x1deb8
        0x1ef5e
        0x17a40
        0x1bd30
        0x1de9c
        0x17a20
        0x1bd18
        0x1de8e
        0x17a10
        0x1bd0c
        0x17a08
        0x1bd06
        0x17a04
        0x13960
        0x19cb8
        0x1ce5e
        0x17b60
        0x13930
        0x19c9c
        0x17b30
        0x1bd9c
        0x19c8e
        0x17b18
        0x1390c
        0x17b0c
        0x13906
        0x17b06
        0x118b8
        0x18c5e
        0x139b8
        0x1189c
        0x17bb8
        0x1399c
        0x1188e
        0x17b9c
        0x1398e
        0x17b8e
        0x1085e
        0x118de
        0x139de
        0x17bde
        0x17940
        0x1bcb0
        0x1de5c
        0x17920
        0x1bc98
        0x1de4e
        0x17910
        0x1bc8c
        0x17908
        0x1bc86
        0x17904
        0x17902
        0x138b0
        0x19c5c
        0x179b0
        0x13898
        0x19c4e
        0x17998
        0x1bcce
        0x1798c
        0x13886
        0x17986
        0x1185c
        0x138dc
        0x1184e
        0x179dc
        0x138ce
        0x179ce
        0x178a0
        0x1bc58
        0x1de2e
        0x17890
        0x1bc4c
        0x17888
        0x1bc46
        0x17884
        0x17882
        0x13858
        0x19c2e
        0x178d8
        0x1384c
        0x178cc
        0x13846
        0x178c6
        0x1182e
        0x1386e
        0x178ee
        0x17850
        0x1bc2c
        0x17848
        0x1bc26
        0x17844
        0x17842
        0x1382c
        0x1786c
        0x13826
        0x17866
        0x17828
        0x1bc16
        0x17824
        0x17822
        0x13816
        0x17836
        0x10578
        0x182be
        0x1053c
        0x1051e
        0x105be
        0x10d70
        0x186bc
        0x10d38
        0x1869e
        0x10d1c
        0x10d0e
        0x104bc
        0x10dbc
        0x1049e
        0x10d9e
        0x11d60
        0x18eb8
        0x1c75e
        0x11d30
        0x18e9c
        0x11d18
        0x18e8e
        0x11d0c
        0x11d06
        0x10cb8
        0x1865e
        0x11db8
        0x10c9c
        0x11d9c
        0x10c8e
        0x11d8e
        0x1045e
        0x10cde
        0x11dde
        0x13d40
        0x19eb0
        0x1cf5c
        0x13d20
        0x19e98
        0x1cf4e
        0x13d10
        0x19e8c
        0x13d08
        0x19e86
        0x13d04
        0x13d02
        0x11cb0
        0x18e5c
        0x13db0
        0x11c98
        0x18e4e
        0x13d98
        0x19ece
        0x13d8c
        0x11c86
        0x13d86
        0x10c5c
        0x11cdc
        0x10c4e
        0x13ddc
        0x11cce
        0x13dce
        0x1bea0
        0x1df58
        0x1efae
        0x1be90
        0x1df4c
        0x1be88
        0x1df46
        0x1be84
        0x1be82
        0x13ca0
        0x19e58
        0x1cf2e
        0x17da0
        0x13c90
        0x19e4c
        0x17d90
        0x1becc
        0x19e46
        0x17d88
        0x13c84
        0x17d84
        0x13c82
        0x17d82
        0x11c58
        0x18e2e
        0x13cd8
        0x11c4c
        0x17dd8
        0x13ccc
        0x11c46
        0x17dcc
        0x13cc6
        0x17dc6
        0x10c2e
        0x11c6e
        0x13cee
        0x17dee
        0x1be50
        0x1df2c
        0x1be48
        0x1df26
        0x1be44
        0x1be42
        0x13c50
        0x19e2c
        0x17cd0
        0x13c48
        0x19e26
        0x17cc8
        0x1be66
        0x17cc4
        0x13c42
        0x17cc2
        0x11c2c
        0x13c6c
        0x11c26
        0x17cec
        0x13c66
        0x17ce6
        0x1be28
        0x1df16
        0x1be24
        0x1be22
        0x13c28
        0x19e16
        0x17c68
        0x13c24
        0x17c64
        0x13c22
        0x17c62
        0x11c16
        0x13c36
        0x17c76
        0x1be14
        0x1be12
        0x13c14
        0x17c34
        0x13c12
        0x17c32
        0x102bc
        0x1029e
        0x106b8
        0x1835e
        0x1069c
        0x1068e
        0x1025e
        0x106de
        0x10eb0
        0x1875c
        0x10e98
        0x1874e
        0x10e8c
        0x10e86
        0x1065c
        0x10edc
        0x1064e
        0x10ece
        0x11ea0
        0x18f58
        0x1c7ae
        0x11e90
        0x18f4c
        0x11e88
        0x18f46
        0x11e84
        0x11e82
        0x10e58
        0x1872e
        0x11ed8
        0x18f6e
        0x11ecc
        0x10e46
        0x11ec6
        0x1062e
        0x10e6e
        0x11eee
        0x19f50
        0x1cfac
        0x19f48
        0x1cfa6
        0x19f44
        0x19f42
        0x11e50
        0x18f2c
        0x13ed0
        0x19f6c
        0x18f26
        0x13ec8
        0x11e44
        0x13ec4
        0x11e42
        0x13ec2
        0x10e2c
        0x11e6c
        0x10e26
        0x13eec
        0x11e66
        0x13ee6
        0x1dfa8
        0x1efd6
        0x1dfa4
        0x1dfa2
        0x19f28
        0x1cf96
        0x1bf68
        0x19f24
        0x1bf64
        0x19f22
        0x1bf62
        0x11e28
        0x18f16
        0x13e68
        0x11e24
        0x17ee8
        0x13e64
        0x11e22
        0x17ee4
        0x13e62
        0x17ee2
        0x10e16
        0x11e36
        0x13e76
        0x17ef6
        0x1df94
        0x1df92
        0x19f14
        0x1bf34
        0x19f12
        0x1bf32
        0x11e14
        0x13e34
        0x11e12
        0x17e74
        0x13e32
        0x17e72
        0x1df8a
        0x19f0a
        0x1bf1a
        0x11e0a
        0x13e1a
        0x17e3a
        0x1035c
        0x1034e
        0x10758
        0x183ae
        0x1074c
        0x10746
        0x1032e
        0x1076e
        0x10f50
        0x187ac
        0x10f48
        0x187a6
        0x10f44
        0x10f42
        0x1072c
        0x10f6c
        0x10726
        0x10f66
        0x18fa8
        0x1c7d6
        0x18fa4
        0x18fa2
        0x10f28
        0x18796
        0x11f68
        0x18fb6
        0x11f64
        0x10f22
        0x11f62
        0x10716
        0x10f36
        0x11f76
        0x1cfd4
        0x1cfd2
        0x18f94
        0x19fb4
        0x18f92
        0x19fb2
        0x10f14
        0x11f34
        0x10f12
        0x13f74
        0x11f32
        0x13f72
        0x1cfca
        0x18f8a
        0x19f9a
        0x10f0a
        0x11f1a
        0x13f3a
        0x103ac
        0x103a6
        0x107a8
        0x183d6
        0x107a4
        0x107a2
        0x10396
        0x107b6
        0x187d4
        0x187d2
        0x10794
        0x10fb4
        0x10792
        0x10fb2
        0x1c7ea
    .end array-data

    :array_3
    .array-data 4
        0x1b
        0x395
    .end array-data

    :array_4
    .array-data 4
        0x20a
        0x238
        0x2d3
        0x329
    .end array-data

    :array_5
    .array-data 4
        0xed
        0x134
        0x1b4
        0x11c
        0x286
        0x28d
        0x1ac
        0x17b
    .end array-data

    :array_6
    .array-data 4
        0x112
        0x232
        0xe8
        0x2f3
        0x257
        0x20c
        0x321
        0x84
        0x127
        0x74
        0x1ba
        0x1ac
        0x127
        0x2a
        0xb0
        0x41
    .end array-data

    :array_7
    .array-data 4
        0x169
        0x23f
        0x39a
        0x20d
        0xb0
        0x24a
        0x280
        0x141
        0x218
        0x2e6
        0x2a5
        0x2e6
        0x2af
        0x11c
        0xc1
        0x205
        0x111
        0x1ee
        0x107
        0x93
        0x251
        0x320
        0x23b
        0x140
        0x323
        0x85
        0xe7
        0x186
        0x2ad
        0x14a
        0x3f
        0x19a
    .end array-data

    :array_8
    .array-data 4
        0x21b
        0x1a6
        0x6
        0x5d
        0x35e
        0x303
        0x1c5
        0x6a
        0x262
        0x11f
        0x6b
        0x1f9
        0x2dd
        0x36d
        0x17d
        0x264
        0x2d3
        0x1dc
        0x1ce
        0xac
        0x1ae
        0x261
        0x35a
        0x336
        0x21f
        0x178
        0x1ff
        0x190
        0x2a0
        0x2fa
        0x11b
        0xb8
        0x1b8
        0x23
        0x207
        0x1f
        0x1cc
        0x252
        0xe1
        0x217
        0x205
        0x160
        0x25d
        0x9e
        0x28b
        0xc9
        0x1e8
        0x1f6
        0x288
        0x2dd
        0x2cd
        0x53
        0x194
        0x61
        0x118
        0x303
        0x348
        0x275
        0x4
        0x17d
        0x34b
        0x26f
        0x108
        0x21f
    .end array-data

    :array_9
    .array-data 4
        0x209
        0x136
        0x360
        0x223
        0x35a
        0x244
        0x128
        0x17b
        0x35
        0x30b
        0x381
        0x1bc
        0x190
        0x39d
        0x2ed
        0x19f
        0x336
        0x5d
        0xd9
        0xd0
        0x3a0
        0xf4
        0x247
        0x26c
        0xf6
        0x94
        0x1bf
        0x277
        0x124
        0x38c
        0x1ea
        0x2c0
        0x204
        0x102
        0x1c9
        0x38b
        0x252
        0x2d3
        0x2a2
        0x124
        0x110
        0x60
        0x2ac
        0x1b0
        0x2ae
        0x25e
        0x35c
        0x239
        0xc1
        0xdb
        0x81
        0xba
        0xec
        0x11f
        0xc0
        0x307
        0x116
        0xad
        0x28
        0x17b
        0x2c8
        0x1cf
        0x286
        0x308
        0xab
        0x1eb
        0x129
        0x2fb
        0x9c
        0x2dc
        0x5f
        0x10e
        0x1bf
        0x5a
        0x1fb
        0x30
        0xe4
        0x335
        0x328
        0x382
        0x310
        0x297
        0x273
        0x17a
        0x17e
        0x106
        0x17c
        0x25a
        0x2f2
        0x150
        0x59
        0x266
        0x57
        0x1b0
        0x29e
        0x268
        0x9d
        0x176
        0xf2
        0x2d6
        0x258
        0x10d
        0x177
        0x382
        0x34d
        0x1c6
        0x162
        0x82
        0x32e
        0x24b
        0x324
        0x22
        0xd3
        0x14a
        0x21b
        0x129
        0x33b
        0x361
        0x25
        0x205
        0x342
        0x13b
        0x226
        0x56
        0x321
        0x4
        0x6c
        0x21b
    .end array-data

    :array_a
    .array-data 4
        0x20c
        0x37e
        0x4b
        0x2fe
        0x372
        0x359
        0x4a
        0xcc
        0x52
        0x24a
        0x2c4
        0xfa
        0x389
        0x312
        0x8a
        0x2d0
        0x35a
        0xc2
        0x137
        0x391
        0x113
        0xbe
        0x177
        0x352
        0x1b6
        0x2dd
        0xc2
        0x118
        0xc9
        0x118
        0x33c
        0x2f5
        0x2c6
        0x32e
        0x397
        0x59
        0x44
        0x239
        0xb
        0xcc
        0x31c
        0x25d
        0x21c
        0x391
        0x321
        0x2bc
        0x31f
        0x89
        0x1b7
        0x1a2
        0x250
        0x29c
        0x161
        0x35b
        0x172
        0x2b6
        0x145
        0xf0
        0xd8
        0x101
        0x11c
        0x225
        0xd1
        0x374
        0x13b
        0x46
        0x149
        0x319
        0x1ea
        0x112
        0x36d
        0xa2
        0x2ed
        0x32c
        0x2ac
        0x1cd
        0x14e
        0x178
        0x351
        0x209
        0x133
        0x123
        0x323
        0x2c8
        0x13
        0x166
        0x18f
        0x38c
        0x67
        0x1ff
        0x33
        0x8
        0x205
        0xe1
        0x121
        0x1d6
        0x27d
        0x2db
        0x42
        0xff
        0x395
        0x10d
        0x1cf
        0x33e
        0x2da
        0x1b1
        0x350
        0x249
        0x88
        0x21a
        0x38a
        0x5a
        0x2
        0x122
        0x2e7
        0xc7
        0x28f
        0x387
        0x149
        0x31
        0x322
        0x244
        0x163
        0x24c
        0xbc
        0x1ce
        0xa
        0x86
        0x274
        0x140
        0x1df
        0x82
        0x2e3
        0x47
        0x107
        0x13e
        0x176
        0x259
        0xc0
        0x25d
        0x8e
        0x2a1
        0x2af
        0xea
        0x2d2
        0x180
        0xb1
        0x2f0
        0x25f
        0x280
        0x1c7
        0xc1
        0x2b1
        0x2c3
        0x325
        0x281
        0x30
        0x3c
        0x2dc
        0x26d
        0x37f
        0x220
        0x105
        0x354
        0x28f
        0x135
        0x2b9
        0x2f3
        0x2f4
        0x3c
        0xe7
        0x305
        0x1b2
        0x1a5
        0x2d6
        0x210
        0x1f7
        0x76
        0x31
        0x31b
        0x20
        0x90
        0x1f4
        0xee
        0x344
        0x18a
        0x118
        0x236
        0x13f
        0x9
        0x287
        0x226
        0x49
        0x392
        0x156
        0x7e
        0x20
        0x2a9
        0x14b
        0x318
        0x26c
        0x3c
        0x261
        0x1b9
        0xb4
        0x317
        0x37d
        0x2f2
        0x25d
        0x17f
        0xe4
        0x2ed
        0x2f8
        0xd5
        0x36
        0x129
        0x86
        0x36
        0x342
        0x12b
        0x39a
        0xbf
        0x38e
        0x214
        0x261
        0x33d
        0xbd
        0x14
        0xa7
        0x1d
        0x368
        0x1c1
        0x53
        0x192
        0x29
        0x290
        0x1f9
        0x243
        0x1e1
        0xad
        0x194
        0xfb
        0x2b0
        0x5f
        0x1f1
        0x22b
        0x282
        0x21f
        0x133
        0x9f
        0x39c
        0x22e
        0x288
        0x37
        0x1f1
        0xa
    .end array-data

    :array_b
    .array-data 4
        0x160
        0x4d
        0x175
        0x1f8
        0x23
        0x257
        0x1ac
        0xcf
        0x199
        0x23e
        0x76
        0x1f2
        0x11d
        0x17c
        0x15e
        0x1ec
        0xc5
        0x109
        0x398
        0x9b
        0x392
        0x12b
        0xe5
        0x283
        0x126
        0x367
        0x132
        0x58
        0x57
        0xc1
        0x160
        0x30d
        0x34e
        0x4b
        0x147
        0x208
        0x1b3
        0x21f
        0xcb
        0x29a
        0xf9
        0x15a
        0x30d
        0x26d
        0x280
        0x10c
        0x31a
        0x216
        0x21b
        0x30d
        0x198
        0x186
        0x284
        0x66
        0x1dc
        0x1f3
        0x122
        0x278
        0x221
        0x25
        0x35a
        0x394
        0x228
        0x29
        0x21e
        0x121
        0x7a
        0x110
        0x17f
        0x320
        0x1e5
        0x62
        0x2f0
        0x1d8
        0x2f9
        0x6b
        0x310
        0x35c
        0x292
        0x2e5
        0x122
        0xcc
        0x2a9
        0x197
        0x357
        0x55
        0x63
        0x3e
        0x1e2
        0xb4
        0x14
        0x129
        0x1c3
        0x251
        0x391
        0x8e
        0x328
        0x2ac
        0x11f
        0x218
        0x231
        0x4c
        0x28d
        0x383
        0x2d9
        0x237
        0x2e8
        0x186
        0x201
        0xc0
        0x204
        0x102
        0xf0
        0x206
        0x31a
        0x18b
        0x300
        0x350
        0x33
        0x262
        0x180
        0xa8
        0xbe
        0x33a
        0x148
        0x254
        0x312
        0x12f
        0x23a
        0x17d
        0x19f
        0x281
        0x9c
        0xed
        0x97
        0x1ad
        0x213
        0xcf
        0x2a4
        0x2c6
        0x59
        0xa8
        0x130
        0x192
        0x28
        0x2c4
        0x23f
        0xa2
        0x360
        0xe5
        0x41
        0x35d
        0x349
        0x200
        0xa4
        0x1dd
        0xdd
        0x5c
        0x166
        0x311
        0x120
        0x165
        0x352
        0x344
        0x33b
        0x2e0
        0x2c3
        0x5e
        0x8
        0x1ee
        0x72
        0x209
        0x2
        0x1f3
        0x353
        0x21f
        0x98
        0x2d9
        0x303
        0x5f
        0xf8
        0x169
        0x242
        0x143
        0x358
        0x31d
        0x121
        0x33
        0x2ac
        0x1d2
        0x215
        0x334
        0x29d
        0x2d
        0x386
        0x1c4
        0xa7
        0x156
        0xf4
        0xad
        0x23
        0x1cf
        0x28b
        0x33
        0x2bb
        0x24f
        0x1c4
        0x242
        0x25
        0x7c
        0x12a
        0x14c
        0x228
        0x2b
        0x1ab
        0x77
        0x296
        0x309
        0x1db
        0x352
        0x2fc
        0x16c
        0x242
        0x38f
        0x11b
        0x2c7
        0x1d8
        0x1a4
        0xf5
        0x120
        0x252
        0x18a
        0x1ff
        0x147
        0x24d
        0x309
        0x2bb
        0x2b0
        0x2b
        0x198
        0x34a
        0x17f
        0x2d1
        0x209
        0x230
        0x284
        0x2ca
        0x22f
        0x3e
        0x91
        0x369
        0x297
        0x2c9
        0x9f
        0x2a0
        0x2d9
        0x270
        0x3b
        0xc1
        0x1a1
        0x9e
        0xd1
        0x233
        0x234
        0x157
        0x2b5
        0x6d
        0x260
        0x233
        0x16d
        0xb5
        0x304
        0x2a5
        0x136
        0xf8
        0x161
        0x2c4
        0x19a
        0x243
        0x366
        0x269
        0x349
        0x278
        0x35c
        0x121
        0x218
        0x23
        0x309
        0x26a
        0x24a
        0x1a8
        0x341
        0x4d
        0x255
        0x15a
        0x10d
        0x2f5
        0x278
        0x2b7
        0x2ef
        0x14b
        0xf7
        0xb8
        0x2d
        0x313
        0x2a8
        0x12
        0x42
        0x197
        0x171
        0x36
        0x1ec
        0xe4
        0x265
        0x33e
        0x39a
        0x1b5
        0x207
        0x284
        0x389
        0x315
        0x1a4
        0x131
        0x1b9
        0xcf
        0x12c
        0x37c
        0x33b
        0x8d
        0x219
        0x17d
        0x296
        0x201
        0x38
        0xfc
        0x155
        0xf2
        0x31d
        0x346
        0x345
        0x2d0
        0xe0
        0x133
        0x277
        0x3d
        0x57
        0x230
        0x136
        0x2f4
        0x299
        0x18d
        0x328
        0x353
        0x135
        0x1d9
        0x31b
        0x17a
        0x1f
        0x287
        0x393
        0x1cb
        0x326
        0x24e
        0x2db
        0x1a9
        0xd8
        0x224
        0xf9
        0x141
        0x371
        0x2bb
        0x217
        0x2a1
        0x30e
        0xd2
        0x32f
        0x389
        0x12f
        0x34b
        0x39a
        0x119
        0x49
        0x1d5
        0x317
        0x294
        0xa2
        0x1f2
        0x134
        0x9b
        0x1a6
        0x38b
        0x331
        0xbb
        0x3e
        0x10
        0x1a9
        0x217
        0x150
        0x11e
        0x1b5
        0x177
        0x111
        0x262
        0x128
        0xb7
        0x39b
        0x74
        0x29b
        0x2ef
        0x161
        0x3e
        0x16e
        0x2b3
        0x17b
        0x2af
        0x34a
        0x25
        0x165
        0x2d0
        0x2e6
        0x14a
        0x5
        0x27
        0x39b
        0x137
        0x1a8
        0xf2
        0x2ed
        0x141
        0x36
        0x29d
        0x13c
        0x156
        0x12b
        0x216
        0x69
        0x29b
        0x1e8
        0x280
        0x2a0
        0x240
        0x21c
        0x13c
        0x1e6
        0x2d1
        0x262
        0x2e
        0x290
        0x1bf
        0xab
        0x268
        0x1d0
        0xbe
        0x213
        0x129
        0x141
        0x2fa
        0x2f0
        0x215
        0xaf
        0x86
        0xe
        0x17d
        0x1b1
        0x2cd
        0x2d
        0x6f
        0x14
        0x254
        0x11c
        0x2e0
        0x8a
        0x286
        0x19b
        0x36d
        0x29d
        0x8d
        0x397
        0x2d
        0x30c
        0x197
        0xa4
        0x14c
        0x383
        0xa5
        0x2d6
        0x258
        0x145
        0x1f2
        0x28f
        0x165
        0x2f0
        0x300
        0xdf
        0x351
        0x287
        0x3f
        0x136
        0x35f
        0xfb
        0x16e
        0x130
        0x11a
        0x2e2
        0x2a3
        0x19a
        0x185
        0xf4
        0x1f
        0x79
        0x12f
        0x107
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 645
    invoke-direct {p0}, Lcom/itextpdf/barcodes/Barcode2D;-><init>()V

    .line 582
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->macroSegmentCount:I

    .line 583
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->macroSegmentId:I

    .line 610
    const/16 v0, 0x3a0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    .line 646
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodePDF417;->setDefaultParameters()V

    .line 647
    return-void
.end method

.method private append(II)V
    .locals 4
    .param p1, "in"    # I
    .param p2, "len"    # I

    .line 1539
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v1, p2, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1540
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1541
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_0

    .line 1542
    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1541
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1545
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cp437"

    invoke-static {v1, v3}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 1546
    .local v1, "bytes":[B
    array-length v3, v1

    invoke-direct {p0, v1, v2, v3}, Lcom/itextpdf/barcodes/BarcodePDF417;->numberCompaction([BII)V

    .line 1547
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1550
    const-string v0, "cp437"

    invoke-static {p1, v0}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 1551
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/itextpdf/barcodes/BarcodePDF417;->textCompaction([BII)V

    .line 1552
    return-void
.end method

.method private basicNumberCompaction([BII)V
    .locals 9
    .param p1, "input"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 1473
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    .line 1474
    .local v0, "ret":I
    div-int/lit8 v1, p3, 0x3

    .line 1476
    .local v1, "retLast":I
    iget v2, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    .line 1477
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 1478
    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    add-int v4, v0, v2

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 1477
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1479
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    add-int v4, v0, v1

    const/4 v5, 0x1

    aput v5, v3, v4

    .line 1480
    add-int/2addr p3, p2

    .line 1481
    move v3, p2

    .local v3, "ni":I
    :goto_1
    if-ge v3, p3, :cond_3

    .line 1483
    move v2, v1

    :goto_2
    if-ltz v2, :cond_1

    .line 1484
    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    add-int v6, v0, v2

    aget v7, v4, v6

    mul-int/lit8 v7, v7, 0xa

    aput v7, v4, v6

    .line 1483
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1486
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    add-int v6, v0, v1

    aget v7, v4, v6

    aget-byte v8, p1, v3

    add-int/lit8 v8, v8, -0x30

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 1488
    move v2, v1

    :goto_3
    if-lez v2, :cond_2

    .line 1489
    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    add-int v6, v0, v2

    sub-int/2addr v6, v5

    aget v7, v4, v6

    add-int v8, v0, v2

    aget v8, v4, v8

    div-int/lit16 v8, v8, 0x384

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 1490
    add-int v6, v0, v2

    aget v7, v4, v6

    rem-int/lit16 v7, v7, 0x384

    aput v7, v4, v6

    .line 1488
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1481
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1493
    :cond_3
    return-void
.end method

.method private static getTextTypeAndValue([BII)I
    .locals 4
    .param p0, "input"    # [B
    .param p1, "maxLength"    # I
    .param p2, "idx"    # I

    .line 1555
    if-lt p2, p1, :cond_0

    .line 1556
    const/4 v0, 0x0

    return v0

    .line 1557
    :cond_0
    aget-byte v0, p0, p2

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 1558
    .local v0, "c":C
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_1

    .line 1559
    const/high16 v2, 0x10000

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    return v2

    .line 1560
    :cond_1
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_2

    .line 1561
    const/high16 v2, 0x20000

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    return v2

    .line 1562
    :cond_2
    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 1563
    const v1, 0x7001a

    return v1

    .line 1564
    :cond_3
    const-string v1, "0123456789&\r\t,:#-.$/+%*=^"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1565
    .local v1, "ms":I
    const-string v2, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1566
    .local v2, "ps":I
    if-gez v1, :cond_4

    if-gez v2, :cond_4

    .line 1567
    const/high16 v3, 0x100000

    add-int/2addr v3, v0

    return v3

    .line 1568
    :cond_4
    if-ne v1, v2, :cond_5

    .line 1569
    const/high16 v3, 0xc0000

    add-int/2addr v3, v1

    return v3

    .line 1570
    :cond_5
    if-ltz v1, :cond_6

    .line 1571
    const/high16 v3, 0x40000

    add-int/2addr v3, v1

    return v3

    .line 1572
    :cond_6
    const/high16 v3, 0x80000

    add-int/2addr v3, v2

    return v3
.end method

.method private macroCodes()V
    .locals 5

    .line 1514
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->macroSegmentId:I

    if-ltz v0, :cond_4

    .line 1517
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->macroSegmentCount:I

    if-ge v0, v1, :cond_3

    .line 1520
    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    .line 1524
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    iput v1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->macroIndex:I

    .line 1525
    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    const/16 v4, 0x3a0

    aput v4, v3, v1

    .line 1526
    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/barcodes/BarcodePDF417;->append(II)V

    .line 1528
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->macroFileId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1529
    invoke-direct {p0, v0}, Lcom/itextpdf/barcodes/BarcodePDF417;->append(Ljava/lang/String;)V

    .line 1532
    :cond_0
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->macroSegmentId:I

    iget v1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->macroSegmentCount:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 1533
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    iget v1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    const/16 v2, 0x39a

    aput v2, v0, v1

    .line 1536
    :cond_1
    return-void

    .line 1521
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "macroSegmentId must be > 0"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1518
    :cond_3
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "macroSegmentId must be < macroSemgentCount"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1515
    :cond_4
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "macroSegmentId must be >= 0"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static maxPossibleErrorLevel(I)I
    .locals 3
    .param p0, "remain"    # I

    .line 1274
    const/16 v0, 0x8

    .line 1275
    .local v0, "level":I
    const/16 v1, 0x200

    .line 1276
    .local v1, "size":I
    :goto_0
    if-lez v0, :cond_1

    .line 1277
    if-lt p0, v1, :cond_0

    .line 1278
    return v0

    .line 1279
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1280
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1282
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private numberCompaction([BII)V
    .locals 5
    .param p1, "input"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 1496
    div-int/lit8 v0, p3, 0x2c

    mul-int/lit8 v0, v0, 0xf

    .line 1497
    .local v0, "full":I
    rem-int/lit8 v1, p3, 0x2c

    .line 1499
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 1500
    move v1, v0

    goto :goto_0

    .line 1502
    :cond_0
    div-int/lit8 v2, v1, 0x3

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, 0x1

    .line 1503
    :goto_0
    iget v2, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    add-int/2addr v2, v1

    const/16 v3, 0x39e

    if-gt v2, v3, :cond_3

    .line 1506
    add-int/2addr p3, p2

    .line 1507
    move v2, p2

    .local v2, "k":I
    :goto_1
    if-ge v2, p3, :cond_2

    .line 1508
    sub-int v3, p3, v2

    const/16 v4, 0x2c

    if-ge v3, v4, :cond_1

    sub-int v4, p3, v2

    :cond_1
    move v1, v4

    .line 1509
    invoke-direct {p0, p1, v2, v1}, Lcom/itextpdf/barcodes/BarcodePDF417;->basicNumberCompaction([BII)V

    .line 1507
    add-int/lit8 v2, v2, 0x2c

    goto :goto_1

    .line 1511
    :cond_2
    return-void

    .line 1504
    .end local v2    # "k":I
    :cond_3
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "Text is too big."

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private textCompaction([BII)V
    .locals 17
    .param p1, "input"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 1576
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x2a58

    new-array v2, v2, [I

    .line 1577
    .local v2, "dest":[I
    const/high16 v3, 0x10000

    .line 1578
    .local v3, "mode":I
    const/4 v4, 0x0

    .line 1579
    .local v4, "ptr":I
    const/4 v5, 0x0

    .line 1580
    .local v5, "fullBytes":I
    const/4 v6, 0x0

    .line 1583
    .local v6, "v":I
    add-int v7, p3, p2

    .line 1584
    .end local p3    # "length":I
    .local v7, "length":I
    move/from16 v8, p2

    .local v8, "k":I
    :goto_0
    const/16 v9, 0x1d

    if-ge v8, v7, :cond_e

    .line 1585
    invoke-static {v1, v7, v8}, Lcom/itextpdf/barcodes/BarcodePDF417;->getTextTypeAndValue([BII)I

    move-result v6

    .line 1586
    and-int v10, v6, v3

    if-eqz v10, :cond_0

    .line 1587
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ptr":I
    .local v9, "ptr":I
    and-int/lit16 v10, v6, 0xff

    aput v10, v2, v4

    .line 1588
    move v4, v9

    goto/16 :goto_3

    .line 1590
    .end local v9    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_0
    const/high16 v10, 0x100000

    and-int/2addr v10, v6

    const/high16 v11, 0x80000

    const/high16 v12, 0x10000

    if-eqz v10, :cond_3

    .line 1591
    and-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_2

    .line 1593
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "ptr":I
    .local v10, "ptr":I
    aput v9, v2, v4

    .line 1594
    and-int v4, v3, v11

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v12, v3

    :goto_1
    move v3, v12

    move v4, v10

    .line 1596
    .end local v10    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_2
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v9    # "ptr":I
    const/16 v10, 0x391

    aput v10, v2, v4

    .line 1597
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "ptr":I
    .restart local v4    # "ptr":I
    and-int/lit16 v10, v6, 0xff

    aput v10, v2, v9

    .line 1598
    add-int/lit8 v5, v5, 0x2

    .line 1599
    goto/16 :goto_3

    .line 1601
    :cond_3
    const/high16 v10, 0x40000

    const/high16 v13, 0x20000

    const/16 v14, 0x19

    const/16 v15, 0x1b

    const/16 v16, 0x1c

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_3

    .line 1664
    :sswitch_0
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v10    # "ptr":I
    aput v9, v2, v4

    .line 1665
    const/high16 v3, 0x10000

    .line 1666
    add-int/lit8 v8, v8, -0x1

    move v4, v10

    goto/16 :goto_3

    .line 1646
    .end local v10    # "ptr":I
    .restart local v4    # "ptr":I
    :sswitch_1
    and-int v10, v6, v13

    if-eqz v10, :cond_4

    .line 1647
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v9    # "ptr":I
    aput v15, v2, v4

    .line 1648
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "ptr":I
    .restart local v4    # "ptr":I
    and-int/lit16 v10, v6, 0xff

    aput v10, v2, v9

    .line 1649
    const/high16 v3, 0x20000

    goto/16 :goto_3

    .line 1650
    :cond_4
    and-int v10, v6, v12

    if-eqz v10, :cond_5

    .line 1651
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v9    # "ptr":I
    aput v16, v2, v4

    .line 1652
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "ptr":I
    .restart local v4    # "ptr":I
    and-int/lit16 v10, v6, 0xff

    aput v10, v2, v9

    .line 1653
    const/high16 v3, 0x10000

    goto/16 :goto_3

    .line 1654
    :cond_5
    add-int/lit8 v10, v8, 0x1

    invoke-static {v1, v7, v10}, Lcom/itextpdf/barcodes/BarcodePDF417;->getTextTypeAndValue([BII)I

    move-result v10

    add-int/lit8 v12, v8, 0x2

    invoke-static {v1, v7, v12}, Lcom/itextpdf/barcodes/BarcodePDF417;->getTextTypeAndValue([BII)I

    move-result v12

    and-int/2addr v10, v12

    and-int/2addr v10, v11

    if-eqz v10, :cond_6

    .line 1655
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v9    # "ptr":I
    aput v14, v2, v4

    .line 1656
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "ptr":I
    .restart local v4    # "ptr":I
    and-int/lit16 v10, v6, 0xff

    aput v10, v2, v9

    .line 1657
    const/high16 v3, 0x80000

    goto/16 :goto_3

    .line 1659
    :cond_6
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v10    # "ptr":I
    aput v9, v2, v4

    .line 1660
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "ptr":I
    .restart local v4    # "ptr":I
    and-int/lit16 v9, v6, 0xff

    aput v9, v2, v10

    .line 1662
    goto/16 :goto_3

    .line 1622
    :sswitch_2
    and-int v13, v6, v12

    if-eqz v13, :cond_8

    .line 1623
    add-int/lit8 v9, v8, 0x1

    invoke-static {v1, v7, v9}, Lcom/itextpdf/barcodes/BarcodePDF417;->getTextTypeAndValue([BII)I

    move-result v9

    add-int/lit8 v10, v8, 0x2

    invoke-static {v1, v7, v10}, Lcom/itextpdf/barcodes/BarcodePDF417;->getTextTypeAndValue([BII)I

    move-result v10

    and-int/2addr v9, v10

    and-int/2addr v9, v12

    if-eqz v9, :cond_7

    .line 1624
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v9    # "ptr":I
    aput v16, v2, v4

    .line 1625
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "ptr":I
    .restart local v4    # "ptr":I
    aput v16, v2, v9

    .line 1626
    const/high16 v3, 0x10000

    goto :goto_2

    .line 1628
    :cond_7
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v9    # "ptr":I
    aput v15, v2, v4

    move v4, v9

    .line 1630
    .end local v9    # "ptr":I
    .restart local v4    # "ptr":I
    :goto_2
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v9    # "ptr":I
    and-int/lit16 v10, v6, 0xff

    aput v10, v2, v4

    move v4, v9

    goto/16 :goto_3

    .line 1631
    .end local v9    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_8
    and-int/2addr v10, v6

    if-eqz v10, :cond_9

    .line 1632
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v9    # "ptr":I
    aput v16, v2, v4

    .line 1633
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "ptr":I
    .restart local v4    # "ptr":I
    and-int/lit16 v10, v6, 0xff

    aput v10, v2, v9

    .line 1634
    const/high16 v3, 0x40000

    goto/16 :goto_3

    .line 1635
    :cond_9
    add-int/lit8 v10, v8, 0x1

    invoke-static {v1, v7, v10}, Lcom/itextpdf/barcodes/BarcodePDF417;->getTextTypeAndValue([BII)I

    move-result v10

    add-int/lit8 v12, v8, 0x2

    invoke-static {v1, v7, v12}, Lcom/itextpdf/barcodes/BarcodePDF417;->getTextTypeAndValue([BII)I

    move-result v12

    and-int/2addr v10, v12

    and-int/2addr v10, v11

    if-eqz v10, :cond_a

    .line 1636
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v9    # "ptr":I
    aput v16, v2, v4

    .line 1637
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "ptr":I
    .restart local v4    # "ptr":I
    aput v14, v2, v9

    .line 1638
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v9    # "ptr":I
    and-int/lit16 v10, v6, 0xff

    aput v10, v2, v4

    .line 1639
    const/high16 v3, 0x80000

    move v4, v9

    goto :goto_3

    .line 1641
    .end local v9    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_a
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v10    # "ptr":I
    aput v9, v2, v4

    .line 1642
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "ptr":I
    .restart local v4    # "ptr":I
    and-int/lit16 v9, v6, 0xff

    aput v9, v2, v10

    .line 1644
    goto :goto_3

    .line 1603
    :sswitch_3
    and-int v12, v6, v13

    if-eqz v12, :cond_b

    .line 1604
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v9    # "ptr":I
    aput v15, v2, v4

    .line 1605
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "ptr":I
    .restart local v4    # "ptr":I
    and-int/lit16 v10, v6, 0xff

    aput v10, v2, v9

    .line 1606
    const/high16 v3, 0x20000

    goto :goto_3

    .line 1607
    :cond_b
    and-int/2addr v10, v6

    if-eqz v10, :cond_c

    .line 1608
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v9    # "ptr":I
    aput v16, v2, v4

    .line 1609
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "ptr":I
    .restart local v4    # "ptr":I
    and-int/lit16 v10, v6, 0xff

    aput v10, v2, v9

    .line 1610
    const/high16 v3, 0x40000

    goto :goto_3

    .line 1611
    :cond_c
    add-int/lit8 v10, v8, 0x1

    invoke-static {v1, v7, v10}, Lcom/itextpdf/barcodes/BarcodePDF417;->getTextTypeAndValue([BII)I

    move-result v10

    add-int/lit8 v12, v8, 0x2

    invoke-static {v1, v7, v12}, Lcom/itextpdf/barcodes/BarcodePDF417;->getTextTypeAndValue([BII)I

    move-result v12

    and-int/2addr v10, v12

    and-int/2addr v10, v11

    if-eqz v10, :cond_d

    .line 1612
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v9    # "ptr":I
    aput v16, v2, v4

    .line 1613
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "ptr":I
    .restart local v4    # "ptr":I
    aput v14, v2, v9

    .line 1614
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v9    # "ptr":I
    and-int/lit16 v10, v6, 0xff

    aput v10, v2, v4

    .line 1615
    const/high16 v3, 0x80000

    move v4, v9

    goto :goto_3

    .line 1617
    .end local v9    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_d
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v10    # "ptr":I
    aput v9, v2, v4

    .line 1618
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "ptr":I
    .restart local v4    # "ptr":I
    and-int/lit16 v9, v6, 0xff

    aput v9, v2, v10

    .line 1620
    nop

    .line 1584
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1670
    :cond_e
    and-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_f

    .line 1671
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v10    # "ptr":I
    aput v9, v2, v4

    move v4, v10

    .line 1672
    .end local v10    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_f
    add-int v9, v4, v5

    div-int/lit8 v9, v9, 0x2

    .line 1673
    .local v9, "size":I
    iget v10, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    add-int/2addr v10, v9

    const/16 v11, 0x39e

    if-gt v10, v11, :cond_12

    .line 1676
    move v7, v4

    .line 1677
    const/4 v4, 0x0

    .line 1678
    :goto_4
    if-ge v4, v7, :cond_11

    .line 1679
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v10    # "ptr":I
    aget v6, v2, v4

    .line 1680
    const/16 v4, 0x1e

    if-lt v6, v4, :cond_10

    .line 1681
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    iget v11, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    aput v6, v4, v11

    .line 1682
    add-int/lit8 v11, v12, 0x1

    iput v11, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "ptr":I
    .local v11, "ptr":I
    aget v10, v2, v10

    aput v10, v4, v12

    move v4, v11

    goto :goto_4

    .line 1684
    .end local v11    # "ptr":I
    .restart local v10    # "ptr":I
    :cond_10
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    iget v11, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    mul-int/lit8 v12, v6, 0x1e

    add-int/lit8 v13, v10, 0x1

    .end local v10    # "ptr":I
    .local v13, "ptr":I
    aget v10, v2, v10

    add-int/2addr v12, v10

    aput v12, v4, v11

    move v4, v13

    goto :goto_4

    .line 1686
    .end local v13    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_11
    return-void

    .line 1674
    :cond_12
    new-instance v10, Lcom/itextpdf/kernel/PdfException;

    const-string v11, "Text is too big."

    invoke-direct {v10, v11}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v10

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_3
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected assemble()V
    .locals 5

    .line 1246
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    invoke-virtual {v0}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1247
    return-void

    .line 1248
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    .line 1249
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1250
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    invoke-virtual {v1, v0}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->get(I)Lcom/itextpdf/barcodes/BarcodePDF417$Segment;

    move-result-object v1

    .line 1251
    .local v1, "v":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    iget-char v2, v1, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->type:C

    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    .line 1253
    :sswitch_0
    if-eqz v0, :cond_1

    .line 1254
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    iget v3, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    const/16 v4, 0x384

    aput v4, v2, v3

    .line 1255
    :cond_1
    iget v2, v1, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->start:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/barcodes/BarcodePDF417;->getSegmentLength(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/barcodes/BarcodePDF417;->textCompaction(II)V

    .line 1256
    goto :goto_2

    .line 1258
    :sswitch_1
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    iget v3, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    const/16 v4, 0x386

    aput v4, v2, v3

    .line 1259
    iget v2, v1, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->start:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/barcodes/BarcodePDF417;->getSegmentLength(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/barcodes/BarcodePDF417;->numberCompaction(II)V

    .line 1260
    goto :goto_2

    .line 1262
    :sswitch_2
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    iget v3, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/barcodes/BarcodePDF417;->getSegmentLength(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x6

    if-eqz v4, :cond_2

    const/16 v4, 0x385

    goto :goto_1

    :cond_2
    const/16 v4, 0x39c

    :goto_1
    aput v4, v2, v3

    .line 1263
    iget v2, v1, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->start:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/barcodes/BarcodePDF417;->getSegmentLength(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/barcodes/BarcodePDF417;->byteCompaction(II)V

    .line 1249
    .end local v1    # "v":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1268
    :cond_3
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->options:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4

    .line 1269
    invoke-direct {p0}, Lcom/itextpdf/barcodes/BarcodePDF417;->macroCodes()V

    .line 1271
    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4e -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected basicNumberCompaction(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 1198
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    invoke-direct {p0, v0, p1, p2}, Lcom/itextpdf/barcodes/BarcodePDF417;->basicNumberCompaction([BII)V

    .line 1199
    return-void
.end method

.method breakString()V
    .locals 18

    .line 1334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    array-length v1, v1

    .line 1335
    .local v1, "textLength":I
    const/4 v2, 0x0

    .line 1336
    .local v2, "lastP":I
    const/4 v3, 0x0

    .line 1337
    .local v3, "startN":I
    const/4 v4, 0x0

    .line 1338
    .local v4, "nd":I
    const/4 v5, 0x0

    .line 1345
    .local v5, "c":C
    iget v6, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->options:I

    const/16 v7, 0x20

    and-int/2addr v6, v7

    const/4 v8, 0x0

    const/16 v9, 0x42

    if-eqz v6, :cond_0

    .line 1346
    iget-object v6, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    invoke-virtual {v6, v9, v8, v1}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->add(CII)V

    .line 1347
    return-void

    .line 1349
    :cond_0
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_0
    const/16 v10, 0x39

    const/16 v11, 0x30

    const/16 v13, 0x9

    const/16 v14, 0xa

    const/16 v15, 0x7f

    const/16 v8, 0xd

    if-ge v6, v1, :cond_f

    .line 1350
    iget-object v9, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    aget-byte v12, v9, v6

    and-int/lit16 v12, v12, 0xff

    int-to-char v5, v12

    .line 1351
    if-lt v5, v11, :cond_2

    if-gt v5, v10, :cond_2

    .line 1352
    if-nez v4, :cond_1

    .line 1353
    move v3, v6

    .line 1354
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 1355
    goto/16 :goto_8

    .line 1357
    :cond_2
    if-lt v4, v8, :cond_e

    .line 1358
    if-eq v2, v3, :cond_d

    .line 1359
    aget-byte v9, v9, v2

    and-int/lit16 v9, v9, 0xff

    int-to-char v5, v9

    .line 1360
    if-lt v5, v7, :cond_3

    if-lt v5, v15, :cond_5

    :cond_3
    if-eq v5, v8, :cond_5

    if-eq v5, v14, :cond_5

    if-ne v5, v13, :cond_4

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v9, 0x1

    .line 1361
    .local v9, "lastTxt":Z
    :goto_2
    move v10, v2

    .local v10, "j":I
    :goto_3
    if-ge v10, v3, :cond_b

    .line 1362
    iget-object v11, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    aget-byte v11, v11, v10

    and-int/lit16 v11, v11, 0xff

    int-to-char v5, v11

    .line 1363
    if-lt v5, v7, :cond_6

    if-lt v5, v15, :cond_8

    :cond_6
    if-eq v5, v8, :cond_8

    if-eq v5, v14, :cond_8

    if-ne v5, v13, :cond_7

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v11, 0x1

    .line 1364
    .local v11, "txt":Z
    :goto_5
    if-eq v11, v9, :cond_a

    .line 1365
    iget-object v12, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    if-eqz v9, :cond_9

    const/16 v13, 0x54

    goto :goto_6

    :cond_9
    const/16 v13, 0x42

    :goto_6
    invoke-virtual {v12, v13, v2, v10}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->add(CII)V

    .line 1366
    move v2, v10

    .line 1367
    move v9, v11

    .line 1361
    :cond_a
    add-int/lit8 v10, v10, 0x1

    const/16 v13, 0x9

    goto :goto_3

    .line 1370
    .end local v11    # "txt":Z
    :cond_b
    iget-object v8, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    if-eqz v9, :cond_c

    const/16 v11, 0x54

    goto :goto_7

    :cond_c
    const/16 v11, 0x42

    :goto_7
    invoke-virtual {v8, v11, v2, v3}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->add(CII)V

    .line 1372
    .end local v9    # "lastTxt":Z
    .end local v10    # "j":I
    :cond_d
    iget-object v8, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    const/16 v9, 0x4e

    invoke-virtual {v8, v9, v3, v6}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->add(CII)V

    .line 1373
    move v2, v6

    .line 1375
    :cond_e
    const/4 v4, 0x0

    .line 1349
    :goto_8
    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x42

    goto :goto_0

    .line 1377
    :cond_f
    if-ge v4, v8, :cond_10

    .line 1378
    move v3, v1

    .line 1379
    :cond_10
    if-eq v2, v3, :cond_1c

    .line 1380
    iget-object v9, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    aget-byte v9, v9, v2

    and-int/lit16 v9, v9, 0xff

    int-to-char v5, v9

    .line 1381
    if-lt v5, v7, :cond_11

    if-lt v5, v15, :cond_13

    :cond_11
    if-eq v5, v8, :cond_13

    if-eq v5, v14, :cond_13

    const/16 v9, 0x9

    if-ne v5, v9, :cond_12

    goto :goto_9

    :cond_12
    const/4 v9, 0x0

    goto :goto_a

    :cond_13
    :goto_9
    const/4 v9, 0x1

    .line 1382
    .restart local v9    # "lastTxt":Z
    :goto_a
    move v12, v2

    .local v12, "j":I
    :goto_b
    if-ge v12, v3, :cond_1a

    .line 1383
    iget-object v13, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    aget-byte v13, v13, v12

    and-int/lit16 v13, v13, 0xff

    int-to-char v5, v13

    .line 1384
    if-lt v5, v7, :cond_15

    if-lt v5, v15, :cond_14

    goto :goto_c

    :cond_14
    const/16 v13, 0x9

    goto :goto_d

    :cond_15
    :goto_c
    if-eq v5, v8, :cond_17

    if-eq v5, v14, :cond_17

    const/16 v13, 0x9

    if-ne v5, v13, :cond_16

    goto :goto_d

    :cond_16
    const/16 v16, 0x0

    goto :goto_e

    :cond_17
    const/16 v13, 0x9

    :goto_d
    const/16 v16, 0x1

    :goto_e
    move/from16 v17, v16

    .line 1385
    .local v17, "txt":Z
    move/from16 v7, v17

    .end local v17    # "txt":Z
    .local v7, "txt":Z
    if-eq v7, v9, :cond_19

    .line 1386
    iget-object v13, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    if-eqz v9, :cond_18

    const/16 v14, 0x54

    goto :goto_f

    :cond_18
    const/16 v14, 0x42

    :goto_f
    invoke-virtual {v13, v14, v2, v12}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->add(CII)V

    .line 1387
    move v2, v12

    .line 1388
    move v9, v7

    .line 1382
    :cond_19
    add-int/lit8 v12, v12, 0x1

    const/16 v7, 0x20

    const/16 v14, 0xa

    goto :goto_b

    .line 1391
    .end local v7    # "txt":Z
    :cond_1a
    iget-object v7, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    if-eqz v9, :cond_1b

    const/16 v13, 0x54

    goto :goto_10

    :cond_1b
    const/16 v13, 0x42

    :goto_10
    invoke-virtual {v7, v13, v2, v3}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->add(CII)V

    .line 1393
    .end local v9    # "lastTxt":Z
    .end local v12    # "j":I
    :cond_1c
    if-lt v4, v8, :cond_1d

    .line 1394
    iget-object v7, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    const/16 v8, 0x4e

    invoke-virtual {v7, v8, v3, v1}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->add(CII)V

    .line 1397
    :cond_1d
    const/4 v6, 0x0

    :goto_11
    iget-object v7, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    invoke-virtual {v7}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1f

    .line 1398
    iget-object v7, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    invoke-virtual {v7, v6}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->get(I)Lcom/itextpdf/barcodes/BarcodePDF417$Segment;

    move-result-object v7

    .line 1399
    .local v7, "v":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    iget-object v8, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v8, v9}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->get(I)Lcom/itextpdf/barcodes/BarcodePDF417$Segment;

    move-result-object v8

    .line 1400
    .local v8, "vp":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    iget-object v9, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v9, v12}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->get(I)Lcom/itextpdf/barcodes/BarcodePDF417$Segment;

    move-result-object v9

    .line 1401
    .local v9, "vn":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    const/16 v12, 0x42

    invoke-virtual {v0, v7, v12}, Lcom/itextpdf/barcodes/BarcodePDF417;->checkSegmentType(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;C)Z

    move-result v13

    if-eqz v13, :cond_1e

    invoke-virtual {v0, v7}, Lcom/itextpdf/barcodes/BarcodePDF417;->getSegmentLength(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1e

    .line 1402
    const/16 v12, 0x54

    invoke-virtual {v0, v8, v12}, Lcom/itextpdf/barcodes/BarcodePDF417;->checkSegmentType(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;C)Z

    move-result v13

    if-eqz v13, :cond_1e

    invoke-virtual {v0, v9, v12}, Lcom/itextpdf/barcodes/BarcodePDF417;->checkSegmentType(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;C)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 1403
    invoke-virtual {v0, v8}, Lcom/itextpdf/barcodes/BarcodePDF417;->getSegmentLength(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;)I

    move-result v12

    invoke-virtual {v0, v9}, Lcom/itextpdf/barcodes/BarcodePDF417;->getSegmentLength(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;)I

    move-result v13

    add-int/2addr v12, v13

    const/4 v13, 0x3

    if-lt v12, v13, :cond_1e

    .line 1404
    iget v12, v9, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->end:I

    iput v12, v8, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->end:I

    .line 1405
    iget-object v12, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    invoke-virtual {v12, v6}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->remove(I)V

    .line 1406
    iget-object v12, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    invoke-virtual {v12, v6}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->remove(I)V

    .line 1407
    const/4 v6, -0x1

    .line 1397
    :cond_1e
    const/4 v12, 0x1

    add-int/2addr v6, v12

    goto :goto_11

    .line 1413
    .end local v7    # "v":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    .end local v8    # "vp":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    .end local v9    # "vn":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    :cond_1f
    const/4 v6, 0x0

    :goto_12
    iget-object v7, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    invoke-virtual {v7}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->size()I

    move-result v7

    const/4 v8, 0x5

    if-ge v6, v7, :cond_27

    .line 1414
    iget-object v7, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    invoke-virtual {v7, v6}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->get(I)Lcom/itextpdf/barcodes/BarcodePDF417$Segment;

    move-result-object v7

    .line 1415
    .restart local v7    # "v":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    iget-object v9, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    add-int/lit8 v12, v6, -0x1

    invoke-virtual {v9, v12}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->get(I)Lcom/itextpdf/barcodes/BarcodePDF417$Segment;

    move-result-object v9

    .line 1416
    .local v9, "vp":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    iget-object v12, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v12, v13}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->get(I)Lcom/itextpdf/barcodes/BarcodePDF417$Segment;

    move-result-object v12

    .line 1417
    .local v12, "vn":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    const/16 v13, 0x54

    invoke-virtual {v0, v7, v13}, Lcom/itextpdf/barcodes/BarcodePDF417;->checkSegmentType(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;C)Z

    move-result v14

    if-eqz v14, :cond_26

    invoke-virtual {v0, v7}, Lcom/itextpdf/barcodes/BarcodePDF417;->getSegmentLength(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;)I

    move-result v13

    if-lt v13, v8, :cond_26

    .line 1418
    const/4 v8, 0x0

    .line 1419
    .local v8, "redo":Z
    const/16 v13, 0x42

    invoke-virtual {v0, v9, v13}, Lcom/itextpdf/barcodes/BarcodePDF417;->checkSegmentType(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;C)Z

    move-result v14

    if-eqz v14, :cond_20

    invoke-virtual {v0, v9}, Lcom/itextpdf/barcodes/BarcodePDF417;->getSegmentLength(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;)I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_21

    :cond_20
    const/16 v13, 0x54

    invoke-virtual {v0, v9, v13}, Lcom/itextpdf/barcodes/BarcodePDF417;->checkSegmentType(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;C)Z

    move-result v14

    if-eqz v14, :cond_22

    .line 1420
    :cond_21
    const/4 v8, 0x1

    .line 1421
    iget v13, v9, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->start:I

    iput v13, v7, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->start:I

    .line 1422
    iget-object v13, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    add-int/lit8 v14, v6, -0x1

    invoke-virtual {v13, v14}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->remove(I)V

    .line 1423
    add-int/lit8 v6, v6, -0x1

    .line 1425
    :cond_22
    const/16 v13, 0x42

    invoke-virtual {v0, v12, v13}, Lcom/itextpdf/barcodes/BarcodePDF417;->checkSegmentType(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;C)Z

    move-result v14

    if-eqz v14, :cond_23

    invoke-virtual {v0, v12}, Lcom/itextpdf/barcodes/BarcodePDF417;->getSegmentLength(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;)I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_24

    :cond_23
    const/16 v13, 0x54

    invoke-virtual {v0, v12, v13}, Lcom/itextpdf/barcodes/BarcodePDF417;->checkSegmentType(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;C)Z

    move-result v14

    if-eqz v14, :cond_25

    .line 1426
    :cond_24
    const/4 v8, 0x1

    .line 1427
    iget v13, v12, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->end:I

    iput v13, v7, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->end:I

    .line 1428
    iget-object v13, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v13, v14}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->remove(I)V

    .line 1430
    :cond_25
    if-eqz v8, :cond_26

    .line 1431
    const/4 v6, -0x1

    .line 1413
    .end local v8    # "redo":Z
    :cond_26
    const/4 v8, 0x1

    add-int/2addr v6, v8

    goto :goto_12

    .line 1437
    .end local v7    # "v":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    .end local v9    # "vp":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    .end local v12    # "vn":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    :cond_27
    const/4 v6, 0x0

    :goto_13
    iget-object v7, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    invoke-virtual {v7}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->size()I

    move-result v7

    if-ge v6, v7, :cond_30

    .line 1438
    iget-object v7, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    invoke-virtual {v7, v6}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->get(I)Lcom/itextpdf/barcodes/BarcodePDF417$Segment;

    move-result-object v7

    .line 1439
    .restart local v7    # "v":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    iget-object v9, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    add-int/lit8 v12, v6, -0x1

    invoke-virtual {v9, v12}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->get(I)Lcom/itextpdf/barcodes/BarcodePDF417$Segment;

    move-result-object v9

    .line 1440
    .restart local v9    # "vp":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    iget-object v12, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v12, v13}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->get(I)Lcom/itextpdf/barcodes/BarcodePDF417$Segment;

    move-result-object v12

    .line 1441
    .restart local v12    # "vn":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    const/16 v13, 0x42

    invoke-virtual {v0, v7, v13}, Lcom/itextpdf/barcodes/BarcodePDF417;->checkSegmentType(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;C)Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 1442
    const/4 v13, 0x0

    .line 1443
    .local v13, "redo":Z
    const/16 v14, 0x54

    invoke-virtual {v0, v9, v14}, Lcom/itextpdf/barcodes/BarcodePDF417;->checkSegmentType(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;C)Z

    move-result v15

    if-eqz v15, :cond_28

    invoke-virtual {v0, v9}, Lcom/itextpdf/barcodes/BarcodePDF417;->getSegmentLength(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;)I

    move-result v14

    if-lt v14, v8, :cond_29

    :cond_28
    const/16 v14, 0x42

    invoke-virtual {v0, v9, v14}, Lcom/itextpdf/barcodes/BarcodePDF417;->checkSegmentType(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;C)Z

    move-result v15

    if-eqz v15, :cond_2a

    .line 1444
    :cond_29
    const/4 v13, 0x1

    .line 1445
    iget v14, v9, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->start:I

    iput v14, v7, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->start:I

    .line 1446
    iget-object v14, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    add-int/lit8 v15, v6, -0x1

    invoke-virtual {v14, v15}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->remove(I)V

    .line 1447
    add-int/lit8 v6, v6, -0x1

    .line 1449
    :cond_2a
    const/16 v14, 0x54

    invoke-virtual {v0, v12, v14}, Lcom/itextpdf/barcodes/BarcodePDF417;->checkSegmentType(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;C)Z

    move-result v15

    if-eqz v15, :cond_2c

    invoke-virtual {v0, v12}, Lcom/itextpdf/barcodes/BarcodePDF417;->getSegmentLength(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;)I

    move-result v14

    if-lt v14, v8, :cond_2b

    goto :goto_14

    :cond_2b
    const/16 v14, 0x42

    goto :goto_15

    :cond_2c
    :goto_14
    const/16 v14, 0x42

    invoke-virtual {v0, v12, v14}, Lcom/itextpdf/barcodes/BarcodePDF417;->checkSegmentType(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;C)Z

    move-result v15

    if-eqz v15, :cond_2d

    .line 1450
    :goto_15
    const/4 v13, 0x1

    .line 1451
    iget v15, v12, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->end:I

    iput v15, v7, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->end:I

    .line 1452
    iget-object v15, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v15, v8}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->remove(I)V

    .line 1454
    :cond_2d
    if-eqz v13, :cond_2f

    .line 1455
    const/4 v6, -0x1

    .line 1456
    goto :goto_16

    .line 1441
    .end local v13    # "redo":Z
    :cond_2e
    const/16 v14, 0x42

    .line 1437
    :cond_2f
    :goto_16
    const/4 v8, 0x1

    add-int/2addr v6, v8

    const/4 v8, 0x5

    goto :goto_13

    .line 1461
    .end local v7    # "v":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    .end local v9    # "vp":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    .end local v12    # "vn":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    :cond_30
    const/4 v8, 0x1

    iget-object v7, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    invoke-virtual {v7}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->size()I

    move-result v7

    if-ne v7, v8, :cond_33

    iget-object v7, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->get(I)Lcom/itextpdf/barcodes/BarcodePDF417$Segment;

    move-result-object v7

    move-object v8, v7

    .local v8, "v":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    iget-char v7, v7, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->type:C

    const/16 v9, 0x54

    if-ne v7, v9, :cond_33

    invoke-virtual {v0, v8}, Lcom/itextpdf/barcodes/BarcodePDF417;->getSegmentLength(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;)I

    move-result v7

    const/16 v9, 0x8

    if-lt v7, v9, :cond_33

    .line 1462
    iget v6, v8, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->start:I

    :goto_17
    iget v7, v8, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->end:I

    if-ge v6, v7, :cond_32

    .line 1463
    iget-object v7, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    aget-byte v7, v7, v6

    and-int/lit16 v7, v7, 0xff

    int-to-char v5, v7

    .line 1464
    if-lt v5, v11, :cond_32

    if-le v5, v10, :cond_31

    .line 1465
    goto :goto_18

    .line 1462
    :cond_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 1467
    :cond_32
    :goto_18
    iget v7, v8, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->end:I

    if-ne v6, v7, :cond_33

    .line 1468
    const/16 v7, 0x4e

    iput-char v7, v8, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->type:C

    .line 1470
    .end local v8    # "v":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    :cond_33
    return-void
.end method

.method byteCompaction(II)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 1317
    div-int/lit8 v0, p2, 0x6

    mul-int/lit8 v0, v0, 0x5

    rem-int/lit8 v1, p2, 0x6

    add-int/2addr v0, v1

    .line 1318
    .local v0, "size":I
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    add-int/2addr v1, v0

    const/16 v2, 0x39e

    if-gt v1, v2, :cond_4

    .line 1321
    add-int/2addr p2, p1

    .line 1322
    move v1, p1

    .local v1, "k":I
    :goto_0
    if-ge v1, p2, :cond_3

    .line 1323
    sub-int v2, p2, v1

    const/16 v3, 0x2c

    const/4 v4, 0x6

    if-ge v2, v3, :cond_0

    sub-int v2, p2, v1

    goto :goto_1

    :cond_0
    move v2, v4

    :goto_1
    move v0, v2

    .line 1324
    if-ge v0, v4, :cond_1

    .line 1325
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 1326
    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    iget-object v5, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    add-int v6, v1, v2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v4

    .line 1325
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1328
    .end local v2    # "j":I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/itextpdf/barcodes/BarcodePDF417;->byteCompaction6(I)V

    .line 1322
    :cond_2
    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 1331
    :cond_3
    return-void

    .line 1319
    .end local v1    # "k":I
    :cond_4
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Text is too big."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected byteCompaction6(I)V
    .locals 9
    .param p1, "start"    # I

    .line 1222
    const/4 v0, 0x6

    .line 1223
    .local v0, "length":I
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    .line 1224
    .local v1, "ret":I
    const/4 v2, 0x4

    .line 1226
    .local v2, "retLast":I
    iget v3, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    .line 1227
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-gt v3, v2, :cond_0

    .line 1228
    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    add-int v5, v1, v3

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1227
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1229
    :cond_0
    add-int/2addr v0, p1

    .line 1230
    move v4, p1

    .local v4, "ni":I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 1232
    move v3, v2

    :goto_2
    if-ltz v3, :cond_1

    .line 1233
    iget-object v5, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    add-int v6, v1, v3

    aget v7, v5, v6

    mul-int/lit16 v7, v7, 0x100

    aput v7, v5, v6

    .line 1232
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1235
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    add-int v6, v1, v2

    aget v7, v5, v6

    iget-object v8, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    aget-byte v8, v8, v4

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1237
    move v3, v2

    :goto_3
    if-lez v3, :cond_2

    .line 1238
    iget-object v5, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    add-int v6, v1, v3

    add-int/lit8 v6, v6, -0x1

    aget v7, v5, v6

    add-int v8, v1, v3

    aget v8, v5, v8

    div-int/lit16 v8, v8, 0x384

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1239
    add-int v6, v1, v3

    aget v7, v5, v6

    rem-int/lit16 v7, v7, 0x384

    aput v7, v5, v6

    .line 1237
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1230
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1242
    :cond_3
    return-void
.end method

.method protected calculateErrorCorrection(I)V
    .locals 12
    .param p1, "dest"    # I

    .line 1174
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->errorLevel:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 1175
    :cond_0
    iput v1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->errorLevel:I

    .line 1176
    :cond_1
    sget-object v0, Lcom/itextpdf/barcodes/BarcodePDF417;->ERROR_LEVEL:[[I

    iget v2, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->errorLevel:I

    aget-object v0, v0, v2

    .line 1177
    .local v0, "A":[I
    const/4 v3, 0x2

    shl-int v2, v3, v2

    .line 1178
    .local v2, "Alength":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1179
    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    add-int v5, p1, v3

    aput v1, v4, v5

    .line 1178
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1180
    .end local v3    # "k":I
    :cond_2
    add-int/lit8 v3, v2, -0x1

    .line 1181
    .local v3, "lastE":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    iget v5, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->lenCodewords:I

    if-ge v4, v5, :cond_5

    .line 1182
    iget-object v5, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    aget v6, v5, v4

    aget v5, v5, p1

    add-int/2addr v6, v5

    .line 1183
    .local v6, "t1":I
    const/4 v5, 0x0

    .local v5, "e":I
    :goto_2
    if-gt v5, v3, :cond_4

    .line 1184
    sub-int v7, v3, v5

    aget v7, v0, v7

    mul-int/2addr v7, v6

    rem-int/lit16 v7, v7, 0x3a1

    .line 1185
    .local v7, "t2":I
    rsub-int v8, v7, 0x3a1

    .line 1186
    .local v8, "t3":I
    iget-object v9, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    add-int v10, p1, v5

    if-ne v5, v3, :cond_3

    move v11, v1

    goto :goto_3

    :cond_3
    add-int v11, p1, v5

    add-int/lit8 v11, v11, 0x1

    aget v11, v9, v11

    :goto_3
    add-int/2addr v11, v8

    rem-int/lit16 v11, v11, 0x3a1

    aput v11, v9, v10

    .line 1183
    .end local v7    # "t2":I
    .end local v8    # "t3":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1181
    .end local v5    # "e":I
    .end local v6    # "t1":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1189
    .end local v4    # "k":I
    :cond_5
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_4
    if-ge v1, v2, :cond_6

    .line 1190
    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    add-int v5, p1, v1

    add-int v6, p1, v1

    aget v6, v4, v6

    rsub-int v6, v6, 0x3a1

    rem-int/lit16 v6, v6, 0x3a1

    aput v6, v4, v5

    .line 1189
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1191
    .end local v1    # "k":I
    :cond_6
    return-void
.end method

.method protected checkSegmentType(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;C)Z
    .locals 2
    .param p1, "segment"    # Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    .param p2, "type"    # C

    .line 1206
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1207
    return v0

    .line 1208
    :cond_0
    iget-char v1, p1, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->type:C

    if-ne v1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 15
    .param p1, "foreground"    # Ljava/awt/Color;
    .param p2, "background"    # Ljava/awt/Color;

    .line 872
    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    .line 873
    .local v1, "f":I
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    .line 874
    .local v2, "g":I
    new-instance v3, Ljava/awt/Canvas;

    invoke-direct {v3}, Ljava/awt/Canvas;-><init>()V

    .line 876
    .local v3, "canvas":Ljava/awt/Canvas;
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodePDF417;->paintCode()V

    .line 877
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->yHeight:F

    float-to-int v4, v4

    .line 878
    .local v4, "h":I
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->bitColumns:I

    iget v6, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    mul-int/2addr v6, v5

    mul-int/2addr v6, v4

    new-array v6, v6, [I

    .line 879
    .local v6, "pix":[I
    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    .line 880
    .local v5, "stride":I
    const/4 v7, 0x0

    .line 881
    .local v7, "ptr":I
    const/4 v8, 0x0

    move v13, v7

    .end local v7    # "ptr":I
    .local v8, "k":I
    .local v13, "ptr":I
    :goto_0
    iget v7, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    if-ge v8, v7, :cond_3

    .line 882
    mul-int v7, v8, v5

    .line 883
    .local v7, "p":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    iget v10, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->bitColumns:I

    if-ge v9, v10, :cond_1

    .line 884
    iget-object v10, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->outBits:[B

    div-int/lit8 v11, v9, 0x8

    add-int/2addr v11, v7

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    .line 885
    .local v10, "b":I
    rem-int/lit8 v11, v9, 0x8

    shl-int/2addr v10, v11

    .line 886
    add-int/lit8 v11, v13, 0x1

    .end local v13    # "ptr":I
    .local v11, "ptr":I
    and-int/lit16 v12, v10, 0x80

    if-nez v12, :cond_0

    move v12, v2

    goto :goto_2

    :cond_0
    move v12, v1

    :goto_2
    aput v12, v6, v13

    .line 883
    .end local v10    # "b":I
    add-int/lit8 v9, v9, 0x1

    move v13, v11

    goto :goto_1

    .line 888
    .end local v9    # "j":I
    .end local v11    # "ptr":I
    .restart local v13    # "ptr":I
    :cond_1
    const/4 v9, 0x1

    .restart local v9    # "j":I
    :goto_3
    if-ge v9, v4, :cond_2

    .line 889
    iget v10, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->bitColumns:I

    sub-int v11, v13, v10

    add-int/lit8 v12, v9, -0x1

    mul-int/2addr v12, v10

    add-int/2addr v12, v13

    invoke-static {v6, v11, v6, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 888
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 891
    .end local v9    # "j":I
    :cond_2
    iget v9, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->bitColumns:I

    add-int/lit8 v10, v4, -0x1

    mul-int/2addr v9, v10

    add-int/2addr v13, v9

    .line 881
    .end local v7    # "p":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 894
    .end local v8    # "k":I
    :cond_3
    new-instance v14, Ljava/awt/image/MemoryImageSource;

    iget v12, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->bitColumns:I

    iget v7, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    mul-int v9, v7, v4

    const/4 v11, 0x0

    move-object v7, v14

    move v8, v12

    move-object v10, v6

    invoke-direct/range {v7 .. v12}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v3, v14}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v7

    .line 895
    .local v7, "img":Ljava/awt/Image;
    return-object v7
.end method

.method public createFormXObject(Lcom/itextpdf/kernel/colors/Color;FFLcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 3
    .param p1, "foreground"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "moduleWidth"    # F
    .param p3, "moduleHeight"    # F
    .param p4, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 857
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 858
    .local v0, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v1, v0, p4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/itextpdf/barcodes/BarcodePDF417;->placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;FF)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 859
    .local v1, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->setBBox(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 861
    return-object v0
.end method

.method public createFormXObject(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 1
    .param p1, "foreground"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 844
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/itextpdf/barcodes/BarcodePDF417;->createFormXObject(Lcom/itextpdf/kernel/colors/Color;FFLcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v0

    return-object v0
.end method

.method protected dumpList()V
    .locals 7

    .line 1286
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    invoke-virtual {v0}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1287
    return-void

    .line 1288
    :cond_0
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1289
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    invoke-virtual {v1, v0}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;->get(I)Lcom/itextpdf/barcodes/BarcodePDF417$Segment;

    move-result-object v1

    .line 1290
    .local v1, "v":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    invoke-virtual {p0, v1}, Lcom/itextpdf/barcodes/BarcodePDF417;->getSegmentLength(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;)I

    move-result v2

    .line 1291
    .local v2, "len":I
    new-array v3, v2, [C

    .line 1292
    .local v3, "c":[C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 1293
    iget-object v5, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    iget v6, v1, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->start:I

    add-int/2addr v6, v4

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 1294
    aget-char v5, v3, v4

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    .line 1295
    const/16 v5, 0xa

    aput-char v5, v3, v4

    .line 1292
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1297
    .end local v4    # "j":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1298
    .local v4, "sb":Ljava/lang/StringBuffer;
    iget-char v5, v1, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->type:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1299
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 1300
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1288
    .end local v1    # "v":Lcom/itextpdf/barcodes/BarcodePDF417$Segment;
    .end local v2    # "len":I
    .end local v3    # "c":[C
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1302
    .end local v0    # "k":I
    :cond_3
    return-void
.end method

.method public getAspectRatio()F
    .locals 1

    .line 1059
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->aspectRatio:F

    return v0
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4

    .line 692
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodePDF417;->paintCode()V

    .line 693
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    iget v1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->bitColumns:I

    int-to-float v1, v1

    iget v2, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0
.end method

.method public getBitColumns()I
    .locals 1

    .line 914
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->bitColumns:I

    return v0
.end method

.method public getCode()[B
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    return-object v0
.end method

.method public getCodeColumns()I
    .locals 1

    .line 943
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    return v0
.end method

.method public getCodeRows()I
    .locals 1

    .line 924
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    return v0
.end method

.method public getCodewords()[I
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    return-object v0
.end method

.method public getErrorLevel()I
    .locals 1

    .line 992
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->errorLevel:I

    return v0
.end method

.method public getLenCodewords()I
    .locals 1

    .line 973
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->lenCodewords:I

    return v0
.end method

.method protected getMaxSquare()I
    .locals 2

    .line 1305
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 1306
    const/16 v0, 0x1d

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    .line 1307
    const/16 v0, 0x20

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    goto :goto_0

    .line 1309
    :cond_0
    const/16 v0, 0x10

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    .line 1310
    const/16 v0, 0x3a

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    .line 1312
    :goto_0
    const/16 v0, 0x3a0

    return v0
.end method

.method public getOptions()I
    .locals 1

    .line 1040
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->options:I

    return v0
.end method

.method public getOutBits()[B
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->outBits:[B

    return-object v0
.end method

.method protected getSegmentLength(Lcom/itextpdf/barcodes/BarcodePDF417$Segment;)I
    .locals 2
    .param p1, "segment"    # Lcom/itextpdf/barcodes/BarcodePDF417$Segment;

    .line 1212
    if-nez p1, :cond_0

    .line 1213
    const/4 v0, 0x0

    return v0

    .line 1214
    :cond_0
    iget v0, p1, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->end:I

    iget v1, p1, Lcom/itextpdf/barcodes/BarcodePDF417$Segment;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getTextTypeAndValue(II)I
    .locals 1
    .param p1, "maxLength"    # I
    .param p2, "idx"    # I

    .line 1202
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    invoke-static {v0, p1, p2}, Lcom/itextpdf/barcodes/BarcodePDF417;->getTextTypeAndValue([BII)I

    move-result v0

    return v0
.end method

.method public getYHeight()F
    .locals 1

    .line 1078
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->yHeight:F

    return v0
.end method

.method protected numberCompaction(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 1218
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    invoke-direct {p0, v0, p1, p2}, Lcom/itextpdf/barcodes/BarcodePDF417;->numberCompaction([BII)V

    .line 1219
    return-void
.end method

.method protected outCodeword(I)V
    .locals 0
    .param p1, "codeword"    # I

    .line 1114
    invoke-virtual {p0, p1}, Lcom/itextpdf/barcodes/BarcodePDF417;->outCodeword17(I)V

    .line 1115
    return-void
.end method

.method protected outCodeword17(I)V
    .locals 7
    .param p1, "codeword"    # I

    .line 1091
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->bitPtr:I

    div-int/lit8 v1, v0, 0x8

    .line 1092
    .local v1, "bytePtr":I
    mul-int/lit8 v2, v1, 0x8

    sub-int v2, v0, v2

    .line 1093
    .local v2, "bit":I
    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->outBits:[B

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "bytePtr":I
    .local v4, "bytePtr":I
    aget-byte v5, v3, v1

    add-int/lit8 v6, v2, 0x9

    shr-int v6, p1, v6

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    .line 1094
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "bytePtr":I
    .restart local v1    # "bytePtr":I
    aget-byte v5, v3, v4

    add-int/lit8 v6, v2, 0x1

    shr-int v6, p1, v6

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1095
    shl-int/lit8 p1, p1, 0x8

    .line 1096
    aget-byte v4, v3, v1

    add-int/lit8 v5, v2, 0x1

    shr-int v5, p1, v5

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1097
    add-int/lit8 v0, v0, 0x11

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->bitPtr:I

    .line 1098
    return-void
.end method

.method protected outCodeword18(I)V
    .locals 7
    .param p1, "codeword"    # I

    .line 1101
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->bitPtr:I

    div-int/lit8 v1, v0, 0x8

    .line 1102
    .local v1, "bytePtr":I
    mul-int/lit8 v2, v1, 0x8

    sub-int v2, v0, v2

    .line 1103
    .local v2, "bit":I
    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->outBits:[B

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "bytePtr":I
    .local v4, "bytePtr":I
    aget-byte v5, v3, v1

    add-int/lit8 v6, v2, 0xa

    shr-int v6, p1, v6

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    .line 1104
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "bytePtr":I
    .restart local v1    # "bytePtr":I
    aget-byte v5, v3, v4

    add-int/lit8 v6, v2, 0x2

    shr-int v6, p1, v6

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1105
    shl-int/lit8 p1, p1, 0x8

    .line 1106
    aget-byte v4, v3, v1

    add-int/lit8 v5, v2, 0x2

    shr-int v5, p1, v5

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1107
    const/4 v4, 0x7

    if-ne v2, v4, :cond_0

    .line 1108
    add-int/lit8 v1, v1, 0x1

    aget-byte v4, v3, v1

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1109
    :cond_0
    add-int/lit8 v0, v0, 0x12

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->bitPtr:I

    .line 1110
    return-void
.end method

.method protected outPaintCode()V
    .locals 9

    .line 1126
    const/4 v0, 0x0

    .line 1127
    .local v0, "codePtr":I
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x11

    add-int/lit8 v1, v1, 0x12

    iput v1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->bitColumns:I

    .line 1128
    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    mul-int/2addr v1, v2

    .line 1129
    .local v1, "lenBits":I
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->outBits:[B

    .line 1130
    const/4 v2, 0x0

    .local v2, "row":I
    :goto_0
    iget v3, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    if-ge v2, v3, :cond_1

    .line 1131
    iget v3, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->bitColumns:I

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x8

    mul-int/2addr v3, v2

    iput v3, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->bitPtr:I

    .line 1132
    rem-int/lit8 v3, v2, 0x3

    .line 1133
    .local v3, "rowMod":I
    sget-object v4, Lcom/itextpdf/barcodes/BarcodePDF417;->CLUSTERS:[[I

    aget-object v4, v4, v3

    .line 1134
    .local v4, "cluster":[I
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodePDF417;->outStartPattern()V

    .line 1135
    const/4 v5, 0x0

    .line 1136
    .local v5, "edge":I
    packed-switch v3, :pswitch_data_0

    .line 1144
    div-int/lit8 v6, v2, 0x3

    mul-int/lit8 v6, v6, 0x1e

    iget v7, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    .end local v5    # "edge":I
    .local v6, "edge":I
    goto :goto_1

    .line 1141
    .end local v6    # "edge":I
    .restart local v5    # "edge":I
    :pswitch_0
    div-int/lit8 v6, v2, 0x3

    mul-int/lit8 v6, v6, 0x1e

    iget v7, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->errorLevel:I

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    iget v7, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    add-int/lit8 v7, v7, -0x1

    rem-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    .line 1142
    .end local v5    # "edge":I
    .restart local v6    # "edge":I
    goto :goto_1

    .line 1138
    .end local v6    # "edge":I
    .restart local v5    # "edge":I
    :pswitch_1
    div-int/lit8 v6, v2, 0x3

    mul-int/lit8 v6, v6, 0x1e

    iget v7, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    add-int/lit8 v7, v7, -0x1

    div-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    .line 1139
    .end local v5    # "edge":I
    .restart local v6    # "edge":I
    nop

    .line 1147
    :goto_1
    aget v5, v4, v6

    invoke-virtual {p0, v5}, Lcom/itextpdf/barcodes/BarcodePDF417;->outCodeword(I)V

    .line 1149
    const/4 v5, 0x0

    .local v5, "column":I
    :goto_2
    iget v7, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    if-ge v5, v7, :cond_0

    .line 1150
    iget-object v7, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    add-int/lit8 v8, v0, 0x1

    .end local v0    # "codePtr":I
    .local v8, "codePtr":I
    aget v0, v7, v0

    aget v0, v4, v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/barcodes/BarcodePDF417;->outCodeword(I)V

    .line 1149
    add-int/lit8 v5, v5, 0x1

    move v0, v8

    goto :goto_2

    .line 1153
    .end local v5    # "column":I
    .end local v8    # "codePtr":I
    .restart local v0    # "codePtr":I
    :cond_0
    packed-switch v3, :pswitch_data_1

    .line 1161
    div-int/lit8 v5, v2, 0x3

    mul-int/lit8 v5, v5, 0x1e

    iget v7, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->errorLevel:I

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v5, v7

    iget v7, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    add-int/lit8 v7, v7, -0x1

    rem-int/lit8 v7, v7, 0x3

    add-int/2addr v5, v7

    .end local v6    # "edge":I
    .local v5, "edge":I
    goto :goto_3

    .line 1158
    .end local v5    # "edge":I
    .restart local v6    # "edge":I
    :pswitch_2
    div-int/lit8 v5, v2, 0x3

    mul-int/lit8 v5, v5, 0x1e

    iget v7, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    add-int/lit8 v7, v7, -0x1

    div-int/lit8 v7, v7, 0x3

    add-int/2addr v5, v7

    .line 1159
    .end local v6    # "edge":I
    .restart local v5    # "edge":I
    goto :goto_3

    .line 1155
    .end local v5    # "edge":I
    .restart local v6    # "edge":I
    :pswitch_3
    div-int/lit8 v5, v2, 0x3

    mul-int/lit8 v5, v5, 0x1e

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    .line 1156
    .end local v6    # "edge":I
    .restart local v5    # "edge":I
    nop

    .line 1164
    :goto_3
    aget v6, v4, v5

    invoke-virtual {p0, v6}, Lcom/itextpdf/barcodes/BarcodePDF417;->outCodeword(I)V

    .line 1165
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodePDF417;->outStopPattern()V

    .line 1130
    .end local v3    # "rowMod":I
    .end local v4    # "cluster":[I
    .end local v5    # "edge":I
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1167
    .end local v2    # "row":I
    :cond_1
    iget v2, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->options:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    .line 1168
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_4
    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->outBits:[B

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 1169
    aget-byte v4, v3, v2

    xor-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 1168
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1171
    .end local v2    # "k":I
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected outStartPattern()V
    .locals 1

    .line 1122
    const v0, 0x1fea8

    invoke-virtual {p0, v0}, Lcom/itextpdf/barcodes/BarcodePDF417;->outCodeword17(I)V

    .line 1123
    return-void
.end method

.method protected outStopPattern()V
    .locals 1

    .line 1118
    const v0, 0x3fa29

    invoke-virtual {p0, v0}, Lcom/itextpdf/barcodes/BarcodePDF417;->outCodeword18(I)V

    .line 1119
    return-void
.end method

.method public paintCode()V
    .locals 21

    .line 727
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->options:I

    and-int/lit8 v1, v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 728
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->lenCodewords:I

    const/16 v4, 0x39e

    if-gt v1, v4, :cond_0

    if-lt v1, v3, :cond_0

    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    aget v4, v4, v2

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 729
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Invalid codeword size."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 732
    :cond_1
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    if-eqz v1, :cond_1d

    .line 734
    array-length v1, v1

    const/16 v4, 0x152c

    if-gt v1, v4, :cond_1c

    .line 737
    new-instance v1, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    invoke-direct {v1}, Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;-><init>()V

    iput-object v1, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodePDF417;->breakString()V

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodePDF417;->assemble()V

    .line 741
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->segmentList:Lcom/itextpdf/barcodes/BarcodePDF417$SegmentList;

    .line 742
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    iget v4, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    iput v4, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->lenCodewords:I

    aput v4, v1, v2

    .line 744
    :goto_0
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->lenCodewords:I

    const/16 v4, 0x3a0

    rsub-int v1, v1, 0x3a0

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodePDF417;->maxPossibleErrorLevel(I)I

    move-result v1

    .line 745
    .local v1, "maxErr":I
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->options:I

    and-int/lit8 v6, v5, 0x10

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-nez v6, :cond_5

    .line 746
    iget v6, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->lenCodewords:I

    const/16 v9, 0x29

    if-ge v6, v9, :cond_2

    .line 747
    iput v7, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->errorLevel:I

    goto :goto_1

    .line 748
    :cond_2
    const/16 v9, 0xa1

    if-ge v6, v9, :cond_3

    .line 749
    iput v8, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->errorLevel:I

    goto :goto_1

    .line 750
    :cond_3
    const/16 v9, 0x141

    if-ge v6, v9, :cond_4

    .line 751
    const/4 v6, 0x4

    iput v6, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->errorLevel:I

    goto :goto_1

    .line 753
    :cond_4
    const/4 v6, 0x5

    iput v6, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->errorLevel:I

    .line 755
    :cond_5
    :goto_1
    iget v6, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->errorLevel:I

    if-gez v6, :cond_6

    .line 756
    iput v2, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->errorLevel:I

    goto :goto_2

    .line 757
    :cond_6
    if-le v6, v1, :cond_7

    .line 758
    iput v1, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->errorLevel:I

    .line 759
    :cond_7
    :goto_2
    iget v6, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    const/16 v9, 0x1e

    if-ge v6, v3, :cond_8

    .line 760
    iput v3, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    goto :goto_3

    .line 761
    :cond_8
    if-le v6, v9, :cond_9

    .line 762
    iput v9, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    .line 763
    :cond_9
    :goto_3
    iget v6, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    const/16 v10, 0x5a

    if-ge v6, v8, :cond_a

    .line 764
    iput v8, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    goto :goto_4

    .line 765
    :cond_a
    if-le v6, v10, :cond_b

    .line 766
    iput v10, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    .line 767
    :cond_b
    :goto_4
    iget v6, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->errorLevel:I

    shl-int v6, v7, v6

    .line 768
    .local v6, "lenErr":I
    and-int/lit8 v11, v5, 0x4

    if-nez v11, :cond_c

    move v11, v3

    goto :goto_5

    :cond_c
    move v11, v2

    .line 769
    .local v11, "fixedColumn":Z
    :goto_5
    const/4 v12, 0x0

    .line 770
    .local v12, "skipRowColAdjust":Z
    iget v13, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->lenCodewords:I

    add-int v14, v13, v6

    .line 771
    .local v14, "tot":I
    and-int/lit8 v15, v5, 0x1

    if-eqz v15, :cond_f

    .line 772
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    iget v13, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    mul-int/2addr v5, v13

    .line 773
    .end local v14    # "tot":I
    .local v5, "tot":I
    if-le v5, v4, :cond_d

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodePDF417;->getMaxSquare()I

    move-result v5

    move v14, v5

    goto :goto_6

    .line 773
    :cond_d
    move v14, v5

    .line 776
    .end local v5    # "tot":I
    .restart local v14    # "tot":I
    :goto_6
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->lenCodewords:I

    add-int v13, v5, v6

    if-ge v14, v13, :cond_e

    .line 777
    add-int v14, v5, v6

    goto :goto_9

    .line 779
    :cond_e
    const/4 v12, 0x1

    goto :goto_9

    .line 780
    :cond_f
    and-int/lit8 v5, v5, 0x6

    if-nez v5, :cond_14

    .line 782
    const/4 v11, 0x1

    .line 783
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->aspectRatio:F

    move/from16 v16, v11

    .end local v11    # "fixedColumn":Z
    .local v16, "fixedColumn":Z
    float-to-double v10, v5

    const-wide v17, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v10, v10, v17

    if-gez v10, :cond_10

    .line 784
    const v5, 0x3a83126f    # 0.001f

    iput v5, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->aspectRatio:F

    goto :goto_7

    .line 785
    :cond_10
    const/high16 v10, 0x447a0000    # 1000.0f

    cmpl-float v5, v5, v10

    if-lez v5, :cond_11

    .line 786
    iput v10, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->aspectRatio:F

    .line 787
    :cond_11
    :goto_7
    const/high16 v5, 0x42920000    # 73.0f

    iget v10, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->aspectRatio:F

    mul-float/2addr v5, v10

    const/high16 v11, 0x40800000    # 4.0f

    sub-float/2addr v5, v11

    float-to-double v4, v5

    .line 788
    .local v4, "b":D
    neg-double v7, v4

    mul-double v19, v4, v4

    const/high16 v11, 0x42880000    # 68.0f

    mul-float/2addr v10, v11

    add-int/2addr v13, v6

    int-to-float v11, v13

    mul-float/2addr v10, v11

    iget v11, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->yHeight:F

    mul-float/2addr v10, v11

    float-to-double v10, v10

    add-double v19, v19, v10

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    add-double/2addr v7, v10

    const/high16 v10, 0x42080000    # 34.0f

    iget v11, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->aspectRatio:F

    mul-float/2addr v11, v10

    float-to-double v10, v11

    div-double/2addr v7, v10

    .line 789
    .local v7, "c":D
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v7

    double-to-int v10, v10

    iput v10, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    .line 790
    if-ge v10, v3, :cond_12

    .line 791
    iput v3, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    goto :goto_8

    .line 792
    :cond_12
    if-le v10, v9, :cond_13

    .line 793
    iput v9, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    .line 795
    .end local v4    # "b":D
    .end local v7    # "c":D
    :cond_13
    :goto_8
    move/from16 v11, v16

    .end local v16    # "fixedColumn":Z
    .restart local v11    # "fixedColumn":Z
    :cond_14
    :goto_9
    if-nez v12, :cond_18

    .line 796
    if-eqz v11, :cond_16

    .line 797
    add-int/lit8 v4, v14, -0x1

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    div-int/2addr v4, v5

    add-int/2addr v4, v3

    iput v4, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    .line 798
    const/4 v5, 0x3

    if-ge v4, v5, :cond_15

    .line 799
    iput v5, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    goto :goto_a

    .line 800
    :cond_15
    const/16 v5, 0x5a

    if-le v4, v5, :cond_17

    .line 801
    iput v5, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    .line 802
    add-int/lit8 v4, v14, -0x1

    div-int/2addr v4, v5

    add-int/2addr v4, v3

    iput v4, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    goto :goto_a

    .line 805
    :cond_16
    add-int/lit8 v4, v14, -0x1

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    div-int/2addr v4, v5

    add-int/2addr v4, v3

    iput v4, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    .line 806
    if-le v4, v9, :cond_17

    .line 807
    iput v9, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    .line 808
    add-int/lit8 v4, v14, -0x1

    div-int/2addr v4, v9

    add-int/2addr v4, v3

    iput v4, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    .line 811
    :cond_17
    :goto_a
    iget v3, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    iget v4, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    mul-int v14, v3, v4

    .line 813
    :cond_18
    const/16 v3, 0x3a0

    if-le v14, v3, :cond_19

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodePDF417;->getMaxSquare()I

    move-result v14

    .line 816
    :cond_19
    iget v3, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->lenCodewords:I

    sub-int v3, v14, v3

    invoke-static {v3}, Lcom/itextpdf/barcodes/BarcodePDF417;->maxPossibleErrorLevel(I)I

    move-result v3

    iput v3, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->errorLevel:I

    .line 817
    const/4 v4, 0x2

    shl-int v3, v4, v3

    .line 818
    .end local v6    # "lenErr":I
    .local v3, "lenErr":I
    sub-int v4, v14, v3

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->lenCodewords:I

    sub-int/2addr v4, v5

    .line 819
    .local v4, "pad":I
    iget v6, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->options:I

    and-int/lit16 v6, v6, 0x100

    const/16 v7, 0x384

    if-eqz v6, :cond_1a

    .line 821
    iget-object v6, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    iget v8, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->macroIndex:I

    add-int v9, v8, v4

    sub-int/2addr v5, v8

    invoke-static {v6, v8, v6, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 822
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->lenCodewords:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    .line 823
    :goto_b
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "pad":I
    .local v5, "pad":I
    if-eqz v4, :cond_1b

    .line 824
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    iget v6, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->macroIndex:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->macroIndex:I

    aput v7, v4, v6

    move v4, v5

    goto :goto_b

    .line 826
    .end local v5    # "pad":I
    .restart local v4    # "pad":I
    :cond_1a
    iput v5, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    .line 827
    :goto_c
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "pad":I
    .restart local v5    # "pad":I
    if-eqz v4, :cond_1b

    .line 828
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    iget v6, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    aput v7, v4, v6

    move v4, v5

    goto :goto_c

    .line 830
    :cond_1b
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codewords:[I

    iget v6, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->cwPtr:I

    iput v6, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->lenCodewords:I

    aput v6, v4, v2

    .line 831
    invoke-virtual {v0, v6}, Lcom/itextpdf/barcodes/BarcodePDF417;->calculateErrorCorrection(I)V

    .line 832
    iput v14, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->lenCodewords:I

    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodePDF417;->outPaintCode()V

    .line 834
    return-void

    .line 735
    .end local v1    # "maxErr":I
    .end local v3    # "lenErr":I
    .end local v5    # "pad":I
    .end local v11    # "fixedColumn":Z
    .end local v12    # "skipRowColAdjust":Z
    .end local v14    # "tot":I
    :cond_1c
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Text is too big."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 733
    :cond_1d
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Text cannot be null."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "foreground"    # Lcom/itextpdf/kernel/colors/Color;

    .line 698
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/itextpdf/barcodes/BarcodePDF417;->placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;FF)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;FF)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 18
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "foreground"    # Lcom/itextpdf/kernel/colors/Color;
    .param p3, "moduleWidth"    # F
    .param p4, "moduleHeight"    # F

    .line 702
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodePDF417;->paintCode()V

    .line 703
    iget v3, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->bitColumns:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    .line 704
    .local v3, "stride":I
    if-eqz p2, :cond_0

    .line 705
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 707
    :cond_0
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    if-ge v4, v5, :cond_3

    .line 708
    mul-int v5, v4, v3

    .line 709
    .local v5, "p":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    iget v7, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->bitColumns:I

    if-ge v6, v7, :cond_2

    .line 710
    iget-object v7, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->outBits:[B

    div-int/lit8 v8, v6, 0x8

    add-int/2addr v8, v5

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    .line 711
    .local v7, "b":I
    rem-int/lit8 v8, v6, 0x8

    shl-int/2addr v7, v8

    .line 712
    and-int/lit16 v8, v7, 0x80

    if-eqz v8, :cond_1

    .line 713
    int-to-float v8, v6

    mul-float/2addr v8, v1

    float-to-double v10, v8

    iget v8, v0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    sub-int/2addr v8, v4

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float/2addr v8, v2

    float-to-double v12, v8

    float-to-double v14, v1

    float-to-double v8, v2

    move-wide/from16 v16, v8

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v17}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 709
    .end local v7    # "b":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 707
    .end local v5    # "p":I
    .end local v6    # "j":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 717
    .end local v4    # "k":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 719
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodePDF417;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    return-object v4
.end method

.method public setAspectRatio(F)V
    .locals 0
    .param p1, "aspectRatio"    # F

    .line 1069
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->aspectRatio:F

    .line 1070
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 1031
    const-string v0, "cp437"

    invoke-static {p1, v0}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    .line 1032
    return-void
.end method

.method public setCode([B)V
    .locals 0
    .param p1, "code"    # [B

    .line 1021
    iput-object p1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    .line 1022
    return-void
.end method

.method public setCodeColumns(I)V
    .locals 0
    .param p1, "codeColumns"    # I

    .line 953
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeColumns:I

    .line 954
    return-void
.end method

.method public setCodeRows(I)V
    .locals 0
    .param p1, "codeRows"    # I

    .line 934
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->codeRows:I

    .line 935
    return-void
.end method

.method public setDefaultParameters()V
    .locals 2

    .line 683
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->options:I

    .line 684
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->outBits:[B

    .line 685
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    .line 686
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->yHeight:F

    .line 687
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->aspectRatio:F

    .line 688
    return-void
.end method

.method public setErrorLevel(I)V
    .locals 0
    .param p1, "errorLevel"    # I

    .line 1001
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->errorLevel:I

    .line 1002
    return-void
.end method

.method public setLenCodewords(I)V
    .locals 0
    .param p1, "lenCodewords"    # I

    .line 982
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->lenCodewords:I

    .line 983
    return-void
.end method

.method public setMacroFileId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 675
    iput-object p1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->macroFileId:Ljava/lang/String;

    .line 676
    return-void
.end method

.method public setMacroSegmentCount(I)V
    .locals 0
    .param p1, "cnt"    # I

    .line 666
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->macroSegmentCount:I

    .line 667
    return-void
.end method

.method public setMacroSegmentId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 656
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->macroSegmentId:I

    .line 657
    return-void
.end method

.method public setOptions(I)V
    .locals 0
    .param p1, "options"    # I

    .line 1050
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->options:I

    .line 1051
    return-void
.end method

.method public setYHeight(F)V
    .locals 0
    .param p1, "yHeight"    # F

    .line 1087
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->yHeight:F

    .line 1088
    return-void
.end method

.method protected textCompaction(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 1194
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePDF417;->code:[B

    invoke-direct {p0, v0, p1, p2}, Lcom/itextpdf/barcodes/BarcodePDF417;->textCompaction([BII)V

    .line 1195
    return-void
.end method
