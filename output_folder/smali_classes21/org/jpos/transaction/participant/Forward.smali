.class public Lorg/jpos/transaction/participant/Forward;
.super Ljava/lang/Object;
.source "Forward.java"

# interfaces
.implements Lorg/jpos/transaction/TransactionParticipant;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field queue:Ljava/lang/String;

.field sp:Lorg/jpos/space/Space;

.field timeout:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort(JLjava/io/Serializable;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 40
    return-void
.end method

.method public commit(JLjava/io/Serializable;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 39
    return-void
.end method

.method public prepare(JLjava/io/Serializable;)I
    .locals 4
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 36
    iget-object v0, p0, Lorg/jpos/transaction/participant/Forward;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/transaction/participant/Forward;->queue:Ljava/lang/String;

    iget-wide v2, p0, Lorg/jpos/transaction/participant/Forward;->timeout:J

    invoke-interface {v0, v1, p3, v2, v3}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 37
    const/16 v0, 0xc1

    return v0
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 45
    const-string v0, "space"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/Forward;->sp:Lorg/jpos/space/Space;

    .line 46
    const-string v0, "queue"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/Forward;->queue:Ljava/lang/String;

    .line 47
    if-eqz v0, :cond_0

    .line 49
    const-wide/32 v0, 0xea60

    const-string v2, "timeout"

    invoke-interface {p1, v2, v0, v1}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/transaction/participant/Forward;->timeout:J

    .line 50
    return-void

    .line 48
    :cond_0
    new-instance v0, Lorg/jpos/core/ConfigurationException;

    const-string v1, "Unspecified queue"

    invoke-direct {v0, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
