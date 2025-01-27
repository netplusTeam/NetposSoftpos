.class public interface abstract Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
.super Ljava/lang/Object;
.source "PublickeyAuthenticator.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static fromAuthorizedEntries(Ljava/lang/Object;Lorg/apache/sshd/server/session/ServerSession;Ljava/util/Collection;Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;)Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
    .locals 2
    .param p0, "id"    # Ljava/lang/Object;
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p3, "fallbackResolver"    # Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/sshd/server/session/ServerSession;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;",
            ">;",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;",
            ")",
            "Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 68
    .local p2, "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;>;"
    nop

    .line 69
    invoke-static {p1, p2, p3}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->resolvePublicKeyEntries(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Collection;Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;)Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/PublicKey;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    sget-object v1, Lorg/apache/sshd/server/auth/pubkey/RejectAllPublickeyAuthenticator;->INSTANCE:Lorg/apache/sshd/server/auth/pubkey/RejectAllPublickeyAuthenticator;

    return-object v1

    .line 73
    :cond_0
    new-instance v1, Lorg/apache/sshd/server/auth/pubkey/KeySetPublickeyAuthenticator;

    invoke-direct {v1, p0, v0}, Lorg/apache/sshd/server/auth/pubkey/KeySetPublickeyAuthenticator;-><init>(Ljava/lang/Object;Ljava/util/Collection;)V

    return-object v1
.end method


# virtual methods
.method public abstract authenticate(Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/server/session/ServerSession;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sshd/server/auth/AsyncAuthException;
        }
    .end annotation
.end method
