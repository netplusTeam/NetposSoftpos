.class public Lorg/jpos/transaction/participant/Delay;
.super Ljava/lang/Object;
.source "Delay.java"

# interfaces
.implements Lorg/jpos/transaction/TransactionParticipant;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field abortDelay:J

.field commitDelay:J

.field prepareDelay:J

.field random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jpos/transaction/participant/Delay;->prepareDelay:J

    .line 31
    iput-wide v0, p0, Lorg/jpos/transaction/participant/Delay;->commitDelay:J

    .line 32
    iput-wide v0, p0, Lorg/jpos/transaction/participant/Delay;->abortDelay:J

    return-void
.end method


# virtual methods
.method public abort(JLjava/io/Serializable;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 44
    iget-wide v0, p0, Lorg/jpos/transaction/participant/Delay;->abortDelay:J

    invoke-virtual {p0, v0, v1}, Lorg/jpos/transaction/participant/Delay;->sleep(J)V

    .line 45
    return-void
.end method

.method public commit(JLjava/io/Serializable;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 40
    iget-wide v0, p0, Lorg/jpos/transaction/participant/Delay;->commitDelay:J

    invoke-virtual {p0, v0, v1}, Lorg/jpos/transaction/participant/Delay;->sleep(J)V

    .line 41
    return-void
.end method

.method public prepare(JLjava/io/Serializable;)I
    .locals 2
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 35
    iget-wide v0, p0, Lorg/jpos/transaction/participant/Delay;->prepareDelay:J

    invoke-virtual {p0, v0, v1}, Lorg/jpos/transaction/participant/Delay;->sleep(J)V

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 48
    const-string v0, "prepare-delay"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/transaction/participant/Delay;->prepareDelay:J

    .line 49
    const-string v0, "commit-delay"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/transaction/participant/Delay;->commitDelay:J

    .line 50
    const-string v0, "abort-delay"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/transaction/participant/Delay;->abortDelay:J

    .line 51
    const-string v0, "random"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/jpos/transaction/participant/Delay;->random:Ljava/util/Random;

    .line 52
    return-void
.end method

.method sleep(J)V
    .locals 2
    .param p1, "delay"    # J

    .line 54
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 56
    :try_start_0
    iget-object v0, p0, Lorg/jpos/transaction/participant/Delay;->random:Ljava/util/Random;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    double-to-long v0, v0

    mul-long/2addr v0, p1

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    .line 59
    :cond_1
    :goto_1
    return-void
.end method
