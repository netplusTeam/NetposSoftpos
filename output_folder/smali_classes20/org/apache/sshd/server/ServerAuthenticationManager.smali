.class public interface abstract Lorg/apache/sshd/server/ServerAuthenticationManager;
.super Ljava/lang/Object;
.source "ServerAuthenticationManager.java"

# interfaces
.implements Lorg/apache/sshd/common/auth/UserAuthFactoriesManager;
.implements Lorg/apache/sshd/common/keyprovider/KeyPairProviderHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/auth/UserAuthFactoriesManager<",
        "Lorg/apache/sshd/server/session/ServerSession;",
        "Lorg/apache/sshd/server/auth/UserAuth;",
        "Lorg/apache/sshd/server/auth/UserAuthFactory;",
        ">;",
        "Lorg/apache/sshd/common/keyprovider/KeyPairProviderHolder;"
    }
.end annotation


# static fields
.field public static final AUTH_METHODS:Ljava/lang/String; = "auth-methods"

.field public static final AUTO_WELCOME_BANNER_VALUE:Ljava/lang/String; = "#auto-welcome-banner"

.field public static final DEFAULT_BANNER_PHASE:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

.field public static final DEFAULT_MAX_AUTH_REQUESTS:I = 0x14

.field public static final DEFAULT_USER_AUTH_GSS_FACTORY:Lorg/apache/sshd/server/auth/gss/UserAuthGSSFactory;

.field public static final DEFAULT_USER_AUTH_KB_INTERACTIVE_FACTORY:Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractiveFactory;

.field public static final DEFAULT_USER_AUTH_PASSWORD_FACTORY:Lorg/apache/sshd/server/auth/password/UserAuthPasswordFactory;

.field public static final DEFAULT_USER_AUTH_PUBLIC_KEY_FACTORY:Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKeyFactory;

.field public static final DEFAULT_WELCOME_BANNER_LANGUAGE:Ljava/lang/String; = "en"

.field public static final MAX_AUTH_REQUESTS:Ljava/lang/String; = "max-auth-requests"

.field public static final WELCOME_BANNER:Ljava/lang/String; = "welcome-banner"

.field public static final WELCOME_BANNER_CHARSET:Ljava/lang/String; = "welcome-banner-charset"

.field public static final WELCOME_BANNER_LANGUAGE:Ljava/lang/String; = "welcome-banner-language"

.field public static final WELCOME_BANNER_PHASE:Ljava/lang/String; = "welcome-banner-phase"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    sget-object v0, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->IMMEDIATE:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    sput-object v0, Lorg/apache/sshd/server/ServerAuthenticationManager;->DEFAULT_BANNER_PHASE:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    .line 150
    sget-object v0, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKeyFactory;->INSTANCE:Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKeyFactory;

    sput-object v0, Lorg/apache/sshd/server/ServerAuthenticationManager;->DEFAULT_USER_AUTH_PUBLIC_KEY_FACTORY:Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKeyFactory;

    .line 152
    sget-object v0, Lorg/apache/sshd/server/auth/gss/UserAuthGSSFactory;->INSTANCE:Lorg/apache/sshd/server/auth/gss/UserAuthGSSFactory;

    sput-object v0, Lorg/apache/sshd/server/ServerAuthenticationManager;->DEFAULT_USER_AUTH_GSS_FACTORY:Lorg/apache/sshd/server/auth/gss/UserAuthGSSFactory;

    .line 154
    sget-object v0, Lorg/apache/sshd/server/auth/password/UserAuthPasswordFactory;->INSTANCE:Lorg/apache/sshd/server/auth/password/UserAuthPasswordFactory;

    sput-object v0, Lorg/apache/sshd/server/ServerAuthenticationManager;->DEFAULT_USER_AUTH_PASSWORD_FACTORY:Lorg/apache/sshd/server/auth/password/UserAuthPasswordFactory;

    .line 156
    sget-object v0, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractiveFactory;->INSTANCE:Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractiveFactory;

    sput-object v0, Lorg/apache/sshd/server/ServerAuthenticationManager;->DEFAULT_USER_AUTH_KB_INTERACTIVE_FACTORY:Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractiveFactory;

    return-void
.end method

