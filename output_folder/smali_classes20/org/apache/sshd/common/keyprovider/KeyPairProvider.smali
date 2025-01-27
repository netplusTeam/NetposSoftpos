.class public interface abstract Lorg/apache/sshd/common/keyprovider/KeyPairProvider;
.super Ljava/lang/Object;
.source "KeyPairProvider.java"

# interfaces
.implements Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;


# static fields
.field public static final ECDSA_SHA2_NISTP256:Ljava/lang/String;

.field public static final ECDSA_SHA2_NISTP384:Ljava/lang/String;

.field public static final ECDSA_SHA2_NISTP521:Ljava/lang/String;

.field public static final EMPTY_KEYPAIR_PROVIDER:Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

.field public static final SSH_DSS:Ljava/lang/String; = "ssh-dss"

.field public static final SSH_ED25519:Ljava/lang/String; = "ssh-ed25519"

.field public static final SSH_RSA:Ljava/lang/String; = "ssh-rsa"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    sget-object v0, Lorg/apache/sshd/common/cipher/ECCurves;->nistp256:Lorg/apache/sshd/common/cipher/ECCurves;

    invoke-virtual {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->ECDSA_SHA2_NISTP256:Ljava/lang/String;

    .line 68
    sget-object v0, Lorg/apache/sshd/common/cipher/ECCurves;->nistp384:Lorg/apache/sshd/common/cipher/ECCurves;

    invoke-virtual {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->ECDSA_SHA2_NISTP384:Ljava/lang/String;

    .line 73
    sget-object v0, Lorg/apache/sshd/common/cipher/ECCurves;->nistp521:Lorg/apache/sshd/common/cipher/ECCurves;

    invoke-virtual {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->ECDSA_SHA2_NISTP521:Ljava/lang/String;

    .line 78
    new-instance v0, Lorg/apache/sshd/common/keyprovider/KeyPairProvider$1;

    invoke-direct {v0}, Lorg/apache/sshd/common/keyprovider/KeyPairProvider$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->EMPTY_KEYPAIR_PROVIDER:Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    return-void
.end method

.method public static synthetic lambda$loadKey$0(Ljava/lang/String;Ljava/security/KeyPair;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/KeyPair;

    .line 117
    invoke-static {p1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static wrap(Ljava/lang/Iterable;)Lorg/apache/sshd/common/keyprovider/KeyPairProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/security/KeyPair;",
            ">;)",
            "Lorg/apache/sshd/common/keyprovider/KeyPairProvider;"
        }
    .end annotation

    .line 157
    .local p0, "pairs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->EMPTY_KEYPAIR_PROVIDER:Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/sshd/common/keyprovider/KeyPairProvider$2;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/keyprovider/KeyPairProvider$2;-><init>(Ljava/lang/Iterable;)V

    :goto_0
    return-object v0
.end method

.method public static varargs wrap([Ljava/security/KeyPair;)Lorg/apache/sshd/common/keyprovider/KeyPairProvider;
    .locals 1
    .param p0, "pairs"    # [Ljava/security/KeyPair;

    .line 146
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->EMPTY_KEYPAIR_PROVIDER:Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->wrap(Ljava/lang/Iterable;)Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getKeyTypes(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 131
    invoke-interface {p0, p1}, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->stream(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/keyprovider/KeyPairProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/sshd/common/keyprovider/KeyPairProvider$$ExternalSyntheticLambda0;-><init>()V

    .line 132
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/keyprovider/KeyPairProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/sshd/common/keyprovider/KeyPairProvider$$ExternalSyntheticLambda1;-><init>()V

    .line 133
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 134
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 131
    return-object v0
.end method

.method public loadKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 115
    const-string v0, "No key type to load"

    invoke-static {p2, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    invoke-interface {p0, p1}, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->stream(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/keyprovider/KeyPairProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lorg/apache/sshd/common/keyprovider/KeyPairProvider$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPair;

    .line 116
    return-object v0
.end method
