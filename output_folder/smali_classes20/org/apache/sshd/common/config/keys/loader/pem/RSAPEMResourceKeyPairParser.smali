.class public Lorg/apache/sshd/common/config/keys/loader/pem/RSAPEMResourceKeyPairParser;
.super Lorg/apache/sshd/common/config/keys/loader/pem/AbstractPEMResourceKeyPairParser;
.source "RSAPEMResourceKeyPairParser.java"


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

.field public static final BEGIN_MARKER:Ljava/lang/String; = "BEGIN RSA PRIVATE KEY"

.field public static final ENDERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final END_MARKER:Ljava/lang/String; = "END RSA PRIVATE KEY"

.field public static final INSTANCE:Lorg/apache/sshd/common/config/keys/loader/pem/RSAPEMResourceKeyPairParser;

.field public static final RSA_OID:Ljava/lang/String; = "1.2.840.113549.1.1.1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    nop

    .line 56
    const-string v0, "BEGIN RSA PRIVATE KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/RSAPEMResourceKeyPairParser;->BEGINNERS:Ljava/util/List;

    .line 59
    nop

    .line 60
    const-string v0, "END RSA PRIVATE KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/RSAPEMResourceKeyPairParser;->ENDERS:Ljava/util/List;

    .line 67
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/pem/RSAPEMResourceKeyPairParser;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/pem/RSAPEMResourceKeyPairParser;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/RSAPEMResourceKeyPairParser;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/pem/RSAPEMResourceKeyPairParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 70
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/RSAPEMResourceKeyPairParser;->BEGINNERS:Ljava/util/List;

    sget-object v1, Lorg/apache/sshd/common/config/keys/loader/pem/RSAPEMResourceKeyPairParser;->ENDERS:Ljava/util/List;

    const-string v2, "RSA"

    const-string v3, "1.2.840.113549.1.1.1"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/sshd/common/config/keys/loader/pem/AbstractPEMResourceKeyPairParser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 71
    return-void
.end method

