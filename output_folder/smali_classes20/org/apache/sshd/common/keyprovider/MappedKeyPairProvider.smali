.class public Lorg/apache/sshd/common/keyprovider/MappedKeyPairProvider;
.super Ljava/lang/Object;
.source "MappedKeyPairProvider.java"

# interfaces
.implements Lorg/apache/sshd/common/keyprovider/KeyPairProvider;


# static fields
.field public static final MAP_TO_KEY_PAIR_PROVIDER:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/KeyPair;",
            ">;",
            "Lorg/apache/sshd/common/keyprovider/KeyPairProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final pairsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lorg/apache/sshd/common/keyprovider/MappedKeyPairProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/keyprovider/MappedKeyPairProvider$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/keyprovider/MappedKeyPairProvider;->MAP_TO_KEY_PAIR_PROVIDER:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/KeyPair;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "pairs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/KeyPair;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/keyprovider/MappedKeyPairProvider;->mapUniquePairs(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/keyprovider/MappedKeyPairProvider;-><init>(Ljava/util/Map;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/KeyPair;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "pairsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/KeyPair;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No pairs map provided"

    invoke-static {p1, v1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Map;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/keyprovider/MappedKeyPairProvider;->pairsMap:Ljava/util/Map;

    .line 62
    return-void
.end method

.method public varargs constructor <init>([Ljava/security/KeyPair;)V
    .locals 1
    .param p1, "pairs"    # [Ljava/security/KeyPair;

    .line 53
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/sshd/common/keyprovider/MappedKeyPairProvider;-><init>(Ljava/util/Collection;)V

    .line 54
    return-void
.end method

.method public static mapUniquePairs(Ljava/util/Collection;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/KeyPair;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .line 85
    .local p0, "pairs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/KeyPair;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 90
    .local v0, "pairsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/KeyPair;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyPair;

    .line 91
    .local v2, "kp":Ljava/security/KeyPair;
    invoke-static {v2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cannot determine key type"

    invoke-static {v3, v4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "keyType":Ljava/lang/String;
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/KeyPair;

    .line 93
    .local v4, "prev":Ljava/security/KeyPair;
    if-nez v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-string v6, "Multiple keys of type=%s"

    invoke-static {v5, v6, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 94
    .end local v2    # "kp":Ljava/security/KeyPair;
    .end local v3    # "keyType":Ljava/lang/String;
    .end local v4    # "prev":Ljava/security/KeyPair;
    goto :goto_0

    .line 96
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getKeyTypes(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/MappedKeyPairProvider;->pairsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public loadKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "type"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/MappedKeyPairProvider;->pairsMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPair;

    return-object v0
.end method

.method public loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/MappedKeyPairProvider;->pairsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/MappedKeyPairProvider;->pairsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
