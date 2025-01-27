.class public Lorg/jpos/transaction/participant/JSParticipant;
.super Lorg/jpos/util/Log;
.source "JSParticipant.java"

# interfaces
.implements Lorg/jpos/transaction/TransactionParticipant;
.implements Lorg/jpos/transaction/AbortParticipant;
.implements Lorg/jpos/core/XmlConfigurable;


# instance fields
.field hasAbort:Z

.field hasCommit:Z

.field hasPrepare:Z

.field hasPrepareForAbort:Z

.field private js:Ljavax/script/Invocable;

.field trace:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lorg/jpos/util/Log;-><init>()V

    return-void
.end method

.method private hasFunction(Ljava/lang/String;)Z
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/jpos/transaction/participant/JSParticipant;->js:Ljavax/script/Invocable;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    new-instance v3, Lorg/jpos/transaction/Context;

    invoke-direct {v3}, Lorg/jpos/transaction/Context;-><init>()V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-interface {v1, p1, v2}, Ljavax/script/Invocable;->invokeFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/script/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return v4

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljavax/script/ScriptException;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v1, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 127
    .end local v0    # "e":Ljavax/script/ScriptException;
    :catch_1
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method private invokeNoResult(Ljava/lang/String;JLjava/io/Serializable;)V
    .locals 4
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "context"    # Ljava/io/Serializable;

    .line 149
    :try_start_0
    iget-object v0, p0, Lorg/jpos/transaction/participant/JSParticipant;->js:Ljavax/script/Invocable;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-interface {v0, p1, v1}, Ljavax/script/Invocable;->invokeFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, p4, Lorg/jpos/transaction/Context;

    if-eqz v1, :cond_0

    .line 152
    move-object v1, p4

    check-cast v1, Lorg/jpos/transaction/Context;

    .line 153
    .local v1, "ctx":Lorg/jpos/transaction/Context;
    invoke-virtual {v1, v0}, Lorg/jpos/transaction/Context;->log(Ljava/lang/Object;)V

    .line 154
    .end local v1    # "ctx":Lorg/jpos/transaction/Context;
    goto :goto_0

    .line 155
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/jpos/transaction/participant/JSParticipant;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private invokeWithResult(Ljava/lang/String;JLjava/io/Serializable;)I
    .locals 4
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "context"    # Ljava/io/Serializable;

    .line 136
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/jpos/transaction/participant/JSParticipant;->js:Ljavax/script/Invocable;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-interface {v1, p1, v2}, Ljavax/script/Invocable;->invokeFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    instance-of v2, p4, Lorg/jpos/transaction/Context;

    if-eqz v2, :cond_0

    .line 139
    move-object v2, p4

    check-cast v2, Lorg/jpos/transaction/Context;

    .line 140
    .local v2, "ctx":Lorg/jpos/transaction/Context;
    invoke-virtual {v2, v1}, Lorg/jpos/transaction/Context;->log(Ljava/lang/Object;)V

    .line 141
    .end local v2    # "ctx":Lorg/jpos/transaction/Context;
    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/jpos/transaction/participant/JSParticipant;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    :goto_0
    return v0
.end method


# virtual methods
.method public abort(JLjava/io/Serializable;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 104
    iget-boolean v0, p0, Lorg/jpos/transaction/participant/JSParticipant;->hasAbort:Z

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "abort"

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jpos/transaction/participant/JSParticipant;->invokeNoResult(Ljava/lang/String;JLjava/io/Serializable;)V

    .line 106
    :cond_0
    return-void
.end method

.method public commit(JLjava/io/Serializable;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 99
    iget-boolean v0, p0, Lorg/jpos/transaction/participant/JSParticipant;->hasCommit:Z

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "commit"

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jpos/transaction/participant/JSParticipant;->invokeNoResult(Ljava/lang/String;JLjava/io/Serializable;)V

    .line 101
    :cond_0
    return-void
.end method

.method public prepare(JLjava/io/Serializable;)I
    .locals 1
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 93
    iget-boolean v0, p0, Lorg/jpos/transaction/participant/JSParticipant;->hasPrepare:Z

    if-eqz v0, :cond_0

    const-string v0, "prepare"

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jpos/transaction/participant/JSParticipant;->invokeWithResult(Ljava/lang/String;JLjava/io/Serializable;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x81

    :goto_0
    return v0
.end method

.method public prepareForAbort(JLjava/io/Serializable;)I
    .locals 1
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 96
    iget-boolean v0, p0, Lorg/jpos/transaction/participant/JSParticipant;->hasPrepareForAbort:Z

    if-eqz v0, :cond_0

    const-string v0, "prepareForAbort"

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jpos/transaction/participant/JSParticipant;->invokeWithResult(Ljava/lang/String;JLjava/io/Serializable;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x81

    :goto_0
    return v0
.end method

.method public setConfiguration(Lorg/jdom2/Element;)V
    .locals 4
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 109
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "src"

    invoke-static {p1, v1}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .local v0, "src":Ljava/io/FileReader;
    :try_start_1
    const-string v1, "yes"

    const-string v2, "trace"

    invoke-static {p1, v2}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/jpos/transaction/participant/JSParticipant;->trace:Z

    .line 111
    new-instance v1, Ljavax/script/ScriptEngineManager;

    invoke-direct {v1}, Ljavax/script/ScriptEngineManager;-><init>()V

    const-string v2, "nashorn"

    invoke-virtual {v1, v2}, Ljavax/script/ScriptEngineManager;->getEngineByName(Ljava/lang/String;)Ljavax/script/ScriptEngine;

    move-result-object v1

    .line 112
    .local v1, "engine":Ljavax/script/ScriptEngine;
    invoke-interface {v1, v0}, Ljavax/script/ScriptEngine;->eval(Ljava/io/Reader;)Ljava/lang/Object;

    .line 113
    move-object v2, v1

    check-cast v2, Ljavax/script/Invocable;

    iput-object v2, p0, Lorg/jpos/transaction/participant/JSParticipant;->js:Ljavax/script/Invocable;

    .line 114
    const-string v2, "prepare"

    invoke-direct {p0, v2}, Lorg/jpos/transaction/participant/JSParticipant;->hasFunction(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/jpos/transaction/participant/JSParticipant;->hasPrepare:Z

    .line 115
    const-string v2, "prepareForAbort"

    invoke-direct {p0, v2}, Lorg/jpos/transaction/participant/JSParticipant;->hasFunction(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/jpos/transaction/participant/JSParticipant;->hasPrepareForAbort:Z

    .line 116
    const-string v2, "commit"

    invoke-direct {p0, v2}, Lorg/jpos/transaction/participant/JSParticipant;->hasFunction(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/jpos/transaction/participant/JSParticipant;->hasCommit:Z

    .line 117
    const-string v2, "abort"

    invoke-direct {p0, v2}, Lorg/jpos/transaction/participant/JSParticipant;->hasFunction(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/jpos/transaction/participant/JSParticipant;->hasAbort:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local v1    # "engine":Ljavax/script/ScriptEngine;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    .end local v0    # "src":Ljava/io/FileReader;
    nop

    .line 121
    return-void

    .line 109
    .restart local v0    # "src":Ljava/io/FileReader;
    :catchall_0
    move-exception v1

    .end local v0    # "src":Ljava/io/FileReader;
    .end local p1    # "e":Lorg/jdom2/Element;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    .restart local v0    # "src":Ljava/io/FileReader;
    .restart local p1    # "e":Lorg/jdom2/Element;
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "e":Lorg/jdom2/Element;
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .end local v0    # "src":Ljava/io/FileReader;
    .restart local p1    # "e":Lorg/jdom2/Element;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
