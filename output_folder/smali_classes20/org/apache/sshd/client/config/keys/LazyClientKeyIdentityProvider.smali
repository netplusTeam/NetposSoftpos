.class public Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;
.super Ljava/lang/Object;
.source "LazyClientKeyIdentityProvider.java"

# interfaces
.implements Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
.implements Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;
.implements Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;


# instance fields
.field private final clientIdentityLoader:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

.field private final ignoreNonExisting:Z

.field private final locations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/NamedResource;",
            ">;"
        }
    .end annotation
.end field

.field private final passwordProvider:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;Ljava/util/Collection;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Z)V
    .locals 1
    .param p1, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p4, "ignoreNonExisting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/NamedResource;",
            ">;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Z)V"
        }
    .end annotation

    .line 52
    .local p2, "locations":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/NamedResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "No client identity loader provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    iput-object v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;->clientIdentityLoader:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    .line 54
    iput-object p2, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;->locations:Ljava/util/Collection;

    .line 55
    iput-object p3, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;->passwordProvider:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    .line 56
    iput-boolean p4, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;->ignoreNonExisting:Z

    .line 57
    return-void
.end method


# virtual methods
.method public getClientIdentityLoader()Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;->clientIdentityLoader:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    return-object v0
.end method

.method public getFilePasswordProvider()Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;->passwordProvider:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    return-object v0
.end method

.method public getLocations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/NamedResource;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;->locations:Ljava/util/Collection;

    return-object v0
.end method

.method public isIgnoreNonExisting()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;->ignoreNonExisting:Z

    return v0
.end method

.method synthetic lambda$loadKeys$0$org-apache-sshd-client-config-keys-LazyClientKeyIdentityProvider(Ljava/util/Collection;Lorg/apache/sshd/common/session/SessionContext;)Ljava/util/Iterator;
    .locals 1
    .param p1, "locs"    # Ljava/util/Collection;
    .param p2, "session"    # Lorg/apache/sshd/common/session/SessionContext;

    .line 86
    new-instance v0, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$1;-><init>(Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;Ljava/util/Collection;Lorg/apache/sshd/common/session/SessionContext;)V

    return-object v0
.end method

.method protected loadClientIdentities(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;)Ljava/lang/Iterable;
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "location"    # Lorg/apache/sshd/common/NamedResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
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

    .line 147
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;->getClientIdentityLoader()Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    move-result-object v0

    .line 148
    .local v0, "loader":Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;->isIgnoreNonExisting()Z

    move-result v1

    .line 150
    .local v1, "ignoreInvalid":Z
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p2}, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;->isValidLocation(Lorg/apache/sshd/common/NamedResource;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    if-eqz v1, :cond_0

    .line 152
    return-object v2

    .line 155
    :cond_0
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid identity location: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/apache/sshd/common/NamedResource;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "loader":Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .end local v1    # "ignoreInvalid":Z
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "location":Lorg/apache/sshd/common/NamedResource;
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .restart local v0    # "loader":Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .restart local v1    # "ignoreInvalid":Z
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "location":Lorg/apache/sshd/common/NamedResource;
    :cond_1
    nop

    .line 165
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;->getFilePasswordProvider()Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    move-result-object v2

    invoke-interface {v0, p1, p2, v2}, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;->loadClientIdentities(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Ljava/lang/Iterable;

    move-result-object v2

    return-object v2

    .line 157
    :catch_0
    move-exception v3

    .line 158
    .local v3, "e":Ljava/io/IOException;
    if-eqz v1, :cond_2

    .line 159
    return-object v2

    .line 162
    :cond_2
    throw v3
.end method

.method public loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;->getLocations()Ljava/util/Collection;

    move-result-object v0

    .line 82
    .local v0, "locs":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/NamedResource;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 86
    :cond_0
    new-instance v1, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/client/config/keys/LazyClientKeyIdentityProvider;Ljava/util/Collection;Lorg/apache/sshd/common/session/SessionContext;)V

    return-object v1
.end method
