.class public Lcom/itextpdf/io/codec/TIFFFaxDecompressor;
.super Ljava/lang/Object;
.source "TIFFFaxDecompressor.java"


# static fields
.field public static additionalMakeup:[S

.field static black:[S

.field static flipTable:[B

.field static initBlack:[S

.field static table1:[I

.field static table2:[I

.field static twoBitBlack:[S

.field static twoDCodes:[B

.field static white:[S


# instance fields
.field private bitPointer:I

.field private bitsPerScanline:I

.field private buffer:[B

.field private bytePointer:I

.field private changingElemSize:I

.field protected compression:I

.field private currChangingElems:[I

.field private data:[B

.field public fails:I

.field protected fillBits:I

.field protected fillOrder:I

.field private h:I

.field private lastChangingElement:I

.field private lineBitNum:I

.field private final lock:Ljava/lang/Object;

.field protected oneD:I

.field private prevChangingElems:[I

.field private t4Options:I

.field private t6Options:I

.field protected uncompressedMode:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 97
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->table1:[I

    .line 108
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->table2:[I

    .line 120
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->flipTable:[B

    .line 155
    const/16 v0, 0x400

    new-array v0, v0, [S

    fill-array-data v0, :array_3

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->white:[S

    .line 420
    const/16 v0, 0x10

    new-array v1, v0, [S

    fill-array-data v1, :array_4

    sput-object v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->additionalMakeup:[S

    .line 428
    new-array v0, v0, [S

    fill-array-data v0, :array_5

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->initBlack:[S

    .line 435
    const/4 v0, 0x4

    new-array v0, v0, [S

    fill-array-data v0, :array_6

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->twoBitBlack:[S

    .line 437
    const/16 v0, 0x200

    new-array v0, v0, [S

    fill-array-data v0, :array_7

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->black:[S

    .line 566
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->twoDCodes:[B

    return-void

    nop

    :array_0
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

    :array_1
    .array-data 4
        0x0
        0x80
        0xc0
        0xe0
        0xf0
        0xf8
        0xfc
        0xfe
        0xff
    .end array-data

    :array_2
    .array-data 1
        0x0t
        -0x80t
        0x40t
        -0x40t
        0x20t
        -0x60t
        0x60t
        -0x20t
        0x10t
        -0x70t
        0x50t
        -0x30t
        0x30t
        -0x50t
        0x70t
        -0x10t
        0x8t
        -0x78t
        0x48t
        -0x38t
        0x28t
        -0x58t
        0x68t
        -0x18t
        0x18t
        -0x68t
        0x58t
        -0x28t
        0x38t
        -0x48t
        0x78t
        -0x8t
        0x4t
        -0x7ct
        0x44t
        -0x3ct
        0x24t
        -0x5ct
        0x64t
        -0x1ct
        0x14t
        -0x6ct
        0x54t
        -0x2ct
        0x34t
        -0x4ct
        0x74t
        -0xct
        0xct
        -0x74t
        0x4ct
        -0x34t
        0x2ct
        -0x54t
        0x6ct
        -0x14t
        0x1ct
        -0x64t
        0x5ct
        -0x24t
        0x3ct
        -0x44t
        0x7ct
        -0x4t
        0x2t
        -0x7et
        0x42t
        -0x3et
        0x22t
        -0x5et
        0x62t
        -0x1et
        0x12t
        -0x6et
        0x52t
        -0x2et
        0x32t
        -0x4et
        0x72t
        -0xet
        0xat
        -0x76t
        0x4at
        -0x36t
        0x2at
        -0x56t
        0x6at
        -0x16t
        0x1at
        -0x66t
        0x5at
        -0x26t
        0x3at
        -0x46t
        0x7at
        -0x6t
        0x6t
        -0x7at
        0x46t
        -0x3at
        0x26t
        -0x5at
        0x66t
        -0x1at
        0x16t
        -0x6at
        0x56t
        -0x2at
        0x36t
        -0x4at
        0x76t
        -0xat
        0xet
        -0x72t
        0x4et
        -0x32t
        0x2et
        -0x52t
        0x6et
        -0x12t
        0x1et
        -0x62t
        0x5et
        -0x22t
        0x3et
        -0x42t
        0x7et
        -0x2t
        0x1t
        -0x7ft
        0x41t
        -0x3ft
        0x21t
        -0x5ft
        0x61t
        -0x1ft
        0x11t
        -0x6ft
        0x51t
        -0x2ft
        0x31t
        -0x4ft
        0x71t
        -0xft
        0x9t
        -0x77t
        0x49t
        -0x37t
        0x29t
        -0x57t
        0x69t
        -0x17t
        0x19t
        -0x67t
        0x59t
        -0x27t
        0x39t
        -0x47t
        0x79t
        -0x7t
        0x5t
        -0x7bt
        0x45t
        -0x3bt
        0x25t
        -0x5bt
        0x65t
        -0x1bt
        0x15t
        -0x6bt
        0x55t
        -0x2bt
        0x35t
        -0x4bt
        0x75t
        -0xbt
        0xdt
        -0x73t
        0x4dt
        -0x33t
        0x2dt
        -0x53t
        0x6dt
        -0x13t
        0x1dt
        -0x63t
        0x5dt
        -0x23t
        0x3dt
        -0x43t
        0x7dt
        -0x3t
        0x3t
        -0x7dt
        0x43t
        -0x3dt
        0x23t
        -0x5dt
        0x63t
        -0x1dt
        0x13t
        -0x6dt
        0x53t
        -0x2dt
        0x33t
        -0x4dt
        0x73t
        -0xdt
        0xbt
        -0x75t
        0x4bt
        -0x35t
        0x2bt
        -0x55t
        0x6bt
        -0x15t
        0x1bt
        -0x65t
        0x5bt
        -0x25t
        0x3bt
        -0x45t
        0x7bt
        -0x5t
        0x7t
        -0x79t
        0x47t
        -0x39t
        0x27t
        -0x59t
        0x67t
        -0x19t
        0x17t
        -0x69t
        0x57t
        -0x29t
        0x37t
        -0x49t
        0x77t
        -0x9t
        0xft
        -0x71t
        0x4ft
        -0x31t
        0x2ft
        -0x51t
        0x6ft
        -0x11t
        0x1ft
        -0x61t
        0x5ft
        -0x21t
        0x3ft
        -0x41t
        0x7ft
        -0x1t
    .end array-data

    :array_3
    .array-data 2
        0x191es
        0x1900s
        0x1900s
        0x1900s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0x3b0s
        0x3b0s
        0x3b0s
        0x3b0s
        0x3d0s
        0x3d0s
        0x3d0s
        0x3d0s
        0x5b0s
        0x5b0s
        0x5b0s
        0x5b0s
        0x5d0s
        0x5d0s
        0x5d0s
        0x5d0s
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x5f0s
        0x5f0s
        0x5f0s
        0x5f0s
        0x610s
        0x610s
        0x610s
        0x610s
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x28es
        0x28es
        0x28es
        0x28es
        0x28es
        0x28es
        0x28es
        0x28es
        0x430s
        0x430s
        0x430s
        0x430s
        0x450s
        0x450s
        0x450s
        0x450s
        0x470s
        0x470s
        0x470s
        0x470s
        0x490s
        0x490s
        0x490s
        0x490s
        0x4b0s
        0x4b0s
        0x4b0s
        0x4b0s
        0x4d0s
        0x4d0s
        0x4d0s
        0x4d0s
        0x26es
        0x26es
        0x26es
        0x26es
        0x26es
        0x26es
        0x26es
        0x26es
        0x3f0s
        0x3f0s
        0x3f0s
        0x3f0s
        0x410s
        0x410s
        0x410s
        0x410s
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x6b0s
        0x6b0s
        0x6b0s
        0x6b0s
        0x6d0s
        0x6d0s
        0x6d0s
        0x6d0s
        0x34es
        0x34es
        0x34es
        0x34es
        0x34es
        0x34es
        0x34es
        0x34es
        0x4f0s
        0x4f0s
        0x4f0s
        0x4f0s
        0x510s
        0x510s
        0x510s
        0x510s
        0x530s
        0x530s
        0x530s
        0x530s
        0x550s
        0x550s
        0x550s
        0x550s
        0x570s
        0x570s
        0x570s
        0x570s
        0x590s
        0x590s
        0x590s
        0x590s
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x38es
        0x38es
        0x38es
        0x38es
        0x38es
        0x38es
        0x38es
        0x38es
        0x7b0s
        0x7b0s
        0x7b0s
        0x7b0s
        0x7d0s
        0x7d0s
        0x7d0s
        0x7d0s
        0x7f0s
        0x7f0s
        0x7f0s
        0x7f0s
        0x10s
        0x10s
        0x10s
        0x10s
        0x2811s
        0x2811s
        0x2811s
        0x2811s
        0x3011s
        0x3011s
        0x3011s
        0x3011s
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x36es
        0x36es
        0x36es
        0x36es
        0x36es
        0x36es
        0x36es
        0x36es
        0x770s
        0x770s
        0x770s
        0x770s
        0x790s
        0x790s
        0x790s
        0x790s
        -0x47eds
        -0x47eds
        -0x3feds
        -0x3feds
        -0x37eds
        -0x37eds
        -0x27eds
        -0x27eds
        0x24es
        0x24es
        0x24es
        0x24es
        0x24es
        0x24es
        0x24es
        0x24es
        0x30es
        0x30es
        0x30es
        0x30es
        0x30es
        0x30es
        0x30es
        0x30es
        0x630s
        0x630s
        0x630s
        0x630s
        0x650s
        0x650s
        0x650s
        0x650s
        0x670s
        0x670s
        0x670s
        0x670s
        0x690s
        0x690s
        0x690s
        0x690s
        0x32es
        0x32es
        0x32es
        0x32es
        0x32es
        0x32es
        0x32es
        0x32es
        0x6f0s
        0x6f0s
        0x6f0s
        0x6f0s
        0x710s
        0x710s
        0x710s
        0x710s
        0x730s
        0x730s
        0x730s
        0x730s
        0x750s
        0x750s
        0x750s
        0x750s
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        0x3811s
        0x3811s
        0x3811s
        0x3811s
        0x4011s
        0x4011s
        0x4011s
        0x4011s
        0x5813s
        0x5813s
        0x6013s
        0x6013s
        0x5011s
        0x5011s
        0x5011s
        0x5011s
        0x4811s
        0x4811s
        0x4811s
        0x4811s
        0x6813s
        0x6813s
        0x7013s
        0x7013s
        0x7813s
        0x7813s
        -0x7feds
        -0x7feds
        -0x77eds
        -0x77eds
        -0x6feds
        -0x6feds
        -0x67eds
        -0x67eds
        -0x5feds
        -0x5feds
        -0x57eds
        -0x57eds
        -0x4feds
        -0x4feds
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
    .end array-data

    :array_4
    .array-data 2
        0x7007s
        0x7007s
        0x7c08s
        -0x7ff7s
        -0x7bf7s
        -0x77f7s
        -0x73f7s
        -0x6ff7s
        0x7407s
        0x7407s
        0x7807s
        0x7807s
        -0x6bf7s
        -0x67f7s
        -0x63f7s
        -0x5ff7s
    .end array-data

    :array_5
    .array-data 2
        0xc9as
        0x190cs
        0xc8s
        0xa8s
        0x26s
        0x26s
        0x86s
        0x86s
        0x64s
        0x64s
        0x64s
        0x64s
        0x44s
        0x44s
        0x44s
        0x44s
    .end array-data

    :array_6
    .array-data 2
        0x124s
        0x104s
        0xe2s
        0xe2s
    .end array-data

    :array_7
    .array-data 2
        0x3es
        0x3es
        0x1es
        0x1es
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0x24cs
        0x24cs
        0x24cs
        0x24cs
        0x24cs
        0x24cs
        0x24cs
        0x24cs
        0x690s
        0x690s
        0x5013s
        0x5813s
        0x6013s
        0x6813s
        0x6f0s
        0x6f0s
        0x710s
        0x710s
        -0x5feds
        -0x57eds
        -0x4feds
        -0x47eds
        0x770s
        0x770s
        0x790s
        0x790s
        -0x3feds
        -0x37eds
        0x30es
        0x30es
        0x30es
        0x30es
        0x32es
        0x32es
        0x32es
        0x32es
        -0x2feds
        -0x27eds
        0x2811s
        0x2811s
        0x3011s
        0x3011s
        0x3811s
        0x3811s
        0x4013s
        0x4813s
        0x6b0s
        0x6b0s
        0x6d0s
        0x6d0s
        0x7013s
        0x7813s
        -0x7feds
        -0x77eds
        -0x6feds
        -0x67eds
        0x80ds
        0x80ds
        0x80ds
        0x80ds
        0x80ds
        0x80ds
        0x80ds
        0x80ds
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x650s
        0x650s
        0x670s
        0x670s
        0x590s
        0x590s
        0x5b0s
        0x5b0s
        0x5d0s
        0x5d0s
        0x5f0s
        0x5f0s
        0x730s
        0x730s
        0x750s
        0x750s
        0x7b0s
        0x7b0s
        0x2011s
        0x2011s
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x610s
        0x610s
        0x630s
        0x630s
        0x7d0s
        0x7d0s
        0x7f0s
        0x7f0s
        0x3d0s
        0x3d0s
        0x3f0s
        0x3f0s
        0x410s
        0x410s
        0x430s
        0x430s
        0x510s
        0x510s
        0x530s
        0x530s
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1011s
        0x1011s
        0x1811s
        0x1811s
        0x350s
        0x350s
        0x370s
        0x370s
        0x390s
        0x390s
        0x3b0s
        0x3b0s
        0x26es
        0x26es
        0x26es
        0x26es
        0x28es
        0x28es
        0x28es
        0x28es
        0x450s
        0x450s
        0x470s
        0x470s
        0x490s
        0x490s
        0x4b0s
        0x4b0s
        0x4d0s
        0x4d0s
        0x4f0s
        0x4f0s
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x550s
        0x550s
        0x570s
        0x570s
        0xcs
        0xcs
        0xcs
        0xcs
        0xcs
        0xcs
        0xcs
        0xcs
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
    .end array-data

    :array_8
    .array-data 1
        0x50t
        0x58t
        0x17t
        0x47t
        0x1et
        0x1et
        0x3et
        0x3et
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->uncompressedMode:I

    .line 76
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fillBits:I

    .line 89
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    .line 93
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lastChangingElement:I

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lock:Ljava/lang/Object;

    .line 601
    return-void
.end method

.method private decodeBlackCodeWord()I
    .locals 10

    .line 1291
    const/4 v0, -0x1

    .line 1292
    .local v0, "code":I
    const/4 v1, 0x0

    .line 1293
    .local v1, "runLength":I
    const/4 v2, 0x0

    .line 1295
    .local v2, "isWhite":Z
    :cond_0
    :goto_0
    if-nez v2, :cond_5

    .line 1296
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v4

    .line 1297
    .local v4, "current":I
    sget-object v5, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->initBlack:[S

    aget-short v5, v5, v4

    .line 1300
    .local v5, "entry":I
    and-int/lit8 v6, v5, 0x1

    .line 1301
    .local v6, "isT":I
    ushr-int/lit8 v7, v5, 0x1

    const/16 v8, 0xf

    and-int/2addr v7, v8

    .line 1302
    .local v7, "bits":I
    ushr-int/lit8 v9, v5, 0x5

    and-int/lit16 v0, v9, 0x7ff

    .line 1304
    const/16 v9, 0x64

    if-ne v0, v9, :cond_3

    .line 1305
    const/16 v9, 0x9

    invoke-direct {p0, v9}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v4

    .line 1306
    sget-object v9, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->black:[S

    aget-short v5, v9, v4

    .line 1309
    and-int/lit8 v6, v5, 0x1

    .line 1310
    ushr-int/lit8 v9, v5, 0x1

    and-int/lit8 v7, v9, 0xf

    .line 1311
    ushr-int/lit8 v9, v5, 0x5

    and-int/lit16 v0, v9, 0x7ff

    .line 1313
    const/16 v9, 0xc

    if-ne v7, v9, :cond_1

    .line 1315
    const/4 v8, 0x5

    invoke-direct {p0, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 1316
    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v3

    .line 1317
    .end local v4    # "current":I
    .local v3, "current":I
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->additionalMakeup:[S

    aget-short v4, v4, v3

    .line 1318
    .end local v5    # "entry":I
    .local v4, "entry":I
    ushr-int/lit8 v5, v4, 0x1

    and-int/lit8 v5, v5, 0x7

    .line 1319
    .end local v7    # "bits":I
    .local v5, "bits":I
    ushr-int/lit8 v7, v4, 0x4

    and-int/lit16 v0, v7, 0xfff

    .line 1320
    add-int/2addr v1, v0

    .line 1322
    rsub-int/lit8 v7, v5, 0x4

    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_0

    .line 1323
    .end local v3    # "current":I
    .local v4, "current":I
    .local v5, "entry":I
    .restart local v7    # "bits":I
    :cond_1
    if-eq v7, v8, :cond_2

    .line 1327
    add-int/2addr v1, v0

    .line 1328
    rsub-int/lit8 v3, v7, 0x9

    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 1329
    if-nez v6, :cond_0

    .line 1330
    const/4 v2, 0x1

    goto :goto_0

    .line 1325
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v8, "Error 2"

    invoke-direct {v3, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1333
    :cond_3
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_4

    .line 1335
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v3

    .line 1336
    .end local v4    # "current":I
    .restart local v3    # "current":I
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->twoBitBlack:[S

    aget-short v4, v4, v3

    .line 1337
    .end local v5    # "entry":I
    .local v4, "entry":I
    ushr-int/lit8 v5, v4, 0x5

    and-int/lit16 v0, v5, 0x7ff

    .line 1338
    add-int/2addr v1, v0

    .line 1339
    ushr-int/lit8 v5, v4, 0x1

    and-int/2addr v5, v8

    .line 1340
    .end local v7    # "bits":I
    .local v5, "bits":I
    rsub-int/lit8 v7, v5, 0x2

    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 1341
    const/4 v2, 0x1

    goto :goto_0

    .line 1344
    .end local v3    # "current":I
    .local v4, "current":I
    .local v5, "entry":I
    .restart local v7    # "bits":I
    :cond_4
    add-int/2addr v1, v0

    .line 1345
    rsub-int/lit8 v3, v7, 0x4

    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 1346
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1350
    .end local v4    # "current":I
    .end local v5    # "entry":I
    .end local v6    # "isT":I
    .end local v7    # "bits":I
    :cond_5
    return v1
.end method

.method private decodeWhiteCodeWord()I
    .locals 10

    .line 1249
    const/4 v0, -0x1

    .line 1250
    .local v0, "code":I
    const/4 v1, 0x0

    .line 1251
    .local v1, "runLength":I
    const/4 v2, 0x1

    .line 1253
    .local v2, "isWhite":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 1254
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v3

    .line 1255
    .local v3, "current":I
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->white:[S

    aget-short v4, v4, v3

    .line 1258
    .local v4, "entry":I
    and-int/lit8 v5, v4, 0x1

    .line 1259
    .local v5, "isT":I
    ushr-int/lit8 v6, v4, 0x1

    const/16 v7, 0xf

    and-int/2addr v6, v7

    .line 1261
    .local v6, "bits":I
    const/16 v8, 0xc

    if-ne v6, v8, :cond_1

    .line 1263
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v7

    .line 1265
    .local v7, "twoBits":I
    shl-int/lit8 v9, v3, 0x2

    and-int/2addr v8, v9

    or-int v3, v8, v7

    .line 1266
    sget-object v8, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->additionalMakeup:[S

    aget-short v4, v8, v3

    .line 1267
    ushr-int/lit8 v8, v4, 0x1

    and-int/lit8 v6, v8, 0x7

    .line 1268
    ushr-int/lit8 v8, v4, 0x4

    and-int/lit16 v0, v8, 0xfff

    .line 1269
    add-int/2addr v1, v0

    .line 1270
    rsub-int/lit8 v8, v6, 0x4

    invoke-direct {p0, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_0

    .line 1271
    .end local v7    # "twoBits":I
    :cond_1
    if-eqz v6, :cond_3

    .line 1273
    if-eq v6, v7, :cond_2

    .line 1277
    ushr-int/lit8 v7, v4, 0x5

    and-int/lit16 v0, v7, 0x7ff

    .line 1278
    add-int/2addr v1, v0

    .line 1279
    rsub-int/lit8 v7, v6, 0xa

    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 1280
    if-nez v5, :cond_0

    .line 1281
    const/4 v2, 0x0

    goto :goto_0

    .line 1274
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Error 1"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1272
    :cond_3
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Error 0"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1286
    .end local v3    # "current":I
    .end local v4    # "entry":I
    .end local v5    # "isT":I
    .end local v6    # "bits":I
    :cond_4
    return v1
.end method

.method private findNextLine()I
    .locals 7

    .line 1355
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->data:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1356
    .local v0, "bitIndexMax":I
    add-int/lit8 v2, v0, -0xc

    .line 1357
    .local v2, "bitIndexMax12":I
    iget v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    mul-int/lit8 v3, v3, 0x8

    iget v4, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    add-int/2addr v3, v4

    .line 1360
    .local v3, "bitIndex":I
    :goto_0
    if-gt v3, v2, :cond_3

    .line 1362
    const/16 v4, 0xc

    invoke-direct {p0, v4}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v4

    .line 1363
    .local v4, "next12Bits":I
    add-int/lit8 v3, v3, 0xc

    .line 1367
    :goto_1
    if-eq v4, v1, :cond_0

    if-ge v3, v0, :cond_0

    .line 1368
    and-int/lit16 v5, v4, 0x7ff

    shl-int/2addr v5, v1

    .line 1370
    invoke-direct {p0, v1}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v6

    and-int/2addr v6, v1

    or-int v4, v5, v6

    .line 1371
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1374
    :cond_0
    if-ne v4, v1, :cond_2

    .line 1375
    iget v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->oneD:I

    if-ne v5, v1, :cond_1

    .line 1376
    if-ge v3, v0, :cond_2

    .line 1378
    invoke-direct {p0, v1}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v1

    return v1

    .line 1381
    :cond_1
    return v1

    .line 1384
    .end local v4    # "next12Bits":I
    :cond_2
    goto :goto_0

    .line 1387
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method private getNextChangingElement(IZ[I)V
    .locals 7
    .param p1, "a0"    # I
    .param p2, "isWhite"    # Z
    .param p3, "ret"    # [I

    .line 1392
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    .line 1393
    .local v0, "pce":[I
    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    .line 1398
    .local v1, "ces":I
    iget v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lastChangingElement:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 1399
    .local v2, "start":I
    :goto_0
    if-eqz p2, :cond_1

    .line 1400
    and-int/lit8 v2, v2, -0x2

    goto :goto_1

    .line 1402
    :cond_1
    or-int/2addr v2, v4

    .line 1405
    :goto_1
    move v5, v2

    .line 1406
    .local v5, "i":I
    :goto_2
    if-ge v5, v1, :cond_3

    .line 1407
    aget v6, v0, v5

    .line 1408
    .local v6, "temp":I
    if-le v6, p1, :cond_2

    .line 1409
    iput v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lastChangingElement:I

    .line 1410
    aput v6, p3, v3

    .line 1411
    goto :goto_3

    .line 1406
    .end local v6    # "temp":I
    :cond_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    .line 1415
    :cond_3
    :goto_3
    add-int/lit8 v3, v5, 0x1

    if-ge v3, v1, :cond_4

    .line 1416
    add-int/lit8 v3, v5, 0x1

    aget v3, v0, v3

    aput v3, p3, v4

    .line 1418
    :cond_4
    return-void
.end method

.method private nextLesserThan8Bits(I)I
    .locals 11
    .param p1, "bitsToGet"    # I

    .line 1489
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->data:[B

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1490
    .local v1, "l":I
    iget v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1492
    .local v3, "bp":I
    iget v4, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fillOrder:I

    if-ne v4, v2, :cond_1

    .line 1493
    aget-byte v4, v0, v3

    .line 1494
    .local v4, "b":B
    if-ne v3, v1, :cond_0

    .line 1495
    const/4 v0, 0x0

    .local v0, "next":B
    goto :goto_0

    .line 1497
    .end local v0    # "next":B
    :cond_0
    add-int/lit8 v5, v3, 0x1

    aget-byte v0, v0, v5

    .restart local v0    # "next":B
    goto :goto_0

    .line 1499
    .end local v0    # "next":B
    .end local v4    # "b":B
    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 1500
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->flipTable:[B

    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v4, v5

    .line 1501
    .local v5, "b":B
    if-ne v3, v1, :cond_2

    .line 1502
    const/4 v0, 0x0

    move v4, v5

    .restart local v0    # "next":B
    goto :goto_0

    .line 1504
    .end local v0    # "next":B
    :cond_2
    add-int/lit8 v6, v3, 0x1

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v4, v0

    move v4, v5

    .line 1510
    .end local v5    # "b":B
    .restart local v0    # "next":B
    .restart local v4    # "b":B
    :goto_0
    iget v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    rsub-int/lit8 v6, v5, 0x8

    .line 1511
    .local v6, "bitsLeft":I
    sub-int v7, p1, v6

    .line 1513
    .local v7, "bitsFromNextByte":I
    sub-int v8, v6, p1

    .line 1515
    .local v8, "shift":I
    if-ltz v8, :cond_3

    .line 1516
    sget-object v9, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->table1:[I

    aget v9, v9, v6

    and-int/2addr v9, v4

    ushr-int/2addr v9, v8

    .line 1517
    .local v9, "i1":I
    add-int/2addr v5, p1

    iput v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    .line 1518
    const/16 v10, 0x8

    if-ne v5, v10, :cond_4

    .line 1519
    const/4 v5, 0x0

    iput v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    .line 1520
    iget v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    goto :goto_1

    .line 1523
    .end local v9    # "i1":I
    :cond_3
    sget-object v5, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->table1:[I

    aget v5, v5, v6

    and-int/2addr v5, v4

    neg-int v9, v8

    shl-int/2addr v5, v9

    .line 1524
    .local v5, "i1":I
    sget-object v9, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->table2:[I

    aget v9, v9, v7

    and-int/2addr v9, v0

    rsub-int/lit8 v10, v7, 0x8

    ushr-int/2addr v9, v10

    .line 1526
    .local v9, "i2":I
    or-int/2addr v5, v9

    .line 1527
    iget v10, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    add-int/2addr v10, v2

    iput v10, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1528
    iput v7, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    move v9, v5

    .line 1531
    .end local v5    # "i1":I
    .local v9, "i1":I
    :cond_4
    :goto_1
    return v9

    .line 1507
    .end local v0    # "next":B
    .end local v4    # "b":B
    .end local v6    # "bitsLeft":I
    .end local v7    # "bitsFromNextByte":I
    .end local v8    # "shift":I
    .end local v9    # "i1":I
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invalid FillOrder"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextNBits(I)I
    .locals 17
    .param p1, "bitsToGet"    # I

    .line 1422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->data:[B

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 1423
    .local v2, "l":I
    iget v4, v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1425
    .local v4, "bp":I
    iget v5, v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fillOrder:I

    if-ne v5, v3, :cond_2

    .line 1426
    aget-byte v5, v1, v4

    .line 1428
    .local v5, "b":B
    if-ne v4, v2, :cond_0

    .line 1429
    const/4 v1, 0x0

    .line 1430
    .local v1, "next":B
    const/4 v6, 0x0

    .local v6, "next2next":B
    goto :goto_0

    .line 1431
    .end local v1    # "next":B
    .end local v6    # "next2next":B
    :cond_0
    add-int/lit8 v6, v4, 0x1

    if-ne v6, v2, :cond_1

    .line 1432
    add-int/lit8 v6, v4, 0x1

    aget-byte v1, v1, v6

    .line 1433
    .restart local v1    # "next":B
    const/4 v6, 0x0

    .restart local v6    # "next2next":B
    goto :goto_0

    .line 1435
    .end local v1    # "next":B
    .end local v6    # "next2next":B
    :cond_1
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v1, v6

    .line 1436
    .local v6, "next":B
    add-int/lit8 v7, v4, 0x2

    aget-byte v1, v1, v7

    move/from16 v16, v6

    move v6, v1

    move/from16 v1, v16

    .local v1, "next2next":B
    goto :goto_0

    .line 1438
    .end local v1    # "next2next":B
    .end local v5    # "b":B
    .end local v6    # "next":B
    :cond_2
    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 1439
    sget-object v5, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->flipTable:[B

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v5, v6

    .line 1441
    .local v6, "b":B
    if-ne v4, v2, :cond_3

    .line 1442
    const/4 v1, 0x0

    .line 1443
    .local v1, "next":B
    const/4 v5, 0x0

    move/from16 v16, v6

    move v6, v5

    move/from16 v5, v16

    .local v5, "next2next":B
    goto :goto_0

    .line 1444
    .end local v1    # "next":B
    .end local v5    # "next2next":B
    :cond_3
    add-int/lit8 v7, v4, 0x1

    if-ne v7, v2, :cond_4

    .line 1445
    add-int/lit8 v7, v4, 0x1

    aget-byte v1, v1, v7

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v5, v1

    .line 1446
    .restart local v1    # "next":B
    const/4 v5, 0x0

    move/from16 v16, v6

    move v6, v5

    move/from16 v5, v16

    .restart local v5    # "next2next":B
    goto :goto_0

    .line 1448
    .end local v1    # "next":B
    .end local v5    # "next2next":B
    :cond_4
    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v5, v7

    .line 1449
    .local v7, "next":B
    add-int/lit8 v8, v4, 0x2

    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v5, v1

    move v5, v6

    move v6, v1

    move v1, v7

    .line 1455
    .end local v7    # "next":B
    .restart local v1    # "next":B
    .local v5, "b":B
    .local v6, "next2next":B
    :goto_0
    iget v7, v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    .line 1456
    .local v7, "bitsLeft":I
    sub-int v9, p1, v7

    .line 1457
    .local v9, "bitsFromNextByte":I
    const/4 v10, 0x0

    .line 1458
    .local v10, "bitsFromNext2NextByte":I
    if-le v9, v8, :cond_5

    .line 1459
    add-int/lit8 v10, v9, -0x8

    .line 1460
    const/16 v9, 0x8

    .line 1463
    :cond_5
    iget v11, v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    add-int/2addr v11, v3

    iput v11, v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1465
    sget-object v12, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->table1:[I

    aget v12, v12, v7

    and-int/2addr v12, v5

    sub-int v13, p1, v7

    shl-int/2addr v12, v13

    .line 1466
    .local v12, "i1":I
    sget-object v13, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->table2:[I

    aget v14, v13, v9

    and-int/2addr v14, v1

    rsub-int/lit8 v15, v9, 0x8

    ushr-int/2addr v14, v15

    .line 1468
    .local v14, "i2":I
    const/4 v15, 0x0

    .line 1469
    .local v15, "i3":I
    if-eqz v10, :cond_6

    .line 1470
    shl-int v8, v14, v10

    .line 1471
    .end local v14    # "i2":I
    .local v8, "i2":I
    aget v13, v13, v10

    and-int/2addr v13, v6

    rsub-int/lit8 v14, v10, 0x8

    ushr-int v15, v13, v14

    .line 1473
    or-int v14, v8, v15

    .line 1474
    .end local v8    # "i2":I
    .restart local v14    # "i2":I
    add-int/2addr v11, v3

    iput v11, v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1475
    iput v10, v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    goto :goto_1

    .line 1477
    :cond_6
    if-ne v9, v8, :cond_7

    .line 1478
    const/4 v8, 0x0

    iput v8, v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    .line 1479
    add-int/2addr v11, v3

    iput v11, v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    goto :goto_1

    .line 1481
    :cond_7
    iput v9, v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    .line 1484
    :goto_1
    or-int v3, v12, v14

    return v3

    .line 1452
    .end local v1    # "next":B
    .end local v5    # "b":B
    .end local v6    # "next2next":B
    .end local v7    # "bitsLeft":I
    .end local v9    # "bitsFromNextByte":I
    .end local v10    # "bitsFromNext2NextByte":I
    .end local v12    # "i1":I
    .end local v14    # "i2":I
    .end local v15    # "i3":I
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Invalid FillOrder"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setToBlack(II)V
    .locals 7
    .param p1, "bitNum"    # I
    .param p2, "numBits"    # I

    .line 1214
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    add-int/2addr p1, v0

    .line 1216
    add-int v0, p1, p2

    .line 1217
    .local v0, "lastBit":I
    shr-int/lit8 v1, p1, 0x3

    .line 1220
    .local v1, "byteNum":I
    and-int/lit8 v2, p1, 0x7

    .line 1221
    .local v2, "shift":I
    const/4 v3, 0x1

    if-lez v2, :cond_1

    .line 1222
    rsub-int/lit8 v4, v2, 0x7

    shl-int v4, v3, v4

    .line 1223
    .local v4, "maskVal":I
    iget-object v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->buffer:[B

    aget-byte v5, v5, v1

    .line 1224
    .local v5, "val":B
    :goto_0
    if-lez v4, :cond_0

    if-ge p1, v0, :cond_0

    .line 1225
    int-to-byte v6, v4

    or-int/2addr v6, v5

    int-to-byte v5, v6

    .line 1226
    shr-int/lit8 v4, v4, 0x1

    .line 1227
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1229
    :cond_0
    iget-object v6, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->buffer:[B

    aput-byte v5, v6, v1

    .line 1233
    .end local v4    # "maskVal":I
    .end local v5    # "val":B
    :cond_1
    shr-int/lit8 v1, p1, 0x3

    .line 1234
    :goto_1
    add-int/lit8 v4, v0, -0x7

    if-ge p1, v4, :cond_2

    .line 1235
    iget-object v4, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->buffer:[B

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "byteNum":I
    .local v5, "byteNum":I
    const/4 v6, -0x1

    aput-byte v6, v4, v1

    .line 1236
    add-int/lit8 p1, p1, 0x8

    move v1, v5

    goto :goto_1

    .line 1240
    .end local v5    # "byteNum":I
    .restart local v1    # "byteNum":I
    :cond_2
    :goto_2
    if-ge p1, v0, :cond_3

    .line 1241
    shr-int/lit8 v1, p1, 0x3

    .line 1242
    iget-object v4, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->buffer:[B

    aget-byte v5, v4, v1

    and-int/lit8 v6, p1, 0x7

    rsub-int/lit8 v6, v6, 0x7

    shl-int v6, v3, v6

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 1243
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 1245
    :cond_3
    return-void
.end method

.method private updatePointer(I)V
    .locals 2
    .param p1, "bitsToMoveBack"    # I

    .line 1536
    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    .line 1537
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    div-int/lit8 v1, p1, 0x8

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1538
    rem-int/lit8 p1, p1, 0x8

    .line 1541
    :cond_0
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    sub-int/2addr v0, p1

    .line 1542
    .local v0, "i":I
    if-gez v0, :cond_1

    .line 1543
    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1544
    add-int/lit8 v1, v0, 0x8

    iput v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    goto :goto_0

    .line 1546
    :cond_1
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    .line 1548
    :goto_0
    return-void
.end method


# virtual methods
.method public SetOptions(IIII)V
    .locals 1
    .param p1, "fillOrder"    # I
    .param p2, "compression"    # I
    .param p3, "t4Options"    # I
    .param p4, "t6Options"    # I

    .line 612
    iput p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fillOrder:I

    .line 613
    iput p2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->compression:I

    .line 614
    iput p3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->t4Options:I

    .line 615
    iput p4, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->t6Options:I

    .line 616
    and-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->oneD:I

    .line 617
    and-int/lit8 v0, p3, 0x2

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->uncompressedMode:I

    .line 618
    and-int/lit8 v0, p3, 0x4

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fillBits:I

    .line 619
    return-void
.end method

.method public decodeNextScanline()V
    .locals 15

    .line 670
    const/4 v0, 0x0

    .local v0, "bits":I
    const/4 v1, 0x0

    .local v1, "code":I
    const/4 v2, 0x0

    .line 672
    .local v2, "isT":I
    const/4 v3, 0x1

    .line 674
    .local v3, "isWhite":Z
    const/4 v4, 0x0

    .line 677
    .local v4, "bitOffset":I
    const/4 v5, 0x0

    iput v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    .line 680
    :goto_0
    iget v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-ge v4, v5, :cond_d

    .line 683
    move v5, v4

    .line 685
    .local v5, "runOffset":I
    :cond_0
    :goto_1
    const/16 v6, 0xc

    const/4 v7, 0x2

    const/16 v8, 0xa

    const/16 v9, 0xf

    if-eqz v3, :cond_4

    iget v10, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-ge v4, v10, :cond_4

    .line 687
    invoke-direct {p0, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v8

    .line 688
    .local v8, "current":I
    sget-object v10, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->white:[S

    aget-short v10, v10, v8

    .line 691
    .local v10, "entry":I
    and-int/lit8 v2, v10, 0x1

    .line 692
    ushr-int/lit8 v11, v10, 0x1

    and-int/lit8 v0, v11, 0xf

    .line 694
    if-ne v0, v6, :cond_1

    .line 696
    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v7

    .line 698
    .local v7, "twoBits":I
    shl-int/lit8 v9, v8, 0x2

    and-int/2addr v6, v9

    or-int/2addr v6, v7

    .line 699
    .end local v8    # "current":I
    .local v6, "current":I
    sget-object v8, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->additionalMakeup:[S

    aget-short v8, v8, v6

    .line 700
    .end local v10    # "entry":I
    .local v8, "entry":I
    ushr-int/lit8 v9, v8, 0x1

    and-int/lit8 v0, v9, 0x7

    .line 701
    ushr-int/lit8 v9, v8, 0x4

    and-int/lit16 v1, v9, 0xfff

    .line 702
    add-int/2addr v4, v1

    .line 704
    rsub-int/lit8 v9, v0, 0x4

    invoke-direct {p0, v9}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_1

    .line 705
    .end local v6    # "current":I
    .end local v7    # "twoBits":I
    .local v8, "current":I
    .restart local v10    # "entry":I
    :cond_1
    if-nez v0, :cond_2

    .line 706
    iget v6, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    goto :goto_1

    .line 708
    :cond_2
    if-ne v0, v9, :cond_3

    .line 713
    iget v6, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    .line 714
    return-void

    .line 717
    :cond_3
    ushr-int/lit8 v6, v10, 0x5

    and-int/lit16 v1, v6, 0x7ff

    .line 718
    add-int/2addr v4, v1

    .line 720
    rsub-int/lit8 v6, v0, 0xa

    invoke-direct {p0, v6}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 721
    if-nez v2, :cond_0

    .line 722
    const/4 v3, 0x0

    .line 723
    iget-object v6, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iget v7, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v9, v7, 0x1

    iput v9, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    aput v4, v6, v7

    goto :goto_1

    .line 729
    .end local v8    # "current":I
    .end local v10    # "entry":I
    :cond_4
    iget v10, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-ne v4, v10, :cond_5

    .line 733
    sub-int v6, v4, v5

    .line 734
    .local v6, "runLength":I
    if-eqz v3, :cond_d

    if-eqz v6, :cond_d

    rem-int/lit8 v7, v6, 0x40

    if-nez v7, :cond_d

    .line 736
    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v8

    const/16 v9, 0x35

    if-eq v8, v9, :cond_d

    .line 737
    iget v8, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    .line 738
    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    goto/16 :goto_3

    .line 744
    .end local v6    # "runLength":I
    :cond_5
    move v5, v4

    .line 746
    :cond_6
    :goto_2
    if-nez v3, :cond_b

    iget v10, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-ge v4, v10, :cond_b

    .line 748
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v11

    .line 749
    .local v11, "current":I
    sget-object v12, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->initBlack:[S

    aget-short v12, v12, v11

    .line 752
    .local v12, "entry":I
    and-int/lit8 v2, v12, 0x1

    .line 753
    ushr-int/lit8 v13, v12, 0x1

    and-int/lit8 v0, v13, 0xf

    .line 754
    ushr-int/lit8 v13, v12, 0x5

    and-int/lit16 v1, v13, 0x7ff

    .line 756
    const/16 v13, 0x64

    if-ne v1, v13, :cond_9

    .line 757
    const/16 v13, 0x9

    invoke-direct {p0, v13}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v11

    .line 758
    sget-object v13, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->black:[S

    aget-short v12, v13, v11

    .line 761
    and-int/lit8 v2, v12, 0x1

    .line 762
    ushr-int/lit8 v13, v12, 0x1

    and-int/lit8 v0, v13, 0xf

    .line 763
    ushr-int/lit8 v13, v12, 0x5

    and-int/lit16 v1, v13, 0x7ff

    .line 765
    if-ne v0, v6, :cond_7

    .line 767
    const/4 v13, 0x5

    invoke-direct {p0, v13}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 768
    invoke-direct {p0, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v10

    .line 769
    .end local v11    # "current":I
    .local v10, "current":I
    sget-object v11, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->additionalMakeup:[S

    aget-short v11, v11, v10

    .line 770
    .end local v12    # "entry":I
    .local v11, "entry":I
    ushr-int/lit8 v12, v11, 0x1

    and-int/lit8 v0, v12, 0x7

    .line 771
    ushr-int/lit8 v12, v11, 0x4

    and-int/lit16 v1, v12, 0xfff

    .line 773
    invoke-direct {p0, v4, v1}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 774
    add-int/2addr v4, v1

    .line 776
    rsub-int/lit8 v12, v0, 0x4

    invoke-direct {p0, v12}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_2

    .line 777
    .end local v10    # "current":I
    .local v11, "current":I
    .restart local v12    # "entry":I
    :cond_7
    if-ne v0, v9, :cond_8

    .line 782
    iget v6, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    .line 783
    return-void

    .line 785
    :cond_8
    invoke-direct {p0, v4, v1}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 786
    add-int/2addr v4, v1

    .line 788
    rsub-int/lit8 v10, v0, 0x9

    invoke-direct {p0, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 789
    if-nez v2, :cond_6

    .line 790
    const/4 v3, 0x1

    .line 791
    iget-object v10, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iget v13, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    aput v4, v10, v13

    goto :goto_2

    .line 794
    :cond_9
    const/16 v10, 0xc8

    if-ne v1, v10, :cond_a

    .line 796
    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v10

    .line 797
    .end local v11    # "current":I
    .restart local v10    # "current":I
    sget-object v11, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->twoBitBlack:[S

    aget-short v11, v11, v10

    .line 798
    .end local v12    # "entry":I
    .local v11, "entry":I
    ushr-int/lit8 v12, v11, 0x5

    and-int/lit16 v1, v12, 0x7ff

    .line 799
    ushr-int/lit8 v12, v11, 0x1

    and-int/lit8 v0, v12, 0xf

    .line 801
    invoke-direct {p0, v4, v1}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 802
    add-int/2addr v4, v1

    .line 804
    rsub-int/lit8 v12, v0, 0x2

    invoke-direct {p0, v12}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 805
    const/4 v3, 0x1

    .line 806
    iget-object v12, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iget v13, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    aput v4, v12, v13

    goto/16 :goto_2

    .line 809
    .end local v10    # "current":I
    .local v11, "current":I
    .restart local v12    # "entry":I
    :cond_a
    invoke-direct {p0, v4, v1}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 810
    add-int/2addr v4, v1

    .line 812
    rsub-int/lit8 v10, v0, 0x4

    invoke-direct {p0, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 813
    const/4 v3, 0x1

    .line 814
    iget-object v10, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iget v13, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    aput v4, v10, v13

    goto/16 :goto_2

    .line 819
    .end local v11    # "current":I
    .end local v12    # "entry":I
    :cond_b
    iget v6, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-ne v4, v6, :cond_c

    .line 823
    sub-int v6, v4, v5

    .line 824
    .restart local v6    # "runLength":I
    if-nez v3, :cond_d

    if-eqz v6, :cond_d

    rem-int/lit8 v7, v6, 0x40

    if-nez v7, :cond_d

    .line 826
    invoke-direct {p0, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v7

    const/16 v9, 0x37

    if-eq v7, v9, :cond_d

    .line 827
    iget v7, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    .line 828
    invoke-direct {p0, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_3

    .line 832
    .end local v5    # "runOffset":I
    .end local v6    # "runLength":I
    :cond_c
    goto/16 :goto_0

    .line 834
    :cond_d
    :goto_3
    iget-object v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iget v6, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    aput v4, v5, v6

    .line 835
    return-void
.end method

.method public decodeRLE()V
    .locals 3

    .line 654
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->h:I

    if-ge v0, v1, :cond_1

    .line 656
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeNextScanline()V

    .line 659
    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    if-eqz v1, :cond_0

    .line 660
    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 661
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    .line 665
    :cond_0
    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    iget v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitsPerScanline:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public decodeRaw([B[BII)V
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "compData"    # [B
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 623
    iput-object p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->buffer:[B

    .line 624
    iput-object p2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->data:[B

    .line 625
    iput p3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    .line 626
    iput p4, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->h:I

    .line 627
    iput p3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitsPerScanline:I

    .line 628
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    .line 630
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitPointer:I

    .line 631
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 632
    add-int/lit8 v1, p3, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    .line 633
    add-int/lit8 v1, p3, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    .line 635
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    .line 638
    :try_start_0
    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->compression:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeRLE()V

    goto :goto_0

    .line 640
    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 641
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeT4()V

    goto :goto_0

    .line 642
    :cond_1
    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    .line 643
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->t6Options:I

    and-int/2addr v0, v2

    shr-int/2addr v0, v4

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->uncompressedMode:I

    .line 644
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeT6()V

    .line 650
    :goto_0
    goto :goto_1

    .line 646
    :cond_2
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Unknown compression type {0}."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->compression:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v0

    .end local p1    # "buffer":[B
    .end local p2    # "compData":[B
    .end local p3    # "w":I
    .end local p4    # "h":I
    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .restart local p1    # "buffer":[B
    .restart local p2    # "compData":[B
    .restart local p3    # "w":I
    .restart local p4    # "h":I
    :catch_0
    move-exception v0

    .line 651
    :goto_1
    return-void
.end method

.method public decodeT4()V
    .locals 20

    .line 838
    move-object/from16 v1, p0

    iget v2, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->h:I

    .line 841
    .local v2, "height":I
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 844
    .local v3, "b":[I
    const/4 v4, 0x0

    .line 847
    .local v4, "currIndex":I
    iget-object v5, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->data:[B

    array-length v5, v5

    if-lt v5, v0, :cond_d

    .line 852
    const/16 v0, 0xc

    invoke-direct {v1, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v5

    .line 853
    .local v5, "next12":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 854
    iget v7, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    add-int/2addr v7, v6

    iput v7, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    .line 856
    :cond_0
    invoke-direct {v1, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 859
    const/4 v0, 0x0

    .line 860
    .local v0, "modeFlag":I
    const/4 v7, -0x1

    move v8, v7

    move v7, v0

    .line 861
    .end local v0    # "modeFlag":I
    .local v7, "modeFlag":I
    .local v8, "lines":I
    :goto_0
    if-eq v7, v6, :cond_1

    .line 863
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->findNextLine()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v0

    .line 864
    add-int/lit8 v8, v8, 0x1

    .line 867
    goto :goto_0

    .line 865
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 866
    .local v0, "eofe":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v9, "No reference line present."

    invoke-direct {v6, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 874
    .end local v0    # "eofe":Ljava/lang/Exception;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeNextScanline()V

    .line 875
    add-int/2addr v8, v6

    .line 876
    iget v0, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    iget v9, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitsPerScanline:I

    add-int/2addr v0, v9

    iput v0, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    .line 878
    :goto_1
    if-ge v8, v2, :cond_c

    .line 883
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->findNextLine()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 887
    .end local v7    # "modeFlag":I
    .local v0, "modeFlag":I
    nop

    .line 888
    if-nez v0, :cond_b

    .line 893
    iget-object v7, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    .line 894
    .local v7, "temp":[I
    iget-object v9, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iput-object v9, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    .line 895
    iput-object v7, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    .line 896
    const/4 v4, 0x0

    .line 899
    const/4 v9, -0x1

    .line 900
    .local v9, "a0":I
    const/4 v10, 0x1

    .line 901
    .local v10, "isWhite":Z
    const/4 v11, 0x0

    .line 903
    .local v11, "bitOffset":I
    const/4 v12, 0x0

    iput v12, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lastChangingElement:I

    .line 905
    :goto_2
    iget v13, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-ge v11, v13, :cond_a

    .line 907
    invoke-direct {v1, v9, v10, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->getNextChangingElement(IZ[I)V

    .line 909
    aget v13, v3, v12

    .line 910
    .local v13, "b1":I
    aget v14, v3, v6

    .line 913
    .local v14, "b2":I
    const/4 v15, 0x7

    invoke-direct {v1, v15}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v15

    .line 916
    .local v15, "entry":I
    sget-object v16, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->twoDCodes:[B

    aget-byte v12, v16, v15

    and-int/lit16 v12, v12, 0xff

    .line 919
    .end local v15    # "entry":I
    .local v12, "entry":I
    and-int/lit8 v15, v12, 0x78

    ushr-int/lit8 v15, v15, 0x3

    .line 920
    .local v15, "code":I
    and-int/lit8 v16, v12, 0x7

    .line 922
    .local v16, "bits":I
    if-nez v15, :cond_3

    .line 923
    if-nez v10, :cond_2

    .line 924
    sub-int v6, v14, v11

    invoke-direct {v1, v11, v6}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 926
    :cond_2
    move v9, v14

    move v11, v14

    .line 929
    rsub-int/lit8 v6, v16, 0x7

    invoke-direct {v1, v6}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    const/4 v6, 0x1

    const/4 v12, 0x0

    goto :goto_2

    .line 930
    :cond_3
    const/4 v6, 0x1

    if-ne v15, v6, :cond_5

    .line 932
    rsub-int/lit8 v6, v16, 0x7

    invoke-direct {v1, v6}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 936
    if-eqz v10, :cond_4

    .line 937
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeWhiteCodeWord()I

    move-result v6

    .line 938
    .local v6, "number":I
    add-int/2addr v11, v6

    .line 939
    move/from16 v18, v0

    .end local v0    # "modeFlag":I
    .local v18, "modeFlag":I
    iget-object v0, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v19, v4, 0x1

    .end local v4    # "currIndex":I
    .local v19, "currIndex":I
    aput v11, v0, v4

    .line 941
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeBlackCodeWord()I

    move-result v0

    .line 942
    .end local v6    # "number":I
    .local v0, "number":I
    invoke-direct {v1, v11, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 943
    add-int/2addr v11, v0

    .line 944
    iget-object v4, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v6, v19, 0x1

    .end local v19    # "currIndex":I
    .local v6, "currIndex":I
    aput v11, v4, v19

    move v4, v6

    goto :goto_3

    .line 946
    .end local v6    # "currIndex":I
    .end local v18    # "modeFlag":I
    .local v0, "modeFlag":I
    .restart local v4    # "currIndex":I
    :cond_4
    move/from16 v18, v0

    .end local v0    # "modeFlag":I
    .restart local v18    # "modeFlag":I
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeBlackCodeWord()I

    move-result v0

    .line 947
    .local v0, "number":I
    invoke-direct {v1, v11, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 948
    add-int/2addr v11, v0

    .line 949
    iget-object v6, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v19, v4, 0x1

    .end local v4    # "currIndex":I
    .restart local v19    # "currIndex":I
    aput v11, v6, v4

    .line 951
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeWhiteCodeWord()I

    move-result v0

    .line 952
    add-int/2addr v11, v0

    .line 953
    iget-object v4, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v6, v19, 0x1

    .end local v19    # "currIndex":I
    .restart local v6    # "currIndex":I
    aput v11, v4, v19

    move v4, v6

    .line 956
    .end local v6    # "currIndex":I
    .restart local v4    # "currIndex":I
    :goto_3
    move v9, v11

    .line 957
    .end local v0    # "number":I
    move/from16 v0, v18

    const/4 v6, 0x1

    const/4 v12, 0x0

    goto :goto_2

    .end local v18    # "modeFlag":I
    .local v0, "modeFlag":I
    :cond_5
    move/from16 v18, v0

    .end local v0    # "modeFlag":I
    .restart local v18    # "modeFlag":I
    const/16 v0, 0x8

    if-gt v15, v0, :cond_8

    .line 959
    add-int/lit8 v0, v15, -0x5

    add-int/2addr v0, v13

    .line 961
    .local v0, "a1":I
    iget-object v6, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v19, v4, 0x1

    .end local v4    # "currIndex":I
    .restart local v19    # "currIndex":I
    aput v0, v6, v4

    .line 965
    if-nez v10, :cond_6

    .line 966
    sub-int v4, v0, v11

    invoke-direct {v1, v11, v4}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 968
    :cond_6
    move v9, v0

    move v11, v0

    .line 969
    if-nez v10, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    move v10, v4

    .line 971
    rsub-int/lit8 v4, v16, 0x7

    invoke-direct {v1, v4}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    move/from16 v0, v18

    move/from16 v4, v19

    const/4 v6, 0x1

    const/4 v12, 0x0

    goto/16 :goto_2

    .line 973
    .end local v0    # "a1":I
    .end local v19    # "currIndex":I
    .restart local v4    # "currIndex":I
    :cond_8
    iget v0, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    const/4 v6, 0x1

    add-int/2addr v0, v6

    iput v0, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    .line 975
    const/4 v0, 0x0

    move/from16 v17, v2

    move/from16 v2, v18

    move/from16 v18, v0

    .line 976
    .local v2, "modeFlag":I
    .local v17, "height":I
    .local v18, "numLinesTested":I
    :goto_5
    if-eq v2, v6, :cond_9

    .line 978
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->findNextLine()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v2, v0

    .line 979
    add-int/lit8 v18, v18, 0x1

    .line 982
    const/4 v6, 0x1

    goto :goto_5

    .line 980
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 981
    .local v0, "eofe":Ljava/lang/Exception;
    return-void

    .line 984
    .end local v0    # "eofe":Ljava/lang/Exception;
    :cond_9
    add-int/lit8 v0, v18, -0x1

    add-int/2addr v8, v0

    .line 985
    const/16 v0, 0xd

    invoke-direct {v1, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 986
    move v0, v2

    goto :goto_6

    .line 905
    .end local v12    # "entry":I
    .end local v13    # "b1":I
    .end local v14    # "b2":I
    .end local v15    # "code":I
    .end local v16    # "bits":I
    .end local v17    # "height":I
    .end local v18    # "numLinesTested":I
    .local v0, "modeFlag":I
    .local v2, "height":I
    :cond_a
    move/from16 v18, v0

    move/from16 v17, v2

    .line 992
    .end local v2    # "height":I
    .restart local v17    # "height":I
    :goto_6
    iget-object v2, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "currIndex":I
    .restart local v6    # "currIndex":I
    aput v11, v2, v4

    .line 993
    iput v6, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    move v7, v0

    move v4, v6

    goto :goto_7

    .line 996
    .end local v6    # "currIndex":I
    .end local v7    # "temp":[I
    .end local v9    # "a0":I
    .end local v10    # "isWhite":Z
    .end local v11    # "bitOffset":I
    .end local v17    # "height":I
    .restart local v2    # "height":I
    .restart local v4    # "currIndex":I
    :cond_b
    move/from16 v18, v0

    move/from16 v17, v2

    .end local v0    # "modeFlag":I
    .end local v2    # "height":I
    .restart local v17    # "height":I
    .local v18, "modeFlag":I
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeNextScanline()V

    move/from16 v7, v18

    .line 999
    .end local v18    # "modeFlag":I
    .local v7, "modeFlag":I
    :goto_7
    iget v0, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    iget v2, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitsPerScanline:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    .line 1000
    const/4 v2, 0x1

    add-int/2addr v8, v2

    move v6, v2

    move/from16 v2, v17

    goto/16 :goto_1

    .line 884
    .end local v17    # "height":I
    .restart local v2    # "height":I
    :catch_2
    move-exception v0

    move/from16 v17, v2

    move v2, v6

    move-object v6, v0

    .end local v2    # "height":I
    .restart local v17    # "height":I
    move-object v0, v6

    .line 885
    .local v0, "eofe":Ljava/lang/Exception;
    iget v6, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    add-int/2addr v6, v2

    iput v6, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    .line 886
    goto :goto_8

    .line 878
    .end local v0    # "eofe":Ljava/lang/Exception;
    .end local v17    # "height":I
    .restart local v2    # "height":I
    :cond_c
    move/from16 v17, v2

    .line 1002
    .end local v2    # "height":I
    .restart local v17    # "height":I
    :goto_8
    return-void

    .line 848
    .end local v5    # "next12":I
    .end local v7    # "modeFlag":I
    .end local v8    # "lines":I
    .end local v17    # "height":I
    .restart local v2    # "height":I
    :cond_d
    move/from16 v17, v2

    .end local v2    # "height":I
    .restart local v17    # "height":I
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Insufficient data to read initial EOL."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decodeT6()V
    .locals 23

    .line 1005
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1006
    :try_start_0
    iget v0, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->h:I

    .line 1015
    .local v0, "height":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 1022
    .local v3, "b":[I
    iget-object v4, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    .line 1027
    .local v4, "cce":[I
    const/4 v5, 0x0

    iput v5, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    .line 1028
    const/4 v6, 0x0

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    iget v8, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    aput v8, v4, v5

    .line 1029
    add-int/lit8 v9, v6, 0x1

    iput v9, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    aput v8, v4, v6

    .line 1033
    const/4 v6, 0x0

    .local v6, "lines":I
    :goto_0
    if-ge v6, v0, :cond_18

    .line 1035
    const/4 v8, -0x1

    .line 1036
    .local v8, "a0":I
    const/4 v9, 0x1

    .line 1041
    .local v9, "isWhite":Z
    iget-object v10, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    .line 1042
    .local v10, "temp":[I
    iget-object v11, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iput-object v11, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    .line 1043
    iput-object v10, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->currChangingElems:[I

    move-object v4, v10

    .line 1044
    const/4 v11, 0x0

    .line 1047
    .local v11, "currIndex":I
    const/4 v12, 0x0

    .line 1050
    .local v12, "bitOffset":I
    iput v5, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lastChangingElement:I

    .line 1053
    :goto_1
    iget v13, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-ge v12, v13, :cond_16

    .line 1055
    invoke-direct {v1, v8, v9, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->getNextChangingElement(IZ[I)V

    .line 1056
    aget v13, v3, v5

    .line 1057
    .local v13, "b1":I
    aget v14, v3, v7

    .line 1060
    .local v14, "b2":I
    const/4 v15, 0x7

    invoke-direct {v1, v15}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v15

    .line 1062
    .local v15, "entry":I
    sget-object v16, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->twoDCodes:[B

    aget-byte v5, v16, v15

    and-int/lit16 v5, v5, 0xff

    .line 1065
    .end local v15    # "entry":I
    .local v5, "entry":I
    and-int/lit8 v15, v5, 0x78

    const/4 v7, 0x3

    ushr-int/2addr v15, v7

    .line 1066
    .local v15, "code":I
    and-int/lit8 v17, v5, 0x7

    .line 1068
    .local v17, "bits":I
    if-nez v15, :cond_2

    .line 1070
    if-nez v9, :cond_1

    .line 1071
    iget v7, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-le v14, v7, :cond_0

    .line 1072
    move v14, v7

    .line 1074
    :cond_0
    sub-int v7, v14, v12

    invoke-direct {v1, v12, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 1076
    :cond_1
    move v8, v14

    move v12, v14

    .line 1079
    rsub-int/lit8 v7, v17, 0x7

    invoke-direct {v1, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto :goto_1

    .line 1080
    :cond_2
    const/4 v7, 0x1

    if-ne v15, v7, :cond_6

    .line 1082
    rsub-int/lit8 v7, v17, 0x7

    invoke-direct {v1, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 1086
    if-eqz v9, :cond_4

    .line 1088
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeWhiteCodeWord()I

    move-result v7

    .line 1089
    .local v7, "number":I
    add-int/2addr v12, v7

    .line 1090
    add-int/lit8 v18, v11, 0x1

    .end local v11    # "currIndex":I
    .local v18, "currIndex":I
    aput v12, v4, v11

    .line 1092
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeBlackCodeWord()I

    move-result v11

    move v7, v11

    .line 1093
    iget v11, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    move/from16 v19, v0

    .end local v0    # "height":I
    .local v19, "height":I
    sub-int v0, v11, v12

    if-le v7, v0, :cond_3

    .line 1094
    sub-int v7, v11, v12

    .line 1096
    :cond_3
    invoke-direct {v1, v12, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 1097
    add-int/2addr v12, v7

    .line 1098
    add-int/lit8 v0, v18, 0x1

    .end local v18    # "currIndex":I
    .local v0, "currIndex":I
    aput v12, v4, v18

    move v11, v0

    move-object/from16 v20, v3

    goto :goto_2

    .line 1101
    .end local v7    # "number":I
    .end local v19    # "height":I
    .local v0, "height":I
    .restart local v11    # "currIndex":I
    :cond_4
    move/from16 v19, v0

    .end local v0    # "height":I
    .restart local v19    # "height":I
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeBlackCodeWord()I

    move-result v0

    .line 1102
    .local v0, "number":I
    iget v7, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    move-object/from16 v20, v3

    .end local v3    # "b":[I
    .local v20, "b":[I
    sub-int v3, v7, v12

    if-le v0, v3, :cond_5

    .line 1103
    sub-int v0, v7, v12

    .line 1105
    :cond_5
    invoke-direct {v1, v12, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 1106
    add-int/2addr v12, v0

    .line 1107
    add-int/lit8 v3, v11, 0x1

    .end local v11    # "currIndex":I
    .local v3, "currIndex":I
    aput v12, v4, v11

    .line 1109
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeWhiteCodeWord()I

    move-result v7

    .line 1110
    .end local v0    # "number":I
    .restart local v7    # "number":I
    add-int/2addr v12, v7

    .line 1111
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "currIndex":I
    .local v0, "currIndex":I
    aput v12, v4, v3

    move v11, v0

    .line 1114
    .end local v0    # "currIndex":I
    .restart local v11    # "currIndex":I
    :goto_2
    move v8, v12

    .line 1115
    .end local v7    # "number":I
    move/from16 v0, v19

    move-object/from16 v3, v20

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    .end local v19    # "height":I
    .end local v20    # "b":[I
    .local v0, "height":I
    .local v3, "b":[I
    :cond_6
    move/from16 v19, v0

    move-object/from16 v20, v3

    .end local v0    # "height":I
    .end local v3    # "b":[I
    .restart local v19    # "height":I
    .restart local v20    # "b":[I
    const/16 v0, 0x8

    if-gt v15, v0, :cond_a

    .line 1116
    add-int/lit8 v0, v15, -0x5

    add-int/2addr v0, v13

    .line 1117
    .local v0, "a1":I
    add-int/lit8 v3, v11, 0x1

    .end local v11    # "currIndex":I
    .local v3, "currIndex":I
    aput v0, v4, v11

    .line 1121
    if-nez v9, :cond_8

    .line 1122
    iget v7, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->w:I

    if-le v0, v7, :cond_7

    .line 1123
    move v0, v7

    .line 1125
    :cond_7
    sub-int v7, v0, v12

    invoke-direct {v1, v12, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 1127
    :cond_8
    move v8, v0

    move v12, v0

    .line 1128
    if-nez v9, :cond_9

    const/4 v7, 0x1

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    :goto_3
    move v9, v7

    .line 1130
    rsub-int/lit8 v7, v17, 0x7

    invoke-direct {v1, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->updatePointer(I)V

    move v11, v3

    move/from16 v0, v19

    move-object/from16 v3, v20

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 1131
    .end local v0    # "a1":I
    .end local v3    # "currIndex":I
    .restart local v11    # "currIndex":I
    :cond_a
    const/16 v0, 0xb

    if-ne v15, v0, :cond_15

    .line 1132
    const/4 v0, 0x3

    invoke-direct {v1, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v0

    .line 1134
    .local v0, "entranceCode":I
    const/4 v3, 0x0

    .line 1135
    .local v3, "zeros":I
    const/4 v7, 0x0

    .line 1137
    .local v7, "exit":Z
    :goto_4
    if-nez v7, :cond_14

    .line 1138
    :goto_5
    move/from16 v18, v0

    move/from16 v21, v5

    const/4 v0, 0x1

    .end local v0    # "entranceCode":I
    .end local v5    # "entry":I
    .local v18, "entranceCode":I
    .local v21, "entry":I
    invoke-direct {v1, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v5

    if-eq v5, v0, :cond_b

    .line 1139
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v18

    move/from16 v5, v21

    goto :goto_5

    .line 1142
    :cond_b
    const/4 v0, 0x5

    if-le v3, v0, :cond_11

    .line 1146
    add-int/lit8 v3, v3, -0x6

    .line 1148
    if-nez v9, :cond_c

    if-lez v3, :cond_c

    .line 1149
    add-int/lit8 v5, v11, 0x1

    .end local v11    # "currIndex":I
    .local v5, "currIndex":I
    aput v12, v4, v11

    move v11, v5

    .line 1153
    .end local v5    # "currIndex":I
    .restart local v11    # "currIndex":I
    :cond_c
    add-int/2addr v12, v3

    .line 1154
    if-lez v3, :cond_d

    .line 1156
    const/4 v9, 0x1

    .line 1161
    :cond_d
    const/4 v5, 0x1

    invoke-direct {v1, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v22

    if-nez v22, :cond_f

    .line 1162
    if-nez v9, :cond_e

    .line 1163
    add-int/lit8 v5, v11, 0x1

    .end local v11    # "currIndex":I
    .restart local v5    # "currIndex":I
    aput v12, v4, v11

    move v11, v5

    .line 1165
    .end local v5    # "currIndex":I
    .restart local v11    # "currIndex":I
    :cond_e
    const/4 v5, 0x1

    move v9, v5

    .end local v9    # "isWhite":Z
    .local v5, "isWhite":Z
    goto :goto_6

    .line 1167
    .end local v5    # "isWhite":Z
    .restart local v9    # "isWhite":Z
    :cond_f
    if-eqz v9, :cond_10

    .line 1168
    add-int/lit8 v5, v11, 0x1

    .end local v11    # "currIndex":I
    .local v5, "currIndex":I
    aput v12, v4, v11

    move v11, v5

    .line 1170
    .end local v5    # "currIndex":I
    .restart local v11    # "currIndex":I
    :cond_10
    const/4 v5, 0x0

    move v9, v5

    .line 1173
    :goto_6
    const/4 v5, 0x1

    move v7, v5

    .line 1176
    :cond_11
    if-ne v3, v0, :cond_13

    .line 1177
    if-nez v9, :cond_12

    .line 1178
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "currIndex":I
    .local v0, "currIndex":I
    aput v12, v4, v11

    move v11, v0

    .line 1180
    .end local v0    # "currIndex":I
    .restart local v11    # "currIndex":I
    :cond_12
    add-int/2addr v12, v3

    .line 1183
    const/4 v9, 0x1

    move/from16 v0, v18

    move/from16 v5, v21

    goto :goto_4

    .line 1185
    :cond_13
    add-int/2addr v12, v3

    .line 1187
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "currIndex":I
    .restart local v0    # "currIndex":I
    aput v12, v4, v11

    .line 1188
    const/4 v5, 0x1

    invoke-direct {v1, v12, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 1189
    add-int/lit8 v12, v12, 0x1

    .line 1192
    const/4 v9, 0x0

    move v11, v0

    move/from16 v0, v18

    move/from16 v5, v21

    goto :goto_4

    .line 1137
    .end local v18    # "entranceCode":I
    .end local v21    # "entry":I
    .local v0, "entranceCode":I
    .local v5, "entry":I
    .restart local v11    # "currIndex":I
    :cond_14
    move/from16 v18, v0

    move/from16 v21, v5

    const/4 v5, 0x1

    .line 1196
    .end local v0    # "entranceCode":I
    .end local v3    # "zeros":I
    .end local v5    # "entry":I
    .end local v7    # "exit":Z
    .restart local v21    # "entry":I
    move v7, v5

    move/from16 v0, v19

    move-object/from16 v3, v20

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1131
    .end local v21    # "entry":I
    .restart local v5    # "entry":I
    :cond_15
    move/from16 v21, v5

    const/4 v5, 0x1

    .end local v5    # "entry":I
    .restart local v21    # "entry":I
    move v7, v5

    move/from16 v0, v19

    move-object/from16 v3, v20

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1201
    .end local v13    # "b1":I
    .end local v14    # "b2":I
    .end local v15    # "code":I
    .end local v17    # "bits":I
    .end local v19    # "height":I
    .end local v20    # "b":[I
    .end local v21    # "entry":I
    .local v0, "height":I
    .local v3, "b":[I
    :cond_16
    move/from16 v19, v0

    move-object/from16 v20, v3

    move v5, v7

    .end local v0    # "height":I
    .end local v3    # "b":[I
    .restart local v19    # "height":I
    .restart local v20    # "b":[I
    if-gt v11, v13, :cond_17

    .line 1202
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "currIndex":I
    .local v0, "currIndex":I
    aput v12, v4, v11

    move v11, v0

    .line 1205
    .end local v0    # "currIndex":I
    .restart local v11    # "currIndex":I
    :cond_17
    iput v11, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->changingElemSize:I

    .line 1207
    iget v0, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    iget v3, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->bitsPerScanline:I

    add-int/2addr v0, v3

    iput v0, v1, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->lineBitNum:I

    .line 1033
    add-int/lit8 v6, v6, 0x1

    move v7, v5

    move/from16 v0, v19

    move-object/from16 v3, v20

    const/4 v5, 0x0

    goto/16 :goto_0

    .end local v8    # "a0":I
    .end local v9    # "isWhite":Z
    .end local v10    # "temp":[I
    .end local v11    # "currIndex":I
    .end local v12    # "bitOffset":I
    .end local v19    # "height":I
    .end local v20    # "b":[I
    .local v0, "height":I
    .restart local v3    # "b":[I
    :cond_18
    move/from16 v19, v0

    move-object/from16 v20, v3

    .line 1209
    .end local v0    # "height":I
    .end local v3    # "b":[I
    .end local v4    # "cce":[I
    .end local v6    # "lines":I
    monitor-exit v2

    .line 1210
    return-void

    .line 1209
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
