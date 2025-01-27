.class public final Lorg/apache/sshd/common/config/keys/KeyUtils;
.super Ljava/lang/Object;
.source "KeyUtils.java"


# static fields
.field private static final BY_KEY_CLASS_DECODERS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<",
            "**>;>;"
        }
    .end annotation
.end field

.field private static final BY_KEY_TYPE_DECODERS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<",
            "**>;>;"
        }
    .end annotation
.end field

.field private static final DEFAULT_DIGEST_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/common/digest/DigestFactory;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_FINGERPRINT_DIGEST_FACTORY:Lorg/apache/sshd/common/digest/DigestFactory;

.field public static final DEFAULT_RSA_PUBLIC_EXPONENT:Ljava/math/BigInteger;

.field public static final DSS_ALGORITHM:Ljava/lang/String; = "DSA"

.field public static final EC_ALGORITHM:Ljava/lang/String; = "EC"

.field public static final KEY_FINGERPRINT_FACTORY_PROP:Ljava/lang/String; = "org.apache.sshd.keyFingerprintFactory"

.field private static final KEY_TYPE_ALIASES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RSA_ALGORITHM:Ljava/lang/String; = "RSA"

.field public static final RSA_SHA256_KEY_TYPE_ALIAS:Ljava/lang/String; = "rsa-sha2-256"

.field public static final RSA_SHA512_KEY_TYPE_ALIAS:Ljava/lang/String; = "rsa-sha2-512"

