.class public Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;
.super Ljava/lang/Object;
.source "BerTlvs.java"


# instance fields
.field private final tlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aTlvs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;",
            ">;)V"
        }
    .end annotation

    .line 8
    .local p1, "aTlvs":Ljava/util/List;, "Ljava/util/List<Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;->tlvs:Ljava/util/List;

    .line 10
    return-void
.end method


# virtual methods
.method public find(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    .locals 3
    .param p1, "aTag"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aTag"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;->tlvs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    .line 14
    .local v1, "tlv":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    invoke-virtual {v1, p1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->find(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    move-result-object v2

    .line 15
    .local v2, "found":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    if-eqz v2, :cond_0

    .line 16
    return-object v2

    .line 18
    .end local v1    # "tlv":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    .end local v2    # "found":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    :cond_0
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public findAll(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)Ljava/util/List;
    .locals 4
    .param p1, "aTag"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;",
            ")",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;>;"
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;->tlvs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    .line 25
    .local v2, "tlv":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    invoke-virtual {v2, p1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->findAll(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    .end local v2    # "tlv":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
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
            "Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;->tlvs:Ljava/util/List;

    return-object v0
.end method
