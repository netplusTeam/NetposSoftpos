.class public Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;
.super Ljava/lang/Object;
.source "LazyClientIdentityIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/security/KeyPair;",
        ">;"
    }
.end annotation


# instance fields
.field protected currentIdentities:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation
.end field

.field protected currentPair:Ljava/security/KeyPair;

.field private final filter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation
.end field

.field protected finished:Z

.field private final kpExtractor:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;",
            "+",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/security/KeyPair;",
            ">;>;"
        }
    .end annotation
.end field

.field private final providers:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/util/function/Function;Ljava/util/function/Predicate;)V
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
            ">;)V"
        }
    .end annotation

    .line 59
    .local p1, "providers":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;>;"
    .local p2, "kpExtractor":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;+Ljava/lang/Iterable<+Ljava/security/KeyPair;>;>;"
    .local p3, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/security/KeyPair;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->providers:Ljava/util/Iterator;

    .line 61
    const-string v0, "No key pair extractor provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;

    iput-object v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->kpExtractor:Ljava/util/function/Function;

    .line 62
    iput-object p3, p0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->filter:Ljava/util/function/Predicate;

    .line 63
    return-void
.end method


# virtual methods
.method public getFilter()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->filter:Ljava/util/function/Predicate;

    return-object v0
.end method

.method public getIdentitiesExtractor()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "-",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;",
            "+",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/security/KeyPair;",
            ">;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->kpExtractor:Ljava/util/function/Function;

    return-object v0
.end method

.method public getProviders()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->providers:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 8

    .line 79
    iget-boolean v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 80
    return v1

    .line 83
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->getProviders()Ljava/util/Iterator;

    move-result-object v0

    .line 84
    .local v0, "provs":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;>;"
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 85
    iput-boolean v2, p0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->finished:Z

    .line 86
    return v1

    .line 89
    :cond_1
    iget-object v3, p0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->currentIdentities:Ljava/util/Iterator;

    invoke-static {v3}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->exhaustCurrentIdentities(Ljava/util/Iterator;)Ljava/security/KeyPair;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->currentPair:Ljava/security/KeyPair;

    .line 90
    if-eqz v3, :cond_2

    .line 91
    return v2

    .line 94
    :cond_2
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->getIdentitiesExtractor()Ljava/util/function/Function;

    move-result-object v3

    .line 95
    .local v3, "x":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;+Ljava/lang/Iterable<+Ljava/security/KeyPair;>;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->getFilter()Ljava/util/function/Predicate;

    move-result-object v4

    .line 96
    .local v4, "f":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/security/KeyPair;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;

    .line 98
    .local v5, "p":Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;
    if-nez v5, :cond_3

    .line 99
    goto :goto_0

    .line 102
    :cond_3
    invoke-interface {v3, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 103
    .local v6, "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/security/KeyPair;>;"
    if-nez v6, :cond_4

    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    iput-object v7, p0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->currentIdentities:Ljava/util/Iterator;

    .line 104
    invoke-static {v7}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->exhaustCurrentIdentities(Ljava/util/Iterator;)Ljava/security/KeyPair;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->currentPair:Ljava/security/KeyPair;

    .line 105
    if-nez v7, :cond_5

    .line 106
    goto :goto_0

    .line 109
    :cond_5
    if-eqz v4, :cond_6

    invoke-interface {v4, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 110
    goto :goto_0

    .line 113
    :cond_6
    return v2

    .line 116
    .end local v5    # "p":Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;
    .end local v6    # "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/security/KeyPair;>;"
    :cond_7
    iput-boolean v2, p0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->finished:Z

    .line 117
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->next()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/security/KeyPair;
    .locals 2

    .line 122
    iget-boolean v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->finished:Z

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->currentPair:Ljava/security/KeyPair;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->currentPair:Ljava/security/KeyPair;

    .line 131
    .local v0, "kp":Ljava/security/KeyPair;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/sshd/client/config/keys/LazyClientIdentityIterator;->currentPair:Ljava/security/KeyPair;

    .line 132
    return-object v0

    .line 127
    .end local v0    # "kp":Ljava/security/KeyPair;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'next()\' called without asking \'hasNext()\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "All identities have been exhausted"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[lazy-iterator]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
