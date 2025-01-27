.class public interface abstract Lorg/apache/sshd/client/ClientAuthenticationManager;
.super Ljava/lang/Object;
.source "ClientAuthenticationManager.java"

# interfaces
.implements Lorg/apache/sshd/common/auth/UserAuthFactoriesManager;
.implements Lorg/apache/sshd/common/keyprovider/KeyIdentityProviderHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/auth/UserAuthFactoriesManager<",
        "Lorg/apache/sshd/client/session/ClientSession;",
        "Lorg/apache/sshd/client/auth/UserAuth;",
        "Lorg/apache/sshd/client/auth/UserAuthFactory;",
        ">;",
        "Lorg/apache/sshd/common/keyprovider/KeyIdentityProviderHolder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_PASSWORD_PROMPTS:I = 0x3

.field public static final PASSWORD_PROMPTS:Ljava/lang/String; = "password-prompts"

.field public static final PREFERRED_AUTHS:Ljava/lang/String; = "preferred-auths"


# virtual methods
.method public abstract addPasswordIdentity(Ljava/lang/String;)V
.end method

.method public abstract addPublicKeyIdentity(Ljava/security/KeyPair;)V
.end method

.method public abstract getPasswordIdentityProvider()Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;
.end method

.method public abstract getRegisteredIdentities()Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;
.end method

.method public abstract getServerKeyVerifier()Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;
.end method

.method public abstract getUserInteraction()Lorg/apache/sshd/client/auth/keyboard/UserInteraction;
.end method

.method public abstract removePasswordIdentity(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removePublicKeyIdentity(Ljava/security/KeyPair;)Ljava/security/KeyPair;
.end method

.method public abstract setPasswordIdentityProvider(Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;)V
.end method

.method public abstract setServerKeyVerifier(Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;)V
.end method

.method public setUserAuthFactoriesNames(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    nop

    .line 136
    invoke-static {p1}, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->parseFactoriesList(Ljava/util/Collection;)Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories$ParseResult;

    move-result-object v0

    .line 137
    .local v0, "result":Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories$ParseResult;
    nop

    .line 139
    invoke-virtual {v0}, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories$ParseResult;->getParsedFactories()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 138
    const-string v3, "No supported user authentication factories: %s"

    invoke-static {v1, v3, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 140
    .local v1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/client/auth/UserAuthFactory;>;"
    invoke-virtual {v0}, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories$ParseResult;->getUnsupportedFactories()Ljava/util/List;

    move-result-object v2

    .line 141
    .local v2, "unsupported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    nop

    .line 142
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    .line 141
    const-string v4, "Unsupported user authentication factories found: %s"

    invoke-static {v3, v4, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 143
    invoke-interface {p0, v1}, Lorg/apache/sshd/client/ClientAuthenticationManager;->setUserAuthFactories(Ljava/util/List;)V

    .line 144
    return-void
.end method

.method public abstract setUserInteraction(Lorg/apache/sshd/client/auth/keyboard/UserInteraction;)V
.end method
