.class public Lorg/jpos/transaction/participant/Pause;
.super Ljava/lang/Object;
.source "Pause.java"

# interfaces
.implements Lorg/jpos/transaction/TransactionParticipant;
.implements Lorg/jpos/core/Configurable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/transaction/participant/Pause$Resumer;
    }
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private timeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jpos/transaction/participant/Pause;->timeout:J

    .line 33
    invoke-static {}, Lorg/jpos/util/ConcurrentUtil;->newScheduledThreadPoolExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/Pause;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public prepare(JLjava/io/Serializable;)I
    .locals 6
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 36
    move-object v0, p3

    check-cast v0, Lorg/jpos/transaction/Context;

    .line 37
    .local v0, "ctx":Lorg/jpos/transaction/Context;
    iget-object v1, p0, Lorg/jpos/transaction/participant/Pause;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lorg/jpos/transaction/participant/Pause$Resumer;

    invoke-direct {v2, v0}, Lorg/jpos/transaction/participant/Pause$Resumer;-><init>(Lorg/jpos/transaction/Context;)V

    iget-wide v3, p0, Lorg/jpos/transaction/participant/Pause;->timeout:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 38
    const/16 v1, 0xc5

    return v1
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;

    .line 42
    const-string v0, "timeout"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/transaction/participant/Pause;->timeout:J

    .line 43
    return-void
.end method
