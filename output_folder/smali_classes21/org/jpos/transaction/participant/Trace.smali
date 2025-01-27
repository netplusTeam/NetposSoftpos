.class public Lorg/jpos/transaction/participant/Trace;
.super Ljava/lang/Object;
.source "Trace.java"

# interfaces
.implements Lorg/jpos/transaction/AbortParticipant;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field trace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort(JLjava/io/Serializable;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 40
    move-object v0, p3

    check-cast v0, Lorg/jpos/transaction/Context;

    .line 41
    .local v0, "ctx":Lorg/jpos/transaction/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abort:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/transaction/participant/Trace;->trace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/transaction/Context;->checkPoint(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public commit(JLjava/io/Serializable;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 36
    move-object v0, p3

    check-cast v0, Lorg/jpos/transaction/Context;

    .line 37
    .local v0, "ctx":Lorg/jpos/transaction/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/transaction/participant/Trace;->trace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/transaction/Context;->checkPoint(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public prepare(JLjava/io/Serializable;)I
    .locals 3
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 31
    move-object v0, p3

    check-cast v0, Lorg/jpos/transaction/Context;

    .line 32
    .local v0, "ctx":Lorg/jpos/transaction/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/transaction/participant/Trace;->trace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/transaction/Context;->checkPoint(Ljava/lang/String;)V

    .line 33
    const/16 v1, 0x81

    return v1
.end method

.method public prepareForAbort(JLjava/io/Serializable;)I
    .locals 3
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 44
    move-object v0, p3

    check-cast v0, Lorg/jpos/transaction/Context;

    .line 45
    .local v0, "ctx":Lorg/jpos/transaction/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareForAbort:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/transaction/participant/Trace;->trace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/transaction/Context;->checkPoint(Ljava/lang/String;)V

    .line 46
    const/16 v1, 0x81

    return v1
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/Trace;->trace:Ljava/lang/String;

    .line 50
    return-void
.end method
