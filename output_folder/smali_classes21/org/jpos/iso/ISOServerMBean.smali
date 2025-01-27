.class public interface abstract Lorg/jpos/iso/ISOServerMBean;
.super Ljava/lang/Object;
.source "ISOServerMBean.java"

# interfaces
.implements Lorg/jpos/util/ThreadPoolMBean;


# virtual methods
.method public abstract getConnectionCount()I
.end method

.method public abstract getCountersAsString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getISOChannelNames()Ljava/lang/String;
.end method

.method public abstract getIdleTimeInMillis()J
.end method

.method public abstract getLastTxnTimestampInMillis()J
.end method

.method public abstract getPort()I
.end method

.method public abstract getRXCounter()I
.end method

.method public abstract getTXCounter()I
.end method

.method public abstract resetCounters()V
.end method
