.class public abstract Lorg/apache/sshd/server/forward/TcpipServerChannel$TcpipFactory;
.super Ljava/lang/Object;
.source "TcpipServerChannel.java"

# interfaces
.implements Lorg/apache/sshd/common/channel/ChannelFactory;
.implements Lorg/apache/sshd/common/util/threads/ExecutorServiceCarrier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/server/forward/TcpipServerChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TcpipFactory"
.end annotation


# instance fields
.field private final type:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;)V
    .locals 0
    .param p1, "type"    # Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$TcpipFactory;->type:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    .line 73
    return-void
.end method


# virtual methods
.method public createChannel(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/channel/Channel;
    .locals 3
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Lorg/apache/sshd/server/forward/TcpipServerChannel;

    invoke-virtual {p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel$TcpipFactory;->getType()Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel$TcpipFactory;->getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->noClose(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/server/forward/TcpipServerChannel;-><init>(Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    return-object v0
.end method

.method public getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .locals 1

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$TcpipFactory;->type:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    invoke-virtual {v0}, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$TcpipFactory;->type:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    return-object v0
.end method
