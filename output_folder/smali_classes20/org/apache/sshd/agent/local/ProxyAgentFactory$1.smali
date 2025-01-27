.class Lorg/apache/sshd/agent/local/ProxyAgentFactory$1;
.super Ljava/lang/Object;
.source "ProxyAgentFactory.java"

# interfaces
.implements Lorg/apache/sshd/agent/SshAgentServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/agent/local/ProxyAgentFactory;->createServer(Lorg/apache/sshd/common/session/ConnectionService;)Lorg/apache/sshd/agent/SshAgentServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final open:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lorg/apache/sshd/agent/local/ProxyAgentFactory;

.field final synthetic val$proxy:Lorg/apache/sshd/agent/local/AgentServerProxy;


# direct methods
.method constructor <init>(Lorg/apache/sshd/agent/local/ProxyAgentFactory;Lorg/apache/sshd/agent/local/AgentServerProxy;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/sshd/agent/local/ProxyAgentFactory;

    .line 83
    iput-object p1, p0, Lorg/apache/sshd/agent/local/ProxyAgentFactory$1;->this$0:Lorg/apache/sshd/agent/local/ProxyAgentFactory;

    iput-object p2, p0, Lorg/apache/sshd/agent/local/ProxyAgentFactory$1;->val$proxy:Lorg/apache/sshd/agent/local/AgentServerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lorg/apache/sshd/agent/local/ProxyAgentFactory$1;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    .line 99
    iget-object v0, p0, Lorg/apache/sshd/agent/local/ProxyAgentFactory$1;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/apache/sshd/agent/local/ProxyAgentFactory$1;->this$0:Lorg/apache/sshd/agent/local/ProxyAgentFactory;

    invoke-static {v0}, Lorg/apache/sshd/agent/local/ProxyAgentFactory;->access$000(Lorg/apache/sshd/agent/local/ProxyAgentFactory;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/agent/local/ProxyAgentFactory$1;->val$proxy:Lorg/apache/sshd/agent/local/AgentServerProxy;

    invoke-virtual {v1}, Lorg/apache/sshd/agent/local/AgentServerProxy;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lorg/apache/sshd/agent/local/ProxyAgentFactory$1;->val$proxy:Lorg/apache/sshd/agent/local/AgentServerProxy;

    invoke-virtual {v0}, Lorg/apache/sshd/agent/local/AgentServerProxy;->close()V

    .line 103
    :cond_0
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/sshd/agent/local/ProxyAgentFactory$1;->val$proxy:Lorg/apache/sshd/agent/local/AgentServerProxy;

    invoke-virtual {v0}, Lorg/apache/sshd/agent/local/AgentServerProxy;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/sshd/agent/local/ProxyAgentFactory$1;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/sshd/agent/local/ProxyAgentFactory$1;->val$proxy:Lorg/apache/sshd/agent/local/AgentServerProxy;

    invoke-virtual {v0}, Lorg/apache/sshd/agent/local/AgentServerProxy;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
