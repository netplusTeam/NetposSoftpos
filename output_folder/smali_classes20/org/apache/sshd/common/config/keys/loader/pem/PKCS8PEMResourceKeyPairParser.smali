.class public Lorg/apache/sshd/common/config/keys/loader/pem/PKCS8PEMResourceKeyPairParser;
.super Lorg/apache/sshd/common/config/keys/loader/pem/AbstractPEMResourceKeyPairParser;
.source "PKCS8PEMResourceKeyPairParser.java"


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

.field public static final BEGIN_MARKER:Ljava/lang/String; = "BEGIN PRIVATE KEY"

.field public static final ENDERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final END_MARKER:Ljava/lang/String; = "END PRIVATE KEY"

.field public static final INSTANCE:Lorg/apache/sshd/common/config/keys/loader/pem/PKCS8PEMResourceKeyPairParser;

.field public static final PKCS8_FORMAT:Ljava/lang/String; = "PKCS#8"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    nop

    .line 55
    const-string v0, "BEGIN PRIVATE KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/PKCS8PEMResourceKeyPairParser;->BEGINNERS:Ljava/util/List;

    .line 58
    nop

    .line 59
    const-string v0, "END PRIVATE KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/PKCS8PEMResourceKeyPairParser;->ENDERS:Ljava/util/List;

    .line 63
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/pem/PKCS8PEMResourceKeyPairParser;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/pem/PKCS8PEMResourceKeyPairParser;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/PKCS8PEMResourceKeyPairParser;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/pem/PKCS8PEMResourceKeyPairParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 66
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/PKCS8PEMResourceKeyPairParser;->BEGINNERS:Ljava/util/List;

    sget-object v1, Lorg/apache/sshd/common/config/keys/loader/pem/PKCS8PEMResourceKeyPairParser;->ENDERS:Ljava/util/List;

    const-string v2, "PKCS#8"

    invoke-direct {p0, v2, v2, v0, v1}, Lorg/apache/sshd/common/config/keys/loader/pem/AbstractPEMResourceKeyPairParser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 67
    return-void
.end method

