.class public Lorg/apache/sshd/client/auth/password/UserAuthPassword;
.super Lorg/apache/sshd/client/auth/AbstractUserAuth;
.source "UserAuthPassword.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "password"


# instance fields
.field private current:Ljava/lang/String;

.field private passwords:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    const-string v0, "password"

    invoke-direct {p0, v0}, Lorg/apache/sshd/client/auth/AbstractUserAuth;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public init(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-super {p0, p1, p2}, Lorg/apache/sshd/client/auth/AbstractUserAuth;->init(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Lorg/apache/sshd/client/session/ClientSession;->passwordIteratorOf(Lorg/apache/sshd/client/session/ClientSession;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->passwords:Ljava/util/Iterator;

    .line 54
    return-void
.end method

.method protected processAuthDataRequest(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 16
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v4

    .line 88
    .local v4, "cmd":I
    const-string v5, ")["

    const-string v6, "processAuthDataRequest("

    const/16 v0, 0x3c

    if-ne v4, v0, :cond_b

    .line 94
    iget-object v0, v1, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    .line 95
    .local v7, "debugEnabled":Z
    invoke-static/range {p1 .. p1}, Lorg/apache/sshd/common/auth/UserAuthMethodFactory;->isSecureAuthenticationTransport(Lorg/apache/sshd/common/session/SessionContext;)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_1

    .line 96
    if-eqz v7, :cond_0

    .line 97
    iget-object v0, v1, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    const-string v5, "processAuthDataRequest({})[{}] session is not secure"

    invoke-interface {v0, v5, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    :cond_0
    return v8

    .line 102
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/sshd/common/auth/UserAuthMethodFactory;->isDataIntegrityAuthenticationTransport(Lorg/apache/sshd/common/session/SessionContext;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    if-eqz v7, :cond_2

    .line 104
    iget-object v0, v1, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    const-string v5, "processAuthDataRequest({})[{}] session is not validated via MAC"

    invoke-interface {v0, v5, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    :cond_2
    return v8

    .line 109
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v9, "prompt":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v10

    .line 111
    .local v10, "lang":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/sshd/client/session/ClientSession;->getUserInteraction()Lorg/apache/sshd/client/auth/keyboard/UserInteraction;

    move-result-object v11

    .line 115
    .local v11, "ui":Lorg/apache/sshd/client/auth/keyboard/UserInteraction;
    const/4 v13, 0x2

    const/4 v14, 0x4

    const/4 v15, 0x1

    if-eqz v11, :cond_4

    :try_start_0
    invoke-interface {v11, v2}, Lorg/apache/sshd/client/auth/keyboard/UserInteraction;->isInteractionAllowed(Lorg/apache/sshd/client/session/ClientSession;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v15

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    goto :goto_1

    .line 115
    :cond_4
    move v0, v8

    .line 116
    .local v0, "interactive":Z
    :goto_0
    if-eqz v0, :cond_6

    invoke-interface {v11, v2, v9, v10}, Lorg/apache/sshd/client/auth/keyboard/UserInteraction;->getUpdatedPassword(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 118
    .local v0, "e":Ljava/lang/Error;
    :goto_1
    iget-object v12, v1, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v2, v14, v8

    aput-object v3, v14, v15

    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v13

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x3

    aput-object v8, v14, v13

    .line 118
    const-string v8, "processAuthDataRequest({})[{}] failed ({}) to consult interaction: {}"

    invoke-interface {v12, v8, v14}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    if-eqz v7, :cond_5

    .line 121
    iget-object v8, v1, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] interaction consultation failure details"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    :cond_5
    new-instance v5, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v5, v0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 116
    .local v0, "interactive":Z
    :cond_6
    const/4 v5, 0x0

    .line 125
    .local v5, "password":Ljava/lang/String;
    :goto_2
    nop

    .line 127
    if-eqz v0, :cond_9

    .line 128
    invoke-static {v5}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 129
    if-eqz v7, :cond_7

    .line 130
    iget-object v6, v1, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v2, v12, v8

    aput-object v3, v12, v15

    aput-object v9, v12, v13

    const/4 v13, 0x3

    aput-object v10, v12, v13

    const-string v13, "processAuthDataRequest({})[{}] No updated password for prompt={}, lang={}"

    invoke-interface {v6, v13, v12}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :cond_7
    return v8

    .line 135
    :cond_8
    move-object/from16 v12, p3

    invoke-virtual {v1, v12, v2, v5, v5}, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->sendPassword(Lorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 136
    return v15

    .line 140
    :cond_9
    move-object/from16 v12, p3

    if-eqz v7, :cond_a

    .line 141
    iget-object v6, v1, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v2, v14, v8

    aput-object v3, v14, v15

    aput-object v9, v14, v13

    const/4 v13, 0x3

    aput-object v10, v14, v13

    const-string v13, "processAuthDataRequest({})[{}] no UI for password change request for prompt={}, lang={}"

    invoke-interface {v6, v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_a
    return v8

    .line 89
    .end local v0    # "interactive":Z
    .end local v5    # "password":Ljava/lang/String;
    .end local v7    # "debugEnabled":Z
    .end local v9    # "prompt":Ljava/lang/String;
    .end local v10    # "lang":Ljava/lang/String;
    .end local v11    # "ui":Lorg/apache/sshd/client/auth/keyboard/UserInteraction;
    :cond_b
    move-object/from16 v12, p3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] received unknown packet: cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 91
    invoke-static {v4}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected sendAuthDataRequest(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;)Z
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-static {p1}, Lorg/apache/sshd/common/auth/UserAuthMethodFactory;->isSecureAuthenticationTransport(Lorg/apache/sshd/common/session/SessionContext;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    const-string v2, "sendAuthDataRequest({})[{}] session is not secure"

    invoke-interface {v0, v2, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    :cond_0
    return v1

    .line 65
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->passwords:Ljava/util/Iterator;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->passwords:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->current:Ljava/lang/String;

    .line 74
    invoke-interface {p1}, Lorg/apache/sshd/client/session/ClientSession;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "username":Ljava/lang/String;
    const/16 v1, 0x32

    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 77
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->current:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x20

    .line 75
    invoke-interface {p1, v1, v2}, Lorg/apache/sshd/client/session/ClientSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v1

    .line 79
    .local v1, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget-object v2, p0, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->current:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v2, v2}, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->sendPassword(Lorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 80
    const/4 v2, 0x1

    return v2

    .line 66
    .end local v0    # "username":Ljava/lang/String;
    .end local v1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    const-string v2, "sendAuthDataRequest({})[{}] no more passwords to send"

    invoke-interface {v0, v2, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    :cond_4
    return v1
.end method

.method protected sendPassword(Lorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 9
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p3, "oldPassword"    # Ljava/lang/String;
    .param p4, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-interface {p2}, Lorg/apache/sshd/client/session/ClientSession;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "username":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->getService()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "service":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->getName()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "name":Ljava/lang/String;
    invoke-static {p3, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 169
    .local v3, "modified":Z
    iget-object v5, p0, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 170
    iget-object v5, p0, Lorg/apache/sshd/client/auth/password/UserAuthPassword;->log:Lorg/slf4j/Logger;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v6

    aput-object v1, v7, v4

    const/4 v4, 0x2

    aput-object v2, v7, v4

    const/4 v4, 0x3

    .line 171
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    .line 170
    const-string v4, "sendPassword({})[{}] send SSH_MSG_USERAUTH_REQUEST for {} - modified={}"

    invoke-interface {v5, v4, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_0
    const/16 v4, 0x32

    .line 175
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v7

    add-int/2addr v5, v7

    .line 176
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v7

    add-int/2addr v5, v7

    invoke-static {p3}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v7

    add-int/2addr v5, v7

    if-eqz v3, :cond_1

    .line 177
    invoke-static {p4}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_0

    :cond_1
    nop

    :goto_0
    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x40

    .line 174
    invoke-interface {p2, v4, v5}, Lorg/apache/sshd/client/session/ClientSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object p1

    .line 178
    invoke-virtual {p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 183
    invoke-virtual {p1, p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 184
    if-eqz v3, :cond_2

    .line 185
    invoke-virtual {p1, p4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 188
    :cond_2
    invoke-interface {p2, p1}, Lorg/apache/sshd/client/session/ClientSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v4

    return-object v4
.end method
