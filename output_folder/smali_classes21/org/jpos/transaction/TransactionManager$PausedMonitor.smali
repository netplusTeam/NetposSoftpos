.class public Lorg/jpos/transaction/TransactionManager$PausedMonitor;
.super Ljava/util/TimerTask;
.source "TransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/transaction/TransactionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PausedMonitor"
.end annotation


# instance fields
.field context:Lorg/jpos/transaction/Pausable;


# direct methods
.method public constructor <init>(Lorg/jpos/transaction/Pausable;)V
    .locals 0
    .param p1, "context"    # Lorg/jpos/transaction/Pausable;

    .line 1007
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1008
    iput-object p1, p0, Lorg/jpos/transaction/TransactionManager$PausedMonitor;->context:Lorg/jpos/transaction/Pausable;

    .line 1009
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1012
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager$PausedMonitor;->cancel()Z

    .line 1013
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager$PausedMonitor;->context:Lorg/jpos/transaction/Pausable;

    invoke-interface {v0}, Lorg/jpos/transaction/Pausable;->getPausedTransaction()Lorg/jpos/transaction/PausedTransaction;

    move-result-object v0

    .line 1014
    .local v0, "paused":Lorg/jpos/transaction/PausedTransaction;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jpos/transaction/PausedTransaction;->getTransactionManager()Lorg/jpos/transaction/TransactionManager;

    move-result-object v1

    iget-boolean v1, v1, Lorg/jpos/transaction/TransactionManager;->abortOnPauseTimeout:Z

    if-eqz v1, :cond_0

    .line 1015
    invoke-virtual {v0}, Lorg/jpos/transaction/PausedTransaction;->forceAbort()V

    .line 1016
    :cond_0
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager$PausedMonitor;->context:Lorg/jpos/transaction/Pausable;

    invoke-interface {v1}, Lorg/jpos/transaction/Pausable;->resume()V

    .line 1017
    return-void
.end method
