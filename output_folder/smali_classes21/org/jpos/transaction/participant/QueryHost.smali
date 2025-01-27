.class public Lorg/jpos/transaction/participant/QueryHost;
.super Ljava/lang/Object;
.source "QueryHost.java"

# interfaces
.implements Lorg/jpos/transaction/TransactionParticipant;
.implements Lorg/jpos/iso/ISOResponseListener;
.implements Lorg/jpos/core/Configurable;


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0x7530L

.field private static final DEFAULT_WAIT_TIMEOUT:J = 0x3e8L


# instance fields
.field private cfg:Lorg/jpos/core/Configuration;

.field private checkConnected:Z

.field private continuations:Z

.field private destination:Ljava/lang/String;

.field private ignoreUnreachable:Z

.field private request:Ljava/lang/String;

.field private requestName:Ljava/lang/String;

.field private responseName:Ljava/lang/String;

.field private timeout:J

.field private waitTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/transaction/participant/QueryHost;->checkConnected:Z

    .line 54
    return-void
.end method


# virtual methods
.method public expired(Ljava/lang/Object;)V
    .locals 8
    .param p1, "handBack"    # Ljava/lang/Object;

    .line 109
    move-object v0, p1

    check-cast v0, Lorg/jpos/transaction/Context;

    .line 110
    .local v0, "ctx":Lorg/jpos/transaction/Context;
    iget-object v1, p0, Lorg/jpos/transaction/participant/QueryHost;->destination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jpos/transaction/Context;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "ds":Ljava/lang/String;
    iget-object v2, p0, Lorg/jpos/transaction/participant/QueryHost;->cfg:Lorg/jpos/core/Configuration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mux."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "muxName":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/jpos/transaction/Context;->getResult()Lorg/jpos/rc/Result;

    move-result-object v3

    sget-object v4, Lorg/jpos/rc/CMF;->HOST_UNREACHABLE:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const-string v7, "\'%s\' does not respond"

    invoke-virtual {v3, v4, v5, v7, v6}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jpos/rc/Result;->FAIL()I

    .line 113
    invoke-virtual {v0}, Lorg/jpos/transaction/Context;->resume()V

    .line 114
    return-void
.end method

.method protected isConnected(Lorg/jpos/iso/MUX;)Z
    .locals 6
    .param p1, "mux"    # Lorg/jpos/iso/MUX;

    .line 129
    iget-boolean v0, p0, Lorg/jpos/transaction/participant/QueryHost;->checkConnected:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/jpos/iso/MUX;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/jpos/transaction/participant/QueryHost;->waitTimeout:J

    add-long/2addr v2, v4

    .line 132
    .local v2, "timeout":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_2

    .line 133
    invoke-interface {p1}, Lorg/jpos/iso/MUX;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    return v1

    .line 135
    :cond_1
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    goto :goto_0

    .line 137
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 130
    .end local v2    # "timeout":J
    :cond_3
    :goto_1
    return v1
.end method