.method public static decodeRSAKeyPair(Ljava/security/KeyFactory;Ljava/io/InputStream;Z)Ljava/security/KeyPair;
    .locals 18
    .param p0, "kf"    # Ljava/security/KeyFactory;
    .param p1, "s"    # Ljava/io/InputStream;
    .param p2, "okToClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 111
    move-object/from16 v1, p0

    new-instance v0, Lorg/apache/sshd/common/util/io/der/DERParser;

    invoke-static/range {p1 .. p2}, Lorg/apache/sshd/common/util/io/NoCloseInputStream;->resolveInputStream(Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/sshd/common/util/io/der/DERParser;-><init>(Ljava/io/InputStream;)V

    move-object v2, v0

    .line 112
    .local v2, "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v3, v0

    .line 113
    .local v3, "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V

    .line 115
    .end local v2    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    sget-object v0, Lorg/apache/sshd/common/util/io/der/ASN1Type;->SEQUENCE:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    invoke-virtual {v3}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/sshd/common/util/io/der/ASN1Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {v3}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->createParser()Lorg/apache/sshd/common/util/io/der/DERParser;

    move-result-object v2

    .line 121
    .restart local v2    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v0

    .line 122
    .local v0, "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 128
    .local v4, "version":Ljava/math/BigInteger;
    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 132
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asInteger()Ljava/math/BigInteger;

    move-result-object v5

    .line 133
    .local v5, "modulus":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asInteger()Ljava/math/BigInteger;

    move-result-object v6

    move-object v15, v6

    .line 134
    .local v15, "publicExp":Ljava/math/BigInteger;
    new-instance v6, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v6, v5, v15}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    move-object v8, v6

    .line 136
    .local v8, "pubKey":Ljava/security/PublicKey;
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asInteger()Ljava/math/BigInteger;

    move-result-object v9

    .line 137
    .local v9, "privateExp":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asInteger()Ljava/math/BigInteger;

    move-result-object v10

    .line 138
    .local v10, "primeP":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asInteger()Ljava/math/BigInteger;

    move-result-object v11

    .line 139
    .local v11, "primeQ":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asInteger()Ljava/math/BigInteger;

    move-result-object v12

    .line 140
    .local v12, "primeExponentP":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asInteger()Ljava/math/BigInteger;

    move-result-object v13

    .line 141
    .local v13, "primeExponentQ":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asInteger()Ljava/math/BigInteger;

    move-result-object v14

    .line 142
    .local v14, "crtCoef":Ljava/math/BigInteger;
    new-instance v16, Ljava/security/spec/RSAPrivateCrtKeySpec;

    move-object/from16 v6, v16

    move-object v7, v5

    move-object/from16 v17, v0

    move-object v0, v8

    .end local v8    # "pubKey":Ljava/security/PublicKey;
    .local v0, "pubKey":Ljava/security/PublicKey;
    .local v17, "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    move-object v8, v15

    invoke-direct/range {v6 .. v14}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v6, v16

    .line 144
    .local v6, "prvSpec":Ljava/security/spec/RSAPrivateKeySpec;
    invoke-virtual {v1, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v7

    .line 145
    .local v7, "prvKey":Ljava/security/PrivateKey;
    new-instance v8, Ljava/security/KeyPair;

    invoke-direct {v8, v0, v7}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V

    .line 145
    :cond_0
    return-object v8

    .line 129
    .end local v5    # "modulus":Ljava/math/BigInteger;
    .end local v6    # "prvSpec":Ljava/security/spec/RSAPrivateKeySpec;
    .end local v7    # "prvKey":Ljava/security/PrivateKey;
    .end local v9    # "privateExp":Ljava/math/BigInteger;
    .end local v10    # "primeP":Ljava/math/BigInteger;
    .end local v11    # "primeQ":Ljava/math/BigInteger;
    .end local v12    # "primeExponentP":Ljava/math/BigInteger;
    .end local v13    # "primeExponentQ":Ljava/math/BigInteger;
    .end local v14    # "crtCoef":Ljava/math/BigInteger;
    .end local v15    # "publicExp":Ljava/math/BigInteger;
    .end local v17    # "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .local v0, "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    :cond_1
    move-object/from16 v17, v0

    .end local v0    # "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v17    # "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    :try_start_2
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v5, "Multi-primes N/A"

    invoke-direct {v0, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v2    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local v3    # "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local p0    # "kf":Ljava/security/KeyFactory;
    .end local p1    # "s":Ljava/io/InputStream;
    .end local p2    # "okToClose":Z
    throw v0

    .line 123
    .end local v4    # "version":Ljava/math/BigInteger;
    .end local v17    # "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v0    # "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v2    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local v3    # "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local p0    # "kf":Ljava/security/KeyFactory;
    .restart local p1    # "s":Ljava/io/InputStream;
    .restart local p2    # "okToClose":Z
    :cond_2
    move-object/from16 v17, v0

    .end local v0    # "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v17    # "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v4, "No version"

    invoke-direct {v0, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v2    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local v3    # "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local p0    # "kf":Ljava/security/KeyFactory;
    .end local p1    # "s":Ljava/io/InputStream;
    .end local p2    # "okToClose":Z
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    .end local v17    # "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v2    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local v3    # "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local p0    # "kf":Ljava/security/KeyFactory;
    .restart local p1    # "s":Ljava/io/InputStream;
    .restart local p2    # "okToClose":Z
    :catchall_0
    move-exception v0

    move-object v4, v0

    .end local v2    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local v3    # "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local p0    # "kf":Ljava/security/KeyFactory;
    .end local p1    # "s":Ljava/io/InputStream;
    .end local p2    # "okToClose":Z
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    .restart local v2    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local v3    # "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local p0    # "kf":Ljava/security/KeyFactory;
    .restart local p1    # "s":Ljava/io/InputStream;
    .restart local p2    # "okToClose":Z
    :catchall_1
    move-exception v0

    move-object v5, v0

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v5

    .line 116
    .end local v2    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid DER: not a sequence: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    .end local v3    # "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v2    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :catchall_3
    move-exception v0

    move-object v3, v0

    .end local v2    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local p0    # "kf":Ljava/security/KeyFactory;
    .end local p1    # "s":Ljava/io/InputStream;
    .end local p2    # "okToClose":Z
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 113
    .restart local v2    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local p0    # "kf":Ljava/security/KeyFactory;
    .restart local p1    # "s":Ljava/io/InputStream;
    .restart local p2    # "okToClose":Z
    :catchall_4
    move-exception v0

    move-object v4, v0

    :try_start_6
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    move-object v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4
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

    .line 80
    .local p7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "RSA"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p6, v1}, Lorg/apache/sshd/common/config/keys/loader/pem/RSAPEMResourceKeyPairParser;->decodeRSAKeyPair(Ljava/security/KeyFactory;Ljava/io/InputStream;Z)Ljava/security/KeyPair;

    move-result-object v0

    .line 81
    .local v0, "kp":Ljava/security/KeyPair;
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
