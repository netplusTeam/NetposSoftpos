.class public Lorg/jpos/transaction/participant/SendResponse;
.super Ljava/lang/Object;
.source "SendResponse.java"

# interfaces
.implements Lorg/jpos/transaction/AbortParticipant;
.implements Lorg/jpos/core/Configurable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;,
        Lorg/jpos/transaction/participant/SendResponse$HeaderHandler;
    }
.end annotation


# instance fields
.field private headerStrategy:Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;

.field private isp:Lorg/jpos/space/LocalSpace;

.field private request:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private timeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/32 v0, 0x11170

    iput-wide v0, p0, Lorg/jpos/transaction/participant/SendResponse;->timeout:J

    return-void
.end method

.method private sendResponse(JLorg/jpos/transaction/Context;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "ctx"    # Lorg/jpos/transaction/Context;

    .line 60
    iget-object v0, p0, Lorg/jpos/transaction/participant/SendResponse;->source:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lorg/jpos/transaction/Context;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOSource;

    .line 61
    .local v0, "src":Lorg/jpos/iso/ISOSource;
    iget-object v1, p0, Lorg/jpos/transaction/participant/SendResponse;->request:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lorg/jpos/transaction/Context;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 62
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    iget-object v2, p0, Lorg/jpos/transaction/participant/SendResponse;->response:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lorg/jpos/transaction/Context;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/ISOMsg;

    .line 64
    .local v2, "resp":Lorg/jpos/iso/ISOMsg;
    :try_start_0
    invoke-virtual {p3}, Lorg/jpos/transaction/Context;->getResult()Lorg/jpos/rc/Result;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jpos/rc/Result;->hasInhibit()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    const-string v3, "*** RESPONSE INHIBITED ***"

    invoke-virtual {p3, v3}, Lorg/jpos/transaction/Context;->log(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 66
    :cond_0
    sget-object v3, Lorg/jpos/transaction/ContextConstants;->TX:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v3}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/jpos/transaction/Context;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 67
    const-string v3, "*** PANIC - TX not null - RESPONSE OMITTED ***"

    invoke-virtual {p3, v3}, Lorg/jpos/transaction/Context;->log(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 68
    :cond_1
    const-string v3, " not present"

    if-nez v2, :cond_2

    .line 69
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/jpos/transaction/participant/SendResponse;->response:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/jpos/transaction/Context;->log(Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_2
    if-nez v0, :cond_3

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/jpos/transaction/participant/SendResponse;->source:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/jpos/transaction/Context;->log(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_3
    invoke-interface {v0}, Lorg/jpos/iso/ISOSource;->isConnected()Z

    move-result v3

    if-nez v3, :cond_4

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/jpos/transaction/participant/SendResponse;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is no longer connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/jpos/transaction/Context;->log(Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_4
    instance-of v3, v0, Lorg/jpos/space/SpaceSource;

    if-eqz v3, :cond_5

    .line 76
    move-object v3, v0

    check-cast v3, Lorg/jpos/space/SpaceSource;

    iget-object v4, p0, Lorg/jpos/transaction/participant/SendResponse;->isp:Lorg/jpos/space/LocalSpace;

    iget-wide v5, p0, Lorg/jpos/transaction/participant/SendResponse;->timeout:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/jpos/space/SpaceSource;->init(Lorg/jpos/space/LocalSpace;J)V

    .line 77
    :cond_5
    invoke-interface {v0}, Lorg/jpos/iso/ISOSource;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    .line 78
    iget-object v3, p0, Lorg/jpos/transaction/participant/SendResponse;->headerStrategy:Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;

    invoke-virtual {v3, v1, v2}, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;->handleHeader(Lorg/jpos/iso/ISOMsg;Lorg/jpos/iso/ISOMsg;)V

    .line 79
    invoke-interface {v0, v2}, Lorg/jpos/iso/ISOSource;->send(Lorg/jpos/iso/ISOMsg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :cond_6
    :goto_0
    goto :goto_1

    .line 82
    :catchall_0
    move-exception v3

    .line 83
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {p3, v3}, Lorg/jpos/transaction/Context;->log(Ljava/lang/Object;)V

    .line 85
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method


# virtual methods
.method public abort(JLjava/io/Serializable;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 57
    move-object v0, p3

    check-cast v0, Lorg/jpos/transaction/Context;

    invoke-direct {p0, p1, p2, v0}, Lorg/jpos/transaction/participant/SendResponse;->sendResponse(JLorg/jpos/transaction/Context;)V

    .line 58
    return-void
.end method

.method public commit(JLjava/io/Serializable;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 54
    move-object v0, p3

    check-cast v0, Lorg/jpos/transaction/Context;

    invoke-direct {p0, p1, p2, v0}, Lorg/jpos/transaction/participant/SendResponse;->sendResponse(JLorg/jpos/transaction/Context;)V

    .line 55
    return-void
.end method

.method public prepare(JLjava/io/Serializable;)I
    .locals 3
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 46
    move-object v0, p3

    check-cast v0, Lorg/jpos/transaction/Context;

    .line 47
    .local v0, "ctx":Lorg/jpos/transaction/Context;
    iget-object v1, p0, Lorg/jpos/transaction/participant/SendResponse;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jpos/transaction/Context;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOSource;

    .line 48
    .local v1, "source":Lorg/jpos/iso/ISOSource;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/jpos/iso/ISOSource;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    const/16 v2, 0x81

    return v2

    .line 49
    :cond_1
    :goto_0
    const/16 v2, 0xc0

    return v2
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 89
    sget-object v0, Lorg/jpos/transaction/ContextConstants;->SOURCE:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v0}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "source"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/SendResponse;->source:Ljava/lang/String;

    .line 90
    sget-object v0, Lorg/jpos/transaction/ContextConstants;->REQUEST:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v0}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/SendResponse;->request:Ljava/lang/String;

    .line 91
    sget-object v0, Lorg/jpos/transaction/ContextConstants;->RESPONSE:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v0}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "response"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/SendResponse;->response:Ljava/lang/String;

    .line 92
    iget-wide v0, p0, Lorg/jpos/transaction/participant/SendResponse;->timeout:J

    const-string v2, "timeout"

    invoke-interface {p1, v2, v0, v1}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/transaction/participant/SendResponse;->timeout:J

    .line 94
    :try_start_0
    const-string v0, "header-strategy"

    const-string v1, "PRESERVE_RESPONSE"

    .line 95
    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;->valueOf(Ljava/lang/String;)Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/SendResponse;->headerStrategy:Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    nop

    .line 100
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setTransactionManager(Lorg/jpos/transaction/TransactionManager;)V
    .locals 1
    .param p1, "tm"    # Lorg/jpos/transaction/TransactionManager;

    .line 102
    invoke-virtual {p1}, Lorg/jpos/transaction/TransactionManager;->getInputSpace()Lorg/jpos/space/Space;

    move-result-object v0

    check-cast v0, Lorg/jpos/space/LocalSpace;

    iput-object v0, p0, Lorg/jpos/transaction/participant/SendResponse;->isp:Lorg/jpos/space/LocalSpace;

    .line 103
    return-void
.end method
