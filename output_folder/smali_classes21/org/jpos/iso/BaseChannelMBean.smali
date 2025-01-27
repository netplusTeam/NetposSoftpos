.class public interface abstract Lorg/jpos/iso/BaseChannelMBean;
.super Ljava/lang/Object;
.source "BaseChannelMBean.java"


# virtual methods
.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract isConnected()Z
.end method

.method public abstract reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setHost(Ljava/lang/String;)V
.end method

.method public abstract setPort(I)V
.end method
