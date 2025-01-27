.class public Lcom/payneteasy/tlv/BerTlvLogger;
.super Ljava/lang/Object;
.source "BerTlvLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;Lcom/payneteasy/tlv/BerTlv;Lcom/payneteasy/tlv/IBerTlvLogger;)V
    .locals 4
    .param p0, "aPadding"    # Ljava/lang/String;
    .param p1, "aTlv"    # Lcom/payneteasy/tlv/BerTlv;
    .param p2, "aLogger"    # Lcom/payneteasy/tlv/IBerTlvLogger;

    .line 15
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string/jumbo v0, "{} is null"

    invoke-interface {p2, v0, v1}, Lcom/payneteasy/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/payneteasy/tlv/BerTlv;->isConstructed()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    .line 21
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-virtual {p1}, Lcom/payneteasy/tlv/BerTlv;->getTag()Lcom/payneteasy/tlv/BerTag;

    move-result-object v0

    iget-object v0, v0, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    invoke-static {v0}, Lcom/payneteasy/tlv/HexUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string/jumbo v0, "{} [{}]"

    invoke-interface {p2, v0, v2}, Lcom/payneteasy/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p1}, Lcom/payneteasy/tlv/BerTlv;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payneteasy/tlv/BerTlv;

    .line 23
    .local v1, "child":Lcom/payneteasy/tlv/BerTlv;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lcom/payneteasy/tlv/BerTlvLogger;->log(Ljava/lang/String;Lcom/payneteasy/tlv/BerTlv;Lcom/payneteasy/tlv/IBerTlvLogger;)V

    .line 24
    .end local v1    # "child":Lcom/payneteasy/tlv/BerTlv;
    goto :goto_0

    :cond_1
    goto :goto_1

    .line 26
    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-virtual {p1}, Lcom/payneteasy/tlv/BerTlv;->getTag()Lcom/payneteasy/tlv/BerTag;

    move-result-object v0

    iget-object v0, v0, Lcom/payneteasy/tlv/BerTag;->bytes:[B

    invoke-static {v0}, Lcom/payneteasy/tlv/HexUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {p1}, Lcom/payneteasy/tlv/BerTlv;->getHexValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string/jumbo v0, "{} [{}] {}"

    invoke-interface {p2, v0, v2}, Lcom/payneteasy/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :goto_1
    return-void
.end method

.method public static log(Ljava/lang/String;Lcom/payneteasy/tlv/BerTlvs;Lcom/payneteasy/tlv/IBerTlvLogger;)V
    .locals 2
    .param p0, "aPadding"    # Ljava/lang/String;
    .param p1, "aTlv"    # Lcom/payneteasy/tlv/BerTlvs;
    .param p2, "aLogger"    # Lcom/payneteasy/tlv/IBerTlvLogger;

    .line 9
    invoke-virtual {p1}, Lcom/payneteasy/tlv/BerTlvs;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payneteasy/tlv/BerTlv;

    .line 10
    .local v1, "tlv":Lcom/payneteasy/tlv/BerTlv;
    invoke-static {p0, v1, p2}, Lcom/payneteasy/tlv/BerTlvLogger;->log(Ljava/lang/String;Lcom/payneteasy/tlv/BerTlv;Lcom/payneteasy/tlv/IBerTlvLogger;)V

    .line 11
    .end local v1    # "tlv":Lcom/payneteasy/tlv/BerTlv;
    goto :goto_0

    .line 12
    :cond_0
    return-void
.end method
