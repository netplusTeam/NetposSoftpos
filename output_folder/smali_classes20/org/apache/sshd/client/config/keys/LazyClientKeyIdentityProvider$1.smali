.class Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;
.super Ljava/lang/Object;
.source "LazyClientKeyIdentityProvider.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;->lambda$loadKeys$0$org-apache-sshd-client-config-keys-LazyClientKeyIdentityProvider(Ljava/util/Collection;Lorg/apache/sshd/common/session/SessionContext;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/security/KeyPair;",
        ">;"
    }
.end annotation


# instance fields
.field private currentIdentities:Ljava/util/Iterator;

.field private currentPair:Ljava/security/KeyPair;

.field private finished:Z

.field private final iter:Ljava/util/Iterator;

.field final synthetic this$0:Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;

.field final synthetic val$locs:Ljava/util/Collection;

.field final synthetic val$session:Lorg/apache/sshd/common/session/SessionContext;


# direct methods
.method constructor <init>(Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;Ljava/util/Collection;Lorg/apache/sshd/common/session/SessionContext;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;

    .line 86
    iput-object p1, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->this$0:Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;

    iput-object p2, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->val$locs:Ljava/util/Collection;

    iput-object p3, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->val$session:Lorg/apache/sshd/common/session/SessionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->iter:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .line 94
    iget-boolean v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 95
    return v1

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->currentIdentities:Ljava/util/Iterator;

    invoke-static {v0}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->exhaustCurrentIdentities(Ljava/util/Iterator;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->currentPair:Ljava/security/KeyPair;

    .line 99
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 100
    return v2

    .line 103
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/NamedResource;

    .line 107
    .local v0, "l":Lorg/apache/sshd/common/NamedResource;
    :try_start_0
    iget-object v3, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->this$0:Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;

    iget-object v4, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->val$session:Lorg/apache/sshd/common/session/SessionContext;

    invoke-virtual {v3, v4, v0}, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;->loadClientIdentities(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;)Ljava/lang/Iterable;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .local v3, "ids":Ljava/lang/Iterable;
    nop

    .line 113
    if-nez v3, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->currentIdentities:Ljava/util/Iterator;

    .line 114
    invoke-static {v4}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->exhaustCurrentIdentities(Ljava/util/Iterator;)Ljava/security/KeyPair;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->currentPair:Ljava/security/KeyPair;

    .line 115
    if-eqz v4, :cond_3

    .line 116
    return v2

    .line 118
    .end local v0    # "l":Lorg/apache/sshd/common/NamedResource;
    .end local v3    # "ids":Ljava/lang/Iterable;
    :cond_3
    goto :goto_0

    .line 108
    .restart local v0    # "l":Lorg/apache/sshd/common/NamedResource;
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to load key from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 110
    invoke-interface {v0}, Lorg/apache/sshd/common/NamedResource;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 120
    .end local v0    # "l":Lorg/apache/sshd/common/NamedResource;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iput-boolean v2, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->finished:Z

    .line 121
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->next()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/security/KeyPair;
    .locals 2

    .line 126
    iget-boolean v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->finished:Z

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->currentPair:Ljava/security/KeyPair;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->currentPair:Ljava/security/KeyPair;

    .line 134
    .local v0, "kp":Ljava/security/KeyPair;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;->currentPair:Ljava/security/KeyPair;

    .line 135
    return-object v0

    .line 130
    .end local v0    # "kp":Ljava/security/KeyPair;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'next()\' called without asking \'hasNext()\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "All identities have been exhausted"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljava/util/Iterator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
