.class public Lorg/jpos/transaction/participant/BSHGroupSelector;
.super Lorg/jpos/transaction/participant/BSHTransactionParticipant;
.source "BSHGroupSelector.java"

# interfaces
.implements Lorg/jpos/transaction/GroupSelector;


# instance fields
.field protected selectMethod:Lorg/jpos/transaction/participant/BSHMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/jpos/transaction/participant/BSHTransactionParticipant;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultSelect(JLjava/io/Serializable;)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 64
    const-string v0, ""

    return-object v0
.end method

.method public select(JLjava/io/Serializable;)Ljava/lang/String;
    .locals 9
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 46
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "select"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 47
    .local v0, "ev":Lorg/jpos/util/LogEvent;
    const/4 v1, 0x0

    .line 48
    .local v1, "result":Ljava/lang/String;
    iget-object v3, p0, Lorg/jpos/transaction/participant/BSHGroupSelector;->selectMethod:Lorg/jpos/transaction/participant/BSHMethod;

    if-eqz v3, :cond_0

    .line 50
    :try_start_0
    const-string v8, "result"

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, v0

    invoke-virtual/range {v2 .. v8}, Lorg/jpos/transaction/participant/BSHGroupSelector;->executeMethod(Lorg/jpos/transaction/participant/BSHMethod;JLjava/io/Serializable;Lorg/jpos/util/LogEvent;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 53
    goto :goto_0

    .line 51
    :catch_0
    move-exception v2

    .line 52
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v0, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 55
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lorg/jpos/transaction/participant/BSHGroupSelector;->defaultSelect(JLjava/io/Serializable;)Ljava/lang/String;

    move-result-object v1

    .line 58
    :cond_1
    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 60
    return-object v1
.end method

.method public setConfiguration(Lorg/jdom2/Element;)V
    .locals 3
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 37
    invoke-super {p0, p1}, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->setConfiguration(Lorg/jdom2/Element;)V

    .line 39
    :try_start_0
    const-string v0, "select"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/transaction/participant/BSHMethod;->createBshMethod(Lorg/jdom2/Element;)Lorg/jpos/transaction/participant/BSHMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/BSHGroupSelector;->selectMethod:Lorg/jpos/transaction/participant/BSHMethod;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    nop

    .line 43
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
