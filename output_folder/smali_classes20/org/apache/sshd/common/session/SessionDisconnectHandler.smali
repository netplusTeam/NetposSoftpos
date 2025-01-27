.class public interface abstract Lorg/apache/sshd/common/session/SessionDisconnectHandler;
.super Ljava/lang/Object;
.source "SessionDisconnectHandler.java"


# virtual methods
.method public handleAuthCountDisconnectReason(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "service"    # Lorg/apache/sshd/common/Service;
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "user"    # Ljava/lang/String;
    .param p6, "currentAuthCount"    # I
    .param p7, "maxAuthCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public handleAuthParamsDisconnectReason(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "service"    # Lorg/apache/sshd/common/Service;
    .param p3, "authUser"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "authService"    # Ljava/lang/String;
    .param p6, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public handleKexDisconnectReason(Lorg/apache/sshd/common/session/Session;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lorg/apache/sshd/common/kex/KexProposalOption;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p5, "option"    # Lorg/apache/sshd/common/kex/KexProposalOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/Session;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    .local p2, "c2sOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .local p3, "s2cOptions":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    .local p4, "negotiatedGuess":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/kex/KexProposalOption;Ljava/lang/String;>;"
    sget-object v0, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CLANG:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-virtual {v0, p5}, Lorg/apache/sshd/common/kex/KexProposalOption;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SLANG:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-virtual {v0, p5}, Lorg/apache/sshd/common/kex/KexProposalOption;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public handleSessionsCountDisconnectReason(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/Service;Ljava/lang/String;II)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "service"    # Lorg/apache/sshd/common/Service;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "currentSessionCount"    # I
    .param p5, "maxSessionCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public handleTimeoutDisconnectReason(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "timeoutStatus"    # Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnsupportedServiceDisconnectReason(Lorg/apache/sshd/common/session/Session;ILjava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "cmd"    # I
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    return v0
.end method
