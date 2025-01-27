.class public Lorg/apache/sshd/common/config/keys/loader/pem/DSSPEMResourceKeyPairParser;
.super Lorg/apache/sshd/common/config/keys/loader/pem/AbstractPEMResourceKeyPairParser;
.source "DSSPEMResourceKeyPairParser.java"


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

.field public static final BEGIN_MARKER:Ljava/lang/String; = "BEGIN DSA PRIVATE KEY"

.field public static final DSS_OID:Ljava/lang/String; = "1.2.840.10040.4.1"

.field public static final ENDERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final END_MARKER:Ljava/lang/String; = "END DSA PRIVATE KEY"

.field public static final INSTANCE:Lorg/apache/sshd/common/config/keys/loader/pem/DSSPEMResourceKeyPairParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    nop

    .line 55
    const-string v0, "BEGIN DSA PRIVATE KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/DSSPEMResourceKeyPairParser;->BEGINNERS:Ljava/util/List;

    .line 58
    nop

    .line 59
    const-string v0, "END DSA PRIVATE KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/DSSPEMResourceKeyPairParser;->ENDERS:Ljava/util/List;

    .line 66
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/pem/DSSPEMResourceKeyPairParser;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/pem/DSSPEMResourceKeyPairParser;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/DSSPEMResourceKeyPairParser;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/pem/DSSPEMResourceKeyPairParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 69
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/DSSPEMResourceKeyPairParser;->BEGINNERS:Ljava/util/List;

    sget-object v1, Lorg/apache/sshd/common/config/keys/loader/pem/DSSPEMResourceKeyPairParser;->ENDERS:Ljava/util/List;

    const-string v2, "DSA"

    const-string v3, "1.2.840.10040.4.1"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/sshd/common/config/keys/loader/pem/AbstractPEMResourceKeyPairParser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 70
    return-void
.end method

.method public static decodeDSSKeyPair(Ljava/security/KeyFactory;Ljava/io/InputStream;Z)Ljava/security/KeyPair;
    .locals 11
    .param p0, "kf"    # Ljava/security/KeyFactory;
    .param p1, "s"    # Ljava/io/InputStream;
    .param p2, "okToClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/apache/sshd/common/util/io/der/DERParser;

    invoke-static {p1, p2}, Lorg/apache/sshd/common/util/io/NoCloseInputStream;->resolveInputStream(Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/util/io/der/DERParser;-><init>(Ljava/io/InputStream;)V

    .line 107
    .local v0, "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 108
    .local v1, "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V

    .line 110
    .end local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    sget-object v0, Lorg/apache/sshd/common/util/io/der/ASN1Type;->SEQUENCE:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/sshd/common/util/io/der/ASN1Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->createParser()Lorg/apache/sshd/common/util/io/der/DERParser;

    move-result-object v0

    .line 117
    .restart local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v2

    .line 118
    .local v2, "version":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    if-eqz v2, :cond_1

    .line 122
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asInteger()Ljava/math/BigInteger;

    move-result-object v3

    .line 123
    .local v3, "p":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 124
    .local v4, "q":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asInteger()Ljava/math/BigInteger;

    move-result-object v5

    .line 125
    .local v5, "g":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asInteger()Ljava/math/BigInteger;

    move-result-object v6

    .line 126
    .local v6, "y":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asInteger()Ljava/math/BigInteger;

    move-result-object v7

    .line 127
    .local v7, "x":Ljava/math/BigInteger;
    new-instance v8, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v8, v6, v3, v4, v5}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v8

    .line 128
    .local v8, "pubKey":Ljava/security/PublicKey;
    new-instance v9, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v9, v7, v3, v4, v5}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v9}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v9

    .line 129
    .local v9, "prvKey":Ljava/security/PrivateKey;
    new-instance v10, Ljava/security/KeyPair;

    invoke-direct {v10, v8, v9}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V

    .line 129
    :cond_0
    return-object v10

    .line 119
    .end local v3    # "p":Ljava/math/BigInteger;
    .end local v4    # "q":Ljava/math/BigInteger;
    .end local v5    # "g":Ljava/math/BigInteger;
    .end local v6    # "y":Ljava/math/BigInteger;
    .end local v7    # "x":Ljava/math/BigInteger;
    .end local v8    # "pubKey":Ljava/security/PublicKey;
    .end local v9    # "prvKey":Ljava/security/PrivateKey;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/StreamCorruptedException;

    const-string v4, "No version"

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local v1    # "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local p0    # "kf":Ljava/security/KeyFactory;
    .end local p1    # "s":Ljava/io/InputStream;
    .end local p2    # "okToClose":Z
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .end local v2    # "version":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local v1    # "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local p0    # "kf":Ljava/security/KeyFactory;
    .restart local p1    # "s":Ljava/io/InputStream;
    .restart local p2    # "okToClose":Z
    :catchall_0
    move-exception v2

    .end local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local v1    # "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local p0    # "kf":Ljava/security/KeyFactory;
    .end local p1    # "s":Ljava/io/InputStream;
    .end local p2    # "okToClose":Z
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    .restart local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local v1    # "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local p0    # "kf":Ljava/security/KeyFactory;
    .restart local p1    # "s":Ljava/io/InputStream;
    .restart local p2    # "okToClose":Z
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v3

    .line 111
    .end local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid DER: not a sequence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    .end local v1    # "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :catchall_3
    move-exception v1

    .end local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local p0    # "kf":Ljava/security/KeyFactory;
    .end local p1    # "s":Ljava/io/InputStream;
    .end local p2    # "okToClose":Z
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 108
    .restart local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local p0    # "kf":Ljava/security/KeyFactory;
    .restart local p1    # "s":Ljava/io/InputStream;
    .restart local p2    # "okToClose":Z
    :catchall_4
    move-exception v2

    :try_start_6
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
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

    .line 79
    .local p7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "DSA"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p6, v1}, Lorg/apache/sshd/common/config/keys/loader/pem/DSSPEMResourceKeyPairParser;->decodeDSSKeyPair(Ljava/security/KeyFactory;Ljava/io/InputStream;Z)Ljava/security/KeyPair;

    move-result-object v0

    .line 80
    .local v0, "kp":Ljava/security/KeyPair;
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
