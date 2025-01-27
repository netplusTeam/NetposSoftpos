.class public Lcom/itextpdf/barcodes/BarcodeDataMatrix;
.super Lcom/itextpdf/barcodes/Barcode2D;
.source "BarcodeDataMatrix.java"


# static fields
.field public static final DEFAULT_DATA_MATRIX_ENCODING:Ljava/lang/String; = "iso-8859-1"

.field public static final DM_ASCII:I = 0x1

.field public static final DM_AUTO:I = 0x0

.field public static final DM_B256:I = 0x4

.field public static final DM_C40:I = 0x2

.field public static final DM_EDIFACT:I = 0x6

.field public static final DM_ERROR_EXTENSION:I = 0x5

.field public static final DM_ERROR_INVALID_SQUARE:I = 0x3

.field public static final DM_ERROR_TEXT_TOO_BIG:I = 0x1

.field public static final DM_EXTENSION:I = 0x20

.field public static final DM_NO_ERROR:I = 0x0

.field public static final DM_RAW:I = 0x7

.field public static final DM_TEST:I = 0x40

.field public static final DM_TEXT:I = 0x3

.field public static final DM_X12:I = 0x5

.field private static final EXTENDED_ASCII:B = -0x15t

.field private static final LATCH_B256:B = -0x19t

.field private static final LATCH_C40:B = -0x1at

.field private static final LATCH_EDIFACT:B = -0x10t

.field private static final LATCH_TEXT:B = -0x11t

.field private static final LATCH_X12:B = -0x12t

.field private static final PADDING:B = -0x7ft

.field private static final UNLATCH:B = -0x2t

.field private static final X12:Ljava/lang/String; = "\r*> 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final dmSizes:[Lcom/itextpdf/barcodes/dmcode/DmParams;


# instance fields
.field private encoding:Ljava/lang/String;

.field private extOut:I

