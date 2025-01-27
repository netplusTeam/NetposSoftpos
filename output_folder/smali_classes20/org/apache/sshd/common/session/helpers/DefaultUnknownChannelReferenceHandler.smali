.class public Lorg/apache/sshd/common/session/helpers/DefaultUnknownChannelReferenceHandler;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "DefaultUnknownChannelReferenceHandler.java"

# interfaces
.implements Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;


# static fields
.field public static final DEFAULT_SEND_REPLY_FOR_CHANNEL_DATA:Z = false

.field public static final INSTANCE:Lorg/apache/sshd/common/session/helpers/DefaultUnknownChannelReferenceHandler;

.field public static final SEND_REPLY_FOR_CHANNEL_DATA:Ljava/lang/String; = "send-unknown-channel-data-reply"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lorg/apache/sshd/common/session/helpers/DefaultUnknownChannelReferenceHandler;

    invoke-direct {v0}, Lorg/apache/sshd/common/session/helpers/DefaultUnknownChannelReferenceHandler;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/session/helpers/DefaultUnknownChannelReferenceHandler;->INSTANCE:Lorg/apache/sshd/common/session/helpers/DefaultUnknownChannelReferenceHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public handleUnknownChannelCommand(Lorg/apache/sshd/common/session/ConnectionService;BILorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/Channel;
    .locals 10
    .param p1, "service"    # Lorg/apache/sshd/common/session/ConnectionService;
    .param p2, "cmd"    # B
    .param p3, "channelId"    # I
    .param p4, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-interface {p1}, Lorg/apache/sshd/common/session/ConnectionService;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 61
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/DefaultUnknownChannelReferenceHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 62
    .local v1, "debugEnabled":Z
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 63
    iget-object v6, p0, Lorg/apache/sshd/common/session/helpers/DefaultUnknownChannelReferenceHandler;->log:Lorg/slf4j/Logger;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v5

    .line 64
    invoke-static {p2}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 63
    const-string v8, "handleUnknownChannelCommand({}) received {} command for unknown channel: {}"

    invoke-interface {v6, v8, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_0
    const/4 v6, 0x0

    .line 68
    .local v6, "wantReply":Z
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 76
    :pswitch_1
    invoke-virtual {p4}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "req":Ljava/lang/String;
    invoke-virtual {p4}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBoolean()Z

    move-result v6

    .line 79
    if-eqz v1, :cond_1

    .line 80
    iget-object v8, p0, Lorg/apache/sshd/common/session/helpers/DefaultUnknownChannelReferenceHandler;->log:Lorg/slf4j/Logger;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v5

    aput-object v7, v9, v3

    .line 81
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v9, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v4

    .line 80
    const-string v2, "handleUnknownChannelCommand({}) Received SSH_MSG_CHANNEL_REQUEST={} (wantReply={}) for unknown channel: {}"

    invoke-interface {v8, v2, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    .end local v7    # "req":Ljava/lang/String;
    :pswitch_2
    const-string v7, "send-unknown-channel-data-reply"

    invoke-static {v0, v7, v5}, Lorg/apache/sshd/common/PropertyResolverUtils;->getBooleanProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Z)Z

    move-result v6

    .line 91
    iget-object v7, p0, Lorg/apache/sshd/common/session/helpers/DefaultUnknownChannelReferenceHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 92
    iget-object v7, p0, Lorg/apache/sshd/common/session/helpers/DefaultUnknownChannelReferenceHandler;->log:Lorg/slf4j/Logger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 93
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v2

    .line 92
    const-string v2, "handleUnknownChannelCommand({}) received msg channel data (opcode={}) reply={}"

    invoke-interface {v7, v2, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/common/session/helpers/DefaultUnknownChannelReferenceHandler;->sendFailureResponse(Lorg/apache/sshd/common/session/ConnectionService;BI)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 104
    :cond_2
    const/4 v2, 0x0

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected sendFailureResponse(Lorg/apache/sshd/common/session/ConnectionService;BI)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 5
    .param p1, "service"    # Lorg/apache/sshd/common/session/ConnectionService;
    .param p2, "cmd"    # B
    .param p3, "channelId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Lorg/apache/sshd/common/session/ConnectionService;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 112
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/DefaultUnknownChannelReferenceHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/DefaultUnknownChannelReferenceHandler;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    .line 114
    invoke-static {p2}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 113
    const-string v3, "sendFailureResponse({}) send SSH_MSG_CHANNEL_FAILURE for {} command on unknown channel: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :cond_0
    const/16 v1, 0x64

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v1

    .line 118
    .local v1, "rsp":Lorg/apache/sshd/common/util/buffer/Buffer;
    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 119
    invoke-interface {v0, v1}, Lorg/apache/sshd/common/session/Session;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v2

    return-object v2
.end method
