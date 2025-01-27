.class public Lorg/apache/sshd/server/auth/pubkey/KeySetPublickeyAuthenticator;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "KeySetPublickeyAuthenticator.java"

# interfaces
.implements Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;


# instance fields
.field private final id:Ljava/lang/Object;

.field private final keySet:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p2, "keySet":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/PublicKey;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/sshd/server/auth/pubkey/KeySetPublickeyAuthenticator;->id:Ljava/lang/Object;

    .line 40
    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/server/auth/pubkey/KeySetPublickeyAuthenticator;->keySet:Ljava/util/Collection;

    .line 41
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/server/session/ServerSession;)Z
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PublicKey;
    .param p3, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 56
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/pubkey/KeySetPublickeyAuthenticator;->getKeySet()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/sshd/server/auth/pubkey/KeySetPublickeyAuthenticator;->authenticate(Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/server/session/ServerSession;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public authenticate(Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/server/session/ServerSession;Ljava/util/Collection;)Z
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PublicKey;
    .param p3, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/PublicKey;",
            "Lorg/apache/sshd/server/session/ServerSession;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/PublicKey;",
            ">;)Z"
        }
    .end annotation

    .line 60
    .local p4, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/PublicKey;>;"
    invoke-static {p4}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const-string v1, ")["

    const-string v2, "authenticate("

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lorg/apache/sshd/server/auth/pubkey/KeySetPublickeyAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/apache/sshd/server/auth/pubkey/KeySetPublickeyAuthenticator;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] no keys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 65
    :cond_0
    return v3

    .line 68
    :cond_1
    invoke-static {p2, p4}, Lorg/apache/sshd/common/config/keys/KeyUtils;->findMatchingKey(Ljava/security/PublicKey;Ljava/util/Collection;)Ljava/security/PublicKey;

    move-result-object v0

    .line 69
    .local v0, "matchKey":Ljava/security/PublicKey;
    if-eqz v0, :cond_2

    const/4 v3, 0x1

    .line 70
    .local v3, "matchFound":Z
    :cond_2
    iget-object v4, p0, Lorg/apache/sshd/server/auth/pubkey/KeySetPublickeyAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 71
    iget-object v4, p0, Lorg/apache/sshd/server/auth/pubkey/KeySetPublickeyAuthenticator;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] match found="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 73
    :cond_3
    return v3
.end method

.method public getId()Ljava/lang/Object;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/sshd/server/auth/pubkey/KeySetPublickeyAuthenticator;->id:Ljava/lang/Object;

    return-object v0
.end method

.method public final getKeySet()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/apache/sshd/server/auth/pubkey/KeySetPublickeyAuthenticator;->keySet:Ljava/util/Collection;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/pubkey/KeySetPublickeyAuthenticator;->getId()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