.method public prepare(JLjava/io/Serializable;)I
    .locals 17
    .param p1, "id"    # J
    .param p3, "ser"    # Ljava/io/Serializable;

    .line 56
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    check-cast v8, Lorg/jpos/transaction/Context;

    .line 58
    .local v8, "ctx":Lorg/jpos/transaction/Context;
    invoke-virtual {v8}, Lorg/jpos/transaction/Context;->getResult()Lorg/jpos/rc/Result;

    move-result-object v9

    .line 59
    .local v9, "result":Lorg/jpos/rc/Result;
    iget-object v0, v7, Lorg/jpos/transaction/participant/QueryHost;->destination:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lorg/jpos/transaction/Context;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 60
    .local v10, "ds":Ljava/lang/String;
    const/4 v0, 0x1

    const/4 v11, 0x0

    if-nez v10, :cond_0

    .line 61
    sget-object v1, Lorg/jpos/rc/CMF;->MISCONFIGURED_ENDPOINT:Lorg/jpos/rc/CMF;

    .line 62
    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, v7, Lorg/jpos/transaction/participant/QueryHost;->destination:Ljava/lang/String;

    aput-object v3, v0, v11

    .line 61
    const-string v3, "\'%s\' not present in Context"

    invoke-virtual {v9, v1, v2, v3, v0}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lorg/jpos/rc/Result;->FAIL()I

    move-result v0

    .line 61
    return v0

    .line 65
    :cond_0
    iget-object v1, v7, Lorg/jpos/transaction/participant/QueryHost;->cfg:Lorg/jpos/core/Configuration;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mux."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 66
    .local v12, "muxName":Ljava/lang/String;
    invoke-static {v12}, Lorg/jpos/util/NameRegistrar;->getIfExists(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lorg/jpos/iso/MUX;

    .line 67
    .local v13, "mux":Lorg/jpos/iso/MUX;
    if-nez v13, :cond_1

    .line 68
    sget-object v1, Lorg/jpos/rc/CMF;->MISCONFIGURED_ENDPOINT:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v12, v0, v11

    const-string v3, "MUX \'%s\' not found"

    invoke-virtual {v9, v1, v2, v3, v0}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/rc/Result;->FAIL()I

    move-result v0

    return v0

    .line 70
    :cond_1
    iget-object v1, v7, Lorg/jpos/transaction/participant/QueryHost;->requestName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lorg/jpos/transaction/Context;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lorg/jpos/iso/ISOMsg;

    .line 71
    .local v14, "m":Lorg/jpos/iso/ISOMsg;
    if-nez v14, :cond_2

    .line 72
    sget-object v1, Lorg/jpos/rc/CMF;->INVALID_REQUEST:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, v7, Lorg/jpos/transaction/participant/QueryHost;->requestName:Ljava/lang/String;

    aput-object v3, v0, v11

    const-string v3, "\'%s\' is null"

    invoke-virtual {v9, v1, v2, v3, v0}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/rc/Result;->FAIL()I

    move-result v0

    return v0

    .line 74
    :cond_2
    new-instance v1, Lorg/jpos/util/Chronometer;

    invoke-direct {v1}, Lorg/jpos/util/Chronometer;-><init>()V

    move-object v15, v1

    .line 75
    .local v15, "chronometer":Lorg/jpos/util/Chronometer;
    invoke-virtual {v7, v13}, Lorg/jpos/transaction/participant/QueryHost;->isConnected(Lorg/jpos/iso/MUX;)Z

    move-result v1

    const/16 v2, 0xc1

    if-eqz v1, :cond_6

    .line 76
    iget-wide v3, v7, Lorg/jpos/transaction/participant/QueryHost;->timeout:J

    invoke-virtual {v15}, Lorg/jpos/util/Chronometer;->elapsed()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 78
    .local v5, "t":J
    :try_start_0
    iget-boolean v1, v7, Lorg/jpos/transaction/participant/QueryHost;->continuations:Z
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_3

    .line 79
    move-object v1, v13

    move-object v2, v14

    move-wide v3, v5

    move-object/from16 v16, v12

    move-wide v11, v5

    .end local v5    # "t":J
    .end local v12    # "muxName":Ljava/lang/String;
    .local v11, "t":J
    .local v16, "muxName":Ljava/lang/String;
    move-object/from16 v5, p0

    move-object v6, v8

    :try_start_1
    invoke-interface/range {v1 .. v6}, Lorg/jpos/iso/MUX;->request(Lorg/jpos/iso/ISOMsg;JLorg/jpos/iso/ISOResponseListener;Ljava/lang/Object;)V

    .line 80
    const/16 v0, 0xc5

    return v0

    .line 82
    .end local v11    # "t":J
    .end local v16    # "muxName":Ljava/lang/String;
    .restart local v5    # "t":J
    .restart local v12    # "muxName":Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v12

    move-wide v11, v5

    .end local v5    # "t":J
    .end local v12    # "muxName":Ljava/lang/String;
    .restart local v11    # "t":J
    .restart local v16    # "muxName":Ljava/lang/String;
    invoke-interface {v13, v14, v11, v12}, Lorg/jpos/iso/MUX;->request(Lorg/jpos/iso/ISOMsg;J)Lorg/jpos/iso/ISOMsg;

    move-result-object v1

    .line 83
    .local v1, "resp":Lorg/jpos/iso/ISOMsg;
    if-eqz v1, :cond_4

    .line 84
    iget-object v0, v7, Lorg/jpos/transaction/participant/QueryHost;->responseName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    return v2

    .line 86
    :cond_4
    iget-boolean v3, v7, Lorg/jpos/transaction/participant/QueryHost;->ignoreUnreachable:Z

    if-eqz v3, :cond_5

    .line 87
    const-string v3, "MUX \'%s\' no response"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v16, v0, v4

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/jpos/transaction/Context;->log(Ljava/lang/Object;)V

    .line 94
    .end local v1    # "resp":Lorg/jpos/iso/ISOMsg;
    nop

    .line 95
    .end local v11    # "t":J
    goto :goto_1

    .line 89
    .restart local v1    # "resp":Lorg/jpos/iso/ISOMsg;
    .restart local v11    # "t":J
    :cond_5
    sget-object v2, Lorg/jpos/rc/CMF;->HOST_UNREACHABLE:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'%s\' does not respond"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v0, v5

    invoke-virtual {v9, v2, v3, v4, v0}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/rc/Result;->FAIL()I

    move-result v0
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 92
    .end local v1    # "resp":Lorg/jpos/iso/ISOMsg;
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v11    # "t":J
    .end local v16    # "muxName":Ljava/lang/String;
    .restart local v5    # "t":J
    .restart local v12    # "muxName":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v16, v12

    move-wide v11, v5

    .line 93
    .end local v5    # "t":J
    .end local v12    # "muxName":Ljava/lang/String;
    .local v0, "e":Lorg/jpos/iso/ISOException;
    .restart local v11    # "t":J
    .restart local v16    # "muxName":Ljava/lang/String;
    :goto_0
    sget-object v1, Lorg/jpos/rc/CMF;->SYSTEM_ERROR:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jpos/iso/ISOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v9, v1, v2, v3, v4}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/rc/Result;->FAIL()I

    move-result v1

    return v1

    .line 95
    .end local v0    # "e":Lorg/jpos/iso/ISOException;
    .end local v11    # "t":J
    .end local v16    # "muxName":Ljava/lang/String;
    .restart local v12    # "muxName":Ljava/lang/String;
    :cond_6
    move v4, v11

    move-object/from16 v16, v12

    .end local v12    # "muxName":Ljava/lang/String;
    .restart local v16    # "muxName":Ljava/lang/String;
    iget-boolean v1, v7, Lorg/jpos/transaction/participant/QueryHost;->ignoreUnreachable:Z

    if-eqz v1, :cond_7

    .line 96
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v16, v0, v4

    const-string v1, "MUX \'%s\' not connected"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/jpos/transaction/Context;->log(Ljava/lang/Object;)V

    .line 100
    :goto_1
    return v2

    .line 98
    :cond_7
    sget-object v1, Lorg/jpos/rc/CMF;->HOST_UNREACHABLE:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v16, v0, v4

    const-string v3, "\'%s\' is not connected"

    invoke-virtual {v9, v1, v2, v3, v0}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/rc/Result;->FAIL()I

    move-result v0

    return v0
