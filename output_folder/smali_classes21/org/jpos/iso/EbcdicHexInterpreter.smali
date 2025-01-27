.class public Lorg/jpos/iso/EbcdicHexInterpreter;
.super Ljava/lang/Object;
.source "EbcdicHexInterpreter.java"

# interfaces
.implements Lorg/jpos/iso/BinaryInterpreter;


# static fields
.field private static final HEX_EBCDIC:[B

.field public static final INSTANCE:Lorg/jpos/iso/EbcdicHexInterpreter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lorg/jpos/iso/EbcdicHexInterpreter;

    invoke-direct {v0}, Lorg/jpos/iso/EbcdicHexInterpreter;-><init>()V

    sput-object v0, Lorg/jpos/iso/EbcdicHexInterpreter;->INSTANCE:Lorg/jpos/iso/EbcdicHexInterpreter;

    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jpos/iso/EbcdicHexInterpreter;->HEX_EBCDIC:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x10t
        -0xft
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        -0x9t
        -0x8t
        -0x7t
        -0x3ft
        -0x3et
        -0x3dt
        -0x3ct
        -0x3bt
        -0x3at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackedLength(I)I
    .locals 1
    .param p1, "nBytes"    # I

    .line 75
    mul-int/lit8 v0, p1, 0x2

    return v0
.end method

.method public interpret([B[BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "b"    # [B
    .param p3, "offset"    # I

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 46
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    sget-object v2, Lorg/jpos/iso/EbcdicHexInterpreter;->HEX_EBCDIC:[B

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-byte v3, v2, v3

    aput-byte v3, p2, v1

    .line 47
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, p2, v1

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public uninterpret([BII)[B
    .locals 7
    .param p1, "rawData"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 56
    new-array v0, p3, [B

    .line 57
    .local v0, "ret":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 60
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    aget-byte v2, p1, v2

    .line 61
    .local v2, "hi":B
    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    .line 62
    .local v3, "lo":B
    const/16 v4, -0x10

    if-ge v2, v4, :cond_0

    add-int/lit8 v5, v2, 0xa

    add-int/lit16 v5, v5, -0xc0

    goto :goto_1

    :cond_0
    add-int/lit16 v5, v2, -0xf0

    .line 63
    .local v5, "h":I
    :goto_1
    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0xa

    add-int/lit16 v4, v4, -0xc0

    goto :goto_2

    :cond_1
    add-int/lit16 v4, v3, -0xf0

    .line 64
    .local v4, "l":I
    :goto_2
    shl-int/lit8 v6, v5, 0x4

    or-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 57
    .end local v2    # "hi":B
    .end local v3    # "lo":B
    .end local v4    # "l":I
    .end local v5    # "h":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method
