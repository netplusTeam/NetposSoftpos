.class public interface abstract Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;
.super Ljava/lang/Object;
.source "ClientIdentityProvider.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic lambda$of$0(Ljava/security/KeyPair;Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "kp"    # Ljava/security/KeyPair;
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 61
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static lazyKeysIterator(Ljava/util/Iterator;Ljava/util/function/Function;Ljava/util/function/Predicate;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;",
            ">;",
            "Ljava/util/function/Function<",
            "-",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;",
            "+",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/security/KeyPair;",
            ">;>;",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/security/KeyPair;",
            ">;)",
            "Ljava/util/Iterator<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .line 122
    .local p0, "providers":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;>;"
    .local p1, "kpExtractor":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;+Ljava/lang/Iterable<+Ljava/security/KeyPair;>;>;"
    .local p2, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/security/KeyPair;>;"
    const-string v0, "No key pair extractor provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    if-nez p0, :cond_0

    .line 124
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;-><init>(Ljava/util/Iterator;Ljava/util/function/Function;Ljava/util/function/Predicate;)V

    .line 123
    :goto_0
    return-object v0
.end method

.method public static lazyKeysLoader(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;",
            ">;",
            "Ljava/util/function/Function<",
            "-",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;",
            "+",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/security/KeyPair;",
            ">;>;",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/security/KeyPair;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .line 86
    .local p0, "providers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;>;"
    .local p1, "kpExtractor":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;+Ljava/lang/Iterable<+Ljava/security/KeyPair;>;>;"
    .local p2, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/security/KeyPair;>;"
    const-string v0, "No key pair extractor provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    if-nez p0, :cond_0

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider$1;-><init>(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public static of(Ljava/security/KeyPair;)Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;
    .locals 1
    .param p0, "kp"    # Ljava/security/KeyPair;

    .line 61
    new-instance v0, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider$$ExternalSyntheticLambda0;-><init>(Ljava/security/KeyPair;)V

    return-object v0
.end method


# virtual methods
.method public abstract getClientIdentities(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
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
