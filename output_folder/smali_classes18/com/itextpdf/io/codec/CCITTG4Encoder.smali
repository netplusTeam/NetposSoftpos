.class public Lcom/itextpdf/io/codec/CCITTG4Encoder;
.super Ljava/lang/Object;
.source "CCITTG4Encoder.java"


# static fields
.field private static final CODE:I = 0x1

.field private static final EOL:I = 0x1

.field private static final G3CODE_EOF:I = -0x3

.field private static final G3CODE_EOL:I = -0x1

.field private static final G3CODE_INCOMP:I = -0x4

.field private static final G3CODE_INVALID:I = -0x2

.field private static final LENGTH:I = 0x0

.field private static final RUNLEN:I = 0x2

.field private static oneruns:[B

.field private static zeroruns:[B


# instance fields
.field private TIFFFaxBlackCodes:[[I

.field private TIFFFaxWhiteCodes:[[I

.field private bit:I

.field private data:I

.field private dataBp:[B

.field private horizcode:[I

.field private msbmask:[I

.field private offsetData:I

.field private outBuf:Lcom/itextpdf/io/source/ByteBuffer;

.field private passcode:[I

.field private refline:[B

.field private rowbytes:I

.field private rowpixels:I

.field private sizeData:I

.field private vcodes:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 307
    const/16 v0, 0x100

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/itextpdf/io/codec/CCITTG4Encoder;->zeroruns:[B

    .line 326
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->oneruns:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x8t
        0x7t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 27
    .param p1, "width"    # I

    .line 67
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v2, 0x8

    iput v2, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->bit:I

    .line 58
    new-instance v3, Lcom/itextpdf/io/source/ByteBuffer;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    iput-object v3, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    .line 357
    const/16 v3, 0x6d

    new-array v4, v3, [[I

    const/4 v5, 0x3

    new-array v6, v5, [I

    fill-array-data v6, :array_0

    const/4 v7, 0x0

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_1

    const/4 v8, 0x1

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_2

    const/4 v9, 0x2

    aput-object v6, v4, v9

    new-array v6, v5, [I

    fill-array-data v6, :array_3

    aput-object v6, v4, v5

    new-array v6, v5, [I

    fill-array-data v6, :array_4

    const/4 v10, 0x4

    aput-object v6, v4, v10

    new-array v6, v5, [I

    fill-array-data v6, :array_5

    const/4 v11, 0x5

    aput-object v6, v4, v11

    new-array v6, v5, [I

    fill-array-data v6, :array_6

    const/4 v12, 0x6

    aput-object v6, v4, v12

    new-array v6, v5, [I

    fill-array-data v6, :array_7

    const/4 v13, 0x7

    aput-object v6, v4, v13

    new-array v6, v5, [I

    fill-array-data v6, :array_8

    aput-object v6, v4, v2

    new-array v6, v5, [I

    fill-array-data v6, :array_9

    const/16 v14, 0x9

    aput-object v6, v4, v14

    new-array v6, v5, [I

    fill-array-data v6, :array_a

    const/16 v15, 0xa

    aput-object v6, v4, v15

    new-array v6, v5, [I

    fill-array-data v6, :array_b

    const/16 v16, 0xb

    aput-object v6, v4, v16

    new-array v6, v5, [I

    fill-array-data v6, :array_c

    const/16 v17, 0xc

    aput-object v6, v4, v17

    new-array v6, v5, [I

    fill-array-data v6, :array_d

    const/16 v18, 0xd

    aput-object v6, v4, v18

    new-array v6, v5, [I

    fill-array-data v6, :array_e

    const/16 v19, 0xe

    aput-object v6, v4, v19

    new-array v6, v5, [I

    fill-array-data v6, :array_f

    const/16 v20, 0xf

    aput-object v6, v4, v20

    new-array v6, v5, [I

    fill-array-data v6, :array_10

    const/16 v21, 0x10

    aput-object v6, v4, v21

    new-array v6, v5, [I

    fill-array-data v6, :array_11

    const/16 v22, 0x11

    aput-object v6, v4, v22

    new-array v6, v5, [I

    fill-array-data v6, :array_12

    const/16 v23, 0x12

    aput-object v6, v4, v23

    new-array v6, v5, [I

    fill-array-data v6, :array_13

    const/16 v24, 0x13

    aput-object v6, v4, v24

    new-array v6, v5, [I

    fill-array-data v6, :array_14

    const/16 v25, 0x14

    aput-object v6, v4, v25

    new-array v6, v5, [I

    fill-array-data v6, :array_15

    const/16 v26, 0x15

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_16

    const/16 v26, 0x16

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_17

    const/16 v26, 0x17

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_18

    const/16 v26, 0x18

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_19

    const/16 v26, 0x19

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_1a

    const/16 v26, 0x1a

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_1b

    const/16 v26, 0x1b

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_1c

    const/16 v26, 0x1c

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_1d

    const/16 v26, 0x1d

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_1e

    const/16 v26, 0x1e

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_1f

    const/16 v26, 0x1f

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_20

    const/16 v26, 0x20

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_21

    const/16 v26, 0x21

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_22

    const/16 v26, 0x22

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_23

    const/16 v26, 0x23

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_24

    const/16 v26, 0x24

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_25

    const/16 v26, 0x25

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_26

    const/16 v26, 0x26

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_27

    const/16 v26, 0x27

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_28

    const/16 v26, 0x28

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_29

    const/16 v26, 0x29

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_2a

    const/16 v26, 0x2a

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_2b

    const/16 v26, 0x2b

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_2c

    const/16 v26, 0x2c

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_2d

    const/16 v26, 0x2d

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_2e

    const/16 v26, 0x2e

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_2f

    const/16 v26, 0x2f

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_30

    const/16 v26, 0x30

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_31

    const/16 v26, 0x31

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_32

    const/16 v26, 0x32

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_33

    const/16 v26, 0x33

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_34

    const/16 v26, 0x34

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_35

    const/16 v26, 0x35

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_36

    const/16 v26, 0x36

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_37

    const/16 v26, 0x37

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_38

    const/16 v26, 0x38

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_39

    const/16 v26, 0x39

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_3a

    const/16 v26, 0x3a

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_3b

    const/16 v26, 0x3b

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_3c

    const/16 v26, 0x3c

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_3d

    const/16 v26, 0x3d

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_3e

    const/16 v26, 0x3e

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_3f

    const/16 v26, 0x3f

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_40

    const/16 v26, 0x40

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_41

    const/16 v26, 0x41

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_42

    const/16 v26, 0x42

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_43

    const/16 v26, 0x43

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_44

    const/16 v26, 0x44

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_45

    const/16 v26, 0x45

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_46

    const/16 v26, 0x46

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_47

    const/16 v26, 0x47

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_48

    const/16 v26, 0x48

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_49

    const/16 v26, 0x49

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_4a

    const/16 v26, 0x4a

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_4b

    const/16 v26, 0x4b

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_4c

    const/16 v26, 0x4c

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_4d

    const/16 v26, 0x4d

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_4e

    const/16 v26, 0x4e

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_4f

    const/16 v26, 0x4f

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_50

    const/16 v26, 0x50

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_51

    const/16 v26, 0x51

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_52

    const/16 v26, 0x52

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_53

    const/16 v26, 0x53

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_54

    const/16 v26, 0x54

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_55

    const/16 v26, 0x55

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_56

    const/16 v26, 0x56

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_57

    const/16 v26, 0x57

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_58

    const/16 v26, 0x58

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_59

    const/16 v26, 0x59

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_5a

    const/16 v26, 0x5a

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_5b

    const/16 v26, 0x5b

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_5c

    const/16 v26, 0x5c

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_5d

    const/16 v26, 0x5d

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_5e

    const/16 v26, 0x5e

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_5f

    const/16 v26, 0x5f

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_60

    const/16 v26, 0x60

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_61

    const/16 v26, 0x61

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_62

    const/16 v26, 0x62

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_63

    const/16 v26, 0x63

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_64

    const/16 v26, 0x64

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_65

    const/16 v26, 0x65

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_66

    const/16 v26, 0x66

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_67

    const/16 v26, 0x67

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_68

    const/16 v26, 0x68

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_69

    const/16 v26, 0x69

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_6a

    const/16 v26, 0x6a

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_6b

    const/16 v26, 0x6b

    aput-object v6, v4, v26

    new-array v6, v5, [I

    fill-array-data v6, :array_6c

    const/16 v26, 0x6c

    aput-object v6, v4, v26

    iput-object v4, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->TIFFFaxWhiteCodes:[[I

    .line 469
    new-array v3, v3, [[I

    new-array v4, v5, [I

    fill-array-data v4, :array_6d

    aput-object v4, v3, v7

    new-array v4, v5, [I

    fill-array-data v4, :array_6e

    aput-object v4, v3, v8

    new-array v4, v5, [I

    fill-array-data v4, :array_6f

    aput-object v4, v3, v9

    new-array v4, v5, [I

    fill-array-data v4, :array_70

    aput-object v4, v3, v5

    new-array v4, v5, [I

    fill-array-data v4, :array_71

    aput-object v4, v3, v10

    new-array v4, v5, [I

    fill-array-data v4, :array_72

    aput-object v4, v3, v11

    new-array v4, v5, [I

    fill-array-data v4, :array_73

    aput-object v4, v3, v12

    new-array v4, v5, [I

    fill-array-data v4, :array_74

    aput-object v4, v3, v13

    new-array v4, v5, [I

    fill-array-data v4, :array_75

    aput-object v4, v3, v2

    new-array v4, v5, [I

    fill-array-data v4, :array_76

    aput-object v4, v3, v14

    new-array v4, v5, [I

    fill-array-data v4, :array_77

    aput-object v4, v3, v15

    new-array v4, v5, [I

    fill-array-data v4, :array_78

    aput-object v4, v3, v16

    new-array v4, v5, [I

    fill-array-data v4, :array_79

    aput-object v4, v3, v17

    new-array v4, v5, [I

    fill-array-data v4, :array_7a

    aput-object v4, v3, v18

    new-array v4, v5, [I

    fill-array-data v4, :array_7b

    aput-object v4, v3, v19

    new-array v4, v5, [I

    fill-array-data v4, :array_7c

    aput-object v4, v3, v20

    new-array v4, v5, [I

    fill-array-data v4, :array_7d

    aput-object v4, v3, v21

    new-array v4, v5, [I

    fill-array-data v4, :array_7e

    aput-object v4, v3, v22

    new-array v4, v5, [I

    fill-array-data v4, :array_7f

    aput-object v4, v3, v23

    new-array v4, v5, [I

    fill-array-data v4, :array_80

    aput-object v4, v3, v24

    new-array v4, v5, [I

    fill-array-data v4, :array_81

    aput-object v4, v3, v25

    new-array v4, v5, [I

    fill-array-data v4, :array_82

    const/16 v6, 0x15

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_83

    const/16 v6, 0x16

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_84

    const/16 v6, 0x17

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_85

    const/16 v6, 0x18

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_86

    const/16 v6, 0x19

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_87

    const/16 v6, 0x1a

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_88

    const/16 v6, 0x1b

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_89

    const/16 v6, 0x1c

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_8a

    const/16 v6, 0x1d

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_8b

    const/16 v6, 0x1e

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_8c

    const/16 v6, 0x1f

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_8d

    const/16 v6, 0x20

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_8e

    const/16 v6, 0x21

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_8f

    const/16 v6, 0x22

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_90

    const/16 v6, 0x23

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_91

    const/16 v6, 0x24

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_92

    const/16 v6, 0x25

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_93

    const/16 v6, 0x26

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_94

    const/16 v6, 0x27

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_95

    const/16 v6, 0x28

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_96

    const/16 v6, 0x29

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_97

    const/16 v6, 0x2a

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_98

    const/16 v6, 0x2b

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_99

    const/16 v6, 0x2c

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_9a

    const/16 v6, 0x2d

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_9b

    const/16 v6, 0x2e

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_9c

    const/16 v6, 0x2f

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_9d

    const/16 v6, 0x30

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_9e

    const/16 v6, 0x31

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_9f

    const/16 v6, 0x32

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_a0

    const/16 v6, 0x33

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_a1

    const/16 v6, 0x34

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_a2

    const/16 v6, 0x35

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_a3

    const/16 v6, 0x36

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_a4

    const/16 v6, 0x37

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_a5

    const/16 v6, 0x38

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_a6

    const/16 v6, 0x39

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_a7

    const/16 v6, 0x3a

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_a8

    const/16 v6, 0x3b

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_a9

    const/16 v6, 0x3c

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_aa

    const/16 v6, 0x3d

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_ab

    const/16 v6, 0x3e

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_ac

    const/16 v6, 0x3f

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_ad

    const/16 v6, 0x40

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_ae

    const/16 v6, 0x41

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_af

    const/16 v6, 0x42

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_b0

    const/16 v6, 0x43

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_b1

    const/16 v6, 0x44

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_b2

    const/16 v6, 0x45

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_b3

    const/16 v6, 0x46

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_b4

    const/16 v6, 0x47

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_b5

    const/16 v6, 0x48

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_b6

    const/16 v6, 0x49

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_b7

    const/16 v6, 0x4a

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_b8

    const/16 v6, 0x4b

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_b9

    const/16 v6, 0x4c

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_ba

    const/16 v6, 0x4d

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_bb

    const/16 v6, 0x4e

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_bc

    const/16 v6, 0x4f

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_bd

    const/16 v6, 0x50

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_be

    const/16 v6, 0x51

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_bf

    const/16 v6, 0x52

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_c0

    const/16 v6, 0x53

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_c1

    const/16 v6, 0x54

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_c2

    const/16 v6, 0x55

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_c3

    const/16 v6, 0x56

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_c4

    const/16 v6, 0x57

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_c5

    const/16 v6, 0x58

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_c6

    const/16 v6, 0x59

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_c7

    const/16 v6, 0x5a

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_c8

    const/16 v6, 0x5b

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_c9

    const/16 v6, 0x5c

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_ca

    const/16 v6, 0x5d

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_cb

    const/16 v6, 0x5e

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_cc

    const/16 v6, 0x5f

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_cd

    const/16 v6, 0x60

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_ce

    const/16 v6, 0x61

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_cf

    const/16 v6, 0x62

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_d0

    const/16 v6, 0x63

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_d1

    const/16 v6, 0x64

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_d2

    const/16 v6, 0x65

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_d3

    const/16 v6, 0x66

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_d4

    const/16 v6, 0x67

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_d5

    const/16 v6, 0x68

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_d6

    const/16 v6, 0x69

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_d7

    const/16 v6, 0x6a

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_d8

    const/16 v6, 0x6b

    aput-object v4, v3, v6

    new-array v4, v5, [I

    fill-array-data v4, :array_d9

    const/16 v6, 0x6c

    aput-object v4, v3, v6

    iput-object v3, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->TIFFFaxBlackCodes:[[I

    .line 581
    new-array v3, v5, [I

    fill-array-data v3, :array_da

    iput-object v3, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->horizcode:[I

    .line 583
    new-array v3, v5, [I

    fill-array-data v3, :array_db

    iput-object v3, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->passcode:[I

    .line 585
    new-array v3, v13, [[I

    new-array v4, v5, [I

    fill-array-data v4, :array_dc

    aput-object v4, v3, v7

    new-array v4, v5, [I

    fill-array-data v4, :array_dd

    aput-object v4, v3, v8

    new-array v4, v5, [I

    fill-array-data v4, :array_de

    aput-object v4, v3, v9

    new-array v4, v5, [I

    fill-array-data v4, :array_df

    aput-object v4, v3, v5

    new-array v4, v5, [I

    fill-array-data v4, :array_e0

    aput-object v4, v3, v10

    new-array v4, v5, [I

    fill-array-data v4, :array_e1

    aput-object v4, v3, v11

    new-array v4, v5, [I

    fill-array-data v4, :array_e2

    aput-object v4, v3, v12

    iput-object v3, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->vcodes:[[I

    .line 594
    new-array v3, v14, [I

    fill-array-data v3, :array_e3

    iput-object v3, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->msbmask:[I

    .line 68
    iput v1, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    .line 69
    add-int/lit8 v3, v1, 0x7

    div-int/2addr v3, v2

    iput v3, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowbytes:I

    .line 70
    new-array v2, v3, [B

    iput-object v2, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->refline:[B

    .line 71
    return-void

    :array_0
    .array-data 4
        0x8
        0x35
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x7
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x7
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x8
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x4
        0xb
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x4
        0xc
        0x5
    .end array-data

    :array_6
    .array-data 4
        0x4
        0xe
        0x6
    .end array-data

    :array_7
    .array-data 4
        0x4
        0xf
        0x7
    .end array-data

    :array_8
    .array-data 4
        0x5
        0x13
        0x8
    .end array-data

    :array_9
    .array-data 4
        0x5
        0x14
        0x9
    .end array-data

    :array_a
    .array-data 4
        0x5
        0x7
        0xa
    .end array-data

    :array_b
    .array-data 4
        0x5
        0x8
        0xb
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x8
        0xc
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x3
        0xd
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x34
        0xe
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x35
        0xf
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x2a
        0x10
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x2b
        0x11
    .end array-data

    :array_12
    .array-data 4
        0x7
        0x27
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x7
        0xc
        0x13
    .end array-data

    :array_14
    .array-data 4
        0x7
        0x8
        0x14
    .end array-data

    :array_15
    .array-data 4
        0x7
        0x17
        0x15
    .end array-data

    :array_16
    .array-data 4
        0x7
        0x3
        0x16
    .end array-data

    :array_17
    .array-data 4
        0x7
        0x4
        0x17
    .end array-data

    :array_18
    .array-data 4
        0x7
        0x28
        0x18
    .end array-data

    :array_19
    .array-data 4
        0x7
        0x2b
        0x19
    .end array-data

    :array_1a
    .array-data 4
        0x7
        0x13
        0x1a
    .end array-data

    :array_1b
    .array-data 4
        0x7
        0x24
        0x1b
    .end array-data

    :array_1c
    .array-data 4
        0x7
        0x18
        0x1c
    .end array-data

    :array_1d
    .array-data 4
        0x8
        0x2
        0x1d
    .end array-data

    :array_1e
    .array-data 4
        0x8
        0x3
        0x1e
    .end array-data

    :array_1f
    .array-data 4
        0x8
        0x1a
        0x1f
    .end array-data

    :array_20
    .array-data 4
        0x8
        0x1b
        0x20
    .end array-data

    :array_21
    .array-data 4
        0x8
        0x12
        0x21
    .end array-data

    :array_22
    .array-data 4
        0x8
        0x13
        0x22
    .end array-data

    :array_23
    .array-data 4
        0x8
        0x14
        0x23
    .end array-data

    :array_24
    .array-data 4
        0x8
        0x15
        0x24
    .end array-data

    :array_25
    .array-data 4
        0x8
        0x16
        0x25
    .end array-data

    :array_26
    .array-data 4
        0x8
        0x17
        0x26
    .end array-data

    :array_27
    .array-data 4
        0x8
        0x28
        0x27
    .end array-data

    :array_28
    .array-data 4
        0x8
        0x29
        0x28
    .end array-data

    :array_29
    .array-data 4
        0x8
        0x2a
        0x29
    .end array-data

    :array_2a
    .array-data 4
        0x8
        0x2b
        0x2a
    .end array-data

    :array_2b
    .array-data 4
        0x8
        0x2c
        0x2b
    .end array-data

    :array_2c
    .array-data 4
        0x8
        0x2d
        0x2c
    .end array-data

    :array_2d
    .array-data 4
        0x8
        0x4
        0x2d
    .end array-data

    :array_2e
    .array-data 4
        0x8
        0x5
        0x2e
    .end array-data

    :array_2f
    .array-data 4
        0x8
        0xa
        0x2f
    .end array-data

    :array_30
    .array-data 4
        0x8
        0xb
        0x30
    .end array-data

    :array_31
    .array-data 4
        0x8
        0x52
        0x31
    .end array-data

    :array_32
    .array-data 4
        0x8
        0x53
        0x32
    .end array-data

    :array_33
    .array-data 4
        0x8
        0x54
        0x33
    .end array-data

    :array_34
    .array-data 4
        0x8
        0x55
        0x34
    .end array-data

    :array_35
    .array-data 4
        0x8
        0x24
        0x35
    .end array-data

    :array_36
    .array-data 4
        0x8
        0x25
        0x36
    .end array-data

    :array_37
    .array-data 4
        0x8
        0x58
        0x37
    .end array-data

    :array_38
    .array-data 4
        0x8
        0x59
        0x38
    .end array-data

    :array_39
    .array-data 4
        0x8
        0x5a
        0x39
    .end array-data

    :array_3a
    .array-data 4
        0x8
        0x5b
        0x3a
    .end array-data

    :array_3b
    .array-data 4
        0x8
        0x4a
        0x3b
    .end array-data

    :array_3c
    .array-data 4
        0x8
        0x4b
        0x3c
    .end array-data

    :array_3d
    .array-data 4
        0x8
        0x32
        0x3d
    .end array-data

    :array_3e
    .array-data 4
        0x8
        0x33
        0x3e
    .end array-data

    :array_3f
    .array-data 4
        0x8
        0x34
        0x3f
    .end array-data

    :array_40
    .array-data 4
        0x5
        0x1b
        0x40
    .end array-data

    :array_41
    .array-data 4
        0x5
        0x12
        0x80
    .end array-data

    :array_42
    .array-data 4
        0x6
        0x17
        0xc0
    .end array-data

    :array_43
    .array-data 4
        0x7
        0x37
        0x100
    .end array-data

    :array_44
    .array-data 4
        0x8
        0x36
        0x140
    .end array-data

    :array_45
    .array-data 4
        0x8
        0x37
        0x180
    .end array-data

    :array_46
    .array-data 4
        0x8
        0x64
        0x1c0
    .end array-data

    :array_47
    .array-data 4
        0x8
        0x65
        0x200
    .end array-data

    :array_48
    .array-data 4
        0x8
        0x68
        0x240
    .end array-data

    :array_49
    .array-data 4
        0x8
        0x67
        0x280
    .end array-data

    :array_4a
    .array-data 4
        0x9
        0xcc
        0x2c0
    .end array-data

    :array_4b
    .array-data 4
        0x9
        0xcd
        0x300
    .end array-data

    :array_4c
    .array-data 4
        0x9
        0xd2
        0x340
    .end array-data

    :array_4d
    .array-data 4
        0x9
        0xd3
        0x380
    .end array-data

    :array_4e
    .array-data 4
        0x9
        0xd4
        0x3c0
    .end array-data

    :array_4f
    .array-data 4
        0x9
        0xd5
        0x400
    .end array-data

    :array_50
    .array-data 4
        0x9
        0xd6
        0x440
    .end array-data

    :array_51
    .array-data 4
        0x9
        0xd7
        0x480
    .end array-data

    :array_52
    .array-data 4
        0x9
        0xd8
        0x4c0
    .end array-data

    :array_53
    .array-data 4
        0x9
        0xd9
        0x500
    .end array-data

    :array_54
    .array-data 4
        0x9
        0xda
        0x540
    .end array-data

    :array_55
    .array-data 4
        0x9
        0xdb
        0x580
    .end array-data

    :array_56
    .array-data 4
        0x9
        0x98
        0x5c0
    .end array-data

    :array_57
    .array-data 4
        0x9
        0x99
        0x600
    .end array-data

    :array_58
    .array-data 4
        0x9
        0x9a
        0x640
    .end array-data

    :array_59
    .array-data 4
        0x6
        0x18
        0x680
    .end array-data

    :array_5a
    .array-data 4
        0x9
        0x9b
        0x6c0
    .end array-data

    :array_5b
    .array-data 4
        0xb
        0x8
        0x700
    .end array-data

    :array_5c
    .array-data 4
        0xb
        0xc
        0x740
    .end array-data

    :array_5d
    .array-data 4
        0xb
        0xd
        0x780
    .end array-data

    :array_5e
    .array-data 4
        0xc
        0x12
        0x7c0
    .end array-data

    :array_5f
    .array-data 4
        0xc
        0x13
        0x800
    .end array-data

    :array_60
    .array-data 4
        0xc
        0x14
        0x840
    .end array-data

    :array_61
    .array-data 4
        0xc
        0x15
        0x880
    .end array-data

    :array_62
    .array-data 4
        0xc
        0x16
        0x8c0
    .end array-data

    :array_63
    .array-data 4
        0xc
        0x17
        0x900
    .end array-data

    :array_64
    .array-data 4
        0xc
        0x1c
        0x940
    .end array-data

    :array_65
    .array-data 4
        0xc
        0x1d
        0x980
    .end array-data

    :array_66
    .array-data 4
        0xc
        0x1e
        0x9c0
    .end array-data

    :array_67
    .array-data 4
        0xc
        0x1f
        0xa00
    .end array-data

    :array_68
    .array-data 4
        0xc
        0x1
        -0x1
    .end array-data

    :array_69
    .array-data 4
        0x9
        0x1
        -0x2
    .end array-data

    :array_6a
    .array-data 4
        0xa
        0x1
        -0x2
    .end array-data

    :array_6b
    .array-data 4
        0xb
        0x1
        -0x2
    .end array-data

    :array_6c
    .array-data 4
        0xc
        0x0
        -0x2
    .end array-data

    :array_6d
    .array-data 4
        0xa
        0x37
        0x0
    .end array-data

    :array_6e
    .array-data 4
        0x3
        0x2
        0x1
    .end array-data

    :array_6f
    .array-data 4
        0x2
        0x3
        0x2
    .end array-data

    :array_70
    .array-data 4
        0x2
        0x2
        0x3
    .end array-data

    :array_71
    .array-data 4
        0x3
        0x3
        0x4
    .end array-data

    :array_72
    .array-data 4
        0x4
        0x3
        0x5
    .end array-data

    :array_73
    .array-data 4
        0x4
        0x2
        0x6
    .end array-data

    :array_74
    .array-data 4
        0x5
        0x3
        0x7
    .end array-data

    :array_75
    .array-data 4
        0x6
        0x5
        0x8
    .end array-data

    :array_76
    .array-data 4
        0x6
        0x4
        0x9
    .end array-data

    :array_77
    .array-data 4
        0x7
        0x4
        0xa
    .end array-data

    :array_78
    .array-data 4
        0x7
        0x5
        0xb
    .end array-data

    :array_79
    .array-data 4
        0x7
        0x7
        0xc
    .end array-data

    :array_7a
    .array-data 4
        0x8
        0x4
        0xd
    .end array-data

    :array_7b
    .array-data 4
        0x8
        0x7
        0xe
    .end array-data

    :array_7c
    .array-data 4
        0x9
        0x18
        0xf
    .end array-data

    :array_7d
    .array-data 4
        0xa
        0x17
        0x10
    .end array-data

    :array_7e
    .array-data 4
        0xa
        0x18
        0x11
    .end array-data

    :array_7f
    .array-data 4
        0xa
        0x8
        0x12
    .end array-data

    :array_80
    .array-data 4
        0xb
        0x67
        0x13
    .end array-data

    :array_81
    .array-data 4
        0xb
        0x68
        0x14
    .end array-data

    :array_82
    .array-data 4
        0xb
        0x6c
        0x15
    .end array-data

    :array_83
    .array-data 4
        0xb
        0x37
        0x16
    .end array-data

    :array_84
    .array-data 4
        0xb
        0x28
        0x17
    .end array-data

    :array_85
    .array-data 4
        0xb
        0x17
        0x18
    .end array-data

    :array_86
    .array-data 4
        0xb
        0x18
        0x19
    .end array-data

    :array_87
    .array-data 4
        0xc
        0xca
        0x1a
    .end array-data

    :array_88
    .array-data 4
        0xc
        0xcb
        0x1b
    .end array-data

    :array_89
    .array-data 4
        0xc
        0xcc
        0x1c
    .end array-data

    :array_8a
    .array-data 4
        0xc
        0xcd
        0x1d
    .end array-data

    :array_8b
    .array-data 4
        0xc
        0x68
        0x1e
    .end array-data

    :array_8c
    .array-data 4
        0xc
        0x69
        0x1f
    .end array-data

    :array_8d
    .array-data 4
        0xc
        0x6a
        0x20
    .end array-data

    :array_8e
    .array-data 4
        0xc
        0x6b
        0x21
    .end array-data

    :array_8f
    .array-data 4
        0xc
        0xd2
        0x22
    .end array-data

    :array_90
    .array-data 4
        0xc
        0xd3
        0x23
    .end array-data

    :array_91
    .array-data 4
        0xc
        0xd4
        0x24
    .end array-data

    :array_92
    .array-data 4
        0xc
        0xd5
        0x25
    .end array-data

    :array_93
    .array-data 4
        0xc
        0xd6
        0x26
    .end array-data

    :array_94
    .array-data 4
        0xc
        0xd7
        0x27
    .end array-data

    :array_95
    .array-data 4
        0xc
        0x6c
        0x28
    .end array-data

    :array_96
    .array-data 4
        0xc
        0x6d
        0x29
    .end array-data

    :array_97
    .array-data 4
        0xc
        0xda
        0x2a
    .end array-data

    :array_98
    .array-data 4
        0xc
        0xdb
        0x2b
    .end array-data

    :array_99
    .array-data 4
        0xc
        0x54
        0x2c
    .end array-data

    :array_9a
    .array-data 4
        0xc
        0x55
        0x2d
    .end array-data

    :array_9b
    .array-data 4
        0xc
        0x56
        0x2e
    .end array-data

    :array_9c
    .array-data 4
        0xc
        0x57
        0x2f
    .end array-data

    :array_9d
    .array-data 4
        0xc
        0x64
        0x30
    .end array-data

    :array_9e
    .array-data 4
        0xc
        0x65
        0x31
    .end array-data

    :array_9f
    .array-data 4
        0xc
        0x52
        0x32
    .end array-data

    :array_a0
    .array-data 4
        0xc
        0x53
        0x33
    .end array-data

    :array_a1
    .array-data 4
        0xc
        0x24
        0x34
    .end array-data

    :array_a2
    .array-data 4
        0xc
        0x37
        0x35
    .end array-data

    :array_a3
    .array-data 4
        0xc
        0x38
        0x36
    .end array-data

    :array_a4
    .array-data 4
        0xc
        0x27
        0x37
    .end array-data

    :array_a5
    .array-data 4
        0xc
        0x28
        0x38
    .end array-data

    :array_a6
    .array-data 4
        0xc
        0x58
        0x39
    .end array-data

    :array_a7
    .array-data 4
        0xc
        0x59
        0x3a
    .end array-data

    :array_a8
    .array-data 4
        0xc
        0x2b
        0x3b
    .end array-data

    :array_a9
    .array-data 4
        0xc
        0x2c
        0x3c
    .end array-data

    :array_aa
    .array-data 4
        0xc
        0x5a
        0x3d
    .end array-data

    :array_ab
    .array-data 4
        0xc
        0x66
        0x3e
    .end array-data

    :array_ac
    .array-data 4
        0xc
        0x67
        0x3f
    .end array-data

    :array_ad
    .array-data 4
        0xa
        0xf
        0x40
    .end array-data

    :array_ae
    .array-data 4
        0xc
        0xc8
        0x80
    .end array-data

    :array_af
    .array-data 4
        0xc
        0xc9
        0xc0
    .end array-data

    :array_b0
    .array-data 4
        0xc
        0x5b
        0x100
    .end array-data

    :array_b1
    .array-data 4
        0xc
        0x33
        0x140
    .end array-data

    :array_b2
    .array-data 4
        0xc
        0x34
        0x180
    .end array-data

    :array_b3
    .array-data 4
        0xc
        0x35
        0x1c0
    .end array-data

    :array_b4
    .array-data 4
        0xd
        0x6c
        0x200
    .end array-data

    :array_b5
    .array-data 4
        0xd
        0x6d
        0x240
    .end array-data

    :array_b6
    .array-data 4
        0xd
        0x4a
        0x280
    .end array-data

    :array_b7
    .array-data 4
        0xd
        0x4b
        0x2c0
    .end array-data

    :array_b8
    .array-data 4
        0xd
        0x4c
        0x300
    .end array-data

    :array_b9
    .array-data 4
        0xd
        0x4d
        0x340
    .end array-data

    :array_ba
    .array-data 4
        0xd
        0x72
        0x380
    .end array-data

    :array_bb
    .array-data 4
        0xd
        0x73
        0x3c0
    .end array-data

    :array_bc
    .array-data 4
        0xd
        0x74
        0x400
    .end array-data

    :array_bd
    .array-data 4
        0xd
        0x75
        0x440
    .end array-data

    :array_be
    .array-data 4
        0xd
        0x76
        0x480
    .end array-data

    :array_bf
    .array-data 4
        0xd
        0x77
        0x4c0
    .end array-data

    :array_c0
    .array-data 4
        0xd
        0x52
        0x500
    .end array-data

    :array_c1
    .array-data 4
        0xd
        0x53
        0x540
    .end array-data

    :array_c2
    .array-data 4
        0xd
        0x54
        0x580
    .end array-data

    :array_c3
    .array-data 4
        0xd
        0x55
        0x5c0
    .end array-data

    :array_c4
    .array-data 4
        0xd
        0x5a
        0x600
    .end array-data

    :array_c5
    .array-data 4
        0xd
        0x5b
        0x640
    .end array-data

    :array_c6
    .array-data 4
        0xd
        0x64
        0x680
    .end array-data

    :array_c7
    .array-data 4
        0xd
        0x65
        0x6c0
    .end array-data

    :array_c8
    .array-data 4
        0xb
        0x8
        0x700
    .end array-data

    :array_c9
    .array-data 4
        0xb
        0xc
        0x740
    .end array-data

    :array_ca
    .array-data 4
        0xb
        0xd
        0x780
    .end array-data

    :array_cb
    .array-data 4
        0xc
        0x12
        0x7c0
    .end array-data

    :array_cc
    .array-data 4
        0xc
        0x13
        0x800
    .end array-data

    :array_cd
    .array-data 4
        0xc
        0x14
        0x840
    .end array-data

    :array_ce
    .array-data 4
        0xc
        0x15
        0x880
    .end array-data

    :array_cf
    .array-data 4
        0xc
        0x16
        0x8c0
    .end array-data

    :array_d0
    .array-data 4
        0xc
        0x17
        0x900
    .end array-data

    :array_d1
    .array-data 4
        0xc
        0x1c
        0x940
    .end array-data

    :array_d2
    .array-data 4
        0xc
        0x1d
        0x980
    .end array-data

    :array_d3
    .array-data 4
        0xc
        0x1e
        0x9c0
    .end array-data

    :array_d4
    .array-data 4
        0xc
        0x1f
        0xa00
    .end array-data

    :array_d5
    .array-data 4
        0xc
        0x1
        -0x1
    .end array-data

    :array_d6
    .array-data 4
        0x9
        0x1
        -0x2
    .end array-data

    :array_d7
    .array-data 4
        0xa
        0x1
        -0x2
    .end array-data

    :array_d8
    .array-data 4
        0xb
        0x1
        -0x2
    .end array-data

    :array_d9
    .array-data 4
        0xc
        0x0
        -0x2
    .end array-data

    :array_da
    .array-data 4
        0x3
        0x1
        0x0
    .end array-data

    :array_db
    .array-data 4
        0x4
        0x1
        0x0
    .end array-data

    :array_dc
    .array-data 4
        0x7
        0x3
        0x0
    .end array-data

    :array_dd
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_de
    .array-data 4
        0x3
        0x3
        0x0
    .end array-data

    :array_df
    .array-data 4
        0x1
        0x1
        0x0
    .end array-data

    :array_e0
    .array-data 4
        0x3
        0x2
        0x0
    .end array-data

    :array_e1
    .array-data 4
        0x6
        0x2
        0x0
    .end array-data

    :array_e2
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_e3
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
    .end array-data
.end method

.method private Fax3Encode2DRow()V
    .locals 10

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "a0":I
    iget-object v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    iget v2, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    iget v2, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    iget v4, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    invoke-static {v1, v2, v3, v4, v3}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result v1

    .line 160
    .local v1, "a1":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->refline:[B

    invoke-direct {p0, v2, v3, v3}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->refline:[B

    iget v4, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    invoke-static {v2, v3, v3, v4, v3}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result v2

    .line 164
    .local v2, "b1":I
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->refline:[B

    iget v5, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    invoke-direct {p0, v4, v3, v2}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v6

    invoke-static {v4, v3, v2, v5, v6}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->finddiff2([BIIII)I

    move-result v4

    .line 165
    .local v4, "b2":I
    if-lt v4, v1, :cond_6

    .line 166
    sub-int v5, v2, v1

    .line 167
    .local v5, "d":I
    const/4 v6, -0x3

    if-gt v6, v5, :cond_3

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    goto :goto_2

    .line 179
    :cond_2
    iget-object v6, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->vcodes:[[I

    add-int/lit8 v7, v5, 0x3

    aget-object v6, v6, v7

    invoke-direct {p0, v6}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putcode([I)V

    .line 180
    move v0, v1

    goto :goto_5

    .line 168
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    iget v7, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    iget v8, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    invoke-direct {p0, v6, v7, v1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v9

    invoke-static {v6, v7, v1, v8, v9}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->finddiff2([BIIII)I

    move-result v6

    .line 169
    .local v6, "a2":I
    iget-object v7, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->horizcode:[I

    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putcode([I)V

    .line 170
    add-int v7, v0, v1

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    iget v8, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    invoke-direct {p0, v7, v8, v0}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    .line 174
    :cond_4
    sub-int v7, v1, v0

    iget-object v8, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->TIFFFaxBlackCodes:[[I

    invoke-direct {p0, v7, v8}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putspan(I[[I)V

    .line 175
    sub-int v7, v6, v1

    iget-object v8, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->TIFFFaxWhiteCodes:[[I

    invoke-direct {p0, v7, v8}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putspan(I[[I)V

    goto :goto_4

    .line 171
    :cond_5
    :goto_3
    sub-int v7, v1, v0

    iget-object v8, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->TIFFFaxWhiteCodes:[[I

    invoke-direct {p0, v7, v8}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putspan(I[[I)V

    .line 172
    sub-int v7, v6, v1

    iget-object v8, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->TIFFFaxBlackCodes:[[I

    invoke-direct {p0, v7, v8}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putspan(I[[I)V

    .line 177
    :goto_4
    move v0, v6

    .line 182
    .end local v5    # "d":I
    .end local v6    # "a2":I
    :goto_5
    goto :goto_6

    .line 183
    :cond_6
    iget-object v5, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->passcode:[I

    invoke-direct {p0, v5}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putcode([I)V

    .line 184
    move v0, v4

    .line 186
    :goto_6
    iget v5, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    if-lt v0, v5, :cond_7

    .line 187
    nop

    .line 192
    return-void

    .line 188
    :cond_7
    iget-object v6, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    iget v7, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    invoke-direct {p0, v6, v7, v0}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v8

    invoke-static {v6, v7, v0, v5, v8}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result v1

    .line 189
    iget-object v5, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->refline:[B

    iget v6, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    iget-object v7, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    iget v8, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    invoke-direct {p0, v7, v8, v0}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-static {v5, v3, v0, v6, v7}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result v2

    .line 190
    iget-object v5, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->refline:[B

    iget v6, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    iget-object v7, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    iget v8, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    invoke-direct {p0, v7, v8, v0}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->pixel([BII)I

    move-result v7

    invoke-static {v5, v3, v2, v6, v7}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result v2

    goto/16 :goto_1
.end method

.method private Fax4PostEncode()V
    .locals 3

    .line 195
    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putBits(II)V

    .line 196
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putBits(II)V

    .line 197
    iget v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->bit:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    iget v2, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->data:I

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->data:I

    .line 200
    iput v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->bit:I

    .line 202
    :cond_0
    return-void
.end method

.method public static compress([BII)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 100
    new-instance v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;

    invoke-direct {v0, p1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;-><init>(I)V

    .line 101
    .local v0, "g4":Lcom/itextpdf/io/codec/CCITTG4Encoder;
    iget v1, v0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowbytes:I

    mul-int/2addr v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->fax4Encode([BII)V

    .line 102
    invoke-virtual {v0}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->close()[B

    move-result-object v1

    return-object v1
.end method

.method private static find0span([BIII)I
    .locals 6
    .param p0, "bp"    # [B
    .param p1, "offset"    # I
    .param p2, "bs"    # I
    .param p3, "be"    # I

    .line 260
    sub-int v0, p3, p2

    .line 263
    .local v0, "bits":I
    shr-int/lit8 v1, p2, 0x3

    add-int/2addr v1, p1

    .line 267
    .local v1, "pos":I
    const/16 v2, 0x8

    if-lez v0, :cond_3

    and-int/lit8 v3, p2, 0x7

    move v4, v3

    .local v4, "n":I
    if-eqz v3, :cond_3

    .line 268
    sget-object v3, Lcom/itextpdf/io/codec/CCITTG4Encoder;->zeroruns:[B

    aget-byte v5, p0, v1

    shl-int/2addr v5, v4

    and-int/lit16 v5, v5, 0xff

    aget-byte v3, v3, v5

    .line 269
    .local v3, "span":I
    rsub-int/lit8 v5, v4, 0x8

    if-le v3, v5, :cond_0

    .line 270
    rsub-int/lit8 v3, v4, 0x8

    .line 271
    :cond_0
    if-le v3, v0, :cond_1

    .line 272
    move v3, v0

    .line 273
    :cond_1
    add-int v5, v4, v3

    if-ge v5, v2, :cond_2

    .line 274
    return v3

    .line 275
    :cond_2
    sub-int/2addr v0, v3

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v3    # "span":I
    .end local v4    # "n":I
    :cond_3
    const/4 v3, 0x0

    .line 282
    .restart local v3    # "span":I
    :goto_0
    if-lt v0, v2, :cond_5

    .line 283
    aget-byte v4, p0, v1

    if-eqz v4, :cond_4

    .line 284
    sget-object v2, Lcom/itextpdf/io/codec/CCITTG4Encoder;->zeroruns:[B

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    aget-byte v2, v2, v4

    add-int/2addr v2, v3

    return v2

    .line 285
    :cond_4
    add-int/lit8 v3, v3, 0x8

    .line 286
    add-int/lit8 v0, v0, -0x8

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    :cond_5
    if-lez v0, :cond_7

    .line 293
    sget-object v2, Lcom/itextpdf/io/codec/CCITTG4Encoder;->zeroruns:[B

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    aget-byte v2, v2, v4

    .line 294
    .local v2, "n":I
    if-le v2, v0, :cond_6

    move v4, v0

    goto :goto_1

    :cond_6
    move v4, v2

    :goto_1
    add-int/2addr v3, v4

    .line 296
    .end local v2    # "n":I
    :cond_7
    return v3
.end method

.method private static find1span([BIII)I
    .locals 6
    .param p0, "bp"    # [B
    .param p1, "offset"    # I
    .param p2, "bs"    # I
    .param p3, "be"    # I

    .line 220
    sub-int v0, p3, p2

    .line 223
    .local v0, "bits":I
    shr-int/lit8 v1, p2, 0x3

    add-int/2addr v1, p1

    .line 227
    .local v1, "pos":I
    const/16 v2, 0x8

    if-lez v0, :cond_3

    and-int/lit8 v3, p2, 0x7

    move v4, v3

    .local v4, "n":I
    if-eqz v3, :cond_3

    .line 228
    sget-object v3, Lcom/itextpdf/io/codec/CCITTG4Encoder;->oneruns:[B

    aget-byte v5, p0, v1

    shl-int/2addr v5, v4

    and-int/lit16 v5, v5, 0xff

    aget-byte v3, v3, v5

    .line 229
    .local v3, "span":I
    rsub-int/lit8 v5, v4, 0x8

    if-le v3, v5, :cond_0

    .line 230
    rsub-int/lit8 v3, v4, 0x8

    .line 231
    :cond_0
    if-le v3, v0, :cond_1

    .line 232
    move v3, v0

    .line 233
    :cond_1
    add-int v5, v4, v3

    if-ge v5, v2, :cond_2

    .line 234
    return v3

    .line 235
    :cond_2
    sub-int/2addr v0, v3

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v3    # "span":I
    .end local v4    # "n":I
    :cond_3
    const/4 v3, 0x0

    .line 242
    .restart local v3    # "span":I
    :goto_0
    if-lt v0, v2, :cond_5

    .line 243
    aget-byte v4, p0, v1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 244
    sget-object v2, Lcom/itextpdf/io/codec/CCITTG4Encoder;->oneruns:[B

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    aget-byte v2, v2, v4

    add-int/2addr v2, v3

    return v2

    .line 245
    :cond_4
    add-int/lit8 v3, v3, 0x8

    .line 246
    add-int/lit8 v0, v0, -0x8

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_5
    if-lez v0, :cond_7

    .line 253
    sget-object v2, Lcom/itextpdf/io/codec/CCITTG4Encoder;->oneruns:[B

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    aget-byte v2, v2, v4

    .line 254
    .local v2, "n":I
    if-le v2, v0, :cond_6

    move v4, v0

    goto :goto_1

    :cond_6
    move v4, v2

    :goto_1
    add-int/2addr v3, v4

    .line 256
    .end local v2    # "n":I
    :cond_7
    return v3
.end method

.method private static finddiff([BIIII)I
    .locals 1
    .param p0, "bp"    # [B
    .param p1, "offset"    # I
    .param p2, "bs"    # I
    .param p3, "be"    # I
    .param p4, "color"    # I

    .line 300
    if-eqz p4, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->find1span([BIII)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->find0span([BIII)I

    move-result v0

    :goto_0
    add-int/2addr v0, p2

    return v0
.end method

.method private static finddiff2([BIIII)I
    .locals 1
    .param p0, "bp"    # [B
    .param p1, "offset"    # I
    .param p2, "bs"    # I
    .param p3, "be"    # I
    .param p4, "color"    # I

    .line 304
    if-ge p2, p3, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->finddiff([BIIII)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    return v0
.end method

.method private pixel([BII)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "bit"    # I

    .line 214
    iget v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowpixels:I

    if-lt p3, v0, :cond_0

    .line 215
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_0
    shr-int/lit8 v0, p3, 0x3

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, p3, 0x7

    rsub-int/lit8 v1, v1, 0x7

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private putBits(II)V
    .locals 6
    .param p1, "bits"    # I
    .param p2, "length"    # I

    .line 141
    :goto_0
    iget v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->bit:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-le p2, v0, :cond_0

    .line 142
    iget v3, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->data:I

    sub-int v4, p2, v0

    shr-int v4, p1, v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->data:I

    .line 143
    sub-int/2addr p2, v0

    .line 144
    iget-object v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 145
    iput v2, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->data:I

    .line 146
    iput v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->bit:I

    goto :goto_0

    .line 148
    :cond_0
    iget v3, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->data:I

    iget-object v4, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->msbmask:[I

    aget v4, v4, p2

    and-int/2addr v4, p1

    sub-int v5, v0, p2

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->data:I

    .line 149
    sub-int/2addr v0, p2

    iput v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->bit:I

    .line 150
    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 152
    iput v2, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->data:I

    .line 153
    iput v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->bit:I

    .line 155
    :cond_1
    return-void
.end method

.method private putcode([I)V
    .locals 2
    .param p1, "table"    # [I

    .line 115
    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putBits(II)V

    .line 116
    return-void
.end method

.method private putspan(I[[I)V
    .locals 6
    .param p1, "span"    # I
    .param p2, "tab"    # [[I

    .line 121
    :goto_0
    const/16 v0, 0xa40

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt p1, v0, :cond_0

    .line 122
    const/16 v0, 0x67

    aget-object v0, p2, v0

    .line 123
    .local v0, "te":[I
    aget v3, v0, v3

    .line 124
    .local v3, "code":I
    aget v2, v0, v2

    .line 125
    .local v2, "length":I
    invoke-direct {p0, v3, v2}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putBits(II)V

    .line 126
    aget v1, v0, v1

    sub-int/2addr p1, v1

    .line 127
    .end local v0    # "te":[I
    goto :goto_0

    .line 128
    .end local v2    # "length":I
    .end local v3    # "code":I
    :cond_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    .line 129
    shr-int/lit8 v0, p1, 0x6

    add-int/lit8 v0, v0, 0x3f

    aget-object v0, p2, v0

    .line 130
    .restart local v0    # "te":[I
    aget v4, v0, v3

    .line 131
    .local v4, "code":I
    aget v5, v0, v2

    .line 132
    .local v5, "length":I
    invoke-direct {p0, v4, v5}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putBits(II)V

    .line 133
    aget v1, v0, v1

    sub-int/2addr p1, v1

    .line 135
    .end local v0    # "te":[I
    .end local v4    # "code":I
    .end local v5    # "length":I
    :cond_1
    aget-object v0, p2, p1

    aget v0, v0, v3

    .line 136
    .local v0, "code":I
    aget-object v1, p2, p1

    aget v1, v1, v2

    .line 137
    .local v1, "length":I
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->putBits(II)V

    .line 138
    return-void
.end method


# virtual methods
.method public close()[B
    .locals 1

    .line 209
    invoke-direct {p0}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->Fax4PostEncode()V

    .line 210
    iget-object v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->outBuf:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public fax4Encode([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "height"    # I

    .line 111
    iget v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowbytes:I

    mul-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->fax4Encode([BII)V

    .line 112
    return-void
.end method

.method public fax4Encode([BII)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .line 80
    iput-object p1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    .line 81
    iput p2, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    .line 82
    iput p3, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->sizeData:I

    .line 83
    :goto_0
    iget v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->sizeData:I

    if-lez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->Fax3Encode2DRow()V

    .line 85
    iget-object v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->dataBp:[B

    iget v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    iget-object v2, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->refline:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowbytes:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    iget v1, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->rowbytes:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->offsetData:I

    .line 87
    iget v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->sizeData:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/io/codec/CCITTG4Encoder;->sizeData:I

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method
