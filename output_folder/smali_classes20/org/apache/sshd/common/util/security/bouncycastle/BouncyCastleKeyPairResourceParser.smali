.class public Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleKeyPairResourceParser;
.super Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;
.source "BouncyCastleKeyPairResourceParser.java"


# static fields
.field public static final BEGINNERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENDERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleKeyPairResourceParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    const-string v0, "BEGIN RSA PRIVATE KEY"

    const-string v1, "BEGIN DSA PRIVATE KEY"

    const-string v2, "BEGIN EC PRIVATE KEY"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleKeyPairResourceParser;->BEGINNERS:Ljava/util/List;

    .line 67
    const-string v0, "END RSA PRIVATE KEY"

    const-string v1, "END DSA PRIVATE KEY"

    const-string v2, "END EC PRIVATE KEY"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleKeyPairResourceParser;->ENDERS:Ljava/util/List;

    .line 74
    new-instance v0, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleKeyPairResourceParser;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleKeyPairResourceParser;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleKeyPairResourceParser;->INSTANCE:Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleKeyPairResourceParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 77
    sget-object v0, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleKeyPairResourceParser;->BEGINNERS:Ljava/util/List;

    sget-object v1, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleKeyPairResourceParser;->ENDERS:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lorg/apache/sshd/common/config/keys/loader/AbstractKeyPairResourceParser;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 78
    return-void
.end method

