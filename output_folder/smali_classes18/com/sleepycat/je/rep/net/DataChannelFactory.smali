.class public interface abstract Lcom/sleepycat/je/rep/net/DataChannelFactory;
.super Ljava/lang/Object;
.source "DataChannelFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;
    }
.end annotation


# virtual methods
.method public abstract acceptChannel(Ljava/nio/channels/SocketChannel;)Lcom/sleepycat/je/rep/net/DataChannel;
.end method

.method public abstract connect(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;)Lcom/sleepycat/je/rep/net/DataChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
