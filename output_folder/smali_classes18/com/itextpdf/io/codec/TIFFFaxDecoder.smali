.class public Lcom/itextpdf/io/codec/TIFFFaxDecoder;
.super Ljava/lang/Object;
.source "TIFFFaxDecoder.java"


# static fields
.field public static additionalMakeup:[S

.field static black:[S

.field public static flipTable:[B

.field static initBlack:[S

.field static table1:[I

.field static table2:[I

.field static twoBitBlack:[S

.field static twoDCodes:[B

.field static white:[S


# instance fields
.field private bitPointer:I

.field private bytePointer:I

.field private changingElemSize:I

.field private compression:I

.field private currChangingElems:[I

.field private data:[B

.field private fillBits:I

.field private fillOrder:I

.field private h:I

.field private lastChangingElement:I

.field private oneD:I

.field private prevChangingElems:[I

.field private recoverFromImageError:Z

.field private uncompressedMode:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->table1:[I

    .line 109
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->table2:[I

    .line 140
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->flipTable:[B

    .line 176
    const/16 v0, 0x400

    new-array v0, v0, [S

    fill-array-data v0, :array_3

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->white:[S

    .line 443
    const/16 v0, 0x10

    new-array v1, v0, [S

    fill-array-data v1, :array_4

    sput-object v1, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->additionalMakeup:[S

    .line 451
    new-array v0, v0, [S

    fill-array-data v0, :array_5

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->initBlack:[S

    .line 459
    const/4 v0, 0x4

    new-array v0, v0, [S

    fill-array-data v0, :array_6

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->twoBitBlack:[S

    .line 462
    const/16 v0, 0x200

    new-array v0, v0, [S

    fill-array-data v0, :array_7

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->black:[S

    .line 593
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->twoDCodes:[B

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

.method public constructor <init>(III)V
    .locals 2
    .param p1, "fillOrder"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    .line 67
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->lastChangingElement:I

    .line 69
    const/4 v1, 0x2

    iput v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->compression:I

    .line 72
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->uncompressedMode:I

    .line 73
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->fillBits:I

    .line 634
    iput p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->fillOrder:I

    .line 635
    iput p2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    .line 636
    iput p3, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->h:I

    .line 638
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    .line 639
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 640
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->prevChangingElems:[I

    .line 641
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    .line 642
    return-void
.end method

.method private advancePointer()Z
    .locals 2

    .line 1621
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1622
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1623
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    .line 1626
    :cond_0
    return v1
.end method

.method private decodeBlackCodeWord()I
    .locals 10

    .line 1319
    const/4 v0, -0x1

    .line 1320
    .local v0, "code":I
    const/4 v1, 0x0

    .line 1321
    .local v1, "runLength":I
    const/4 v2, 0x0

    .line 1323
    .local v2, "isWhite":Z
    :cond_0
    :goto_0
    if-nez v2, :cond_5

    .line 1324
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v4

    .line 1325
    .local v4, "current":I
    sget-object v5, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->initBlack:[S

    aget-short v5, v5, v4

    .line 1328
    .local v5, "entry":I
    and-int/lit8 v6, v5, 0x1

    .line 1329
    .local v6, "isT":I
    ushr-int/lit8 v7, v5, 0x1

    const/16 v8, 0xf

    and-int/2addr v7, v8

    .line 1330
    .local v7, "bits":I
    ushr-int/lit8 v9, v5, 0x5

    and-int/lit16 v0, v9, 0x7ff

    .line 1332
    const/16 v9, 0x64

    if-ne v0, v9, :cond_3

    .line 1333
    const/16 v9, 0x9

    invoke-direct {p0, v9}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v4

    .line 1334
    sget-object v9, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->black:[S

    aget-short v5, v9, v4

    .line 1337
    and-int/lit8 v6, v5, 0x1

    .line 1338
    ushr-int/lit8 v9, v5, 0x1

    and-int/lit8 v7, v9, 0xf

    .line 1339
    ushr-int/lit8 v9, v5, 0x5

    and-int/lit16 v0, v9, 0x7ff

    .line 1341
    const/16 v9, 0xc

    if-ne v7, v9, :cond_1

    .line 1344
    const/4 v8, 0x5

    invoke-direct {p0, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 1345
    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v3

    .line 1346
    .end local v4    # "current":I
    .local v3, "current":I
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->additionalMakeup:[S

    aget-short v4, v4, v3

    .line 1349
    .end local v5    # "entry":I
    .local v4, "entry":I
    ushr-int/lit8 v5, v4, 0x1

    and-int/lit8 v5, v5, 0x7

    .line 1352
    .end local v7    # "bits":I
    .local v5, "bits":I
    ushr-int/lit8 v7, v4, 0x4

    and-int/lit16 v0, v7, 0xfff

    .line 1353
    add-int/2addr v1, v0

    .line 1355
    rsub-int/lit8 v7, v5, 0x4

    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    goto :goto_0

    .line 1356
    .end local v3    # "current":I
    .local v4, "current":I
    .local v5, "entry":I
    .restart local v7    # "bits":I
    :cond_1
    if-eq v7, v8, :cond_2

    .line 1361
    add-int/2addr v1, v0

    .line 1362
    rsub-int/lit8 v3, v7, 0x9

    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 1363
    if-nez v6, :cond_0

    .line 1364
    const/4 v2, 0x1

    goto :goto_0

    .line 1359
    :cond_2
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string v8, "EOL code word encountered in Black run."

    invoke-direct {v3, v8}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1367
    :cond_3
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_4

    .line 1370
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v3

    .line 1371
    .end local v4    # "current":I
    .restart local v3    # "current":I
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->twoBitBlack:[S

    aget-short v4, v4, v3

    .line 1372
    .end local v5    # "entry":I
    .local v4, "entry":I
    ushr-int/lit8 v5, v4, 0x5

    and-int/lit16 v0, v5, 0x7ff

    .line 1373
    add-int/2addr v1, v0

    .line 1374
    ushr-int/lit8 v5, v4, 0x1

    and-int/2addr v5, v8

    .line 1375
    .end local v7    # "bits":I
    .local v5, "bits":I
    rsub-int/lit8 v7, v5, 0x2

    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 1376
    const/4 v2, 0x1

    goto :goto_0

    .line 1380
    .end local v3    # "current":I
    .local v4, "current":I
    .local v5, "entry":I
    .restart local v7    # "bits":I
    :cond_4
    add-int/2addr v1, v0

    .line 1381
    rsub-int/lit8 v3, v7, 0x4

    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 1382
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1386
    .end local v4    # "current":I
    .end local v5    # "entry":I
    .end local v6    # "isT":I
    .end local v7    # "bits":I
    :cond_5
    return v1
.end method

.method private decodeWhiteCodeWord()I
    .locals 10

    .line 1261
    const/4 v0, -0x1

    .line 1262
    .local v0, "code":I
    const/4 v1, 0x0

    .line 1263
    .local v1, "runLength":I
    const/4 v2, 0x1

    .line 1265
    .local v2, "isWhite":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_5

    .line 1266
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v3

    .line 1267
    .local v3, "current":I
    sget-object v4, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->white:[S

    aget-short v4, v4, v3

    .line 1270
    .local v4, "entry":I
    and-int/lit8 v5, v4, 0x1

    .line 1271
    .local v5, "isT":I
    ushr-int/lit8 v6, v4, 0x1

    const/16 v7, 0xf

    and-int/2addr v6, v7

    .line 1274
    .local v6, "bits":I
    const/16 v8, 0xc

    if-ne v6, v8, :cond_1

    .line 1277
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v7

    .line 1280
    .local v7, "twoBits":I
    shl-int/lit8 v9, v3, 0x2

    and-int/2addr v8, v9

    or-int v3, v8, v7

    .line 1281
    sget-object v8, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->additionalMakeup:[S

    aget-short v4, v8, v3

    .line 1284
    ushr-int/lit8 v8, v4, 0x1

    and-int/lit8 v6, v8, 0x7

    .line 1287
    ushr-int/lit8 v8, v4, 0x4

    and-int/lit16 v0, v8, 0xfff

    .line 1288
    add-int/2addr v1, v0

    .line 1289
    rsub-int/lit8 v8, v6, 0x4

    invoke-direct {p0, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    goto :goto_0

    .line 1292
    .end local v7    # "twoBits":I
    :cond_1
    if-eqz v6, :cond_4

    .line 1296
    if-ne v6, v7, :cond_3

    .line 1297
    if-nez v1, :cond_2

    .line 1298
    const/4 v2, 0x0

    goto :goto_0

    .line 1300
    :cond_2
    new-instance v7, Lcom/itextpdf/io/IOException;

    const-string v8, "EOL code word encountered in White run."

    invoke-direct {v7, v8}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1305
    :cond_3
    ushr-int/lit8 v7, v4, 0x5

    and-int/lit16 v0, v7, 0x7ff

    .line 1306
    add-int/2addr v1, v0

    .line 1307
    rsub-int/lit8 v7, v6, 0xa

    invoke-direct {p0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 1308
    if-nez v5, :cond_0

    .line 1309
    const/4 v2, 0x0

    goto :goto_0

    .line 1293
    :cond_4
    new-instance v7, Lcom/itextpdf/io/IOException;

    const-string v8, "Invalid code encountered."

    invoke-direct {v7, v8}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1314
    .end local v3    # "current":I
    .end local v4    # "entry":I
    .end local v5    # "isT":I
    .end local v6    # "bits":I
    :cond_5
    return v1
.end method

.method private getNextChangingElement(IZ[I)V
    .locals 7
    .param p1, "a0"    # I
    .param p2, "isWhite"    # Z
    .param p3, "ret"    # [I

    .line 1456
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->prevChangingElems:[I

    .line 1457
    .local v0, "pce":[I
    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    .line 1462
    .local v1, "ces":I
    iget v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->lastChangingElement:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 1463
    .local v2, "start":I
    :goto_0
    if-eqz p2, :cond_1

    .line 1466
    and-int/lit8 v2, v2, -0x2

    goto :goto_1

    .line 1470
    :cond_1
    or-int/2addr v2, v4

    .line 1473
    :goto_1
    move v5, v2

    .line 1474
    .local v5, "i":I
    :goto_2
    if-ge v5, v1, :cond_3

    .line 1475
    aget v6, v0, v5

    .line 1476
    .local v6, "temp":I
    if-le v6, p1, :cond_2

    .line 1477
    iput v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->lastChangingElement:I

    .line 1478
    aput v6, p3, v3

    .line 1479
    goto :goto_3

    .line 1474
    .end local v6    # "temp":I
    :cond_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    .line 1483
    :cond_3
    :goto_3
    add-int/lit8 v3, v5, 0x1

    if-ge v3, v1, :cond_4

    .line 1484
    add-int/lit8 v3, v5, 0x1

    aget v3, v0, v3

    aput v3, p3, v4

    .line 1486
    :cond_4
    return-void
.end method

.method private nextLesserThan8Bits(I)I
    .locals 11
    .param p1, "bitsToGet"    # I

    .line 1557
    const/4 v0, 0x0

    .local v0, "b":B
    const/4 v1, 0x0

    .line 1558
    .local v1, "next":B
    iget-object v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->data:[B

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 1559
    .local v3, "l":I
    iget v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1561
    .local v5, "bp":I
    iget v6, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->fillOrder:I

    if-ne v6, v4, :cond_1

    .line 1562
    aget-byte v0, v2, v5

    .line 1563
    if-ne v5, v3, :cond_0

    .line 1564
    const/4 v1, 0x0

    goto :goto_0

    .line 1566
    :cond_0
    add-int/lit8 v6, v5, 0x1

    aget-byte v1, v2, v6

    goto :goto_0

    .line 1568
    :cond_1
    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 1569
    iget-boolean v6, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->recoverFromImageError:Z

    if-eqz v6, :cond_2

    array-length v6, v2

    if-lt v5, v6, :cond_2

    goto :goto_0

    .line 1572
    :cond_2
    sget-object v6, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->flipTable:[B

    aget-byte v7, v2, v5

    and-int/lit16 v7, v7, 0xff

    aget-byte v0, v6, v7

    .line 1573
    if-ne v5, v3, :cond_3

    .line 1574
    const/4 v1, 0x0

    goto :goto_0

    .line 1576
    :cond_3
    add-int/lit8 v7, v5, 0x1

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v6, v2

    .line 1583
    :goto_0
    iget v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    rsub-int/lit8 v6, v2, 0x8

    .line 1584
    .local v6, "bitsLeft":I
    sub-int v7, p1, v6

    .line 1586
    .local v7, "bitsFromNextByte":I
    sub-int v8, v6, p1

    .line 1588
    .local v8, "shift":I
    if-ltz v8, :cond_4

    .line 1589
    sget-object v9, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->table1:[I

    aget v9, v9, v6

    and-int/2addr v9, v0

    ushr-int/2addr v9, v8

    .line 1590
    .local v9, "i1":I
    add-int/2addr v2, p1

    iput v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    .line 1591
    const/16 v10, 0x8

    if-ne v2, v10, :cond_5

    .line 1592
    const/4 v2, 0x0

    iput v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    .line 1593
    iget v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    goto :goto_1

    .line 1596
    .end local v9    # "i1":I
    :cond_4
    sget-object v2, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->table1:[I

    aget v2, v2, v6

    and-int/2addr v2, v0

    neg-int v9, v8

    shl-int/2addr v2, v9

    .line 1597
    .local v2, "i1":I
    sget-object v9, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->table2:[I

    aget v9, v9, v7

    and-int/2addr v9, v1

    rsub-int/lit8 v10, v7, 0x8

    ushr-int/2addr v9, v10

    .line 1599
    .local v9, "i2":I
    or-int/2addr v2, v9

    .line 1600
    iget v10, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    add-int/2addr v10, v4

    iput v10, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1601
    iput v7, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    move v9, v2

    .line 1604
    .end local v2    # "i1":I
    .local v9, "i1":I
    :cond_5
    :goto_1
    return v9

    .line 1580
    .end local v6    # "bitsLeft":I
    .end local v7    # "bitsFromNextByte":I
    .end local v8    # "shift":I
    .end local v9    # "i1":I
    :cond_6
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v4, "TIFF_FILL_ORDER tag must be either 1 or 2."

    invoke-direct {v2, v4}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private nextNBits(I)I
    .locals 17
    .param p1, "bitsToGet"    # I

    .line 1490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->data:[B

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 1491
    .local v2, "l":I
    iget v4, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1493
    .local v4, "bp":I
    iget v5, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->fillOrder:I

    if-ne v5, v3, :cond_2

    .line 1494
    aget-byte v5, v1, v4

    .line 1496
    .local v5, "b":B
    if-ne v4, v2, :cond_0

    .line 1497
    const/4 v1, 0x0

    .line 1498
    .local v1, "next":B
    const/4 v6, 0x0

    .local v6, "next2next":B
    goto :goto_0

    .line 1499
    .end local v1    # "next":B
    .end local v6    # "next2next":B
    :cond_0
    add-int/lit8 v6, v4, 0x1

    if-ne v6, v2, :cond_1

    .line 1500
    add-int/lit8 v6, v4, 0x1

    aget-byte v1, v1, v6

    .line 1501
    .restart local v1    # "next":B
    const/4 v6, 0x0

    .restart local v6    # "next2next":B
    goto :goto_0

    .line 1503
    .end local v1    # "next":B
    .end local v6    # "next2next":B
    :cond_1
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v1, v6

    .line 1504
    .local v6, "next":B
    add-int/lit8 v7, v4, 0x2

    aget-byte v1, v1, v7

    move/from16 v16, v6

    move v6, v1

    move/from16 v1, v16

    .local v1, "next2next":B
    goto :goto_0

    .line 1506
    .end local v1    # "next2next":B
    .end local v5    # "b":B
    .end local v6    # "next":B
    :cond_2
    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 1507
    sget-object v5, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->flipTable:[B

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v5, v6

    .line 1509
    .local v6, "b":B
    if-ne v4, v2, :cond_3

    .line 1510
    const/4 v1, 0x0

    .line 1511
    .local v1, "next":B
    const/4 v5, 0x0

    move/from16 v16, v6

    move v6, v5

    move/from16 v5, v16

    .local v5, "next2next":B
    goto :goto_0

    .line 1512
    .end local v1    # "next":B
    .end local v5    # "next2next":B
    :cond_3
    add-int/lit8 v7, v4, 0x1

    if-ne v7, v2, :cond_4

    .line 1513
    add-int/lit8 v7, v4, 0x1

    aget-byte v1, v1, v7

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v5, v1

    .line 1514
    .restart local v1    # "next":B
    const/4 v5, 0x0

    move/from16 v16, v6

    move v6, v5

    move/from16 v5, v16

    .restart local v5    # "next2next":B
    goto :goto_0

    .line 1516
    .end local v1    # "next":B
    .end local v5    # "next2next":B
    :cond_4
    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v5, v7

    .line 1517
    .local v7, "next":B
    add-int/lit8 v8, v4, 0x2

    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v5, v1

    move v5, v6

    move v6, v1

    move v1, v7

    .line 1523
    .end local v7    # "next":B
    .restart local v1    # "next":B
    .local v5, "b":B
    .local v6, "next2next":B
    :goto_0
    iget v7, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    .line 1524
    .local v7, "bitsLeft":I
    sub-int v9, p1, v7

    .line 1525
    .local v9, "bitsFromNextByte":I
    const/4 v10, 0x0

    .line 1526
    .local v10, "bitsFromNext2NextByte":I
    if-le v9, v8, :cond_5

    .line 1527
    add-int/lit8 v10, v9, -0x8

    .line 1528
    const/16 v9, 0x8

    .line 1531
    :cond_5
    iget v11, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    add-int/2addr v11, v3

    iput v11, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1533
    sget-object v12, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->table1:[I

    aget v12, v12, v7

    and-int/2addr v12, v5

    sub-int v13, p1, v7

    shl-int/2addr v12, v13

    .line 1534
    .local v12, "i1":I
    sget-object v13, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->table2:[I

    aget v14, v13, v9

    and-int/2addr v14, v1

    rsub-int/lit8 v15, v9, 0x8

    ushr-int/2addr v14, v15

    .line 1537
    .local v14, "i2":I
    if-eqz v10, :cond_6

    .line 1538
    shl-int v8, v14, v10

    .line 1539
    .end local v14    # "i2":I
    .local v8, "i2":I
    aget v13, v13, v10

    and-int/2addr v13, v6

    rsub-int/lit8 v14, v10, 0x8

    ushr-int/2addr v13, v14

    .line 1541
    .local v13, "i3":I
    or-int v14, v8, v13

    .line 1542
    .end local v8    # "i2":I
    .restart local v14    # "i2":I
    add-int/2addr v11, v3

    iput v11, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1543
    iput v10, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    goto :goto_1

    .line 1545
    .end local v13    # "i3":I
    :cond_6
    if-ne v9, v8, :cond_7

    .line 1546
    const/4 v8, 0x0

    iput v8, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    .line 1547
    add-int/2addr v11, v3

    iput v11, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    goto :goto_1

    .line 1549
    :cond_7
    iput v9, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    .line 1553
    :goto_1
    or-int v3, v12, v14

    return v3

    .line 1520
    .end local v1    # "next":B
    .end local v5    # "b":B
    .end local v6    # "next2next":B
    .end local v7    # "bitsLeft":I
    .end local v9    # "bitsFromNextByte":I
    .end local v10    # "bitsFromNext2NextByte":I
    .end local v12    # "i1":I
    .end local v14    # "i2":I
    :cond_8
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v3, "TIFF_FILL_ORDER tag must be either 1 or 2."

    invoke-direct {v1, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readEOL(Z)I
    .locals 6
    .param p1, "isFirstEOL"    # Z

    .line 1390
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->fillBits:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1391
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v0

    .line 1392
    .local v0, "next12Bits":I
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 1399
    invoke-direct {p0, v1}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1403
    iput v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->fillBits:I

    .line 1404
    return v2

    .line 1407
    :cond_0
    if-ne v0, v2, :cond_1

    .end local v0    # "next12Bits":I
    goto :goto_1

    .line 1408
    .restart local v0    # "next12Bits":I
    :cond_1
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Scanline must begin with EOL code word."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1410
    .end local v0    # "next12Bits":I
    :cond_2
    if-ne v0, v2, :cond_7

    .line 1416
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    const/16 v3, 0x8

    rsub-int/lit8 v0, v0, 0x8

    .line 1418
    .local v0, "bitsLeft":I
    invoke-direct {p0, v0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v4

    const-string v5, "All fill bits preceding eol code must be 0."

    if-nez v4, :cond_6

    .line 1426
    if-ge v0, v1, :cond_4

    .line 1427
    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 1428
    :cond_3
    new-instance v1, Lcom/itextpdf/io/IOException;

    invoke-direct {v1, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1436
    :cond_4
    :goto_0
    invoke-direct {p0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v1

    move v4, v1

    .local v4, "n":I
    if-eq v1, v2, :cond_8

    .line 1438
    if-nez v4, :cond_5

    goto :goto_0

    .line 1439
    :cond_5
    new-instance v1, Lcom/itextpdf/io/IOException;

    invoke-direct {v1, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1419
    .end local v4    # "n":I
    :cond_6
    new-instance v1, Lcom/itextpdf/io/IOException;

    invoke-direct {v1, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1410
    .end local v0    # "bitsLeft":I
    :cond_7
    :goto_1
    nop

    .line 1445
    :cond_8
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->oneD:I

    if-nez v0, :cond_9

    .line 1446
    return v2

    .line 1450
    :cond_9
    invoke-direct {p0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v0

    return v0
.end method

.method public static reverseBits([B)V
    .locals 3
    .param p0, "b"    # [B

    .line 650
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 651
    sget-object v1, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->flipTable:[B

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    aput-byte v1, p0, v0

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    .end local v0    # "k":I
    :cond_0
    return-void
.end method

.method private setToBlack([BIII)V
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "lineOffset"    # I
    .param p3, "bitOffset"    # I
    .param p4, "numBits"    # I

    .line 1222
    mul-int/lit8 v0, p2, 0x8

    add-int/2addr v0, p3

    .line 1223
    .local v0, "bitNum":I
    add-int v1, v0, p4

    .line 1225
    .local v1, "lastBit":I
    shr-int/lit8 v2, v0, 0x3

    .line 1228
    .local v2, "byteNum":I
    and-int/lit8 v3, v0, 0x7

    .line 1229
    .local v3, "shift":I
    const/4 v4, 0x1

    if-lez v3, :cond_1

    .line 1230
    rsub-int/lit8 v5, v3, 0x7

    shl-int v5, v4, v5

    .line 1231
    .local v5, "maskVal":I
    aget-byte v6, p1, v2

    .line 1232
    .local v6, "val":B
    :goto_0
    if-lez v5, :cond_0

    if-ge v0, v1, :cond_0

    .line 1233
    int-to-byte v7, v5

    or-int/2addr v7, v6

    int-to-byte v6, v7

    .line 1234
    shr-int/lit8 v5, v5, 0x1

    .line 1235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1237
    :cond_0
    aput-byte v6, p1, v2

    .line 1241
    .end local v5    # "maskVal":I
    .end local v6    # "val":B
    :cond_1
    shr-int/lit8 v2, v0, 0x3

    .line 1242
    :goto_1
    add-int/lit8 v5, v1, -0x7

    if-ge v0, v5, :cond_2

    .line 1243
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "byteNum":I
    .local v5, "byteNum":I
    const/4 v6, -0x1

    aput-byte v6, p1, v2

    .line 1244
    add-int/lit8 v0, v0, 0x8

    move v2, v5

    goto :goto_1

    .line 1248
    .end local v5    # "byteNum":I
    .restart local v2    # "byteNum":I
    :cond_2
    :goto_2
    if-ge v0, v1, :cond_4

    .line 1249
    shr-int/lit8 v2, v0, 0x3

    .line 1250
    iget-boolean v5, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->recoverFromImageError:Z

    if-eqz v5, :cond_3

    array-length v5, p1

    if-lt v2, v5, :cond_3

    goto :goto_3

    .line 1253
    :cond_3
    aget-byte v5, p1, v2

    and-int/lit8 v6, v0, 0x7

    rsub-int/lit8 v6, v6, 0x7

    shl-int v6, v4, v6

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    .line 1255
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1257
    :cond_4
    return-void
.end method

.method private updatePointer(I)V
    .locals 2
    .param p1, "bitsToMoveBack"    # I

    .line 1609
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    sub-int/2addr v0, p1

    .line 1611
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 1612
    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1613
    add-int/lit8 v1, v0, 0x8

    iput v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    goto :goto_0

    .line 1615
    :cond_0
    iput v0, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    .line 1617
    :goto_0
    return-void
.end method


# virtual methods
.method public decode1D([B[BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "compData"    # [B
    .param p3, "startX"    # I
    .param p4, "height"    # I

    .line 657
    iput-object p2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->data:[B

    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, "lineOffset":I
    iget v1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    .line 662
    .local v1, "scanlineStride":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    .line 663
    iput v2, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 665
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 666
    invoke-virtual {p0, p1, v0, p3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeNextScanline([BII)V

    .line 667
    add-int/2addr v0, v1

    .line 665
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public decode2D([B[BIIJ)V
    .locals 24
    .param p1, "buffer"    # [B
    .param p2, "compData"    # [B
    .param p3, "startX"    # I
    .param p4, "height"    # I
    .param p5, "tiffT4Options"    # J

    .line 829
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->data:[B

    .line 830
    const/4 v4, 0x3

    iput v4, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->compression:I

    .line 832
    const/4 v5, 0x0

    iput v5, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    .line 833
    iput v5, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 835
    iget v6, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    const/4 v7, 0x7

    add-int/2addr v6, v7

    const/16 v8, 0x8

    div-int/2addr v6, v8

    .line 838
    .local v6, "scanlineStride":I
    const/4 v9, 0x2

    new-array v10, v9, [I

    .line 850
    .local v10, "b":[I
    const-wide/16 v11, 0x1

    and-long v11, p5, v11

    long-to-int v11, v11

    iput v11, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->oneD:I

    .line 851
    const-wide/16 v11, 0x2

    and-long v11, p5, v11

    const/4 v13, 0x1

    shr-long/2addr v11, v13

    long-to-int v11, v11

    iput v11, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->uncompressedMode:I

    .line 852
    const-wide/16 v11, 0x4

    and-long v11, p5, v11

    shr-long/2addr v11, v9

    long-to-int v9, v11

    iput v9, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->fillBits:I

    .line 855
    invoke-direct {v0, v13}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->readEOL(Z)I

    move-result v9

    if-ne v9, v13, :cond_a

    .line 859
    const/4 v9, 0x0

    .line 864
    .local v9, "lineOffset":I
    invoke-virtual {v0, v1, v9, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeNextScanline([BII)V

    .line 865
    add-int/2addr v9, v6

    .line 867
    const/4 v11, 0x1

    .local v11, "lines":I
    :goto_0
    move/from16 v12, p4

    if-ge v11, v12, :cond_9

    .line 871
    invoke-direct {v0, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->readEOL(Z)I

    move-result v14

    if-nez v14, :cond_8

    .line 876
    iget-object v14, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->prevChangingElems:[I

    .line 877
    .local v14, "temp":[I
    iget-object v15, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    iput-object v15, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->prevChangingElems:[I

    .line 878
    iput-object v14, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    .line 879
    const/4 v15, 0x0

    .line 882
    .local v15, "currIndex":I
    const/16 v16, -0x1

    .line 883
    .local v16, "a0":I
    const/16 v17, 0x1

    .line 884
    .local v17, "isWhite":Z
    move/from16 v18, p3

    .line 886
    .local v18, "bitOffset":I
    iput v5, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->lastChangingElement:I

    move/from16 v8, v16

    move/from16 v4, v17

    move/from16 v7, v18

    .line 888
    .end local v16    # "a0":I
    .end local v17    # "isWhite":Z
    .end local v18    # "bitOffset":I
    .local v4, "isWhite":Z
    .local v7, "bitOffset":I
    .local v8, "a0":I
    :goto_1
    iget v13, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    if-ge v7, v13, :cond_7

    .line 890
    invoke-direct {v0, v8, v4, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->getNextChangingElement(IZ[I)V

    .line 892
    aget v13, v10, v5

    .line 893
    .local v13, "b1":I
    const/16 v19, 0x1

    aget v20, v10, v19

    .line 896
    .local v20, "b2":I
    const/4 v5, 0x7

    invoke-direct {v0, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v18

    .line 899
    .local v18, "entry":I
    sget-object v21, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->twoDCodes:[B

    aget-byte v5, v21, v18

    and-int/lit16 v5, v5, 0xff

    .line 902
    .end local v18    # "entry":I
    .local v5, "entry":I
    and-int/lit8 v18, v5, 0x78

    const/16 v17, 0x3

    ushr-int/lit8 v3, v18, 0x3

    .line 903
    .local v3, "code":I
    and-int/lit8 v18, v5, 0x7

    .line 905
    .local v18, "bits":I
    if-nez v3, :cond_1

    .line 906
    if-nez v4, :cond_0

    .line 907
    move/from16 v21, v5

    .end local v5    # "entry":I
    .local v21, "entry":I
    sub-int v5, v20, v7

    invoke-direct {v0, v1, v9, v7, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    goto :goto_2

    .line 906
    .end local v21    # "entry":I
    .restart local v5    # "entry":I
    :cond_0
    move/from16 v21, v5

    .line 910
    .end local v5    # "entry":I
    .restart local v21    # "entry":I
    :goto_2
    move/from16 v8, v20

    move/from16 v7, v20

    .line 913
    rsub-int/lit8 v5, v18, 0x7

    invoke-direct {v0, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    move-object/from16 v3, p2

    const/4 v5, 0x0

    const/4 v13, 0x1

    goto :goto_1

    .line 914
    .end local v21    # "entry":I
    .restart local v5    # "entry":I
    :cond_1
    move/from16 v21, v5

    .end local v5    # "entry":I
    .restart local v21    # "entry":I
    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    .line 916
    rsub-int/lit8 v5, v18, 0x7

    invoke-direct {v0, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 920
    if-eqz v4, :cond_2

    .line 921
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeWhiteCodeWord()I

    move-result v5

    .line 922
    .local v5, "number":I
    add-int/2addr v7, v5

    .line 923
    move/from16 v22, v5

    .end local v5    # "number":I
    .local v22, "number":I
    iget-object v5, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    add-int/lit8 v23, v15, 0x1

    .end local v15    # "currIndex":I
    .local v23, "currIndex":I
    aput v7, v5, v15

    .line 925
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeBlackCodeWord()I

    move-result v5

    .line 926
    .end local v22    # "number":I
    .restart local v5    # "number":I
    invoke-direct {v0, v1, v9, v7, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 927
    add-int/2addr v7, v5

    .line 928
    iget-object v15, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    add-int/lit8 v22, v23, 0x1

    .end local v23    # "currIndex":I
    .local v22, "currIndex":I
    aput v7, v15, v23

    move/from16 v15, v22

    goto :goto_3

    .line 930
    .end local v5    # "number":I
    .end local v22    # "currIndex":I
    .restart local v15    # "currIndex":I
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeBlackCodeWord()I

    move-result v5

    .line 931
    .restart local v5    # "number":I
    invoke-direct {v0, v1, v9, v7, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 932
    add-int/2addr v7, v5

    .line 933
    move/from16 v22, v5

    .end local v5    # "number":I
    .local v22, "number":I
    iget-object v5, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    add-int/lit8 v23, v15, 0x1

    .end local v15    # "currIndex":I
    .restart local v23    # "currIndex":I
    aput v7, v5, v15

    .line 935
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeWhiteCodeWord()I

    move-result v5

    .line 936
    .end local v22    # "number":I
    .restart local v5    # "number":I
    add-int/2addr v7, v5

    .line 937
    iget-object v15, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    add-int/lit8 v22, v23, 0x1

    .end local v23    # "currIndex":I
    .local v22, "currIndex":I
    aput v7, v15, v23

    move/from16 v15, v22

    .line 940
    .end local v22    # "currIndex":I
    .restart local v15    # "currIndex":I
    :goto_3
    move v8, v7

    .line 941
    .end local v5    # "number":I
    move-object/from16 v3, p2

    const/4 v5, 0x0

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_3
    const/16 v5, 0x8

    if-gt v3, v5, :cond_6

    .line 943
    add-int/lit8 v16, v3, -0x5

    add-int v16, v13, v16

    .line 945
    .local v16, "a1":I
    iget-object v5, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    add-int/lit8 v23, v15, 0x1

    .end local v15    # "currIndex":I
    .restart local v23    # "currIndex":I
    aput v16, v5, v15

    .line 949
    if-nez v4, :cond_4

    .line 950
    sub-int v5, v16, v7

    invoke-direct {v0, v1, v9, v7, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 953
    :cond_4
    move/from16 v8, v16

    move/from16 v7, v16

    .line 954
    if-nez v4, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    move v4, v5

    .line 956
    rsub-int/lit8 v5, v18, 0x7

    invoke-direct {v0, v5}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    move-object/from16 v3, p2

    move/from16 v15, v23

    const/4 v5, 0x0

    const/4 v13, 0x1

    goto/16 :goto_1

    .line 958
    .end local v16    # "a1":I
    .end local v23    # "currIndex":I
    .restart local v15    # "currIndex":I
    :cond_6
    new-instance v5, Lcom/itextpdf/io/IOException;

    move/from16 v16, v3

    .end local v3    # "code":I
    .local v16, "code":I
    const-string v3, "Invalid code encountered while decoding 2D group 3 compressed data."

    invoke-direct {v5, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 964
    .end local v13    # "b1":I
    .end local v16    # "code":I
    .end local v18    # "bits":I
    .end local v20    # "b2":I
    .end local v21    # "entry":I
    :cond_7
    const/16 v17, 0x3

    iget-object v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    add-int/lit8 v5, v15, 0x1

    .end local v15    # "currIndex":I
    .local v5, "currIndex":I
    aput v7, v3, v15

    .line 965
    iput v5, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    goto :goto_5

    .line 968
    .end local v4    # "isWhite":Z
    .end local v5    # "currIndex":I
    .end local v7    # "bitOffset":I
    .end local v8    # "a0":I
    .end local v14    # "temp":[I
    :cond_8
    move/from16 v17, v4

    invoke-virtual {v0, v1, v9, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeNextScanline([BII)V

    .line 971
    :goto_5
    add-int/2addr v9, v6

    .line 867
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p2

    move/from16 v4, v17

    const/4 v5, 0x0

    const/4 v7, 0x7

    const/16 v8, 0x8

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 973
    .end local v11    # "lines":I
    :cond_9
    return-void

    .line 856
    .end local v9    # "lineOffset":I
    :cond_a
    move/from16 v12, p4

    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string v4, "First scanline must be 1D encoded."

    invoke-direct {v3, v4}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public decodeNextScanline([BII)V
    .locals 16
    .param p1, "buffer"    # [B
    .param p2, "lineOffset"    # I
    .param p3, "bitOffset"    # I

    .line 673
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    .line 676
    .local v3, "isWhite":Z
    const/4 v4, 0x0

    iput v4, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    move v4, v3

    move/from16 v3, p3

    .line 679
    .end local p3    # "bitOffset":I
    .local v3, "bitOffset":I
    .local v4, "isWhite":Z
    :cond_0
    iget v5, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    if-ge v3, v5, :cond_d

    .line 680
    :cond_1
    :goto_0
    const-string v5, "EOL code word encountered in White run."

    const/16 v6, 0xc

    const/4 v7, 0x2

    const/16 v8, 0xf

    if-eqz v4, :cond_5

    .line 682
    const/16 v9, 0xa

    invoke-direct {v0, v9}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v9

    .line 683
    .local v9, "current":I
    sget-object v10, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->white:[S

    aget-short v10, v10, v9

    .line 686
    .local v10, "entry":I
    and-int/lit8 v11, v10, 0x1

    .line 687
    .local v11, "isT":I
    ushr-int/lit8 v12, v10, 0x1

    and-int/2addr v12, v8

    .line 690
    .local v12, "bits":I
    if-ne v12, v6, :cond_2

    .line 693
    invoke-direct {v0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v5

    .line 696
    .local v5, "twoBits":I
    shl-int/lit8 v7, v9, 0x2

    and-int/2addr v6, v7

    or-int/2addr v6, v5

    .line 697
    .end local v9    # "current":I
    .local v6, "current":I
    sget-object v7, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->additionalMakeup:[S

    aget-short v7, v7, v6

    .line 700
    .end local v10    # "entry":I
    .local v7, "entry":I
    ushr-int/lit8 v8, v7, 0x1

    and-int/lit8 v8, v8, 0x7

    .line 703
    .end local v12    # "bits":I
    .local v8, "bits":I
    ushr-int/lit8 v9, v7, 0x4

    and-int/lit16 v9, v9, 0xfff

    .line 706
    .local v9, "code":I
    add-int/2addr v3, v9

    .line 708
    rsub-int/lit8 v10, v8, 0x4

    invoke-direct {v0, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    goto :goto_0

    .line 711
    .end local v5    # "twoBits":I
    .end local v6    # "current":I
    .end local v7    # "entry":I
    .end local v8    # "bits":I
    .local v9, "current":I
    .restart local v10    # "entry":I
    .restart local v12    # "bits":I
    :cond_2
    if-eqz v12, :cond_4

    .line 715
    if-eq v12, v8, :cond_3

    .line 720
    ushr-int/lit8 v5, v10, 0x5

    and-int/lit16 v5, v5, 0x7ff

    .line 721
    .local v5, "code":I
    add-int/2addr v3, v5

    .line 723
    rsub-int/lit8 v6, v12, 0xa

    invoke-direct {v0, v6}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 724
    if-nez v11, :cond_1

    .line 725
    const/4 v4, 0x0

    .line 726
    iget-object v6, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    iget v7, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    aput v3, v6, v7

    goto :goto_0

    .line 716
    .end local v5    # "code":I
    :cond_3
    new-instance v6, Lcom/itextpdf/io/IOException;

    invoke-direct {v6, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 712
    :cond_4
    new-instance v5, Lcom/itextpdf/io/IOException;

    const-string v6, "Invalid code encountered."

    invoke-direct {v5, v6}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 733
    .end local v9    # "current":I
    .end local v10    # "entry":I
    .end local v11    # "isT":I
    .end local v12    # "bits":I
    :cond_5
    iget v9, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    if-ne v3, v9, :cond_6

    .line 734
    iget v5, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->compression:I

    if-ne v5, v7, :cond_d

    .line 735
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->advancePointer()Z

    goto/16 :goto_2

    .line 740
    :cond_6
    :goto_1
    if-nez v4, :cond_c

    .line 742
    const/4 v9, 0x4

    invoke-direct {v0, v9}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v10

    .line 743
    .local v10, "current":I
    sget-object v11, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->initBlack:[S

    aget-short v11, v11, v10

    .line 746
    .local v11, "entry":I
    ushr-int/lit8 v12, v11, 0x1

    and-int/2addr v12, v8

    .line 747
    .restart local v12    # "bits":I
    ushr-int/lit8 v13, v11, 0x5

    and-int/lit16 v13, v13, 0x7ff

    .line 749
    .local v13, "code":I
    const/16 v14, 0x64

    if-ne v13, v14, :cond_a

    .line 750
    const/16 v14, 0x9

    invoke-direct {v0, v14}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v10

    .line 751
    sget-object v14, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->black:[S

    aget-short v11, v14, v10

    .line 754
    and-int/lit8 v14, v11, 0x1

    .line 755
    .local v14, "isT":I
    ushr-int/lit8 v15, v11, 0x1

    and-int/lit8 v12, v15, 0xf

    .line 756
    ushr-int/lit8 v15, v11, 0x5

    and-int/lit16 v13, v15, 0x7ff

    .line 758
    if-ne v12, v6, :cond_7

    .line 760
    const/4 v15, 0x5

    invoke-direct {v0, v15}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 761
    invoke-direct {v0, v9}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v9

    .line 762
    .end local v10    # "current":I
    .restart local v9    # "current":I
    sget-object v10, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->additionalMakeup:[S

    aget-short v10, v10, v9

    .line 765
    .end local v11    # "entry":I
    .local v10, "entry":I
    ushr-int/lit8 v11, v10, 0x1

    and-int/lit8 v11, v11, 0x7

    .line 768
    .end local v12    # "bits":I
    .local v11, "bits":I
    ushr-int/lit8 v12, v10, 0x4

    and-int/lit16 v12, v12, 0xfff

    .line 770
    .end local v13    # "code":I
    .local v12, "code":I
    invoke-direct {v0, v1, v2, v3, v12}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 771
    add-int/2addr v3, v12

    .line 773
    rsub-int/lit8 v13, v11, 0x4

    invoke-direct {v0, v13}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    goto :goto_1

    .line 774
    .end local v9    # "current":I
    .local v10, "current":I
    .local v11, "entry":I
    .local v12, "bits":I
    .restart local v13    # "code":I
    :cond_7
    if-eq v12, v8, :cond_9

    .line 779
    invoke-direct {v0, v1, v2, v3, v13}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 780
    add-int/2addr v3, v13

    .line 782
    rsub-int/lit8 v9, v12, 0x9

    invoke-direct {v0, v9}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 783
    if-nez v14, :cond_8

    .line 784
    const/4 v4, 0x1

    .line 785
    iget-object v9, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    iget v15, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    add-int/lit8 v6, v15, 0x1

    iput v6, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    aput v3, v9, v15

    const/16 v6, 0xc

    goto :goto_1

    .line 783
    :cond_8
    const/16 v6, 0xc

    goto :goto_1

    .line 777
    :cond_9
    new-instance v6, Lcom/itextpdf/io/IOException;

    invoke-direct {v6, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 788
    .end local v14    # "isT":I
    :cond_a
    const/16 v6, 0xc8

    if-ne v13, v6, :cond_b

    .line 791
    invoke-direct {v0, v7}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v6

    .line 792
    .end local v10    # "current":I
    .restart local v6    # "current":I
    sget-object v9, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->twoBitBlack:[S

    aget-short v9, v9, v6

    .line 793
    .end local v11    # "entry":I
    .local v9, "entry":I
    ushr-int/lit8 v10, v9, 0x5

    and-int/lit16 v10, v10, 0x7ff

    .line 794
    .end local v13    # "code":I
    .local v10, "code":I
    ushr-int/lit8 v11, v9, 0x1

    and-int/2addr v11, v8

    .line 796
    .end local v12    # "bits":I
    .local v11, "bits":I
    invoke-direct {v0, v1, v2, v3, v10}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 797
    add-int/2addr v3, v10

    .line 799
    rsub-int/lit8 v12, v11, 0x2

    invoke-direct {v0, v12}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 800
    const/4 v4, 0x1

    .line 801
    iget-object v12, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    iget v13, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    aput v3, v12, v13

    const/16 v6, 0xc

    goto/16 :goto_1

    .line 805
    .end local v6    # "current":I
    .end local v9    # "entry":I
    .local v10, "current":I
    .local v11, "entry":I
    .restart local v12    # "bits":I
    .restart local v13    # "code":I
    :cond_b
    invoke-direct {v0, v1, v2, v3, v13}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 806
    add-int/2addr v3, v13

    .line 808
    rsub-int/lit8 v6, v12, 0x4

    invoke-direct {v0, v6}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 809
    const/4 v4, 0x1

    .line 810
    iget-object v6, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    iget v9, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    add-int/lit8 v14, v9, 0x1

    iput v14, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    aput v3, v6, v9

    const/16 v6, 0xc

    goto/16 :goto_1

    .line 815
    .end local v10    # "current":I
    .end local v11    # "entry":I
    .end local v12    # "bits":I
    .end local v13    # "code":I
    :cond_c
    iget v5, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    if-ne v3, v5, :cond_0

    .line 816
    iget v5, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->compression:I

    if-ne v5, v7, :cond_d

    .line 817
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->advancePointer()Z

    .line 823
    :cond_d
    :goto_2
    iget-object v5, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    iget v6, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    aput v3, v5, v6

    .line 824
    return-void
.end method

.method public decodeT6([B[BIIJ)V
    .locals 26
    .param p1, "buffer"    # [B
    .param p2, "compData"    # [B
    .param p3, "startX"    # I
    .param p4, "height"    # I
    .param p5, "tiffT6Options"    # J

    .line 980
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->data:[B

    .line 981
    const/4 v3, 0x4

    iput v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->compression:I

    .line 983
    const/4 v3, 0x0

    iput v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    .line 984
    iput v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    .line 986
    iget v4, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    add-int/lit8 v5, v4, 0x7

    const/16 v6, 0x8

    div-int/2addr v5, v6

    .line 995
    .local v5, "scanlineStride":I
    const/4 v7, 0x2

    new-array v8, v7, [I

    .line 1000
    .local v8, "b":[I
    const-wide/16 v9, 0x2

    and-long v9, p5, v9

    const/4 v11, 0x1

    shr-long/2addr v9, v11

    long-to-int v9, v9

    iput v9, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->uncompressedMode:I

    .line 1001
    const-wide/16 v9, 0x4

    and-long v9, p5, v9

    shr-long/2addr v9, v7

    long-to-int v7, v9

    iput v7, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->fillBits:I

    .line 1004
    iget-object v7, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    .line 1009
    .local v7, "cce":[I
    iput v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    .line 1010
    const/4 v9, 0x0

    add-int/2addr v9, v11

    iput v9, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    aput v4, v7, v3

    .line 1011
    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    aput v4, v7, v9

    .line 1013
    const/4 v4, 0x0

    .line 1016
    .local v4, "lineOffset":I
    const/4 v9, 0x0

    .local v9, "lines":I
    :goto_0
    move/from16 v10, p4

    if-ge v9, v10, :cond_17

    .line 1018
    const/4 v12, -0x1

    .line 1019
    .local v12, "a0":I
    const/4 v13, 0x1

    .line 1024
    .local v13, "isWhite":Z
    iget-object v14, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->prevChangingElems:[I

    .line 1025
    .local v14, "temp":[I
    iget-object v15, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    iput-object v15, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->prevChangingElems:[I

    .line 1026
    iput-object v14, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->currChangingElems:[I

    move-object v7, v14

    .line 1027
    const/4 v15, 0x0

    .line 1030
    .local v15, "currIndex":I
    move/from16 v16, p3

    .line 1032
    .local v16, "bitOffset":I
    iget v6, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->fillBits:I

    if-ne v6, v11, :cond_1

    .line 1035
    iget v6, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bitPointer:I

    if-lez v6, :cond_1

    .line 1036
    rsub-int/lit8 v6, v6, 0x8

    .line 1037
    .local v6, "bitsLeft":I
    invoke-direct {v0, v6}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v18

    if-nez v18, :cond_0

    goto :goto_1

    .line 1038
    :cond_0
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string v11, "Expected trailing zero bits for byte-aligned lines"

    invoke-direct {v3, v11}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1044
    .end local v6    # "bitsLeft":I
    :cond_1
    :goto_1
    iput v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->lastChangingElement:I

    move/from16 v6, v16

    .line 1048
    .end local v16    # "bitOffset":I
    .local v6, "bitOffset":I
    :goto_2
    iget v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    if-ge v6, v3, :cond_15

    iget v3, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->bytePointer:I

    iget-object v2, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->data:[B

    array-length v2, v2

    sub-int/2addr v2, v11

    if-ge v3, v2, :cond_15

    .line 1051
    invoke-direct {v0, v12, v13, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->getNextChangingElement(IZ[I)V

    .line 1052
    const/4 v2, 0x0

    aget v3, v8, v2

    .line 1053
    .local v3, "b1":I
    aget v16, v8, v11

    .line 1056
    .local v16, "b2":I
    const/4 v2, 0x7

    invoke-direct {v0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v19

    .line 1059
    .local v19, "entry":I
    sget-object v20, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->twoDCodes:[B

    aget-byte v2, v20, v19

    and-int/lit16 v2, v2, 0xff

    .line 1062
    .end local v19    # "entry":I
    .local v2, "entry":I
    and-int/lit8 v19, v2, 0x78

    const/4 v11, 0x3

    move-object/from16 v22, v8

    .end local v8    # "b":[I
    .local v22, "b":[I
    ushr-int/lit8 v8, v19, 0x3

    .line 1063
    .local v8, "code":I
    and-int/lit8 v19, v2, 0x7

    .line 1064
    .local v19, "bits":I
    if-nez v8, :cond_3

    .line 1068
    if-nez v13, :cond_2

    .line 1069
    sub-int v11, v16, v6

    invoke-direct {v0, v1, v4, v6, v11}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 1072
    :cond_2
    move/from16 v12, v16

    move/from16 v6, v16

    .line 1075
    rsub-int/lit8 v11, v19, 0x7

    invoke-direct {v0, v11}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    move-object/from16 v2, p2

    move-object/from16 v8, v22

    const/4 v3, 0x0

    const/4 v11, 0x1

    goto :goto_2

    .line 1078
    :cond_3
    const/4 v11, 0x1

    if-ne v8, v11, :cond_5

    .line 1081
    rsub-int/lit8 v11, v19, 0x7

    invoke-direct {v0, v11}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 1085
    if-eqz v13, :cond_4

    .line 1088
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeWhiteCodeWord()I

    move-result v11

    .line 1089
    .local v11, "number":I
    add-int/2addr v6, v11

    .line 1090
    add-int/lit8 v21, v15, 0x1

    .end local v15    # "currIndex":I
    .local v21, "currIndex":I
    aput v6, v7, v15

    .line 1092
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeBlackCodeWord()I

    move-result v11

    .line 1093
    invoke-direct {v0, v1, v4, v6, v11}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 1094
    add-int/2addr v6, v11

    .line 1095
    add-int/lit8 v15, v21, 0x1

    .end local v21    # "currIndex":I
    .restart local v15    # "currIndex":I
    aput v6, v7, v21

    goto :goto_3

    .line 1099
    .end local v11    # "number":I
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeBlackCodeWord()I

    move-result v11

    .line 1100
    .restart local v11    # "number":I
    invoke-direct {v0, v1, v4, v6, v11}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 1101
    add-int/2addr v6, v11

    .line 1102
    add-int/lit8 v21, v15, 0x1

    .end local v15    # "currIndex":I
    .restart local v21    # "currIndex":I
    aput v6, v7, v15

    .line 1104
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeWhiteCodeWord()I

    move-result v11

    .line 1105
    add-int/2addr v6, v11

    .line 1106
    add-int/lit8 v15, v21, 0x1

    .end local v21    # "currIndex":I
    .restart local v15    # "currIndex":I
    aput v6, v7, v21

    .line 1109
    :goto_3
    move v12, v6

    .line 1112
    .end local v11    # "number":I
    move-object/from16 v2, p2

    move-object/from16 v8, v22

    const/4 v3, 0x0

    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    const/16 v11, 0x8

    if-gt v8, v11, :cond_8

    .line 1113
    add-int/lit8 v17, v8, -0x5

    add-int v17, v3, v17

    .line 1114
    .local v17, "a1":I
    add-int/lit8 v21, v15, 0x1

    .end local v15    # "currIndex":I
    .restart local v21    # "currIndex":I
    aput v17, v7, v15

    .line 1118
    if-nez v13, :cond_6

    .line 1119
    sub-int v15, v17, v6

    invoke-direct {v0, v1, v4, v6, v15}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 1122
    :cond_6
    move/from16 v12, v17

    move/from16 v6, v17

    .line 1123
    if-nez v13, :cond_7

    const/4 v15, 0x1

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    move v13, v15

    .line 1125
    rsub-int/lit8 v15, v19, 0x7

    invoke-direct {v0, v15}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    move-object/from16 v2, p2

    move/from16 v15, v21

    move-object/from16 v8, v22

    const/4 v3, 0x0

    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1126
    .end local v17    # "a1":I
    .end local v21    # "currIndex":I
    .restart local v15    # "currIndex":I
    :cond_8
    const/16 v11, 0xb

    if-ne v8, v11, :cond_14

    .line 1127
    const/4 v11, 0x3

    invoke-direct {v0, v11}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v11

    move/from16 v23, v2

    const/4 v2, 0x7

    .end local v2    # "entry":I
    .local v23, "entry":I
    if-ne v11, v2, :cond_13

    .line 1131
    const/4 v2, 0x0

    .line 1132
    .local v2, "zeros":I
    const/4 v11, 0x0

    .line 1134
    .local v11, "exit":Z
    :goto_5
    if-nez v11, :cond_12

    .line 1135
    :goto_6
    move/from16 v21, v3

    move/from16 v24, v8

    const/4 v3, 0x1

    .end local v3    # "b1":I
    .end local v8    # "code":I
    .local v21, "b1":I
    .local v24, "code":I
    invoke-direct {v0, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v8

    if-eq v8, v3, :cond_9

    .line 1136
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v21

    move/from16 v8, v24

    goto :goto_6

    .line 1139
    :cond_9
    const/4 v3, 0x5

    if-le v2, v3, :cond_f

    .line 1143
    add-int/lit8 v2, v2, -0x6

    .line 1145
    if-nez v13, :cond_a

    if-lez v2, :cond_a

    .line 1146
    add-int/lit8 v8, v15, 0x1

    .end local v15    # "currIndex":I
    .local v8, "currIndex":I
    aput v6, v7, v15

    move v15, v8

    .line 1150
    .end local v8    # "currIndex":I
    .restart local v15    # "currIndex":I
    :cond_a
    add-int/2addr v6, v2

    .line 1151
    if-lez v2, :cond_b

    .line 1153
    const/4 v13, 0x1

    .line 1158
    :cond_b
    const/4 v8, 0x1

    invoke-direct {v0, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v25

    if-nez v25, :cond_d

    .line 1159
    if-nez v13, :cond_c

    .line 1160
    add-int/lit8 v8, v15, 0x1

    .end local v15    # "currIndex":I
    .restart local v8    # "currIndex":I
    aput v6, v7, v15

    move v15, v8

    .line 1162
    .end local v8    # "currIndex":I
    .restart local v15    # "currIndex":I
    :cond_c
    const/4 v8, 0x1

    move v13, v8

    .end local v13    # "isWhite":Z
    .local v8, "isWhite":Z
    goto :goto_7

    .line 1164
    .end local v8    # "isWhite":Z
    .restart local v13    # "isWhite":Z
    :cond_d
    if-eqz v13, :cond_e

    .line 1165
    add-int/lit8 v8, v15, 0x1

    .end local v15    # "currIndex":I
    .local v8, "currIndex":I
    aput v6, v7, v15

    move v15, v8

    .line 1167
    .end local v8    # "currIndex":I
    .restart local v15    # "currIndex":I
    :cond_e
    const/4 v8, 0x0

    move v13, v8

    .line 1170
    :goto_7
    const/4 v8, 0x1

    move v11, v8

    .line 1173
    :cond_f
    if-ne v2, v3, :cond_11

    .line 1174
    if-nez v13, :cond_10

    .line 1175
    add-int/lit8 v3, v15, 0x1

    .end local v15    # "currIndex":I
    .local v3, "currIndex":I
    aput v6, v7, v15

    move v15, v3

    .line 1177
    .end local v3    # "currIndex":I
    .restart local v15    # "currIndex":I
    :cond_10
    add-int/2addr v6, v2

    .line 1180
    const/4 v13, 0x1

    move/from16 v3, v21

    move/from16 v8, v24

    goto :goto_5

    .line 1182
    :cond_11
    add-int/2addr v6, v2

    .line 1184
    add-int/lit8 v3, v15, 0x1

    .end local v15    # "currIndex":I
    .restart local v3    # "currIndex":I
    aput v6, v7, v15

    .line 1185
    const/4 v8, 0x1

    invoke-direct {v0, v1, v4, v6, v8}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 1186
    add-int/2addr v6, v8

    .line 1189
    const/4 v13, 0x0

    move v15, v3

    move/from16 v3, v21

    move/from16 v8, v24

    goto :goto_5

    .line 1134
    .end local v21    # "b1":I
    .end local v24    # "code":I
    .local v3, "b1":I
    .local v8, "code":I
    .restart local v15    # "currIndex":I
    :cond_12
    move/from16 v21, v3

    move/from16 v24, v8

    const/4 v8, 0x1

    .line 1193
    .end local v2    # "zeros":I
    .end local v3    # "b1":I
    .end local v8    # "code":I
    .end local v11    # "exit":Z
    .restart local v21    # "b1":I
    .restart local v24    # "code":I
    move-object/from16 v2, p2

    move v11, v8

    move-object/from16 v8, v22

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1128
    .end local v21    # "b1":I
    .end local v24    # "code":I
    .restart local v3    # "b1":I
    .restart local v8    # "code":I
    :cond_13
    move/from16 v21, v3

    .end local v3    # "b1":I
    .restart local v21    # "b1":I
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "Invalid code encountered while decoding 2D group 4 compressed data."

    invoke-direct {v2, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1199
    .end local v21    # "b1":I
    .end local v23    # "entry":I
    .local v2, "entry":I
    .restart local v3    # "b1":I
    :cond_14
    move/from16 v23, v2

    move/from16 v21, v3

    move/from16 v24, v8

    const/4 v8, 0x1

    .end local v2    # "entry":I
    .end local v3    # "b1":I
    .end local v8    # "code":I
    .restart local v21    # "b1":I
    .restart local v23    # "entry":I
    .restart local v24    # "code":I
    iget v6, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->w:I

    .line 1200
    rsub-int/lit8 v2, v19, 0x7

    invoke-direct {v0, v2}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->updatePointer(I)V

    move-object/from16 v2, p2

    move v11, v8

    move-object/from16 v8, v22

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1048
    .end local v16    # "b2":I
    .end local v19    # "bits":I
    .end local v21    # "b1":I
    .end local v22    # "b":[I
    .end local v23    # "entry":I
    .end local v24    # "code":I
    .local v8, "b":[I
    :cond_15
    move-object/from16 v22, v8

    move v8, v11

    .line 1209
    .end local v8    # "b":[I
    .restart local v22    # "b":[I
    array-length v2, v7

    if-ge v15, v2, :cond_16

    .line 1210
    add-int/lit8 v2, v15, 0x1

    .end local v15    # "currIndex":I
    .local v2, "currIndex":I
    aput v6, v7, v15

    move v15, v2

    .line 1213
    .end local v2    # "currIndex":I
    .restart local v15    # "currIndex":I
    :cond_16
    iput v15, v0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->changingElemSize:I

    .line 1215
    add-int/2addr v4, v5

    .line 1016
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p2

    move v11, v8

    move-object/from16 v8, v22

    const/4 v3, 0x0

    const/16 v6, 0x8

    goto/16 :goto_0

    .line 1217
    .end local v6    # "bitOffset":I
    .end local v9    # "lines":I
    .end local v12    # "a0":I
    .end local v13    # "isWhite":Z
    .end local v14    # "temp":[I
    .end local v15    # "currIndex":I
    .end local v22    # "b":[I
    .restart local v8    # "b":[I
    :cond_17
    return-void
.end method

.method public setRecoverFromImageError(Z)V
    .locals 0
    .param p1, "recoverFromImageError"    # Z

    .line 1630
    iput-boolean p1, p0, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->recoverFromImageError:Z

    .line 1631
    return-void
.end method