.method static synthetic lambda$extractKeyPairs$0(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/lang/StringBuilder;
    .param p1, "l"    # Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/sshd/common/util/io/IoUtils;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static loadKeyPair(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Ljava/security/KeyPair;
    .locals 17
    .param p0, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p1, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 113
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v14, p2

    invoke-direct {v1, v14, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/PEMParser;-><init>(Ljava/io/Reader;)V

    move-object v15, v0

    .line 114
    .local v15, "r":Lorg/bouncycastle/openssl/PEMParser;
    :try_start_0
    invoke-virtual {v15}, Lorg/bouncycastle/openssl/PEMParser;->readObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 116
    .local v1, "o":Ljava/lang/Object;
    const-string v0, "BC"

    .line 117
    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getRegisteredProvider(Ljava/lang/String;)Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    move-result-object v0

    move-object/from16 v16, v0

    .line 118
    .local v16, "registrar":Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    if-eqz v16, :cond_7

    .line 122
    new-instance v0, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;-><init>()V

    move-object v11, v0

    .line 123
    .local v11, "pemConverter":Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;
    invoke-interface/range {v16 .. v16}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isNamedProviderUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-interface/range {v16 .. v16}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    goto :goto_0

    .line 126
    :cond_0
    invoke-interface/range {v16 .. v16}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->getSecurityProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    .line 129
    :goto_0
    instance-of v0, v1, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;

    if-eqz v0, :cond_4

    .line 130
    if-eqz v13, :cond_3

    .line 134
    const/4 v0, 0x0

    move v10, v0

    .line 135
    .local v10, "retryIndex":I
    :goto_1
    move-object/from16 v9, p0

    invoke-interface {v13, v9, v12, v10}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;->getPassword(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .local v5, "password":Ljava/lang/String;
    :try_start_1
    invoke-static {v5}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    new-instance v0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;-><init>()V

    .line 143
    .local v0, "decryptorBuilder":Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->build([C)Lorg/bouncycastle/openssl/PEMDecryptorProvider;

    move-result-object v2

    .line 144
    .local v2, "pemDecryptor":Lorg/bouncycastle/openssl/PEMDecryptorProvider;
    move-object v3, v1

    check-cast v3, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->decryptKeyPair(Lorg/bouncycastle/openssl/PEMDecryptorProvider;)Lorg/bouncycastle/openssl/PEMKeyPair;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v3

    .line 161
    .end local v0    # "decryptorBuilder":Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;
    .end local v2    # "pemDecryptor":Lorg/bouncycastle/openssl/PEMDecryptorProvider;
    .local v7, "decoded":Lorg/bouncycastle/openssl/PEMKeyPair;
    nop

    .line 163
    move-object v0, v7

    .line 164
    .end local v1    # "o":Ljava/lang/Object;
    .local v0, "o":Ljava/lang/Object;
    const/4 v6, 0x0

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v4, v10

    :try_start_2
    invoke-interface/range {v1 .. v6}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;->handleDecodeAttemptResult(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;ILjava/lang/String;Ljava/lang/Exception;)Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    move-object v1, v0

    move-object v3, v11

    goto/16 :goto_4

    .line 139
    .end local v0    # "o":Ljava/lang/Object;
    .end local v7    # "decoded":Lorg/bouncycastle/openssl/PEMKeyPair;
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    :try_start_3
    new-instance v0, Ljavax/security/auth/login/FailedLoginException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No password data for encrypted resource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/security/auth/login/FailedLoginException;-><init>(Ljava/lang/String;)V

    .end local v1    # "o":Ljava/lang/Object;
    .end local v5    # "password":Ljava/lang/String;
    .end local v10    # "retryIndex":I
    .end local v11    # "pemConverter":Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;
    .end local v15    # "r":Lorg/bouncycastle/openssl/PEMParser;
    .end local v16    # "registrar":Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    .end local p0    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p1    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p2    # "inputStream":Ljava/io/InputStream;
    .end local p3    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    .restart local v1    # "o":Ljava/lang/Object;
    .restart local v5    # "password":Ljava/lang/String;
    .restart local v10    # "retryIndex":I
    .restart local v11    # "pemConverter":Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;
    .restart local v15    # "r":Lorg/bouncycastle/openssl/PEMParser;
    .restart local v16    # "registrar":Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    .restart local p0    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p1    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    .restart local p3    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 147
    move-object/from16 v6, p3

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v9, v10

    move v2, v10

    .end local v10    # "retryIndex":I
    .local v2, "retryIndex":I
    move-object v10, v5

    move-object v3, v11

    .end local v11    # "pemConverter":Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;
    .local v3, "pemConverter":Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;
    move-object v11, v0

    :try_start_4
    invoke-interface/range {v6 .. v11}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;->handleDecodeAttemptResult(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;ILjava/lang/String;Ljava/lang/Exception;)Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    move-result-object v4

    .line 148
    .local v4, "result":Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    if-nez v4, :cond_2

    .line 149
    sget-object v6, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;->TERMINATE:Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    move-object v4, v6

    .line 151
    :cond_2
    sget-object v6, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleKeyPairResourceParser$1;->$SwitchMap$org$apache$sshd$common$config$keys$FilePasswordProvider$ResourceDecodeResult:[I

    invoke-virtual {v4}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 159
    new-instance v6, Ljava/net/ProtocolException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 157
    :pswitch_0
    const/4 v6, 0x0

    .line 176
    invoke-virtual {v15}, Lorg/bouncycastle/openssl/PEMParser;->close()V

    .line 157
    return-object v6

    .line 155
    :pswitch_1
    nop

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "result":Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    .end local v5    # "password":Ljava/lang/String;
    add-int/lit8 v10, v2, 0x1

    move-object v11, v3

    .end local v2    # "retryIndex":I
    .restart local v10    # "retryIndex":I
    goto :goto_1

    .line 153
    .end local v10    # "retryIndex":I
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "retryIndex":I
    .restart local v4    # "result":Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    .restart local v5    # "password":Ljava/lang/String;
    :pswitch_2
    nop

    .end local v15    # "r":Lorg/bouncycastle/openssl/PEMParser;
    .end local p0    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p1    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p2    # "inputStream":Ljava/io/InputStream;
    .end local p3    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    :try_start_5
    throw v0

    .line 159
    .restart local v15    # "r":Lorg/bouncycastle/openssl/PEMParser;
    .restart local p0    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p1    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    .restart local p3    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported decode attempt result ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v15    # "r":Lorg/bouncycastle/openssl/PEMParser;
    .end local p0    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p1    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p2    # "inputStream":Ljava/io/InputStream;
    .end local p3    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    throw v6

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "retryIndex":I
    .end local v3    # "pemConverter":Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;
    .end local v4    # "result":Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    .end local v5    # "password":Ljava/lang/String;
    .restart local v11    # "pemConverter":Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;
    .restart local v15    # "r":Lorg/bouncycastle/openssl/PEMParser;
    .restart local p0    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p1    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    .restart local p3    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    :cond_3
    move-object v3, v11

    .end local v11    # "pemConverter":Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;
    .restart local v3    # "pemConverter":Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;
    new-instance v0, Ljavax/security/auth/login/CredentialException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing password provider for encrypted resource="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/security/auth/login/CredentialException;-><init>(Ljava/lang/String;)V

    .end local v15    # "r":Lorg/bouncycastle/openssl/PEMParser;
    .end local p0    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p1    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p2    # "inputStream":Ljava/io/InputStream;
    .end local p3    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    throw v0

    .line 129
    .end local v3    # "pemConverter":Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;
    .restart local v11    # "pemConverter":Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;
    .restart local v15    # "r":Lorg/bouncycastle/openssl/PEMParser;
    .restart local p0    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p1    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    .restart local p3    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    :cond_4
    move-object v3, v11

    .line 169
    .end local v11    # "pemConverter":Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;
    .restart local v3    # "pemConverter":Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;
    :goto_4
    instance-of v0, v1, Lorg/bouncycastle/openssl/PEMKeyPair;

    if-eqz v0, :cond_5

    .line 170
    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/openssl/PEMKeyPair;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->getKeyPair(Lorg/bouncycastle/openssl/PEMKeyPair;)Ljava/security/KeyPair;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 176
    invoke-virtual {v15}, Lorg/bouncycastle/openssl/PEMParser;->close()V

    .line 170
    return-object v0

    .line 171
    :cond_5
    :try_start_6
    instance-of v0, v1, Ljava/security/KeyPair;

    if-eqz v0, :cond_6

    .line 172
    move-object v0, v1

    check-cast v0, Ljava/security/KeyPair;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 176
    invoke-virtual {v15}, Lorg/bouncycastle/openssl/PEMParser;->close()V

    .line 172
    return-object v0

    .line 174
    :cond_6
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - unknown result object: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v15    # "r":Lorg/bouncycastle/openssl/PEMParser;
    .end local p0    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p1    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p2    # "inputStream":Ljava/io/InputStream;
    .end local p3    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    throw v0

    .line 119
    .end local v3    # "pemConverter":Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;
    .restart local v15    # "r":Lorg/bouncycastle/openssl/PEMParser;
    .restart local p0    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p1    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    .restart local p3    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    :cond_7
    new-instance v0, Ljava/security/NoSuchProviderException;

    const-string v2, "BC registrar not available"

    invoke-direct {v0, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    .end local v15    # "r":Lorg/bouncycastle/openssl/PEMParser;
    .end local p0    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p1    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p2    # "inputStream":Ljava/io/InputStream;
    .end local p3    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 113
    .end local v1    # "o":Ljava/lang/Object;
    .end local v16    # "registrar":Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    .restart local v15    # "r":Lorg/bouncycastle/openssl/PEMParser;
    .restart local p0    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p1    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    .restart local p3    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    :catchall_0
    move-exception v0

    move-object v1, v0

    .end local v15    # "r":Lorg/bouncycastle/openssl/PEMParser;
    .end local p0    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p1    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p2    # "inputStream":Ljava/io/InputStream;
    .end local p3    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 176
    .restart local v15    # "r":Lorg/bouncycastle/openssl/PEMParser;
    .restart local p0    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p1    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    .restart local p3    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v15}, Lorg/bouncycastle/openssl/PEMParser;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public extractKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;Ljava/util/Map;)Ljava/util/Collection;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "beginMarker"    # Ljava/lang/String;
    .param p4, "endMarker"    # Ljava/lang/String;
    .param p5, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p6, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 106
    .local p7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2, p6, p5}, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleKeyPairResourceParser;->loadKeyPair(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Ljava/security/KeyPair;

    move-result-object v0

    .line 107
    .local v0, "kp":Ljava/security/KeyPair;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public extractKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;Ljava/util/Map;)Ljava/util/Collection;
    .locals 15
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "beginMarker"    # Ljava/lang/String;
    .param p4, "endMarker"    # Ljava/lang/String;
    .param p5, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 87
    .local p6, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x50

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v0

    .line 88
    .local v1, "writer":Ljava/lang/StringBuilder;
    move-object/from16 v10, p3

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lorg/apache/sshd/common/util/io/IoUtils;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    new-instance v0, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleKeyPairResourceParser$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleKeyPairResourceParser$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    move-object/from16 v11, p6

    invoke-interface {v11, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 90
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lorg/apache/sshd/common/util/io/IoUtils;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 93
    .local v13, "data":Ljava/lang/String;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    .line 94
    .local v14, "dataBytes":[B
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 95
    .local v8, "bais":Ljava/io/InputStream;
    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    :try_start_0
    invoke-virtual/range {v2 .. v9}, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleKeyPairResourceParser;->extractKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 95
    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    move-object v2, v0

    .end local v1    # "writer":Ljava/lang/StringBuilder;
    .end local v8    # "bais":Ljava/io/InputStream;
    .end local v13    # "data":Ljava/lang/String;
    .end local v14    # "dataBytes":[B
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "beginMarker":Ljava/lang/String;
    .end local p4    # "endMarker":Ljava/lang/String;
    .end local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    .restart local v1    # "writer":Ljava/lang/StringBuilder;
    .restart local v8    # "bais":Ljava/io/InputStream;
    .restart local v13    # "data":Ljava/lang/String;
    .restart local v14    # "dataBytes":[B
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "beginMarker":Ljava/lang/String;
    .restart local p4    # "endMarker":Ljava/lang/String;
    .restart local p5    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p6    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
.end method
