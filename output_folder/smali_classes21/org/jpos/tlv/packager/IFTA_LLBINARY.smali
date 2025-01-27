.class public Lorg/jpos/tlv/packager/IFTA_LLBINARY;
.super Lorg/jpos/iso/IFA_LLBINARY;
.source "IFTA_LLBINARY.java"

# interfaces
.implements Lorg/jpos/iso/TaggedFieldPackager;


# instance fields
.field private tagPackager:Lorg/jpos/iso/IF_CHAR;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/jpos/iso/IFA_LLBINARY;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/IFA_LLBINARY;-><init>(ILjava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public createComponent(I)Lorg/jpos/iso/ISOComponent;
    .locals 3
    .param p1, "fieldNumber"    # I

    .line 53
    new-instance v0, Lorg/jpos/tlv/ISOTaggedField;

    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IFTA_LLBINARY;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, p1}, Lorg/jpos/iso/IFA_LLBINARY;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jpos/tlv/ISOTaggedField;-><init>(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)V

    return-object v0
.end method

.method protected getTagPackager()Lorg/jpos/iso/ISOFieldPackager;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/jpos/tlv/packager/IFTA_LLBINARY;->tagPackager:Lorg/jpos/iso/IF_CHAR;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/jpos/tlv/packager/IFTA_LLBINARY;->token:Ljava/lang/String;

    return-object v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1}, Lorg/jpos/tlv/packager/IFTA_LLBINARY;->packTag(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v0

    .line 114
    .local v0, "tagBytes":[B
    invoke-interface {p2, v0}, Ljava/io/ObjectOutput;->write([B)V

    .line 115
    invoke-super {p0, p1, p2}, Lorg/jpos/iso/IFA_LLBINARY;->pack(Lorg/jpos/iso/ISOComponent;Ljava/io/ObjectOutput;)V

    .line 116
    return-void
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 6
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Lorg/jpos/tlv/packager/IFTA_LLBINARY;->packTag(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v0

    .line 92
    .local v0, "tagBytes":[B
    invoke-super {p0, p1}, Lorg/jpos/iso/IFA_LLBINARY;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v1

    .line 93
    .local v1, "message":[B
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 94
    .local v2, "b":[B
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    array-length v3, v0

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    return-object v2
.end method

.method protected packTag(Lorg/jpos/iso/ISOComponent;)[B
    .locals 4
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IFTA_LLBINARY;->getTagPackager()Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v0

    new-instance v1, Lorg/jpos/iso/ISOField;

    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p1

    check-cast v3, Lorg/jpos/tlv/ISOTaggedField;

    invoke-virtual {v3}, Lorg/jpos/tlv/ISOTaggedField;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v0

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lorg/jpos/tlv/packager/IFTA_LLBINARY;->token:Ljava/lang/String;

    .line 59
    new-instance v0, Lorg/jpos/iso/IF_CHAR;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Tag"

    invoke-direct {v0, v1, v2}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/tlv/packager/IFTA_LLBINARY;->tagPackager:Lorg/jpos/iso/IF_CHAR;

    .line 60
    sget-object v1, Lorg/jpos/iso/LeftPadder;->ZERO_PADDER:Lorg/jpos/iso/LeftPadder;

    invoke-virtual {v0, v1}, Lorg/jpos/iso/IF_CHAR;->setPadder(Lorg/jpos/iso/Padder;)V

    .line 61
    return-void
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

    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lorg/jpos/tlv/packager/IFTA_LLBINARY;->unpackTag(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v0

    .line 102
    .local v0, "consumed":I
    add-int v1, p3, v0

    invoke-super {p0, p1, p2, v1}, Lorg/jpos/iso/IFA_LLBINARY;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0, p1, p2}, Lorg/jpos/tlv/packager/IFTA_LLBINARY;->unpackTag(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V

    .line 108
    invoke-super {p0, p1, p2}, Lorg/jpos/iso/IFA_LLBINARY;->unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V

    .line 109
    return-void
.end method

.method protected unpackTag(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 4
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "tagBytes"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/jpos/iso/ISOField;

    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOField;-><init>(I)V

    .line 78
    .local v0, "tagField":Lorg/jpos/iso/ISOField;
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IFTA_LLBINARY;->getTagPackager()Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v1

    .line 79
    .local v1, "consumed":I
    move-object v2, p1

    check-cast v2, Lorg/jpos/tlv/ISOTaggedField;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOField;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jpos/tlv/ISOTaggedField;->setTag(Ljava/lang/String;)V

    .line 80
    return v1
.end method

.method protected unpackTag(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/jpos/iso/ISOField;

    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOField;-><init>(I)V

    .line 85
    .local v0, "tagField":Lorg/jpos/iso/ISOField;
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/IFTA_LLBINARY;->getTagPackager()Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V

    .line 86
    move-object v1, p1

    check-cast v1, Lorg/jpos/tlv/ISOTaggedField;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOField;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/tlv/ISOTaggedField;->setTag(Ljava/lang/String;)V

    .line 87
    return-void
.end method
