.class public Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;
.super Ljava/lang/Object;
.source "TagAndLength.java"


# instance fields
.field private length:I

.field private tag:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;


# direct methods
.method public constructor <init>(Lcom/github/devnied/emvnfccard/iso7816emv/ITag;I)V
    .locals 0
    .param p1, "tag"    # Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    .param p2, "length"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->tag:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    .line 46
    iput p2, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->length:I

    .line 47
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->tag:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    invoke-interface {v0}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag;->getTagBytes()[B

    move-result-object v0

    .line 59
    .local v0, "tagBytes":[B
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 60
    .local v1, "tagAndLengthBytes":[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->length:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 61
    return-object v1
.end method

.method public getLength()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->length:I

    return v0
.end method

.method public getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->tag:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->tag:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
