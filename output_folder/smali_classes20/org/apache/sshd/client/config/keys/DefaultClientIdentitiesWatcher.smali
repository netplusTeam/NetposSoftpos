.class public Lorg/apache/sshd/client/config/keys/DefaultClientIdentitiesWatcher;
.super Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;
.source "DefaultClientIdentitiesWatcher.java"


# direct methods
.method public constructor <init>(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)V
    .locals 1
    .param p1, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .param p2, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sshd/client/config/keys/DefaultClientIdentitiesWatcher;-><init>(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Z)V
    .locals 1
    .param p1, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .param p2, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p3, "strict"    # Z

    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/sshd/client/config/keys/DefaultClientIdentitiesWatcher;-><init>(ZLorg/apache/sshd/client/config/keys/ClientIdentityLoader;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;)V
    .locals 1
    .param p1, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;
    .param p2, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;

    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sshd/client/config/keys/DefaultClientIdentitiesWatcher;-><init>(Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V
    .locals 1
    .param p1, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;
    .param p2, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;
    .param p3, "strict"    # Z

    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/sshd/client/config/keys/DefaultClientIdentitiesWatcher;-><init>(ZLorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(ZLorg/apache/sshd/client/config/keys/ClientIdentityLoader;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Z)V
    .locals 2
    .param p1, "supportedOnly"    # Z
    .param p2, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .param p3, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p4, "strict"    # Z

    .line 44
    nop

    .line 45
    const-string v0, "No client identity loader"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    invoke-static {v0}, Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;->loaderHolderOf(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;)Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;

    move-result-object v0

    .line 46
    const-string v1, "No password provider"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;->providerHolderOf(Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;

    move-result-object v1

    .line 44
    invoke-direct {p0, p1, v0, v1, p4}, Lorg/apache/sshd/client/config/keys/DefaultClientIdentitiesWatcher;-><init>(ZLorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V

    .line 48
    return-void
.end method

.method public constructor <init>(ZLorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V
    .locals 6
    .param p1, "supportedOnly"    # Z
    .param p2, "loader"    # Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;
    .param p3, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;
    .param p4, "strict"    # Z

    .line 60
    invoke-static {}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getDefaultKeysFolderPath()Ljava/nio/file/Path;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/sshd/client/config/keys/BuiltinClientIdentitiesWatcher;-><init>(Ljava/nio/file/Path;ZLorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V

    .line 61
    return-void
.end method

.method public static getDefaultBuiltinIdentitiesPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getDefaultKeysFolderPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/client/config/keys/DefaultClientIdentitiesWatcher;->getDefaultBuiltinIdentitiesPaths(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
