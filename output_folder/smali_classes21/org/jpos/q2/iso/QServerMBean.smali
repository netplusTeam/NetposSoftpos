.class public interface abstract Lorg/jpos/q2/iso/QServerMBean;
.super Ljava/lang/Object;
.source "QServerMBean.java"

# interfaces
.implements Lorg/jpos/q2/QBeanSupportMBean;


# virtual methods
.method public abstract getChannel()Ljava/lang/String;
.end method

.method public abstract getCountersAsString()Ljava/lang/String;
.end method

.method public abstract getCountersAsString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getISOChannelNames()Ljava/lang/String;
.end method

.method public abstract getMaxSessions()I
.end method

.method public abstract getMinSessions()I
.end method

.method public abstract getPackager()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getSocketFactory()Ljava/lang/String;
.end method

.method public abstract setChannel(Ljava/lang/String;)V
.end method

.method public abstract setMaxSessions(I)V
.end method

.method public abstract setMinSessions(I)V
.end method

.method public abstract setPackager(Ljava/lang/String;)V
.end method

.method public abstract setPort(I)V
.end method

.method public abstract setSocketFactory(Ljava/lang/String;)V
.end method
