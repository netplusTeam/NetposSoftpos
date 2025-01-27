.class public Lorg/apache/sshd/server/auth/password/UserAuthPassword;
.super Lorg/apache/sshd/server/auth/AbstractUserAuth;
.source "UserAuthPassword.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "password"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    const-string v0, "password"

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/auth/AbstractUserAuth;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected checkPassword(Lorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 86
    .local v0, "debugEnabled":Z
    invoke-interface {p2}, Lorg/apache/sshd/server/session/ServerSession;->getPasswordAuthenticator()Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;

    move-result-object v1

    .line 87
    .local v1, "auth":Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 88
    if-eqz v0, :cond_0

    .line 89
    iget-object v3, p0, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    const-string v4, "checkPassword({}) no password authenticator"

    invoke-interface {v3, v4, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 97
    :cond_1
    :try_start_0
    invoke-interface {v1, p3, p4, p2}, Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;->authenticate(Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/sshd/server/auth/password/PasswordChangeRequiredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .local v2, "authed":Z
    nop

    .line 108
    if-eqz v0, :cond_2

    .line 109
    :try_start_1
    iget-object v3, p0, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    const-string v4, "checkPassword({}) authentication result: {}"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, p2, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 112
    .end local v2    # "authed":Z
    :catch_0
    move-exception v2

    move-object v8, v2

    goto :goto_0

    .line 98
    :catch_1
    move-exception v3

    .line 99
    .local v3, "e":Ljava/lang/Error;
    iget-object v4, p0, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    const-string v5, "checkPassword({}) failed ({}) to consult authenticator: {}"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v2

    const/4 v2, 0x1

    .line 100
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    invoke-virtual {v3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 99
    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    if-eqz v0, :cond_3

    .line 102
    iget-object v2, p0, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPassword("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") authenticator failure details"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :cond_3
    new-instance v2, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v2, v3}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "debugEnabled":Z
    .end local v1    # "auth":Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;
    .end local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local p2    # "session":Lorg/apache/sshd/server/session/ServerSession;
    .end local p3    # "username":Ljava/lang/String;
    .end local p4    # "password":Ljava/lang/String;
    throw v2
    :try_end_1
    .catch Lorg/apache/sshd/server/auth/password/PasswordChangeRequiredException; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    .end local v3    # "e":Ljava/lang/Error;
    .restart local v0    # "debugEnabled":Z
    .restart local v1    # "auth":Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;
    .local v8, "e":Lorg/apache/sshd/server/auth/password/PasswordChangeRequiredException;
    .restart local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local p2    # "session":Lorg/apache/sshd/server/session/ServerSession;
    .restart local p3    # "username":Ljava/lang/String;
    .restart local p4    # "password":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_4

    .line 114
    iget-object v2, p0, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    invoke-virtual {v8}, Lorg/apache/sshd/server/auth/password/PasswordChangeRequiredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkPassword({}) password change required: {}"

    invoke-interface {v2, v4, p2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    :cond_4
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->handleServerPasswordChangeRequest(Lorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/server/auth/password/PasswordChangeRequiredException;)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public doAuth(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Ljava/lang/Boolean;
    .locals 10
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "init"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    const-string v0, "Instance not initialized"

    invoke-static {p2, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    .line 47
    .local v0, "session":Lorg/apache/sshd/server/session/ServerSession;
    invoke-static {v0}, Lorg/apache/sshd/common/auth/UserAuthMethodFactory;->isSecureAuthenticationTransport(Lorg/apache/sshd/common/session/SessionContext;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    iget-object v1, p0, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    const-string v2, "doAuth({}) session is not secure"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 54
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->getUsername()Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "username":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBoolean()Z

    move-result v8

    .line 56
    .local v8, "newPassword":Z
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v9

    .line 57
    .local v9, "password":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 58
    nop

    .line 59
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v6

    .line 58
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v7

    move-object v5, v9

    invoke-virtual/range {v1 .. v6}, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->handleClientPasswordChangeRequest(Lorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 61
    :cond_2
    invoke-virtual {p0, p1, v0, v7, v9}, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->checkPassword(Lorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected handleClientPasswordChangeRequest(Lorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "oldPassword"    # Ljava/lang/String;
    .param p5, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 138
    .local v0, "debugEnabled":Z
    invoke-static {p2}, Lorg/apache/sshd/common/auth/UserAuthMethodFactory;->isDataIntegrityAuthenticationTransport(Lorg/apache/sshd/common/session/SessionContext;)Z

    move-result v1

    const/4 v2, 0x0

    .line 142
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 138
    if-nez v1, :cond_1

    .line 139
    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    const-string v3, "handleClientPasswordChangeRequest({}) session is not validated via MAC"

    invoke-interface {v1, v3, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    :cond_0
    return-object v2

    .line 145
    :cond_1
    invoke-interface {p2}, Lorg/apache/sshd/server/session/ServerSession;->getPasswordAuthenticator()Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;

    move-result-object v1

    .line 146
    .local v1, "auth":Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;
    if-nez v1, :cond_3

    .line 147
    if-eqz v0, :cond_2

    .line 148
    iget-object v3, p0, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    const-string v4, "handleClientPasswordChangeRequest({}) no password authenticator"

    invoke-interface {v3, v4, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    :cond_2
    return-object v2

    .line 153
    :cond_3
    invoke-interface {v1, p2, p3, p4, p5}, Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;->handleClientPasswordChangeRequest(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected handleServerPasswordChangeRequest(Lorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/server/auth/password/PasswordChangeRequiredException;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "e"    # Lorg/apache/sshd/server/auth/password/PasswordChangeRequiredException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    invoke-virtual {p5}, Lorg/apache/sshd/server/auth/password/PasswordChangeRequiredException;->getPrompt()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "prompt":Ljava/lang/String;
    invoke-virtual {p5}, Lorg/apache/sshd/server/auth/password/PasswordChangeRequiredException;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "lang":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lorg/apache/sshd/server/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const-string v4, "handlePasswordChangeRequest({}) password change required - prompt={}, lang={}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :cond_0
    const/16 v2, 0x3c

    .line 181
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x20

    .line 180
    invoke-interface {p2, v2, v3}, Lorg/apache/sshd/server/session/ServerSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object p1

    .line 182
    invoke-virtual {p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 184
    invoke-interface {p2, p1}, Lorg/apache/sshd/server/session/ServerSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 185
    const/4 v2, 0x0

    return-object v2
.end method
