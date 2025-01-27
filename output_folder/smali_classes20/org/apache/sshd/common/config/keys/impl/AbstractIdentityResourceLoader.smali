.class public abstract Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractIdentityResourceLoader.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/IdentityResourceLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PUB::",
        "Ljava/security/PublicKey;",
        "PRV::",
        "Ljava/security/PrivateKey;",
        ">",
        "Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;",
        "Lorg/apache/sshd/common/config/keys/IdentityResourceLoader<",
        "TPUB;TPRV;>;"
    }
.end annotation


# instance fields
.field private final prvType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TPRV;>;"
        }
    .end annotation
.end field

.field private final pubType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TPUB;>;"
        }
    .end annotation
.end field

.field private final types:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TPUB;>;",
            "Ljava/lang/Class<",
            "TPRV;>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader;, "Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader<TPUB;TPRV;>;"
    .local p1, "pubType":Ljava/lang/Class;, "Ljava/lang/Class<TPUB;>;"
    .local p2, "prvType":Ljava/lang/Class;, "Ljava/lang/Class<TPRV;>;"
    .local p3, "keyTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 47
    const-string v0, "No public key type specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader;->pubType:Ljava/lang/Class;

    .line 48
    const-string v0, "No private key type specified"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader;->prvType:Ljava/lang/Class;

    .line 49
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 51
    const-string v2, "No key type names provided"

    invoke-static {p3, v2, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;Ljava/util/Collection;)Ljava/util/NavigableSet;

    move-result-object v0

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader;->types:Ljava/util/NavigableSet;

    .line 52
    return-void
.end method


# virtual methods
.method public final getPrivateKeyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TPRV;>;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader;, "Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader<TPUB;TPRV;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader;->prvType:Ljava/lang/Class;

    return-object v0
.end method

.method public final getPublicKeyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TPUB;>;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader;, "Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader<TPUB;TPRV;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader;->pubType:Ljava/lang/Class;

    return-object v0
.end method

.method public getSupportedKeyTypes()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader;, "Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader<TPUB;TPRV;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/impl/AbstractIdentityResourceLoader;->types:Ljava/util/NavigableSet;

    return-object v0
.end method
