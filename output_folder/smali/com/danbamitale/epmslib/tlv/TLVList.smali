.class public Lcom/danbamitale/epmslib/tlv/TLVList;
.super Ljava/lang/Object;
.source "TLVList.java"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/tlv/TLV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danbamitale/epmslib/tlv/TLVList;->data:Ljava/util/List;

    return-void
.end method

.method public static fromBinary(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLVList;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 22
    invoke-static {p0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/danbamitale/epmslib/tlv/TLVList;->fromBinary([B)Lcom/danbamitale/epmslib/tlv/TLVList;

    move-result-object v0

    return-object v0
.end method

.method public static fromBinary([B)Lcom/danbamitale/epmslib/tlv/TLVList;
    .locals 4
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/danbamitale/epmslib/tlv/TLVList;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/tlv/TLVList;-><init>()V

    .line 12
    .local v0, "l":Lcom/danbamitale/epmslib/tlv/TLVList;
    const/4 v1, 0x0

    .line 13
    .local v1, "offset":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 14
    invoke-static {p0, v1}, Lcom/danbamitale/epmslib/tlv/TLV;->fromRawData([BI)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v2

    .line 15
    .local v2, "d":Lcom/danbamitale/epmslib/tlv/TLV;
    invoke-virtual {v0, v2}, Lcom/danbamitale/epmslib/tlv/TLVList;->addTLV(Lcom/danbamitale/epmslib/tlv/TLV;)V

    .line 16
    invoke-virtual {v2}, Lcom/danbamitale/epmslib/tlv/TLV;->getRawData()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v1, v3

    .line 17
    .end local v2    # "d":Lcom/danbamitale/epmslib/tlv/TLV;
    goto :goto_0

    .line 18
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addTLV(Lcom/danbamitale/epmslib/tlv/TLV;)V
    .locals 2
    .param p1, "tlv"    # Lcom/danbamitale/epmslib/tlv/TLV;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tlv"
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lcom/danbamitale/epmslib/tlv/TLV;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/danbamitale/epmslib/tlv/TLVList;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tlv is not valid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTLV(I)Lcom/danbamitale/epmslib/tlv/TLV;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/danbamitale/epmslib/tlv/TLVList;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danbamitale/epmslib/tlv/TLV;

    return-object v0
.end method

.method public getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/danbamitale/epmslib/tlv/TLVList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danbamitale/epmslib/tlv/TLV;

    .line 43
    .local v1, "d":Lcom/danbamitale/epmslib/tlv/TLV;
    invoke-virtual {v1}, Lcom/danbamitale/epmslib/tlv/TLV;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    return-object v1

    .line 46
    .end local v1    # "d":Lcom/danbamitale/epmslib/tlv/TLV;
    :cond_0
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTLVVL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/danbamitale/epmslib/tlv/TLVList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danbamitale/epmslib/tlv/TLV;

    .line 52
    .local v1, "d":Lcom/danbamitale/epmslib/tlv/TLV;
    invoke-virtual {v1}, Lcom/danbamitale/epmslib/tlv/TLV;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v1}, Lcom/danbamitale/epmslib/tlv/TLV;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    .end local v1    # "d":Lcom/danbamitale/epmslib/tlv/TLV;
    :cond_0
    goto :goto_0

    .line 56
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getTLVs([Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLVList;
    .locals 5
    .param p1, "tags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/danbamitale/epmslib/tlv/TLVList;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/tlv/TLVList;-><init>()V

    .line 61
    .local v0, "list":Lcom/danbamitale/epmslib/tlv/TLVList;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 62
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v4

    .line 63
    .local v4, "data":Lcom/danbamitale/epmslib/tlv/TLV;
    if-eqz v4, :cond_0

    .line 64
    invoke-virtual {v0, v4}, Lcom/danbamitale/epmslib/tlv/TLVList;->addTLV(Lcom/danbamitale/epmslib/tlv/TLV;)V

    .line 61
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "data":Lcom/danbamitale/epmslib/tlv/TLV;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/tlv/TLVList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 68
    const/4 v1, 0x0

    return-object v1

    .line 70
    :cond_2
    return-object v0
.end method

.method public retainAll([Ljava/lang/String;)V
    .locals 3
    .param p1, "tags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    .line 85
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 86
    .local v0, "tagList":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/danbamitale/epmslib/tlv/TLVList;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/danbamitale/epmslib/tlv/TLVList;->data:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danbamitale/epmslib/tlv/TLV;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/tlv/TLV;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/danbamitale/epmslib/tlv/TLVList;->data:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/danbamitale/epmslib/tlv/TLVList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toBinary()[B
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/danbamitale/epmslib/tlv/TLVList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[B

    .line 31
    .local v0, "allData":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/danbamitale/epmslib/tlv/TLVList;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/danbamitale/epmslib/tlv/TLVList;->data:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danbamitale/epmslib/tlv/TLV;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/tlv/TLV;->getRawData()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->merage([[B)[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/danbamitale/epmslib/tlv/TLVList;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/tlv/TLVList;->toBinary()[B

    move-result-object v0

    invoke-static {v0}, Lcom/danbamitale/epmslib/tlv/BytesUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
