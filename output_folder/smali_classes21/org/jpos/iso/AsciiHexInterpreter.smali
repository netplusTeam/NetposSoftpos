.class public Lorg/jpos/iso/AsciiHexInterpreter;
.super Ljava/lang/Object;
.source "AsciiHexInterpreter.java"

# interfaces
.implements Lorg/jpos/iso/BinaryInterpreter;


# static fields
.field private static final HEX_ASCII:[B

.field public static final INSTANCE:Lorg/jpos/iso/AsciiHexInterpreter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lorg/jpos/iso/AsciiHexInterpreter;

    invoke-direct {v0}, Lorg/jpos/iso/AsciiHexInterpreter;-><init>()V

    sput-object v0, Lorg/jpos/iso/AsciiHexInterpreter;->INSTANCE:Lorg/jpos/iso/AsciiHexInterpreter;

    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jpos/iso/AsciiHexInterpreter;->HEX_ASCII:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
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

    .line 68
    mul-int/lit8 v0, p1, 0x2

    return v0
.end method

.method public interpret([B[BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "b"    # [B
    .param p3, "offset"    # I

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 44
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    sget-object v2, Lorg/jpos/iso/AsciiHexInterpreter;->HEX_ASCII:[B

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-byte v3, v2, v3

    aput-byte v3, p2, v1

    .line 45
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, p2, v1

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public uninterpret([BII)[B
    .locals 7
    .param p1, "rawData"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 54
    new-array v0, p3, [B

    .line 55
    .local v0, "d":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    mul-int/lit8 v2, p3, 0x2

    if-ge v1, v2, :cond_1

    .line 56
    rem-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x4

    .line 57
    .local v2, "shift":I
    :goto_1
    shr-int/lit8 v3, v1, 0x1

    aget-byte v4, v0, v3

    add-int v5, p2, v1

    aget-byte v5, p1, v5

    int-to-char v5, v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    shl-int/2addr v5, v2

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 55
    .end local v2    # "shift":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method
