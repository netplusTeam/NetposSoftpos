.class public Lorg/jpos/iso/packager/Base1_BITMAP126;
.super Lorg/jpos/iso/ISOBitMapPackager;
.source "Base1_BITMAP126.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/jpos/iso/ISOBitMapPackager;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOBitMapPackager;-><init>(ILjava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getMaxPackedLength()I
    .locals 1

    .line 84
    invoke-virtual {p0}, Lorg/jpos/iso/packager/Base1_BITMAP126;->getLength()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 1
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->bitSet2byte(Ljava/util/BitSet;)[B

    move-result-object v0

    return-object v0
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 4
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lorg/jpos/iso/ISOUtil;->byte2BitSet([BIZ)Ljava/util/BitSet;

    move-result-object v0

    .line 78
    .local v0, "bmap":Ljava/util/BitSet;
    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v0}, Ljava/util/BitSet;->size()I

    move-result v1

    move v2, v1

    .local v2, "len":I
    const/16 v3, 0x80

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v1, v3

    .line 80
    .end local v2    # "len":I
    .local v1, "len":I
    shr-int/lit8 v2, v1, 0x3

    return v2
.end method
