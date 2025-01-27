.class public Lorg/apache/sshd/agent/unix/AgentServer$SshAgentSession;
.super Lorg/apache/sshd/agent/common/AbstractAgentClient;
.source "AgentServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/agent/unix/AgentServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SshAgentSession"
.end annotation


# instance fields
.field private final socket:J


# direct methods
.method public constructor <init>(JLorg/apache/sshd/agent/SshAgent;)V
    .locals 0
    .param p1, "socket"    # J
    .param p3, "agent"    # Lorg/apache/sshd/agent/SshAgent;

    .line 141
    invoke-direct {p0, p3}, Lorg/apache/sshd/agent/common/AbstractAgentClient;-><init>(Lorg/apache/sshd/agent/SshAgent;)V

    .line 142
    iput-wide p1, p0, Lorg/apache/sshd/agent/unix/AgentServer$SshAgentSession;->socket:J

    .line 143
    return-void
.end method


# virtual methods
.method protected reply(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 5
    .param p1, "buf"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-wide v0, p0, Lorg/apache/sshd/agent/unix/AgentServer$SshAgentSession;->socket:J

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/tomcat/jni/Socket;->send(J[BII)I

    move-result v0

    .line 170
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 171
    invoke-static {v0}, Lorg/apache/sshd/agent/unix/AgentServer;->access$000(I)V

    .line 173
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 149
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 151
    .local v0, "buf":[B
    :goto_0
    iget-wide v1, p0, Lorg/apache/sshd/agent/unix/AgentServer$SshAgentSession;->socket:J

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Lorg/apache/tomcat/jni/Socket;->recv(J[BII)I

    move-result v1

    .line 152
    .local v1, "result":I
    const v2, -0x1117e

    if-ne v1, v2, :cond_0

    .line 153
    goto :goto_1

    .line 154
    :cond_0
    if-gez v1, :cond_1

    .line 155
    invoke-static {v1}, Lorg/apache/sshd/agent/unix/AgentServer;->access$000(I)V

    .line 157
    :cond_1
    new-instance v2, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v2, v0, v4, v1}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([BII)V

    invoke-virtual {p0, v2}, Lorg/apache/sshd/agent/unix/AgentServer$SshAgentSession;->messageReceived(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .end local v1    # "result":I
    goto :goto_0

    .line 162
    .end local v0    # "buf":[B
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lorg/apache/sshd/agent/unix/AgentServer$SshAgentSession;->log:Lorg/slf4j/Logger;

    const-string v2, "Failed to process"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-wide v0, p0, Lorg/apache/sshd/agent/unix/AgentServer$SshAgentSession;->socket:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/Socket;->close(J)I

    .line 163
    nop

    .line 164
    return-void

    .line 162
    :goto_2
    iget-wide v1, p0, Lorg/apache/sshd/agent/unix/AgentServer$SshAgentSession;->socket:J

    invoke-static {v1, v2}, Lorg/apache/tomcat/jni/Socket;->close(J)I

    .line 163
    throw v0
.end method
