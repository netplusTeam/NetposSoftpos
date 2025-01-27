.class final Lcom/itextpdf/barcodes/qrcode/MatrixUtil;
.super Ljava/lang/Object;
.source "MatrixUtil.java"


# static fields
.field private static final HORIZONTAL_SEPARATION_PATTERN:[[I

.field private static final POSITION_ADJUSTMENT_PATTERN:[[I

.field private static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

.field private static final POSITION_DETECTION_PATTERN:[[I

.field private static final TYPE_INFO_COORDINATES:[[I

.field private static final TYPE_INFO_MASK_PATTERN:I = 0x5412

.field private static final TYPE_INFO_POLY:I = 0x537

.field private static final VERSION_INFO_POLY:I = 0x1f25

.field private static final VERTICAL_SEPARATION_PATTERN:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 55
    const/4 v0, 0x7

    new-array v1, v0, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v2, v0, [I

    fill-array-data v2, :array_3

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-array v2, v0, [I

    fill-array-data v2, :array_4

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-array v2, v0, [I

    fill-array-data v2, :array_5

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-array v2, v0, [I

    fill-array-data v2, :array_6

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sput-object v1, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    .line 65
    new-array v1, v4, [[I

    const/16 v2, 0x8

    new-array v10, v2, [I

    fill-array-data v10, :array_7

    aput-object v10, v1, v3

    sput-object v1, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->HORIZONTAL_SEPARATION_PATTERN:[[I

    .line 69
    new-array v1, v0, [[I

    new-array v10, v4, [I

    aput v3, v10, v3

    aput-object v10, v1, v3

    new-array v10, v4, [I

    aput v3, v10, v3

    aput-object v10, v1, v4

    new-array v10, v4, [I

    aput v3, v10, v3

    aput-object v10, v1, v5

    new-array v10, v4, [I

    aput v3, v10, v3

    aput-object v10, v1, v6

    new-array v10, v4, [I

    aput v3, v10, v3

    aput-object v10, v1, v7

    new-array v10, v4, [I

    aput v3, v10, v3

    aput-object v10, v1, v8

    new-array v10, v4, [I

    aput v3, v10, v3

    aput-object v10, v1, v9

    sput-object v1, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->VERTICAL_SEPARATION_PATTERN:[[I

    .line 73
    new-array v1, v8, [[I

    new-array v10, v8, [I

    fill-array-data v10, :array_8

    aput-object v10, v1, v3

    new-array v10, v8, [I

    fill-array-data v10, :array_9

    aput-object v10, v1, v4

    new-array v10, v8, [I

    fill-array-data v10, :array_a

    aput-object v10, v1, v5

    new-array v10, v8, [I

    fill-array-data v10, :array_b

    aput-object v10, v1, v6

    new-array v10, v8, [I

    fill-array-data v10, :array_c

    aput-object v10, v1, v7

    sput-object v1, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    .line 82
    const/16 v1, 0x28

    new-array v1, v1, [[I

    new-array v10, v0, [I

    fill-array-data v10, :array_d

    aput-object v10, v1, v3

    new-array v10, v0, [I

    fill-array-data v10, :array_e

    aput-object v10, v1, v4

    new-array v10, v0, [I

    fill-array-data v10, :array_f

    aput-object v10, v1, v5

    new-array v10, v0, [I

    fill-array-data v10, :array_10

    aput-object v10, v1, v6

    new-array v10, v0, [I

    fill-array-data v10, :array_11

    aput-object v10, v1, v7

    new-array v10, v0, [I

    fill-array-data v10, :array_12

    aput-object v10, v1, v8

    new-array v10, v0, [I

    fill-array-data v10, :array_13

    aput-object v10, v1, v9

    new-array v10, v0, [I

    fill-array-data v10, :array_14

    aput-object v10, v1, v0

    new-array v10, v0, [I

    fill-array-data v10, :array_15

    aput-object v10, v1, v2

    new-array v10, v0, [I

    fill-array-data v10, :array_16

    const/16 v11, 0x9

    aput-object v10, v1, v11

    new-array v10, v0, [I

    fill-array-data v10, :array_17

    const/16 v12, 0xa

    aput-object v10, v1, v12

    new-array v10, v0, [I

    fill-array-data v10, :array_18

    const/16 v13, 0xb

    aput-object v10, v1, v13

    new-array v10, v0, [I

    fill-array-data v10, :array_19

    const/16 v14, 0xc

    aput-object v10, v1, v14

    new-array v10, v0, [I

    fill-array-data v10, :array_1a

    const/16 v15, 0xd

    aput-object v10, v1, v15

    new-array v10, v0, [I

    fill-array-data v10, :array_1b

    const/16 v16, 0xe

    aput-object v10, v1, v16

    new-array v10, v0, [I

    fill-array-data v10, :array_1c

    const/16 v15, 0xf

    aput-object v10, v1, v15

    new-array v10, v0, [I

    fill-array-data v10, :array_1d

    const/16 v17, 0x10

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_1e

    const/16 v17, 0x11

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_1f

    const/16 v17, 0x12

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_20

    const/16 v17, 0x13

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_21

    const/16 v17, 0x14

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_22

    const/16 v17, 0x15

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_23

    const/16 v17, 0x16

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_24

    const/16 v17, 0x17

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_25

    const/16 v17, 0x18

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_26

    const/16 v17, 0x19

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_27

    const/16 v17, 0x1a

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_28

    const/16 v17, 0x1b

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_29

    const/16 v17, 0x1c

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_2a

    const/16 v17, 0x1d

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_2b

    const/16 v17, 0x1e

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_2c

    const/16 v17, 0x1f

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_2d

    const/16 v17, 0x20

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_2e

    const/16 v17, 0x21

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_2f

    const/16 v17, 0x22

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_30

    const/16 v17, 0x23

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_31

    const/16 v17, 0x24

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_32

    const/16 v17, 0x25

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_33

    const/16 v17, 0x26

    aput-object v10, v1, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_34

    const/16 v17, 0x27

    aput-object v10, v1, v17

    sput-object v1, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    .line 206
    new-array v1, v15, [[I

    new-array v10, v5, [I

    fill-array-data v10, :array_35

    aput-object v10, v1, v3

    new-array v3, v5, [I

    fill-array-data v3, :array_36

    aput-object v3, v1, v4

    new-array v3, v5, [I

    fill-array-data v3, :array_37

    aput-object v3, v1, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_38

    aput-object v3, v1, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_39

    aput-object v3, v1, v7

    new-array v3, v5, [I

    fill-array-data v3, :array_3a

    aput-object v3, v1, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_3b

    aput-object v3, v1, v9

    new-array v3, v5, [I

    fill-array-data v3, :array_3c

    aput-object v3, v1, v0

    new-array v0, v5, [I

    fill-array-data v0, :array_3d

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_3e

    aput-object v0, v1, v11

    new-array v0, v5, [I

    fill-array-data v0, :array_3f

    aput-object v0, v1, v12

    new-array v0, v5, [I

    fill-array-data v0, :array_40

    aput-object v0, v1, v13

    new-array v0, v5, [I

    fill-array-data v0, :array_41

    aput-object v0, v1, v14

    new-array v0, v5, [I

    fill-array-data v0, :array_42

    const/16 v2, 0xd

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_43

    aput-object v0, v1, v16

    sput-object v1, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_d
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x12
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x1a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x1e
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x16
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x18
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1a
        0x2e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1c
        0x32
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x1e
        0x36
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x20
        0x3a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x22
        0x3e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_21
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
        -0x1
        -0x1
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        -0x1
        -0x1
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        -0x1
        -0x1
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        -0x1
        -0x1
    .end array-data

    :array_25
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        -0x1
        -0x1
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        -0x1
        -0x1
    .end array-data

    :array_27
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        -0x1
        -0x1
    .end array-data

    :array_28
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
        -0x1
    .end array-data

    :array_29
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        -0x1
    .end array-data

    :array_2a
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
        -0x1
    .end array-data

    :array_2b
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
        -0x1
    .end array-data

    :array_2c
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
        -0x1
    .end array-data

    :array_2d
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        -0x1
    .end array-data

    :array_2e
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
        -0x1
    .end array-data

    :array_2f
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_30
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_31
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_32
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_33
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_34
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data

    :array_35
    .array-data 4
        0x8
        0x0
    .end array-data

    :array_36
    .array-data 4
        0x8
        0x1
    .end array-data

    :array_37
    .array-data 4
        0x8
        0x2
    .end array-data

    :array_38
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_39
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_3a
    .array-data 4
        0x8
        0x5
    .end array-data

    :array_3b
    .array-data 4
        0x8
        0x7
    .end array-data

    :array_3c
    .array-data 4
        0x8
        0x8
    .end array-data

    :array_3d
    .array-data 4
        0x7
        0x8
    .end array-data

    :array_3e
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_3f
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_40
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_41
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_42
    .array-data 4
        0x1
        0x8
    .end array-data

    :array_43
    .array-data 4
        0x0
        0x8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static buildMatrix(Lcom/itextpdf/barcodes/qrcode/BitVector;Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V
    .locals 0
    .param p0, "dataBits"    # Lcom/itextpdf/barcodes/qrcode/BitVector;
    .param p1, "ecLevel"    # Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;
    .param p2, "version"    # I
    .param p3, "maskPattern"    # I
    .param p4, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 252
    invoke-static {p4}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->clearMatrix(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 253
    invoke-static {p2, p4}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->embedBasicPatterns(ILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 255
    invoke-static {p1, p3, p4}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->embedTypeInfo(Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 257
    invoke-static {p2, p4}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->maybeEmbedVersionInfo(ILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 259
    invoke-static {p0, p3, p4}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->embedDataBits(Lcom/itextpdf/barcodes/qrcode/BitVector;ILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 260
    return-void
.end method

.method public static calculateBCHCode(II)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "poly"    # I

    .line 479
    invoke-static {p1}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->findMSBSet(I)I

    move-result v0

    .line 480
    .local v0, "msbSetInPoly":I
    add-int/lit8 v1, v0, -0x1

    shl-int/2addr p0, v1

    .line 482
    :goto_0
    invoke-static {p0}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->findMSBSet(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 483
    invoke-static {p0}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->findMSBSet(I)I

    move-result v1

    sub-int/2addr v1, v0

    shl-int v1, p1, v1

    xor-int/2addr p0, v1

    goto :goto_0

    .line 486
    :cond_0
    return p0
.end method

.method public static clearMatrix(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)V
    .locals 1
    .param p0, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    .line 237
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->clear(B)V

    .line 238
    return-void
.end method

.method public static embedBasicPatterns(ILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V
    .locals 0
    .param p0, "version"    # I
    .param p1, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 275
    invoke-static {p1}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->embedPositionDetectionPatternsAndSeparators(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 277
    invoke-static {p1}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->embedDarkDotAtLeftBottomCorner(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 280
    invoke-static {p0, p1}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->maybeEmbedPositionAdjustmentPatterns(ILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 282
    invoke-static {p1}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->embedTimingPatterns(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 283
    return-void
.end method

.method private static embedDarkDotAtLeftBottomCorner(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)V
    .locals 3
    .param p0, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 584
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v0

    const/16 v1, 0x8

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->get(II)B

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->set(III)V

    .line 588
    return-void

    .line 585
    :cond_0
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/WriterException;

    invoke-direct {v0}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>()V

    throw v0
.end method

.method public static embedDataBits(Lcom/itextpdf/barcodes/qrcode/BitVector;ILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V
    .locals 8
    .param p0, "dataBits"    # Lcom/itextpdf/barcodes/qrcode/BitVector;
    .param p1, "maskPattern"    # I
    .param p2, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "bitIndex":I
    const/4 v1, -0x1

    .line 377
    .local v1, "direction":I
    invoke-virtual {p2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 378
    .local v2, "x":I
    invoke-virtual {p2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 379
    .local v3, "y":I
    :goto_0
    if-lez v2, :cond_6

    .line 382
    const/4 v4, 0x6

    if-ne v2, v4, :cond_0

    .line 383
    add-int/lit8 v2, v2, -0x1

    .line 385
    :cond_0
    :goto_1
    if-ltz v3, :cond_5

    invoke-virtual {p2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 386
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    .line 387
    sub-int v5, v2, v4

    .line 390
    .local v5, "xx":I
    invoke-virtual {p2, v5, v3}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->get(II)B

    move-result v6

    invoke-static {v6}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->isEmpty(B)Z

    move-result v6

    if-nez v6, :cond_1

    .line 391
    goto :goto_4

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 395
    invoke-virtual {p0, v0}, Lcom/itextpdf/barcodes/qrcode/BitVector;->at(I)I

    move-result v6

    .line 396
    .local v6, "bit":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 401
    .end local v6    # "bit":I
    :cond_2
    const/4 v6, 0x0

    .line 405
    .restart local v6    # "bit":I
    :goto_3
    const/4 v7, -0x1

    if-eq p1, v7, :cond_3

    .line 406
    invoke-static {p1, v5, v3}, Lcom/itextpdf/barcodes/qrcode/MaskUtil;->getDataMaskBit(III)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 407
    xor-int/lit8 v6, v6, 0x1

    .line 410
    :cond_3
    invoke-virtual {p2, v5, v3, v6}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->set(III)V

    .line 386
    .end local v5    # "xx":I
    .end local v6    # "bit":I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 412
    .end local v4    # "i":I
    :cond_4
    add-int/2addr v3, v1

    goto :goto_1

    .line 416
    :cond_5
    neg-int v1, v1

    .line 417
    add-int/2addr v3, v1

    .line 420
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 424
    :cond_6
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v4

    if-ne v0, v4, :cond_7

    .line 427
    return-void

    .line 425
    :cond_7
    new-instance v4, Lcom/itextpdf/barcodes/qrcode/WriterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not all bits consumed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static embedHorizontalSeparationPattern(IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V
    .locals 5
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 593
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->HORIZONTAL_SEPARATION_PATTERN:[[I

    const/4 v1, 0x0

    aget-object v2, v0, v1

    array-length v2, v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 596
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 597
    add-int v2, p0, v0

    invoke-virtual {p2, v2, p1}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->isEmpty(B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    add-int v2, p0, v0

    sget-object v4, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->HORIZONTAL_SEPARATION_PATTERN:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    invoke-virtual {p2, v2, p1, v4}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->set(III)V

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    :cond_0
    new-instance v1, Lcom/itextpdf/barcodes/qrcode/WriterException;

    invoke-direct {v1}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>()V

    throw v1

    .line 602
    .end local v0    # "x":I
    :cond_1
    return-void

    .line 594
    :cond_2
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/WriterException;

    const-string v1, "Bad horizontal separation pattern"

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static embedPositionAdjustmentPattern(IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V
    .locals 6
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 624
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    const/4 v1, 0x0

    aget-object v1, v0, v1

    array-length v1, v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    array-length v0, v0

    if-ne v0, v2, :cond_3

    .line 627
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 628
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 629
    add-int v3, p0, v1

    add-int v4, p1, v0

    invoke-virtual {p2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->isEmpty(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 632
    add-int v3, p0, v1

    add-int v4, p1, v0

    sget-object v5, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    aget-object v5, v5, v0

    aget v5, v5, v1

    invoke-virtual {p2, v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->set(III)V

    .line 628
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 630
    :cond_0
    new-instance v2, Lcom/itextpdf/barcodes/qrcode/WriterException;

    invoke-direct {v2}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>()V

    throw v2

    .line 627
    .end local v1    # "x":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    .end local v0    # "y":I
    :cond_2
    return-void

    .line 625
    :cond_3
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/WriterException;

    const-string v1, "Bad position adjustment"

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static embedPositionDetectionPattern(IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V
    .locals 6
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 640
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    const/4 v1, 0x0

    aget-object v1, v0, v1

    array-length v1, v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    array-length v0, v0

    if-ne v0, v2, :cond_3

    .line 643
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 644
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 645
    add-int v3, p0, v1

    add-int v4, p1, v0

    invoke-virtual {p2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->isEmpty(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 648
    add-int v3, p0, v1

    add-int v4, p1, v0

    sget-object v5, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v5, v5, v0

    aget v5, v5, v1

    invoke-virtual {p2, v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->set(III)V

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 646
    :cond_0
    new-instance v2, Lcom/itextpdf/barcodes/qrcode/WriterException;

    invoke-direct {v2}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>()V

    throw v2

    .line 643
    .end local v1    # "x":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 651
    .end local v0    # "y":I
    :cond_2
    return-void

    .line 641
    :cond_3
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/WriterException;

    const-string v1, "Bad position detection pattern"

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static embedPositionDetectionPatternsAndSeparators(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)V
    .locals 5
    .param p0, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 656
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    .line 658
    .local v0, "pdpWidth":I
    invoke-static {v1, v1, p0}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->embedPositionDetectionPattern(IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 660
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2, v1, p0}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->embedPositionDetectionPattern(IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 662
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2, p0}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->embedPositionDetectionPattern(IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 665
    sget-object v2, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->HORIZONTAL_SEPARATION_PATTERN:[[I

    aget-object v2, v2, v1

    array-length v2, v2

    .line 667
    .local v2, "hspWidth":I
    add-int/lit8 v3, v2, -0x1

    invoke-static {v1, v3, p0}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 669
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4, p0}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 672
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v1, v3, p0}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 675
    sget-object v3, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->VERTICAL_SEPARATION_PATTERN:[[I

    array-length v3, v3

    .line 677
    .local v3, "vspSize":I
    invoke-static {v3, v1, p0}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->embedVerticalSeparationPattern(IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 679
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, v1, p0}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->embedVerticalSeparationPattern(IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 681
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v3, v1, p0}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->embedVerticalSeparationPattern(IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 683
    return-void
.end method

.method private static embedTimingPatterns(Lcom/itextpdf/barcodes/qrcode/ByteMatrix;)V
    .locals 4
    .param p0, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 561
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    if-ge v0, v1, :cond_4

    .line 562
    add-int/lit8 v1, v0, 0x1

    rem-int/lit8 v1, v1, 0x2

    .line 565
    .local v1, "bit":I
    const/4 v2, 0x6

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->isValidValue(B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 568
    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->isEmpty(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 569
    invoke-virtual {p0, v0, v2, v1}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->set(III)V

    .line 573
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->isValidValue(B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 576
    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->isEmpty(B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 577
    invoke-virtual {p0, v2, v0, v1}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->set(III)V

    .line 561
    .end local v1    # "bit":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    .restart local v1    # "bit":I
    :cond_2
    new-instance v2, Lcom/itextpdf/barcodes/qrcode/WriterException;

    invoke-direct {v2}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>()V

    throw v2

    .line 566
    :cond_3
    new-instance v2, Lcom/itextpdf/barcodes/qrcode/WriterException;

    invoke-direct {v2}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>()V

    throw v2

    .line 580
    .end local v0    # "i":I
    .end local v1    # "bit":I
    :cond_4
    return-void
.end method

.method public static embedTypeInfo(Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V
    .locals 8
    .param p0, "ecLevel"    # Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;
    .param p1, "maskPattern"    # I
    .param p2, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 294
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/BitVector;

    invoke-direct {v0}, Lcom/itextpdf/barcodes/qrcode/BitVector;-><init>()V

    .line 295
    .local v0, "typeInfoBits":Lcom/itextpdf/barcodes/qrcode/BitVector;
    invoke-static {p0, p1, v0}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->makeTypeInfoBits(Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/barcodes/qrcode/BitVector;)V

    .line 297
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 300
    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/itextpdf/barcodes/qrcode/BitVector;->at(I)I

    move-result v2

    .line 303
    .local v2, "bit":I
    sget-object v4, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aget v5, v4, v5

    .line 304
    .local v5, "x1":I
    aget v4, v4, v3

    .line 305
    .local v4, "y1":I
    invoke-virtual {p2, v5, v4, v2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->set(III)V

    .line 307
    const/16 v6, 0x8

    if-ge v1, v6, :cond_0

    .line 309
    invoke-virtual {p2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v3

    .line 310
    .local v6, "x2":I
    const/16 v3, 0x8

    .line 311
    .local v3, "y2":I
    invoke-virtual {p2, v6, v3, v2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->set(III)V

    .line 312
    .end local v3    # "y2":I
    .end local v6    # "x2":I
    goto :goto_1

    .line 314
    :cond_0
    const/16 v3, 0x8

    .line 315
    .local v3, "x2":I
    invoke-virtual {p2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x7

    add-int/lit8 v7, v1, -0x8

    add-int/2addr v6, v7

    .line 316
    .local v6, "y2":I
    invoke-virtual {p2, v3, v6, v2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->set(III)V

    .line 297
    .end local v2    # "bit":I
    .end local v3    # "x2":I
    .end local v4    # "y1":I
    .end local v5    # "x1":I
    .end local v6    # "y2":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static embedVerticalSeparationPattern(IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V
    .locals 5
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 607
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->VERTICAL_SEPARATION_PATTERN:[[I

    const/4 v1, 0x0

    aget-object v2, v0, v1

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    array-length v0, v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 610
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 611
    add-int v3, p1, v0

    invoke-virtual {p2, p0, v3}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->isEmpty(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 614
    add-int v3, p1, v0

    sget-object v4, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->VERTICAL_SEPARATION_PATTERN:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    invoke-virtual {p2, p0, v3, v4}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->set(III)V

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    :cond_0
    new-instance v1, Lcom/itextpdf/barcodes/qrcode/WriterException;

    invoke-direct {v1}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>()V

    throw v1

    .line 616
    .end local v0    # "y":I
    :cond_1
    return-void

    .line 608
    :cond_2
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/WriterException;

    const-string v1, "Bad vertical separation pattern"

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static findMSBSet(I)I
    .locals 1
    .param p0, "value"    # I

    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, "numDigits":I
    :goto_0
    if-eqz p0, :cond_0

    .line 441
    ushr-int/lit8 p0, p0, 0x1

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    :cond_0
    return v0
.end method

.method private static isEmpty(B)Z
    .locals 1
    .param p0, "value"    # B

    .line 541
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidValue(B)Z
    .locals 2
    .param p0, "value"    # B

    .line 548
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static makeTypeInfoBits(Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;ILcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 6
    .param p0, "ecLevel"    # Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;
    .param p1, "maskPattern"    # I
    .param p2, "bits"    # Lcom/itextpdf/barcodes/qrcode/BitVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 499
    invoke-static {p1}, Lcom/itextpdf/barcodes/qrcode/QRCode;->isValidMaskPattern(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->getBits()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    or-int/2addr v0, p1

    .line 503
    .local v0, "typeInfo":I
    const/4 v1, 0x5

    invoke-virtual {p2, v0, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 505
    const/16 v1, 0x537

    invoke-static {v0, v1}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->calculateBCHCode(II)I

    move-result v1

    .line 506
    .local v1, "bchCode":I
    const/16 v2, 0xa

    invoke-virtual {p2, v1, v2}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 508
    new-instance v2, Lcom/itextpdf/barcodes/qrcode/BitVector;

    invoke-direct {v2}, Lcom/itextpdf/barcodes/qrcode/BitVector;-><init>()V

    .line 509
    .local v2, "maskBits":Lcom/itextpdf/barcodes/qrcode/BitVector;
    const/16 v3, 0x5412

    const/16 v4, 0xf

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 510
    invoke-virtual {p2, v2}, Lcom/itextpdf/barcodes/qrcode/BitVector;->xor(Lcom/itextpdf/barcodes/qrcode/BitVector;)V

    .line 513
    invoke-virtual {p2}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 516
    return-void

    .line 514
    :cond_0
    new-instance v3, Lcom/itextpdf/barcodes/qrcode/WriterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "should not happen but we got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 500
    .end local v0    # "typeInfo":I
    .end local v1    # "bchCode":I
    .end local v2    # "maskBits":Lcom/itextpdf/barcodes/qrcode/BitVector;
    :cond_1
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/WriterException;

    const-string v1, "Invalid mask pattern"

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static makeVersionInfoBits(ILcom/itextpdf/barcodes/qrcode/BitVector;)V
    .locals 4
    .param p0, "version"    # I
    .param p1, "bits"    # Lcom/itextpdf/barcodes/qrcode/BitVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 529
    const/4 v0, 0x6

    invoke-virtual {p1, p0, v0}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 530
    const/16 v0, 0x1f25

    invoke-static {p0, v0}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->calculateBCHCode(II)I

    move-result v0

    .line 531
    .local v0, "bchCode":I
    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->appendBits(II)V

    .line 534
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 537
    return-void

    .line 535
    :cond_0
    new-instance v1, Lcom/itextpdf/barcodes/qrcode/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "should not happen but we got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/barcodes/qrcode/WriterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static maybeEmbedPositionAdjustmentPatterns(ILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V
    .locals 9
    .param p0, "version"    # I
    .param p1, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 690
    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    .line 691
    return-void

    .line 693
    :cond_0
    add-int/lit8 v0, p0, -0x1

    .line 694
    .local v0, "index":I
    sget-object v1, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v2, v1, v0

    .line 695
    .local v2, "coordinates":[I
    aget-object v1, v1, v0

    array-length v1, v1

    .line 696
    .local v1, "numCoordinates":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 697
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 698
    aget v5, v2, v3

    .line 699
    .local v5, "y":I
    aget v6, v2, v4

    .line 700
    .local v6, "x":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    if-ne v5, v7, :cond_1

    .line 701
    goto :goto_2

    .line 704
    :cond_1
    invoke-virtual {p1, v6, v5}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->get(II)B

    move-result v7

    invoke-static {v7}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->isEmpty(B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 707
    add-int/lit8 v7, v6, -0x2

    add-int/lit8 v8, v5, -0x2

    invoke-static {v7, v8, p1}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->embedPositionAdjustmentPattern(IILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V

    .line 697
    .end local v5    # "y":I
    .end local v6    # "x":I
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 696
    .end local v4    # "j":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 711
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method public static maybeEmbedVersionInfo(ILcom/itextpdf/barcodes/qrcode/ByteMatrix;)V
    .locals 6
    .param p0, "version"    # I
    .param p1, "matrix"    # Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/qrcode/WriterException;
        }
    .end annotation

    .line 336
    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    .line 339
    return-void

    .line 341
    :cond_0
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/BitVector;

    invoke-direct {v0}, Lcom/itextpdf/barcodes/qrcode/BitVector;-><init>()V

    .line 342
    .local v0, "versionInfoBits":Lcom/itextpdf/barcodes/qrcode/BitVector;
    invoke-static {p0, v0}, Lcom/itextpdf/barcodes/qrcode/MatrixUtil;->makeVersionInfoBits(ILcom/itextpdf/barcodes/qrcode/BitVector;)V

    .line 345
    const/16 v1, 0x11

    .line 346
    .local v1, "bitIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 347
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 350
    invoke-virtual {v0, v1}, Lcom/itextpdf/barcodes/qrcode/BitVector;->at(I)I

    move-result v4

    .line 351
    .local v4, "bit":I
    add-int/lit8 v1, v1, -0x1

    .line 354
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v2, v5, v4}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->set(III)V

    .line 357
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v5, v2, v4}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->set(III)V

    .line 347
    .end local v4    # "bit":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 346
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    .end local v2    # "i":I
    :cond_2
    return-void
.end method
