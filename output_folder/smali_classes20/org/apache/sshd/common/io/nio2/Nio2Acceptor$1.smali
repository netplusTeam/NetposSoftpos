.class Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;
.super Ljava/lang/Object;
.source "Nio2Acceptor.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->protectInProgressBinding(Ljava/net/SocketAddress;Ljava/nio/channels/AsynchronousServerSocketChannel;)Ljava/io/Closeable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

.field final synthetic val$address:Ljava/net/SocketAddress;

.field final synthetic val$asyncChannel:Ljava/nio/channels/AsynchronousServerSocketChannel;

.field final synthetic val$debugEnabled:Z


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;Ljava/nio/channels/AsynchronousServerSocketChannel;ZLjava/net/SocketAddress;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 125
    iput-object p1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    iput-object p2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->val$asyncChannel:Ljava/nio/channels/AsynchronousServerSocketChannel;

    iput-boolean p3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->val$debugEnabled:Z

    iput-object p4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->val$address:Ljava/net/SocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    const-string v0, "protectInProgressBinding({}) auto-close"

    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->val$asyncChannel:Ljava/nio/channels/AsynchronousServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/AsynchronousServerSocketChannel;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 133
    .local v1, "local":Ljava/net/SocketAddress;
    if-eqz v1, :cond_1

    .line 134
    iget-boolean v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->val$debugEnabled:Z

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v2}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$000(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "protectInProgressBinding({}) remove {} binding"

    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->val$address:Ljava/net/SocketAddress;

    invoke-interface {v2, v3, v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    iget-object v2, v2, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->channels:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v1    # "local":Ljava/net/SocketAddress;
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->val$debugEnabled:Z

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v1}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$100(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->val$address:Ljava/net/SocketAddress;

    invoke-interface {v1, v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    :cond_2
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->val$asyncChannel:Ljava/nio/channels/AsynchronousServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/AsynchronousServerSocketChannel;->close()V

    .line 145
    nop

    .line 151
    goto :goto_0

    .line 140
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->val$debugEnabled:Z

    if-eqz v2, :cond_3

    .line 141
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v2}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$100(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->val$address:Ljava/net/SocketAddress;

    invoke-interface {v2, v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    :cond_3
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->val$asyncChannel:Ljava/nio/channels/AsynchronousServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/AsynchronousServerSocketChannel;->close()V

    .line 145
    throw v1
    :try_end_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/nio/channels/ClosedChannelException;
    iget-boolean v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->val$debugEnabled:Z

    if-eqz v1, :cond_4

    .line 149
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v1}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$200(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protectInProgressBinding("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->val$address:Ljava/net/SocketAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ignore close channel exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .end local v0    # "e":Ljava/nio/channels/ClosedChannelException;
    :cond_4
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protectInProgressBinding("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$1;->val$address:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