.method public static resolveUserAuthFactories(Lorg/apache/sshd/server/ServerAuthenticationManager;)Ljava/util/List;
    .locals 1
    .param p0, "manager"    # Lorg/apache/sshd/server/ServerAuthenticationManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/server/ServerAuthenticationManager;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/auth/UserAuthFactory;",
            ">;"
        }
    .end annotation

    .line 240
    if-nez p0, :cond_0

    .line 241
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 243
    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/server/ServerAuthenticationManager;->getUserAuthFactories()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/server/ServerAuthenticationManager;->resolveUserAuthFactories(Lorg/apache/sshd/server/ServerAuthenticationManager;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static resolveUserAuthFactories(Lorg/apache/sshd/server/ServerAuthenticationManager;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0, "manager"    # Lorg/apache/sshd/server/ServerAuthenticationManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/server/ServerAuthenticationManager;",
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/auth/UserAuthFactory;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/auth/UserAuthFactory;",
            ">;"
        }
    .end annotation

    .line 259
    .local p1, "userFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/auth/UserAuthFactory;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    if-lez v0, :cond_0

    .line 260
    return-object p1

    .line 263
    :cond_0
    if-nez p0, :cond_1

    .line 264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 267
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/auth/UserAuthFactory;>;"
    invoke-interface {p0}, Lorg/apache/sshd/server/ServerAuthenticationManager;->getPasswordAuthenticator()Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 269
    sget-object v1, Lorg/apache/sshd/server/ServerAuthenticationManager;->DEFAULT_USER_AUTH_PASSWORD_FACTORY:Lorg/apache/sshd/server/auth/password/UserAuthPasswordFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v1, Lorg/apache/sshd/server/ServerAuthenticationManager;->DEFAULT_USER_AUTH_KB_INTERACTIVE_FACTORY:Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractiveFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    :cond_2
    invoke-interface {p0}, Lorg/apache/sshd/server/ServerAuthenticationManager;->getKeyboardInteractiveAuthenticator()Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 272
    sget-object v1, Lorg/apache/sshd/server/ServerAuthenticationManager;->DEFAULT_USER_AUTH_KB_INTERACTIVE_FACTORY:Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractiveFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_3
    :goto_0
    invoke-interface {p0}, Lorg/apache/sshd/server/ServerAuthenticationManager;->getPublickeyAuthenticator()Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 276
    sget-object v1, Lorg/apache/sshd/server/ServerAuthenticationManager;->DEFAULT_USER_AUTH_PUBLIC_KEY_FACTORY:Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKeyFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_4
    invoke-interface {p0}, Lorg/apache/sshd/server/ServerAuthenticationManager;->getGSSAuthenticator()Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 280
    sget-object v1, Lorg/apache/sshd/server/ServerAuthenticationManager;->DEFAULT_USER_AUTH_GSS_FACTORY:Lorg/apache/sshd/server/auth/gss/UserAuthGSSFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_5
    return-object v0
.end method


# virtual methods
.method public abstract getGSSAuthenticator()Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;
.end method

.method public abstract getHostBasedAuthenticator()Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;
.end method

.method public abstract getKeyboardInteractiveAuthenticator()Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;
.end method

.method public abstract getPasswordAuthenticator()Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;
.end method

.method public abstract getPublickeyAuthenticator()Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;
.end method

.method public abstract setGSSAuthenticator(Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;)V
.end method

.method public abstract setHostBasedAuthenticator(Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;)V
.end method

.method public abstract setKeyboardInteractiveAuthenticator(Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;)V
.end method

.method public abstract setPasswordAuthenticator(Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;)V
.end method

.method public abstract setPublickeyAuthenticator(Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;)V
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

    .line 160
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    nop

    .line 161
    invoke-static {p1}, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->parseFactoriesList(Ljava/util/Collection;)Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories$ParseResult;

    move-result-object v0

    .line 162
    .local v0, "result":Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories$ParseResult;
    nop

    .line 164
    invoke-virtual {v0}, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories$ParseResult;->getParsedFactories()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 163
    const-string v3, "No supported cipher factories: %s"

    invoke-static {v1, v3, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 165
    .local v1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/auth/UserAuthFactory;>;"
    invoke-virtual {v0}, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories$ParseResult;->getUnsupportedFactories()Ljava/util/List;

    move-result-object v2

    .line 166
    .local v2, "unsupported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    nop

    .line 167
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    .line 166
    const-string v4, "Unsupported cipher factories found: %s"

    invoke-static {v3, v4, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 168
    invoke-interface {p0, v1}, Lorg/apache/sshd/server/ServerAuthenticationManager;->setUserAuthFactories(Ljava/util/List;)V

    .line 169
    return-void
.end method
