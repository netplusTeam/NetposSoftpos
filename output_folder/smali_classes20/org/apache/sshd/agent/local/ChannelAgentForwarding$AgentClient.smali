.class public Lorg/apache/sshd/agent/local/ChannelAgentForwarding$AgentClient;
.super Lorg/apache/sshd/agent/common/AbstractAgentClient;
.source "ChannelAgentForwarding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/agent/local/ChannelAgentForwarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AgentClient"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/agent/local/ChannelAgentForwarding;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/agent/local/ChannelAgentForwarding;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/sshd/agent/local/ChannelAgentForwarding;

    .line 138
    iput-object p1, p0, Lorg/apache/sshd/agent/local/ChannelAgentForwarding$AgentClient;->this$0:Lorg/apache/sshd/agent/local/ChannelAgentForwarding;

    .line 139
    invoke-static {p1}, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->access$000(Lorg/apache/sshd/agent/local/ChannelAgentForwarding;)Lorg/apache/sshd/agent/SshAgent;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/sshd/agent/common/AbstractAgentClient;-><init>(Lorg/apache/sshd/agent/SshAgent;)V

    .line 140
    return-void
.end method


# virtual methods
.method protected reply(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 4
    .param p1, "buf"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/apache/sshd/agent/local/ChannelAgentForwarding$AgentClient;->this$0:Lorg/apache/sshd/agent/local/ChannelAgentForwarding;

    invoke-static {v0}, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->access$100(Lorg/apache/sshd/agent/local/ChannelAgentForwarding;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 145
    iget-object v0, p0, Lorg/apache/sshd/agent/local/ChannelAgentForwarding$AgentClient;->this$0:Lorg/apache/sshd/agent/local/ChannelAgentForwarding;

    invoke-static {v0}, Lorg/apache/sshd/agent/local/ChannelAgentForwarding;->access$100(Lorg/apache/sshd/agent/local/ChannelAgentForwarding;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 146
    return-void
.end method
