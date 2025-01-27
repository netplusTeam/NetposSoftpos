.class public Lorg/apache/sshd/client/channel/ChannelShell;
.super Lorg/apache/sshd/client/channel/PtyCapableChannelSession;
.source "ChannelShell.java"


# static fields
.field public static final DEFAULT_REQUEST_SHELL_REPLY:Z = false

.field public static final REQUEST_SHELL_REPLY:Ljava/lang/String; = "channel-shell-want-reply"


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;Ljava/util/Map;)V
    .locals 1
    .param p1, "configHolder"    # Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 45
    .local p2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;-><init>(ZLorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;Ljava/util/Map;)V

    .line 46
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

    .line 50
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelShell;->doOpenPty()V

    .line 52
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelShell;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelShell;->log:Lorg/slf4j/Logger;

    const-string v1, "doOpen({}) send SSH_MSG_CHANNEL_REQUEST shell"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelShell;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 57
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    const/4 v1, 0x0

    const-string v2, "channel-shell-want-reply"

    invoke-virtual {p0, v2, v1}, Lorg/apache/sshd/client/channel/ChannelShell;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    .line 58
    .local v1, "wantReply":Z
    const/16 v2, 0x62

    const/16 v3, 0x20

    invoke-interface {v0, v2, v3}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v2

    .line 59
    .local v2, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelShell;->getRecipient()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 60
    const-string v3, "shell"

    invoke-virtual {v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 62
    invoke-virtual {p0, v3, v1}, Lorg/apache/sshd/client/channel/ChannelShell;->addPendingRequest(Ljava/lang/String;Z)Ljava/util/Date;

    .line 63
    invoke-virtual {p0, v2}, Lorg/apache/sshd/client/channel/ChannelShell;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 65
    invoke-super {p0}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->doOpen()V

    .line 66
    return-void
.end method

.method public handleFailure()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const-string v0, "shell"

    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/channel/ChannelShell;->removePendingRequest(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 79
    .local v0, "pending":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelShell;->log:Lorg/slf4j/Logger;

    const-string v2, "handleFailure({}) pending={}"

    invoke-interface {v1, v2, p0, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/sshd/client/channel/ChannelShell;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 83
    :cond_0
    return-void
.end method

.method public handleSuccess()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    const-string v0, "shell"

    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/channel/ChannelShell;->removePendingRequest(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 71
    .local v0, "pending":Ljava/util/Date;
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelShell;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelShell;->log:Lorg/slf4j/Logger;

    const-string v2, "handleSuccess({}) pending={}"

    invoke-interface {v1, v2, p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    :cond_0
    return-void
.end method
