.class public interface abstract Lorg/jpos/q2/iso/QMUXMBean;
.super Ljava/lang/Object;
.source "QMUXMBean.java"

# interfaces
.implements Lorg/jpos/q2/QBeanSupportMBean;


# virtual methods
.method public abstract getCountersAsString()Ljava/lang/String;
.end method

.method public abstract getIdleTimeInMillis()J
.end method

.method public abstract getInQueue()Ljava/lang/String;
.end method

.method public abstract getLastTxnTimestampInMillis()J
.end method

.method public abstract getOutQueue()Ljava/lang/String;
.end method

.method public abstract getRXCounter()I
.end method

.method public abstract getRXExpired()I
.end method

.method public abstract getRXForwarded()I
.end method

.method public abstract getRXPending()I
.end method

.method public abstract getRXUnhandled()I
.end method

.method public abstract getTXCounter()I
.end method

.method public abstract getTXExpired()I
.end method

.method public abstract getTXPending()I
.end method

.method public abstract getUnhandledQueue()Ljava/lang/String;
.end method

.method public abstract resetCounters()V
.end method

.method public abstract setInQueue(Ljava/lang/String;)V
.end method

.method public abstract setOutQueue(Ljava/lang/String;)V
.end method

.method public abstract setUnhandledQueue(Ljava/lang/String;)V
.end method
