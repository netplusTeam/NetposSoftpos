.class Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
.super Ljava/lang/Object;
.source "OpenSslKeyMaterialProvider.java"


# instance fields
.field private final keyManager:Ljavax/net/ssl/X509KeyManager;

.field private final password:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "password"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->keyManager:Ljavax/net/ssl/X509KeyManager;

    .line 39
    iput-object p2, p0, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->password:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static validateKeyMaterialSupported([Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 0
    .param p0, "keyCertChain"    # [Ljava/security/cert/X509Certificate;
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "keyPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->validateSupported([Ljava/security/cert/X509Certificate;)V

    .line 45
    invoke-static {p1, p2}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->validateSupported(Ljava/security/PrivateKey;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private static validateSupported(Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 10
    .param p0, "key"    # Ljava/security/PrivateKey;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 49
    if-nez p0, :cond_0

    .line 50
    return-void

    .line 53
    :cond_0
    const-wide/16 v0, 0x0

    .line 54
    .local v0, "pkeyBio":J
    const-wide/16 v2, 0x0

    .line 57
    .local v2, "pkey":J
    const-wide/16 v4, 0x0

    :try_start_0
    sget-object v6, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    invoke-static {v6, p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Ljava/security/PrivateKey;)J

    move-result-wide v6

    move-wide v0, v6

    .line 58
    invoke-static {v0, v1, p1}, Lio/netty/internal/tcnative/SSL;->parsePrivateKey(JLjava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v6

    .line 62
    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 63
    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 64
    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->freePrivateKey(J)V

    .line 67
    :cond_1
    return-void

    .line 62
    :catchall_0
    move-exception v6

    goto :goto_0

    .line 59
    :catch_0
    move-exception v6

    .line 60
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v7, Ljavax/net/ssl/SSLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PrivateKey type not supported "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "pkeyBio":J
    .end local v2    # "pkey":J
    .end local p0    # "key":Ljava/security/PrivateKey;
    .end local p1    # "password":Ljava/lang/String;
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v0    # "pkeyBio":J
    .restart local v2    # "pkey":J
    .restart local p0    # "key":Ljava/security/PrivateKey;
    .restart local p1    # "password":Ljava/lang/String;
    :goto_0
    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 63
    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 64
    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->freePrivateKey(J)V

    .line 66
    :cond_2
    throw v6
.end method

.method private static validateSupported([Ljava/security/cert/X509Certificate;)V
    .locals 10
    .param p0, "certificates"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 70
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    const-wide/16 v0, 0x0

    .line 75
    .local v0, "chainBio":J
    const-wide/16 v2, 0x0

    .line 76
    .local v2, "chain":J
    const/4 v4, 0x0

    .line 78
    .local v4, "encoded":Lio/netty/handler/ssl/PemEncoded;
    const-wide/16 v5, 0x0

    :try_start_0
    sget-object v7, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    const/4 v8, 0x1

    invoke-static {v7, v8, p0}, Lio/netty/handler/ssl/PemX509Certificate;->toPEM(Lio/netty/buffer/ByteBufAllocator;Z[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/PemEncoded;

    move-result-object v7

    move-object v4, v7

    .line 79
    sget-object v7, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    invoke-interface {v4}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v8

    invoke-static {v7, v8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J

    move-result-wide v7

    move-wide v0, v7

    .line 80
    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->parseX509Chain(J)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v7

    .line 84
    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 85
    cmp-long v5, v2, v5

    if-eqz v5, :cond_1

    .line 86
    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->freeX509Chain(J)V

    .line 88
    :cond_1
    if-eqz v4, :cond_2

    .line 89
    invoke-interface {v4}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 92
    :cond_2
    return-void

    .line 84
    :catchall_0
    move-exception v7

    goto :goto_0

    .line 81
    :catch_0
    move-exception v7

    .line 82
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v8, Ljavax/net/ssl/SSLException;

    const-string v9, "Certificate type not supported"

    invoke-direct {v8, v9, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "chainBio":J
    .end local v2    # "chain":J
    .end local v4    # "encoded":Lio/netty/handler/ssl/PemEncoded;
    .end local p0    # "certificates":[Ljava/security/cert/X509Certificate;
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v0    # "chainBio":J
    .restart local v2    # "chain":J
    .restart local v4    # "encoded":Lio/netty/handler/ssl/PemEncoded;
    .restart local p0    # "certificates":[Ljava/security/cert/X509Certificate;
    :goto_0
    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 85
    cmp-long v5, v2, v5

    if-eqz v5, :cond_3

    .line 86
    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->freeX509Chain(J)V

    .line 88
    :cond_3
    if-eqz v4, :cond_4

    .line 89
    invoke-interface {v4}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 91
    :cond_4
    throw v7

    .line 71
    .end local v0    # "chainBio":J
    .end local v2    # "chain":J
    .end local v4    # "encoded":Lio/netty/handler/ssl/PemEncoded;
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method chooseKeyMaterial(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .locals 23
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, v3}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v10

    .line 107
    .local v10, "certificates":[Ljava/security/cert/X509Certificate;
    if-eqz v10, :cond_7

    array-length v0, v10

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 111
    :cond_0
    iget-object v0, v1, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, v3}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v11

    .line 112
    .local v11, "key":Ljava/security/PrivateKey;
    const/4 v0, 0x1

    invoke-static {v2, v0, v10}, Lio/netty/handler/ssl/PemX509Certificate;->toPEM(Lio/netty/buffer/ByteBufAllocator;Z[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/PemEncoded;

    move-result-object v12

    .line 113
    .local v12, "encoded":Lio/netty/handler/ssl/PemEncoded;
    const-wide/16 v4, 0x0

    .line 114
    .local v4, "chainBio":J
    const-wide/16 v6, 0x0

    .line 115
    .local v6, "pkeyBio":J
    const-wide/16 v8, 0x0

    .line 116
    .local v8, "chain":J
    const-wide/16 v13, 0x0

    .line 118
    .local v13, "pkey":J
    const-wide/16 v15, 0x0

    :try_start_0
    invoke-interface {v12}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v0

    invoke-static {v2, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J

    move-result-wide v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 119
    .end local v4    # "chainBio":J
    .local v17, "chainBio":J
    :try_start_1
    invoke-static/range {v17 .. v18}, Lio/netty/internal/tcnative/SSL;->parseX509Chain(J)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 122
    .end local v8    # "chain":J
    .local v4, "chain":J
    :try_start_2
    instance-of v0, v11, Lio/netty/handler/ssl/OpenSslPrivateKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v0, :cond_1

    .line 123
    :try_start_3
    move-object v0, v11

    check-cast v0, Lio/netty/handler/ssl/OpenSslPrivateKey;

    invoke-virtual {v0, v4, v5, v10}, Lio/netty/handler/ssl/OpenSslPrivateKey;->newKeyMaterial(J[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/OpenSslKeyMaterial;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v21, v4

    .local v0, "keyMaterial":Lio/netty/handler/ssl/OpenSslKeyMaterial;
    goto :goto_1

    .line 136
    .end local v0    # "keyMaterial":Lio/netty/handler/ssl/OpenSslKeyMaterial;
    :catchall_0
    move-exception v0

    move-wide v8, v4

    move-wide/from16 v4, v17

    goto/16 :goto_2

    .line 125
    :cond_1
    :try_start_4
    invoke-static {v2, v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Ljava/security/PrivateKey;)J

    move-result-wide v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-wide v6, v8

    .line 126
    if-nez v11, :cond_2

    move-wide v8, v15

    goto :goto_0

    :cond_2
    :try_start_5
    iget-object v0, v1, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->password:Ljava/lang/String;

    invoke-static {v6, v7, v0}, Lio/netty/internal/tcnative/SSL;->parsePrivateKey(JLjava/lang/String;)J

    move-result-wide v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_0
    move-wide/from16 v19, v6

    .end local v6    # "pkeyBio":J
    .local v19, "pkeyBio":J
    move-wide v7, v8

    .line 127
    .end local v13    # "pkey":J
    .local v7, "pkey":J
    :try_start_6
    new-instance v0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-wide/from16 v21, v4

    .end local v4    # "chain":J
    .local v21, "chain":J
    move-object v4, v0

    move-wide/from16 v5, v21

    move-object v9, v10

    :try_start_7
    invoke-direct/range {v4 .. v9}, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;-><init>(JJ[Ljava/security/cert/X509Certificate;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-wide v13, v7

    move-wide/from16 v6, v19

    .line 132
    .end local v7    # "pkey":J
    .end local v19    # "pkeyBio":J
    .restart local v0    # "keyMaterial":Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .restart local v6    # "pkeyBio":J
    .restart local v13    # "pkey":J
    :goto_1
    const-wide/16 v4, 0x0

    .line 133
    .end local v21    # "chain":J
    .restart local v4    # "chain":J
    const-wide/16 v8, 0x0

    .line 134
    .end local v13    # "pkey":J
    .local v8, "pkey":J
    nop

    .line 136
    invoke-static/range {v17 .. v18}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 137
    invoke-static {v6, v7}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 138
    cmp-long v13, v4, v15

    if-eqz v13, :cond_3

    .line 139
    invoke-static {v4, v5}, Lio/netty/internal/tcnative/SSL;->freeX509Chain(J)V

    .line 141
    :cond_3
    cmp-long v13, v8, v15

    if-eqz v13, :cond_4

    .line 142
    invoke-static {v8, v9}, Lio/netty/internal/tcnative/SSL;->freePrivateKey(J)V

    .line 144
    :cond_4
    invoke-interface {v12}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 134
    return-object v0

    .line 136
    .end local v0    # "keyMaterial":Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .end local v4    # "chain":J
    .end local v6    # "pkeyBio":J
    .end local v8    # "pkey":J
    .restart local v7    # "pkey":J
    .restart local v19    # "pkeyBio":J
    .restart local v21    # "chain":J
    :catchall_1
    move-exception v0

    move-wide v13, v7

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    move-wide/from16 v8, v21

    goto :goto_2

    .end local v21    # "chain":J
    .restart local v4    # "chain":J
    :catchall_2
    move-exception v0

    move-wide/from16 v21, v4

    move-wide v13, v7

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    move-wide/from16 v8, v21

    .end local v4    # "chain":J
    .restart local v21    # "chain":J
    goto :goto_2

    .end local v7    # "pkey":J
    .end local v19    # "pkeyBio":J
    .end local v21    # "chain":J
    .restart local v4    # "chain":J
    .restart local v6    # "pkeyBio":J
    .restart local v13    # "pkey":J
    :catchall_3
    move-exception v0

    move-wide/from16 v21, v4

    move-wide/from16 v19, v6

    move-wide/from16 v4, v17

    move-wide/from16 v8, v21

    .end local v4    # "chain":J
    .end local v6    # "pkeyBio":J
    .restart local v19    # "pkeyBio":J
    .restart local v21    # "chain":J
    goto :goto_2

    .end local v19    # "pkeyBio":J
    .end local v21    # "chain":J
    .restart local v4    # "chain":J
    .restart local v6    # "pkeyBio":J
    :catchall_4
    move-exception v0

    move-wide/from16 v21, v4

    move-wide/from16 v4, v17

    move-wide/from16 v8, v21

    .end local v4    # "chain":J
    .restart local v21    # "chain":J
    goto :goto_2

    .end local v21    # "chain":J
    .local v8, "chain":J
    :catchall_5
    move-exception v0

    move-wide/from16 v4, v17

    goto :goto_2

    .end local v17    # "chainBio":J
    .local v4, "chainBio":J
    :catchall_6
    move-exception v0

    :goto_2
    invoke-static {v4, v5}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 137
    invoke-static {v6, v7}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 138
    cmp-long v17, v8, v15

    if-eqz v17, :cond_5

    .line 139
    invoke-static {v8, v9}, Lio/netty/internal/tcnative/SSL;->freeX509Chain(J)V

    .line 141
    :cond_5
    cmp-long v15, v13, v15

    if-eqz v15, :cond_6

    .line 142
    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->freePrivateKey(J)V

    .line 144
    :cond_6
    invoke-interface {v12}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 145
    throw v0

    .line 108
    .end local v4    # "chainBio":J
    .end local v6    # "pkeyBio":J
    .end local v8    # "chain":J
    .end local v11    # "key":Ljava/security/PrivateKey;
    .end local v12    # "encoded":Lio/netty/handler/ssl/PemEncoded;
    .end local v13    # "pkey":J
    :cond_7
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method destroy()V
    .locals 0

    .line 153
    return-void
.end method

.method keyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->keyManager:Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method