.end method

.method public responseReceived(Lorg/jpos/iso/ISOMsg;Ljava/lang/Object;)V
    .locals 2
    .param p1, "resp"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "handBack"    # Ljava/lang/Object;

    .line 104
    move-object v0, p2

    check-cast v0, Lorg/jpos/transaction/Context;

    .line 105
    .local v0, "ctx":Lorg/jpos/transaction/Context;
    iget-object v1, p0, Lorg/jpos/transaction/participant/QueryHost;->responseName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v0}, Lorg/jpos/transaction/Context;->resume()V

    .line 107
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lorg/jpos/transaction/participant/QueryHost;->cfg:Lorg/jpos/core/Configuration;

    .line 118
    const-string v0, "timeout"

    const-wide/16 v1, 0x7530

    invoke-interface {p1, v0, v1, v2}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/transaction/participant/QueryHost;->timeout:J

    .line 119
    const-string v0, "wait-timeout"

    const-wide/16 v1, 0x3e8

    invoke-interface {p1, v0, v1, v2}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/transaction/participant/QueryHost;->waitTimeout:J

    .line 120
    sget-object v0, Lorg/jpos/transaction/ContextConstants;->REQUEST:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v0}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/QueryHost;->requestName:Ljava/lang/String;

    .line 121
    sget-object v0, Lorg/jpos/transaction/ContextConstants;->RESPONSE:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v0}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "response"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/QueryHost;->responseName:Ljava/lang/String;

    .line 122
    sget-object v0, Lorg/jpos/transaction/ContextConstants;->DESTINATION:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v0}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "destination"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/QueryHost;->destination:Ljava/lang/String;

    .line 123
    const-string v0, "continuations"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/transaction/participant/QueryHost;->continuations:Z

    .line 124
    const-string v0, "ignore-host-unreachable"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/transaction/participant/QueryHost;->ignoreUnreachable:Z

    .line 125
    iget-boolean v0, p0, Lorg/jpos/transaction/participant/QueryHost;->checkConnected:Z

    const-string v1, "check-connected"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/transaction/participant/QueryHost;->checkConnected:Z

    .line 126
    return-void
.end method
