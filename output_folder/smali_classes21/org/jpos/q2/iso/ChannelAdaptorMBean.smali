.class public interface abstract Lorg/jpos/q2/iso/ChannelAdaptorMBean;
.super Ljava/lang/Object;
.source "ChannelAdaptorMBean.java"

# interfaces
.implements Lorg/jpos/q2/QBeanSupportMBean;


# virtual methods
.method public abstract getConnectsCounter()I
.end method

.method public abstract getCountersAsString()Ljava/lang/String;
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getIdleTimeInMillis()J
.end method

.method public abstract getInQueue()Ljava/lang/String;
.end method

.method public abstract getLastTxnTimestampInMillis()J
.end method

.method public abstract getOutQueue()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getRXCounter()I
.end method

.method public abstract getReconnectDelay()J
.end method

.method public abstract getSocketFactory()Ljava/lang/String;
.end method

.method public abstract getTXCounter()I
.end method

.method public abstract isConnected()Z
.end method

.method public abstract resetCounters()V
.end method

.method public abstract setHost(Ljava/lang/String;)V
.end method

.method public abstract setInQueue(Ljava/lang/String;)V
.end method

.method public abstract setOutQueue(Ljava/lang/String;)V
.end method

.method public abstract setPort(I)V
.end method

.method public abstract setReconnectDelay(J)V
.end method

.method public abstract setSocketFactory(Ljava/lang/String;)V
.end method
