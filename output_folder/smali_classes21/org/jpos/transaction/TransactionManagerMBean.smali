.class public interface abstract Lorg/jpos/transaction/TransactionManagerMBean;
.super Ljava/lang/Object;
.source "TransactionManagerMBean.java"

# interfaces
.implements Lorg/jpos/q2/QBeanSupportMBean;


# virtual methods
.method public abstract getActiveSessions()I
.end method

.method public abstract getActiveTransactions()I
.end method

.method public abstract getDebug()Z
.end method

.method public abstract getDebugContext()Z
.end method

.method public abstract getHead()J
.end method

.method public abstract getMaxSessions()I
.end method

.method public abstract getOutstandingTransactions()I
.end method

.method public abstract getPausedCounter()I
.end method

.method public abstract getTPSAsString()Ljava/lang/String;
.end method

.method public abstract getTPSAvg()F
.end method

.method public abstract getTPSElapsed()J
.end method

.method public abstract getTPSPeak()I
.end method

.method public abstract getTPSPeakWhen()Ljava/util/Date;
.end method

.method public abstract getTail()J
.end method

.method public abstract resetTPS()V
.end method

.method public abstract setDebug(Z)V
.end method

.method public abstract setDebugContext(Z)V
.end method
