.class public Lorg/apache/sshd/common/keyprovider/FileKeyPairProvider;
.super Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;
.source "FileKeyPairProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private files:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 51
    const-string v0, "No path provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/keyprovider/FileKeyPairProvider;-><init>(Ljava/util/Collection;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "files":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/nio/file/Path;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/sshd/common/keyprovider/FileKeyPairProvider;->files:Ljava/util/Collection;

    .line 60
    return-void
.end method

.method public varargs constructor <init>([Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "files"    # [Ljava/nio/file/Path;

    .line 55
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/keyprovider/FileKeyPairProvider;-><init>(Ljava/util/Collection;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected bridge synthetic doLoadKeys(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 43
    check-cast p2, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/keyprovider/FileKeyPairProvider;->doLoadKeys(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method protected doLoadKeys(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resource"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/nio/file/Path;",
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

    .line 86
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    :goto_0
    invoke-super {p0, p1, v0}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->doLoadKeys(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getIoResource(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/Object;)Lorg/apache/sshd/common/util/io/resource/IoResource;
    .locals 0

    .line 43
    check-cast p2, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/keyprovider/FileKeyPairProvider;->getIoResource(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;)Lorg/apache/sshd/common/util/io/resource/IoResource;

    move-result-object p1

    return-object p1
.end method

.method protected getIoResource(Lorg/apache/sshd/common/session/SessionContext;Ljava/nio/file/Path;)Lorg/apache/sshd/common/util/io/resource/IoResource;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resource"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/nio/file/Path;",
            ")",
            "Lorg/apache/sshd/common/util/io/resource/IoResource<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 80
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/sshd/common/util/io/resource/PathResource;

    invoke-direct {v0, p2}, Lorg/apache/sshd/common/util/io/resource/PathResource;-><init>(Ljava/nio/file/Path;)V

    :goto_0
    return-object v0
.end method

.method public getPaths()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/FileKeyPairProvider;->files:Ljava/util/Collection;

    return-object v0
.end method

.method public loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
    .locals 1
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

    .line 75
    invoke-virtual {p0}, Lorg/apache/sshd/common/keyprovider/FileKeyPairProvider;->getPaths()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/keyprovider/FileKeyPairProvider;->loadKeys(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Collection;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public setPaths(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p1, "paths":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/nio/file/Path;>;"
    new-instance v0, Lorg/apache/sshd/common/keyprovider/FileKeyPairProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/keyprovider/FileKeyPairProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->map(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "resolved":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/file/Path;>;"
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/keyprovider/FileKeyPairProvider;->resetCacheMap(Ljava/util/Collection;)V

    .line 70
    iput-object v0, p0, Lorg/apache/sshd/common/keyprovider/FileKeyPairProvider;->files:Ljava/util/Collection;

    .line 71
    return-void
.end method
