.class final Lorg/apache/sshd/common/keyprovider/KeyPairProvider$2;
.super Ljava/lang/Object;
.source "KeyPairProvider.java"

# interfaces
.implements Lorg/apache/sshd/common/keyprovider/KeyPairProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->wrap(Ljava/lang/Iterable;)Lorg/apache/sshd/common/keyprovider/KeyPairProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pairs:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lorg/apache/sshd/common/keyprovider/KeyPairProvider$2;->val$pairs:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyTypes(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
    .locals 5
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

    .line 178
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 179
    .local v0, "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/sshd/common/keyprovider/KeyPairProvider$2;->val$pairs:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyPair;

    .line 180
    .local v2, "kp":Ljava/security/KeyPair;
    invoke-static {v2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "t":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    goto :goto_0

    .line 185
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 186
    goto :goto_0

    .line 190
    .end local v2    # "kp":Ljava/security/KeyPair;
    .end local v3    # "t":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public loadKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "type"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/KeyPairProvider$2;->val$pairs:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyPair;

    .line 166
    .local v1, "kp":Ljava/security/KeyPair;
    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "t":Ljava/lang/String;
    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    return-object v1

    .line 170
    .end local v1    # "kp":Ljava/security/KeyPair;
    .end local v2    # "t":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, 0x0

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

    .line 160
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/KeyPairProvider$2;->val$pairs:Ljava/lang/Iterable;

    return-object v0
.end method
