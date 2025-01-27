.class public interface abstract Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;
.super Ljava/lang/Object;
.source "HostKeyIdentityProvider.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static iteratorOf(Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;)Ljava/util/Iterator;
    .locals 1
    .param p0, "provider"    # Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;",
            ")",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/security/KeyPair;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;>;>;"
        }
    .end annotation

    .line 43
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;->loadHostKeys()Ljava/lang/Iterable;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->iteratorOf(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$null$0(Ljava/security/KeyPair;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 2
    .param p0, "kp"    # Ljava/security/KeyPair;

    .line 51
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic lambda$wrap$1(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "pairs"    # Ljava/lang/Iterable;

    .line 51
    new-instance v0, Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->wrapIterable(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/Iterable;)Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/security/KeyPair;",
            ">;)",
            "Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;"
        }
    .end annotation

    .line 51
    .local p0, "pairs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/security/KeyPair;>;"
    new-instance v0, Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs wrap([Ljava/security/KeyPair;)Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;
    .locals 1
    .param p0, "pairs"    # [Ljava/security/KeyPair;

    .line 47
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;->wrap(Ljava/lang/Iterable;)Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract loadHostKeys()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/security/KeyPair;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;>;>;"
        }
    .end annotation
.end method
