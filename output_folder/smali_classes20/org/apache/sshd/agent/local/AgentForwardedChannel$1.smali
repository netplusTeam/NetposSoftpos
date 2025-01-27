.class Lorg/apache/sshd/agent/local/AgentForwardedChannel$1;
.super Lorg/apache/sshd/agent/common/AbstractAgentProxy;
.source "AgentForwardedChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/agent/local/AgentForwardedChannel;->getAgent()Lorg/apache/sshd/agent/SshAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final open:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lorg/apache/sshd/agent/local/AgentForwardedChannel;


# direct methods
.method constructor <init>(Lorg/apache/sshd/agent/local/AgentForwardedChannel;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V
    .locals 2
    .param p1, "this$0"    # Lorg/apache/sshd/agent/local/AgentForwardedChannel;
    .param p2, "executorService"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 68
    iput-object p1, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel$1;->this$0:Lorg/apache/sshd/agent/local/AgentForwardedChannel;

    invoke-direct {p0, p2}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;-><init>(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel$1;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel$1;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel$1;->this$0:Lorg/apache/sshd/agent/local/AgentForwardedChannel;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 85
    invoke-super {p0}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->close()V

    .line 87
    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel$1;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected request(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel$1;->this$0:Lorg/apache/sshd/agent/local/AgentForwardedChannel;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->request(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    return-object v0
.end method