.method public static decodePEMPrivateKeyPKCS8(Ljava/lang/String;[B)Ljava/security/PrivateKey;
    .locals 5
    .param p0, "oid"    # Ljava/lang/String;
    .param p1, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 94
    nop

    .line 96
    const-string v0, "No PKCS8 algorithm OID"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->getPEMResourceParserByOid(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;

    move-result-object v0

    .line 97
    .local v0, "parser":Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;
    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Lorg/apache/sshd/common/config/keys/loader/pem/KeyPairPEMResourceParser;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No parser algorithm"

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "algorithm":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 103
    .local v2, "factory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 104
    .local v3, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    return-object v4

    .line 98
    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v2    # "factory":Ljava/security/KeyFactory;
    .end local v3    # "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :cond_0
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodePEMPrivateKeyPKCS8("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") unknown algorithm identifier"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decodePEMPrivateKeyPKCS8(Ljava/util/List;[B)Ljava/security/PrivateKey;
    .locals 2
    .param p1, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[B)",
            "Ljava/security/PrivateKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 88
    .local p0, "oidAlgorithm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No PKCS8 algorithm OID"

    invoke-static {p0, v1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    .line 89
    const/16 v0, 0x2e

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/sshd/common/config/keys/loader/pem/PKCS8PEMResourceKeyPairParser;->decodePEMPrivateKeyPKCS8(Ljava/lang/String;[B)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static getPKCS8AlgorithmIdentifier(Lorg/apache/sshd/common/util/io/der/ASN1Object;)Ljava/util/List;
    .locals 7
    .param p0, "privateKeyInfo"    # Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/io/der/ASN1Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->createParser()Lorg/apache/sshd/common/util/io/der/DERParser;

    move-result-object v0

    .line 144
    .local v0, "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v1

    .line 145
    .local v1, "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    if-eqz v1, :cond_4

    .line 149
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v2

    .line 150
    .local v2, "privateKeyAlgorithm":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    if-eqz v2, :cond_3

    .line 154
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->createParser()Lorg/apache/sshd/common/util/io/der/DERParser;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 155
    .local v3, "oidParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :try_start_1
    invoke-virtual {v3}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v4

    .line 156
    .local v4, "oid":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    invoke-virtual {v4}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asOID()Ljava/util/List;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 158
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V

    .line 156
    :cond_1
    return-object v5

    .line 154
    .end local v4    # "oid":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    :catchall_0
    move-exception v4

    .end local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local v1    # "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local v2    # "privateKeyAlgorithm":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local v3    # "oidParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local p0    # "privateKeyInfo":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 157
    .restart local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local v1    # "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v2    # "privateKeyAlgorithm":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v3    # "oidParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local p0    # "privateKeyInfo":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    :catchall_1
    move-exception v5

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v6

    :try_start_5
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local p0    # "privateKeyInfo":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    :cond_2
    :goto_0
    throw v5

    .line 151
    .end local v3    # "oidParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local p0    # "privateKeyInfo":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    :cond_3
    new-instance v3, Ljava/io/StreamCorruptedException;

    const-string v4, "No private key algorithm"

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local p0    # "privateKeyInfo":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    throw v3

    .line 146
    .end local v2    # "privateKeyAlgorithm":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local p0    # "privateKeyInfo":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    :cond_4
    new-instance v2, Ljava/io/StreamCorruptedException;

    const-string v3, "No version"

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local p0    # "privateKeyInfo":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 142
    .end local v1    # "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local p0    # "privateKeyInfo":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    :catchall_3
    move-exception v1

    .end local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local p0    # "privateKeyInfo":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 158
    .restart local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local p0    # "privateKeyInfo":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    :catchall_4
    move-exception v2

    if-eqz v0, :cond_5

    :try_start_7
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v2
.end method

.method public static getPKCS8AlgorithmIdentifier(Lorg/apache/sshd/common/util/io/der/DERParser;)Ljava/util/List;
    .locals 1
    .param p0, "parser"    # Lorg/apache/sshd/common/util/io/der/DERParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/io/der/DERParser;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/loader/pem/PKCS8PEMResourceKeyPairParser;->getPKCS8AlgorithmIdentifier(Lorg/apache/sshd/common/util/io/der/ASN1Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPKCS8AlgorithmIdentifier([B)Ljava/util/List;
    .locals 4
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    new-instance v0, Lorg/apache/sshd/common/util/io/der/DERParser;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/io/der/DERParser;-><init>([B)V

    .line 109
    .local v0, "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :try_start_0
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/loader/pem/PKCS8PEMResourceKeyPairParser;->getPKCS8AlgorithmIdentifier(Lorg/apache/sshd/common/util/io/der/DERParser;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V

    .line 109
    return-object v1

    .line 108
    :catchall_0
    move-exception v1

    .end local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local p0    # "input":[B
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    .restart local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local p0    # "input":[B
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method


# virtual methods
.method public extractKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;Ljava/util/Map;)Ljava/util/Collection;
    .locals 6
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

    .line 77
    .local p7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p6}, Lorg/apache/sshd/common/util/io/IoUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 78
    .local v0, "encBytes":[B
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/loader/pem/PKCS8PEMResourceKeyPairParser;->getPKCS8AlgorithmIdentifier([B)Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, "oidAlgorithm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v1, v0}, Lorg/apache/sshd/common/config/keys/loader/pem/PKCS8PEMResourceKeyPairParser;->decodePEMPrivateKeyPKCS8(Ljava/util/List;[B)Ljava/security/PrivateKey;

    move-result-object v2

    .line 80
    .local v2, "prvKey":Ljava/security/PrivateKey;
    invoke-static {v2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->recoverPublicKey(Ljava/security/PrivateKey;)Ljava/security/PublicKey;

    move-result-object v3

    const-string v4, "Failed to recover public key of OID=%s"

    invoke-static {v3, v4, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    .line 82
    .local v3, "pubKey":Ljava/security/PublicKey;
    new-instance v4, Ljava/security/KeyPair;

    invoke-direct {v4, v3, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 83
    .local v4, "kp":Ljava/security/KeyPair;
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method
