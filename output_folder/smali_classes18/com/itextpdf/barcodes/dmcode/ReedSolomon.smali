.class public final Lcom/itextpdf/barcodes/dmcode/ReedSolomon;
.super Ljava/lang/Object;
.source "ReedSolomon.java"


# static fields
.field private static final alog:[I

.field private static final log:[I

.field private static final poly10:[I

.field private static final poly11:[I

.field private static final poly12:[I

.field private static final poly14:[I

.field private static final poly18:[I

.field private static final poly20:[I

.field private static final poly24:[I

.field private static final poly28:[I

.field private static final poly36:[I

.field private static final poly42:[I

.field private static final poly48:[I

.field private static final poly5:[I

.field private static final poly56:[I

.field private static final poly62:[I

.field private static final poly68:[I

.field private static final poly7:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const/16 v0, 0x100

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->log:[I

    .line 67
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->alog:[I

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly5:[I

    .line 90
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly7:[I

    .line 94
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly10:[I

    .line 98
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly11:[I

    .line 102
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly12:[I

    .line 106
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly14:[I

    .line 110
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly18:[I

    .line 115
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly20:[I

    .line 120
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly24:[I

    .line 125
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly28:[I

    .line 130
    const/16 v0, 0x24

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly36:[I

    .line 136
    const/16 v0, 0x2a

    new-array v0, v0, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly42:[I

    .line 142
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly48:[I

    .line 148
    const/16 v0, 0x38

    new-array v0, v0, [I

    fill-array-data v0, :array_f

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly56:[I

    .line 155
    const/16 v0, 0x3e

    new-array v0, v0, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly62:[I

    .line 162
    const/16 v0, 0x44

    new-array v0, v0, [I

    fill-array-data v0, :array_11

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly68:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
        0x1
        0xf0
        0x2
        0xe1
        0xf1
        0x35
        0x3
        0x26
        0xe2
        0x85
        0xf2
        0x2b
        0x36
        0xd2
        0x4
        0xc3
        0x27
        0x72
        0xe3
        0x6a
        0x86
        0x1c
        0xf3
        0x8c
        0x2c
        0x17
        0x37
        0x76
        0xd3
        0xea
        0x5
        0xdb
        0xc4
        0x60
        0x28
        0xde
        0x73
        0x67
        0xe4
        0x4e
        0x6b
        0x7d
        0x87
        0x8
        0x1d
        0xa2
        0xf4
        0xba
        0x8d
        0xb4
        0x2d
        0x63
        0x18
        0x31
        0x38
        0xd
        0x77
        0x99
        0xd4
        0xc7
        0xeb
        0x5b
        0x6
        0x4c
        0xdc
        0xd9
        0xc5
        0xb
        0x61
        0xb8
        0x29
        0x24
        0xdf
        0xfd
        0x74
        0x8a
        0x68
        0xc1
        0xe5
        0x56
        0x4f
        0xab
        0x6c
        0xa5
        0x7e
        0x91
        0x88
        0x22
        0x9
        0x4a
        0x1e
        0x20
        0xa3
        0x54
        0xf5
        0xad
        0xbb
        0xcc
        0x8e
        0x51
        0xb5
        0xbe
        0x2e
        0x58
        0x64
        0x9f
        0x19
        0xe7
        0x32
        0xcf
        0x39
        0x93
        0xe
        0x43
        0x78
        0x80
        0x9a
        0xf8
        0xd5
        0xa7
        0xc8
        0x3f
        0xec
        0x6e
        0x5c
        0xb0
        0x7
        0xa1
        0x4d
        0x7c
        0xdd
        0x66
        0xda
        0x5f
        0xc6
        0x5a
        0xc
        0x98
        0x62
        0x30
        0xb9
        0xb3
        0x2a
        0xd1
        0x25
        0x84
        0xe0
        0x34
        0xfe
        0xef
        0x75
        0xe9
        0x8b
        0x16
        0x69
        0x1b
        0xc2
        0x71
        0xe6
        0xce
        0x57
        0x9e
        0x50
        0xbd
        0xac
        0xcb
        0x6d
        0xaf
        0xa6
        0x3e
        0x7f
        0xf7
        0x92
        0x42
        0x89
        0xc0
        0x23
        0xfc
        0xa
        0xb7
        0x4b
        0xd8
        0x1f
        0x53
        0x21
        0x49
        0xa4
        0x90
        0x55
        0xaa
        0xf6
        0x41
        0xae
        0x3d
        0xbc
        0xca
        0xcd
        0x9d
        0x8f
        0xa9
        0x52
        0x48
        0xb6
        0xd7
        0xbf
        0xfb
        0x2f
        0xb2
        0x59
        0x97
        0x65
        0x5e
        0xa0
        0x7b
        0x1a
        0x70
        0xe8
        0x15
        0x33
        0xee
        0xd0
        0x83
        0x3a
        0x45
        0x94
        0x12
        0xf
        0x10
        0x44
        0x11
        0x79
        0x95
        0x81
        0x13
        0x9b
        0x3b
        0xf9
        0x46
        0xd6
        0xfa
        0xa8
        0x47
        0xc9
        0x9c
        0x40
        0x3c
        0xed
        0x82
        0x6f
        0x14
        0x5d
        0x7a
        0xb1
        0x96
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x2d
        0x5a
        0xb4
        0x45
        0x8a
        0x39
        0x72
        0xe4
        0xe5
        0xe7
        0xe3
        0xeb
        0xfb
        0xdb
        0x9b
        0x1b
        0x36
        0x6c
        0xd8
        0x9d
        0x17
        0x2e
        0x5c
        0xb8
        0x5d
        0xba
        0x59
        0xb2
        0x49
        0x92
        0x9
        0x12
        0x24
        0x48
        0x90
        0xd
        0x1a
        0x34
        0x68
        0xd0
        0x8d
        0x37
        0x6e
        0xdc
        0x95
        0x7
        0xe
        0x1c
        0x38
        0x70
        0xe0
        0xed
        0xf7
        0xc3
        0xab
        0x7b
        0xf6
        0xc1
        0xaf
        0x73
        0xe6
        0xe1
        0xef
        0xf3
        0xcb
        0xbb
        0x5b
        0xb6
        0x41
        0x82
        0x29
        0x52
        0xa4
        0x65
        0xca
        0xb9
        0x5f
        0xbe
        0x51
        0xa2
        0x69
        0xd2
        0x89
        0x3f
        0x7e
        0xfc
        0xd5
        0x87
        0x23
        0x46
        0x8c
        0x35
        0x6a
        0xd4
        0x85
        0x27
        0x4e
        0x9c
        0x15
        0x2a
        0x54
        0xa8
        0x7d
        0xfa
        0xd9
        0x9f
        0x13
        0x26
        0x4c
        0x98
        0x1d
        0x3a
        0x74
        0xe8
        0xfd
        0xd7
        0x83
        0x2b
        0x56
        0xac
        0x75
        0xea
        0xf9
        0xdf
        0x93
        0xb
        0x16
        0x2c
        0x58
        0xb0
        0x4d
        0x9a
        0x19
        0x32
        0x64
        0xc8
        0xbd
        0x57
        0xae
        0x71
        0xe2
        0xe9
        0xff
        0xd3
        0x8b
        0x3b
        0x76
        0xec
        0xf5
        0xc7
        0xa3
        0x6b
        0xd6
        0x81
        0x2f
        0x5e
        0xbc
        0x55
        0xaa
        0x79
        0xf2
        0xc9
        0xbf
        0x53
        0xa6
        0x61
        0xc2
        0xa9
        0x7f
        0xfe
        0xd1
        0x8f
        0x33
        0x66
        0xcc
        0xb5
        0x47
        0x8e
        0x31
        0x62
        0xc4
        0xa5
        0x67
        0xce
        0xb1
        0x4f
        0x9e
        0x11
        0x22
        0x44
        0x88
        0x3d
        0x7a
        0xf4
        0xc5
        0xa7
        0x63
        0xc6
        0xa1
        0x6f
        0xde
        0x91
        0xf
        0x1e
        0x3c
        0x78
        0xf0
        0xcd
        0xb7
        0x43
        0x86
        0x21
        0x42
        0x84
        0x25
        0x4a
        0x94
        0x5
        0xa
        0x14
        0x28
        0x50
        0xa0
        0x6d
        0xda
        0x99
        0x1f
        0x3e
        0x7c
        0xf8
        0xdd
        0x97
        0x3
        0x6
        0xc
        0x18
        0x30
        0x60
        0xc0
        0xad
        0x77
        0xee
        0xf1
        0xcf
        0xb3
        0x4b
        0x96
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe4
        0x30
        0xf
        0x6f
        0x3e
    .end array-data

    :array_3
    .array-data 4
        0x17
        0x44
        0x90
        0x86
        0xf0
        0x5c
        0xfe
    .end array-data

    :array_4
    .array-data 4
        0x1c
        0x18
        0xb9
        0xa6
        0xdf
        0xf8
        0x74
        0xff
        0x6e
        0x3d
    .end array-data

    :array_5
    .array-data 4
        0xaf
        0x8a
        0xcd
        0xc
        0xc2
        0xa8
        0x27
        0xf5
        0x3c
        0x61
        0x78
    .end array-data

    :array_6
    .array-data 4
        0x29
        0x99
        0x9e
        0x5b
        0x3d
        0x2a
        0x8e
        0xd5
        0x61
        0xb2
        0x64
        0xf2
    .end array-data

    :array_7
    .array-data 4
        0x9c
        0x61
        0xc0
        0xfc
        0x5f
        0x9
        0x9d
        0x77
        0x8a
        0x2d
        0x12
        0xba
        0x53
        0xb9
    .end array-data

    :array_8
    .array-data 4
        0x53
        0xc3
        0x64
        0x27
        0xbc
        0x4b
        0x42
        0x3d
        0xf1
        0xd5
        0x6d
        0x81
        0x5e
        0xfe
        0xe1
        0x30
        0x5a
        0xbc
    .end array-data

    :array_9
    .array-data 4
        0xf
        0xc3
        0xf4
        0x9
        0xe9
        0x47
        0xa8
        0x2
        0xbc
        0xa0
        0x99
        0x91
        0xfd
        0x4f
        0x6c
        0x52
        0x1b
        0xae
        0xba
        0xac
    .end array-data

    :array_a
    .array-data 4
        0x34
        0xbe
        0x58
        0xcd
        0x6d
        0x27
        0xb0
        0x15
        0x9b
        0xc5
        0xfb
        0xdf
        0x9b
        0x15
        0x5
        0xac
        0xfe
        0x7c
        0xc
        0xb5
        0xb8
        0x60
        0x32
        0xc1
    .end array-data

    :array_b
    .array-data 4
        0xd3
        0xe7
        0x2b
        0x61
        0x47
        0x60
        0x67
        0xae
        0x25
        0x97
        0xaa
        0x35
        0x4b
        0x22
        0xf9
        0x79
        0x11
        0x8a
        0x6e
        0xd5
        0x8d
        0x88
        0x78
        0x97
        0xe9
        0xa8
        0x5d
        0xff
    .end array-data

    :array_c
    .array-data 4
        0xf5
        0x7f
        0xf2
        0xda
        0x82
        0xfa
        0xa2
        0xb5
        0x66
        0x78
        0x54
        0xb3
        0xdc
        0xfb
        0x50
        0xb6
        0xe5
        0x12
        0x2
        0x4
        0x44
        0x21
        0x65
        0x89
        0x5f
        0x77
        0x73
        0x2c
        0xaf
        0xb8
        0x3b
        0x19
        0xe1
        0x62
        0x51
        0x70
    .end array-data

    :array_d
    .array-data 4
        0x4d
        0xc1
        0x89
        0x1f
        0x13
        0x26
        0x16
        0x99
        0xf7
        0x69
        0x7a
        0x2
        0xf5
        0x85
        0xf2
        0x8
        0xaf
        0x5f
        0x64
        0x9
        0xa7
        0x69
        0xd6
        0x6f
        0x39
        0x79
        0x15
        0x1
        0xfd
        0x39
        0x36
        0x65
        0xf8
        0xca
        0x45
        0x32
        0x96
        0xb1
        0xe2
        0x5
        0x9
        0x5
    .end array-data

    :array_e
    .array-data 4
        0xf5
        0x84
        0xac
        0xdf
        0x60
        0x20
        0x75
        0x16
        0xee
        0x85
        0xee
        0xe7
        0xcd
        0xbc
        0xed
        0x57
        0xbf
        0x6a
        0x10
        0x93
        0x76
        0x17
        0x25
        0x5a
        0xaa
        0xcd
        0x83
        0x58
        0x78
        0x64
        0x42
        0x8a
        0xba
        0xf0
        0x52
        0x2c
        0xb0
        0x57
        0xbb
        0x93
        0xa0
        0xaf
        0x45
        0xd5
        0x5c
        0xfd
        0xe1
        0x13
    .end array-data

    :array_f
    .array-data 4
        0xaf
        0x9
        0xdf
        0xee
        0xc
        0x11
        0xdc
        0xd0
        0x64
        0x1d
        0xaf
        0xaa
        0xe6
        0xc0
        0xd7
        0xeb
        0x96
        0x9f
        0x24
        0xdf
        0x26
        0xc8
        0x84
        0x36
        0xe4
        0x92
        0xda
        0xea
        0x75
        0xcb
        0x1d
        0xe8
        0x90
        0xee
        0x16
        0x96
        0xc9
        0x75
        0x3e
        0xcf
        0xa4
        0xd
        0x89
        0xf5
        0x7f
        0x43
        0xf7
        0x1c
        0x9b
        0x2b
        0xcb
        0x6b
        0xe9
        0x35
        0x8f
        0x2e
    .end array-data

    :array_10
    .array-data 4
        0xf2
        0x5d
        0xa9
        0x32
        0x90
        0xd2
        0x27
        0x76
        0xca
        0xbc
        0xc9
        0xbd
        0x8f
        0x6c
        0xc4
        0x25
        0xb9
        0x70
        0x86
        0xe6
        0xf5
        0x3f
        0xc5
        0xbe
        0xfa
        0x6a
        0xb9
        0xdd
        0xaf
        0x40
        0x72
        0x47
        0xa1
        0x2c
        0x93
        0x6
        0x1b
        0xda
        0x33
        0x3f
        0x57
        0xa
        0x28
        0x82
        0xbc
        0x11
        0xa3
        0x1f
        0xb0
        0xaa
        0x4
        0x6b
        0xe8
        0x7
        0x5e
        0xa6
        0xe0
        0x7c
        0x56
        0x2f
        0xb
        0xcc
    .end array-data

    :array_11
    .array-data 4
        0xdc
        0xe4
        0xad
        0x59
        0xfb
        0x95
        0x9f
        0x38
        0x59
        0x21
        0x93
        0xf4
        0x9a
        0x24
        0x49
        0x7f
        0xd5
        0x88
        0xf8
        0xb4
        0xea
        0xc5
        0x9e
        0xb1
        0x44
        0x7a
        0x5d
        0xd5
        0xf
        0xa0
        0xe3
        0xec
        0x42
        0x8b
        0x99
        0xb9
        0xca
        0xa7
        0xb3
        0x19
        0xdc
        0xe8
        0x60
        0xd2
        0xe7
        0x88
        0xdf
        0xef
        0xb5
        0xf1
        0x3b
        0x34
        0xac
        0x19
        0x31
        0xe8
        0xd3
        0xbd
        0x40
        0x36
        0x6c
        0x99
        0x84
        0x3f
        0x60
        0x67
        0x52
        0xba
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateECC([BIII)V
    .locals 9
    .param p0, "wd"    # [B
    .param p1, "nd"    # I
    .param p2, "datablock"    # I
    .param p3, "nc"    # I

    .line 228
    add-int/lit8 v0, p1, 0x2

    div-int/2addr v0, p2

    .line 230
    .local v0, "blocks":I
    const/16 v1, 0x100

    new-array v2, v1, [B

    .line 231
    .local v2, "buf":[B
    new-array v1, v1, [B

    .line 232
    .local v1, "ecc":[B
    invoke-static {p3}, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->getPoly(I)[I

    move-result-object v3

    .line 233
    .local v3, "c":[I
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 234
    const/4 v5, 0x0

    .line 235
    .local v5, "p":I
    move v6, v4

    .local v6, "n":I
    :goto_1
    if-ge v6, p1, :cond_0

    .line 236
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "p":I
    .local v7, "p":I
    aget-byte v8, p0, v6

    aput-byte v8, v2, v5

    .line 235
    add-int/2addr v6, v0

    move v5, v7

    goto :goto_1

    .line 237
    .end local v7    # "p":I
    .restart local v5    # "p":I
    :cond_0
    invoke-static {v2, v5, v1, p3, v3}, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->reedSolomonBlock([BI[BI[I)V

    .line 238
    const/4 v5, 0x0

    .line 239
    move v6, v4

    :goto_2
    mul-int v7, p3, v0

    if-ge v6, v7, :cond_1

    .line 240
    add-int v7, p1, v6

    add-int/lit8 v8, v5, 0x1

    .end local v5    # "p":I
    .local v8, "p":I
    aget-byte v5, v1, v5

    aput-byte v5, p0, v7

    .line 239
    add-int/2addr v6, v0

    move v5, v8

    goto :goto_2

    .line 233
    .end local v6    # "n":I
    .end local v8    # "p":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 242
    :cond_2
    return-void
.end method

.method private static getPoly(I)[I
    .locals 1
    .param p0, "nc"    # I

    .line 171
    sparse-switch p0, :sswitch_data_0

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 203
    :sswitch_0
    sget-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly68:[I

    return-object v0

    .line 201
    :sswitch_1
    sget-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly62:[I

    return-object v0

    .line 199
    :sswitch_2
    sget-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly56:[I

    return-object v0

    .line 197
    :sswitch_3
    sget-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly48:[I

    return-object v0

    .line 195
    :sswitch_4
    sget-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly42:[I

    return-object v0

    .line 193
    :sswitch_5
    sget-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly36:[I

    return-object v0

    .line 191
    :sswitch_6
    sget-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly28:[I

    return-object v0

    .line 189
    :sswitch_7
    sget-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly24:[I

    return-object v0

    .line 187
    :sswitch_8
    sget-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly20:[I

    return-object v0

    .line 185
    :sswitch_9
    sget-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly18:[I

    return-object v0

    .line 183
    :sswitch_a
    sget-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly14:[I

    return-object v0

    .line 181
    :sswitch_b
    sget-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly12:[I

    return-object v0

    .line 179
    :sswitch_c
    sget-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly11:[I

    return-object v0

    .line 177
    :sswitch_d
    sget-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly10:[I

    return-object v0

    .line 175
    :sswitch_e
    sget-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly7:[I

    return-object v0

    .line 173
    :sswitch_f
    sget-object v0, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->poly5:[I

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_f
        0x7 -> :sswitch_e
        0xa -> :sswitch_d
        0xb -> :sswitch_c
        0xc -> :sswitch_b
        0xe -> :sswitch_a
        0x12 -> :sswitch_9
        0x14 -> :sswitch_8
        0x18 -> :sswitch_7
        0x1c -> :sswitch_6
        0x24 -> :sswitch_5
        0x2a -> :sswitch_4
        0x30 -> :sswitch_3
        0x38 -> :sswitch_2
        0x3e -> :sswitch_1
        0x44 -> :sswitch_0
    .end sparse-switch
.end method

.method private static reedSolomonBlock([BI[BI[I)V
    .locals 9
    .param p0, "wd"    # [B
    .param p1, "nd"    # I
    .param p2, "ncout"    # [B
    .param p3, "nc"    # I
    .param p4, "c"    # [I

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-gt v0, p3, :cond_0

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    .line 213
    aget-byte v2, p2, v1

    aget-byte v3, p0, v0

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 214
    .local v2, "k":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, p3, :cond_2

    .line 215
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, p2, v4

    if-nez v2, :cond_1

    move v5, v1

    goto :goto_3

    :cond_1
    sget-object v5, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->alog:[I

    sget-object v6, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->log:[I

    aget v7, v6, v2

    sub-int v8, p3, v3

    add-int/lit8 v8, v8, -0x1

    aget v8, p4, v8

    aget v6, v6, v8

    add-int/2addr v7, v6

    rem-int/lit16 v7, v7, 0xff

    aget v5, v5, v7

    int-to-byte v5, v5

    :goto_3
    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 214
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 212
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    .end local v2    # "k":I
    .end local v3    # "j":I
    :cond_3
    return-void
.end method
