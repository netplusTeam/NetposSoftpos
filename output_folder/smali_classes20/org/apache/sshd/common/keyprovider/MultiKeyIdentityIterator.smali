.class public Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;
.super Ljava/lang/Object;
.source "MultiKeyIdentityIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lorg/apache/sshd/common/session/SessionContextHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/security/KeyPair;",
        ">;",
        "Lorg/apache/sshd/common/session/SessionContextHolder;"
    }
.end annotation


# instance fields
.field protected currentProvider:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation
.end field

.field protected finished:Z

.field private final providers:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionContext:Lorg/apache/sshd/common/session/SessionContext;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/Iterable;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p2, "providers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;->providers:Ljava/util/Iterator;

    .line 45
    iput-object p1, p0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;->sessionContext:Lorg/apache/sshd/common/session/SessionContext;

    .line 46
    return-void
.end method


# virtual methods
.method public getProviders()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;->providers:Ljava/util/Iterator;

    return-object v0
.end method

.method public getSessionContext()Lorg/apache/sshd/common/session/SessionContext;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;->sessionContext:Lorg/apache/sshd/common/session/SessionContext;

    return-object v0
.end method

.method public hasNext()Z
    .locals 7

    .line 59
    iget-boolean v0, p0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    return v1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;->getProviders()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    .local v0, "provs":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;>;"
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 65
    iput-boolean v2, p0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;->finished:Z

    .line 66
    return v1

    .line 69
    :cond_1
    iget-object v3, p0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;->currentProvider:Ljava/util/Iterator;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    return v2

    .line 73
    :cond_2
    invoke-virtual {p0}, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;->getSessionContext()Lorg/apache/sshd/common/session/SessionContext;

    move-result-object v3

    .line 74
    .local v3, "session":Lorg/apache/sshd/common/session/SessionContext;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    .line 78
    .local v4, "p":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    const/4 v5, 0x0

    if-nez v4, :cond_3

    move-object v6, v5

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-interface {v4, v3}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .local v6, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    :goto_1
    nop

    .line 83
    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;->currentProvider:Ljava/util/Iterator;

    .line 85
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 86
    return v2

    .line 88
    .end local v4    # "p":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .end local v6    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    :cond_5
    goto :goto_0

    .line 79
    .restart local v4    # "p":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") keys loading exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 81
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 91
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "p":Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    :cond_6
    iput-boolean v1, p0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;->finished:Z

    .line 92
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;->next()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/security/KeyPair;
    .locals 2

    .line 97
    iget-boolean v0, p0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;->finished:Z

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;->currentProvider:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPair;

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'next()\' called without asking \'hasNext()\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "All identities have been exhausted"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
