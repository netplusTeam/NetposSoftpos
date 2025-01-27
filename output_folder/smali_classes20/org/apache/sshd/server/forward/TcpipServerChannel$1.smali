.class Lorg/apache/sshd/server/forward/TcpipServerChannel$1;
.super Ljava/lang/Object;
.source "TcpipServerChannel.java"

# interfaces
.implements Lorg/apache/sshd/common/io/IoHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/server/forward/TcpipServerChannel;->doInit(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/client/future/OpenFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

.field final synthetic val$debugEnabled:Z


# direct methods
.method constructor <init>(Lorg/apache/sshd/server/forward/TcpipServerChannel;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/server/forward/TcpipServerChannel;

    .line 200
    iput-object p1, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$1;->this$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

    iput-boolean p2, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$1;->val$debugEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/sshd/common/io/IoSession;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    invoke-interface {p1}, Lorg/apache/sshd/common/io/IoSession;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 230
    .local v0, "immediately":Z
    iget-boolean v2, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$1;->val$debugEnabled:Z

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$1;->this$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

    invoke-static {v2}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->access$200(Lorg/apache/sshd/server/forward/TcpipServerChannel;)Lorg/slf4j/Logger;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$1;->this$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

    aput-object v5, v3, v4

    .line 232
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 231
    const-string v1, "exceptionCaught({}) signal close immediately={} due to {}[{}]"

    invoke-interface {v2, v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$1;->this$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

    invoke-virtual {v1, v0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 235
    return-void
.end method

.method public messageReceived(Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/util/Readable;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .param p2, "message"    # Lorg/apache/sshd/common/util/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$1;->this$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

    invoke-virtual {v0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-boolean v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$1;->val$debugEnabled:Z

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$1;->this$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

    invoke-static {v0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->access$000(Lorg/apache/sshd/server/forward/TcpipServerChannel;)Lorg/slf4j/Logger;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$1;->this$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

    const-string v2, "doInit({}) Ignoring write to channel in CLOSING state"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-interface {p2}, Lorg/apache/sshd/common/util/Readable;->available()I

    move-result v1

    add-int/lit8 v1, v1, 0x40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    .line 210
    .local v0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v0, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBuffer(Lorg/apache/sshd/common/util/Readable;)V

    .line 211
    iget-object v1, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$1;->this$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

    invoke-static {v1}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->access$100(Lorg/apache/sshd/server/forward/TcpipServerChannel;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 212
    iget-object v1, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$1;->this$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

    invoke-static {v1}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->access$100(Lorg/apache/sshd/server/forward/TcpipServerChannel;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 214
    .end local v0    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_1
    :goto_0
    return-void
.end method

.method public sessionClosed(Lorg/apache/sshd/common/io/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$1;->this$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 224
    return-void
.end method

.method public sessionCreated(Lorg/apache/sshd/common/io/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    return-void
.end method
