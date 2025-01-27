.class public interface abstract Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
.super Ljava/lang/Object;
.source "ClientIdentityLoader.java"


# static fields
.field public static final DEFAULT:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader$1;

    invoke-direct {v0}, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;->DEFAULT:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    return-void
.end method

.method public static asKeyIdentityProvider(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;Ljava/util/Collection;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Z)Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .locals 1
    .param p0, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .param p2, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p3, "ignoreNonExisting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/NamedResource;",
            ">;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Z)",
            "Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;"
        }
    .end annotation

    .line 126
    .local p1, "locations":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/NamedResource;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->EMPTY_KEYS_PROVIDER:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;-><init>(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;Ljava/util/Collection;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Z)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract isValidLocation(Lorg/apache/sshd/common/NamedResource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract loadClientIdentities(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            ")",
            "Ljava/lang/Iterable<",
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
.end method
