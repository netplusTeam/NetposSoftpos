.class public Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;
.super Lorg/apache/sshd/server/auth/AbstractUserAuth;
.source "UserAuthKeyboardInteractive.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "keyboard-interactive"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    const-string v0, "keyboard-interactive"

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/auth/AbstractUserAuth;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected doAuth(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Ljava/lang/Boolean;
    .locals 4
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "init"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    .line 48
    .local v0, "session":Lorg/apache/sshd/server/session/ServerSession;
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "username":Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/sshd/server/session/ServerSession;->getKeyboardInteractiveAuthenticator()Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    move-result-object v2

    .line 50
    .local v2, "auth":Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;
    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->doInitialAuth(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 53
    :cond_0
    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->doValidateAuthResponse(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method protected doInitialAuth(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Boolean;
    .locals 11
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "auth"    # Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;
    .param p4, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    invoke-virtual {p4}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "lang":Ljava/lang/String;
    invoke-virtual {p4}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "subMethods":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    .line 63
    .local v2, "debugEnabled":Z
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 68
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 63
    if-nez p3, :cond_1

    .line 64
    if-eqz v2, :cond_0

    .line 65
    iget-object v9, p0, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v7

    aput-object p1, v6, v5

    aput-object v1, v6, v4

    aput-object v0, v6, v3

    const-string v3, "doAuth({}@{})[methods={}, lang={}] - no interactive authenticator to generate challenge"

    invoke-interface {v9, v3, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_0
    return-object v8

    .line 73
    :cond_1
    :try_start_0
    invoke-interface {p3, p1, p2, v0, v1}, Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;->generateChallenge(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .local v9, "challenge":Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;
    nop

    .line 83
    if-nez v9, :cond_3

    .line 84
    if-eqz v2, :cond_2

    .line 85
    iget-object v10, p0, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v7

    aput-object p1, v6, v5

    aput-object v1, v6, v4

    aput-object v0, v6, v3

    const-string v3, "doAuth({}@{})[methods={}, lang={}] - no interactive challenge generated"

    invoke-interface {v10, v3, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :cond_2
    return-object v8

    .line 91
    :cond_3
    if-eqz v2, :cond_4

    .line 92
    iget-object v8, p0, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p2, v10, v7

    aput-object p1, v10, v5

    aput-object v1, v10, v4

    aput-object v0, v10, v3

    .line 94
    invoke-virtual {v9}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->getInteractionName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v6

    const/4 v3, 0x5

    invoke-virtual {v9}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->getInteractionInstruction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v3

    const/4 v3, 0x6

    .line 95
    invoke-virtual {v9}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->getLanguageTag()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v3

    const/4 v3, 0x7

    invoke-virtual {v9}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->getPrompts()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v3

    .line 92
    const-string v3, "doAuth({}@{})[methods={}, lang={}] challenge name={}, instruction={}, lang={}, num. prompts={}"

    invoke-interface {v8, v3, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :cond_4
    const/16 v3, 0x3c

    invoke-interface {p1, v3}, Lorg/apache/sshd/server/session/ServerSession;->createBuffer(B)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object p4

    .line 100
    invoke-virtual {v9, p4}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->append(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 101
    invoke-interface {p1, p4}, Lorg/apache/sshd/server/session/ServerSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 102
    const/4 v3, 0x0

    return-object v3

    .line 74
    .end local v9    # "challenge":Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;
    :catch_0
    move-exception v8

    .line 75
    .local v8, "e":Ljava/lang/Error;
    iget-object v9, p0, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v7

    aput-object p1, v6, v5

    .line 76
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-virtual {v8}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    .line 75
    const-string v3, "doAuth({}@{}) failed ({}) to generate authenticator challenge: {}"

    invoke-interface {v9, v3, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    if-eqz v2, :cond_5

    .line 78
    iget-object v3, p0, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doAuth("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") authenticator challenge failure details"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :cond_5
    new-instance v3, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v3, v8}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected doValidateAuthResponse(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Boolean;
    .locals 18
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "auth"    # Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;
    .param p4, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {p4 .. p4}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v5

    .line 109
    .local v5, "cmd":I
    const/16 v0, 0x3d

    if-ne v5, v0, :cond_8

    .line 113
    invoke-virtual/range {p4 .. p4}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v6

    .line 115
    .local v6, "num":I
    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ltz v6, :cond_7

    const v0, 0x8000

    if-gt v6, v0, :cond_7

    .line 120
    if-gtz v6, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    move-object v11, v0

    .line 121
    .local v11, "responses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v1, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v12

    .line 122
    .local v12, "traceEnabled":Z
    const/4 v0, 0x1

    .local v0, "index":I
    :goto_1
    if-gt v0, v6, :cond_2

    .line 123
    invoke-virtual/range {p4 .. p4}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v14

    .line 124
    .local v14, "value":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 125
    iget-object v15, v1, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v3, v13, v10

    aput-object v2, v13, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v13, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v13, v8

    const/16 v16, 0x4

    aput-object v14, v13, v16

    const-string v7, "doAuth({}@{}) response {}/{}: {}"

    invoke-interface {v15, v7, v13}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_1
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v14    # "value":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    const/4 v7, 0x2

    goto :goto_1

    .line 130
    .end local v0    # "index":I
    :cond_2
    iget-object v0, v1, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    .line 131
    .local v7, "debugEnabled":Z
    if-nez v4, :cond_4

    .line 132
    if-eqz v7, :cond_3

    .line 133
    iget-object v0, v1, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v10

    aput-object v2, v8, v9

    .line 134
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v13, 0x2

    aput-object v9, v8, v13

    .line 133
    const-string v9, "doAuth({}@{}) no interactive authenticator to validate {} responses"

    invoke-interface {v0, v9, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 141
    :cond_4
    :try_start_0
    invoke-interface {v4, v2, v3, v11}, Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;->authenticate(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .local v0, "authed":Z
    nop

    .line 151
    if-eqz v7, :cond_5

    .line 152
    iget-object v13, v1, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v3, v14, v10

    aput-object v2, v14, v9

    .line 153
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v14, v10

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v14, v8

    .line 152
    const-string v8, "doAuth({}@{}) authenticate {} responses result: {}"

    invoke-interface {v13, v8, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    .line 142
    .end local v0    # "authed":Z
    :catch_0
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 143
    .local v0, "e":Ljava/lang/Error;
    iget-object v13, v1, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v3, v14, v10

    aput-object v2, v14, v9

    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v14, v10

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v14, v8

    .line 143
    const-string v8, "doAuth({}@{}) failed ({}) to consult authenticator: {}"

    invoke-interface {v13, v8, v14}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    if-eqz v7, :cond_6

    .line 146
    iget-object v8, v1, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doAuth("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") authenticator consultation failure details"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    :cond_6
    new-instance v8, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v8, v0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 116
    .end local v0    # "e":Ljava/lang/Error;
    .end local v7    # "debugEnabled":Z
    .end local v11    # "responses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "traceEnabled":Z
    :cond_7
    iget-object v0, v1, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v3, v7, v10

    aput-object v2, v7, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-string v8, "doValidateAuthResponse({}@{}) illogical response count: {}"

    invoke-interface {v0, v8, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illogical response count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    .end local v6    # "num":I
    :cond_8
    new-instance v0, Lorg/apache/sshd/common/SshException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received unexpected message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
