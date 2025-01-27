.class public final Lorg/apache/sshd/common/util/security/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# static fields
.field private static final APRIORI_DISABLED_PROVIDERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOUNCY_CASTLE:Ljava/lang/String; = "BC"

.field public static final CURVE_ED25519_SHA512:Ljava/lang/String; = "NONEwithEdDSA"

.field public static final DEFAULT_DHGEX_KEY_SIZE:I = 0x400

.field private static final DEFAULT_PROVIDER_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/common/util/security/SecurityProviderChoice;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SECURITY_PROVIDER_REGISTRARS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ECC_SUPPORTED_PROP:Ljava/lang/String; = "org.apache.sshd.eccSupport"

.field public static final EDDSA:Ljava/lang/String; = "EdDSA"

.field public static final EDDSA_SUPPORTED_PROP:Ljava/lang/String; = "org.apache.sshd.eddsaSupport"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEYPAIRS_PARSER_HODLER:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_DHGEX_KEY_SIZE:I = 0x2000

.field public static final MAX_DHGEX_KEY_SIZE_PROP:Ljava/lang/String; = "org.apache.sshd.maxDHGexKeySize"

.field private static final MAX_DHG_KEY_SIZE_HOLDER:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final MIN_DHGEX_KEY_SIZE:I = 0x400

.field public static final PREFERRED_DHGEX_KEY_SIZE:I = 0x1000

.field public static final PROP_DEFAULT_SECURITY_PROVIDER:Ljava/lang/String; = "org.apache.sshd.security.defaultProvider"

.field private static final REGISTERED_PROVIDERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;",
            ">;"
        }
    .end annotation
.end field

.field public static final REGISTER_BOUNCY_CASTLE_PROP:Ljava/lang/String; = "org.apache.sshd.registerBouncyCastle"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final REGISTRATION_STATE_HOLDER:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final SECURITY_ENTITY_FACTORIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public static final SECURITY_PROVIDER_REGISTRARS:Ljava/lang/String; = "org.apache.sshd.security.registrars"

