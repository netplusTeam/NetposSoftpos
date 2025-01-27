.class final Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser$2;
.super Ljava/lang/Object;
.source "KeyPairResourceParser.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->aggregate(Ljava/util/Collection;)Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$parsers:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser$2;->val$parsers:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canExtractKeyPairs(Lorg/apache/sshd/common/NamedResource;Ljava/util/List;)Z
    .locals 3
    .param p1, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 184
    .local p2, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser$2;->val$parsers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

    .line 185
    .local v1, "p":Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;
    invoke-interface {v1, p1, p2}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->canExtractKeyPairs(Lorg/apache/sshd/common/NamedResource;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    const/4 v0, 0x1

    return v0

    .line 188
    .end local v1    # "p":Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;
    :cond_0
    goto :goto_0

    .line 190
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;)Ljava/util/Collection;
    .locals 5
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
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

    .line 160
    .local p4, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 161
    .local v0, "keyPairs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/KeyPair;>;"
    iget-object v1, p0, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser$2;->val$parsers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

    .line 162
    .local v2, "p":Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;
    invoke-interface {v2, p2, p4}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->canExtractKeyPairs(Lorg/apache/sshd/common/NamedResource;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    goto :goto_0

    .line 166
    :cond_0
    invoke-interface {v2, p1, p2, p3, p4}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v3

    .line 167
    .local v3, "kps":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/KeyPair;>;"
    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 168
    goto :goto_0

    .line 171
    :cond_1
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 172
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    goto :goto_1

    .line 174
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 176
    .end local v2    # "p":Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;
    .end local v3    # "kps":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/KeyPair;>;"
    :goto_1
    goto :goto_0

    .line 178
    :cond_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[aggregate]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
