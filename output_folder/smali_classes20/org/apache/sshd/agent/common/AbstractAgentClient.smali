.class public abstract Lorg/apache/sshd/agent/common/AbstractAgentClient;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractAgentClient.java"


# instance fields
.field private final agent:Lorg/apache/sshd/agent/SshAgent;

.field private final buffer:Lorg/apache/sshd/common/util/buffer/Buffer;


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/agent/SshAgent;)V
    .locals 1
    .param p1, "agent"    # Lorg/apache/sshd/agent/SshAgent;

    .line 43
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 40
    new-instance v0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 44
    iput-object p1, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->agent:Lorg/apache/sshd/agent/SshAgent;

    .line 45
    return-void
.end method


# virtual methods
.method public declared-synchronized messageReceived(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 14
    .param p1, "message"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBuffer(Lorg/apache/sshd/common/util/Readable;)V

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v0

    .line 50
    .local v0, "avail":I
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 51
    iget-object v2, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->log:Lorg/slf4j/Logger;

    const-string v3, "Received message total length ({}) below minimum ({})"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v4, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local p0    # "this":Lorg/apache/sshd/agent/common/AbstractAgentClient;
    :cond_0
    monitor-exit p0

    return-void

    .line 57
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v1

    .line 58
    .local v1, "rpos":I
    iget-object v2, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v2

    .line 60
    .local v2, "len":I
    if-ltz v2, :cond_6

    .line 63
    iget-object v3, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v3, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 65
    iget-object v3, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v3

    move v0, v3

    .line 66
    add-int/lit8 v3, v2, 0x4

    if-ge v0, v3, :cond_3

    .line 67
    iget-object v3, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    iget-object v3, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->log:Lorg/slf4j/Logger;

    const-string v4, "Received request length ({}) below minimum ({})"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, v2, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :cond_2
    monitor-exit p0

    return-void

    .line 73
    :cond_3
    :try_start_2
    new-instance v3, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v3}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    .line 74
    .local v3, "rep":Lorg/apache/sshd/common/util/buffer/Buffer;
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 75
    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 77
    new-instance v6, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    iget-object v7, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .local v6, "req":Lorg/apache/sshd/common/util/buffer/Buffer;
    const/4 v7, -0x1

    .line 80
    .local v7, "cmd":I
    :try_start_3
    invoke-virtual {v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v8

    move v7, v8

    .line 81
    invoke-virtual {p0, v7, v6, v3}, Lorg/apache/sshd/agent/common/AbstractAgentClient;->process(ILorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    goto :goto_0

    .line 82
    :catch_0
    move-exception v8

    .line 83
    .local v8, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v9, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v9}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 84
    iget-object v9, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->log:Lorg/slf4j/Logger;

    const-string v10, "Failed ({}) to handle command={}: {}"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 85
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 84
    invoke-interface {v9, v10, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :cond_4
    iget-object v9, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v9}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 88
    iget-object v9, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->log:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received command="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " handling failure details"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :cond_5
    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->clear()V

    .line 91
    invoke-virtual {v3, v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 92
    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 93
    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 94
    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 96
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0, v3}, Lorg/apache/sshd/agent/common/AbstractAgentClient;->prepare(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/sshd/agent/common/AbstractAgentClient;->reply(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 61
    .end local v3    # "rep":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v6    # "req":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v7    # "cmd":I
    :cond_6
    :try_start_5
    new-instance v3, Ljava/io/StreamCorruptedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illogical message length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 47
    .end local v0    # "avail":I
    .end local v1    # "rpos":I
    .end local v2    # "len":I
    .end local p1    # "message":Lorg/apache/sshd/common/util/buffer/Buffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected prepare(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 5
    .param p1, "buf"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 179
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v0

    .line 180
    .local v0, "len":I
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v1

    .line 181
    .local v1, "rpos":I
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v2

    .line 182
    .local v2, "wpos":I
    add-int/lit8 v3, v1, -0x4

    invoke-virtual {p1, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 183
    add-int/lit8 v3, v1, -0x4

    invoke-virtual {p1, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 184
    int-to-long v3, v0

    invoke-virtual {p1, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 185
    invoke-virtual {p1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 186
    return-object p1
.end method

.method protected process(ILorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 10
    .param p1, "cmd"    # I
    .param p2, "req"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p3, "rep"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 101
    .local v0, "debugEnabled":Z
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->log:Lorg/slf4j/Logger;

    invoke-static {p1}, Lorg/apache/sshd/agent/SshAgentConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "process(cmd={})"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    :cond_0
    const/4 v1, 0x6

    packed-switch p1, :pswitch_data_0

    .line 170
    :pswitch_0
    if-eqz v0, :cond_7

    .line 171
    iget-object v1, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->log:Lorg/slf4j/Logger;

    invoke-static {p1}, Lorg/apache/sshd/agent/SshAgentConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unknown command: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 166
    :pswitch_1
    iget-object v2, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->agent:Lorg/apache/sshd/agent/SshAgent;

    invoke-interface {v2}, Lorg/apache/sshd/agent/SshAgent;->removeAllIdentities()V

    .line 167
    invoke-virtual {p3, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 168
    goto/16 :goto_4

    .line 157
    :pswitch_2
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 158
    .local v2, "keyToRemove":Ljava/security/PublicKey;
    if-eqz v0, :cond_1

    .line 159
    iget-object v3, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->log:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SSH2_AGENTC_REMOVE_IDENTITY {}"

    invoke-interface {v3, v5, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    :cond_1
    iget-object v3, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->agent:Lorg/apache/sshd/agent/SshAgent;

    invoke-interface {v3, v2}, Lorg/apache/sshd/agent/SshAgent;->removeIdentity(Ljava/security/PublicKey;)V

    .line 162
    invoke-virtual {p3, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 163
    goto/16 :goto_4

    .line 147
    .end local v2    # "keyToRemove":Ljava/security/PublicKey;
    :pswitch_3
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v2

    .line 148
    .local v2, "keyToAdd":Ljava/security/KeyPair;
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "comment":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 150
    iget-object v4, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->log:Lorg/slf4j/Logger;

    const-string v5, "SSH2_AGENTC_ADD_IDENTITY comment={}"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :cond_2
    iget-object v4, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->agent:Lorg/apache/sshd/agent/SshAgent;

    invoke-interface {v4, v2, v3}, Lorg/apache/sshd/agent/SshAgent;->addIdentity(Ljava/security/KeyPair;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p3, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 154
    goto/16 :goto_4

    .line 127
    .end local v2    # "keyToAdd":Ljava/security/KeyPair;
    .end local v3    # "comment":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 128
    .local v1, "signingKey":Ljava/security/PublicKey;
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v2

    .line 129
    .local v2, "data":[B
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v3

    .line 130
    .local v3, "flags":I
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 131
    iget-object v5, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 132
    invoke-interface {v1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/16 v8, 0x3a

    invoke-static {v8, v2}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex(C[B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 131
    const-string v7, "SSH2_AGENTC_SIGN_REQUEST key={}, flags=0x{}, data={}"

    invoke-interface {v5, v7, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_3
    nop

    .line 135
    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    .line 134
    const-string v7, "Cannot resolve key type of %s"

    invoke-static {v5, v7, v6}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "keyType":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->agent:Lorg/apache/sshd/agent/SshAgent;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v1, v2}, Lorg/apache/sshd/agent/SshAgent;->sign(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PublicKey;[B)[B

    move-result-object v6

    .line 139
    .local v6, "signature":[B
    new-instance v7, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    array-length v9, v6

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x40

    invoke-direct {v7, v8, v4}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    move-object v4, v7

    .line 140
    .local v4, "sig":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v4, v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 142
    const/16 v7, 0xe

    invoke-virtual {p3, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 143
    invoke-virtual {v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v7

    invoke-virtual {v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v8

    invoke-virtual {v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v9

    invoke-virtual {p3, v7, v8, v9}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([BII)V

    .line 144
    goto :goto_4

    .line 106
    .end local v1    # "signingKey":Ljava/security/PublicKey;
    .end local v2    # "data":[B
    .end local v3    # "flags":I
    .end local v4    # "sig":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v5    # "keyType":Ljava/lang/String;
    .end local v6    # "signature":[B
    :pswitch_5
    iget-object v1, p0, Lorg/apache/sshd/agent/common/AbstractAgentClient;->agent:Lorg/apache/sshd/agent/SshAgent;

    invoke-interface {v1}, Lorg/apache/sshd/agent/SshAgent;->getIdentities()Ljava/lang/Iterable;

    move-result-object v1

    .line 108
    .local v1, "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<Ljava/security/PublicKey;Ljava/lang/String;>;>;"
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_4

    .line 109
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    .local v2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<Ljava/security/PublicKey;Ljava/lang/String;>;>;"
    goto :goto_1

    .line 111
    .end local v2    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<Ljava/security/PublicKey;Ljava/lang/String;>;>;"
    :cond_4
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 112
    .local v2, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<Ljava/security/PublicKey;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 113
    .local v4, "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/PublicKey;Ljava/lang/String;>;"
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v4    # "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/PublicKey;Ljava/lang/String;>;"
    goto :goto_0

    .line 115
    :cond_5
    move-object v3, v2

    .line 118
    .local v2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<Ljava/security/PublicKey;Ljava/lang/String;>;>;"
    :goto_1
    const/16 v3, 0xc

    invoke-virtual {p3, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 119
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p3, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 120
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 121
    .local v4, "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/PublicKey;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/PublicKey;

    invoke-virtual {p3, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putPublicKey(Ljava/security/PublicKey;)V

    .line 122
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p3, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 123
    .end local v4    # "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/PublicKey;Ljava/lang/String;>;"
    goto :goto_2

    .line 124
    :cond_6
    goto :goto_4

    .line 173
    .end local v1    # "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<Ljava/security/PublicKey;Ljava/lang/String;>;>;"
    .end local v2    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<Ljava/security/PublicKey;Ljava/lang/String;>;>;"
    :cond_7
    :goto_3
    const/16 v1, 0x1e

    invoke-virtual {p3, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 176
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract reply(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