.field private static hasEcc:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 130
    const-string v0, "org.apache.sshd.common.util.security.bouncycastle.BouncyCastleSecurityProviderRegistrar"

    const-string v1, "org.apache.sshd.common.util.security.eddsa.EdDSASecurityProviderRegistrar"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->DEFAULT_SECURITY_PROVIDER_REGISTRARS:Ljava/util/List;

    .line 164
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->MAX_DHG_KEY_SIZE_HOLDER:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 170
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->REGISTERED_PROVIDERS:Ljava/util/Map;

    .line 171
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->KEYPAIRS_PARSER_HODLER:Ljava/util/concurrent/atomic/AtomicReference;

    .line 173
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->APRIORI_DISABLED_PROVIDERS:Ljava/util/Set;

    .line 174
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->REGISTRATION_STATE_HOLDER:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->SECURITY_ENTITY_FACTORIES:Ljava/util/Map;

    .line 177
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->DEFAULT_PROVIDER_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compareEDDSAPPublicKeys(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .locals 1
    .param p0, "k1"    # Ljava/security/PublicKey;
    .param p1, "k2"    # Ljava/security/PublicKey;

    .line 576
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderUtils;->compareEDDSAPPublicKeys(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static compareEDDSAPrivateKeys(Ljava/security/PrivateKey;Ljava/security/PrivateKey;)Z
    .locals 1
    .param p0, "k1"    # Ljava/security/PrivateKey;
    .param p1, "k2"    # Ljava/security/PrivateKey;

    .line 580
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderUtils;->compareEDDSAPrivateKeys(Ljava/security/PrivateKey;Ljava/security/PrivateKey;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static createGeneratorHostKeyProvider(Ljava/nio/file/Path;)Lorg/apache/sshd/server/keyprovider/AbstractGeneratorHostKeyProvider;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 504
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isBouncyCastleRegistered()Z

    move-result v0

    const-string v1, "BouncyCastle not registered"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 505
    new-instance v0, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleGeneratorHostKeyProvider;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleGeneratorHostKeyProvider;-><init>(Ljava/nio/file/Path;)V

    return-object v0
.end method

.method public static createSecurityEntityFactory(Ljava/lang/Class;Ljava/util/function/Predicate;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-",
            "Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;",
            ">;)",
            "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<",
            "TT;>;"
        }
    .end annotation

    .line 689
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "entitySelector":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;>;"
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->register()V

    .line 692
    sget-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->REGISTERED_PROVIDERS:Ljava/util/Map;

    monitor-enter v0

    .line 693
    nop

    .line 695
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 694
    invoke-static {p1, v1}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->findSecurityProviderRegistrarBySecurityEntity(Ljava/util/function/Predicate;Ljava/util/Collection;)Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    move-result-object v1

    .line 696
    .local v1, "registrar":Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    :try_start_1
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getDefaultProviderChoice()Lorg/apache/sshd/common/util/security/SecurityProviderChoice;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lorg/apache/sshd/common/util/security/SecurityEntityFactory;->toFactory(Ljava/lang/Class;Lorg/apache/sshd/common/util/security/SecurityProviderChoice;Lorg/apache/sshd/common/util/security/SecurityProviderChoice;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "t":Ljava/lang/ReflectiveOperationException;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 702
    .local v2, "e":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-nez v3, :cond_1

    .line 704
    instance-of v3, v2, Ljava/lang/Error;

    if-eqz v3, :cond_0

    .line 705
    move-object v3, v2

    check-cast v3, Ljava/lang/Error;

    throw v3

    .line 707
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 703
    :cond_1
    move-object v3, v2

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    .line 696
    .end local v0    # "t":Ljava/lang/ReflectiveOperationException;
    .end local v1    # "registrar":Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static extractEDDSAKeyPair(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 3
    .param p0, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p1, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 624
    const-string v0, "ssh-ed25519"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "EdDSA provider not supported"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Full SSHD-440 implementation N/A"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateEDDSAPublicKey(Ljava/lang/String;[B)Ljava/security/PublicKey;
    .locals 3
    .param p0, "keyType"    # Ljava/lang/String;
    .param p1, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 592
    const-string v0, "ssh-ed25519"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    invoke-static {p1}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderUtils;->generateEDDSAPublicKey([B)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    .line 597
    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "EdDSA provider not supported"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAPrioriDisabledProviders()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    sget-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->APRIORI_DISABLED_PROVIDERS:Ljava/util/Set;

    monitor-enter v0

    .line 224
    :try_start_0
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 225
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getBouncycastleKeyPairResourceParser()Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;
    .locals 2

    .line 509
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isBouncyCastleRegistered()Z

    move-result v0

    const-string v1, "BouncyCastle not registered"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 510
    sget-object v0, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleKeyPairResourceParser;->INSTANCE:Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleKeyPairResourceParser;

    return-object v0
.end method

.method public static getCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 755
    const-class v0, Ljava/security/cert/CertificateFactory;

    new-instance v1, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    .line 756
    invoke-static {v0, p0, v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->resolveSecurityEntityFactory(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    move-result-object v0

    .line 757
    .local v0, "factory":Lorg/apache/sshd/common/util/security/SecurityEntityFactory;, "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<Ljava/security/cert/CertificateFactory;>;"
    invoke-interface {v0, p0}, Lorg/apache/sshd/common/util/security/SecurityEntityFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CertificateFactory;

    return-object v1
.end method

.method public static getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 2
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 719
    const-class v0, Ljavax/crypto/Cipher;

    new-instance v1, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    .line 720
    invoke-static {v0, p0, v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->resolveSecurityEntityFactory(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    move-result-object v0

    .line 721
    .local v0, "factory":Lorg/apache/sshd/common/util/security/SecurityEntityFactory;, "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<Ljavax/crypto/Cipher;>;"
    invoke-interface {v0, p0}, Lorg/apache/sshd/common/util/security/SecurityEntityFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    return-object v1
.end method

.method public static getDefaultProviderChoice()Lorg/apache/sshd/common/util/security/SecurityProviderChoice;
    .locals 4

    .line 334
    sget-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->DEFAULT_PROVIDER_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 335
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/util/security/SecurityProviderChoice;

    .line 336
    .local v1, "choice":Lorg/apache/sshd/common/util/security/SecurityProviderChoice;
    if-eqz v1, :cond_0

    .line 337
    monitor-exit v0

    return-object v1

    .line 340
    :cond_0
    const-string v2, "org.apache.sshd.security.defaultProvider"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lorg/apache/sshd/common/PropertyResolverUtils;->isNoneValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 343
    :cond_1
    invoke-static {v2}, Lorg/apache/sshd/common/util/security/SecurityProviderChoice;->toSecurityProviderChoice(Ljava/lang/String;)Lorg/apache/sshd/common/util/security/SecurityProviderChoice;

    move-result-object v3

    goto :goto_1

    .line 341
    :cond_2
    :goto_0
    sget-object v3, Lorg/apache/sshd/common/util/security/SecurityProviderChoice;->EMPTY:Lorg/apache/sshd/common/util/security/SecurityProviderChoice;

    .line 343
    :goto_1
    move-object v1, v3

    .line 344
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 345
    .end local v2    # "name":Ljava/lang/String;
    monitor-exit v0

    .line 347
    return-object v1

    .line 345
    .end local v1    # "choice":Lorg/apache/sshd/common/util/security/SecurityProviderChoice;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getEDDSAKeySize(Ljava/security/Key;)I
    .locals 1
    .param p0, "key"    # Ljava/security/Key;

    .line 564
    invoke-static {p0}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderUtils;->getEDDSAKeySize(Ljava/security/Key;)I

    move-result v0

    return v0
.end method

.method public static getEDDSAPrivateKeyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation

    .line 572
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderUtils;->getEDDSAPrivateKeyType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-class v0, Ljava/security/PrivateKey;

    :goto_0
    return-object v0
.end method

.method public static getEDDSAPublicKeyEntryDecoder()Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<",
            "+",
            "Ljava/security/PublicKey;",
            "+",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation

    .line 540
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    invoke-static {}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderUtils;->getEDDSAPublicKeyEntryDecoder()Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    move-result-object v0

    return-object v0

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "EdDSA provider N/A"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getEDDSAPublicKeyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 568
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderUtils;->getEDDSAPublicKeyType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-class v0, Ljava/security/PublicKey;

    :goto_0
    return-object v0
.end method

.method public static getEDDSASigner()Lorg/apache/sshd/common/signature/Signature;
    .locals 2

    .line 556
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-static {}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderUtils;->getEDDSASignature()Lorg/apache/sshd/common/signature/Signature;

    move-result-object v0

    return-object v0

    .line 560
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "EdDSA Signer not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 737
    const-class v0, Ljavax/crypto/KeyAgreement;

    new-instance v1, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 738
    invoke-static {v0, p0, v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->resolveSecurityEntityFactory(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    move-result-object v0

    .line 739
    .local v0, "factory":Lorg/apache/sshd/common/util/security/SecurityEntityFactory;, "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<Ljavax/crypto/KeyAgreement;>;"
    invoke-interface {v0, p0}, Lorg/apache/sshd/common/util/security/SecurityEntityFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/KeyAgreement;

    return-object v1
.end method

.method public static getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 713
    const-class v0, Ljava/security/KeyFactory;

    new-instance v1, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    .line 714
    invoke-static {v0, p0, v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->resolveSecurityEntityFactory(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    move-result-object v0

    .line 715
    .local v0, "factory":Lorg/apache/sshd/common/util/security/SecurityEntityFactory;, "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<Ljava/security/KeyFactory;>;"
    invoke-interface {v0, p0}, Lorg/apache/sshd/common/util/security/SecurityEntityFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyFactory;

    return-object v1
.end method

.method public static getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 731
    const-class v0, Ljava/security/KeyPairGenerator;

    new-instance v1, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 732
    invoke-static {v0, p0, v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->resolveSecurityEntityFactory(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    move-result-object v0

    .line 733
    .local v0, "factory":Lorg/apache/sshd/common/util/security/SecurityEntityFactory;, "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<Ljava/security/KeyPairGenerator;>;"
    invoke-interface {v0, p0}, Lorg/apache/sshd/common/util/security/SecurityEntityFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyPairGenerator;

    return-object v1
.end method

.method public static getKeyPairResourceParser()Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;
    .locals 5

    .line 639
    sget-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->KEYPAIRS_PARSER_HODLER:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 640
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

    .line 641
    .local v1, "parser":Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;
    if-eqz v1, :cond_0

    .line 642
    monitor-exit v0

    return-object v1

    .line 645
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

    const/4 v3, 0x0

    sget-object v4, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->PROXY:Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyPairResourceParser;

    aput-object v4, v2, v3

    invoke-static {v2}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->aggregate([Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;)Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 648
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 649
    monitor-exit v0

    .line 651
    return-object v1

    .line 649
    .end local v1    # "parser":Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getMac(Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 743
    const-class v0, Ljavax/crypto/Mac;

    new-instance v1, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 744
    invoke-static {v0, p0, v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->resolveSecurityEntityFactory(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    move-result-object v0

    .line 745
    .local v0, "factory":Lorg/apache/sshd/common/util/security/SecurityEntityFactory;, "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<Ljavax/crypto/Mac;>;"
    invoke-interface {v0, p0}, Lorg/apache/sshd/common/util/security/SecurityEntityFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Mac;

    return-object v1
.end method

.method public static getMaxDHGroupExchangeKeySize()I
    .locals 8

    .line 276
    sget-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->MAX_DHG_KEY_SIZE_HOLDER:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    .line 277
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 278
    .local v1, "maxSupportedKeySize":I
    if-eqz v1, :cond_0

    .line 279
    monitor-exit v0

    return v1

    .line 282
    :cond_0
    const-string v2, "org.apache.sshd.maxDHGexKeySize"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "propValue":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 284
    const/4 v1, -0x1

    .line 286
    const/16 v3, 0x2000

    .local v3, "testKeySize":I
    :goto_0
    const/16 v4, 0x400

    if-lt v3, v4, :cond_2

    .line 287
    invoke-static {v3}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isDHGroupExchangeSupported(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    move v1, v3

    .line 289
    goto :goto_1

    .line 286
    :cond_1
    add-int/lit16 v3, v3, -0x400

    goto :goto_0

    .end local v3    # "testKeySize":I
    :cond_2
    :goto_1
    goto :goto_3

    .line 293
    :cond_3
    const-class v3, Lorg/apache/sshd/common/util/security/SecurityUtils;

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 294
    .local v3, "logger":Lorg/slf4j/Logger;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Override max. DH group exchange key size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v1, v4

    .line 297
    if-eqz v1, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    const-string v5, "Configured org.apache.sshd.maxDHGexKeySize value must be non-zero: %d"

    int-to-long v6, v1

    invoke-static {v4, v5, v6, v7}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 301
    .end local v3    # "logger":Lorg/slf4j/Logger;
    :goto_3
    sget-object v3, Lorg/apache/sshd/common/util/security/SecurityUtils;->MAX_DHG_KEY_SIZE_HOLDER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 302
    .end local v2    # "propValue":Ljava/lang/String;
    monitor-exit v0

    .line 304
    return v1

    .line 302
    .end local v1    # "maxSupportedKeySize":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 725
    const-class v0, Ljava/security/MessageDigest;

    new-instance v1, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 726
    invoke-static {v0, p0, v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->resolveSecurityEntityFactory(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    move-result-object v0

    .line 727
    .local v0, "factory":Lorg/apache/sshd/common/util/security/SecurityEntityFactory;, "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<Ljava/security/MessageDigest;>;"
    invoke-interface {v0, p0}, Lorg/apache/sshd/common/util/security/SecurityEntityFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/MessageDigest;

    return-object v1
.end method

.method public static getOpenSSHEDDSAPrivateKeyEntryDecoder()Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<",
            "+",
            "Ljava/security/PublicKey;",
            "+",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation

    .line 548
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-static {}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderUtils;->getOpenSSHEDDSAPrivateKeyEntryDecoder()Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;

    move-result-object v0

    return-object v0

    .line 549
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "EdDSA provider N/A"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRandomFactory()Lorg/apache/sshd/common/random/RandomFactory;
    .locals 1

    .line 518
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isBouncyCastleRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    sget-object v0, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleRandomFactory;->INSTANCE:Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleRandomFactory;

    return-object v0

    .line 521
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/random/JceRandomFactory;->INSTANCE:Lorg/apache/sshd/common/random/JceRandomFactory;

    return-object v0
.end method

.method public static getRegisteredProvider(Ljava/lang/String;)Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    .locals 2
    .param p0, "provider"    # Ljava/lang/String;

    .line 374
    const-string v0, "No provider name specified"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 375
    sget-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->REGISTERED_PROVIDERS:Ljava/util/Map;

    monitor-enter v0

    .line 376
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    monitor-exit v0

    return-object v1

    .line 377
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getRegisteredProviders()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 359
    sget-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->REGISTERED_PROVIDERS:Ljava/util/Map;

    monitor-enter v0

    .line 360
    :try_start_0
    new-instance v1, Ljava/util/TreeSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 361
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 749
    const-class v0, Ljava/security/Signature;

    new-instance v1, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    .line 750
    invoke-static {v0, p0, v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->resolveSecurityEntityFactory(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    move-result-object v0

    .line 751
    .local v0, "factory":Lorg/apache/sshd/common/util/security/SecurityEntityFactory;, "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<Ljava/security/Signature;>;"
    invoke-interface {v0, p0}, Lorg/apache/sshd/common/util/security/SecurityEntityFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    return-object v1
.end method

.method public static isAPrioriDisabledProvider(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 191
    const-string v0, "No provider name specified"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    sget-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->APRIORI_DISABLED_PROVIDERS:Ljava/util/Set;

    monitor-enter v0

    .line 193
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isBouncyCastleRegistered()Z
    .locals 1

    .line 365
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->register()V

    .line 366
    const-string v0, "BC"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isProviderRegistered(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDHGroupExchangeSupported()Z
    .locals 1

    .line 257
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getMaxDHGroupExchangeKeySize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDHGroupExchangeSupported(I)Z
    .locals 6
    .param p0, "maxKeySize"    # I

    .line 319
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-le p0, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    int-to-long v3, p0

    const-string v5, "Invalid max. key size: %d"

    invoke-static {v2, v5, v3, v4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 322
    :try_start_0
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, p0, -0x1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 323
    .local v2, "r":Ljava/math/BigInteger;
    new-instance v3, Ljavax/crypto/spec/DHParameterSpec;

    invoke-direct {v3, v2, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 324
    .local v3, "dhSkipParamSpec":Ljavax/crypto/spec/DHParameterSpec;
    const-string v4, "DH"

    invoke-static {v4}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v4

    .line 325
    .local v4, "kpg":Ljava/security/KeyPairGenerator;
    invoke-virtual {v4, v3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    return v1

    .line 327
    .end local v2    # "r":Ljava/math/BigInteger;
    .end local v3    # "dhSkipParamSpec":Ljavax/crypto/spec/DHParameterSpec;
    .end local v4    # "kpg":Ljava/security/KeyPairGenerator;
    :catch_0
    move-exception v1

    .line 328
    .local v1, "t":Ljava/security/GeneralSecurityException;
    return v0
.end method

.method public static isDHOakelyGroupSupported(I)Z
    .locals 1
    .param p0, "keySize"    # I

    .line 267
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getMaxDHGroupExchangeKeySize()I

    move-result v0

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isECCSupported()Z
    .locals 4

    .line 233
    sget-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->hasEcc:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 234
    const-string v0, "org.apache.sshd.eccSupport"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "propValue":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    :try_start_0
    const-string v1, "EC"

    invoke-static {v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 238
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lorg/apache/sshd/common/util/security/SecurityUtils;->hasEcc:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v1

    .line 240
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, Lorg/apache/sshd/common/util/security/SecurityUtils;->hasEcc:Ljava/lang/Boolean;

    .line 241
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 243
    :cond_0
    const-class v1, Lorg/apache/sshd/common/util/security/SecurityUtils;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 244
    .local v1, "logger":Lorg/slf4j/Logger;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Override ECC support value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 245
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lorg/apache/sshd/common/util/security/SecurityUtils;->hasEcc:Ljava/lang/Boolean;

    .line 249
    .end local v0    # "propValue":Ljava/lang/String;
    .end local v1    # "logger":Lorg/slf4j/Logger;
    :cond_1
    :goto_1
    sget-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->hasEcc:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isEDDSACurveSupported()Z
    .locals 2

    .line 531
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->register()V

    .line 533
    const-string v0, "EdDSA"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getRegisteredProvider(Ljava/lang/String;)Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    move-result-object v0

    .line 534
    .local v0, "r":Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isProviderRegistered(Ljava/lang/String;)Z
    .locals 1
    .param p0, "provider"    # Ljava/lang/String;

    .line 370
    invoke-static {p0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getRegisteredProvider(Ljava/lang/String;)Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRegistrationCompleted()Z
    .locals 1

    .line 381
    sget-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->REGISTRATION_STATE_HOLDER:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getCertificateFactory$9(Ljava/lang/String;Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "r"    # Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    .line 756
    invoke-interface {p1, p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isCertificateFactorySupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getCipher$3(Ljava/lang/String;Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;)Z
    .locals 1
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "r"    # Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    .line 720
    invoke-interface {p1, p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isCipherSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getKeyAgreement$6(Ljava/lang/String;Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;)Z
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "r"    # Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    .line 738
    invoke-interface {p1, p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isKeyAgreementSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getKeyFactory$2(Ljava/lang/String;Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;)Z
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "r"    # Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    .line 714
    invoke-interface {p1, p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isKeyFactorySupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getKeyPairGenerator$5(Ljava/lang/String;Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;)Z
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "r"    # Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    .line 732
    invoke-interface {p1, p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isKeyPairGeneratorSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getMac$7(Ljava/lang/String;Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;)Z
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "r"    # Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    .line 744
    invoke-interface {p1, p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isMacSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getMessageDigest$4(Ljava/lang/String;Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;)Z
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "r"    # Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    .line 726
    invoke-interface {p1, p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isMessageDigestSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getSignature$8(Ljava/lang/String;Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;)Z
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "r"    # Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    .line 750
    invoke-interface {p1, p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isSignatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$resolveSecurityEntityFactory$0(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .param p0, "k"    # Ljava/lang/Class;

    .line 674
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$resolveSecurityEntityFactory$1(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/lang/String;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;
    .locals 1
    .param p0, "entityType"    # Ljava/lang/Class;
    .param p1, "entitySelector"    # Ljava/util/function/Predicate;
    .param p2, "k"    # Ljava/lang/String;

    .line 681
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->createSecurityEntityFactory(Ljava/lang/Class;Ljava/util/function/Predicate;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    move-result-object v0

    return-object v0
.end method

.method public static loadKeyPairIdentities(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Ljava/lang/Iterable;
    .locals 4
    .param p0, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p1, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/io/InputStream;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            ")",
            "Ljava/lang/Iterable<",
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

    .line 487
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyPairResourceParser()Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

    move-result-object v0

    .line 488
    .local v0, "parser":Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;
    if-eqz v0, :cond_1

    .line 492
    invoke-interface {v0, p0, p1, p3, p2}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1

    .line 493
    .local v1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/KeyPair;>;"
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v2

    .line 494
    .local v2, "numLoaded":I
    if-gtz v2, :cond_0

    .line 495
    const/4 v3, 0x0

    return-object v3

    .line 498
    :cond_0
    return-object v1

    .line 489
    .end local v1    # "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/KeyPair;>;"
    .end local v2    # "numLoaded":I
    :cond_1
    new-instance v1, Ljava/security/NoSuchProviderException;

    const-string v2, "No registered key-pair resource parser"

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static putEDDSAKeyPair(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/security/KeyPair;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 2
    .param p1, "kp"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ">(TB;",
            "Ljava/security/KeyPair;",
            ")TB;"
        }
    .end annotation

    .line 612
    .local p0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;, "TB;"
    const-string v0, "No key pair"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->putEDDSAKeyPair(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/security/PublicKey;Ljava/security/PrivateKey;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public static putEDDSAKeyPair(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/security/PublicKey;Ljava/security/PrivateKey;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 2
    .param p1, "pubKey"    # Ljava/security/PublicKey;
    .param p2, "prvKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ">(TB;",
            "Ljava/security/PublicKey;",
            "Ljava/security/PrivateKey;",
            ")TB;"
        }
    .end annotation

    .line 616
    .local p0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;, "TB;"
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-static {p0, p1, p2}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderUtils;->putEDDSAKeyPair(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/security/PublicKey;Ljava/security/PrivateKey;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    return-object v0

    .line 617
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "EdDSA provider not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static putRawEDDSAPublicKey(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/security/PublicKey;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 2
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ">(TB;",
            "Ljava/security/PublicKey;",
            ")TB;"
        }
    .end annotation

    .line 604
    .local p0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;, "TB;"
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderUtils;->putRawEDDSAPublicKey(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/security/PublicKey;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    return-object v0

    .line 605
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "EdDSA provider not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static recoverEDDSAPublicKey(Ljava/security/PrivateKey;)Ljava/security/PublicKey;
    .locals 2
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 584
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-static {p0}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderUtils;->recoverEDDSAPublicKey(Ljava/security/PrivateKey;)Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    move-result-object v0

    return-object v0

    .line 585
    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "EdDSA provider not supported"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static register()V
    .locals 19

    .line 385
    const-class v0, Lorg/apache/sshd/common/util/security/SecurityUtils;

    sget-object v1, Lorg/apache/sshd/common/util/security/SecurityUtils;->REGISTRATION_STATE_HOLDER:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 386
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    monitor-exit v1

    return-void

    .line 390
    :cond_0
    const-string v2, "org.apache.sshd.security.registrars"

    sget-object v3, Lorg/apache/sshd/common/util/security/SecurityUtils;->DEFAULT_SECURITY_PROVIDER_REGISTRARS:Ljava/util/List;

    .line 391
    const/16 v4, 0x2c

    invoke-static {v3, v4}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v3

    .line 390
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "regsList":Ljava/lang/String;
    const/4 v3, 0x0

    .line 393
    .local v3, "bouncyCastleRegistered":Z
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_5

    invoke-static {v2}, Lorg/apache/sshd/common/PropertyResolverUtils;->isNoneValue(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 394
    invoke-static {v2, v4}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, "classes":[Ljava/lang/String;
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 396
    .local v5, "logger":Lorg/slf4j/Logger;
    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    .line 397
    .local v7, "debugEnabled":Z
    array-length v8, v4

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_5

    aget-object v11, v4, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    .local v11, "registrarClass":Ljava/lang/String;
    const/4 v13, 0x3

    :try_start_1
    const-class v14, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    invoke-static {v0, v14, v11}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->createDefaultInstance(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    .local v14, "r":Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    nop

    .line 414
    :try_start_2
    invoke-interface {v14}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->getName()Ljava/lang/String;

    move-result-object v15

    .line 415
    .local v15, "name":Ljava/lang/String;
    invoke-static {v14}, Lorg/apache/sshd/common/util/security/SecurityUtils;->registerSecurityProvider(Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;)Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    move-result-object v16

    .line 416
    .local v16, "registeredInstance":Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    if-nez v16, :cond_1

    .line 417
    if-eqz v7, :cond_2

    .line 418
    const-string v12, "register({}) not registered - enabled={}, supported={}"

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v15, v13, v9

    .line 419
    invoke-interface {v14}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isEnabled()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v13, v6

    invoke-interface {v14}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isSupported()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const/16 v17, 0x2

    aput-object v18, v13, v17

    .line 418
    invoke-interface {v5, v12, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 424
    :cond_1
    const-string v12, "BC"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 425
    const/4 v3, 0x1

    .line 397
    .end local v11    # "registrarClass":Ljava/lang/String;
    .end local v14    # "r":Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "registeredInstance":Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 401
    .restart local v11    # "registrarClass":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 402
    .local v0, "t":Ljava/lang/ReflectiveOperationException;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    .line 403
    .local v8, "e":Ljava/lang/Throwable;
    const-string v10, "Failed ({}) to create default {} registrar instance: {}"

    new-array v12, v13, [Ljava/lang/Object;

    .line 404
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    aput-object v11, v12, v6

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v12, v9

    .line 403
    invoke-interface {v5, v10, v12}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    instance-of v6, v8, Ljava/lang/RuntimeException;

    if-nez v6, :cond_4

    .line 407
    instance-of v6, v8, Ljava/lang/Error;

    if-eqz v6, :cond_3

    .line 408
    move-object v6, v8

    check-cast v6, Ljava/lang/Error;

    throw v6

    .line 410
    :cond_3
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 406
    :cond_4
    move-object v6, v8

    check-cast v6, Ljava/lang/RuntimeException;

    throw v6

    .line 430
    .end local v0    # "t":Ljava/lang/ReflectiveOperationException;
    .end local v4    # "classes":[Ljava/lang/String;
    .end local v5    # "logger":Lorg/slf4j/Logger;
    .end local v7    # "debugEnabled":Z
    .end local v8    # "e":Ljava/lang/Throwable;
    .end local v11    # "registrarClass":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getDefaultProviderChoice()Lorg/apache/sshd/common/util/security/SecurityProviderChoice;

    move-result-object v0

    .line 431
    .local v0, "choice":Lorg/apache/sshd/common/util/security/SecurityProviderChoice;
    if-eqz v0, :cond_6

    sget-object v4, Lorg/apache/sshd/common/util/security/SecurityProviderChoice;->EMPTY:Lorg/apache/sshd/common/util/security/SecurityProviderChoice;

    if-ne v0, v4, :cond_7

    :cond_6
    if-eqz v3, :cond_7

    .line 432
    const-string v4, "BC"

    invoke-static {v4}, Lorg/apache/sshd/common/util/security/SecurityProviderChoice;->toSecurityProviderChoice(Ljava/lang/String;)Lorg/apache/sshd/common/util/security/SecurityProviderChoice;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/sshd/common/util/security/SecurityUtils;->setDefaultProviderChoice(Lorg/apache/sshd/common/util/security/SecurityProviderChoice;)V

    .line 435
    :cond_7
    sget-object v4, Lorg/apache/sshd/common/util/security/SecurityUtils;->REGISTRATION_STATE_HOLDER:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 436
    .end local v0    # "choice":Lorg/apache/sshd/common/util/security/SecurityProviderChoice;
    .end local v2    # "regsList":Ljava/lang/String;
    .end local v3    # "bouncyCastleRegistered":Z
    monitor-exit v1

    .line 437
    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static registerSecurityProvider(Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;)Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    .locals 8
    .param p0, "registrar"    # Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    .line 446
    const-string v0, "No registrar instance to register"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 447
    invoke-interface {p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->getName()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getRegisteredProvider(Ljava/lang/String;)Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    move-result-object v1

    .line 449
    .local v1, "registeredInstance":Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    if-nez v1, :cond_0

    invoke-interface {p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    :try_start_0
    invoke-static {p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->registerSecurityProvider(Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;)Z

    .line 452
    sget-object v2, Lorg/apache/sshd/common/util/security/SecurityUtils;->REGISTERED_PROVIDERS:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 453
    :try_start_1
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    monitor-exit v2

    .line 456
    return-object p0

    .line 454
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "registeredInstance":Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    .end local p0    # "registrar":Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 457
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "registeredInstance":Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    .restart local p0    # "registrar":Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    :catchall_1
    move-exception v2

    .line 458
    .local v2, "t":Ljava/lang/Throwable;
    const-class v3, Lorg/apache/sshd/common/util/security/SecurityUtils;

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 459
    .local v3, "logger":Lorg/slf4j/Logger;
    const-string v4, "Failed {} to register {} as a JCE provider: {}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 460
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 459
    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to register "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as a JCE provider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 465
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "logger":Lorg/slf4j/Logger;
    :cond_0
    return-object v1
.end method

.method public static resolveSecurityEntityFactory(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "-",
            "Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;",
            ">;)",
            "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<",
            "TT;>;"
        }
    .end annotation

    .line 671
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "entitySelector":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;>;"
    sget-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->SECURITY_ENTITY_FACTORIES:Ljava/util/Map;

    monitor-enter v0

    .line 672
    :try_start_0
    new-instance v1, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda4;-><init>()V

    .line 673
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 675
    .local v1, "factoriesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/sshd/common/util/security/SecurityEntityFactory<*>;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 677
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->getEffectiveSecurityEntityName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 679
    .local v2, "effectiveName":Ljava/lang/String;
    monitor-enter v1

    .line 680
    :try_start_1
    new-instance v0, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lorg/apache/sshd/common/util/security/SecurityUtils$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    .line 682
    .local v0, "factoryEntry":Lorg/apache/sshd/common/util/security/SecurityEntityFactory;, "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<*>;"
    monitor-exit v1

    .line 684
    return-object v0

    .line 682
    .end local v0    # "factoryEntry":Lorg/apache/sshd/common/util/security/SecurityEntityFactory;, "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<*>;"
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 675
    .end local v1    # "factoriesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/sshd/common/util/security/SecurityEntityFactory<*>;>;"
    .end local v2    # "effectiveName":Ljava/lang/String;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static setAPrioriDisabledProvider(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "disabled"    # Z

    .line 209
    const-string v0, "No provider name specified"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    sget-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->APRIORI_DISABLED_PROVIDERS:Ljava/util/Set;

    monitor-enter v0

    .line 211
    if-eqz p1, :cond_0

    .line 212
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 216
    :goto_0
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setDefaultProviderChoice(Lorg/apache/sshd/common/util/security/SecurityProviderChoice;)V
    .locals 1
    .param p0, "choice"    # Lorg/apache/sshd/common/util/security/SecurityProviderChoice;

    .line 351
    sget-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->DEFAULT_PROVIDER_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 352
    return-void
.end method

.method public static setKeyPairResourceParser(Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

    .line 660
    sget-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->KEYPAIRS_PARSER_HODLER:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 661
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 662
    monitor-exit v0

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setMaxDHGroupExchangeKeySize(I)V
    .locals 2
    .param p0, "keySize"    # I

    .line 313
    sget-object v0, Lorg/apache/sshd/common/util/security/SecurityUtils;->MAX_DHG_KEY_SIZE_HOLDER:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    .line 314
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 315
    monitor-exit v0

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
