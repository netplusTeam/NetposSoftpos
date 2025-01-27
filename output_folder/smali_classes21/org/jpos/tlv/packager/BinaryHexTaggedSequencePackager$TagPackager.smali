.class public Lorg/jpos/tlv/packager/BinaryHexTaggedSequencePackager$TagPackager;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "BinaryHexTaggedSequencePackager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/tlv/packager/BinaryHexTaggedSequencePackager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagPackager"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getMaxPackedLength()I
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/BinaryHexTaggedSequencePackager$TagPackager;->getLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 6
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v1

    .line 57
    .local v1, "tagBytes":[B
    array-length v2, v1

    invoke-virtual {p0}, Lorg/jpos/tlv/packager/BinaryHexTaggedSequencePackager$TagPackager;->getMaxPackedLength()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 58
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/BinaryHexTaggedSequencePackager$TagPackager;->getMaxPackedLength()I

    move-result v2

    new-array v2, v2, [B

    .line 59
    .local v2, "b":[B
    const/4 v3, 0x0

    array-length v4, v2

    array-length v5, v1

    sub-int/2addr v4, v5

    array-length v5, v1

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    move-object v1, v2

    .line 62
    .end local v2    # "b":[B
    :cond_0
    return-object v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 3
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/BinaryHexTaggedSequencePackager$TagPackager;->getMaxPackedLength()I

    move-result v0

    new-array v0, v0, [B

    .line 68
    .local v0, "tagBytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p2, p3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->byte2hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 70
    array-length v1, v0

    return v1
.end method
