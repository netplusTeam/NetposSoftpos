.class public Lorg/apache/sshd/client/channel/ChannelExec;
.super Lorg/apache/sshd/client/channel/PtyCapableChannelSession;
.source "ChannelExec.java"


# static fields
.field public static final DEFAULT_REQUEST_EXEC_REPLY:Z = false

.field public static final REQUEST_EXEC_REPLY:Ljava/lang/String; = "channel-exec-want-reply"


# instance fields
.field private final command:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;Ljava/util/Map;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "configHolder"    # Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 48
    .local p3, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;-><init>(ZLorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;Ljava/util/Map;)V

    .line 49
    const-string v0, "Command may not be null/empty"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/channel/ChannelExec;->command:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method protected doOpen()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelExec;->doOpenPty()V

    .line 56
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelExec;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelExec;->log:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelExec;->command:Ljava/lang/String;

    const-string v2, "doOpen({}) send SSH_MSG_CHANNEL_REQUEST exec command={}"

    invoke-interface {v0, v2, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelExec;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 61
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    const/4 v1, 0x0

    const-string v2, "channel-exec-want-reply"

    invoke-virtual {p0, v2, v1}, Lorg/apache/sshd/client/channel/ChannelExec;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    .line 62
    .local v1, "wantReply":Z
    const/16 v2, 0x62

    iget-object v3, p0, Lorg/apache/sshd/client/channel/ChannelExec;->command:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-interface {v0, v2, v3}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v2

    .line 63
    .local v2, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelExec;->getRecipient()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 64
    const-string v3, "exec"

    invoke-virtual {v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 66
    iget-object v4, p0, Lorg/apache/sshd/client/channel/ChannelExec;->command:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v3, v1}, Lorg/apache/sshd/client/channel/ChannelExec;->addPendingRequest(Ljava/lang/String;Z)Ljava/util/Date;

    .line 68
    invoke-virtual {p0, v2}, Lorg/apache/sshd/client/channel/ChannelExec;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 70
    invoke-super {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->doOpen()V

    .line 71
    return-void
.end method

.method public handleFailure()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const-string v0, "exec"

    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/channel/ChannelExec;->removePendingRequest(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 84
    .local v0, "pending":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelExec;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/apache/sshd/client/channel/ChannelExec;->command:Ljava/lang/String;

    aput-object v5, v2, v4

    const-string v4, "handleFailure({}) pending since={}, command={}"

    invoke-interface {v1, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0, v3}, Lorg/apache/sshd/client/channel/ChannelExec;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 88
    :cond_0
    return-void
.end method

.method public handleSuccess()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const-string v0, "exec"

    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/channel/ChannelExec;->removePendingRequest(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 76
    .local v0, "pending":Ljava/util/Date;
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelExec;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelExec;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/apache/sshd/client/channel/ChannelExec;->command:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "handleSuccess({}) pending={}, command={}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_0
    return-void
.end method
