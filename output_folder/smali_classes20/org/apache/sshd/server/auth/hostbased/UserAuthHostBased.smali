.class public Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;
.super Lorg/apache/sshd/server/auth/AbstractUserAuth;
.source "UserAuthHostBased.java"

# interfaces
.implements Lorg/apache/sshd/common/signature/SignatureFactoriesManager;


# static fields
.field public static final NAME:Ljava/lang/String; = "hostbased"


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

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;-><init>(Ljava/util/List;)V

    .line 57
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

    .line 60
    .local p1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    const-string v0, "hostbased"

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/auth/AbstractUserAuth;-><init>(Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->factories:Ljava/util/List;

    .line 62
    return-void
.end method


# virtual methods
.method protected doAuth(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Ljava/lang/Boolean;
    .locals 32
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "init"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    move-object/from16 v1, p0

    const-string v0, "Instance not initialized"

    move/from16 v2, p2

    invoke-static {v2, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 79
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v3

    .line 80
    .local v3, "dataLen":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->getUsername()Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, "username":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->getSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v12

    .line 82
    .local v12, "session":Lorg/apache/sshd/server/session/ServerSession;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v13

    .line 83
    .local v13, "keyType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v14

    .line 84
    .local v14, "keyLen":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v15

    .line 85
    .local v15, "keyOffset":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v0

    .line 87
    .local v0, "remaining":I
    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/4 v9, 0x1

    if-ltz v14, :cond_a

    if-gt v14, v0, :cond_a

    .line 93
    new-instance v4, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v5

    invoke-direct {v4, v5, v15, v14, v9}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([BIIZ)V

    move-object/from16 v19, v4

    .line 94
    .local v19, "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/sshd/common/util/buffer/Buffer;->getRawPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .line 95
    .local v7, "clientKey":Ljava/security/PublicKey;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 96
    .local v4, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual/range {v19 .. v19}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v6

    .line 97
    .end local v0    # "remaining":I
    .local v6, "remaining":I
    if-lez v6, :cond_0

    .line 98
    const-string v0, "X.509"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 99
    .local v5, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 100
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v19 .. v19}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v10

    invoke-virtual/range {v19 .. v19}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v9

    invoke-direct {v0, v10, v9, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object v9, v0

    .line 101
    .local v9, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-virtual {v5, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 102
    .local v0, "c":Ljava/security/cert/X509Certificate;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    nop

    .end local v0    # "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V

    .line 106
    .end local v5    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v9    # "bais":Ljava/io/ByteArrayInputStream;
    move-object v2, v4

    goto :goto_1

    .line 100
    .restart local v5    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v9    # "bais":Ljava/io/ByteArrayInputStream;
    :catchall_0
    move-exception v0

    move-object v8, v0

    .end local v3    # "dataLen":I
    .end local v4    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v5    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v6    # "remaining":I
    .end local v7    # "clientKey":Ljava/security/PublicKey;
    .end local v9    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v11    # "username":Ljava/lang/String;
    .end local v12    # "session":Lorg/apache/sshd/server/session/ServerSession;
    .end local v13    # "keyType":Ljava/lang/String;
    .end local v14    # "keyLen":I
    .end local v15    # "keyOffset":I
    .end local v19    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local p2    # "init":Z
    :try_start_1
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .restart local v3    # "dataLen":I
    .restart local v4    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v5    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v6    # "remaining":I
    .restart local v7    # "clientKey":Ljava/security/PublicKey;
    .restart local v9    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v11    # "username":Ljava/lang/String;
    .restart local v12    # "session":Lorg/apache/sshd/server/session/ServerSession;
    .restart local v13    # "keyType":Ljava/lang/String;
    .restart local v14    # "keyLen":I
    .restart local v15    # "keyOffset":I
    .restart local v19    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local p2    # "init":Z
    :catchall_1
    move-exception v0

    move-object v10, v0

    :try_start_2
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v8, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v10

    .line 97
    .end local v5    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v9    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_0
    move-object v2, v4

    .line 106
    .end local v4    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :goto_1
    add-int v0, v15, v14

    move-object/from16 v10, p1

    invoke-virtual {v10, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 107
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v9

    .line 108
    .local v9, "clientHostName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "clientUsername":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v4

    .line 111
    .local v4, "signature":[B
    iget-object v0, v1, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v22

    .line 112
    .local v22, "debugEnabled":Z
    const/4 v0, 0x7

    if-eqz v22, :cond_1

    .line 113
    iget-object v8, v1, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    move-object/from16 v25, v4

    .end local v4    # "signature":[B
    .local v25, "signature":[B
    new-array v4, v0, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v11, v4, v23

    const/16 v21, 0x1

    aput-object v12, v4, v21

    aput-object v13, v4, v18

    .line 114
    invoke-static {v7}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v4, v17

    aput-object v5, v4, v16

    const/16 v20, 0x5

    aput-object v9, v4, v20

    .line 115
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v24, 0x6

    aput-object v26, v4, v24

    .line 113
    const-string v0, "doAuth({}@{}) authenticate key type={}, fingerprint={}, client={}@{}, num-certs={}"

    invoke-interface {v8, v0, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 112
    .end local v25    # "signature":[B
    .restart local v4    # "signature":[B
    :cond_1
    move-object/from16 v25, v4

    .line 118
    .end local v4    # "signature":[B
    .restart local v25    # "signature":[B
    :goto_2
    invoke-interface {v12}, Lorg/apache/sshd/server/session/ServerSession;->getHostBasedAuthenticator()Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;

    move-result-object v27

    .line 119
    .local v27, "authenticator":Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;
    if-nez v27, :cond_3

    .line 120
    if-eqz v22, :cond_2

    .line 121
    iget-object v0, v1, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v11, v4, v8

    const/16 v21, 0x1

    aput-object v12, v4, v21

    aput-object v13, v4, v18

    .line 122
    invoke-static {v7}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v17

    aput-object v5, v4, v16

    const/16 v20, 0x5

    aput-object v9, v4, v20

    .line 123
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v23, 0x6

    aput-object v8, v4, v23

    .line 121
    const-string v8, "doAuth({}@{}) key type={}, fingerprint={}, client={}@{}, num-certs={} - no authenticator"

    invoke-interface {v0, v8, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 130
    :cond_3
    const/4 v8, 0x0

    const/16 v20, 0x5

    const/16 v21, 0x1

    const/16 v23, 0x6

    move-object/from16 v24, v25

    .end local v25    # "signature":[B
    .local v24, "signature":[B
    move-object/from16 v4, v27

    move-object/from16 v25, v5

    .end local v5    # "clientUsername":Ljava/lang/String;
    .local v25, "clientUsername":Ljava/lang/String;
    move-object v5, v12

    move/from16 v28, v6

    .end local v6    # "remaining":I
    .local v28, "remaining":I
    move-object v6, v11

    move-object/from16 v29, v7

    .end local v7    # "clientKey":Ljava/security/PublicKey;
    .local v29, "clientKey":Ljava/security/PublicKey;
    move/from16 v30, v15

    move v15, v8

    .end local v15    # "keyOffset":I
    .local v30, "keyOffset":I
    move-object v8, v9

    move-object/from16 v31, v9

    .end local v9    # "clientHostName":Ljava/lang/String;
    .local v31, "clientHostName":Ljava/lang/String;
    move-object/from16 v9, v25

    move-object v10, v2

    :try_start_3
    invoke-interface/range {v4 .. v10}, Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;->authenticate(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0

    .line 141
    .local v0, "authed":Z
    nop

    .line 143
    const/16 v4, 0x8

    if-eqz v22, :cond_4

    .line 144
    iget-object v5, v1, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v11, v6, v15

    const/4 v7, 0x1

    aput-object v12, v6, v7

    aput-object v13, v6, v18

    .line 145
    invoke-static/range {v29 .. v29}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v17

    move-object/from16 v8, v25

    .end local v25    # "clientUsername":Ljava/lang/String;
    .local v8, "clientUsername":Ljava/lang/String;
    aput-object v8, v6, v16

    move-object/from16 v9, v31

    const/4 v10, 0x5

    .end local v31    # "clientHostName":Ljava/lang/String;
    .restart local v9    # "clientHostName":Ljava/lang/String;
    aput-object v9, v6, v10

    .line 146
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x6

    aput-object v20, v6, v21

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v21, 0x7

    aput-object v20, v6, v21

    .line 144
    const-string v10, "doAuth({}@{}) key type={}, fingerprint={}, client={}@{}, num-certs={} - authentication result: {}"

    invoke-interface {v5, v10, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 143
    .end local v8    # "clientUsername":Ljava/lang/String;
    .end local v9    # "clientHostName":Ljava/lang/String;
    .restart local v25    # "clientUsername":Ljava/lang/String;
    .restart local v31    # "clientHostName":Ljava/lang/String;
    :cond_4
    move-object/from16 v8, v25

    move-object/from16 v9, v31

    const/4 v7, 0x1

    .line 148
    .end local v25    # "clientUsername":Ljava/lang/String;
    .end local v31    # "clientHostName":Ljava/lang/String;
    .restart local v8    # "clientUsername":Ljava/lang/String;
    .restart local v9    # "clientHostName":Ljava/lang/String;
    :goto_3
    if-nez v0, :cond_5

    .line 149
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v4

    .line 153
    :cond_5
    nop

    .line 155
    invoke-static {v1, v12}, Lorg/apache/sshd/common/signature/SignatureFactoriesManager;->resolveSignatureFactories(Lorg/apache/sshd/common/signature/SignatureFactoriesManager;Lorg/apache/sshd/common/signature/SignatureFactoriesManager;)Ljava/util/List;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v12, v6, v15

    .line 154
    const-string v10, "No signature factories for session=%s"

    invoke-static {v5, v10, v6}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    .line 158
    .local v5, "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    nop

    .line 159
    invoke-static {v5, v13}, Lorg/apache/sshd/common/NamedFactory;->create(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 158
    const-string v10, "No verifier located for algorithm=%s"

    invoke-static {v6, v10, v13}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/sshd/common/signature/Signature;

    .line 162
    .local v6, "verifier":Lorg/apache/sshd/common/signature/Signature;
    move-object/from16 v10, v29

    .end local v29    # "clientKey":Ljava/security/PublicKey;
    .local v10, "clientKey":Ljava/security/PublicKey;
    invoke-interface {v6, v12, v10}, Lorg/apache/sshd/common/signature/Signature;->initVerifier(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PublicKey;)V

    .line 164
    invoke-interface {v12}, Lorg/apache/sshd/server/session/ServerSession;->getSessionId()[B

    move-result-object v7

    .line 165
    .local v7, "id":[B
    new-instance v4, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    array-length v15, v7

    add-int/2addr v15, v3

    add-int/lit8 v15, v15, 0x40

    move/from16 v25, v3

    const/4 v3, 0x0

    .end local v3    # "dataLen":I
    .local v25, "dataLen":I
    invoke-direct {v4, v15, v3}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    move-object v3, v4

    .line 166
    .end local v19    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v3, "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v3, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 167
    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 168
    invoke-virtual {v3, v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->getService()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v3, v13}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 172
    move-object v15, v5

    .end local v5    # "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    .local v15, "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    int-to-long v4, v14

    invoke-virtual {v3, v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 174
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v4

    move/from16 v5, v30

    .end local v30    # "keyOffset":I
    .local v5, "keyOffset":I
    invoke-virtual {v3, v4, v5, v14}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([BII)V

    .line 175
    invoke-virtual {v3, v9}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v3, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 178
    iget-object v4, v1, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 179
    iget-object v4, v1, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    move/from16 v29, v0

    move/from16 v30, v5

    const/16 v0, 0x8

    .end local v0    # "authed":Z
    .end local v5    # "keyOffset":I
    .local v29, "authed":Z
    .restart local v30    # "keyOffset":I
    new-array v5, v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v11, v5, v19

    const/16 v19, 0x1

    aput-object v12, v5, v19

    aput-object v13, v5, v18

    .line 180
    invoke-static {v10}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v17

    aput-object v8, v5, v16

    const/16 v19, 0x5

    aput-object v9, v5, v19

    .line 181
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v19, 0x6

    aput-object v0, v5, v19

    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->toHex()Ljava/lang/String;

    move-result-object v0

    const/16 v19, 0x7

    aput-object v0, v5, v19

    .line 179
    const-string v0, "doAuth({}@{}) key type={}, fingerprint={}, client={}@{}, num-certs={} - verification data: {}"

    invoke-interface {v4, v0, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v0, v1, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x1

    aput-object v12, v4, v5

    aput-object v13, v4, v18

    .line 183
    invoke-static {v10}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v17

    aput-object v8, v4, v16

    const/4 v5, 0x5

    aput-object v9, v4, v5

    .line 184
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v19, 0x6

    aput-object v5, v4, v19

    invoke-static/range {v24 .. v24}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([B)Ljava/lang/String;

    move-result-object v5

    const/16 v19, 0x7

    aput-object v5, v4, v19

    .line 182
    const-string v5, "doAuth({}@{}) key type={}, fingerprint={}, client={}@{}, num-certs={} - expected signature: {}"

    invoke-interface {v0, v5, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 178
    .end local v29    # "authed":Z
    .end local v30    # "keyOffset":I
    .restart local v0    # "authed":Z
    .restart local v5    # "keyOffset":I
    :cond_6
    move/from16 v29, v0

    move/from16 v30, v5

    .line 187
    .end local v0    # "authed":Z
    .end local v5    # "keyOffset":I
    .restart local v29    # "authed":Z
    .restart local v30    # "keyOffset":I
    :goto_4
    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v0

    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v4

    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v5

    invoke-interface {v6, v12, v0, v4, v5}, Lorg/apache/sshd/common/signature/Signature;->update(Lorg/apache/sshd/common/session/SessionContext;[BII)V

    .line 188
    move-object/from16 v4, v24

    .end local v24    # "signature":[B
    .restart local v4    # "signature":[B
    invoke-interface {v6, v12, v4}, Lorg/apache/sshd/common/signature/Signature;->verify(Lorg/apache/sshd/common/session/SessionContext;[B)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 192
    if-eqz v22, :cond_7

    .line 193
    iget-object v0, v1, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v11, v5, v19

    const/16 v19, 0x1

    aput-object v12, v5, v19

    aput-object v13, v5, v18

    .line 194
    invoke-static {v10}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v17

    aput-object v8, v5, v16

    const/16 v16, 0x5

    aput-object v9, v5, v16

    .line 195
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x6

    aput-object v16, v5, v17

    .line 193
    move-object/from16 v20, v2

    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v20, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const-string v2, "doAuth({}@{}) key type={}, fingerprint={}, client={}@{}, num-certs={} - verified signature"

    invoke-interface {v0, v2, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 192
    .end local v20    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_7
    move-object/from16 v20, v2

    .line 197
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v20    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :goto_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 189
    .end local v20    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_8
    move-object/from16 v20, v2

    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v20    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v0, Ljava/security/SignatureException;

    const-string v2, "Key verification failed"

    invoke-direct {v0, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    .end local v4    # "signature":[B
    .end local v6    # "verifier":Lorg/apache/sshd/common/signature/Signature;
    .end local v7    # "id":[B
    .end local v8    # "clientUsername":Ljava/lang/String;
    .end local v9    # "clientHostName":Ljava/lang/String;
    .end local v10    # "clientKey":Ljava/security/PublicKey;
    .end local v15    # "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    .end local v20    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v3, "dataLen":I
    .restart local v19    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v24    # "signature":[B
    .local v25, "clientUsername":Ljava/lang/String;
    .local v29, "clientKey":Ljava/security/PublicKey;
    .restart local v31    # "clientHostName":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v4, v24

    move-object/from16 v8, v25

    move-object/from16 v10, v29

    move-object/from16 v9, v31

    move/from16 v25, v3

    move-object v2, v0

    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "dataLen":I
    .end local v24    # "signature":[B
    .end local v29    # "clientKey":Ljava/security/PublicKey;
    .end local v31    # "clientHostName":Ljava/lang/String;
    .restart local v4    # "signature":[B
    .restart local v8    # "clientUsername":Ljava/lang/String;
    .restart local v9    # "clientHostName":Ljava/lang/String;
    .restart local v10    # "clientKey":Ljava/security/PublicKey;
    .restart local v20    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v25, "dataLen":I
    move-object v0, v2

    .line 133
    .local v0, "e":Ljava/lang/Error;
    iget-object v2, v1, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v3, v5

    const/4 v5, 0x1

    aput-object v12, v3, v5

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v18

    aput-object v13, v3, v17

    .line 135
    invoke-static {v10}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v16

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v3, v6

    .line 133
    const-string v5, "doAuth({}@{}) failed ({}) to consult authenticator for {} key={}: {}"

    invoke-interface {v2, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    if-eqz v22, :cond_9

    .line 137
    iget-object v2, v1, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doAuth("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") delegate consultation failure details"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    :cond_9
    new-instance v2, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v2, v0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 87
    .end local v4    # "signature":[B
    .end local v8    # "clientUsername":Ljava/lang/String;
    .end local v9    # "clientHostName":Ljava/lang/String;
    .end local v10    # "clientKey":Ljava/security/PublicKey;
    .end local v19    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v20    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v22    # "debugEnabled":Z
    .end local v25    # "dataLen":I
    .end local v27    # "authenticator":Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;
    .end local v28    # "remaining":I
    .end local v30    # "keyOffset":I
    .local v0, "remaining":I
    .restart local v3    # "dataLen":I
    .local v15, "keyOffset":I
    :cond_a
    move/from16 v25, v3

    move/from16 v30, v15

    .line 88
    .end local v3    # "dataLen":I
    .end local v15    # "keyOffset":I
    .restart local v25    # "dataLen":I
    .restart local v30    # "keyOffset":I
    iget-object v2, v1, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    const/4 v4, 0x1

    aput-object v12, v3, v4

    aput-object v13, v3, v18

    .line 89
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v16

    .line 88
    const-string v4, "doAuth({}@{}) Illogical {} key length={} (max. available={})"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illogical "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
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

    .line 66
    iget-object v0, p0, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->factories:Ljava/util/List;

    return-object v0
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

    .line 71
    .local p1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;->factories:Ljava/util/List;

    .line 72
    return-void
.end method