.field private f:[[I

.field private height:I

.field private image:[B

.field private options:I

.field private place:[S

.field private switchMode:[[I

.field private width:I

.field private ws:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 140
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/itextpdf/barcodes/dmcode/DmParams;

    new-instance v9, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/4 v6, 0x3

    const/4 v7, 0x3

    const/4 v8, 0x5

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v11, 0xc

    const/16 v12, 0xc

    const/16 v13, 0xc

    const/16 v14, 0xc

    const/4 v15, 0x5

    const/16 v16, 0x5

    const/16 v17, 0x7

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x8

    const/16 v5, 0x12

    const/16 v6, 0x8

    const/16 v7, 0x12

    const/4 v9, 0x5

    const/4 v10, 0x7

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0xe

    const/16 v5, 0xe

    const/16 v6, 0xe

    const/16 v7, 0xe

    const/16 v8, 0x8

    const/16 v9, 0x8

    const/16 v10, 0xa

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x8

    const/16 v5, 0x20

    const/16 v6, 0x8

    const/16 v7, 0x10

    const/16 v8, 0xa

    const/16 v9, 0xa

    const/16 v10, 0xb

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/16 v8, 0xc

    const/16 v9, 0xc

    const/16 v10, 0xc

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0xc

    const/16 v5, 0x1a

    const/16 v6, 0xc

    const/16 v7, 0x1a

    const/16 v8, 0x10

    const/16 v9, 0x10

    const/16 v10, 0xe

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/16 v6, 0x12

    const/16 v7, 0x12

    const/16 v8, 0x12

    const/16 v9, 0x12

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/16 v6, 0x14

    const/16 v7, 0x14

    const/16 v8, 0x16

    const/16 v9, 0x16

    const/16 v10, 0x12

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0xc

    const/16 v5, 0x24

    const/16 v6, 0xc

    const/16 v7, 0x12

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x16

    const/16 v5, 0x16

    const/16 v6, 0x16

    const/16 v7, 0x16

    const/16 v8, 0x1e

    const/16 v9, 0x1e

    const/16 v10, 0x14

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x10

    const/16 v5, 0x24

    const/16 v6, 0x10

    const/16 v7, 0x12

    const/16 v8, 0x20

    const/16 v9, 0x20

    const/16 v10, 0x18

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x18

    const/16 v5, 0x18

    const/16 v6, 0x18

    const/16 v7, 0x18

    const/16 v8, 0x24

    const/16 v9, 0x24

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x1a

    const/16 v5, 0x1a

    const/16 v6, 0x1a

    const/16 v7, 0x1a

    const/16 v8, 0x2c

    const/16 v9, 0x2c

    const/16 v10, 0x1c

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x10

    const/16 v5, 0x30

    const/16 v6, 0x10

    const/16 v7, 0x18

    const/16 v8, 0x31

    const/16 v9, 0x31

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x20

    const/16 v5, 0x20

    const/16 v7, 0x10

    const/16 v8, 0x3e

    const/16 v9, 0x3e

    const/16 v10, 0x24

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x24

    const/16 v5, 0x24

    const/16 v6, 0x12

    const/16 v7, 0x12

    const/16 v8, 0x56

    const/16 v9, 0x56

    const/16 v10, 0x2a

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x28

    const/16 v5, 0x28

    const/16 v6, 0x14

    const/16 v7, 0x14

    const/16 v8, 0x72

    const/16 v9, 0x72

    const/16 v10, 0x30

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x2c

    const/16 v5, 0x2c

    const/16 v6, 0x16

    const/16 v7, 0x16

    const/16 v8, 0x90

    const/16 v9, 0x90

    const/16 v10, 0x38

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x18

    const/16 v7, 0x18

    const/16 v8, 0xae

    const/16 v9, 0xae

    const/16 v10, 0x44

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x34

    const/16 v5, 0x34

    const/16 v6, 0x1a

    const/16 v7, 0x1a

    const/16 v8, 0xcc

    const/16 v9, 0x66

    const/16 v10, 0x2a

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x40

    const/16 v5, 0x40

    const/16 v6, 0x10

    const/16 v7, 0x10

    const/16 v8, 0x118

    const/16 v9, 0x8c

    const/16 v10, 0x38

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x48

    const/16 v5, 0x48

    const/16 v6, 0x12

    const/16 v7, 0x12

    const/16 v8, 0x170

    const/16 v9, 0x5c

    const/16 v10, 0x24

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x50

    const/16 v5, 0x50

    const/16 v6, 0x14

    const/16 v7, 0x14

    const/16 v8, 0x1c8

    const/16 v9, 0x72

    const/16 v10, 0x30

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x58

    const/16 v5, 0x58

    const/16 v6, 0x16

    const/16 v7, 0x16

    const/16 v8, 0x240

    const/16 v9, 0x90

    const/16 v10, 0x38

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x60

    const/16 v5, 0x60

    const/16 v6, 0x18

    const/16 v7, 0x18

    const/16 v8, 0x2b8

    const/16 v9, 0xae

    const/16 v10, 0x44

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x68

    const/16 v5, 0x68

    const/16 v6, 0x1a

    const/16 v7, 0x1a

    const/16 v8, 0x330

    const/16 v9, 0x88

    const/16 v10, 0x38

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x78

    const/16 v5, 0x78

    const/16 v6, 0x14

    const/16 v7, 0x14

    const/16 v8, 0x41a

    const/16 v9, 0xaf

    const/16 v10, 0x44

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x84

    const/16 v5, 0x84

    const/16 v6, 0x16

    const/16 v7, 0x16

    const/16 v8, 0x518

    const/16 v9, 0xa3

    const/16 v10, 0x3e

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/barcodes/dmcode/DmParams;

    const/16 v4, 0x90

    const/16 v5, 0x90

    const/16 v6, 0x18

    const/16 v7, 0x18

    const/16 v8, 0x616

    const/16 v9, 0x9c

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/itextpdf/barcodes/dmcode/DmParams;-><init>(IIIIIII)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sput-object v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->dmSizes:[Lcom/itextpdf/barcodes/dmcode/DmParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/itextpdf/barcodes/Barcode2D;-><init>()V

    .line 190
    const-string v0, "iso-8859-1"

    iput-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->encoding:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;

    .line 193
    invoke-direct {p0}, Lcom/itextpdf/barcodes/Barcode2D;-><init>()V

    .line 194
    const-string v0, "iso-8859-1"

    iput-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->encoding:Ljava/lang/String;

    .line 195
    invoke-virtual {p0, p1}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->setCode(Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 198
    invoke-direct {p0}, Lcom/itextpdf/barcodes/Barcode2D;-><init>()V

    .line 199
    iput-object p2, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->encoding:Ljava/lang/String;

    .line 200
    invoke-virtual {p0, p1}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->setCode(Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method private C40OrTextEncodation([BII[BIIZIII)I
    .locals 29
    .param p1, "text"    # [B
    .param p2, "textOffset"    # I
    .param p3, "textLength"    # I
    .param p4, "data"    # [B
    .param p5, "dataOffset"    # I
    .param p6, "dataLength"    # I
    .param p7, "c40"    # Z
    .param p8, "symbolIndex"    # I
    .param p9, "prevEnc"    # I
    .param p10, "origDataOffset"    # I

    .line 1010
    move/from16 v0, p5

    move/from16 v10, p8

    move/from16 v11, p9

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 1011
    return v1

    .line 1012
    :cond_0
    const/4 v12, 0x0

    .line 1013
    .local v12, "ptrIn":I
    const/4 v13, 0x0

    .line 1014
    .local v13, "ptrOut":I
    const-string v14, "!\"#$%&\'()*+,-./:;<=>?@[\\]^_"

    .line 1015
    .local v14, "shift2":Ljava/lang/String;
    if-eqz p7, :cond_1

    .line 1016
    const-string v2, " 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 1017
    .local v2, "basic":Ljava/lang/String;
    const-string v3, "`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

    move-object v15, v2

    move-object v9, v3

    .local v3, "shift3":Ljava/lang/String;
    goto :goto_0

    .line 1019
    .end local v2    # "basic":Ljava/lang/String;
    .end local v3    # "shift3":Ljava/lang/String;
    :cond_1
    const-string v2, " 0123456789abcdefghijklmnopqrstuvwxyz"

    .line 1020
    .restart local v2    # "basic":Ljava/lang/String;
    const-string v3, "`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\u007f"

    move-object v15, v2

    move-object v9, v3

    .line 1022
    .end local v2    # "basic":Ljava/lang/String;
    .local v9, "shift3":Ljava/lang/String;
    .local v15, "basic":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    .local v2, "addLatch":Z
    const/4 v3, 0x0

    .line 1023
    .local v3, "usingASCII":Z
    if-eqz p7, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    :goto_1
    move v8, v5

    .line 1024
    .local v8, "mode":I
    const/16 v6, 0x7f

    if-ne v11, v8, :cond_1e

    .line 1025
    const/4 v3, 0x1

    .line 1026
    add-int/lit8 v17, v10, -0x1

    .line 1027
    .local v17, "latestModeEntry":I
    :goto_2
    if-lez v17, :cond_3

    move/from16 v18, v3

    move-object/from16 v3, p0

    .end local v3    # "usingASCII":Z
    .local v18, "usingASCII":Z
    iget-object v7, v3, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    add-int/lit8 v20, v8, -0x1

    aget-object v7, v7, v20

    aget v7, v7, v17

    if-ne v7, v8, :cond_4

    .line 1028
    add-int/lit8 v17, v17, -0x1

    move/from16 v3, v18

    goto :goto_2

    .line 1027
    .end local v18    # "usingASCII":Z
    .restart local v3    # "usingASCII":Z
    :cond_3
    move/from16 v18, v3

    move-object/from16 v3, p0

    .line 1030
    .end local v3    # "usingASCII":Z
    .restart local v18    # "usingASCII":Z
    :cond_4
    const/4 v7, -0x1

    .line 1031
    .local v7, "unlatch":I
    const/16 v20, 0x0

    .line 1032
    .local v20, "dataAmountOfEncodedWithASCII":I
    sub-int v4, v10, v17

    const/4 v1, 0x5

    if-lt v4, v1, :cond_1d

    .line 1033
    sub-int v1, v10, v17

    move/from16 v4, v20

    .end local v20    # "dataAmountOfEncodedWithASCII":I
    .local v1, "i":I
    .local v4, "dataAmountOfEncodedWithASCII":I
    :goto_3
    if-lez v1, :cond_6

    .line 1034
    sub-int v20, p2, v1

    aget-byte v5, p1, v20

    and-int/lit16 v5, v5, 0xff

    .line 1035
    .local v5, "c":I
    if-le v5, v6, :cond_5

    .line 1036
    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    .line 1038
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 1033
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1040
    .end local v5    # "c":I
    :cond_6
    const/4 v1, 0x1

    :goto_5
    if-gt v1, v4, :cond_9

    .line 1041
    if-le v1, v0, :cond_7

    .line 1042
    goto :goto_6

    .line 1043
    :cond_7
    sub-int v5, v0, v1

    aget-byte v5, p4, v5

    const/4 v6, -0x2

    if-ne v5, v6, :cond_8

    .line 1044
    sub-int v7, v0, v1

    .line 1045
    goto :goto_6

    .line 1040
    :cond_8
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x7f

    goto :goto_5

    .line 1048
    :cond_9
    :goto_6
    const/4 v5, 0x0

    .line 1049
    .local v5, "amountOfEncodedWithASCII":I
    if-ltz v7, :cond_d

    .line 1050
    add-int/lit8 v1, v7, 0x1

    :goto_7
    if-ge v1, v0, :cond_c

    .line 1051
    aget-byte v6, p4, v1

    move/from16 v24, v2

    .end local v2    # "addLatch":Z
    .local v24, "addLatch":Z
    const/16 v2, -0x15

    if-ne v6, v2, :cond_a

    .line 1052
    add-int/lit8 v1, v1, 0x1

    .line 1053
    :cond_a
    aget-byte v2, p4, v1

    const/16 v6, -0x7f

    if-lt v2, v6, :cond_b

    aget-byte v2, p4, v1

    const/16 v6, -0x1b

    if-gt v2, v6, :cond_b

    .line 1054
    add-int/lit8 v5, v5, 0x1

    .line 1055
    :cond_b
    const/4 v2, 0x1

    add-int/2addr v5, v2

    .line 1050
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v24

    goto :goto_7

    .end local v24    # "addLatch":Z
    .restart local v2    # "addLatch":Z
    :cond_c
    move/from16 v24, v2

    .end local v2    # "addLatch":Z
    .restart local v24    # "addLatch":Z
    goto :goto_8

    .line 1058
    .end local v24    # "addLatch":Z
    .restart local v2    # "addLatch":Z
    :cond_d
    move/from16 v24, v2

    .end local v2    # "addLatch":Z
    .restart local v24    # "addLatch":Z
    sub-int v5, v10, v17

    .line 1059
    :goto_8
    const/4 v2, 0x0

    .line 1060
    .local v2, "dataOffsetNew":I
    move v1, v5

    :goto_9
    if-lez v1, :cond_1c

    .line 1061
    const/4 v6, 0x0

    .line 1062
    .local v6, "requiredCapacityForASCII":I
    const/16 v20, 0x0

    .line 1063
    .local v20, "requiredCapacityForC40orText":I
    move/from16 v25, v1

    .local v25, "j":I
    :goto_a
    if-ltz v25, :cond_14

    .line 1064
    sub-int v26, p2, v25

    aget-byte v3, p1, v26

    and-int/lit16 v3, v3, 0xff

    .line 1065
    .local v3, "c":I
    move/from16 v26, v4

    const/16 v4, 0x7f

    .end local v4    # "dataAmountOfEncodedWithASCII":I
    .local v26, "dataAmountOfEncodedWithASCII":I
    if-le v3, v4, :cond_e

    .line 1066
    add-int/lit8 v3, v3, -0x80

    .line 1067
    add-int/lit8 v20, v20, 0x2

    .line 1069
    :cond_e
    int-to-char v4, v3

    invoke-virtual {v15, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_b

    :cond_f
    const/4 v4, 0x2

    :goto_b
    add-int v20, v20, v4

    .line 1070
    const/16 v4, 0x7f

    if-le v3, v4, :cond_10

    .line 1071
    add-int/lit8 v6, v6, 0x2

    move/from16 v4, v25

    goto :goto_d

    .line 1073
    :cond_10
    if-lez v25, :cond_12

    invoke-static {v3}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_12

    sub-int v4, p2, v25

    const/16 v22, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1074
    sub-int v4, p2, v25

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    int-to-char v4, v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_11

    const/4 v4, 0x1

    goto :goto_c

    :cond_11
    const/4 v4, 0x2

    :goto_c
    add-int v20, v20, v4

    .line 1075
    add-int/lit8 v25, v25, -0x1

    .line 1076
    add-int/lit8 v2, v6, 0x1

    .line 1078
    :cond_12
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v25

    .line 1080
    .end local v25    # "j":I
    .local v4, "j":I
    :goto_d
    move/from16 v25, v2

    const/4 v2, 0x1

    .end local v2    # "dataOffsetNew":I
    .local v25, "dataOffsetNew":I
    if-ne v4, v2, :cond_13

    .line 1081
    move v2, v6

    .end local v25    # "dataOffsetNew":I
    .restart local v2    # "dataOffsetNew":I
    goto :goto_e

    .line 1080
    .end local v2    # "dataOffsetNew":I
    .restart local v25    # "dataOffsetNew":I
    :cond_13
    move/from16 v2, v25

    .line 1063
    .end local v25    # "dataOffsetNew":I
    .restart local v2    # "dataOffsetNew":I
    :goto_e
    add-int/lit8 v25, v4, -0x1

    move-object/from16 v3, p0

    move/from16 v4, v26

    .end local v4    # "j":I
    .local v25, "j":I
    goto :goto_a

    .end local v3    # "c":I
    .end local v26    # "dataAmountOfEncodedWithASCII":I
    .local v4, "dataAmountOfEncodedWithASCII":I
    :cond_14
    move/from16 v26, v4

    .line 1083
    .end local v4    # "dataAmountOfEncodedWithASCII":I
    .end local v25    # "j":I
    .restart local v26    # "dataAmountOfEncodedWithASCII":I
    if-ltz v7, :cond_16

    sub-int v3, v0, v6

    if-eq v3, v7, :cond_15

    goto :goto_f

    :cond_15
    const/4 v3, 0x0

    goto :goto_10

    :cond_16
    :goto_f
    const/4 v3, 0x1

    :goto_10
    move/from16 v24, v3

    .line 1084
    rem-int/lit8 v3, v20, 0x3

    if-nez v3, :cond_1a

    div-int/lit8 v3, v20, 0x3

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    if-eqz v24, :cond_17

    const/4 v4, 0x2

    goto :goto_11

    :cond_17
    const/4 v4, 0x0

    :goto_11
    add-int/2addr v3, v4

    if-ge v3, v6, :cond_1a

    .line 1086
    const/4 v3, 0x0

    .line 1087
    .end local v18    # "usingASCII":Z
    .local v3, "usingASCII":Z
    add-int/lit8 v4, v1, 0x1

    .line 1088
    .end local p3    # "textLength":I
    .local v4, "textLength":I
    sub-int v18, p2, v1

    .line 1089
    .end local p2    # "textOffset":I
    .local v18, "textOffset":I
    if-eqz v24, :cond_18

    move/from16 v25, v2

    goto :goto_12

    :cond_18
    add-int/lit8 v25, v2, 0x1

    :goto_12
    sub-int v0, v0, v25

    .line 1090
    .end local p5    # "dataOffset":I
    .local v0, "dataOffset":I
    if-eqz v24, :cond_19

    move/from16 v25, v2

    goto :goto_13

    :cond_19
    add-int/lit8 v25, v2, 0x1

    :goto_13
    add-int v25, p6, v25

    .line 1091
    .end local p6    # "dataLength":I
    .local v25, "dataLength":I
    move v1, v3

    move/from16 v2, v24

    const/4 v3, -0x1

    goto :goto_14

    .line 1093
    .end local v0    # "dataOffset":I
    .end local v3    # "usingASCII":Z
    .end local v4    # "textLength":I
    .end local v25    # "dataLength":I
    .local v18, "usingASCII":Z
    .restart local p2    # "textOffset":I
    .restart local p3    # "textLength":I
    .restart local p5    # "dataOffset":I
    .restart local p6    # "dataLength":I
    :cond_1a
    sub-int v3, p2, v1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    sub-int v3, p2, v1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1094
    add-int/lit8 v1, v1, -0x1

    .line 1060
    .end local v6    # "requiredCapacityForASCII":I
    .end local v20    # "requiredCapacityForC40orText":I
    :cond_1b
    const/4 v3, -0x1

    add-int/2addr v1, v3

    move-object/from16 v3, p0

    move/from16 v4, v26

    goto/16 :goto_9

    .end local v26    # "dataAmountOfEncodedWithASCII":I
    .local v4, "dataAmountOfEncodedWithASCII":I
    :cond_1c
    move/from16 v26, v4

    const/4 v3, -0x1

    .end local v4    # "dataAmountOfEncodedWithASCII":I
    .restart local v26    # "dataAmountOfEncodedWithASCII":I
    move/from16 v4, p3

    move/from16 v25, p6

    move/from16 v1, v18

    move/from16 v2, v24

    move/from16 v18, p2

    goto :goto_14

    .line 1032
    .end local v1    # "i":I
    .end local v5    # "amountOfEncodedWithASCII":I
    .end local v24    # "addLatch":Z
    .end local v26    # "dataAmountOfEncodedWithASCII":I
    .local v2, "addLatch":Z
    .local v20, "dataAmountOfEncodedWithASCII":I
    :cond_1d
    move/from16 v24, v2

    const/4 v3, -0x1

    .end local v2    # "addLatch":Z
    .restart local v24    # "addLatch":Z
    move/from16 v4, p3

    move/from16 v25, p6

    move/from16 v1, v18

    move/from16 v18, p2

    .line 1097
    .end local v7    # "unlatch":I
    .end local v17    # "latestModeEntry":I
    .end local v20    # "dataAmountOfEncodedWithASCII":I
    .end local v24    # "addLatch":Z
    .end local p2    # "textOffset":I
    .end local p3    # "textLength":I
    .end local p5    # "dataOffset":I
    .end local p6    # "dataLength":I
    .restart local v0    # "dataOffset":I
    .local v1, "usingASCII":Z
    .restart local v2    # "addLatch":Z
    .local v4, "textLength":I
    .local v18, "textOffset":I
    .restart local v25    # "dataLength":I
    :goto_14
    move/from16 v17, v0

    move/from16 v20, v1

    move/from16 v24, v2

    move v7, v4

    goto :goto_15

    .end local v0    # "dataOffset":I
    .end local v1    # "usingASCII":Z
    .end local v4    # "textLength":I
    .end local v18    # "textOffset":I
    .end local v25    # "dataLength":I
    .restart local v3    # "usingASCII":Z
    .restart local p2    # "textOffset":I
    .restart local p3    # "textLength":I
    .restart local p5    # "dataOffset":I
    .restart local p6    # "dataLength":I
    :cond_1e
    move/from16 v24, v2

    move v1, v3

    const/4 v3, -0x1

    .end local v2    # "addLatch":Z
    .end local v3    # "usingASCII":Z
    .restart local v1    # "usingASCII":Z
    .restart local v24    # "addLatch":Z
    if-eq v10, v3, :cond_1f

    .line 1098
    const/4 v1, 0x1

    move/from16 v18, p2

    move/from16 v7, p3

    move/from16 v25, p6

    move/from16 v17, v0

    move/from16 v20, v1

    goto :goto_15

    .line 1097
    :cond_1f
    move/from16 v18, p2

    move/from16 v7, p3

    move/from16 v25, p6

    move/from16 v17, v0

    move/from16 v20, v1

    .line 1100
    .end local v1    # "usingASCII":Z
    .end local p2    # "textOffset":I
    .end local p3    # "textLength":I
    .end local p5    # "dataOffset":I
    .end local p6    # "dataLength":I
    .local v7, "textLength":I
    .local v17, "dataOffset":I
    .restart local v18    # "textOffset":I
    .local v20, "usingASCII":Z
    .restart local v25    # "dataLength":I
    :goto_15
    if-gez v17, :cond_20

    .line 1101
    return v3

    .line 1103
    :cond_20
    if-eqz v20, :cond_22

    .line 1104
    const/4 v3, 0x1

    if-ne v11, v8, :cond_21

    const/16 v22, 0x1

    goto :goto_16

    :cond_21
    const/16 v22, -0x1

    :goto_16
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v25

    move/from16 v27, v7

    .end local v7    # "textLength":I
    .local v27, "textLength":I
    move/from16 v7, v22

    move/from16 v26, v8

    .end local v8    # "mode":I
    .local v26, "mode":I
    move/from16 v8, v16

    move-object v11, v9

    .end local v9    # "shift3":Ljava/lang/String;
    .local v11, "shift3":Ljava/lang/String;
    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->asciiEncodation([BII[BIIIII)I

    move-result v0

    return v0

    .line 1106
    .end local v11    # "shift3":Ljava/lang/String;
    .end local v26    # "mode":I
    .end local v27    # "textLength":I
    .restart local v7    # "textLength":I
    .restart local v8    # "mode":I
    .restart local v9    # "shift3":Ljava/lang/String;
    :cond_22
    move/from16 v27, v7

    move/from16 v26, v8

    move-object v11, v9

    .end local v7    # "textLength":I
    .end local v8    # "mode":I
    .end local v9    # "shift3":Ljava/lang/String;
    .restart local v11    # "shift3":Ljava/lang/String;
    .restart local v26    # "mode":I
    .restart local v27    # "textLength":I
    if-eqz v24, :cond_24

    .line 1107
    add-int/lit8 v0, v13, 0x1

    .end local v13    # "ptrOut":I
    .local v0, "ptrOut":I
    add-int v13, v17, v13

    if-eqz p7, :cond_23

    const/16 v1, -0x1a

    goto :goto_17

    :cond_23
    const/16 v1, -0x11

    :goto_17
    aput-byte v1, p4, v13

    move v13, v0

    .line 1109
    .end local v0    # "ptrOut":I
    .restart local v13    # "ptrOut":I
    :cond_24
    move/from16 v9, v27

    .end local v27    # "textLength":I
    .local v9, "textLength":I
    mul-int/lit8 v7, v9, 0x4

    add-int/lit8 v7, v7, 0xa

    new-array v8, v7, [I

    .line 1110
    .local v8, "enc":[I
    const/4 v0, 0x0

    .line 1111
    .local v0, "encPtr":I
    const/4 v1, 0x0

    .line 1112
    .local v1, "last0":I
    const/4 v2, 0x0

    move/from16 v27, v2

    move/from16 v28, v12

    move v12, v1

    move/from16 v1, v28

    .line 1113
    .local v1, "ptrIn":I
    .local v12, "last0":I
    .local v27, "last1":I
    :goto_18
    if-ge v1, v9, :cond_2b

    .line 1114
    rem-int/lit8 v2, v0, 0x3

    if-nez v2, :cond_25

    .line 1115
    move v2, v1

    .line 1116
    .end local v12    # "last0":I
    .local v2, "last0":I
    move v3, v0

    move v12, v2

    move/from16 v27, v3

    .line 1118
    .end local v2    # "last0":I
    .restart local v12    # "last0":I
    :cond_25
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ptrIn":I
    .local v2, "ptrIn":I
    add-int v1, v18, v1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 1119
    .local v1, "c":I
    const/16 v3, 0x7f

    if-le v1, v3, :cond_26

    .line 1120
    add-int/lit8 v1, v1, -0x80

    .line 1121
    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    .end local v0    # "encPtr":I
    .local v4, "encPtr":I
    aput v5, v8, v0

    .line 1122
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "encPtr":I
    .restart local v0    # "encPtr":I
    const/16 v5, 0x1e

    aput v5, v8, v4

    .line 1124
    :cond_26
    int-to-char v4, v1

    invoke-virtual {v15, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1125
    .local v4, "idx":I
    if-ltz v4, :cond_27

    .line 1126
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "encPtr":I
    .local v5, "encPtr":I
    add-int/lit8 v6, v4, 0x3

    aput v6, v8, v0

    move v0, v5

    const/4 v6, 0x0

    goto :goto_19

    .line 1127
    .end local v5    # "encPtr":I
    .restart local v0    # "encPtr":I
    :cond_27
    const/16 v5, 0x20

    if-ge v1, v5, :cond_28

    .line 1128
    add-int/lit8 v5, v0, 0x1

    const/4 v6, 0x0

    .end local v0    # "encPtr":I
    .restart local v5    # "encPtr":I
    aput v6, v8, v0

    .line 1129
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "encPtr":I
    .restart local v0    # "encPtr":I
    aput v1, v8, v5

    goto :goto_19

    .line 1130
    :cond_28
    const/4 v6, 0x0

    int-to-char v5, v1

    invoke-virtual {v14, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    move v4, v5

    if-ltz v5, :cond_29

    .line 1131
    add-int/lit8 v5, v0, 0x1

    const/4 v7, 0x1

    .end local v0    # "encPtr":I
    .restart local v5    # "encPtr":I
    aput v7, v8, v0

    .line 1132
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "encPtr":I
    .restart local v0    # "encPtr":I
    aput v4, v8, v5

    goto :goto_19

    .line 1133
    :cond_29
    int-to-char v5, v1

    invoke-virtual {v11, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    move v4, v5

    if-ltz v5, :cond_2a

    .line 1134
    add-int/lit8 v5, v0, 0x1

    const/4 v7, 0x2

    .end local v0    # "encPtr":I
    .restart local v5    # "encPtr":I
    aput v7, v8, v0

    .line 1135
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "encPtr":I
    .restart local v0    # "encPtr":I
    aput v4, v8, v5

    .line 1137
    .end local v4    # "idx":I
    :cond_2a
    :goto_19
    move v1, v2

    goto :goto_18

    .line 1138
    .end local v2    # "ptrIn":I
    .local v1, "ptrIn":I
    :cond_2b
    rem-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_2c

    .line 1139
    move v1, v12

    .line 1140
    move/from16 v0, v27

    move v7, v0

    move v6, v1

    goto :goto_1a

    .line 1138
    :cond_2c
    move v7, v0

    move v6, v1

    .line 1142
    .end local v0    # "encPtr":I
    .end local v1    # "ptrIn":I
    .local v6, "ptrIn":I
    .local v7, "encPtr":I
    :goto_1a
    div-int/lit8 v0, v7, 0x3

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int/lit8 v1, v25, -0x2

    if-le v0, v1, :cond_2d

    .line 1143
    const/4 v0, -0x1

    return v0

    .line 1145
    :cond_2d
    const/4 v0, 0x0

    move/from16 v28, v13

    move v13, v0

    move/from16 v0, v28

    .line 1146
    .local v0, "ptrOut":I
    .local v13, "i":I
    :goto_1b
    if-ge v13, v7, :cond_2e

    .line 1147
    aget v1, v8, v13

    mul-int/lit16 v1, v1, 0x640

    add-int/lit8 v2, v13, 0x1

    aget v2, v8, v2

    mul-int/lit8 v2, v2, 0x28

    add-int/2addr v1, v2

    add-int/lit8 v2, v13, 0x2

    aget v2, v8, v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1148
    .local v1, "a":I
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "ptrOut":I
    .local v3, "ptrOut":I
    add-int v0, v17, v0

    div-int/lit16 v4, v1, 0x100

    int-to-byte v4, v4

    aput-byte v4, p4, v0

    .line 1149
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "ptrOut":I
    .restart local v0    # "ptrOut":I
    add-int v3, v17, v3

    int-to-byte v4, v1

    aput-byte v4, p4, v3

    .line 1146
    add-int/lit8 v13, v13, 0x3

    goto :goto_1b

    .line 1151
    .end local v1    # "a":I
    :cond_2e
    sub-int v1, v25, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_2f

    .line 1152
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ptrOut":I
    .local v1, "ptrOut":I
    add-int v0, v17, v0

    const/4 v2, -0x2

    aput-byte v2, p4, v0

    move/from16 v16, v1

    goto :goto_1c

    .line 1151
    .end local v1    # "ptrOut":I
    .restart local v0    # "ptrOut":I
    :cond_2f
    move/from16 v16, v0

    .line 1153
    .end local v0    # "ptrOut":I
    .local v16, "ptrOut":I
    :goto_1c
    if-gez v10, :cond_30

    if-le v9, v6, :cond_30

    .line 1154
    add-int v2, v18, v6

    sub-int v3, v9, v6

    add-int v5, v17, v16

    sub-int v19, v25, v16

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move/from16 v23, v6

    .end local v6    # "ptrIn":I
    .local v23, "ptrIn":I
    move/from16 v6, v19

    move/from16 v19, v7

    .end local v7    # "encPtr":I
    .local v19, "encPtr":I
    move/from16 v7, v21

    move-object/from16 v21, v8

    .end local v8    # "enc":[I
    .local v21, "enc":[I
    move/from16 v8, v22

    move/from16 v22, v9

    .end local v9    # "textLength":I
    .local v22, "textLength":I
    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->asciiEncodation([BII[BIIIII)I

    move-result v0

    .line 1155
    .end local v13    # "i":I
    .local v0, "i":I
    return v0

    .line 1153
    .end local v0    # "i":I
    .end local v19    # "encPtr":I
    .end local v21    # "enc":[I
    .end local v22    # "textLength":I
    .end local v23    # "ptrIn":I
    .restart local v6    # "ptrIn":I
    .restart local v7    # "encPtr":I
    .restart local v8    # "enc":[I
    .restart local v9    # "textLength":I
    .restart local v13    # "i":I
    :cond_30
    move/from16 v23, v6

    move/from16 v19, v7

    move-object/from16 v21, v8

    move/from16 v22, v9

    .line 1157
    .end local v6    # "ptrIn":I
    .end local v7    # "encPtr":I
    .end local v8    # "enc":[I
    .end local v9    # "textLength":I
    .restart local v19    # "encPtr":I
    .restart local v21    # "enc":[I
    .restart local v22    # "textLength":I
    .restart local v23    # "ptrIn":I
    add-int v0, v16, v17

    sub-int v0, v0, p10

    return v0
.end method

.method private EdifactEncodation([BII[BIIIIIZ)I
    .locals 40
    .param p1, "text"    # [B
    .param p2, "textOffset"    # I
    .param p3, "textLength"    # I
    .param p4, "data"    # [B
    .param p5, "dataOffset"    # I
    .param p6, "dataLength"    # I
    .param p7, "symbolIndex"    # I
    .param p8, "prevEnc"    # I
    .param p9, "origDataOffset"    # I
    .param p10, "sizeFixed"    # Z

    .line 787
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v0, p5

    move/from16 v12, p7

    move/from16 v13, p8

    if-nez p3, :cond_0

    .line 788
    const/4 v1, 0x0

    return v1

    .line 789
    :cond_0
    const/4 v14, 0x0

    .line 790
    .local v14, "ptrIn":I
    const/4 v15, 0x0

    .line 791
    .local v15, "ptrOut":I
    const/16 v16, 0x0

    .line 792
    .local v16, "edi":I
    const/16 v17, 0x12

    .line 793
    .local v17, "pedi":I
    const/16 v18, 0x1

    .line 794
    .local v18, "ascii":Z
    const/4 v1, -0x1

    .local v1, "latestModeEntryActual":I
    const/4 v2, -0x1

    .local v2, "latestModeEntryC40orX12":I
    const/4 v3, -0x1

    .line 795
    .local v3, "prevMode":I
    const/16 v9, 0x5f

    const/16 v8, 0x20

    const/16 v7, 0x40

    const/4 v6, 0x6

    move/from16 v19, v3

    .end local v3    # "prevMode":I
    .local v19, "prevMode":I
    const/4 v3, 0x1

    if-ne v13, v6, :cond_b

    aget-byte v4, v11, p2

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v4, v4, 0xe0

    if-eq v4, v7, :cond_1

    aget-byte v4, v11, p2

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v4, v4, 0xe0

    if-ne v4, v8, :cond_b

    :cond_1
    aget-byte v4, v11, p2

    and-int/lit16 v4, v4, 0xff

    if-eq v4, v9, :cond_b

    add-int/lit8 v4, p2, -0x1

    aget-byte v4, v11, v4

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v4, v4, 0xe0

    if-eq v4, v7, :cond_2

    add-int/lit8 v4, p2, -0x1

    aget-byte v4, v11, v4

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v4, v4, 0xe0

    if-ne v4, v8, :cond_b

    :cond_2
    add-int/lit8 v4, p2, -0x1

    aget-byte v4, v11, v4

    and-int/lit16 v4, v4, 0xff

    if-eq v4, v9, :cond_b

    .line 797
    add-int/lit8 v1, v12, -0x1

    .line 798
    :goto_0
    const/4 v4, 0x5

    if-lez v1, :cond_4

    iget-object v5, v10, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    aget-object v5, v5, v4

    aget v5, v5, v1

    if-ne v5, v6, :cond_4

    .line 799
    sub-int v5, v12, v1

    add-int/2addr v5, v3

    sub-int v5, p2, v5

    aget-byte v5, v11, v5

    and-int/lit16 v5, v5, 0xff

    .line 800
    .local v5, "c":I
    and-int/lit16 v6, v5, 0xe0

    if-eq v6, v7, :cond_3

    and-int/lit16 v6, v5, 0xe0

    if-ne v6, v8, :cond_4

    :cond_3
    if-eq v5, v9, :cond_4

    .line 801
    add-int/lit8 v1, v1, -0x1

    const/4 v6, 0x6

    goto :goto_0

    .line 805
    .end local v5    # "c":I
    :cond_4
    iget-object v5, v10, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    aget-object v5, v5, v4

    aget v5, v5, v1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    if-ne v5, v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, -0x1

    :cond_6
    :goto_1
    move v4, v5

    .line 807
    .end local v19    # "prevMode":I
    .local v4, "prevMode":I
    if-lez v4, :cond_7

    .line 808
    move v2, v1

    .line 809
    :cond_7
    :goto_2
    if-lez v4, :cond_a

    if-lez v2, :cond_a

    iget-object v5, v10, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    add-int/lit8 v6, v4, -0x1

    aget-object v5, v5, v6

    aget v5, v5, v2

    if-ne v5, v4, :cond_a

    .line 810
    sub-int v5, v12, v2

    add-int/2addr v5, v3

    sub-int v5, p2, v5

    aget-byte v5, v11, v5

    and-int/lit16 v5, v5, 0xff

    .line 811
    .restart local v5    # "c":I
    and-int/lit16 v6, v5, 0xe0

    if-eq v6, v7, :cond_8

    and-int/lit16 v6, v5, 0xe0

    if-ne v6, v8, :cond_9

    :cond_8
    if-eq v5, v9, :cond_9

    .line 812
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 814
    :cond_9
    const/4 v2, -0x1

    .line 815
    move/from16 v19, v1

    move/from16 v23, v2

    move v6, v4

    goto :goto_3

    .line 819
    .end local v5    # "c":I
    :cond_a
    move/from16 v19, v1

    move/from16 v23, v2

    move v6, v4

    goto :goto_3

    .end local v4    # "prevMode":I
    .restart local v19    # "prevMode":I
    :cond_b
    move/from16 v23, v2

    move/from16 v6, v19

    move/from16 v19, v1

    .end local v1    # "latestModeEntryActual":I
    .end local v2    # "latestModeEntryC40orX12":I
    .local v6, "prevMode":I
    .local v19, "latestModeEntryActual":I
    .local v23, "latestModeEntryC40orX12":I
    :goto_3
    add-int v1, v0, p6

    .line 820
    .local v1, "dataSize":I
    const/4 v2, 0x0

    .line 821
    .local v2, "asciiOneSymbol":Z
    const/4 v4, -0x1

    if-eq v12, v4, :cond_c

    .line 822
    const/4 v2, 0x1

    .line 823
    :cond_c
    const/4 v4, 0x0

    .local v4, "dataTaken":I
    const/4 v5, 0x0

    .line 824
    .local v5, "dataRequired":I
    const/16 v8, 0x9

    const/4 v7, 0x3

    if-ltz v23, :cond_17

    sub-int v29, v12, v23

    add-int/lit8 v9, v29, 0x1

    if-le v9, v8, :cond_17

    .line 825
    sub-int v8, v12, v23

    add-int/2addr v8, v3

    .line 826
    .end local p3    # "textLength":I
    .local v8, "textLength":I
    const/4 v4, 0x0

    .line 827
    const/4 v5, 0x0

    .line 828
    div-int/lit8 v9, v8, 0x4

    mul-int/2addr v9, v7

    add-int/2addr v9, v3

    add-int/2addr v5, v9

    .line 829
    if-nez p10, :cond_10

    array-length v9, v11

    sub-int/2addr v9, v3

    if-eq v12, v9, :cond_d

    if-gez v12, :cond_10

    :cond_d
    rem-int/lit8 v9, v8, 0x4

    if-ge v9, v7, :cond_10

    .line 830
    const v1, 0x7fffffff

    .line 831
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    sget-object v7, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->dmSizes:[Lcom/itextpdf/barcodes/dmcode/DmParams;

    array-length v3, v7

    if-ge v9, v3, :cond_f

    .line 832
    aget-object v3, v7, v9

    iget v3, v3, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    rem-int/lit8 v32, v8, 0x4

    move/from16 p3, v1

    .end local v1    # "dataSize":I
    .local p3, "dataSize":I
    add-int v1, v5, v32

    if-lt v3, v1, :cond_e

    .line 833
    aget-object v1, v7, v9

    iget v1, v1, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    .line 834
    .end local p3    # "dataSize":I
    .restart local v1    # "dataSize":I
    goto :goto_5

    .line 831
    .end local v1    # "dataSize":I
    .restart local p3    # "dataSize":I
    :cond_e
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p3

    const/4 v3, 0x1

    const/4 v7, 0x3

    goto :goto_4

    .end local p3    # "dataSize":I
    .restart local v1    # "dataSize":I
    :cond_f
    move/from16 p3, v1

    .line 838
    .end local v9    # "i":I
    :cond_10
    :goto_5
    sub-int v3, v1, v0

    sub-int/2addr v3, v5

    const/4 v7, 0x2

    if-gt v3, v7, :cond_11

    rem-int/lit8 v3, v8, 0x4

    if-gt v3, v7, :cond_11

    .line 839
    rem-int/lit8 v3, v8, 0x4

    add-int/2addr v5, v3

    goto :goto_6

    .line 841
    :cond_11
    rem-int/lit8 v3, v8, 0x4

    const/4 v7, 0x1

    add-int/2addr v3, v7

    add-int/2addr v5, v3

    .line 842
    rem-int/lit8 v3, v8, 0x4

    const/4 v7, 0x3

    if-ne v3, v7, :cond_12

    .line 843
    add-int/lit8 v5, v5, -0x1

    .line 845
    :cond_12
    :goto_6
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_7
    if-ltz v3, :cond_15

    .line 846
    add-int/lit8 v4, v4, 0x1

    .line 847
    aget-byte v7, p4, v3

    const/4 v9, 0x2

    if-ne v6, v9, :cond_13

    const/16 v9, -0x1a

    goto :goto_8

    :cond_13
    const/16 v9, -0x12

    :goto_8
    if-ne v7, v9, :cond_14

    .line 848
    goto :goto_9

    .line 845
    :cond_14
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 851
    .end local v3    # "i":I
    :cond_15
    :goto_9
    if-gt v5, v4, :cond_16

    .line 852
    const/4 v2, 0x0

    .line 853
    add-int/lit8 v3, v8, -0x1

    sub-int v3, p2, v3

    .line 854
    .end local p2    # "textOffset":I
    .local v3, "textOffset":I
    sub-int/2addr v0, v4

    .line 855
    .end local p5    # "dataOffset":I
    .local v0, "dataOffset":I
    add-int v7, p6, v4

    move/from16 v33, v0

    move/from16 v34, v1

    move/from16 v35, v2

    move/from16 v29, v3

    move/from16 v36, v4

    move/from16 v37, v5

    move v9, v8

    const/16 v20, 0x2

    move v8, v7

    .end local p6    # "dataLength":I
    .local v7, "dataLength":I
    goto/16 :goto_11

    .line 851
    .end local v0    # "dataOffset":I
    .end local v3    # "textOffset":I
    .end local v7    # "dataLength":I
    .restart local p2    # "textOffset":I
    .restart local p5    # "dataOffset":I
    .restart local p6    # "dataLength":I
    :cond_16
    move/from16 v29, p2

    move/from16 v33, v0

    move/from16 v34, v1

    move/from16 v35, v2

    move/from16 v36, v4

    move/from16 v37, v5

    move v9, v8

    const/16 v20, 0x2

    move/from16 v8, p6

    goto/16 :goto_11

    .line 857
    .end local v8    # "textLength":I
    .local p3, "textLength":I
    :cond_17
    if-ltz v19, :cond_25

    sub-int v3, v12, v19

    const/4 v7, 0x1

    add-int/2addr v3, v7

    if-le v3, v8, :cond_25

    .line 858
    sub-int v3, v12, v19

    add-int/2addr v3, v7

    .line 859
    .end local p3    # "textLength":I
    .local v3, "textLength":I
    div-int/lit8 v8, v3, 0x4

    const/4 v9, 0x3

    mul-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v5, v8

    .line 860
    sub-int v7, v1, v0

    sub-int/2addr v7, v5

    const/4 v8, 0x2

    if-gt v7, v8, :cond_18

    rem-int/lit8 v7, v3, 0x4

    if-gt v7, v8, :cond_18

    .line 861
    rem-int/lit8 v7, v3, 0x4

    add-int/2addr v5, v7

    const/4 v8, 0x3

    goto :goto_a

    .line 863
    :cond_18
    rem-int/lit8 v7, v3, 0x4

    const/4 v8, 0x1

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 864
    rem-int/lit8 v7, v3, 0x4

    const/4 v8, 0x3

    if-ne v7, v8, :cond_19

    .line 865
    add-int/lit8 v5, v5, -0x1

    .line 867
    :cond_19
    :goto_a
    const/4 v7, 0x0

    .line 868
    .local v7, "dataNewOffset":I
    const/4 v9, -0x1

    .line 869
    .local v9, "latchEdi":I
    move/from16 v29, p9

    move/from16 v8, v29

    .local v8, "i":I
    :goto_b
    if-ge v8, v0, :cond_1b

    .line 870
    move/from16 v29, v1

    .end local v1    # "dataSize":I
    .local v29, "dataSize":I
    aget-byte v1, p4, v8

    move/from16 v33, v2

    const/16 v2, -0x10

    .end local v2    # "asciiOneSymbol":Z
    .local v33, "asciiOneSymbol":Z
    if-ne v1, v2, :cond_1a

    sub-int v1, v0, v8

    if-gt v1, v5, :cond_1a

    .line 871
    move v9, v8

    .line 872
    goto :goto_c

    .line 869
    :cond_1a
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v29

    move/from16 v2, v33

    goto :goto_b

    .end local v29    # "dataSize":I
    .end local v33    # "asciiOneSymbol":Z
    .restart local v1    # "dataSize":I
    .restart local v2    # "asciiOneSymbol":Z
    :cond_1b
    move/from16 v29, v1

    move/from16 v33, v2

    .line 874
    .end local v1    # "dataSize":I
    .end local v2    # "asciiOneSymbol":Z
    .end local v8    # "i":I
    .restart local v29    # "dataSize":I
    .restart local v33    # "asciiOneSymbol":Z
    :goto_c
    const/4 v8, -0x1

    if-eq v9, v8, :cond_1e

    .line 875
    sub-int v1, v0, v9

    add-int/2addr v4, v1

    .line 876
    aget-byte v1, v11, p2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x7f

    if-le v1, v2, :cond_1c

    .line 877
    const/16 v20, 0x2

    add-int/lit8 v4, v4, 0x2

    goto :goto_d

    .line 879
    :cond_1c
    const/16 v20, 0x2

    aget-byte v1, v11, p2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    add-int/lit8 v1, p2, -0x1

    aget-byte v1, v11, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p4, v1

    const/16 v2, 0x31

    if-lt v1, v2, :cond_1d

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p4, v1

    const/16 v2, 0x3a

    if-gt v1, v2, :cond_1d

    .line 881
    add-int/lit8 v4, v4, -0x1

    .line 883
    :cond_1d
    const/4 v1, 0x1

    add-int/2addr v4, v1

    .line 885
    :goto_d
    sub-int v1, v0, v9

    .end local v7    # "dataNewOffset":I
    .local v1, "dataNewOffset":I
    goto :goto_10

    .line 887
    .end local v1    # "dataNewOffset":I
    .restart local v7    # "dataNewOffset":I
    :cond_1e
    const/16 v20, 0x2

    sub-int v1, v12, v19

    .local v1, "j":I
    :goto_e
    if-ltz v1, :cond_23

    .line 888
    sub-int v2, p2, v1

    aget-byte v2, v11, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v8, 0x7f

    if-le v2, v8, :cond_1f

    .line 889
    add-int/lit8 v4, v4, 0x2

    goto :goto_f

    .line 891
    :cond_1f
    if-lez v1, :cond_21

    sub-int v2, p2, v1

    aget-byte v2, v11, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_21

    sub-int v2, p2, v1

    const/4 v8, 0x1

    add-int/2addr v2, v8

    aget-byte v2, v11, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 892
    if-ne v1, v8, :cond_20

    .line 893
    move v7, v4

    .line 894
    :cond_20
    add-int/lit8 v1, v1, -0x1

    .line 896
    :cond_21
    add-int/lit8 v4, v4, 0x1

    .line 898
    :goto_f
    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    .line 899
    move v2, v4

    move v7, v2

    .line 887
    :cond_22
    add-int/lit8 v1, v1, -0x1

    const/4 v8, -0x1

    goto :goto_e

    :cond_23
    move v1, v7

    .line 902
    .end local v7    # "dataNewOffset":I
    .local v1, "dataNewOffset":I
    :goto_10
    if-gt v5, v4, :cond_24

    .line 903
    const/4 v2, 0x0

    .line 904
    .end local v33    # "asciiOneSymbol":Z
    .restart local v2    # "asciiOneSymbol":Z
    add-int/lit8 v7, v3, -0x1

    sub-int v7, p2, v7

    .line 905
    .end local p2    # "textOffset":I
    .local v7, "textOffset":I
    sub-int/2addr v0, v1

    .line 906
    .end local p5    # "dataOffset":I
    .restart local v0    # "dataOffset":I
    add-int v8, p6, v1

    move/from16 v33, v0

    move/from16 v35, v2

    move v9, v3

    move/from16 v36, v4

    move/from16 v37, v5

    move/from16 v34, v29

    move/from16 v29, v7

    .end local p6    # "dataLength":I
    .local v8, "dataLength":I
    goto :goto_11

    .line 902
    .end local v0    # "dataOffset":I
    .end local v2    # "asciiOneSymbol":Z
    .end local v7    # "textOffset":I
    .end local v8    # "dataLength":I
    .restart local v33    # "asciiOneSymbol":Z
    .restart local p2    # "textOffset":I
    .restart local p5    # "dataOffset":I
    .restart local p6    # "dataLength":I
    :cond_24
    move/from16 v8, p6

    move v9, v3

    move/from16 v36, v4

    move/from16 v37, v5

    move/from16 v34, v29

    move/from16 v35, v33

    move/from16 v29, p2

    move/from16 v33, v0

    goto :goto_11

    .line 857
    .end local v3    # "textLength":I
    .end local v9    # "latchEdi":I
    .end local v29    # "dataSize":I
    .end local v33    # "asciiOneSymbol":Z
    .local v1, "dataSize":I
    .restart local v2    # "asciiOneSymbol":Z
    .restart local p3    # "textLength":I
    :cond_25
    move/from16 v29, v1

    move/from16 v33, v2

    const/16 v20, 0x2

    .line 909
    .end local v1    # "dataSize":I
    .end local v2    # "asciiOneSymbol":Z
    .restart local v29    # "dataSize":I
    .restart local v33    # "asciiOneSymbol":Z
    move/from16 v9, p3

    move/from16 v8, p6

    move/from16 v36, v4

    move/from16 v37, v5

    move/from16 v34, v29

    move/from16 v35, v33

    move/from16 v29, p2

    move/from16 v33, v0

    .end local v4    # "dataTaken":I
    .end local v5    # "dataRequired":I
    .end local p2    # "textOffset":I
    .end local p3    # "textLength":I
    .end local p5    # "dataOffset":I
    .end local p6    # "dataLength":I
    .restart local v8    # "dataLength":I
    .local v9, "textLength":I
    .local v29, "textOffset":I
    .local v33, "dataOffset":I
    .local v34, "dataSize":I
    .local v35, "asciiOneSymbol":Z
    .local v36, "dataTaken":I
    .local v37, "dataRequired":I
    :goto_11
    if-eqz v35, :cond_27

    .line 910
    aget-byte v0, v11, v29

    and-int/lit16 v7, v0, 0xff

    .line 911
    .local v7, "c":I
    invoke-static {v7}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_26

    add-int v0, v29, v14

    if-lez v0, :cond_26

    add-int/lit8 v0, v29, -0x1

    aget-byte v0, v11, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x6

    if-ne v13, v0, :cond_26

    add-int/lit8 v0, v33, -0x1

    aget-byte v0, p4, v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_26

    add-int/lit8 v0, v33, -0x1

    aget-byte v0, p4, v0

    const/16 v1, 0x3a

    if-gt v0, v1, :cond_26

    .line 913
    add-int v0, v33, v15

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    add-int/lit8 v1, v29, -0x1

    aget-byte v1, v11, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, -0x30

    add-int/lit16 v1, v1, 0x82

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 914
    sub-int v0, v33, p9

    return v0

    .line 916
    :cond_26
    add-int v2, v29, v14

    const/4 v3, 0x1

    add-int v5, v33, v15

    const/16 v20, -0x1

    const/16 v21, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move/from16 v38, v6

    .end local v6    # "prevMode":I
    .local v38, "prevMode":I
    move v6, v8

    move/from16 v22, v7

    .end local v7    # "c":I
    .local v22, "c":I
    move/from16 v7, v20

    move/from16 v39, v8

    .end local v8    # "dataLength":I
    .local v39, "dataLength":I
    move/from16 v8, v21

    move v10, v9

    .end local v9    # "textLength":I
    .local v10, "textLength":I
    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->asciiEncodation([BII[BIIIII)I

    move-result v0

    return v0

    .line 909
    .end local v10    # "textLength":I
    .end local v22    # "c":I
    .end local v38    # "prevMode":I
    .end local v39    # "dataLength":I
    .restart local v6    # "prevMode":I
    .restart local v8    # "dataLength":I
    .restart local v9    # "textLength":I
    :cond_27
    move/from16 v38, v6

    move/from16 v39, v8

    move v10, v9

    .end local v6    # "prevMode":I
    .end local v8    # "dataLength":I
    .end local v9    # "textLength":I
    .restart local v10    # "textLength":I
    .restart local v38    # "prevMode":I
    .restart local v39    # "dataLength":I
    move/from16 v0, v17

    .line 919
    .end local v17    # "pedi":I
    .local v0, "pedi":I
    :goto_12
    const/16 v1, 0x1f

    const/16 v2, 0xc

    if-ge v14, v10, :cond_39

    .line 920
    add-int v3, v14, v29

    aget-byte v3, v11, v3

    and-int/lit16 v9, v3, 0xff

    .line 921
    .local v9, "c":I
    and-int/lit16 v3, v9, 0xe0

    const/16 v7, 0x40

    if-eq v3, v7, :cond_29

    and-int/lit16 v3, v9, 0xe0

    const/16 v8, 0x20

    if-ne v3, v8, :cond_28

    goto :goto_13

    :cond_28
    move/from16 v5, v39

    const/16 v6, 0x5f

    const/16 v17, -0x10

    goto/16 :goto_15

    :cond_29
    const/16 v8, 0x20

    :goto_13
    const/16 v6, 0x5f

    if-eq v9, v6, :cond_2e

    .line 922
    if-eqz v18, :cond_2b

    .line 923
    add-int/lit8 v3, v15, 0x1

    move/from16 v5, v39

    .end local v39    # "dataLength":I
    .local v5, "dataLength":I
    if-le v3, v5, :cond_2a

    .line 924
    move/from16 v39, v5

    const/16 v25, 0x1

    const/16 v26, -0x1

    const/16 v31, 0x3

    goto/16 :goto_1a

    .line 925
    :cond_2a
    add-int/lit8 v3, v15, 0x1

    .end local v15    # "ptrOut":I
    .local v3, "ptrOut":I
    add-int v15, v33, v15

    const/16 v17, -0x10

    aput-byte v17, p4, v15

    .line 926
    const/16 v18, 0x0

    move v15, v3

    goto :goto_14

    .line 922
    .end local v3    # "ptrOut":I
    .end local v5    # "dataLength":I
    .restart local v15    # "ptrOut":I
    .restart local v39    # "dataLength":I
    :cond_2b
    move/from16 v5, v39

    const/16 v17, -0x10

    .line 928
    .end local v39    # "dataLength":I
    .restart local v5    # "dataLength":I
    :goto_14
    and-int/lit8 v9, v9, 0x3f

    .line 929
    shl-int v3, v9, v0

    or-int v3, v16, v3

    .line 930
    .end local v16    # "edi":I
    .local v3, "edi":I
    if-nez v0, :cond_2d

    .line 931
    add-int/lit8 v4, v15, 0x3

    if-le v4, v5, :cond_2c

    .line 932
    move/from16 v16, v3

    move/from16 v39, v5

    const/16 v25, 0x1

    const/16 v26, -0x1

    const/16 v31, 0x3

    goto/16 :goto_1a

    .line 933
    :cond_2c
    add-int/lit8 v1, v15, 0x1

    .end local v15    # "ptrOut":I
    .local v1, "ptrOut":I
    add-int v15, v33, v15

    shr-int/lit8 v2, v3, 0x10

    int-to-byte v2, v2

    aput-byte v2, p4, v15

    .line 934
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ptrOut":I
    .local v2, "ptrOut":I
    add-int v1, v33, v1

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, p4, v1

    .line 935
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "ptrOut":I
    .restart local v1    # "ptrOut":I
    add-int v2, v33, v2

    int-to-byte v4, v3

    aput-byte v4, p4, v2

    .line 936
    const/4 v2, 0x0

    .line 937
    .end local v3    # "edi":I
    .local v2, "edi":I
    const/16 v0, 0x12

    move v15, v1

    move/from16 v16, v2

    move/from16 v39, v5

    move/from16 v30, v6

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v20, v17

    const/16 v21, 0x3a

    const/16 v22, 0x31

    const/16 v25, 0x1

    const/16 v26, -0x1

    const/16 v31, 0x3

    goto/16 :goto_19

    .line 939
    .end local v1    # "ptrOut":I
    .end local v2    # "edi":I
    .restart local v3    # "edi":I
    .restart local v15    # "ptrOut":I
    :cond_2d
    add-int/lit8 v0, v0, -0x6

    move/from16 v16, v3

    move/from16 v39, v5

    move/from16 v30, v6

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v20, v17

    const/16 v21, 0x3a

    const/16 v22, 0x31

    const/16 v25, 0x1

    const/16 v26, -0x1

    const/16 v31, 0x3

    goto/16 :goto_19

    .line 921
    .end local v3    # "edi":I
    .end local v5    # "dataLength":I
    .restart local v16    # "edi":I
    .restart local v39    # "dataLength":I
    :cond_2e
    move/from16 v5, v39

    const/16 v17, -0x10

    .line 941
    .end local v39    # "dataLength":I
    .restart local v5    # "dataLength":I
    :goto_15
    if-nez v18, :cond_32

    .line 942
    shl-int v3, v1, v0

    or-int v3, v16, v3

    .line 943
    .end local v16    # "edi":I
    .restart local v3    # "edi":I
    add-int/lit8 v4, v15, 0x3

    div-int/lit8 v16, v0, 0x8

    sub-int v4, v4, v16

    if-le v4, v5, :cond_2f

    .line 944
    move/from16 v16, v3

    move/from16 v39, v5

    const/16 v25, 0x1

    const/16 v26, -0x1

    const/16 v31, 0x3

    goto/16 :goto_1a

    .line 945
    :cond_2f
    add-int/lit8 v1, v15, 0x1

    .end local v15    # "ptrOut":I
    .restart local v1    # "ptrOut":I
    add-int v15, v33, v15

    shr-int/lit8 v4, v3, 0x10

    int-to-byte v4, v4

    aput-byte v4, p4, v15

    .line 946
    if-gt v0, v2, :cond_30

    .line 947
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ptrOut":I
    .local v2, "ptrOut":I
    add-int v1, v33, v1

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, p4, v1

    move v1, v2

    .line 948
    .end local v2    # "ptrOut":I
    .restart local v1    # "ptrOut":I
    :cond_30
    const/4 v2, 0x6

    if-gt v0, v2, :cond_31

    .line 949
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ptrOut":I
    .restart local v2    # "ptrOut":I
    add-int v1, v33, v1

    int-to-byte v4, v3

    aput-byte v4, p4, v1

    move v15, v2

    goto :goto_16

    .line 948
    .end local v2    # "ptrOut":I
    .restart local v1    # "ptrOut":I
    :cond_31
    move v15, v1

    .line 950
    .end local v1    # "ptrOut":I
    .restart local v15    # "ptrOut":I
    :goto_16
    const/16 v18, 0x1

    .line 951
    const/16 v0, 0x12

    .line 952
    const/16 v16, 0x0

    move/from16 v24, v18

    move/from16 v18, v16

    move/from16 v16, v15

    move v15, v0

    .end local v3    # "edi":I
    .restart local v16    # "edi":I
    goto :goto_17

    .line 941
    :cond_32
    move/from16 v24, v18

    move/from16 v18, v16

    move/from16 v16, v15

    move v15, v0

    .line 954
    .end local v0    # "pedi":I
    .local v15, "pedi":I
    .local v16, "ptrOut":I
    .local v18, "edi":I
    .local v24, "ascii":Z
    :goto_17
    invoke-static {v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_35

    add-int v0, v29, v14

    if-lez v0, :cond_35

    add-int v0, v29, v14

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, v11, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v4, 0x6

    if-ne v13, v4, :cond_34

    add-int/lit8 v0, v33, -0x1

    aget-byte v0, p4, v0

    const/16 v3, 0x31

    if-lt v0, v3, :cond_33

    add-int/lit8 v0, v33, -0x1

    aget-byte v0, p4, v0

    const/16 v2, 0x3a

    if-gt v0, v2, :cond_36

    .line 956
    add-int v0, v33, v16

    const/16 v22, 0x1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v29, -0x1

    aget-byte v1, v11, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v9

    add-int/lit8 v1, v1, -0x30

    add-int/lit16 v1, v1, 0x82

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 957
    add-int/lit8 v16, v16, -0x1

    move/from16 v21, v2

    move/from16 v39, v5

    move/from16 v30, v6

    move/from16 v27, v7

    move/from16 v28, v8

    move v0, v15

    move/from16 v15, v16

    move/from16 v20, v17

    move/from16 v16, v18

    move/from16 v25, v22

    move/from16 v18, v24

    const/16 v26, -0x1

    const/16 v31, 0x3

    move/from16 v22, v3

    goto/16 :goto_19

    .line 954
    :cond_33
    const/16 v2, 0x3a

    goto :goto_18

    :cond_34
    const/16 v2, 0x3a

    const/16 v3, 0x31

    goto :goto_18

    :cond_35
    const/16 v2, 0x3a

    const/16 v3, 0x31

    const/4 v4, 0x6

    :cond_36
    :goto_18
    const/16 v22, 0x1

    .line 959
    add-int v25, v29, v14

    const/16 v26, 0x1

    add-int v27, v33, v16

    const/16 v28, -0x1

    const/16 v30, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v31, v2

    move/from16 v2, v25

    move/from16 v25, v22

    move/from16 v22, v3

    move/from16 v3, v26

    move/from16 v21, v4

    const/16 v26, -0x1

    move-object/from16 v4, p4

    move/from16 v39, v5

    .end local v5    # "dataLength":I
    .restart local v39    # "dataLength":I
    move/from16 v5, v27

    move/from16 v20, v6

    move/from16 v6, v39

    move/from16 v27, v7

    move/from16 v21, v31

    const/16 v31, 0x3

    move/from16 v7, v28

    move/from16 v28, v8

    move/from16 v8, v30

    move/from16 v30, v20

    move/from16 v20, v17

    move/from16 v17, v9

    .end local v9    # "c":I
    .local v17, "c":I
    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->asciiEncodation([BII[BIIIII)I

    move-result v0

    .line 960
    .local v0, "i":I
    if-gez v0, :cond_37

    .line 961
    return v26

    .line 962
    :cond_37
    add-int v1, v33, v16

    aget-byte v1, p4, v1

    const/16 v2, -0x15

    if-ne v1, v2, :cond_38

    .line 963
    add-int/lit8 v16, v16, 0x1

    .line 964
    :cond_38
    add-int/lit8 v16, v16, 0x1

    move v0, v15

    move/from16 v15, v16

    move/from16 v9, v17

    move/from16 v16, v18

    move/from16 v18, v24

    .line 919
    .end local v17    # "c":I
    .end local v24    # "ascii":Z
    .local v0, "pedi":I
    .restart local v9    # "c":I
    .local v15, "ptrOut":I
    .local v16, "edi":I
    .local v18, "ascii":Z
    :goto_19
    add-int/lit8 v14, v14, 0x1

    const/16 v20, 0x2

    goto/16 :goto_12

    .end local v9    # "c":I
    :cond_39
    const/16 v25, 0x1

    const/16 v26, -0x1

    const/16 v31, 0x3

    .line 968
    :goto_1a
    if-eq v14, v10, :cond_3a

    .line 969
    return v26

    .line 970
    :cond_3a
    if-nez p10, :cond_3d

    array-length v3, v11

    add-int/lit8 v3, v3, -0x1

    if-eq v12, v3, :cond_3b

    if-gez v12, :cond_3d

    .line 971
    :cond_3b
    const v34, 0x7fffffff

    .line 972
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    sget-object v4, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->dmSizes:[Lcom/itextpdf/barcodes/dmcode/DmParams;

    array-length v5, v4

    if-ge v3, v5, :cond_3d

    .line 973
    aget-object v5, v4, v3

    iget v5, v5, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    add-int v6, v33, v15

    div-int/lit8 v7, v0, 0x6

    rsub-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    if-lt v5, v6, :cond_3c

    .line 974
    aget-object v4, v4, v3

    iget v4, v4, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    .line 975
    .end local v34    # "dataSize":I
    .local v4, "dataSize":I
    move/from16 v34, v4

    goto :goto_1c

    .line 972
    .end local v4    # "dataSize":I
    .restart local v34    # "dataSize":I
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 979
    .end local v3    # "i":I
    :cond_3d
    :goto_1c
    sub-int v3, v34, v33

    sub-int/2addr v3, v15

    const/4 v4, 0x2

    if-gt v3, v4, :cond_44

    const/4 v3, 0x6

    if-lt v0, v3, :cond_43

    .line 980
    const/16 v1, 0x12

    if-eq v0, v1, :cond_3e

    add-int/lit8 v1, v15, 0x2

    div-int/lit8 v4, v0, 0x8

    sub-int/2addr v1, v4

    move/from16 v7, v39

    .end local v39    # "dataLength":I
    .local v7, "dataLength":I
    if-le v1, v7, :cond_3f

    .line 981
    return v26

    .line 980
    .end local v7    # "dataLength":I
    .restart local v39    # "dataLength":I
    :cond_3e
    move/from16 v7, v39

    .line 982
    .end local v39    # "dataLength":I
    .restart local v7    # "dataLength":I
    :cond_3f
    if-gt v0, v2, :cond_41

    .line 983
    shr-int/lit8 v1, v16, 0x12

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    .line 984
    .local v1, "val":B
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_40

    .line 985
    or-int/lit8 v2, v1, 0x40

    int-to-byte v1, v2

    .line 986
    :cond_40
    add-int/lit8 v2, v15, 0x1

    .end local v15    # "ptrOut":I
    .restart local v2    # "ptrOut":I
    add-int v15, v33, v15

    add-int/lit8 v4, v1, 0x1

    int-to-byte v4, v4

    aput-byte v4, p4, v15

    move v15, v2

    .line 988
    .end local v1    # "val":B
    .end local v2    # "ptrOut":I
    .restart local v15    # "ptrOut":I
    :cond_41
    if-gt v0, v3, :cond_48

    .line 989
    shr-int/lit8 v1, v16, 0xc

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    .line 990
    .restart local v1    # "val":B
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_42

    .line 991
    or-int/lit8 v2, v1, 0x40

    int-to-byte v1, v2

    .line 992
    :cond_42
    add-int/lit8 v2, v15, 0x1

    .end local v15    # "ptrOut":I
    .restart local v2    # "ptrOut":I
    add-int v15, v33, v15

    add-int/lit8 v3, v1, 0x1

    int-to-byte v3, v3

    aput-byte v3, p4, v15

    .line 993
    .end local v1    # "val":B
    move v15, v2

    goto :goto_1f

    .line 979
    .end local v2    # "ptrOut":I
    .end local v7    # "dataLength":I
    .restart local v15    # "ptrOut":I
    .restart local v39    # "dataLength":I
    :cond_43
    move/from16 v7, v39

    goto :goto_1d

    :cond_44
    move/from16 v7, v39

    const/4 v3, 0x6

    .line 994
    .end local v39    # "dataLength":I
    .restart local v7    # "dataLength":I
    :goto_1d
    if-nez v18, :cond_48

    .line 995
    shl-int/2addr v1, v0

    or-int v1, v16, v1

    .line 996
    .end local v16    # "edi":I
    .local v1, "edi":I
    add-int/lit8 v4, v15, 0x3

    div-int/lit8 v5, v0, 0x8

    sub-int/2addr v4, v5

    if-le v4, v7, :cond_45

    .line 997
    return v26

    .line 998
    :cond_45
    add-int/lit8 v4, v15, 0x1

    .end local v15    # "ptrOut":I
    .local v4, "ptrOut":I
    add-int v15, v33, v15

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    aput-byte v5, p4, v15

    .line 999
    if-gt v0, v2, :cond_46

    .line 1000
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "ptrOut":I
    .restart local v2    # "ptrOut":I
    add-int v4, v33, v4

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, p4, v4

    move v15, v2

    goto :goto_1e

    .line 999
    .end local v2    # "ptrOut":I
    .restart local v4    # "ptrOut":I
    :cond_46
    move v15, v4

    .line 1001
    .end local v4    # "ptrOut":I
    .restart local v15    # "ptrOut":I
    :goto_1e
    if-gt v0, v3, :cond_47

    .line 1002
    add-int/lit8 v2, v15, 0x1

    .end local v15    # "ptrOut":I
    .restart local v2    # "ptrOut":I
    add-int v15, v33, v15

    int-to-byte v3, v1

    aput-byte v3, p4, v15

    move/from16 v16, v1

    move v15, v2

    goto :goto_1f

    .line 1001
    .end local v2    # "ptrOut":I
    .restart local v15    # "ptrOut":I
    :cond_47
    move/from16 v16, v1

    .line 1004
    .end local v1    # "edi":I
    .restart local v16    # "edi":I
    :cond_48
    :goto_1f
    add-int v1, v15, v33

    sub-int v1, v1, p9

    return v1
.end method

.method private X12Encodation([BII[BIIIII)I
    .locals 28
    .param p1, "text"    # [B
    .param p2, "textOffset"    # I
    .param p3, "textLength"    # I
    .param p4, "data"    # [B
    .param p5, "dataOffset"    # I
    .param p6, "dataLength"    # I
    .param p7, "symbolIndex"    # I
    .param p8, "prevEnc"    # I
    .param p9, "origDataOffset"    # I

    .line 684
    move/from16 v0, p3

    move/from16 v10, p7

    const/4 v1, 0x1

    .line 686
    .local v1, "latch":Z
    const/4 v11, 0x0

    if-nez v0, :cond_0

    .line 687
    return v11

    .line 688
    :cond_0
    const/4 v2, 0x0

    .line 689
    .local v2, "ptrIn":I
    const/4 v3, 0x0

    .line 690
    .local v3, "ptrOut":I
    new-array v4, v0, [B

    .line 691
    .local v4, "x":[B
    const/4 v5, 0x0

    .line 692
    .local v5, "count":I
    :goto_0
    const/4 v6, 0x6

    const/16 v12, 0x64

    const-string v13, "\r*> 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    const/4 v14, 0x1

    if-ge v2, v0, :cond_4

    .line 693
    add-int v7, v2, p2

    aget-byte v7, p1, v7

    int-to-char v7, v7

    invoke-virtual {v13, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 694
    .local v7, "i":I
    if-ltz v7, :cond_1

    .line 695
    int-to-byte v6, v7

    aput-byte v6, v4, v2

    .line 696
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 698
    :cond_1
    aput-byte v12, v4, v2

    .line 699
    if-lt v5, v6, :cond_2

    .line 700
    div-int/lit8 v6, v5, 0x3

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    .line 701
    :cond_2
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    if-ge v6, v5, :cond_3

    .line 702
    sub-int v8, v2, v6

    sub-int/2addr v8, v14

    aput-byte v12, v4, v8

    .line 701
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 703
    :cond_3
    const/4 v5, 0x0

    .line 692
    .end local v6    # "k":I
    .end local v7    # "i":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 706
    :cond_4
    if-lt v5, v6, :cond_5

    .line 707
    div-int/lit8 v6, v5, 0x3

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    move v15, v5

    goto :goto_3

    .line 706
    :cond_5
    move v15, v5

    .line 708
    .end local v5    # "count":I
    .local v15, "count":I
    :goto_3
    const/4 v5, 0x0

    move v9, v5

    .local v9, "k":I
    :goto_4
    if-ge v9, v15, :cond_6

    .line 709
    sub-int v5, v2, v9

    sub-int/2addr v5, v14

    aput-byte v12, v4, v5

    .line 708
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 710
    :cond_6
    const/4 v2, 0x0

    .line 711
    const/4 v5, 0x0

    move v6, v3

    move-object v7, v4

    move v8, v5

    move/from16 v3, p6

    move v4, v1

    move v5, v2

    move/from16 v2, p5

    move v1, v0

    move/from16 v0, p2

    .line 712
    .end local p2    # "textOffset":I
    .end local p3    # "textLength":I
    .end local p5    # "dataOffset":I
    .end local p6    # "dataLength":I
    .local v0, "textOffset":I
    .local v1, "textLength":I
    .local v2, "dataOffset":I
    .local v3, "dataLength":I
    .local v4, "latch":Z
    .local v5, "ptrIn":I
    .local v6, "ptrOut":I
    .local v7, "x":[B
    .local v8, "c":B
    :goto_5
    const/16 v17, -0x1

    const/16 v12, 0x28

    if-ge v5, v1, :cond_1f

    .line 713
    aget-byte v8, v7, v5

    .line 714
    if-le v6, v3, :cond_7

    .line 715
    move/from16 p6, v4

    move/from16 v27, v9

    goto/16 :goto_11

    .line 716
    :cond_7
    if-ge v8, v12, :cond_c

    .line 717
    if-nez v5, :cond_8

    if-nez v4, :cond_9

    :cond_8
    if-lez v5, :cond_a

    add-int/lit8 v19, v5, -0x1

    aget-byte v11, v7, v19

    if-le v11, v12, :cond_a

    .line 718
    :cond_9
    add-int/lit8 v11, v6, 0x1

    .end local v6    # "ptrOut":I
    .local v11, "ptrOut":I
    add-int/2addr v6, v2

    const/16 v19, -0x12

    aput-byte v19, p4, v6

    move v6, v11

    .line 719
    .end local v11    # "ptrOut":I
    .restart local v6    # "ptrOut":I
    :cond_a
    add-int/lit8 v11, v6, 0x2

    if-le v11, v3, :cond_b

    .line 720
    move/from16 p6, v4

    move/from16 v27, v9

    goto/16 :goto_11

    .line 721
    :cond_b
    aget-byte v11, v7, v5

    mul-int/lit16 v11, v11, 0x640

    add-int/lit8 v17, v5, 0x1

    aget-byte v17, v7, v17

    mul-int/lit8 v17, v17, 0x28

    add-int v11, v11, v17

    add-int/lit8 v12, v5, 0x2

    aget-byte v12, v7, v12

    add-int/2addr v11, v12

    add-int/2addr v11, v14

    .line 722
    .local v11, "n":I
    add-int/lit8 v12, v6, 0x1

    .end local v6    # "ptrOut":I
    .local v12, "ptrOut":I
    add-int/2addr v6, v2

    div-int/lit16 v14, v11, 0x100

    int-to-byte v14, v14

    aput-byte v14, p4, v6

    .line 723
    add-int/lit8 v6, v12, 0x1

    .end local v12    # "ptrOut":I
    .restart local v6    # "ptrOut":I
    add-int/2addr v12, v2

    int-to-byte v14, v11

    aput-byte v14, p4, v12

    .line 724
    add-int/lit8 v5, v5, 0x2

    move/from16 v21, v4

    move/from16 v26, v8

    move/from16 v27, v9

    const/4 v4, 0x1

    const/16 v16, 0x0

    const/16 v18, 0x64

    goto/16 :goto_10

    .line 726
    .end local v11    # "n":I
    :cond_c
    const/4 v11, 0x1

    .line 727
    .local v11, "enterASCII":Z
    if-gtz v10, :cond_e

    .line 728
    if-lez v5, :cond_d

    add-int/lit8 v14, v5, -0x1

    aget-byte v14, v7, v14

    if-ge v14, v12, :cond_d

    .line 729
    add-int/lit8 v12, v6, 0x1

    .end local v6    # "ptrOut":I
    .restart local v12    # "ptrOut":I
    add-int/2addr v6, v2

    const/4 v14, -0x2

    aput-byte v14, p4, v6

    move v14, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v24, v7

    move/from16 p3, v8

    move/from16 v25, v11

    move/from16 v23, v12

    const/16 v16, 0x0

    const/16 v18, 0x64

    move v11, v0

    move v12, v1

    goto/16 :goto_f

    .line 728
    .end local v12    # "ptrOut":I
    .restart local v6    # "ptrOut":I
    :cond_d
    move/from16 p6, v4

    move/from16 p5, v6

    move/from16 p3, v8

    const/16 v16, 0x0

    const/16 v18, 0x64

    goto/16 :goto_e

    .line 730
    :cond_e
    const/4 v12, 0x4

    if-le v10, v12, :cond_1b

    const/4 v14, 0x5

    move/from16 p3, v8

    move/from16 v8, p8

    .end local v8    # "c":B
    .local p3, "c":B
    if-ne v8, v14, :cond_1a

    aget-byte v14, p1, v0

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_1a

    add-int/lit8 v14, v0, -0x1

    aget-byte v14, p1, v14

    int-to-char v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_1a

    .line 731
    add-int/lit8 v14, v10, -0x1

    .line 732
    .local v14, "latestModeEntry":I
    :goto_6
    if-lez v14, :cond_f

    move-object/from16 v8, p0

    move/from16 p6, v4

    .end local v4    # "latch":Z
    .local p6, "latch":Z
    iget-object v4, v8, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    aget-object v4, v4, v12

    aget v4, v4, v14

    const/4 v12, 0x5

    if-ne v4, v12, :cond_10

    sub-int v4, v10, v14

    const/4 v12, 0x1

    add-int/2addr v4, v12

    sub-int v4, v0, v4

    aget-byte v4, p1, v4

    int-to-char v4, v4

    .line 733
    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_10

    .line 734
    add-int/lit8 v14, v14, -0x1

    move/from16 v4, p6

    move/from16 v8, p8

    const/4 v12, 0x4

    goto :goto_6

    .line 732
    .end local p6    # "latch":Z
    .restart local v4    # "latch":Z
    :cond_f
    move-object/from16 v8, p0

    move/from16 p6, v4

    .line 736
    .end local v4    # "latch":Z
    .restart local p6    # "latch":Z
    :cond_10
    const/4 v4, -0x1

    .line 737
    .local v4, "unlatch":I
    sub-int v12, v10, v14

    move/from16 v20, v4

    const/4 v4, 0x5

    .end local v4    # "unlatch":I
    .local v20, "unlatch":I
    if-lt v12, v4, :cond_19

    .line 738
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_7
    sub-int v12, v10, v14

    if-gt v4, v12, :cond_12

    .line 739
    sub-int v12, v2, v4

    aget-byte v12, p4, v12

    move/from16 p5, v6

    const/4 v6, -0x2

    .end local v6    # "ptrOut":I
    .local p5, "ptrOut":I
    if-ne v12, v6, :cond_11

    .line 740
    sub-int v6, v2, v4

    .line 741
    .end local v20    # "unlatch":I
    .local v6, "unlatch":I
    move v4, v6

    goto :goto_8

    .line 738
    .end local v6    # "unlatch":I
    .restart local v20    # "unlatch":I
    :cond_11
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, p5

    goto :goto_7

    .end local p5    # "ptrOut":I
    .local v6, "ptrOut":I
    :cond_12
    move/from16 p5, v6

    .end local v6    # "ptrOut":I
    .restart local p5    # "ptrOut":I
    move/from16 v4, v20

    .line 744
    .end local v20    # "unlatch":I
    .local v4, "unlatch":I
    :goto_8
    if-ltz v4, :cond_13

    sub-int v6, v2, v4

    const/4 v12, 0x1

    sub-int/2addr v6, v12

    goto :goto_9

    :cond_13
    sub-int v6, v10, v14

    .line 745
    .local v6, "amountOfEncodedWithASCII":I
    :goto_9
    rem-int/lit8 v12, v6, 0x3

    const/4 v8, 0x2

    if-ne v12, v8, :cond_18

    .line 746
    const/4 v11, 0x0

    .line 747
    add-int/lit8 v1, v6, 0x1

    .line 748
    sub-int/2addr v0, v6

    .line 749
    if-gez v4, :cond_14

    move v8, v6

    goto :goto_a

    :cond_14
    add-int/lit8 v8, v6, 0x1

    :goto_a
    add-int/2addr v3, v8

    .line 750
    if-gez v4, :cond_15

    move v8, v6

    goto :goto_b

    :cond_15
    add-int/lit8 v8, v6, 0x1

    :goto_b
    sub-int/2addr v2, v8

    .line 751
    const/4 v5, -0x1

    .line 752
    if-eq v4, v2, :cond_16

    const/4 v8, 0x1

    goto :goto_c

    :cond_16
    const/4 v8, 0x0

    .line 753
    .end local p6    # "latch":Z
    .local v8, "latch":Z
    :goto_c
    add-int/lit8 v12, v6, 0x1

    new-array v7, v12, [B

    .line 754
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_d
    if-gt v12, v6, :cond_17

    .line 755
    add-int v20, v0, v12

    move/from16 p2, v0

    .end local v0    # "textOffset":I
    .restart local p2    # "textOffset":I
    aget-byte v0, p1, v20

    int-to-char v0, v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v7, v12

    .line 754
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p2

    goto :goto_d

    .end local p2    # "textOffset":I
    .restart local v0    # "textOffset":I
    :cond_17
    move/from16 p2, v0

    .end local v0    # "textOffset":I
    .restart local p2    # "textOffset":I
    move/from16 v23, p5

    move v12, v1

    move v14, v2

    move/from16 v20, v3

    move/from16 v22, v5

    move-object/from16 v24, v7

    move/from16 v21, v8

    move/from16 v25, v11

    const/16 v16, 0x0

    const/16 v18, 0x64

    move/from16 v11, p2

    .end local v12    # "i":I
    goto :goto_f

    .line 758
    .end local v8    # "latch":Z
    .end local p2    # "textOffset":I
    .restart local v0    # "textOffset":I
    .restart local p6    # "latch":Z
    :cond_18
    const/4 v8, 0x1

    new-array v7, v8, [B

    .line 759
    const/16 v16, 0x0

    const/16 v18, 0x64

    aput-byte v18, v7, v16

    move/from16 v23, p5

    move/from16 v21, p6

    move v12, v1

    move v14, v2

    move/from16 v20, v3

    move/from16 v22, v5

    move-object/from16 v24, v7

    move/from16 v25, v11

    move v11, v0

    goto :goto_f

    .line 737
    .end local v4    # "unlatch":I
    .end local p5    # "ptrOut":I
    .local v6, "ptrOut":I
    .restart local v20    # "unlatch":I
    :cond_19
    move/from16 p5, v6

    const/16 v16, 0x0

    const/16 v18, 0x64

    .end local v6    # "ptrOut":I
    .restart local p5    # "ptrOut":I
    goto :goto_e

    .line 730
    .end local v14    # "latestModeEntry":I
    .end local v20    # "unlatch":I
    .end local p5    # "ptrOut":I
    .end local p6    # "latch":Z
    .local v4, "latch":Z
    .restart local v6    # "ptrOut":I
    :cond_1a
    move/from16 p6, v4

    move/from16 p5, v6

    const/16 v16, 0x0

    const/16 v18, 0x64

    .end local v4    # "latch":Z
    .end local v6    # "ptrOut":I
    .restart local p5    # "ptrOut":I
    .restart local p6    # "latch":Z
    goto :goto_e

    .end local p3    # "c":B
    .end local p5    # "ptrOut":I
    .end local p6    # "latch":Z
    .restart local v4    # "latch":Z
    .restart local v6    # "ptrOut":I
    .local v8, "c":B
    :cond_1b
    move/from16 p6, v4

    move/from16 p5, v6

    move/from16 p3, v8

    const/16 v16, 0x0

    const/16 v18, 0x64

    .line 763
    .end local v4    # "latch":Z
    .end local v6    # "ptrOut":I
    .end local v8    # "c":B
    .restart local p3    # "c":B
    .restart local p5    # "ptrOut":I
    .restart local p6    # "latch":Z
    :goto_e
    move/from16 v23, p5

    move/from16 v21, p6

    move v12, v1

    move v14, v2

    move/from16 v20, v3

    move/from16 v22, v5

    move-object/from16 v24, v7

    move/from16 v25, v11

    move v11, v0

    .end local v0    # "textOffset":I
    .end local v1    # "textLength":I
    .end local v2    # "dataOffset":I
    .end local v3    # "dataLength":I
    .end local v5    # "ptrIn":I
    .end local v7    # "x":[B
    .end local p5    # "ptrOut":I
    .end local p6    # "latch":Z
    .local v11, "textOffset":I
    .local v12, "textLength":I
    .local v14, "dataOffset":I
    .local v20, "dataLength":I
    .local v21, "latch":Z
    .local v22, "ptrIn":I
    .local v23, "ptrOut":I
    .local v24, "x":[B
    .local v25, "enterASCII":Z
    :goto_f
    if-eqz v25, :cond_1e

    .line 764
    add-int v2, v11, v22

    const/4 v3, 0x1

    add-int v5, v14, v23

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move/from16 v6, v20

    move/from16 v26, p3

    .end local p3    # "c":B
    .local v26, "c":B
    move/from16 v27, v9

    .end local v9    # "k":I
    .local v27, "k":I
    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->asciiEncodation([BII[BIIIII)I

    move-result v0

    .line 765
    .local v0, "i":I
    if-gez v0, :cond_1c

    .line 766
    return v17

    .line 767
    :cond_1c
    add-int v1, v14, v23

    aget-byte v1, p4, v1

    const/16 v2, -0x15

    if-ne v1, v2, :cond_1d

    .line 768
    add-int/lit8 v23, v23, 0x1

    .line 769
    :cond_1d
    const/4 v4, 0x1

    add-int/lit8 v23, v23, 0x1

    move v0, v11

    move v1, v12

    move v2, v14

    move/from16 v3, v20

    move/from16 v5, v22

    move/from16 v6, v23

    move-object/from16 v7, v24

    goto :goto_10

    .line 763
    .end local v0    # "i":I
    .end local v26    # "c":B
    .end local v27    # "k":I
    .restart local v9    # "k":I
    .restart local p3    # "c":B
    :cond_1e
    move/from16 v26, p3

    move/from16 v27, v9

    const/4 v4, 0x1

    .end local v9    # "k":I
    .end local p3    # "c":B
    .restart local v26    # "c":B
    .restart local v27    # "k":I
    move v0, v11

    move v1, v12

    move v2, v14

    move/from16 v3, v20

    move/from16 v5, v22

    move/from16 v6, v23

    move-object/from16 v7, v24

    .line 712
    .end local v11    # "textOffset":I
    .end local v12    # "textLength":I
    .end local v14    # "dataOffset":I
    .end local v20    # "dataLength":I
    .end local v22    # "ptrIn":I
    .end local v23    # "ptrOut":I
    .end local v24    # "x":[B
    .end local v25    # "enterASCII":Z
    .local v0, "textOffset":I
    .restart local v1    # "textLength":I
    .restart local v2    # "dataOffset":I
    .restart local v3    # "dataLength":I
    .restart local v5    # "ptrIn":I
    .restart local v6    # "ptrOut":I
    .restart local v7    # "x":[B
    :goto_10
    add-int/2addr v5, v4

    move v14, v4

    move/from16 v11, v16

    move/from16 v12, v18

    move/from16 v4, v21

    move/from16 v8, v26

    move/from16 v9, v27

    goto/16 :goto_5

    .end local v21    # "latch":Z
    .end local v26    # "c":B
    .end local v27    # "k":I
    .restart local v4    # "latch":Z
    .restart local v8    # "c":B
    .restart local v9    # "k":I
    :cond_1f
    move/from16 p6, v4

    move/from16 p5, v6

    move/from16 v27, v9

    .line 773
    .end local v4    # "latch":Z
    .end local v9    # "k":I
    .restart local v27    # "k":I
    .restart local p6    # "latch":Z
    :goto_11
    const/16 v4, 0x64

    .line 774
    .end local v8    # "c":B
    .local v4, "c":B
    if-lez v1, :cond_20

    .line 775
    add-int/lit8 v8, v1, -0x1

    aget-byte v4, v7, v8

    .line 776
    :cond_20
    if-eq v5, v1, :cond_21

    .line 777
    return v17

    .line 778
    :cond_21
    if-ge v4, v12, :cond_22

    .line 779
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "ptrOut":I
    .local v8, "ptrOut":I
    add-int/2addr v6, v2

    const/4 v9, -0x2

    aput-byte v9, p4, v6

    move v6, v8

    .line 780
    .end local v8    # "ptrOut":I
    .restart local v6    # "ptrOut":I
    :cond_22
    if-le v6, v3, :cond_23

    .line 781
    return v17

    .line 782
    :cond_23
    add-int v8, v6, v2

    sub-int v8, v8, p9

    return v8
.end method

.method private asciiEncodation([BII[BIIIII)I
    .locals 10
    .param p1, "text"    # [B
    .param p2, "textOffset"    # I
    .param p3, "textLength"    # I
    .param p4, "data"    # [B
    .param p5, "dataOffset"    # I
    .param p6, "dataLength"    # I
    .param p7, "symbolIndex"    # I
    .param p8, "prevEnc"    # I
    .param p9, "origDataOffset"    # I

    .line 598
    move v0, p2

    .line 599
    .local v0, "ptrIn":I
    move v1, p5

    .line 600
    .local v1, "ptrOut":I
    add-int v2, p3, p2

    .line 601
    .end local p3    # "textLength":I
    .local v2, "textLength":I
    add-int v3, p6, p5

    .line 602
    .end local p6    # "dataLength":I
    .local v3, "dataLength":I
    :goto_0
    if-ge v0, v2, :cond_6

    .line 603
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "ptrIn":I
    .local v4, "ptrIn":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 604
    .local v0, "c":I
    invoke-static {v0}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v5

    const/16 v6, 0x30

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    if-lez p7, :cond_0

    move/from16 v5, p8

    if-ne v5, v7, :cond_1

    add-int/lit8 v8, v4, -0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v8, p5, -0x1

    aget-byte v8, p4, v8

    if-le v8, v6, :cond_1

    add-int/lit8 v8, p5, -0x1

    aget-byte v8, p4, v8

    const/16 v9, 0x3b

    if-ge v8, v9, :cond_1

    .line 606
    add-int/lit8 v7, v1, -0x1

    add-int/lit8 v8, v4, -0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    sub-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v0

    sub-int/2addr v8, v6

    add-int/lit16 v8, v8, 0x82

    int-to-byte v6, v8

    aput-byte v6, p4, v7

    .line 607
    sub-int v6, v1, p9

    return v6

    .line 604
    :cond_0
    move/from16 v5, p8

    .line 609
    :cond_1
    const/4 v8, -0x1

    if-lt v1, v3, :cond_2

    .line 610
    return v8

    .line 611
    :cond_2
    invoke-static {v0}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v9

    if-eqz v9, :cond_3

    if-gez p7, :cond_3

    if-ge v4, v2, :cond_3

    aget-byte v9, p1, v4

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->isDigit(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 612
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "ptrOut":I
    .local v7, "ptrOut":I
    add-int/lit8 v8, v0, -0x30

    mul-int/lit8 v8, v8, 0xa

    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ptrIn":I
    .local v9, "ptrIn":I
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v8, v4

    sub-int/2addr v8, v6

    add-int/lit16 v8, v8, 0x82

    int-to-byte v4, v8

    aput-byte v4, p4, v1

    move v1, v7

    move v0, v9

    goto :goto_0

    .line 613
    .end local v7    # "ptrOut":I
    .end local v9    # "ptrIn":I
    .restart local v1    # "ptrOut":I
    .restart local v4    # "ptrIn":I
    :cond_3
    const/16 v6, 0x7f

    if-le v0, v6, :cond_5

    .line 614
    add-int/lit8 v6, v1, 0x1

    if-lt v6, v3, :cond_4

    .line 615
    return v8

    .line 616
    :cond_4
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "ptrOut":I
    .local v6, "ptrOut":I
    const/16 v8, -0x15

    aput-byte v8, p4, v1

    .line 617
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "ptrOut":I
    .restart local v1    # "ptrOut":I
    add-int/lit8 v8, v0, -0x80

    add-int/2addr v8, v7

    int-to-byte v7, v8

    aput-byte v7, p4, v6

    move v0, v4

    goto/16 :goto_0

    .line 619
    :cond_5
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "ptrOut":I
    .restart local v6    # "ptrOut":I
    add-int/lit8 v7, v0, 0x1

    int-to-byte v7, v7

    aput-byte v7, p4, v1

    move v0, v4

    move v1, v6

    goto/16 :goto_0

    .line 622
    .end local v4    # "ptrIn":I
    .end local v6    # "ptrOut":I
    .local v0, "ptrIn":I
    .restart local v1    # "ptrOut":I
    :cond_6
    move/from16 v5, p8

    sub-int v4, v1, p9

    return v4
.end method

.method private b256Encodation([BII[BIIIII)I
    .locals 15
    .param p1, "text"    # [B
    .param p2, "textOffset"    # I
    .param p3, "textLength"    # I
    .param p4, "data"    # [B
    .param p5, "dataOffset"    # I
    .param p6, "dataLength"    # I
    .param p7, "symbolIndex"    # I
    .param p8, "prevEnc"    # I
    .param p9, "origDataOffset"    # I

    .line 627
    move-object v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p6

    move/from16 v4, p8

    const/4 v5, 0x0

    if-nez v1, :cond_0

    .line 628
    return v5

    .line 629
    :cond_0
    move/from16 v6, p5

    .line 630
    .local v6, "simulatedDataOffset":I
    const/4 v7, 0x3

    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/16 v11, 0xfa

    if-eq v4, v10, :cond_3

    .line 631
    if-ge v1, v11, :cond_1

    add-int/lit8 v12, v1, 0x2

    if-le v12, v3, :cond_1

    .line 632
    return v8

    .line 633
    :cond_1
    if-lt v1, v11, :cond_2

    add-int/lit8 v12, v1, 0x3

    if-le v12, v3, :cond_2

    .line 634
    return v8

    .line 635
    :cond_2
    const/16 v8, -0x19

    aput-byte v8, v2, p5

    goto :goto_2

    .line 637
    :cond_3
    add-int/lit8 v12, p7, -0x1

    .line 638
    .local v12, "latestModeEntry":I
    :goto_0
    if-lez v12, :cond_4

    iget-object v13, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    aget-object v13, v13, v7

    aget v13, v13, v12

    if-ne v13, v10, :cond_4

    .line 639
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 641
    :cond_4
    sub-int v13, p7, v12

    const/4 v14, 0x1

    add-int/lit8 v1, v13, 0x1

    .line 642
    .end local p3    # "textLength":I
    .local v1, "textLength":I
    if-eq v1, v11, :cond_5

    if-le v14, v3, :cond_5

    .line 643
    return v8

    .line 644
    :cond_5
    if-ne v1, v11, :cond_6

    if-le v9, v3, :cond_6

    .line 645
    return v8

    .line 646
    :cond_6
    add-int/lit8 v8, v1, -0x1

    if-ge v1, v11, :cond_7

    move v13, v9

    goto :goto_1

    :cond_7
    move v13, v7

    :goto_1
    add-int/2addr v8, v13

    sub-int/2addr v6, v8

    .line 648
    .end local v12    # "latestModeEntry":I
    :goto_2
    if-ge v1, v11, :cond_9

    .line 649
    add-int/lit8 v7, v6, 0x1

    int-to-byte v8, v1

    aput-byte v8, v2, v7

    .line 650
    if-eq v4, v10, :cond_8

    move v5, v9

    .local v5, "minRequiredDataIncrement":I
    :cond_8
    goto :goto_4

    .line 651
    .end local v5    # "minRequiredDataIncrement":I
    :cond_9
    if-ne v1, v11, :cond_b

    if-ne v4, v10, :cond_b

    .line 652
    add-int/lit8 v5, v6, 0x1

    div-int/lit16 v7, v1, 0xfa

    add-int/lit16 v7, v7, 0xf9

    int-to-byte v7, v7

    aput-byte v7, v2, v5

    .line 653
    add-int/lit8 v5, p5, 0x1

    .local v5, "i":I
    :goto_3
    add-int/lit8 v7, v6, 0x2

    if-le v5, v7, :cond_a

    .line 654
    add-int/lit8 v7, v5, -0x1

    aget-byte v7, v2, v7

    aput-byte v7, v2, v5

    .line 653
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 655
    .end local v5    # "i":I
    :cond_a
    add-int/lit8 v5, v6, 0x2

    rem-int/lit16 v7, v1, 0xfa

    int-to-byte v7, v7

    aput-byte v7, v2, v5

    .line 656
    const/4 v5, 0x1

    .local v5, "minRequiredDataIncrement":I
    goto :goto_4

    .line 658
    .end local v5    # "minRequiredDataIncrement":I
    :cond_b
    add-int/lit8 v8, v6, 0x1

    div-int/lit16 v9, v1, 0xfa

    add-int/lit16 v9, v9, 0xf9

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    .line 659
    add-int/lit8 v8, v6, 0x2

    rem-int/lit16 v9, v1, 0xfa

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    .line 660
    if-eq v4, v10, :cond_c

    move v5, v7

    .line 662
    .restart local v5    # "minRequiredDataIncrement":I
    :cond_c
    :goto_4
    if-ne v4, v10, :cond_d

    .line 663
    const/4 v1, 0x1

    .line 664
    :cond_d
    add-int v7, v5, p5

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-static {v8, v9, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 665
    if-eq v4, v10, :cond_e

    add-int/lit8 v7, p5, 0x1

    goto :goto_5

    :cond_e
    move/from16 v7, p5

    .local v7, "j":I
    :goto_5
    add-int v11, v5, v1

    add-int v11, v11, p5

    if-ge v7, v11, :cond_f

    .line 666
    invoke-direct {p0, v2, v7}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->randomizationAlgorithm255([BI)V

    .line 665
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 668
    .end local v7    # "j":I
    :cond_f
    if-ne v4, v10, :cond_10

    .line 669
    add-int/lit8 v7, v6, 0x1

    invoke-direct {p0, v2, v7}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->randomizationAlgorithm255([BI)V

    .line 670
    :cond_10
    add-int v7, v1, p5

    add-int/2addr v7, v5

    sub-int v7, v7, p9

    return v7
.end method

.method private draw([BILcom/itextpdf/barcodes/dmcode/DmParams;)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "dataSize"    # I
    .param p3, "dm"    # Lcom/itextpdf/barcodes/dmcode/DmParams;

    .line 1166
    iget v0, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 1167
    .local v0, "xByte":I
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->image:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 1170
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    .local v1, "i":I
    :goto_0
    iget v2, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 1171
    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    .local v2, "j":I
    :goto_1
    iget v3, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 1172
    invoke-direct {p0, v2, v1, v0}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->setBit(III)V

    .line 1171
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 1170
    :cond_0
    iget v3, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->heightSection:I

    add-int/2addr v1, v3

    goto :goto_0

    .line 1176
    .end local v2    # "j":I
    :cond_1
    iget v2, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->heightSection:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v2, v4

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_2
    iget v1, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v1, v4

    if-ge v2, v1, :cond_3

    .line 1177
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    .local v1, "j":I
    :goto_3
    iget v4, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_2

    .line 1178
    invoke-direct {p0, v1, v2, v0}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->setBit(III)V

    .line 1177
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1176
    :cond_2
    iget v4, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->heightSection:I

    add-int/2addr v2, v4

    goto :goto_2

    .line 1182
    .end local v1    # "j":I
    :cond_3
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    .end local v2    # "i":I
    .local v1, "i":I
    :goto_4
    iget v2, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v2, v4

    if-ge v1, v2, :cond_5

    .line 1183
    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    .local v2, "j":I
    :goto_5
    iget v4, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_4

    .line 1184
    invoke-direct {p0, v1, v2, v0}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->setBit(III)V

    .line 1183
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1182
    :cond_4
    iget v4, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->widthSection:I

    add-int/2addr v1, v4

    goto :goto_4

    .line 1188
    .end local v2    # "j":I
    :cond_5
    iget v2, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->widthSection:I

    sub-int/2addr v2, v3

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v2, v4

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_6
    iget v1, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v1, v4

    if-ge v2, v1, :cond_7

    .line 1189
    add-int/lit8 v4, v4, 0x1

    .local v4, "j":I
    :goto_7
    iget v1, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v1, v5

    if-ge v4, v1, :cond_6

    .line 1190
    invoke-direct {p0, v2, v4, v0}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->setBit(III)V

    .line 1189
    add-int/lit8 v4, v4, 0x2

    goto :goto_7

    .line 1188
    :cond_6
    iget v1, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->widthSection:I

    add-int/2addr v2, v1

    goto :goto_6

    .line 1193
    .end local v4    # "j":I
    :cond_7
    const/4 v1, 0x0

    .line 1194
    .local v1, "p":I
    const/4 v4, 0x0

    .local v4, "ys":I
    :goto_8
    iget v5, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    if-ge v4, v5, :cond_d

    .line 1195
    const/4 v5, 0x1

    .local v5, "y":I
    :goto_9
    iget v6, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->heightSection:I

    sub-int/2addr v6, v3

    if-ge v5, v6, :cond_c

    .line 1196
    const/4 v6, 0x0

    .local v6, "xs":I
    :goto_a
    iget v7, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    if-ge v6, v7, :cond_b

    .line 1197
    const/4 v7, 0x1

    .local v7, "x":I
    :goto_b
    iget v8, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->widthSection:I

    sub-int/2addr v8, v3

    if-ge v7, v8, :cond_a

    .line 1198
    iget-object v8, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->place:[S

    add-int/lit8 v9, v1, 0x1

    .end local v1    # "p":I
    .local v9, "p":I
    aget-short v1, v8, v1

    .line 1199
    .local v1, "z":I
    if-eq v1, v3, :cond_8

    if-le v1, v3, :cond_9

    div-int/lit8 v8, v1, 0x8

    sub-int/2addr v8, v3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v10, 0x80

    rem-int/lit8 v11, v1, 0x8

    shr-int/2addr v10, v11

    and-int/2addr v8, v10

    if-eqz v8, :cond_9

    .line 1200
    :cond_8
    add-int v8, v7, v6

    iget v10, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    add-int/2addr v8, v10

    add-int v11, v5, v4

    add-int/2addr v11, v10

    invoke-direct {p0, v8, v11, v0}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->setBit(III)V

    .line 1197
    :cond_9
    add-int/lit8 v7, v7, 0x1

    move v1, v9

    goto :goto_b

    .line 1196
    .end local v9    # "p":I
    .local v1, "p":I
    :cond_a
    iget v8, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->widthSection:I

    add-int/2addr v6, v8

    goto :goto_a

    .line 1195
    .end local v7    # "x":I
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 1194
    .end local v6    # "xs":I
    :cond_c
    iget v6, p3, Lcom/itextpdf/barcodes/dmcode/DmParams;->heightSection:I

    add-int/2addr v4, v6

    goto :goto_8

    .line 1205
    .end local v5    # "y":I
    :cond_d
    return-void
.end method

.method private getEncodation([BII[BIIIZ)I
    .locals 32
    .param p1, "text"    # [B
    .param p2, "textOffset"    # I
    .param p3, "textSize"    # I
    .param p4, "data"    # [B
    .param p5, "dataOffset"    # I
    .param p6, "dataSize"    # I
    .param p7, "options"    # I
    .param p8, "sizeFixed"    # Z

    .line 1242
    move-object/from16 v11, p0

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p5

    move/from16 v10, p6

    const/16 v16, -0x1

    if-gez v10, :cond_0

    .line 1243
    return v16

    .line 1244
    :cond_0
    and-int/lit8 v17, p7, 0x7

    .line 1245
    .end local p7    # "options":I
    .local v17, "options":I
    if-nez v17, :cond_10

    .line 1246
    const/4 v9, 0x0

    if-nez v13, :cond_1

    .line 1247
    return v9

    .line 1248
    :cond_1
    array-length v0, v14

    const/4 v8, 0x2

    new-array v1, v8, [I

    const/4 v7, 0x1

    aput v0, v1, v7

    const/4 v6, 0x6

    aput v6, v1, v9

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [[B

    .line 1249
    .local v18, "dataDynamic":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_2

    .line 1250
    aget-object v1, v18, v0

    array-length v2, v14

    invoke-static {v14, v9, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1251
    iget-object v1, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x1

    aput v2, v1, v9

    .line 1249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1253
    .end local v0    # "i":I
    :cond_2
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v19, v0, v9

    const/4 v3, 0x1

    aget-object v4, v18, v9

    const/16 v20, 0x0

    const/16 v21, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, v20

    move/from16 v8, v21

    move v15, v9

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->asciiEncodation([BII[BIIIII)I

    move-result v0

    aput v0, v19, v15

    .line 1254
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    const/4 v9, 0x1

    aget-object v19, v0, v9

    aget-object v4, v18, v9

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v20, -0x1

    move-object/from16 v0, p0

    move/from16 v9, v20

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->C40OrTextEncodation([BII[BIIZIII)I

    move-result v0

    aput v0, v19, v15

    .line 1255
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    const/4 v10, 0x2

    aget-object v19, v0, v10

    aget-object v4, v18, v10

    const/4 v7, 0x0

    const/4 v9, -0x1

    move-object/from16 v0, p0

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->C40OrTextEncodation([BII[BIIZIII)I

    move-result v0

    aput v0, v19, v15

    .line 1256
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    const/4 v10, 0x3

    aget-object v19, v0, v10

    aget-object v4, v18, v10

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->b256Encodation([BII[BIIIII)I

    move-result v0

    aput v0, v19, v15

    .line 1257
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    const/4 v9, 0x4

    aget-object v19, v0, v9

    aget-object v4, v18, v9

    move-object/from16 v0, p0

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->X12Encodation([BII[BIIIII)I

    move-result v0

    aput v0, v19, v15

    .line 1258
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    const/4 v9, 0x5

    aget-object v19, v0, v9

    aget-object v4, v18, v9

    move-object/from16 v0, p0

    move/from16 v9, p5

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->EdifactEncodation([BII[BIIIIIZ)I

    move-result v0

    aput v0, v19, v15

    .line 1259
    const/4 v0, 0x1

    move v10, v0

    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_d

    .line 1260
    const/4 v9, 0x6

    new-array v8, v9, [I

    .line 1261
    .local v8, "tempForMin":[I
    const/4 v0, 0x0

    move v7, v0

    .local v7, "currEnc":I
    :goto_2
    if-ge v7, v9, :cond_c

    .line 1262
    array-length v0, v14

    const/4 v6, 0x2

    new-array v1, v6, [I

    const/4 v5, 0x1

    aput v0, v1, v5

    aput v9, v1, v15

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, [[B

    .line 1263
    .local v19, "dataDynamicInner":[[B
    const/4 v0, 0x0

    move v4, v0

    .local v4, "prevEnc":I
    :goto_3
    if-ge v4, v9, :cond_a

    .line 1264
    aget-object v0, v18, v4

    aget-object v1, v19, v4

    array-length v2, v14

    invoke-static {v0, v15, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1265
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v0, v0, v4

    add-int/lit8 v1, v10, -0x1

    aget v1, v0, v1

    if-gez v1, :cond_3

    .line 1266
    aput v16, v8, v4

    move/from16 v15, p5

    move/from16 v24, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move v12, v7

    move-object v14, v8

    move/from16 v20, v9

    move v13, v10

    const/16 v23, 0x3

    const/16 v25, 0x4

    const/16 v26, 0x5

    goto/16 :goto_9

    .line 1268
    :cond_3
    if-nez v7, :cond_4

    .line 1269
    add-int v2, v12, v10

    const/4 v3, 0x1

    aget-object v20, v19, v4

    add-int/lit8 v1, v10, -0x1

    aget v1, v0, v1

    move/from16 v15, p5

    add-int v21, v1, v15

    add-int/lit8 v1, v10, -0x1

    aget v0, v0, v1

    move/from16 v1, p6

    sub-int v22, v1, v0

    add-int/lit8 v23, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v24, v4

    .end local v4    # "prevEnc":I
    .local v24, "prevEnc":I
    move-object/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v27, v7

    .end local v7    # "currEnc":I
    .local v27, "currEnc":I
    move v7, v10

    move-object/from16 v28, v8

    .end local v8    # "tempForMin":[I
    .local v28, "tempForMin":[I
    move/from16 v8, v23

    move/from16 v20, v9

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->asciiEncodation([BII[BIIIII)I

    move-result v0

    move-object/from16 v9, v28

    .end local v28    # "tempForMin":[I
    .local v9, "tempForMin":[I
    aput v0, v9, v24

    goto :goto_4

    .line 1268
    .end local v9    # "tempForMin":[I
    .end local v24    # "prevEnc":I
    .end local v27    # "currEnc":I
    .restart local v4    # "prevEnc":I
    .restart local v7    # "currEnc":I
    .restart local v8    # "tempForMin":[I
    :cond_4
    move/from16 v15, p5

    move/from16 v24, v4

    move/from16 v27, v7

    move/from16 v20, v9

    move-object v9, v8

    .line 1270
    .end local v4    # "prevEnc":I
    .end local v7    # "currEnc":I
    .end local v8    # "tempForMin":[I
    .restart local v9    # "tempForMin":[I
    .restart local v24    # "prevEnc":I
    .restart local v27    # "currEnc":I
    :goto_4
    move/from16 v8, v27

    const/4 v7, 0x1

    .end local v27    # "currEnc":I
    .local v8, "currEnc":I
    if-ne v8, v7, :cond_5

    .line 1271
    add-int v2, v12, v10

    const/4 v3, 0x1

    aget-object v4, v19, v24

    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v0, v0, v24

    add-int/lit8 v1, v10, -0x1

    aget v1, v0, v1

    add-int v5, v1, v15

    add-int/lit8 v1, v10, -0x1

    aget v0, v0, v1

    move/from16 v6, p6

    sub-int v21, v6, v0

    const/16 v22, 0x1

    add-int/lit8 v23, v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, v21

    move/from16 v21, v7

    move/from16 v7, v22

    move/from16 v29, v8

    .end local v8    # "currEnc":I
    .local v29, "currEnc":I
    move v8, v10

    move-object/from16 v30, v9

    .end local v9    # "tempForMin":[I
    .local v30, "tempForMin":[I
    move/from16 v9, v23

    move v13, v10

    .end local v10    # "i":I
    .local v13, "i":I
    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->C40OrTextEncodation([BII[BIIZIII)I

    move-result v0

    move-object/from16 v10, v30

    .end local v30    # "tempForMin":[I
    .local v10, "tempForMin":[I
    aput v0, v10, v24

    goto :goto_5

    .line 1270
    .end local v13    # "i":I
    .end local v29    # "currEnc":I
    .restart local v8    # "currEnc":I
    .restart local v9    # "tempForMin":[I
    .local v10, "i":I
    :cond_5
    move/from16 v21, v7

    move/from16 v29, v8

    move v13, v10

    move-object v10, v9

    .line 1272
    .end local v8    # "currEnc":I
    .end local v9    # "tempForMin":[I
    .local v10, "tempForMin":[I
    .restart local v13    # "i":I
    .restart local v29    # "currEnc":I
    :goto_5
    move/from16 v9, v29

    const/4 v8, 0x2

    .end local v29    # "currEnc":I
    .local v9, "currEnc":I
    if-ne v9, v8, :cond_6

    .line 1273
    add-int v2, v12, v13

    const/4 v3, 0x1

    aget-object v4, v19, v24

    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v0, v0, v24

    add-int/lit8 v1, v13, -0x1

    aget v1, v0, v1

    add-int v5, v1, v15

    add-int/lit8 v1, v13, -0x1

    aget v0, v0, v1

    move/from16 v7, p6

    sub-int v6, v7, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, v22

    move/from16 v22, v8

    move v8, v13

    move/from16 v31, v9

    .end local v9    # "currEnc":I
    .local v31, "currEnc":I
    move/from16 v9, v23

    move-object v14, v10

    .end local v10    # "tempForMin":[I
    .local v14, "tempForMin":[I
    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->C40OrTextEncodation([BII[BIIZIII)I

    move-result v0

    aput v0, v14, v24

    goto :goto_6

    .line 1272
    .end local v14    # "tempForMin":[I
    .end local v31    # "currEnc":I
    .restart local v9    # "currEnc":I
    .restart local v10    # "tempForMin":[I
    :cond_6
    move/from16 v22, v8

    move/from16 v31, v9

    move-object v14, v10

    .line 1274
    .end local v9    # "currEnc":I
    .end local v10    # "tempForMin":[I
    .restart local v14    # "tempForMin":[I
    .restart local v31    # "currEnc":I
    :goto_6
    move/from16 v10, v31

    const/4 v9, 0x3

    .end local v31    # "currEnc":I
    .local v10, "currEnc":I
    if-ne v10, v9, :cond_7

    .line 1275
    add-int v2, v12, v13

    const/4 v3, 0x1

    aget-object v4, v19, v24

    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v0, v0, v24

    add-int/lit8 v1, v13, -0x1

    aget v1, v0, v1

    add-int v5, v1, v15

    add-int/lit8 v1, v13, -0x1

    aget v0, v0, v1

    move/from16 v8, p6

    sub-int v6, v8, v0

    add-int/lit8 v23, v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v7, v13

    move/from16 v8, v23

    move/from16 v23, v9

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->b256Encodation([BII[BIIIII)I

    move-result v0

    aput v0, v14, v24

    goto :goto_7

    .line 1274
    :cond_7
    move/from16 v23, v9

    .line 1276
    :goto_7
    const/4 v9, 0x4

    if-ne v10, v9, :cond_8

    .line 1277
    add-int v2, v12, v13

    const/4 v3, 0x1

    aget-object v4, v19, v24

    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v0, v0, v24

    add-int/lit8 v1, v13, -0x1

    aget v1, v0, v1

    add-int v5, v1, v15

    add-int/lit8 v1, v13, -0x1

    aget v0, v0, v1

    move/from16 v8, p6

    sub-int v6, v8, v0

    add-int/lit8 v25, v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v7, v13

    move/from16 v8, v25

    move/from16 v25, v9

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->X12Encodation([BII[BIIIII)I

    move-result v0

    aput v0, v14, v24

    goto :goto_8

    .line 1276
    :cond_8
    move/from16 v25, v9

    .line 1278
    :goto_8
    const/4 v9, 0x5

    if-ne v10, v9, :cond_9

    .line 1279
    add-int v2, v12, v13

    const/4 v3, 0x1

    aget-object v4, v19, v24

    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v0, v0, v24

    add-int/lit8 v1, v13, -0x1

    aget v1, v0, v1

    add-int v5, v1, v15

    add-int/lit8 v1, v13, -0x1

    aget v0, v0, v1

    move/from16 v8, p6

    sub-int v6, v8, v0

    add-int/lit8 v26, v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v7, v13

    move/from16 v8, v26

    move/from16 v26, v9

    move/from16 v9, p5

    move v12, v10

    .end local v10    # "currEnc":I
    .local v12, "currEnc":I
    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->EdifactEncodation([BII[BIIIIIZ)I

    move-result v0

    aput v0, v14, v24

    goto :goto_9

    .line 1278
    .end local v12    # "currEnc":I
    .restart local v10    # "currEnc":I
    :cond_9
    move/from16 v26, v9

    move v12, v10

    .line 1263
    .end local v10    # "currEnc":I
    .restart local v12    # "currEnc":I
    :goto_9
    add-int/lit8 v4, v24, 0x1

    move v7, v12

    move v10, v13

    move-object v8, v14

    move/from16 v9, v20

    move/from16 v5, v21

    move/from16 v6, v22

    const/4 v15, 0x0

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    .end local v24    # "prevEnc":I
    .restart local v4    # "prevEnc":I
    goto/16 :goto_3

    .end local v12    # "currEnc":I
    .end local v13    # "i":I
    .end local v14    # "tempForMin":[I
    .restart local v7    # "currEnc":I
    .local v8, "tempForMin":[I
    .local v10, "i":I
    :cond_a
    move/from16 v15, p5

    move/from16 v24, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move v12, v7

    move-object v14, v8

    move/from16 v20, v9

    move v13, v10

    const/16 v23, 0x3

    const/16 v25, 0x4

    const/16 v26, 0x5

    .line 1282
    .end local v4    # "prevEnc":I
    .end local v7    # "currEnc":I
    .end local v8    # "tempForMin":[I
    .end local v10    # "i":I
    .restart local v12    # "currEnc":I
    .restart local v13    # "i":I
    .restart local v14    # "tempForMin":[I
    invoke-direct {v11, v14, v12, v13}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->solveFAndSwitchMode([III)V

    .line 1283
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    aget-object v0, v0, v12

    aget v0, v0, v13

    if-eqz v0, :cond_b

    .line 1284
    add-int/lit8 v0, v0, -0x1

    aget-object v0, v19, v0

    aget-object v1, v18, v12

    move-object v2, v14

    move-object/from16 v14, p4

    .end local v14    # "tempForMin":[I
    .local v2, "tempForMin":[I
    array-length v3, v14

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a

    .line 1283
    .end local v2    # "tempForMin":[I
    .restart local v14    # "tempForMin":[I
    :cond_b
    move-object v2, v14

    const/4 v4, 0x0

    move-object/from16 v14, p4

    .line 1261
    .end local v14    # "tempForMin":[I
    .end local v19    # "dataDynamicInner":[[B
    .restart local v2    # "tempForMin":[I
    :goto_a
    add-int/lit8 v7, v12, 0x1

    move/from16 v12, p2

    move-object v8, v2

    move v15, v4

    move v10, v13

    move/from16 v9, v20

    move/from16 v13, p3

    .end local v12    # "currEnc":I
    .restart local v7    # "currEnc":I
    goto/16 :goto_2

    .end local v2    # "tempForMin":[I
    .end local v13    # "i":I
    .restart local v8    # "tempForMin":[I
    .restart local v10    # "i":I
    :cond_c
    move v12, v7

    move-object v2, v8

    move/from16 v20, v9

    move v13, v10

    move v4, v15

    const/16 v21, 0x1

    const/16 v22, 0x2

    const/16 v23, 0x3

    const/16 v25, 0x4

    const/16 v26, 0x5

    move/from16 v15, p5

    .line 1259
    .end local v7    # "currEnc":I
    .end local v8    # "tempForMin":[I
    .end local v10    # "i":I
    .restart local v13    # "i":I
    add-int/lit8 v10, v13, 0x1

    move/from16 v12, p2

    move/from16 v13, p3

    move v15, v4

    .end local v13    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_1

    :cond_d
    move v13, v10

    move v4, v15

    move/from16 v15, p5

    .line 1287
    .end local v10    # "i":I
    iget-object v0, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    move/from16 v12, p3

    add-int/lit8 v1, v12, -0x1

    invoke-static {v0, v1}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->minValueInColumn([[II)I

    move-result v0

    .line 1288
    .local v0, "e":I
    move/from16 v13, p6

    if-gt v0, v13, :cond_f

    if-gez v0, :cond_e

    goto :goto_b

    .line 1290
    :cond_e
    iget-object v1, v11, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    add-int/lit8 v2, v12, -0x1

    invoke-static {v1, v2, v0}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->valuePositionInColumn([[III)I

    move-result v1

    .line 1291
    .local v1, "bestDataDynamicResultIndex":I
    aget-object v2, v18, v1

    array-length v3, v14

    invoke-static {v2, v4, v14, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1292
    return v0

    .line 1289
    .end local v1    # "bestDataDynamicResultIndex":I
    :cond_f
    :goto_b
    return v16

    .line 1294
    .end local v0    # "e":I
    .end local v18    # "dataDynamic":[[B
    :cond_10
    move v12, v13

    move v13, v10

    packed-switch v17, :pswitch_data_0

    .line 1313
    return v16

    .line 1308
    :pswitch_0
    if-le v12, v13, :cond_11

    .line 1309
    return v16

    .line 1310
    :cond_11
    move-object/from16 v10, p1

    move/from16 v9, p2

    invoke-static {v10, v9, v14, v15, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1311
    return v12

    .line 1306
    :pswitch_1
    move-object/from16 v10, p1

    move/from16 v9, p2

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p5

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->EdifactEncodation([BII[BIIIIIZ)I

    move-result v0

    return v0

    .line 1304
    :pswitch_2
    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->X12Encodation([BII[BIIIII)I

    move-result v0

    return v0

    .line 1302
    :pswitch_3
    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->b256Encodation([BII[BIIIII)I

    move-result v0

    return v0

    .line 1300
    :pswitch_4
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->C40OrTextEncodation([BII[BIIZIII)I

    move-result v0

    return v0

    .line 1298
    :pswitch_5
    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->C40OrTextEncodation([BII[BIIZIII)I

    move-result v0

    return v0

    .line 1296
    :pswitch_6
    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->asciiEncodation([BII[BIIIII)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getNumber([BII)I
    .locals 5
    .param p0, "text"    # [B
    .param p1, "ptrIn"    # I
    .param p2, "n"    # I

    .line 1318
    const/4 v0, 0x0

    .line 1319
    .local v0, "v":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 1320
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "ptrIn":I
    .local v2, "ptrIn":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 1321
    .local p1, "c":I
    const/16 v3, 0x30

    if-lt p1, v3, :cond_1

    const/16 v4, 0x39

    if-le p1, v4, :cond_0

    goto :goto_1

    .line 1323
    :cond_0
    mul-int/lit8 v4, v0, 0xa

    add-int/2addr v4, p1

    add-int/lit8 v0, v4, -0x30

    .line 1319
    add-int/lit8 v1, v1, 0x1

    move p1, v2

    goto :goto_0

    .line 1322
    :cond_1
    :goto_1
    const/4 v3, -0x1

    return v3

    .line 1325
    .end local v2    # "ptrIn":I
    .local p1, "ptrIn":I
    :cond_2
    return v0
.end method

.method private static isDigit(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 592
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static makePadding([BII)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 580
    if-gtz p2, :cond_0

    .line 581
    return-void

    .line 582
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "position":I
    .local v0, "position":I
    const/16 v1, -0x7f

    aput-byte v1, p0, p1

    .line 583
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    .line 584
    add-int/lit8 p1, v0, 0x1

    mul-int/lit16 p1, p1, 0x95

    rem-int/lit16 p1, p1, 0xfd

    add-int/lit16 p1, p1, 0x81

    add-int/lit8 p1, p1, 0x1

    .line 585
    .local p1, "t":I
    const/16 v1, 0xfe

    if-le p1, v1, :cond_1

    .line 586
    add-int/lit16 p1, p1, -0xfe

    .line 587
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "position":I
    .local v1, "position":I
    int-to-byte v2, p1

    aput-byte v2, p0, v0

    .line 588
    .end local p1    # "t":I
    move v0, v1

    goto :goto_0

    .line 589
    .end local v1    # "position":I
    .restart local v0    # "position":I
    :cond_2
    return-void
.end method

.method private static minValueInColumn([[II)I
    .locals 3
    .param p0, "array"    # [[I
    .param p1, "column"    # I

    .line 1208
    const v0, 0x7fffffff

    .line 1209
    .local v0, "min":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 1210
    aget-object v2, p0, v1

    aget v2, v2, p1

    if-ge v2, v0, :cond_0

    aget-object v2, p0, v1

    aget v2, v2, p1

    if-ltz v2, :cond_0

    .line 1211
    aget-object v2, p0, v1

    aget v0, v2, p1

    .line 1209
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1212
    .end local v1    # "i":I
    :cond_1
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method private processExtensions([BII[B)I
    .locals 11
    .param p1, "text"    # [B
    .param p2, "textOffset"    # I
    .param p3, "textSize"    # I
    .param p4, "data"    # [B

    .line 1330
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->options:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 1331
    const/4 v0, 0x0

    return v0

    .line 1332
    :cond_0
    const/4 v0, 0x0

    .line 1333
    .local v0, "order":I
    const/4 v1, 0x0

    .line 1334
    .local v1, "ptrIn":I
    const/4 v2, 0x0

    .line 1335
    .local v2, "ptrOut":I
    :goto_0
    const/4 v3, -0x1

    if-ge v1, p3, :cond_14

    .line 1336
    const/16 v4, 0x14

    if-le v0, v4, :cond_1

    .line 1337
    return v3

    .line 1338
    :cond_1
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "ptrIn":I
    .local v4, "ptrIn":I
    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 1339
    .local v1, "c":I
    add-int/lit8 v0, v0, 0x1

    .line 1340
    const v5, 0xfc04

    const/16 v6, -0x16

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_4

    .line 1364
    :sswitch_0
    if-eq v0, v8, :cond_2

    .line 1365
    return v3

    .line 1366
    :cond_2
    add-int/lit8 v6, v4, 0x9

    if-le v6, p3, :cond_3

    .line 1367
    return v3

    .line 1368
    :cond_3
    add-int v6, p2, v4

    invoke-static {p1, v6, v7}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->getNumber([BII)I

    move-result v6

    .line 1369
    .local v6, "fn":I
    if-lez v6, :cond_9

    const/16 v9, 0x10

    if-le v6, v9, :cond_4

    goto :goto_3

    .line 1371
    :cond_4
    add-int/lit8 v4, v4, 0x2

    .line 1372
    add-int v10, p2, v4

    invoke-static {p1, v10, v7}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->getNumber([BII)I

    move-result v7

    .line 1373
    .local v7, "ft":I
    if-le v7, v8, :cond_8

    if-le v7, v9, :cond_5

    goto :goto_2

    .line 1375
    :cond_5
    add-int/lit8 v4, v4, 0x2

    .line 1376
    add-int v9, p2, v4

    const/4 v10, 0x5

    invoke-static {p1, v9, v10}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->getNumber([BII)I

    move-result v9

    .line 1377
    .local v9, "fi":I
    if-ltz v9, :cond_7

    if-lt v6, v5, :cond_6

    goto :goto_1

    .line 1379
    :cond_6
    add-int/lit8 v4, v4, 0x5

    .line 1380
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ptrOut":I
    .local v3, "ptrOut":I
    const/16 v5, -0x17

    aput-byte v5, p4, v2

    .line 1381
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "ptrOut":I
    .restart local v2    # "ptrOut":I
    add-int/lit8 v5, v6, -0x1

    shl-int/lit8 v5, v5, 0x4

    rsub-int/lit8 v10, v7, 0x11

    or-int/2addr v5, v10

    int-to-byte v5, v5

    aput-byte v5, p4, v3

    .line 1382
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ptrOut":I
    .restart local v3    # "ptrOut":I
    div-int/lit16 v5, v9, 0xfe

    add-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, p4, v2

    .line 1383
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "ptrOut":I
    .restart local v2    # "ptrOut":I
    rem-int/lit16 v5, v9, 0xfe

    add-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, p4, v3

    .line 1384
    goto/16 :goto_4

    .line 1378
    :cond_7
    :goto_1
    return v3

    .line 1374
    .end local v9    # "fi":I
    :cond_8
    :goto_2
    return v3

    .line 1370
    .end local v7    # "ft":I
    :cond_9
    :goto_3
    return v3

    .line 1386
    .end local v6    # "fn":I
    :sswitch_1
    if-eq v0, v8, :cond_a

    .line 1387
    return v3

    .line 1388
    :cond_a
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ptrOut":I
    .restart local v3    # "ptrOut":I
    aput-byte v6, p4, v2

    .line 1389
    move v2, v3

    goto/16 :goto_4

    .line 1391
    .end local v3    # "ptrOut":I
    .restart local v2    # "ptrOut":I
    :sswitch_2
    if-eq v0, v8, :cond_b

    .line 1392
    return v3

    .line 1393
    :cond_b
    add-int/lit8 v5, v4, 0x1

    if-le v5, p3, :cond_c

    .line 1394
    return v3

    .line 1395
    :cond_c
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptrIn":I
    .local v5, "ptrIn":I
    add-int/2addr v4, p2

    aget-byte v4, p1, v4

    and-int/lit16 v1, v4, 0xff

    .line 1396
    const/16 v4, 0x35

    if-eq v1, v4, :cond_d

    .line 1397
    return v3

    .line 1398
    :cond_d
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ptrOut":I
    .restart local v3    # "ptrOut":I
    aput-byte v6, p4, v2

    .line 1399
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "ptrOut":I
    .restart local v2    # "ptrOut":I
    const/16 v4, -0x14

    aput-byte v4, p4, v3

    .line 1400
    move v4, v5

    goto/16 :goto_4

    .line 1402
    .end local v5    # "ptrIn":I
    .restart local v4    # "ptrIn":I
    :sswitch_3
    if-eq v0, v8, :cond_f

    if-ne v0, v7, :cond_e

    aget-byte v5, p1, p2

    const/16 v6, 0x73

    if-eq v5, v6, :cond_f

    aget-byte v5, p1, p2

    const/16 v6, 0x6d

    if-eq v5, v6, :cond_f

    .line 1403
    :cond_e
    return v3

    .line 1404
    :cond_f
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ptrOut":I
    .restart local v3    # "ptrOut":I
    const/16 v5, -0x18

    aput-byte v5, p4, v2

    move v2, v3

    goto :goto_4

    .line 1345
    .end local v3    # "ptrOut":I
    .restart local v2    # "ptrOut":I
    :sswitch_4
    add-int/lit8 v6, v4, 0x6

    if-le v6, p3, :cond_10

    .line 1346
    return v3

    .line 1347
    :cond_10
    add-int v6, p2, v4

    const/4 v7, 0x6

    invoke-static {p1, v6, v7}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->getNumber([BII)I

    move-result v6

    .line 1348
    .local v6, "eci":I
    if-gez v6, :cond_11

    .line 1349
    return v3

    .line 1350
    :cond_11
    add-int/lit8 v4, v4, 0x6

    .line 1351
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ptrOut":I
    .restart local v3    # "ptrOut":I
    const/16 v7, -0xf

    aput-byte v7, p4, v2

    .line 1352
    const/16 v2, 0x7f

    if-ge v6, v2, :cond_12

    .line 1353
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "ptrOut":I
    .restart local v2    # "ptrOut":I
    add-int/lit8 v5, v6, 0x1

    int-to-byte v5, v5

    aput-byte v5, p4, v3

    goto :goto_4

    .line 1354
    .end local v2    # "ptrOut":I
    .restart local v3    # "ptrOut":I
    :cond_12
    const/16 v2, 0x3fff

    if-ge v6, v2, :cond_13

    .line 1355
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "ptrOut":I
    .restart local v2    # "ptrOut":I
    add-int/lit8 v5, v6, -0x7f

    div-int/lit16 v5, v5, 0xfe

    add-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p4, v3

    .line 1356
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ptrOut":I
    .restart local v3    # "ptrOut":I
    add-int/lit8 v5, v6, -0x7f

    rem-int/lit16 v5, v5, 0xfe

    add-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, p4, v2

    move v2, v3

    goto :goto_4

    .line 1358
    :cond_13
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "ptrOut":I
    .restart local v2    # "ptrOut":I
    add-int/lit16 v7, v6, -0x3fff

    div-int/2addr v7, v5

    add-int/lit16 v7, v7, 0xc0

    int-to-byte v5, v7

    aput-byte v5, p4, v3

    .line 1359
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ptrOut":I
    .restart local v3    # "ptrOut":I
    add-int/lit16 v5, v6, -0x3fff

    div-int/lit16 v5, v5, 0xfe

    rem-int/lit16 v5, v5, 0xfe

    add-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, p4, v2

    .line 1360
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "ptrOut":I
    .restart local v2    # "ptrOut":I
    add-int/lit16 v5, v6, -0x3fff

    rem-int/lit16 v5, v5, 0xfe

    add-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, p4, v3

    .line 1362
    goto :goto_4

    .line 1342
    .end local v6    # "eci":I
    :sswitch_5
    iput v4, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->extOut:I

    .line 1343
    return v2

    .line 1404
    :goto_4
    move v1, v4

    goto/16 :goto_0

    .line 1407
    .end local v4    # "ptrIn":I
    .local v1, "ptrIn":I
    :cond_14
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_5
        0x65 -> :sswitch_4
        0x66 -> :sswitch_3
        0x6d -> :sswitch_2
        0x70 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method private randomizationAlgorithm255([BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "j"    # I

    .line 674
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 675
    .local v0, "c":I
    add-int/lit8 v2, p2, 0x1

    mul-int/lit16 v2, v2, 0x95

    rem-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    .line 676
    .local v2, "prn":I
    add-int v3, v0, v2

    .line 677
    .local v3, "tv":I
    if-le v3, v1, :cond_0

    .line 678
    add-int/lit16 v3, v3, -0x100

    .line 679
    :cond_0
    int-to-byte v1, v3

    aput-byte v1, p1, p2

    .line 680
    return-void
.end method

.method private setBit(III)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "xByte"    # I

    .line 1161
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->image:[B

    mul-int v1, p2, p3

    div-int/lit8 v2, p1, 0x8

    add-int/2addr v1, v2

    aget-byte v2, v0, v1

    and-int/lit8 v3, p1, 0x7

    const/16 v4, 0x80

    shr-int v3, v4, v3

    int-to-byte v3, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1162
    return-void
.end method

.method private solveFAndSwitchMode([III)V
    .locals 6
    .param p1, "forMin"    # [I
    .param p2, "mode"    # I
    .param p3, "currIndex"    # I

    .line 1223
    aget v0, p1, p2

    const v1, 0x7fffffff

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v0, v0, p2

    add-int/lit8 v2, p3, -0x1

    aget v2, v0, v2

    if-ltz v2, :cond_0

    .line 1224
    aget v2, p1, p2

    aput v2, v0, p3

    .line 1225
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    aget-object v0, v0, p2

    add-int/lit8 v2, p2, 0x1

    aput v2, v0, p3

    goto :goto_0

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v0, v0, p2

    aput v1, v0, p3

    .line 1229
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    .line 1230
    aget v2, p1, v0

    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v4, v3, p2

    aget v5, v4, p3

    if-ge v2, v5, :cond_1

    aget v2, p1, v0

    if-ltz v2, :cond_1

    aget-object v2, v3, v0

    add-int/lit8 v3, p3, -0x1

    aget v2, v2, v3

    if-ltz v2, :cond_1

    .line 1231
    aget v2, p1, v0

    aput v2, v4, p3

    .line 1232
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    aget-object v2, v2, p2

    add-int/lit8 v3, v0, 0x1

    aput v3, v2, p3

    .line 1229
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1235
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    aget-object v0, v0, p2

    aget v2, v0, p3

    if-ne v2, v1, :cond_3

    .line 1236
    const/4 v1, -0x1

    aput v1, v0, p3

    .line 1238
    :cond_3
    return-void
.end method

.method private static valuePositionInColumn([[III)I
    .locals 2
    .param p0, "array"    # [[I
    .param p1, "column"    # I
    .param p2, "value"    # I

    .line 1216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 1217
    aget-object v1, p0, v0

    aget v1, v1, p1

    if-ne v1, p2, :cond_0

    .line 1218
    return v0

    .line 1216
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1219
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 16
    .param p1, "foreground"    # Ljava/awt/Color;
    .param p2, "background"    # Ljava/awt/Color;

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->image:[B

    if-nez v1, :cond_0

    .line 274
    const/4 v1, 0x0

    return-object v1

    .line 275
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    .line 276
    .local v1, "f":I
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    .line 277
    .local v2, "g":I
    new-instance v3, Ljava/awt/Canvas;

    invoke-direct {v3}, Ljava/awt/Canvas;-><init>()V

    .line 279
    .local v3, "canvas":Ljava/awt/Canvas;
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    mul-int/lit8 v6, v5, 0x2

    add-int/2addr v4, v6

    .line 280
    .local v4, "w":I
    iget v6, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v6, v5

    .line 281
    .local v6, "h":I
    mul-int v5, v4, v6

    new-array v5, v5, [I

    .line 282
    .local v5, "pix":[I
    add-int/lit8 v7, v4, 0x7

    div-int/lit8 v13, v7, 0x8

    .line 283
    .local v13, "stride":I
    const/4 v7, 0x0

    .line 284
    .local v7, "ptr":I
    const/4 v8, 0x0

    move v14, v7

    .end local v7    # "ptr":I
    .local v8, "k":I
    .local v14, "ptr":I
    :goto_0
    if-ge v8, v6, :cond_3

    .line 285
    mul-int v7, v8, v13

    .line 286
    .local v7, "p":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v4, :cond_2

    .line 287
    iget-object v10, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->image:[B

    div-int/lit8 v11, v9, 0x8

    add-int/2addr v11, v7

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    .line 288
    .local v10, "b":I
    rem-int/lit8 v11, v9, 0x8

    shl-int/2addr v10, v11

    .line 289
    add-int/lit8 v11, v14, 0x1

    .end local v14    # "ptr":I
    .local v11, "ptr":I
    and-int/lit16 v12, v10, 0x80

    if-nez v12, :cond_1

    move v12, v2

    goto :goto_2

    :cond_1
    move v12, v1

    :goto_2
    aput v12, v5, v14

    .line 286
    .end local v10    # "b":I
    add-int/lit8 v9, v9, 0x1

    move v14, v11

    goto :goto_1

    .line 284
    .end local v7    # "p":I
    .end local v9    # "j":I
    .end local v11    # "ptr":I
    .restart local v14    # "ptr":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 292
    .end local v8    # "k":I
    :cond_3
    new-instance v15, Ljava/awt/image/MemoryImageSource;

    const/4 v11, 0x0

    move-object v7, v15

    move v8, v4

    move v9, v6

    move-object v10, v5

    move v12, v4

    invoke-direct/range {v7 .. v12}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v3, v15}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v7

    .line 293
    .local v7, "img":Ljava/awt/Image;
    return-object v7
.end method

.method public createFormXObject(Lcom/itextpdf/kernel/colors/Color;FLcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 3
    .param p1, "foreground"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "moduleSide"    # F
    .param p3, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 227
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 228
    .local v0, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v1, v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 229
    .local v1, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->setBBox(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 231
    return-object v0
.end method

.method public createFormXObject(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 1
    .param p1, "foreground"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 215
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, p2}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->createFormXObject(Lcom/itextpdf/kernel/colors/Color;FLcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v0

    return-object v0
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4

    .line 205
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    int-to-float v2, v3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0
.end method

.method public getBarcodeSize(FF)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4
    .param p1, "moduleHeight"    # F
    .param p2, "moduleWidth"    # F

    .line 304
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    int-to-float v2, v3

    mul-float/2addr v2, p2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    return v0
.end method

.method public getOptions()I
    .locals 1

    .line 528
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->options:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 459
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    return v0
.end method

.method public getWs()I
    .locals 1

    .line 510
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    return v0
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "foreground"    # Lcom/itextpdf/kernel/colors/Color;

    .line 210
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 21
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "foreground"    # Lcom/itextpdf/kernel/colors/Color;
    .param p3, "moduleSide"    # F

    .line 235
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->image:[B

    if-nez v2, :cond_0

    .line 236
    const/4 v2, 0x0

    return-object v2

    .line 239
    :cond_0
    if-eqz p2, :cond_1

    .line 240
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 243
    :cond_1
    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    iget v3, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v2, v4

    .line 244
    .local v2, "w":I
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    .line 245
    .local v4, "h":I
    add-int/lit8 v3, v2, 0x7

    div-int/lit8 v3, v3, 0x8

    .line 247
    .local v3, "stride":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 248
    mul-int v6, v5, v3

    .line 249
    .local v6, "p":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v2, :cond_3

    .line 250
    iget-object v8, v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->image:[B

    div-int/lit8 v9, v7, 0x8

    add-int/2addr v9, v6

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    .line 251
    .local v8, "b":I
    rem-int/lit8 v9, v7, 0x8

    shl-int/2addr v8, v9

    .line 252
    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_2

    .line 253
    int-to-float v9, v7

    mul-float/2addr v9, v1

    float-to-double v11, v9

    sub-int v9, v4, v5

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    mul-float/2addr v9, v1

    float-to-double v13, v9

    float-to-double v9, v1

    move/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "w":I
    .end local v3    # "stride":I
    .local v19, "w":I
    .local v20, "stride":I
    float-to-double v2, v1

    move-wide v15, v9

    move-object/from16 v10, p1

    move-wide/from16 v17, v2

    invoke-virtual/range {v10 .. v18}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_2

    .line 252
    .end local v19    # "w":I
    .end local v20    # "stride":I
    .restart local v2    # "w":I
    .restart local v3    # "stride":I
    :cond_2
    move/from16 v19, v2

    move/from16 v20, v3

    .line 249
    .end local v2    # "w":I
    .end local v3    # "stride":I
    .end local v8    # "b":I
    .restart local v19    # "w":I
    .restart local v20    # "stride":I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v19

    move/from16 v3, v20

    goto :goto_1

    .end local v19    # "w":I
    .end local v20    # "stride":I
    .restart local v2    # "w":I
    .restart local v3    # "stride":I
    :cond_3
    move/from16 v19, v2

    move/from16 v20, v3

    .line 247
    .end local v2    # "w":I
    .end local v3    # "stride":I
    .end local v6    # "p":I
    .end local v7    # "j":I
    .restart local v19    # "w":I
    .restart local v20    # "stride":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v19    # "w":I
    .end local v20    # "stride":I
    .restart local v2    # "w":I
    .restart local v3    # "stride":I
    :cond_4
    move/from16 v19, v2

    .line 257
    .end local v2    # "w":I
    .end local v5    # "k":I
    .restart local v19    # "w":I
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    return-object v2
.end method

.method public setCode(Ljava/lang/String;)I
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .local v0, "t":[B
    nop

    .line 325
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->setCode([BII)I

    move-result v1

    return v1

    .line 322
    .end local v0    # "t":[B
    :catch_0
    move-exception v0

    .line 323
    .local v0, "exc":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text has to be encoded in iso-8859-1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCode([BII)I
    .locals 22
    .param p1, "text"    # [B
    .param p2, "textOffset"    # I
    .param p3, "textSize"    # I

    .line 342
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    const-string v0, ""

    if-ltz v11, :cond_c

    .line 345
    add-int v1, v11, v12

    array-length v2, v10

    if-gt v1, v2, :cond_b

    if-ltz v12, :cond_b

    .line 350
    const/16 v0, 0x9c4

    new-array v13, v0, [B

    .line 351
    .local v13, "data":[B
    const/4 v14, 0x0

    iput v14, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->extOut:I

    .line 352
    invoke-direct {v9, v10, v11, v12, v13}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->processExtensions([BII[B)I

    move-result v15

    .line 353
    .local v15, "extCount":I
    if-gez v15, :cond_0

    .line 354
    const/4 v0, 0x5

    return v0

    .line 356
    :cond_0
    const/16 v16, -0x1

    .line 357
    .local v16, "e":I
    iget v0, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->extOut:I

    sub-int v0, v12, v0

    const/4 v8, 0x2

    new-array v1, v8, [I

    const/16 v17, 0x1

    aput v0, v1, v17

    const/4 v0, 0x6

    aput v0, v1, v14

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->f:[[I

    .line 358
    iget v1, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->extOut:I

    sub-int v1, v12, v1

    new-array v2, v8, [I

    aput v1, v2, v17

    aput v0, v2, v14

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->switchMode:[[I

    .line 359
    iget v0, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    if-eqz v0, :cond_6

    iget v0, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    if-nez v0, :cond_1

    move/from16 v20, v8

    goto :goto_2

    .line 374
    :cond_1
    const/4 v0, 0x0

    move v7, v0

    .local v7, "k":I
    :goto_0
    sget-object v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->dmSizes:[Lcom/itextpdf/barcodes/dmcode/DmParams;

    array-length v1, v0

    if-ge v7, v1, :cond_3

    .line 375
    iget v1, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    aget-object v2, v0, v7

    iget v2, v2, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    if-ne v1, v2, :cond_2

    iget v1, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    aget-object v2, v0, v7

    iget v2, v2, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    if-ne v1, v2, :cond_2

    .line 376
    goto :goto_1

    .line 374
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 378
    :cond_3
    :goto_1
    array-length v1, v0

    if-ne v7, v1, :cond_4

    .line 379
    const/4 v0, 0x3

    return v0

    .line 381
    :cond_4
    aget-object v6, v0, v7

    .line 382
    .local v6, "dm":Lcom/itextpdf/barcodes/dmcode/DmParams;
    iget v0, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->extOut:I

    add-int v2, v11, v0

    sub-int v3, v12, v0

    iget v0, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    sub-int v18, v0, v15

    iget v5, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->options:I

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v4, v13

    move/from16 v20, v5

    move v5, v15

    move-object/from16 v21, v6

    .end local v6    # "dm":Lcom/itextpdf/barcodes/dmcode/DmParams;
    .local v21, "dm":Lcom/itextpdf/barcodes/dmcode/DmParams;
    move/from16 v6, v18

    move/from16 v18, v7

    .end local v7    # "k":I
    .local v18, "k":I
    move/from16 v7, v20

    move/from16 v20, v8

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->getEncodation([BII[BIIIZ)I

    move-result v0

    .line 383
    .end local v16    # "e":I
    .local v0, "e":I
    if-gez v0, :cond_5

    .line 384
    return v17

    .line 386
    :cond_5
    add-int/2addr v0, v15

    move/from16 v7, v18

    move-object/from16 v6, v21

    goto :goto_5

    .line 359
    .end local v0    # "e":I
    .end local v18    # "k":I
    .end local v21    # "dm":Lcom/itextpdf/barcodes/dmcode/DmParams;
    .restart local v16    # "e":I
    :cond_6
    move/from16 v20, v8

    .line 360
    :goto_2
    sget-object v0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->dmSizes:[Lcom/itextpdf/barcodes/dmcode/DmParams;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v8, v0, v1

    .line 361
    .local v8, "last":Lcom/itextpdf/barcodes/dmcode/DmParams;
    iget v0, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->extOut:I

    add-int v2, v11, v0

    sub-int v3, v12, v0

    iget v0, v8, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    sub-int v6, v0, v15

    iget v7, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->options:I

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v4, v13

    move v5, v15

    move-object/from16 v19, v8

    .end local v8    # "last":Lcom/itextpdf/barcodes/dmcode/DmParams;
    .local v19, "last":Lcom/itextpdf/barcodes/dmcode/DmParams;
    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->getEncodation([BII[BIIIZ)I

    move-result v0

    .line 362
    .end local v16    # "e":I
    .restart local v0    # "e":I
    if-gez v0, :cond_7

    .line 363
    return v17

    .line 365
    :cond_7
    add-int/2addr v0, v15

    .line 366
    const/4 v1, 0x0

    move v7, v1

    .restart local v7    # "k":I
    :goto_3
    sget-object v1, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->dmSizes:[Lcom/itextpdf/barcodes/dmcode/DmParams;

    array-length v2, v1

    if-ge v7, v2, :cond_9

    .line 367
    aget-object v2, v1, v7

    iget v2, v2, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    if-lt v2, v0, :cond_8

    .line 368
    goto :goto_4

    .line 366
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 370
    :cond_9
    :goto_4
    aget-object v6, v1, v7

    .line 371
    .restart local v6    # "dm":Lcom/itextpdf/barcodes/dmcode/DmParams;
    iget v1, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    iput v1, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    .line 372
    iget v1, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iput v1, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    .line 388
    .end local v19    # "last":Lcom/itextpdf/barcodes/dmcode/DmParams;
    :goto_5
    iget v1, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->options:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_a

    .line 389
    return v14

    .line 391
    :cond_a
    iget v1, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iget v2, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    iget v2, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    iget v3, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->image:[B

    .line 392
    iget v1, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    sub-int/2addr v1, v0

    invoke-static {v13, v0, v1}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->makePadding([BII)V

    .line 393
    iget v1, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    iget v2, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    iget v3, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->heightSection:I

    div-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iget v3, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    iget v4, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->widthSection:I

    div-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->doPlacement(II)[S

    move-result-object v1

    iput-object v1, v9, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->place:[S

    .line 394
    iget v1, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    iget v2, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    add-int/lit8 v2, v2, 0x2

    iget v3, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataBlock:I

    div-int/2addr v2, v3

    iget v3, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->errorBlock:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 395
    .local v1, "full":I
    iget v2, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    iget v3, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataBlock:I

    iget v4, v6, Lcom/itextpdf/barcodes/dmcode/DmParams;->errorBlock:I

    invoke-static {v13, v2, v3, v4}, Lcom/itextpdf/barcodes/dmcode/ReedSolomon;->generateECC([BIII)V

    .line 396
    invoke-direct {v9, v13, v1, v6}, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->draw([BILcom/itextpdf/barcodes/dmcode/DmParams;)V

    .line 397
    return v14

    .line 346
    .end local v0    # "e":I
    .end local v1    # "full":I
    .end local v6    # "dm":Lcom/itextpdf/barcodes/dmcode/DmParams;
    .end local v7    # "k":I
    .end local v13    # "data":[B
    .end local v15    # "extCount":I
    :cond_b
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :cond_c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .line 570
    iput-object p1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->encoding:Ljava/lang/String;

    .line 571
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 449
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->height:I

    .line 450
    return-void
.end method

.method public setOptions(I)V
    .locals 0
    .param p1, "options"    # I

    .line 561
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->options:I

    .line 562
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 501
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->width:I

    .line 502
    return-void
.end method

.method public setWs(I)V
    .locals 0
    .param p1, "ws"    # I

    .line 519
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeDataMatrix;->ws:I

    .line 520
    return-void
.end method
