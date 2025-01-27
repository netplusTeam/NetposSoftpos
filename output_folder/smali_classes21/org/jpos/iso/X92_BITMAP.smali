.class public Lorg/jpos/iso/X92_BITMAP;
.super Lorg/jpos/iso/ISOBitMapPackager;
.source "X92_BITMAP.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/jpos/iso/ISOBitMapPackager;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOBitMapPackager;-><init>(ILjava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getMaxPackedLength()I
    .locals 1

    .line 66
    invoke-virtual {p0}, Lorg/jpos/iso/X92_BITMAP;->getLength()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 2
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->bitSet2byte(Ljava/util/BitSet;)[B

    move-result-object v0

    .line 49
    .local v0, "b":[B
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 2
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lorg/jpos/iso/ISOUtil;->hex2BitSet([BIZ)Ljava/util/BitSet;

    move-result-object v0

    .line 62
    .local v0, "bmap":Ljava/util/BitSet;
    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v0}, Ljava/util/BitSet;->size()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    return v1
.end method
