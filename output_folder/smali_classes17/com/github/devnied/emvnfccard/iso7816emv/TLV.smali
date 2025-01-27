.class public Lcom/github/devnied/emvnfccard/iso7816emv/TLV;
.super Ljava/lang/Object;
.source "TLV.java"


# instance fields
.field private length:I

.field private rawEncodedLengthBytes:[B

.field private tag:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

.field private valueBytes:[B


# direct methods
.method public constructor <init>(Lcom/github/devnied/emvnfccard/iso7816emv/ITag;I[B[B)V
    .locals 2
    .param p1, "tag"    # Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    .param p2, "length"    # I
    .param p3, "rawEncodedLengthBytes"    # [B
    .param p4, "valueBytes"    # [B

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p4, :cond_0

    array-length v0, p4

    if-ne p2, v0, :cond_0

    .line 55
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->tag:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    .line 56
    iput-object p3, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->rawEncodedLengthBytes:[B

    .line 57
    iput-object p4, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->valueBytes:[B

    .line 58
    iput p2, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->length:I

    .line 59
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length != bytes.length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->length:I

    return v0
.end method

.method public getRawEncodedLengthBytes()[B
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->rawEncodedLengthBytes:[B

    return-object v0
.end method

.method public getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->tag:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    return-object v0
.end method

.method public getTagBytes()[B
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->tag:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    invoke-interface {v0}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag;->getTagBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getValueBytes()[B
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->valueBytes:[B

    return-object v0
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .line 134
    iput p1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->length:I

    .line 135
    return-void
.end method

.method public setRawEncodedLengthBytes([B)V
    .locals 0
    .param p1, "rawEncodedLengthBytes"    # [B

    .line 96
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->rawEncodedLengthBytes:[B

    .line 97
    return-void
.end method

.method public setTag(Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)V
    .locals 0
    .param p1, "tag"    # Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    .line 77
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->tag:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    .line 78
    return-void
.end method

.method public setValueBytes([B)V
    .locals 0
    .param p1, "valueBytes"    # [B

    .line 115
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->valueBytes:[B

    .line 116
    return-void
.end method
