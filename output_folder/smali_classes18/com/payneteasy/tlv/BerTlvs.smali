.class public Lcom/payneteasy/tlv/BerTlvs;
.super Ljava/lang/Object;
.source "BerTlvs.java"


# instance fields
.field private final tlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/payneteasy/tlv/BerTlv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/payneteasy/tlv/BerTlv;",
            ">;)V"
        }
    .end annotation

    .line 8
    .local p1, "aTlvs":Ljava/util/List;, "Ljava/util/List<Lcom/payneteasy/tlv/BerTlv;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/payneteasy/tlv/BerTlvs;->tlvs:Ljava/util/List;

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 39
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 40
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 42
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/payneteasy/tlv/BerTlvs;

    .line 44
    .local v2, "berTlvs":Lcom/payneteasy/tlv/BerTlvs;
    iget-object v3, p0, Lcom/payneteasy/tlv/BerTlvs;->tlvs:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v0, v2, Lcom/payneteasy/tlv/BerTlvs;->tlvs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/payneteasy/tlv/BerTlvs;->tlvs:Ljava/util/List;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 40
    .end local v2    # "berTlvs":Lcom/payneteasy/tlv/BerTlvs;
    :cond_4
    :goto_1
    return v1
.end method

.method public find(Lcom/payneteasy/tlv/BerTag;)Lcom/payneteasy/tlv/BerTlv;
    .locals 3
    .param p1, "aTag"    # Lcom/payneteasy/tlv/BerTag;

    .line 13
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlvs;->tlvs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payneteasy/tlv/BerTlv;

    .line 14
    .local v1, "tlv":Lcom/payneteasy/tlv/BerTlv;
    invoke-virtual {v1, p1}, Lcom/payneteasy/tlv/BerTlv;->find(Lcom/payneteasy/tlv/BerTag;)Lcom/payneteasy/tlv/BerTlv;

    move-result-object v2

    .line 15
    .local v2, "found":Lcom/payneteasy/tlv/BerTlv;
    if-eqz v2, :cond_0

    .line 16
    return-object v2

    .line 18
    .end local v1    # "tlv":Lcom/payneteasy/tlv/BerTlv;
    .end local v2    # "found":Lcom/payneteasy/tlv/BerTlv;
    :cond_0
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public findAll(Lcom/payneteasy/tlv/BerTag;)Ljava/util/List;
    .locals 4
    .param p1, "aTag"    # Lcom/payneteasy/tlv/BerTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payneteasy/tlv/BerTag;",
            ")",
            "Ljava/util/List<",
            "Lcom/payneteasy/tlv/BerTlv;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/payneteasy/tlv/BerTlv;>;"
    iget-object v1, p0, Lcom/payneteasy/tlv/BerTlvs;->tlvs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/payneteasy/tlv/BerTlv;

    .line 25
    .local v2, "tlv":Lcom/payneteasy/tlv/BerTlv;
    invoke-virtual {v2, p1}, Lcom/payneteasy/tlv/BerTlv;->findAll(Lcom/payneteasy/tlv/BerTag;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    .end local v2    # "tlv":Lcom/payneteasy/tlv/BerTlv;
    goto :goto_0

    .line 27
    :cond_0
    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/payneteasy/tlv/BerTlv;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlvs;->tlvs:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlvs;->tlvs:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BerTlvs{tlvs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/payneteasy/tlv/BerTlvs;->tlvs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
