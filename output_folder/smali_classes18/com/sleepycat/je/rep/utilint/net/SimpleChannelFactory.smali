.class public Lcom/sleepycat/je/rep/utilint/net/SimpleChannelFactory;
.super Ljava/lang/Object;
.source "SimpleChannelFactory.java"

# interfaces
.implements Lcom/sleepycat/je/rep/net/DataChannelFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/net/InstanceParams;)V
    .locals 0
    .param p1, "unusedParams"    # Lcom/sleepycat/je/rep/net/InstanceParams;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public acceptChannel(Ljava/nio/channels/SocketChannel;)Lcom/sleepycat/je/rep/net/DataChannel;
    .locals 1
    .param p1, "socketChannel"    # Ljava/nio/channels/SocketChannel;

    .line 43
    new-instance v0, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;-><init>(Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method

.method public connect(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;)Lcom/sleepycat/je/rep/net/DataChannel;
    .locals 2
    .param p1, "addr"    # Ljava/net/InetSocketAddress;
    .param p2, "localAddr"    # Ljava/net/InetSocketAddress;
    .param p3, "connectOptions"    # Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    nop

    .line 53
    invoke-static {p1, p2, p3}, Lcom/sleepycat/je/rep/utilint/RepUtils;->openSocketChannel(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 54
    .local v0, "socketChannel":Ljava/nio/channels/SocketChannel;
    new-instance v1, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;

    invoke-direct {v1, v0}, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;-><init>(Ljava/nio/channels/SocketChannel;)V

    return-object v1
.end method
