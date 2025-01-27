.class public Lorg/apache/sshd/server/auth/pubkey/CachingPublicKeyAuthenticator;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "CachingPublicKeyAuthenticator.java"

# interfaces
.implements Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;


# static fields
.field public static final CACHE_ATTRIBUTE:Lorg/apache/sshd/common/AttributeRepository$AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "Ljava/util/Map<",
            "Ljava/security/PublicKey;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final authenticator:Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lorg/apache/sshd/common/AttributeRepository$AttributeKey;

    invoke-direct {v0}, Lorg/apache/sshd/common/AttributeRepository$AttributeKey;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/auth/pubkey/CachingPublicKeyAuthenticator;->CACHE_ATTRIBUTE:Lorg/apache/sshd/common/AttributeRepository$AttributeKey;

    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;)V
    .locals 1
    .param p1, "authenticator"    # Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    .line 47
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 48
    const-string v0, "No delegate authenticator"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    iput-object v0, p0, Lorg/apache/sshd/server/auth/pubkey/CachingPublicKeyAuthenticator;->authenticator:Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    .line 49
    return-void
.end method

.method static synthetic lambda$resolveCachedResults$0(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/util/Map;
    .locals 1
    .param p0, "attr"    # Lorg/apache/sshd/common/AttributeRepository$AttributeKey;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/server/session/ServerSession;)Z
    .locals 11
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PublicKey;
    .param p3, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/server/auth/pubkey/CachingPublicKeyAuthenticator;->resolveCachedResults(Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/server/session/ServerSession;)Ljava/util/Map;

    move-result-object v0

    .line 54
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/PublicKey;Ljava/lang/Boolean;>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 55
    .local v1, "result":Ljava/lang/Boolean;
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-nez v1, :cond_2

    .line 57
    :try_start_0
    iget-object v8, p0, Lorg/apache/sshd/server/auth/pubkey/CachingPublicKeyAuthenticator;->authenticator:Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    invoke-interface {v8, p1, p2, p3}, Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;->authenticate(Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/server/session/ServerSession;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v8

    .line 67
    nop

    .line 68
    iget-object v8, p0, Lorg/apache/sshd/server/auth/pubkey/CachingPublicKeyAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v8}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 69
    iget-object v8, p0, Lorg/apache/sshd/server/auth/pubkey/CachingPublicKeyAuthenticator;->log:Lorg/slf4j/Logger;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object p3, v7, v5

    aput-object v1, v7, v4

    .line 70
    invoke-static {p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 69
    const-string v2, "authenticate({}@{}) cache result={} for {} key={}"

    invoke-interface {v8, v2, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_0
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 58
    :catch_0
    move-exception v8

    .line 59
    .local v8, "e":Ljava/lang/Error;
    iget-object v9, p0, Lorg/apache/sshd/server/auth/pubkey/CachingPublicKeyAuthenticator;->log:Lorg/slf4j/Logger;

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v6

    aput-object p3, v10, v5

    .line 60
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    .line 61
    invoke-static {p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v3

    invoke-static {p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v2

    invoke-virtual {v8}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v7

    .line 59
    const-string v2, "authenticate({}@{}) failed ({}) to consult delegate for {} key={}: {}"

    invoke-interface {v9, v2, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v2, p0, Lorg/apache/sshd/server/auth/pubkey/CachingPublicKeyAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Lorg/apache/sshd/server/auth/pubkey/CachingPublicKeyAuthenticator;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticate("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") delegate failure details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    :cond_1
    new-instance v2, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v2, v8}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 74
    .end local v8    # "e":Ljava/lang/Error;
    :cond_2
    iget-object v8, p0, Lorg/apache/sshd/server/auth/pubkey/CachingPublicKeyAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v8}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 75
    iget-object v8, p0, Lorg/apache/sshd/server/auth/pubkey/CachingPublicKeyAuthenticator;->log:Lorg/slf4j/Logger;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object p3, v7, v5

    aput-object v1, v7, v4

    .line 76
    invoke-static {p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 75
    const-string v2, "authenticate({}@{}) use cached result={} for {} key={}"

    invoke-interface {v8, v2, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method protected resolveCachedResults(Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/server/session/ServerSession;)Ljava/util/Map;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PublicKey;
    .param p3, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/PublicKey;",
            "Lorg/apache/sshd/server/session/ServerSession;",
            ")",
            "Ljava/util/Map<",
            "Ljava/security/PublicKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 84
    sget-object v0, Lorg/apache/sshd/server/auth/pubkey/CachingPublicKeyAuthenticator;->CACHE_ATTRIBUTE:Lorg/apache/sshd/common/AttributeRepository$AttributeKey;

    new-instance v1, Lorg/apache/sshd/server/auth/pubkey/CachingPublicKeyAuthenticator$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/sshd/server/auth/pubkey/CachingPublicKeyAuthenticator$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p3, v0, v1}, Lorg/apache/sshd/server/session/ServerSession;->computeAttributeIfAbsent(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method
