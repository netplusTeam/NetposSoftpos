.class public Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;
.super Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;
.source "FileWatcherKeyPairResourceLoader.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;


# instance fields
.field private delegateLoader:Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;

.field protected final keysHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Collection<",
            "Ljava/security/KeyPair;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;)V
    .locals 1
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "delegateLoader"    # Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/sshd/common/util/io/IoUtils;->getLinkOptions(Z)[Ljava/nio/file/LinkOption;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;-><init>(Ljava/nio/file/Path;Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;[Ljava/nio/file/LinkOption;)V

    .line 54
    return-void
.end method

.method public varargs constructor <init>(Ljava/nio/file/Path;Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;[Ljava/nio/file/LinkOption;)V
    .locals 2
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "delegateLoader"    # Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;

    .line 58
    invoke-direct {p0, p1, p3}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;->keysHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    const-string v0, "No delegate loader provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;->delegateLoader:Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;

    .line 60
    return-void
.end method


# virtual methods
.method public getKeyPairResourceLoader()Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;->delegateLoader:Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;

    return-object v0
.end method

.method public loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;)Ljava/util/Collection;
    .locals 7
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
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

    .line 76
    .local p4, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;->keysHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 77
    .local v0, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/KeyPair;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;->checkReloadRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;->keysHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    iget-object v1, p0, Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;->keysHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    return-object v1

    .line 84
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 85
    .local v1, "path":Ljava/nio/file/Path;
    new-instance v2, Lorg/apache/sshd/common/util/io/resource/PathResource;

    invoke-direct {v2, v1}, Lorg/apache/sshd/common/util/io/resource/PathResource;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {p0, p1, v2, p3, p4}, Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;->reloadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v2

    .line 87
    .local v2, "numKeys":I
    iget-object v3, p0, Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    iget-object v3, p0, Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    .line 88
    const-string v5, "loadKeyPairs({})[{}] reloaded {} keys from {}"

    invoke-interface {v3, v5, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_2
    if-lez v2, :cond_3

    .line 93
    iget-object v3, p0, Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;->keysHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;->updateReloadAttributes()V

    .line 98
    .end local v1    # "path":Ljava/nio/file/Path;
    .end local v2    # "numKeys":I
    :cond_3
    return-object v0
.end method

.method protected reloadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;)Ljava/util/Collection;
    .locals 3
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
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

    .line 105
    .local p4, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 106
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;->getKeyPairResourceLoader()Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/sshd/common/NamedResource;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No resource loader for %s"

    invoke-static {v0, v2, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;

    .line 107
    .local v0, "loader":Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;->loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public setKeyPairResourceLoader(Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;)V
    .locals 1
    .param p1, "loader"    # Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;

    .line 67
    const-string v0, "No delegate loader provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/FileWatcherKeyPairResourceLoader;->delegateLoader:Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;

    .line 68
    return-void
.end method
