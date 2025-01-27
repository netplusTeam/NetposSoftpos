.class public Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;
.super Lorg/apache/sshd/server/auth/AbstractUserAuth;
.source "UserAuthPublicKey.java"

# interfaces
.implements Lorg/apache/sshd/common/signature/SignatureFactoriesManager;


# static fields
.field public static final NAME:Ljava/lang/String; = "publickey"


# instance fields
.field private factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;-><init>(Ljava/util/List;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;)V"
        }
    .end annotation

    .line 56
    .local p1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    const-string v0, "publickey"

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/auth/AbstractUserAuth;-><init>(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->factories:Ljava/util/List;

    .line 58
    return-void
.end method


# virtual methods
.method public doAuth(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Ljava/lang/Boolean;
    .locals 29
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "init"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const-string v0, "Instance not initialized"

    move/from16 v13, p2

    invoke-static {v13, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v12

    .line 74
    .local v12, "session":Lorg/apache/sshd/server/session/ServerSession;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->getUsername()Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, "username":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBoolean()Z

    move-result v18

    .line 77
    .local v18, "hasSig":Z
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v10

    .line 78
    .local v10, "alg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v9

    .line 79
    .local v9, "oldLim":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v8

    .line 80
    .local v8, "oldPos":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v7

    .line 81
    .local v7, "len":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v6

    .line 83
    .local v6, "remaining":I
    const/4 v1, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v7, :cond_a

    if-gt v7, v6, :cond_a

    .line 89
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v0

    add-int/2addr v0, v7

    invoke-virtual {v14, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 91
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getRawPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 92
    .local v2, "key":Ljava/security/PublicKey;
    nop

    .line 94
    invoke-static {v15, v12}, Lorg/apache/sshd/common/signature/SignatureFactoriesManager;->resolveSignatureFactories(Lorg/apache/sshd/common/signature/SignatureFactoriesManager;Lorg/apache/sshd/common/signature/SignatureFactoriesManager;)Ljava/util/List;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v12, v3, v5

    .line 93
    const-string v4, "No signature factories for session=%s"

    invoke-static {v0, v4, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    .line 97
    .local v4, "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    iget-object v0, v15, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v21

    .line 98
    .local v21, "debugEnabled":Z
    if-eqz v21, :cond_0

    .line 99
    iget-object v0, v15, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v11, v3, v5

    const/16 v16, 0x1

    aput-object v12, v3, v16

    const/16 v16, 0x2

    aput-object v10, v3, v16

    .line 100
    invoke-static {v4}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x3

    aput-object v16, v3, v17

    invoke-static {v2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x4

    aput-object v16, v3, v17

    .line 99
    const-string v1, "doAuth({}@{}) verify key type={}, factories={}, fingerprint={}"

    invoke-interface {v0, v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_0
    nop

    .line 104
    invoke-static {v4, v10}, Lorg/apache/sshd/common/NamedFactory;->create(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    const-string v1, "No verifier located for algorithm=%s"

    invoke-static {v0, v1, v10}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/apache/sshd/common/signature/Signature;

    .line 107
    .local v3, "verifier":Lorg/apache/sshd/common/signature/Signature;
    invoke-interface {v3, v12, v2}, Lorg/apache/sshd/common/signature/Signature;->initVerifier(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PublicKey;)V

    .line 108
    invoke-virtual {v14, v9}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 110
    const/4 v0, 0x0

    if-eqz v18, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_0

    :cond_1
    move-object/from16 v17, v0

    .line 111
    .local v17, "sig":[B
    :goto_0
    invoke-interface {v12}, Lorg/apache/sshd/server/session/ServerSession;->getPublickeyAuthenticator()Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    move-result-object v1

    .line 112
    .local v1, "authenticator":Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    if-nez v1, :cond_3

    .line 113
    if-eqz v21, :cond_2

    .line 114
    iget-object v0, v15, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    move-object/from16 v22, v3

    const/4 v3, 0x4

    .end local v3    # "verifier":Lorg/apache/sshd/common/signature/Signature;
    .local v22, "verifier":Lorg/apache/sshd/common/signature/Signature;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v11, v3, v5

    const/4 v5, 0x1

    aput-object v12, v3, v5

    const/4 v5, 0x2

    aput-object v10, v3, v5

    .line 115
    invoke-static {v2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x3

    aput-object v5, v3, v16

    .line 114
    const-string v5, "doAuth({}@{}) key type={}, fingerprint={} - no authenticator"

    invoke-interface {v0, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 113
    .end local v22    # "verifier":Lorg/apache/sshd/common/signature/Signature;
    .restart local v3    # "verifier":Lorg/apache/sshd/common/signature/Signature;
    :cond_2
    move-object/from16 v22, v3

    .line 117
    .end local v3    # "verifier":Lorg/apache/sshd/common/signature/Signature;
    .restart local v22    # "verifier":Lorg/apache/sshd/common/signature/Signature;
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 122
    .end local v22    # "verifier":Lorg/apache/sshd/common/signature/Signature;
    .restart local v3    # "verifier":Lorg/apache/sshd/common/signature/Signature;
    :cond_3
    move-object/from16 v22, v3

    .end local v3    # "verifier":Lorg/apache/sshd/common/signature/Signature;
    .restart local v22    # "verifier":Lorg/apache/sshd/common/signature/Signature;
    :try_start_0
    invoke-interface {v1, v11, v2, v12}, Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;->authenticate(Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/server/session/ServerSession;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v23, v3

    .line 131
    .local v23, "authed":Z
    nop

    .line 133
    if-eqz v21, :cond_4

    .line 134
    iget-object v3, v15, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    move-object/from16 v24, v1

    const/4 v1, 0x5

    .end local v1    # "authenticator":Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    .local v24, "authenticator":Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v11, v1, v5

    const/16 v16, 0x1

    aput-object v12, v1, v16

    const/16 v16, 0x2

    aput-object v10, v1, v16

    .line 135
    invoke-static {v2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x3

    aput-object v16, v1, v19

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v20, 0x4

    aput-object v16, v1, v20

    .line 134
    const-string v5, "doAuth({}@{}) key type={}, fingerprint={} - authentication result: {}"

    invoke-interface {v3, v5, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 133
    .end local v24    # "authenticator":Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    .restart local v1    # "authenticator":Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    :cond_4
    move-object/from16 v24, v1

    .line 138
    .end local v1    # "authenticator":Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    .restart local v24    # "authenticator":Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    :goto_2
    if-nez v23, :cond_5

    .line 139
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 142
    :cond_5
    if-nez v18, :cond_6

    .line 143
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v16

    add-int/lit8 v19, v7, 0x4

    move-object/from16 v1, p0

    move-object/from16 v25, v2

    .end local v2    # "key":Ljava/security/PublicKey;
    .local v25, "key":Ljava/security/PublicKey;
    move-object v2, v12

    move-object v3, v11

    move-object/from16 v26, v4

    .end local v4    # "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    .local v26, "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    move-object v4, v10

    move-object/from16 v5, v25

    move/from16 v27, v6

    .end local v6    # "remaining":I
    .local v27, "remaining":I
    move-object/from16 v6, v16

    move v15, v7

    .end local v7    # "len":I
    .local v15, "len":I
    move v7, v8

    move v13, v8

    .end local v8    # "oldPos":I
    .local v13, "oldPos":I
    move/from16 v8, v19

    move/from16 v28, v9

    .end local v9    # "oldLim":I
    .local v28, "oldLim":I
    move-object/from16 v9, p1

    invoke-virtual/range {v1 .. v9}, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->sendPublicKeyResponse(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;[BIILorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 144
    return-object v0

    .line 147
    .end local v13    # "oldPos":I
    .end local v15    # "len":I
    .end local v25    # "key":Ljava/security/PublicKey;
    .end local v26    # "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    .end local v27    # "remaining":I
    .end local v28    # "oldLim":I
    .restart local v2    # "key":Ljava/security/PublicKey;
    .restart local v4    # "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    .restart local v6    # "remaining":I
    .restart local v7    # "len":I
    .restart local v8    # "oldPos":I
    .restart local v9    # "oldLim":I
    :cond_6
    move-object/from16 v25, v2

    move-object/from16 v26, v4

    move/from16 v27, v6

    move v15, v7

    move v13, v8

    move/from16 v28, v9

    .end local v2    # "key":Ljava/security/PublicKey;
    .end local v4    # "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    .end local v6    # "remaining":I
    .end local v7    # "len":I
    .end local v8    # "oldPos":I
    .end local v9    # "oldLim":I
    .restart local v13    # "oldPos":I
    .restart local v15    # "len":I
    .restart local v25    # "key":Ljava/security/PublicKey;
    .restart local v26    # "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    .restart local v27    # "remaining":I
    .restart local v28    # "oldLim":I
    invoke-virtual {v14, v13}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 148
    add-int/lit8 v8, v13, 0x4

    add-int/2addr v8, v15

    invoke-virtual {v14, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 149
    move-object v1, v10

    .end local v10    # "alg":Ljava/lang/String;
    .local v1, "alg":Ljava/lang/String;
    move-object/from16 v10, p0

    move-object v2, v11

    .end local v11    # "username":Ljava/lang/String;
    .local v2, "username":Ljava/lang/String;
    move-object v11, v12

    move-object v3, v12

    .end local v12    # "session":Lorg/apache/sshd/server/session/ServerSession;
    .local v3, "session":Lorg/apache/sshd/server/session/ServerSession;
    move-object v12, v2

    move v4, v13

    .end local v13    # "oldPos":I
    .local v4, "oldPos":I
    move-object v13, v1

    move-object/from16 v14, v25

    move-object/from16 v5, p0

    move v6, v15

    .end local v15    # "len":I
    .local v6, "len":I
    move-object/from16 v15, p1

    move-object/from16 v16, v22

    invoke-virtual/range {v10 .. v17}, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->verifySignature(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/common/signature/Signature;[B)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 153
    if-eqz v21, :cond_7

    .line 154
    iget-object v0, v5, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    .line 155
    invoke-static/range {v25 .. v25}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 154
    const-string v8, "doAuth({}@{}) key type={}, fingerprint={} - verified"

    invoke-interface {v0, v8, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 150
    :cond_8
    new-instance v0, Ljava/security/SignatureException;

    const-string v7, "Key verification failed"

    invoke-direct {v0, v7}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    .end local v3    # "session":Lorg/apache/sshd/server/session/ServerSession;
    .end local v23    # "authed":Z
    .end local v24    # "authenticator":Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    .end local v25    # "key":Ljava/security/PublicKey;
    .end local v26    # "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    .end local v27    # "remaining":I
    .end local v28    # "oldLim":I
    .local v1, "authenticator":Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    .local v2, "key":Ljava/security/PublicKey;
    .local v4, "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    .local v6, "remaining":I
    .restart local v7    # "len":I
    .restart local v8    # "oldPos":I
    .restart local v9    # "oldLim":I
    .restart local v10    # "alg":Ljava/lang/String;
    .restart local v11    # "username":Ljava/lang/String;
    .restart local v12    # "session":Lorg/apache/sshd/server/session/ServerSession;
    :catch_0
    move-exception v0

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-object/from16 v26, v4

    move/from16 v27, v6

    move v6, v7

    move v4, v8

    move/from16 v28, v9

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v5, v15

    move-object v7, v0

    .end local v7    # "len":I
    .end local v8    # "oldPos":I
    .end local v9    # "oldLim":I
    .end local v10    # "alg":Ljava/lang/String;
    .end local v11    # "username":Ljava/lang/String;
    .end local v12    # "session":Lorg/apache/sshd/server/session/ServerSession;
    .local v1, "alg":Ljava/lang/String;
    .local v2, "username":Ljava/lang/String;
    .restart local v3    # "session":Lorg/apache/sshd/server/session/ServerSession;
    .local v4, "oldPos":I
    .local v6, "len":I
    .restart local v24    # "authenticator":Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    .restart local v25    # "key":Ljava/security/PublicKey;
    .restart local v26    # "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    .restart local v27    # "remaining":I
    .restart local v28    # "oldLim":I
    move-object v0, v7

    .line 124
    .local v0, "e":Ljava/lang/Error;
    iget-object v7, v5, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const/4 v9, 0x3

    aput-object v1, v8, v9

    invoke-static/range {v25 .. v25}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v8, v10

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v8, v10

    .line 124
    const-string v9, "doAuth({}@{}) failed ({}) to consult delegate for {} key={}: {}"

    invoke-interface {v7, v9, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    if-eqz v21, :cond_9

    .line 127
    iget-object v7, v5, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doAuth("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") delegate failure details"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    :cond_9
    new-instance v7, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v7, v0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 83
    .end local v0    # "e":Ljava/lang/Error;
    .end local v1    # "alg":Ljava/lang/String;
    .end local v2    # "username":Ljava/lang/String;
    .end local v3    # "session":Lorg/apache/sshd/server/session/ServerSession;
    .end local v4    # "oldPos":I
    .end local v17    # "sig":[B
    .end local v21    # "debugEnabled":Z
    .end local v22    # "verifier":Lorg/apache/sshd/common/signature/Signature;
    .end local v24    # "authenticator":Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    .end local v25    # "key":Ljava/security/PublicKey;
    .end local v26    # "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    .end local v27    # "remaining":I
    .end local v28    # "oldLim":I
    .local v6, "remaining":I
    .restart local v7    # "len":I
    .restart local v8    # "oldPos":I
    .restart local v9    # "oldLim":I
    .restart local v10    # "alg":Ljava/lang/String;
    .restart local v11    # "username":Ljava/lang/String;
    .restart local v12    # "session":Lorg/apache/sshd/server/session/ServerSession;
    :cond_a
    move/from16 v27, v6

    move v6, v7

    move v4, v8

    move/from16 v28, v9

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v5, v15

    .line 84
    .end local v7    # "len":I
    .end local v8    # "oldPos":I
    .end local v9    # "oldLim":I
    .end local v10    # "alg":Ljava/lang/String;
    .end local v11    # "username":Ljava/lang/String;
    .end local v12    # "session":Lorg/apache/sshd/server/session/ServerSession;
    .restart local v1    # "alg":Ljava/lang/String;
    .restart local v2    # "username":Ljava/lang/String;
    .restart local v3    # "session":Lorg/apache/sshd/server/session/ServerSession;
    .restart local v4    # "oldPos":I
    .local v6, "len":I
    .restart local v27    # "remaining":I
    .restart local v28    # "oldLim":I
    iget-object v0, v5, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    .line 85
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    .line 84
    const-string v8, "doAuth({}@{}) illogical algorithm={} signature length ({}) when remaining={}"

    invoke-interface {v0, v8, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illogical signature length ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") for algorithm="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSignatureFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->factories:Ljava/util/List;

    return-object v0
.end method

.method protected sendPublicKeyResponse(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;[BIILorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "alg"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/security/PublicKey;
    .param p5, "keyBlob"    # [B
    .param p6, "offset"    # I
    .param p7, "blobLen"    # I
    .param p8, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    .line 195
    invoke-static {p4}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 194
    const-string v2, "doAuth({}@{}) send SSH_MSG_USERAUTH_PK_OK for key type={}, fingerprint={}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :cond_0
    const/16 v0, 0x3c

    .line 199
    invoke-static {p3}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/2addr v1, p7

    add-int/lit8 v1, v1, 0x20

    .line 198
    invoke-interface {p1, v0, v1}, Lorg/apache/sshd/server/session/ServerSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    .line 200
    .local v0, "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v0, p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, p5, p6, p7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([BII)V

    .line 202
    invoke-interface {p1, v0}, Lorg/apache/sshd/server/session/ServerSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 203
    return-void
.end method

.method public setSignatureFactories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;)V"
        }
    .end annotation

    .line 67
    .local p1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->factories:Ljava/util/List;

    .line 68
    return-void
.end method

.method protected verifySignature(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/common/signature/Signature;[B)Z
    .locals 21
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "alg"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/security/PublicKey;
    .param p5, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p6, "verifier"    # Lorg/apache/sshd/common/signature/Signature;
    .param p7, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    invoke-interface/range {p1 .. p1}, Lorg/apache/sshd/server/session/ServerSession;->getSessionId()[B

    move-result-object v5

    .line 165
    .local v5, "id":[B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->getService()Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "service":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->getName()Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "name":Ljava/lang/String;
    new-instance v8, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    array-length v9, v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    .line 168
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit16 v9, v9, 0x100

    add-int/lit8 v9, v9, 0x40

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    .line 169
    .local v8, "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v8, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 170
    const/16 v9, 0x32

    invoke-virtual {v8, v9}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 171
    invoke-virtual {v8, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v8, v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v8, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 174
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 175
    invoke-virtual {v8, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 176
    move-object/from16 v11, p5

    invoke-virtual {v8, v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBuffer(Lorg/apache/sshd/common/util/Readable;)V

    .line 178
    iget-object v12, v0, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    invoke-interface {v12}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 179
    iget-object v12, v0, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    const/4 v13, 0x7

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v2, v14, v10

    aput-object v1, v14, v9

    const/4 v15, 0x2

    aput-object v6, v14, v15

    const/16 v16, 0x3

    aput-object v7, v14, v16

    const/16 v17, 0x4

    aput-object v3, v14, v17

    .line 180
    invoke-static/range {p4 .. p4}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x5

    aput-object v18, v14, v19

    invoke-virtual {v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->toHex()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x6

    aput-object v18, v14, v20

    .line 179
    const-string/jumbo v15, "verifySignature({}@{})[{}][{}] key type={}, fingerprint={} - verification data={}"

    invoke-interface {v12, v15, v14}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v12, v0, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v2, v13, v10

    aput-object v1, v13, v9

    const/4 v9, 0x2

    aput-object v6, v13, v9

    aput-object v7, v13, v16

    aput-object v3, v13, v17

    .line 182
    invoke-static/range {p4 .. p4}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v13, v19

    invoke-static/range {p7 .. p7}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([B)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v13, v20

    .line 181
    const-string/jumbo v9, "verifySignature({}@{})[{}][{}] key type={}, fingerprint={} - expected signature={}"

    invoke-interface {v12, v9, v13}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_0
    invoke-virtual {v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v9

    invoke-virtual {v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v10

    invoke-virtual {v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v12

    invoke-interface {v4, v1, v9, v10, v12}, Lorg/apache/sshd/common/signature/Signature;->update(Lorg/apache/sshd/common/session/SessionContext;[BII)V

    .line 186
    move-object/from16 v9, p7

    invoke-interface {v4, v1, v9}, Lorg/apache/sshd/common/signature/Signature;->verify(Lorg/apache/sshd/common/session/SessionContext;[B)Z

    move-result v10

    return v10
.end method
