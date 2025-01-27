.class public Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "ReservedSessionMessagesHandlerAdapter.java"

# interfaces
.implements Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;


# static fields
.field public static final DEFAULT:Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;

    invoke-direct {v0}, Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;->DEFAULT:Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public handleDebugMessage(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBoolean()Z

    move-result v2

    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;->handleDebugMessage(Lorg/apache/sshd/common/session/Session;ZLjava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 62
    return-void
.end method

.method public handleDebugMessage(Lorg/apache/sshd/common/session/Session;ZLjava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "display"    # Z
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "lang"    # Ljava/lang/String;
    .param p5, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 69
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    .line 68
    const-string v2, "handleDebugMessage({}) SSH_MSG_DEBUG (display={}) [lang={}] \'{}\'"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_0
    return-void
.end method

.method public handleIgnoreMessage(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;->handleIgnoreMessage(Lorg/apache/sshd/common/session/Session;[BLorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 47
    return-void
.end method

.method public handleIgnoreMessage(Lorg/apache/sshd/common/session/Session;[BLorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "data"    # [B
    .param p3, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;->log:Lorg/slf4j/Logger;

    const-string v1, "handleIgnoreMessage({}) SSH_MSG_IGNORE"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;->log:Lorg/slf4j/Logger;

    invoke-static {p2}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleIgnoreMessage({}) data: {}"

    invoke-interface {v0, v2, p1, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    :cond_1
    return-void
.end method

.method public handleUnimplementedMessage(Lorg/apache/sshd/common/session/Session;ILorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "cmd"    # I
    .param p3, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 76
    .local v0, "debugEnabled":Z
    if-eqz v0, :cond_1

    .line 77
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 78
    invoke-virtual {p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUInt()J

    move-result-wide v1

    .line 79
    .local v1, "seqNo":J
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;->log:Lorg/slf4j/Logger;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "handleUnimplementedMessage({}) SSH_MSG_UNIMPLEMENTED - seqNo={}"

    invoke-interface {v3, v5, p1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .end local v1    # "seqNo":J
    goto :goto_0

    .line 81
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/ReservedSessionMessagesHandlerAdapter;->log:Lorg/slf4j/Logger;

    invoke-static {p2}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleUnimplementedMessage({}): {}"

    invoke-interface {v1, v3, p1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method
