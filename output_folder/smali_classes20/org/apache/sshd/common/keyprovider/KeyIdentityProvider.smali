.class public interface abstract Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
.super Ljava/lang/Object;
.source "KeyIdentityProvider.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final EMPTY_KEYS_PROVIDER:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider$1;

    invoke-direct {v0}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->EMPTY_KEYS_PROVIDER:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    return-void
.end method

.method public static exhaustCurrentIdentities(Ljava/util/Iterator;)Ljava/security/KeyPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/security/KeyPair;",
            ">;)",
            "Ljava/security/KeyPair;"
        }
    .end annotation

    .line 196
    .local p0, "ids":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/security/KeyPair;>;"
    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPair;

    .line 198
    .local v0, "kp":Ljava/security/KeyPair;
    if-eqz v0, :cond_0

    .line 199
    return-object v0

    .line 201
    .end local v0    # "kp":Ljava/security/KeyPair;
    :cond_0
    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isEmpty(Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)Z
    .locals 1
    .param p0, "provider"    # Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    .line 69
    if-eqz p0, :cond_1

    sget-object v0, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->EMPTY_KEYS_PROVIDER:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->isSameReference(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static iterableOf(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Collection;)Ljava/lang/Iterable;
    .locals 6
    .param p0, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .line 140
    .local p1, "providers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 141
    .local v0, "numProviders":I
    if-gtz v0, :cond_0

    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 143
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 144
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->head(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    .line 146
    .local v1, "p":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    :try_start_0
    invoke-interface {v1, p0}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 147
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") keys loading exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 149
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 152
    .end local v1    # "p":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider$2;

    invoke-direct {v1, p0, p1}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider$2;-><init>(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Collection;)V

    return-object v1
.end method

.method public static synthetic lambda$wrapKeyPairs$0(Ljava/lang/Iterable;Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
    .locals 0
    .param p0, "pairs"    # Ljava/lang/Iterable;
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 185
    return-object p0
.end method

.method public static multiProvider(Ljava/util/Collection;)Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;",
            ">;)",
            "Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;"
        }
    .end annotation

    .line 120
    .local p0, "providers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 121
    .local v0, "numProviders":I
    if-gtz v0, :cond_0

    .line 122
    sget-object v1, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->EMPTY_KEYS_PROVIDER:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    return-object v1

    .line 123
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 124
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->head(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    return-object v1

    .line 126
    :cond_1
    new-instance v1, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider;

    invoke-direct {v1, p0}, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider;-><init>(Ljava/lang/Iterable;)V

    return-object v1
.end method

.method public static varargs multiProvider([Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .locals 1
    .param p0, "providers"    # [Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    .line 108
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->multiProvider(Ljava/util/Collection;)Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    move-result-object v0

    return-object v0
.end method

.method public static resolveKeyIdentityProvider(Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .locals 2
    .param p0, "identities"    # Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .param p1, "keys"    # Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    .line 89
    invoke-static {p1}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->isEmpty(Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/GenericUtils;->isSameReference(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->isEmpty(Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    return-object p1

    .line 95
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->multiProvider([Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    move-result-object v0

    return-object v0

    .line 91
    :cond_2
    :goto_0
    if-nez p0, :cond_3

    move-object v0, p1

    goto :goto_1

    :cond_3
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public static wrapKeyPairs(Ljava/lang/Iterable;)Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/security/KeyPair;",
            ">;)",
            "Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;"
        }
    .end annotation

    .line 185
    .local p0, "pairs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->EMPTY_KEYS_PROVIDER:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Iterable;)V

    :goto_0
    return-object v0
.end method

.method public static varargs wrapKeyPairs([Ljava/security/KeyPair;)Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .locals 1
    .param p0, "pairs"    # [Ljava/security/KeyPair;

    .line 174
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->wrapKeyPairs(Ljava/lang/Iterable;)Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
