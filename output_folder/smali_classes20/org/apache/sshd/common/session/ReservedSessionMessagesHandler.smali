.class public interface abstract Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;
.super Ljava/lang/Object;
.source "ReservedSessionMessagesHandler.java"

# interfaces
.implements Lorg/apache/sshd/common/util/SshdEventListener;


# virtual methods
.method public handleDebugMessage(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public handleIgnoreMessage(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public handleUnimplementedMessage(Lorg/apache/sshd/common/session/Session;ILorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "cmd"    # I
    .param p3, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public sendReservedHeartbeat(Lorg/apache/sshd/common/session/ConnectionService;)Z
    .locals 3
    .param p1, "service"    # Lorg/apache/sshd/common/session/ConnectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reserved heartbeat not implemented for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
