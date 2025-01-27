.class public Lorg/apache/sshd/client/channel/ChannelSubsystem;
.super Lorg/apache/sshd/client/channel/ChannelSession;
.source "ChannelSubsystem.java"


# static fields
.field public static final DEFAULT_REQUEST_SUBSYSTEM_REPLY:Z = true

.field public static final REQUEST_SUBSYSTEM_REPLY:Ljava/lang/String; = "channel-subsystem-want-reply"


# instance fields
.field private final subsystem:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "subsystem"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lorg/apache/sshd/client/channel/ChannelSession;-><init>()V

    .line 59
    const-string v0, "Subsystem may not be null/empty"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/channel/ChannelSubsystem;->subsystem:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic lambda$onClose$0(Ljava/lang/Runnable;Lorg/apache/sshd/common/future/CloseFuture;)V
    .locals 0
    .param p0, "run"    # Ljava/lang/Runnable;
    .param p1, "future"    # Lorg/apache/sshd/common/future/CloseFuture;

    .line 113
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method protected doOpen()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelSubsystem;->getSubsystem()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "systemName":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelSubsystem;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelSubsystem;->log:Lorg/slf4j/Logger;

    const-string v2, "doOpen({}) SSH_MSG_CHANNEL_REQUEST subsystem={}"

    invoke-interface {v1, v2, p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelSubsystem;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    .line 79
    .local v1, "session":Lorg/apache/sshd/common/session/Session;
    const/4 v2, 0x1

    const-string v3, "channel-subsystem-want-reply"

    invoke-virtual {p0, v3, v2}, Lorg/apache/sshd/client/channel/ChannelSubsystem;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    .line 81
    .local v2, "wantReply":Z
    const/16 v3, 0x62

    .line 82
    const-string v4, "subsystem"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x20

    .line 81
    invoke-interface {v1, v3, v5}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v3

    .line 83
    .local v3, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelSubsystem;->getRecipient()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 84
    invoke-virtual {v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v3, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 86
    invoke-virtual {v3, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v4, v2}, Lorg/apache/sshd/client/channel/ChannelSubsystem;->addPendingRequest(Ljava/lang/String;Z)Ljava/util/Date;

    .line 88
    invoke-virtual {p0, v3}, Lorg/apache/sshd/client/channel/ChannelSubsystem;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 90
    invoke-super {p0}, Lorg/apache/sshd/client/channel/ChannelSession;->doOpen()V

    .line 91
    return-void
.end method

.method public final getSubsystem()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelSubsystem;->subsystem:Ljava/lang/String;

    return-object v0
.end method

.method public handleFailure()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelSubsystem;->getSubsystem()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "systemName":Ljava/lang/String;
    const-string v1, "subsystem"

    invoke-virtual {p0, v1}, Lorg/apache/sshd/client/channel/ChannelSubsystem;->removePendingRequest(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 106
    .local v1, "pending":Ljava/util/Date;
    if-eqz v1, :cond_0

    .line 107
    iget-object v2, p0, Lorg/apache/sshd/client/channel/ChannelSubsystem;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v5, 0x2

    aput-object v1, v3, v5

    const-string v5, "handleFailure({}) subsystem={}, pending since={}"

    invoke-interface {v2, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p0, v4}, Lorg/apache/sshd/client/channel/ChannelSubsystem;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 110
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

    .line 95
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelSubsystem;->getSubsystem()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "systemName":Ljava/lang/String;
    const-string v1, "subsystem"

    invoke-virtual {p0, v1}, Lorg/apache/sshd/client/channel/ChannelSubsystem;->removePendingRequest(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 97
    .local v1, "pending":Ljava/util/Date;
    iget-object v2, p0, Lorg/apache/sshd/client/channel/ChannelSubsystem;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lorg/apache/sshd/client/channel/ChannelSubsystem;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const-string v4, "handleSuccess({}) subsystem={}, pending since={}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onClose(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "run"    # Ljava/lang/Runnable;

    .line 113
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelSubsystem;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    new-instance v1, Lorg/apache/sshd/client/channel/ChannelSubsystem$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/sshd/client/channel/ChannelSubsystem$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/future/CloseFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/sshd/client/channel/ChannelSession;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelSubsystem;->getSubsystem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
