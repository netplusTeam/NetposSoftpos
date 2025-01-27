.class public Lorg/jpos/transaction/participant/CheckPoint;
.super Ljava/lang/Object;
.source "CheckPoint.java"

# interfaces
.implements Lorg/jpos/transaction/TransactionParticipant;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field cfg:Lorg/jpos/core/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort(JLjava/io/Serializable;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 37
    return-void
.end method

.method public commit(JLjava/io/Serializable;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 36
    return-void
.end method

.method public prepare(JLjava/io/Serializable;)I
    .locals 4
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 31
    instance-of v0, p3, Lorg/jpos/transaction/Context;

    if-eqz v0, :cond_0

    .line 32
    move-object v0, p3

    check-cast v0, Lorg/jpos/transaction/Context;

    iget-object v1, p0, Lorg/jpos/transaction/participant/CheckPoint;->cfg:Lorg/jpos/core/Configuration;

    const-string v2, "message"

    const-string v3, "checkpoint"

    invoke-interface {v1, v2, v3}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/transaction/Context;->checkPoint(Ljava/lang/String;)V

    .line 34
    :cond_0
    const/16 v0, 0xc1

    return v0
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;

    .line 39
    iput-object p1, p0, Lorg/jpos/transaction/participant/CheckPoint;->cfg:Lorg/jpos/core/Configuration;

    .line 40
    return-void
.end method
