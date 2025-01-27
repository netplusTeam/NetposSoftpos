.class public interface abstract Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;
.super Ljava/lang/Object;
.source "PasswordIdentityProvider.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final EMPTY_PASSWORDS_PROVIDER:Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

.field public static final LOADER:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider$1;

    invoke-direct {v0}, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;->EMPTY_PASSWORDS_PROVIDER:Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    .line 56
    new-instance v0, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;->LOADER:Ljava/util/function/Function;

    return-void
.end method

.method public static iterableOf(Ljava/util/Collection;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    .local p0, "providers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;>;"
    new-instance v0, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider$$ExternalSyntheticLambda3;-><init>()V

    .line 144
    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->wrapIterable(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/lang/Iterable;

    move-result-object v0

    .line 145
    .local v0, "passwordSuppliers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/function/Supplier<Ljava/lang/Iterable<Ljava/lang/String;>;>;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->multiIterableSuppliers(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    return-object v1
.end method

.method public static iteratorOf(Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;)Ljava/util/Iterator;
    .locals 1
    .param p0, "provider"    # Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;->loadPasswords()Ljava/lang/Iterable;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->iteratorOf(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static iteratorOf(Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;)Ljava/util/Iterator;
    .locals 1
    .param p0, "identities"    # Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;
    .param p1, "passwords"    # Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;",
            "Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-static {p0, p1}, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;->resolvePasswordIdentityProvider(Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;)Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;->iteratorOf(Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$iterableOf$1(Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;)Ljava/util/function/Supplier;
    .locals 1
    .param p0, "p"    # Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;)V

    return-object v0
.end method

.method public static synthetic lambda$static$0(Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "p"    # Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    .line 57
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;->loadPasswords()Ljava/lang/Iterable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$wrapPasswords$2(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 0
    .param p0, "passwords"    # Ljava/lang/Iterable;

    .line 167
    return-object p0
.end method

.method public static multiProvider(Ljava/util/Collection;)Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;",
            ">;)",
            "Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;"
        }
    .end annotation

    .line 133
    .local p0, "providers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;->EMPTY_PASSWORDS_PROVIDER:Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;->iterableOf(Ljava/util/Collection;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;->wrapPasswords(Ljava/lang/Iterable;)Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static varargs multiProvider([Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;)Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;
    .locals 1
    .param p0, "providers"    # [Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    .line 122
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;->multiProvider(Ljava/util/Collection;)Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    move-result-object v0

    return-object v0
.end method

.method public static resolvePasswordIdentityProvider(Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;)Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;
    .locals 2
    .param p0, "identities"    # Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;
    .param p1, "passwords"    # Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    .line 104
    if-eqz p1, :cond_2

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    if-nez p0, :cond_1

    .line 107
    return-object p1

    .line 109
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;->multiProvider([Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;)Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    move-result-object v0

    return-object v0

    .line 105
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static wrapPasswords(Ljava/lang/Iterable;)Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;"
        }
    .end annotation

    .line 167
    .local p0, "passwords":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;->EMPTY_PASSWORDS_PROVIDER:Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Iterable;)V

    :goto_0
    return-object v0
.end method

.method public static varargs wrapPasswords([Ljava/lang/String;)Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;
    .locals 1
    .param p0, "passwords"    # [Ljava/lang/String;

    .line 156
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;->wrapPasswords(Ljava/lang/Iterable;)Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract loadPasswords()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