.field public static final STRICTLY_PROHIBITED_FILE_PERMISSION:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 100
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "65537"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sshd/common/config/keys/KeyUtils;->DEFAULT_RSA_PUBLIC_EXPONENT:Ljava/math/BigInteger;

    .line 116
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 118
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 117
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/KeyUtils;->STRICTLY_PROHIBITED_FILE_PERMISSION:Ljava/util/Set;

    .line 134
    sget-object v0, Lorg/apache/sshd/common/digest/BuiltinDigests;->sha256:Lorg/apache/sshd/common/digest/BuiltinDigests;

    sput-object v0, Lorg/apache/sshd/common/config/keys/KeyUtils;->DEFAULT_FINGERPRINT_DIGEST_FACTORY:Lorg/apache/sshd/common/digest/DigestFactory;

    .line 140
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/KeyUtils;->DEFAULT_DIGEST_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    .line 142
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/sshd/common/config/keys/KeyUtils;->BY_KEY_TYPE_DECODERS_MAP:Ljava/util/Map;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/KeyUtils;->BY_KEY_CLASS_DECODERS_MAP:Ljava/util/Map;

    .line 148
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 149
    invoke-static {v0}, Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;->builder(Ljava/util/Comparator;)Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;

    move-result-object v0

    .line 150
    const-string v1, "rsa-sha2-256"

    const-string v2, "ssh-rsa"

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;

    move-result-object v0

    .line 151
    const-string v1, "rsa-sha2-512"

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;->build()Ljava/util/NavigableMap;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/KeyUtils;->KEY_TYPE_ALIASES:Ljava/util/Map;

    .line 155
    sget-object v0, Lorg/apache/sshd/common/config/keys/impl/RSAPublicKeyDecoder;->INSTANCE:Lorg/apache/sshd/common/config/keys/impl/RSAPublicKeyDecoder;

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->registerPublicKeyEntryDecoder(Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;)V

    .line 156
    sget-object v0, Lorg/apache/sshd/common/config/keys/impl/DSSPublicKeyEntryDecoder;->INSTANCE:Lorg/apache/sshd/common/config/keys/impl/DSSPublicKeyEntryDecoder;

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->registerPublicKeyEntryDecoder(Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;)V

    .line 158
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isECCSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lorg/apache/sshd/common/config/keys/impl/ECDSAPublicKeyEntryDecoder;->INSTANCE:Lorg/apache/sshd/common/config/keys/impl/ECDSAPublicKeyEntryDecoder;

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->registerPublicKeyEntryDecoder(Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;)V

    .line 161
    :cond_0
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getEDDSAPublicKeyEntryDecoder()Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->registerPublicKeyEntryDecoder(Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;)V

    .line 164
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkFingerPrint(Ljava/lang/String;Ljava/security/PublicKey;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 1
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/PublicKey;",
            ")",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 695
    invoke-static {}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getDefaultFingerPrintFactory()Lorg/apache/sshd/common/digest/DigestFactory;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->checkFingerPrint(Ljava/lang/String;Lorg/apache/sshd/common/Factory;Ljava/security/PublicKey;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public static checkFingerPrint(Ljava/lang/String;Lorg/apache/sshd/common/Factory;Ljava/security/PublicKey;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 1
    .param p0, "expected"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/Factory<",
            "+",
            "Lorg/apache/sshd/common/digest/Digest;",
            ">;",
            "Ljava/security/PublicKey;",
            ")",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 707
    .local p1, "f":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/digest/Digest;>;"
    const-string v0, "No digest factory"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/Factory;

    invoke-interface {v0}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/digest/Digest;

    invoke-static {p0, v0, p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->checkFingerPrint(Ljava/lang/String;Lorg/apache/sshd/common/digest/Digest;Ljava/security/PublicKey;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public static checkFingerPrint(Ljava/lang/String;Lorg/apache/sshd/common/digest/Digest;Ljava/security/PublicKey;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 8
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "d"    # Lorg/apache/sshd/common/digest/Digest;
    .param p2, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/digest/Digest;",
            "Ljava/security/PublicKey;",
            ")",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 719
    if-nez p2, :cond_0

    .line 720
    const/4 v0, 0x0

    return-object v0

    .line 723
    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 724
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Lorg/apache/sshd/common/digest/Digest;Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 728
    :cond_1
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 729
    .local v0, "pos":I
    if-ltz v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_2

    goto/16 :goto_2

    .line 733
    :cond_2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 737
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    const-string v6, ":"

    if-le v4, v5, :cond_4

    .line 738
    invoke-static {v2}, Lorg/apache/sshd/common/digest/BuiltinDigests;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/digest/BuiltinDigests;

    move-result-object v4

    .line 739
    .local v4, "expectedFactory":Lorg/apache/sshd/common/digest/DigestFactory;
    if-nez v4, :cond_3

    .line 740
    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Lorg/apache/sshd/common/digest/Digest;Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 743
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 745
    .end local v4    # "expectedFactory":Lorg/apache/sshd/common/digest/DigestFactory;
    :cond_4
    sget-object v4, Lorg/apache/sshd/common/digest/BuiltinDigests;->md5:Lorg/apache/sshd/common/digest/BuiltinDigests;

    .line 746
    .restart local v4    # "expectedFactory":Lorg/apache/sshd/common/digest/DigestFactory;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lorg/apache/sshd/common/digest/DigestFactory;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 749
    :goto_0
    invoke-static {v4, p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Lorg/apache/sshd/common/Factory;Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, "fingerprint":Ljava/lang/String;
    sget-object v5, Lorg/apache/sshd/common/digest/BuiltinDigests;->md5:Lorg/apache/sshd/common/digest/BuiltinDigests;

    invoke-virtual {v5}, Lorg/apache/sshd/common/digest/BuiltinDigests;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/sshd/common/digest/DigestFactory;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 751
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    .line 752
    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    nop

    .line 753
    .local v5, "matches":Z
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 730
    .end local v1    # "fingerprint":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "expectedFactory":Lorg/apache/sshd/common/digest/DigestFactory;
    .end local v5    # "matches":Z
    :cond_6
    :goto_2
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Lorg/apache/sshd/common/digest/Digest;Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static cloneKeyPair(Ljava/lang/String;Ljava/security/KeyPair;)Ljava/security/KeyPair;
    .locals 4
    .param p0, "keyType"    # Ljava/lang/String;
    .param p1, "kp"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 300
    invoke-static {p0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getPublicKeyEntryDecoder(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    move-result-object v0

    .line 301
    .local v0, "decoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    if-eqz v0, :cond_0

    .line 305
    invoke-interface {v0, p1}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;->cloneKeyPair(Ljava/security/KeyPair;)Ljava/security/KeyPair;

    move-result-object v1

    return-object v1

    .line 302
    :cond_0
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No decoder for key type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static compareDSAKeys(Ljava/security/interfaces/DSAPrivateKey;Ljava/security/interfaces/DSAPrivateKey;)Z
    .locals 4
    .param p0, "k1"    # Ljava/security/interfaces/DSAPrivateKey;
    .param p1, "k2"    # Ljava/security/interfaces/DSAPrivateKey;

    .line 1082
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1083
    return v1

    .line 1084
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 1087
    :cond_1
    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1088
    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareDSAParams(Ljava/security/interfaces/DSAParams;Ljava/security/interfaces/DSAParams;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1087
    :goto_0
    return v1

    .line 1085
    :cond_3
    :goto_1
    return v0
.end method

.method public static compareDSAKeys(Ljava/security/interfaces/DSAPublicKey;Ljava/security/interfaces/DSAPublicKey;)Z
    .locals 4
    .param p0, "k1"    # Ljava/security/interfaces/DSAPublicKey;
    .param p1, "k2"    # Ljava/security/interfaces/DSAPublicKey;

    .line 1071
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1072
    return v1

    .line 1073
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 1076
    :cond_1
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1077
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareDSAParams(Ljava/security/interfaces/DSAParams;Ljava/security/interfaces/DSAParams;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1076
    :goto_0
    return v1

    .line 1074
    :cond_3
    :goto_1
    return v0
.end method

.method public static compareDSAParams(Ljava/security/interfaces/DSAParams;Ljava/security/interfaces/DSAParams;)Z
    .locals 4
    .param p0, "p1"    # Ljava/security/interfaces/DSAParams;
    .param p1, "p2"    # Ljava/security/interfaces/DSAParams;

    .line 1093
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1094
    return v1

    .line 1095
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 1098
    :cond_1
    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1099
    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1100
    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1098
    :goto_0
    return v1

    .line 1096
    :cond_3
    :goto_1
    return v0
.end method

.method public static compareECKeys(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPrivateKey;)Z
    .locals 4
    .param p0, "k1"    # Ljava/security/interfaces/ECPrivateKey;
    .param p1, "k2"    # Ljava/security/interfaces/ECPrivateKey;

    .line 1117
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1118
    return v1

    .line 1119
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 1122
    :cond_1
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1123
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareECParams(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECParameterSpec;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1122
    :goto_0
    return v1

    .line 1120
    :cond_3
    :goto_1
    return v0
.end method

.method public static compareECKeys(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPublicKey;)Z
    .locals 4
    .param p0, "k1"    # Ljava/security/interfaces/ECPublicKey;
    .param p1, "k2"    # Ljava/security/interfaces/ECPublicKey;

    .line 1128
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1129
    return v1

    .line 1130
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 1133
    :cond_1
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1134
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareECParams(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECParameterSpec;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1133
    :goto_0
    return v1

    .line 1131
    :cond_3
    :goto_1
    return v0
.end method

.method public static compareECParams(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECParameterSpec;)Z
    .locals 4
    .param p0, "s1"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "s2"    # Ljava/security/spec/ECParameterSpec;

    .line 1139
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1140
    return v1

    .line 1141
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 1144
    :cond_1
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1145
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v2

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 1146
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1147
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1144
    :goto_0
    return v1

    .line 1142
    :cond_3
    :goto_1
    return v0
.end method

.method public static compareKeyPairs(Ljava/security/KeyPair;Ljava/security/KeyPair;)Z
    .locals 4
    .param p0, "k1"    # Ljava/security/KeyPair;
    .param p1, "k2"    # Ljava/security/KeyPair;

    .line 974
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 975
    return v1

    .line 976
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 979
    :cond_1
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareKeys(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 980
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareKeys(Ljava/security/PrivateKey;Ljava/security/PrivateKey;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 979
    :goto_0
    return v1

    .line 977
    :cond_3
    :goto_1
    return v0
.end method

.method public static compareKeys(Ljava/security/PrivateKey;Ljava/security/PrivateKey;)Z
    .locals 2
    .param p0, "k1"    # Ljava/security/PrivateKey;
    .param p1, "k2"    # Ljava/security/PrivateKey;

    .line 1012
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    .line 1013
    const-class v0, Ljava/security/interfaces/RSAPrivateKey;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    const-class v1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {v0, v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareRSAKeys(Ljava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPrivateKey;)Z

    move-result v0

    return v0

    .line 1014
    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v0, :cond_1

    .line 1015
    const-class v0, Ljava/security/interfaces/DSAPrivateKey;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    const-class v1, Ljava/security/interfaces/DSAPrivateKey;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/DSAPrivateKey;

    invoke-static {v0, v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareDSAKeys(Ljava/security/interfaces/DSAPrivateKey;Ljava/security/interfaces/DSAPrivateKey;)Z

    move-result v0

    return v0

    .line 1016
    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_2

    .line 1017
    const-class v0, Ljava/security/interfaces/ECPrivateKey;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    const-class v1, Ljava/security/interfaces/ECPrivateKey;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    invoke-static {v0, v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareECKeys(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPrivateKey;)Z

    move-result v0

    return v0

    .line 1018
    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdDSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 1019
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1020
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->compareEDDSAPrivateKeys(Ljava/security/PrivateKey;Ljava/security/PrivateKey;)Z

    move-result v0

    return v0

    .line 1022
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static compareKeys(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .locals 2
    .param p0, "k1"    # Ljava/security/PublicKey;
    .param p1, "k2"    # Ljava/security/PublicKey;

    .line 985
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    .line 986
    const-class v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    const-class v1, Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {v0, v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareRSAKeys(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPublicKey;)Z

    move-result v0

    return v0

    .line 987
    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_1

    .line 988
    const-class v0, Ljava/security/interfaces/DSAPublicKey;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    const-class v1, Ljava/security/interfaces/DSAPublicKey;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    invoke-static {v0, v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareDSAKeys(Ljava/security/interfaces/DSAPublicKey;Ljava/security/interfaces/DSAPublicKey;)Z

    move-result v0

    return v0

    .line 989
    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2

    .line 990
    const-class v0, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    const-class v1, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    invoke-static {v0, v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareECKeys(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPublicKey;)Z

    move-result v0

    return v0

    .line 991
    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdDSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 992
    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 993
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->compareEDDSAPPublicKeys(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v0

    return v0

    .line 995
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static compareRSAKeys(Ljava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPrivateKey;)Z
    .locals 4
    .param p0, "k1"    # Ljava/security/interfaces/RSAPrivateKey;
    .param p1, "k2"    # Ljava/security/interfaces/RSAPrivateKey;

    .line 1038
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1039
    return v1

    .line 1040
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 1043
    :cond_1
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1044
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1043
    :goto_0
    return v1

    .line 1041
    :cond_3
    :goto_1
    return v0
.end method

.method public static compareRSAKeys(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPublicKey;)Z
    .locals 4
    .param p0, "k1"    # Ljava/security/interfaces/RSAPublicKey;
    .param p1, "k2"    # Ljava/security/interfaces/RSAPublicKey;

    .line 1027
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1028
    return v1

    .line 1029
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 1032
    :cond_1
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1033
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1032
    :goto_0
    return v1

    .line 1030
    :cond_3
    :goto_1
    return v0
.end method

.method public static findMatchingKey(Ljava/security/PublicKey;Ljava/util/Collection;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PublicKey;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/PublicKey;",
            ">;)",
            "Ljava/security/PublicKey;"
        }
    .end annotation

    .line 962
    .local p1, "keySet":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/PublicKey;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 965
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    .line 966
    .local v2, "k":Ljava/security/PublicKey;
    invoke-static {p0, v2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareKeys(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 967
    return-object v2

    .line 969
    .end local v2    # "k":Ljava/security/PublicKey;
    :cond_1
    goto :goto_0

    .line 970
    :cond_2
    return-object v0

    .line 963
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static varargs findMatchingKey(Ljava/security/PublicKey;[Ljava/security/PublicKey;)Ljava/security/PublicKey;
    .locals 1
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "keySet"    # [Ljava/security/PublicKey;

    .line 947
    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 950
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->findMatchingKey(Ljava/security/PublicKey;Ljava/util/Collection;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    .line 948
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static generateKeyPair(Ljava/lang/String;I)Ljava/security/KeyPair;
    .locals 4
    .param p0, "keyType"    # Ljava/lang/String;
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 282
    invoke-static {p0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getPublicKeyEntryDecoder(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    move-result-object v0

    .line 283
    .local v0, "decoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0, p1}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;->generateKeyPair(I)Ljava/security/KeyPair;

    move-result-object v1

    return-object v1

    .line 284
    :cond_0
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No decoder for key type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAllEquivalentKeyTypes(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 808
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 812
    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getCanonicalKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "canonicalName":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v1, "equivalents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    sget-object v2, Lorg/apache/sshd/common/config/keys/KeyUtils;->KEY_TYPE_ALIASES:Ljava/util/Map;

    monitor-enter v2

    .line 816
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 817
    .local v4, "ae":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 818
    .local v5, "alias":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 819
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 820
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    .end local v4    # "ae":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "alias":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 823
    :cond_2
    monitor-exit v2

    .line 825
    return-object v1

    .line 823
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getCanonicalKeyType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "keyType"    # Ljava/lang/String;

    .line 836
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    return-object p0

    .line 841
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/config/keys/KeyUtils;->KEY_TYPE_ALIASES:Ljava/util/Map;

    monitor-enter v0

    .line 842
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 843
    .local v1, "canonicalName":Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    return-object p0

    .line 849
    :cond_1
    return-object v1

    .line 843
    .end local v1    # "canonicalName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getDefaultFingerPrintFactory()Lorg/apache/sshd/common/digest/DigestFactory;
    .locals 6

    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, "factory":Lorg/apache/sshd/common/digest/DigestFactory;
    sget-object v1, Lorg/apache/sshd/common/config/keys/KeyUtils;->DEFAULT_DIGEST_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 514
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/digest/DigestFactory;

    move-object v0, v2

    .line 515
    if-eqz v0, :cond_0

    .line 516
    monitor-exit v1

    return-object v0

    .line 519
    :cond_0
    const-string v2, "org.apache.sshd.keyFingerprintFactory"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, "propVal":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 521
    sget-object v3, Lorg/apache/sshd/common/config/keys/KeyUtils;->DEFAULT_FINGERPRINT_DIGEST_FACTORY:Lorg/apache/sshd/common/digest/DigestFactory;

    move-object v0, v3

    goto :goto_0

    .line 523
    :cond_1
    invoke-static {v2}, Lorg/apache/sshd/common/digest/BuiltinDigests;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/digest/BuiltinDigests;

    move-result-object v3

    const-string v4, "Unknown digest factory: %s"

    invoke-static {v3, v4, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/digest/DigestFactory;

    move-object v0, v3

    .line 526
    :goto_0
    invoke-interface {v0}, Lorg/apache/sshd/common/digest/DigestFactory;->isSupported()Z

    move-result v3

    const-string v4, "Selected fingerprint digest not supported: %s"

    invoke-interface {v0}, Lorg/apache/sshd/common/digest/DigestFactory;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 527
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 528
    .end local v2    # "propVal":Ljava/lang/String;
    monitor-exit v1

    .line 530
    return-object v0

    .line 528
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getFingerPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "password"    # Ljava/lang/String;

    .line 561
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFingerPrint(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 574
    invoke-static {}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getDefaultFingerPrintFactory()Lorg/apache/sshd/common/digest/DigestFactory;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Lorg/apache/sshd/common/Factory;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/security/PublicKey;

    .line 550
    invoke-static {}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getDefaultFingerPrintFactory()Lorg/apache/sshd/common/digest/DigestFactory;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Lorg/apache/sshd/common/Factory;Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFingerPrint(Lorg/apache/sshd/common/Factory;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "+",
            "Lorg/apache/sshd/common/digest/Digest;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 636
    .local p0, "f":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/digest/Digest;>;"
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Lorg/apache/sshd/common/Factory;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFingerPrint(Lorg/apache/sshd/common/Factory;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "+",
            "Lorg/apache/sshd/common/digest/Digest;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 649
    .local p0, "f":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/digest/Digest;>;"
    invoke-interface {p0}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/digest/Digest;

    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Lorg/apache/sshd/common/digest/Digest;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFingerPrint(Lorg/apache/sshd/common/Factory;Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "+",
            "Lorg/apache/sshd/common/digest/Digest;",
            ">;",
            "Ljava/security/PublicKey;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 585
    .local p0, "f":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/digest/Digest;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "No digest factory"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/Factory;

    invoke-interface {v0}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/digest/Digest;

    invoke-static {v0, p1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Lorg/apache/sshd/common/digest/Digest;Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getFingerPrint(Lorg/apache/sshd/common/digest/Digest;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Lorg/apache/sshd/common/digest/Digest;
    .param p1, "s"    # Ljava/lang/String;

    .line 661
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Lorg/apache/sshd/common/digest/Digest;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFingerPrint(Lorg/apache/sshd/common/digest/Digest;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "d"    # Lorg/apache/sshd/common/digest/Digest;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 674
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    const/4 v0, 0x0

    return-object v0

    .line 679
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/sshd/common/digest/DigestUtils;->getFingerPrint(Lorg/apache/sshd/common/digest/Digest;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFingerPrint(Lorg/apache/sshd/common/digest/Digest;Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 4
    .param p0, "d"    # Lorg/apache/sshd/common/digest/Digest;
    .param p1, "key"    # Ljava/security/PublicKey;

    .line 596
    if-nez p1, :cond_0

    .line 597
    const/4 v0, 0x0

    return-object v0

    .line 601
    :cond_0
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    .line 602
    .local v0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawPublicKey(Ljava/security/PublicKey;)V

    .line 603
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Lorg/apache/sshd/common/digest/DigestUtils;->getFingerPrint(Lorg/apache/sshd/common/digest/Digest;[BII)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 604
    .end local v0    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getKeySize(Ljava/security/Key;)I
    .locals 3
    .param p0, "key"    # Ljava/security/Key;

    .line 917
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 918
    return v0

    .line 919
    :cond_0
    instance-of v1, p0, Ljava/security/interfaces/RSAKey;

    if-eqz v1, :cond_1

    .line 920
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    .line 921
    .local v0, "n":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    return v1

    .line 922
    .end local v0    # "n":Ljava/math/BigInteger;
    :cond_1
    instance-of v1, p0, Ljava/security/interfaces/DSAKey;

    if-eqz v1, :cond_2

    .line 923
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/DSAKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    .line 924
    .local v0, "params":Ljava/security/interfaces/DSAParams;
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 925
    .local v1, "p":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    return v2

    .line 926
    .end local v0    # "params":Ljava/security/interfaces/DSAParams;
    .end local v1    # "p":Ljava/math/BigInteger;
    :cond_2
    instance-of v1, p0, Ljava/security/interfaces/ECKey;

    if-eqz v1, :cond_4

    .line 927
    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/ECKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 928
    .local v1, "ecSpec":Ljava/security/spec/ECParameterSpec;
    invoke-static {v1}, Lorg/apache/sshd/common/cipher/ECCurves;->fromCurveParameters(Ljava/security/spec/ECParameterSpec;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v2

    .line 929
    .local v2, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    if-eqz v2, :cond_3

    .line 930
    invoke-virtual {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->getKeySize()I

    move-result v0

    return v0

    .line 929
    .end local v1    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    .end local v2    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    :cond_3
    goto :goto_0

    .line 932
    :cond_4
    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EdDSA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 933
    invoke-static {p0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getEDDSAKeySize(Ljava/security/Key;)I

    move-result v0

    return v0

    .line 932
    :cond_5
    :goto_0
    nop

    .line 936
    return v0
.end method

.method public static getKeyType(Ljava/security/Key;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/security/Key;

    .line 780
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 781
    return-object v0

    .line 782
    :cond_0
    instance-of v1, p0, Ljava/security/interfaces/DSAKey;

    if-eqz v1, :cond_1

    .line 783
    const-string v0, "ssh-dss"

    return-object v0

    .line 784
    :cond_1
    instance-of v1, p0, Ljava/security/interfaces/RSAKey;

    if-eqz v1, :cond_2

    .line 785
    const-string v0, "ssh-rsa"

    return-object v0

    .line 786
    :cond_2
    instance-of v1, p0, Ljava/security/interfaces/ECKey;

    if-eqz v1, :cond_4

    .line 787
    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/ECKey;

    .line 788
    .local v1, "ecKey":Ljava/security/interfaces/ECKey;
    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 789
    .local v2, "ecSpec":Ljava/security/spec/ECParameterSpec;
    invoke-static {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->fromCurveParameters(Ljava/security/spec/ECParameterSpec;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v3

    .line 790
    .local v3, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    if-nez v3, :cond_3

    .line 791
    return-object v0

    .line 793
    :cond_3
    invoke-virtual {v3}, Lorg/apache/sshd/common/cipher/ECCurves;->getKeyType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 795
    .end local v1    # "ecKey":Ljava/security/interfaces/ECKey;
    .end local v2    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    .end local v3    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    :cond_4
    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EdDSA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 796
    const-string v0, "ssh-ed25519"

    return-object v0

    .line 799
    :cond_5
    return-object v0
.end method

.method public static getKeyType(Ljava/security/KeyPair;)Ljava/lang/String;
    .locals 2
    .param p0, "kp"    # Ljava/security/KeyPair;

    .line 764
    if-nez p0, :cond_0

    .line 765
    const/4 v0, 0x0

    return-object v0

    .line 767
    :cond_0
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    .line 768
    .local v0, "key":Ljava/security/PrivateKey;
    if-eqz v0, :cond_1

    .line 769
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 771
    :cond_1
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPublicKeyEntryDecoder(Ljava/lang/Class;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<",
            "**>;"
        }
    .end annotation

    .line 481
    .local p0, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    const-class v1, Ljava/security/Key;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 485
    :cond_0
    sget-object v1, Lorg/apache/sshd/common/config/keys/KeyUtils;->BY_KEY_TYPE_DECODERS_MAP:Ljava/util/Map;

    monitor-enter v1

    .line 486
    :try_start_0
    sget-object v2, Lorg/apache/sshd/common/config/keys/KeyUtils;->BY_KEY_CLASS_DECODERS_MAP:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    .line 487
    .local v3, "decoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    if-eqz v3, :cond_1

    .line 488
    monitor-exit v1

    return-object v3

    .line 492
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    .line 493
    .local v4, "dec":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    invoke-interface {v4}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;->getPublicKeyType()Ljava/lang/Class;

    move-result-object v5

    .line 494
    .local v5, "pubType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v4}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;->getPrivateKeyType()Ljava/lang/Class;

    move-result-object v6

    .line 495
    .local v6, "prvType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 498
    .end local v4    # "dec":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    .end local v5    # "pubType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "prvType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    goto :goto_0

    .line 496
    .restart local v4    # "dec":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    .restart local v5    # "pubType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "prvType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_1
    monitor-exit v1

    return-object v4

    .line 499
    .end local v3    # "decoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    .end local v4    # "dec":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    .end local v5    # "pubType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "prvType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    monitor-exit v1

    .line 501
    return-object v0

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 482
    :cond_5
    :goto_2
    return-object v0
.end method

.method public static getPublicKeyEntryDecoder(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;
    .locals 2
    .param p0, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<",
            "**>;"
        }
    .end annotation

    .line 432
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const/4 v0, 0x0

    return-object v0

    .line 436
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/config/keys/KeyUtils;->BY_KEY_TYPE_DECODERS_MAP:Ljava/util/Map;

    monitor-enter v0

    .line 437
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    monitor-exit v0

    return-object v1

    .line 438
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPublicKeyEntryDecoder(Ljava/security/Key;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;
    .locals 1
    .param p0, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Key;",
            ")",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<",
            "**>;"
        }
    .end annotation

    .line 468
    if-nez p0, :cond_0

    .line 469
    const/4 v0, 0x0

    return-object v0

    .line 471
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getPublicKeyEntryDecoder(Ljava/lang/Class;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static getPublicKeyEntryDecoder(Ljava/security/KeyPair;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;
    .locals 3
    .param p0, "kp"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyPair;",
            ")",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<",
            "**>;"
        }
    .end annotation

    .line 449
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 450
    return-object v0

    .line 453
    :cond_0
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getPublicKeyEntryDecoder(Ljava/security/Key;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    move-result-object v1

    .line 454
    .local v1, "d1":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getPublicKeyEntryDecoder(Ljava/security/Key;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    move-result-object v2

    .line 455
    .local v2, "d2":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    if-ne v1, v2, :cond_1

    .line 456
    return-object v1

    .line 458
    :cond_1
    return-object v0
.end method

.method public static getRawFingerprint(Ljava/security/PublicKey;)[B
    .locals 1
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 610
    invoke-static {}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getDefaultFingerPrintFactory()Lorg/apache/sshd/common/digest/DigestFactory;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getRawFingerprint(Lorg/apache/sshd/common/Factory;Ljava/security/PublicKey;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getRawFingerprint(Lorg/apache/sshd/common/Factory;Ljava/security/PublicKey;)[B
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "+",
            "Lorg/apache/sshd/common/digest/Digest;",
            ">;",
            "Ljava/security/PublicKey;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 614
    .local p0, "f":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/digest/Digest;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "No digest factory"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/Factory;

    invoke-interface {v0}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/digest/Digest;

    invoke-static {v0, p1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getRawFingerprint(Lorg/apache/sshd/common/digest/Digest;Ljava/security/PublicKey;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getRawFingerprint(Lorg/apache/sshd/common/digest/Digest;Ljava/security/PublicKey;)[B
    .locals 4
    .param p0, "d"    # Lorg/apache/sshd/common/digest/Digest;
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 618
    if-nez p1, :cond_0

    .line 619
    const/4 v0, 0x0

    return-object v0

    .line 622
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    .line 623
    .local v0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawPublicKey(Ljava/security/PublicKey;)V

    .line 624
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Lorg/apache/sshd/common/digest/DigestUtils;->getRawFingerprint(Lorg/apache/sshd/common/digest/Digest;[BII)[B

    move-result-object v1

    return-object v1
.end method

.method public static getRegisteredKeyTypeAliases()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 858
    sget-object v0, Lorg/apache/sshd/common/config/keys/KeyUtils;->KEY_TYPE_ALIASES:Ljava/util/Map;

    monitor-enter v0

    .line 859
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    invoke-static {}, Ljava/util/Collections;->emptyNavigableSet()Ljava/util/NavigableSet;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 861
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;Ljava/util/Collection;)Ljava/util/NavigableSet;

    move-result-object v1

    :goto_0
    monitor-exit v0

    .line 859
    return-object v1

    .line 862
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static recoverDSAPublicKey(Ljava/security/interfaces/DSAPrivateKey;)Ljava/security/interfaces/DSAPublicKey;
    .locals 8
    .param p0, "privateKey"    # Ljava/security/interfaces/DSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1106
    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    .line 1107
    .local v0, "keyParams":Ljava/security/interfaces/DSAParams;
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 1108
    .local v1, "p":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    .line 1109
    .local v2, "x":Ljava/math/BigInteger;
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    .line 1110
    .local v3, "q":Ljava/math/BigInteger;
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v4

    .line 1111
    .local v4, "g":Ljava/math/BigInteger;
    invoke-virtual {v4, v2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 1112
    .local v5, "y":Ljava/math/BigInteger;
    const-string v6, "DSA"

    invoke-static {v6}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 1113
    .local v6, "kf":Ljava/security/KeyFactory;
    new-instance v7, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v7, v5, v1, v3, v4}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v6, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    check-cast v7, Ljava/security/interfaces/DSAPublicKey;

    return-object v7
.end method

.method public static recoverFromRSAPrivateCrtKey(Ljava/security/interfaces/RSAPrivateCrtKey;)Ljava/security/interfaces/RSAPublicKey;
    .locals 3
    .param p0, "rsaKey"    # Ljava/security/interfaces/RSAPrivateCrtKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1058
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->recoverRSAPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static recoverPublicKey(Ljava/security/PrivateKey;)Ljava/security/PublicKey;
    .locals 2
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1000
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    .line 1001
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->recoverRSAPublicKey(Ljava/security/interfaces/RSAPrivateKey;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0

    .line 1002
    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v0, :cond_1

    .line 1003
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->recoverDSAPublicKey(Ljava/security/interfaces/DSAPrivateKey;)Ljava/security/interfaces/DSAPublicKey;

    move-result-object v0

    return-object v0

    .line 1004
    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdDSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1005
    invoke-static {p0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->recoverEDDSAPublicKey(Ljava/security/PrivateKey;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    .line 1007
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static recoverRSAPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPublicKey;
    .locals 2
    .param p0, "modulus"    # Ljava/math/BigInteger;
    .param p1, "publicExponent"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1066
    const-string v0, "RSA"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 1067
    .local v0, "kf":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v1, p0, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    return-object v1
.end method

.method public static recoverRSAPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPublicKey;
    .locals 1
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1062
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->recoverRSAPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static recoverRSAPublicKey(Ljava/security/interfaces/RSAPrivateKey;)Ljava/security/interfaces/RSAPublicKey;
    .locals 2
    .param p0, "privateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1049
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_0

    .line 1050
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->recoverFromRSAPrivateCrtKey(Ljava/security/interfaces/RSAPrivateCrtKey;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0

    .line 1053
    :cond_0
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/apache/sshd/common/config/keys/KeyUtils;->DEFAULT_RSA_PUBLIC_EXPONENT:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->recoverRSAPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static registerCanonicalKeyTypes(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .param p0, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 874
    .local p1, "aliases":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "No key type value"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 875
    const-string v0, "No aliases provided"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    .line 877
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 878
    .local v0, "replaced":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lorg/apache/sshd/common/config/keys/KeyUtils;->KEY_TYPE_ALIASES:Ljava/util/Map;

    monitor-enter v1

    .line 879
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 880
    .local v3, "a":Ljava/lang/String;
    const-string v4, "Null/empty alias registration for %s"

    invoke-static {v3, v4, p0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 881
    sget-object v4, Lorg/apache/sshd/common/config/keys/KeyUtils;->KEY_TYPE_ALIASES:Ljava/util/Map;

    invoke-interface {v4, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 882
    .local v4, "prev":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 883
    goto :goto_0

    .line 886
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 887
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 889
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    nop

    .end local v3    # "a":Ljava/lang/String;
    .end local v4    # "prev":Ljava/lang/String;
    goto :goto_0

    .line 891
    :cond_2
    monitor-exit v1

    .line 893
    return-object v0

    .line 891
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static registerPublicKeyEntryDecoder(Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<",
            "**>;)V"
        }
    .end annotation

    .line 315
    .local p0, "decoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    const-string v0, "No decoder specified"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;->getPublicKeyType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "No public key type declared"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 318
    .local v0, "pubType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;->getPrivateKeyType()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "No private key type declared"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 319
    .local v1, "prvType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lorg/apache/sshd/common/config/keys/KeyUtils;->BY_KEY_CLASS_DECODERS_MAP:Ljava/util/Map;

    monitor-enter v2

    .line 320
    :try_start_0
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-static {p0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->registerPublicKeyEntryDecoderKeyTypes(Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;)V

    .line 325
    return-void

    .line 322
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static registerPublicKeyEntryDecoderForKeyType(Ljava/lang/String;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;
    .locals 2
    .param p0, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<",
            "**>;)",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<",
            "**>;"
        }
    .end annotation

    .line 353
    .local p1, "decoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    const-string v0, "No key type specified"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 354
    const-string v0, "No decoder specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lorg/apache/sshd/common/config/keys/KeyUtils;->BY_KEY_TYPE_DECODERS_MAP:Ljava/util/Map;

    monitor-enter v0

    .line 357
    :try_start_0
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    monitor-exit v0

    return-object v1

    .line 358
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static registerPublicKeyEntryDecoderKeyTypes(Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<",
            "**>;)V"
        }
    .end annotation

    .line 334
    .local p0, "decoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    const-string v0, "No decoder specified"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 336
    nop

    .line 337
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;->getSupportedKeyTypes()Ljava/util/NavigableSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No supported key types"

    invoke-static {v0, v2, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 338
    .local v0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 339
    .local v2, "n":Ljava/lang/String;
    invoke-static {v2, p0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->registerPublicKeyEntryDecoderForKeyType(Ljava/lang/String;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    move-result-object v3

    .line 340
    .local v3, "prev":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    nop

    .line 342
    goto :goto_0

    .line 345
    .end local v2    # "n":Ljava/lang/String;
    .end local v3    # "prev":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    :cond_0
    return-void
.end method

.method public static setDefaultFingerPrintFactory(Lorg/apache/sshd/common/digest/DigestFactory;)V
    .locals 2
    .param p0, "f"    # Lorg/apache/sshd/common/digest/DigestFactory;

    .line 538
    sget-object v0, Lorg/apache/sshd/common/config/keys/KeyUtils;->DEFAULT_DIGEST_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 539
    :try_start_0
    const-string v1, "No digest factory"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 540
    monitor-exit v0

    .line 541
    return-void

    .line 540
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static unregisterCanonicalKeyTypeAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "alias"    # Ljava/lang/String;

    .line 901
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    return-object p0

    .line 905
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/config/keys/KeyUtils;->KEY_TYPE_ALIASES:Ljava/util/Map;

    monitor-enter v0

    .line 906
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 907
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static unregisterPublicKeyEntryDecoder(Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;)Ljava/util/NavigableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<",
            "**>;)",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 368
    .local p0, "decoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    const-string v0, "No decoder specified"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 370
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;->getPublicKeyType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "No public key type declared"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 371
    .local v0, "pubType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;->getPrivateKeyType()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "No private key type declared"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 372
    .local v1, "prvType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lorg/apache/sshd/common/config/keys/KeyUtils;->BY_KEY_CLASS_DECODERS_MAP:Ljava/util/Map;

    monitor-enter v2

    .line 373
    :try_start_0
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    invoke-static {p0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->unregisterPublicKeyEntryDecoderKeyTypes(Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;)Ljava/util/NavigableSet;

    move-result-object v2

    return-object v2

    .line 375
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static unregisterPublicKeyEntryDecoderForKeyType(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;
    .locals 2
    .param p0, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<",
            "**>;"
        }
    .end annotation

    .line 420
    const-string v0, "No key type specified"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 422
    sget-object v0, Lorg/apache/sshd/common/config/keys/KeyUtils;->BY_KEY_TYPE_DECODERS_MAP:Ljava/util/Map;

    monitor-enter v0

    .line 423
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    monitor-exit v0

    return-object v1

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static unregisterPublicKeyEntryDecoderKeyTypes(Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;)Ljava/util/NavigableSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<",
            "**>;)",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    .local p0, "decoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    const-string v0, "No decoder specified"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 391
    nop

    .line 392
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;->getSupportedKeyTypes()Ljava/util/NavigableSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 391
    const-string v2, "No supported key types"

    invoke-static {v0, v2, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 393
    .local v0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Collections;->emptyNavigableSet()Ljava/util/NavigableSet;

    move-result-object v1

    .line 394
    .local v1, "removed":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 395
    .local v3, "n":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->unregisterPublicKeyEntryDecoderForKeyType(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    move-result-object v4

    .line 396
    .local v4, "prev":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    if-nez v4, :cond_0

    .line 397
    goto :goto_0

    .line 400
    :cond_0
    invoke-interface {v1}, Ljava/util/NavigableSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 401
    new-instance v5, Ljava/util/TreeSet;

    sget-object v6, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v5, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    move-object v1, v5

    .line 404
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    .line 406
    goto :goto_0

    .line 410
    .end local v3    # "n":Ljava/lang/String;
    .end local v4    # "prev":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    :cond_2
    return-object v1
.end method

.method public static varargs validateStrictKeyFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 9
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-static {p0, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 216
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/io/IoUtils;->getPermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    move-result-object v1

    .line 217
    .local v1, "perms":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/file/attribute/PosixFilePermission;>;"
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    return-object v0

    .line 221
    :cond_1
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Permissions violation (%s)"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 222
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 223
    .local v0, "p":Ljava/nio/file/attribute/PosixFilePermission;
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 226
    .end local v0    # "p":Ljava/nio/file/attribute/PosixFilePermission;
    :cond_2
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isUNIX()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 227
    sget-object v2, Lorg/apache/sshd/common/config/keys/KeyUtils;->STRICTLY_PROHIBITED_FILE_PERMISSION:Ljava/util/Set;

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/io/IoUtils;->validateExcludedPermissions(Ljava/util/Collection;Ljava/util/Collection;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v6

    .line 228
    .local v6, "p":Ljava/nio/file/attribute/PosixFilePermission;
    if-eqz v6, :cond_3

    .line 229
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v6, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 232
    :cond_3
    invoke-static {p0, p1}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 233
    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v3

    .line 234
    .local v3, "parent":Ljava/nio/file/Path;
    invoke-static {v3, p1}, Lorg/apache/sshd/common/util/io/IoUtils;->getPermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v7, v2}, Lorg/apache/sshd/common/util/io/IoUtils;->validateExcludedPermissions(Ljava/util/Collection;Ljava/util/Collection;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v2

    .line 235
    .end local v6    # "p":Ljava/nio/file/attribute/PosixFilePermission;
    .local v2, "p":Ljava/nio/file/attribute/PosixFilePermission;
    if-eqz v2, :cond_4

    .line 236
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    const-string v4, "Parent permissions violation (%s)"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 241
    .end local v2    # "p":Ljava/nio/file/attribute/PosixFilePermission;
    .end local v3    # "parent":Ljava/nio/file/Path;
    :cond_4
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/io/IoUtils;->getFileOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "owner":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 246
    return-object v0

    .line 249
    :cond_5
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->getCurrentUser()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "current":Ljava/lang/String;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 251
    .local v6, "expected":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isUNIX()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 254
    const-string v7, "root"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_6
    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 258
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    const-string v4, "Owner violation (%s)"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 261
    :cond_7
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isUNIX()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 262
    invoke-static {p0, p1}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 263
    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v7

    invoke-static {v7, p1}, Lorg/apache/sshd/common/util/io/IoUtils;->getFileOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/String;

    move-result-object v7

    .line 264
    .local v7, "parentOwner":Ljava/lang/String;
    invoke-static {v7}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 265
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v4

    const-string v4, "Parent owner violation (%s)"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v7}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 270
    .end local v7    # "parentOwner":Ljava/lang/String;
    :cond_8
    return-object v0

    .line 213
    .end local v1    # "perms":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/file/attribute/PosixFilePermission;>;"
    .end local v2    # "owner":Ljava/lang/String;
    .end local v3    # "current":Ljava/lang/String;
    .end local v6    # "expected":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    :goto_0
    return-object v0
.end method
