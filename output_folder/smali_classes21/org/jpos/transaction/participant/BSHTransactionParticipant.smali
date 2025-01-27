.class public Lorg/jpos/transaction/participant/BSHTransactionParticipant;
.super Lorg/jpos/util/SimpleLogSource;
.source "BSHTransactionParticipant.java"

# interfaces
.implements Lorg/jpos/transaction/TransactionParticipant;
.implements Lorg/jpos/transaction/AbortParticipant;
.implements Lorg/jpos/core/XmlConfigurable;


# instance fields
.field protected abortMethod:Lorg/jpos/transaction/participant/BSHMethod;

.field protected commitMethod:Lorg/jpos/transaction/participant/BSHMethod;

.field protected prepareForAbortMethod:Lorg/jpos/transaction/participant/BSHMethod;

.field protected prepareMethod:Lorg/jpos/transaction/participant/BSHMethod;

.field trace:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/jpos/util/SimpleLogSource;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public abort(JLjava/io/Serializable;)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 72
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "abort"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 73
    .local v0, "ev":Lorg/jpos/util/LogEvent;
    iget-object v3, p0, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->abortMethod:Lorg/jpos/transaction/participant/BSHMethod;

    if-eqz v3, :cond_0

    .line 75
    :try_start_0
    const-string v8, ""

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, v0

    invoke-virtual/range {v2 .. v8}, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->executeMethod(Lorg/jpos/transaction/participant/BSHMethod;JLjava/io/Serializable;Lorg/jpos/util/LogEvent;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 78
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->defaultAbort(JLjava/io/Serializable;Lorg/jpos/util/LogEvent;)V

    .line 82
    :goto_1
    iget-boolean v1, p0, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->trace:Z

    if-eqz v1, :cond_1

    .line 83
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 84
    :cond_1
    return-void
.end method

.method public commit(JLjava/io/Serializable;)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 89
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "commit"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 90
    .local v0, "ev":Lorg/jpos/util/LogEvent;
    iget-object v3, p0, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->commitMethod:Lorg/jpos/transaction/participant/BSHMethod;

    if-eqz v3, :cond_0

    .line 92
    :try_start_0
    const-string v8, ""

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, v0

    invoke-virtual/range {v2 .. v8}, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->executeMethod(Lorg/jpos/transaction/participant/BSHMethod;JLjava/io/Serializable;Lorg/jpos/util/LogEvent;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 95
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 97
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->defaultCommit(JLjava/io/Serializable;Lorg/jpos/util/LogEvent;)V

    .line 99
    :goto_1
    iget-boolean v1, p0, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->trace:Z

    if-eqz v1, :cond_1

    .line 100
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 101
    :cond_1
    return-void
.end method

.method protected defaultAbort(JLjava/io/Serializable;Lorg/jpos/util/LogEvent;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;
    .param p4, "ev"    # Lorg/jpos/util/LogEvent;

    .line 86
    return-void
.end method

.method protected defaultCommit(JLjava/io/Serializable;Lorg/jpos/util/LogEvent;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;
    .param p4, "ev"    # Lorg/jpos/util/LogEvent;

    .line 103
    return-void
.end method

.method protected defaultPrepare(JLjava/io/Serializable;Lorg/jpos/util/LogEvent;)I
    .locals 1
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;
    .param p4, "ev"    # Lorg/jpos/util/LogEvent;

    .line 140
    const/16 v0, 0x81

    return v0
.end method

.method protected executeMethod(Lorg/jpos/transaction/participant/BSHMethod;JLjava/io/Serializable;Lorg/jpos/util/LogEvent;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "m"    # Lorg/jpos/transaction/participant/BSHMethod;
    .param p2, "id"    # J
    .param p4, "context"    # Ljava/io/Serializable;
    .param p5, "evt"    # Lorg/jpos/util/LogEvent;
    .param p6, "resultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    .local v0, "params":Ljava/util/Map;
    const-string v1, "context"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "evt"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "self"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p1, v0, p6}, Lorg/jpos/transaction/participant/BSHMethod;->execute(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public prepare(JLjava/io/Serializable;)I
    .locals 9
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 106
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "prepare"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 107
    .local v0, "ev":Lorg/jpos/util/LogEvent;
    const/16 v1, 0x80

    .line 108
    .local v1, "result":I
    iget-object v3, p0, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->prepareMethod:Lorg/jpos/transaction/participant/BSHMethod;

    if-eqz v3, :cond_0

    .line 110
    :try_start_0
    const-string v8, "result"

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, v0

    invoke-virtual/range {v2 .. v8}, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->executeMethod(Lorg/jpos/transaction/participant/BSHMethod;JLjava/io/Serializable;Lorg/jpos/util/LogEvent;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v0, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 113
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 115
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->defaultPrepare(JLjava/io/Serializable;Lorg/jpos/util/LogEvent;)I

    move-result v1

    .line 117
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v0, v3, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-boolean v2, p0, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->trace:Z

    if-eqz v2, :cond_1

    .line 119
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 120
    :cond_1
    return v1
.end method

.method public prepareForAbort(JLjava/io/Serializable;)I
    .locals 9
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 124
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "prepare-for-abort"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 125
    .local v0, "ev":Lorg/jpos/util/LogEvent;
    const/16 v1, 0x80

    .line 126
    .local v1, "result":I
    iget-object v3, p0, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->prepareForAbortMethod:Lorg/jpos/transaction/participant/BSHMethod;

    if-eqz v3, :cond_0

    .line 128
    :try_start_0
    const-string v8, "result"

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, v0

    invoke-virtual/range {v2 .. v8}, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->executeMethod(Lorg/jpos/transaction/participant/BSHMethod;JLjava/io/Serializable;Lorg/jpos/util/LogEvent;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 131
    goto :goto_0

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v0, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 133
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v0, v3, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-boolean v2, p0, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->trace:Z

    if-eqz v2, :cond_1

    .line 135
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 136
    :cond_1
    return v1
.end method

.method public setConfiguration(Lorg/jdom2/Element;)V
    .locals 3
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 145
    :try_start_0
    const-string v0, "prepare"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/transaction/participant/BSHMethod;->createBshMethod(Lorg/jdom2/Element;)Lorg/jpos/transaction/participant/BSHMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->prepareMethod:Lorg/jpos/transaction/participant/BSHMethod;

    .line 146
    const-string v0, "prepare-for-abort"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/transaction/participant/BSHMethod;->createBshMethod(Lorg/jdom2/Element;)Lorg/jpos/transaction/participant/BSHMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->prepareForAbortMethod:Lorg/jpos/transaction/participant/BSHMethod;

    .line 147
    const-string v0, "commit"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/transaction/participant/BSHMethod;->createBshMethod(Lorg/jdom2/Element;)Lorg/jpos/transaction/participant/BSHMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->commitMethod:Lorg/jpos/transaction/participant/BSHMethod;

    .line 148
    const-string v0, "abort"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/transaction/participant/BSHMethod;->createBshMethod(Lorg/jdom2/Element;)Lorg/jpos/transaction/participant/BSHMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->abortMethod:Lorg/jpos/transaction/participant/BSHMethod;

    .line 149
    const-string v0, "yes"

    const-string v1, "trace"

    invoke-static {p1, v1}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/transaction/participant/BSHTransactionParticipant;->trace:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    nop

    .line 153
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
