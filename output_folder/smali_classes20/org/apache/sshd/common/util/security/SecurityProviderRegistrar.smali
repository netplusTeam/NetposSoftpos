.class public interface abstract Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
.super Ljava/lang/Object;
.source "SecurityProviderRegistrar.java"

# interfaces
.implements Lorg/apache/sshd/common/util/security/SecurityProviderChoice;
.implements Lorg/apache/sshd/common/OptionalFeature;
.implements Lorg/apache/sshd/common/PropertyResolver;


# static fields
.field public static final ALL_OPTIONS_VALUE:Ljava/lang/String; = "all"

.field public static final ALL_OPTIONS_WILDCARD:Ljava/lang/String; = "*"

.field public static final CONFIG_PROP_BASE:Ljava/lang/String; = "org.apache.sshd.security.provider"

.field public static final ENABLED_PROPERTY:Ljava/lang/String; = "enabled"

.field public static final NAMED_PROVIDER_PROPERTY:Ljava/lang/String; = "useNamed"

.field public static final NO_OPTIONS_VALUE:Ljava/lang/String; = "none"

.field public static final SECURITY_ENTITIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 82
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljavax/crypto/Cipher;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/security/KeyFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/security/MessageDigest;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/security/KeyPairGenerator;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Ljavax/crypto/KeyAgreement;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Ljavax/crypto/Mac;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Ljava/security/Signature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Ljava/security/cert/CertificateFactory;

    aput-object v2, v0, v1

    .line 84
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->SECURITY_ENTITIES:Ljava/util/List;

    .line 82
    return-void
.end method

.method public static findSecurityProviderRegistrarBySecurityEntity(Ljava/util/function/Predicate;Ljava/util/Collection;)Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;",
            ">;)",
            "Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;"
        }
    .end annotation

    .line 335
    .local p0, "entitySelector":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;>;"
    .local p1, "registrars":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;>;"
    new-instance v0, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Predicate;)V

    invoke-static {v0, p1}, Lorg/apache/sshd/common/util/GenericUtils;->findFirstMatchingMember(Ljava/util/function/Predicate;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    return-object v0
.end method

.method public static getEffectiveSecurityEntityName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 295
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_2

    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Ljavax/crypto/Cipher;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 299
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 300
    .local v0, "pos":I
    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    return-object v1

    .line 296
    .end local v0    # "pos":I
    :cond_2
    :goto_1
    return-object p1
.end method

.method public static isAllOptionsValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 231
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    const-string v0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 231
    :goto_1
    return v0
.end method

.method public static isSecurityEntitySupported(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p1, "propName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/PropertyResolver;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 258
    .local p2, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p3}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 259
    return v1

    .line 262
    :cond_0
    invoke-interface {p0, p1}, Lorg/apache/sshd/common/PropertyResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "propValue":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    move-object v0, p4

    .line 267
    :cond_1
    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    return v1

    .line 271
    :cond_2
    const/16 v2, 0x2c

    invoke-static {v0, v2}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "values":[Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 273
    return v1

    .line 276
    :cond_3
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    aget-object v3, v2, v1

    invoke-static {v3}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isAllOptionsValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 277
    return v4

    .line 280
    :cond_4
    invoke-static {p2, p3}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->getEffectiveSecurityEntityName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "effectiveName":Ljava/lang/String;
    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v3, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v5

    .line 282
    .local v5, "index":I
    if-ltz v5, :cond_5

    move v1, v4

    :cond_5
    return v1
.end method

.method public static isSecurityEntitySupported(Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "registrar"    # Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 253
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "No registrar instance"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    invoke-interface {v0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->getConfigurationPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isSecurityEntitySupported(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0
.end method

.method public static synthetic lambda$findSecurityProviderRegistrarBySecurityEntity$0(Ljava/util/function/Predicate;Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;)Z
    .locals 1
    .param p0, "entitySelector"    # Ljava/util/function/Predicate;
    .param p1, "r"    # Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    .line 336
    invoke-interface {p1}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static registerSecurityProvider(Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;)Z
    .locals 4
    .param p0, "registrar"    # Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;

    .line 316
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 317
    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 316
    const-string v1, "No name for registrar=%s"

    invoke-static {v0, v1, p0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 319
    .local v1, "p":Ljava/security/Provider;
    if-eqz v1, :cond_1

    .line 320
    const/4 v2, 0x0

    return v2

    .line 323
    :cond_1
    nop

    .line 324
    invoke-interface {p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->getSecurityProvider()Ljava/security/Provider;

    move-result-object v2

    .line 323
    const-string v3, "No provider created for registrar of %s"

    invoke-static {v2, v3, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/security/Provider;

    .line 325
    invoke-interface {p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isNamedProviderUsed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 329
    :cond_2
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public getBasePropertyName()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.apache.sshd.security.provider."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationPropertyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->getBasePropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSecurityEntitySupportValue(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 203
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, ""

    return-object v0
.end method

.method public getParentPropertyResolver()Lorg/apache/sshd/common/PropertyResolver;
    .locals 1

    .line 115
    sget-object v0, Lorg/apache/sshd/common/SyspropsMapWrapper;->RAW_PROPS_RESOLVER:Lorg/apache/sshd/common/PropertyResolver;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 120
    invoke-static {}, Lorg/apache/sshd/common/util/IgnoringEmptyMap;->getInstance()Lorg/apache/sshd/common/util/IgnoringEmptyMap;

    move-result-object v0

    return-object v0
.end method

.method public isCertificateFactorySupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 192
    const-class v0, Ljava/security/cert/CertificateFactory;

    invoke-interface {p0, v0, p1}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isSecurityEntitySupported(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCipherSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "transformation"    # Ljava/lang/String;

    .line 129
    const-class v0, Ljavax/crypto/Cipher;

    invoke-interface {p0, v0, p1}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isSecurityEntitySupported(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .line 105
    invoke-interface {p0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isAPrioriDisabledProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_0
    const-string v0, "enabled"

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->getConfigurationPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "configPropName":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isKeyAgreementSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 165
    const-class v0, Ljavax/crypto/KeyAgreement;

    invoke-interface {p0, v0, p1}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isSecurityEntitySupported(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKeyFactorySupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 138
    const-class v0, Ljava/security/KeyFactory;

    invoke-interface {p0, v0, p1}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isSecurityEntitySupported(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKeyPairGeneratorSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 156
    const-class v0, Ljava/security/KeyPairGenerator;

    invoke-interface {p0, v0, p1}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isSecurityEntitySupported(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMacSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 174
    const-class v0, Ljavax/crypto/Mac;

    invoke-interface {p0, v0, p1}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isSecurityEntitySupported(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMessageDigestSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 147
    const-class v0, Ljava/security/MessageDigest;

    invoke-interface {p0, v0, p1}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isSecurityEntitySupported(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNamedProviderUsed()Z
    .locals 2

    .line 220
    nop

    .line 221
    const-string/jumbo v0, "useNamed"

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->getConfigurationPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-super {p0}, Lorg/apache/sshd/common/util/security/SecurityProviderChoice;->isNamedProviderUsed()Z

    move-result v1

    .line 220
    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getBooleanProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSecurityEntitySupported(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 207
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0, p1}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->getDefaultSecurityEntitySupportValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "defaultValue":Ljava/lang/String;
    invoke-static {p0, p1, p2, v0}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isSecurityEntitySupported(Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isSignatureSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 183
    const-class v0, Ljava/security/Signature;

    invoke-interface {p0, v0, p1}, Lorg/apache/sshd/common/util/security/SecurityProviderRegistrar;->isSecurityEntitySupported(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
