.class public Lorg/apache/sshd/client/keyverifier/DefaultKnownHostsServerKeyVerifier;
.super Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;
.source "DefaultKnownHostsServerKeyVerifier.java"


# instance fields
.field private final strict:Z


# direct methods
.method public constructor <init>(Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;)V
    .locals 1
    .param p1, "delegate"    # Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;

    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/client/keyverifier/DefaultKnownHostsServerKeyVerifier;-><init>(Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;Z)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;Z)V
    .locals 2
    .param p1, "delegate"    # Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;
    .param p2, "strict"    # Z

    .line 51
    invoke-static {}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->getDefaultKnownHostsFile()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/apache/sshd/common/util/io/IoUtils;->getLinkOptions(Z)[Ljava/nio/file/LinkOption;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/sshd/client/keyverifier/DefaultKnownHostsServerKeyVerifier;-><init>(Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;ZLjava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;ZLjava/io/File;)V
    .locals 2
    .param p1, "delegate"    # Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;
    .param p2, "strict"    # Z
    .param p3, "file"    # Ljava/io/File;

    .line 55
    const-string v0, "No file provided"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/apache/sshd/common/util/io/IoUtils;->getLinkOptions(Z)[Ljava/nio/file/LinkOption;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/sshd/client/keyverifier/DefaultKnownHostsServerKeyVerifier;-><init>(Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;ZLjava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    .line 56
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;ZLjava/nio/file/Path;[Ljava/nio/file/LinkOption;)V
    .locals 0
    .param p1, "delegate"    # Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;
    .param p2, "strict"    # Z
    .param p3, "file"    # Ljava/nio/file/Path;
    .param p4, "options"    # [Ljava/nio/file/LinkOption;

    .line 59
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;-><init>(Lorg/apache/sshd/client/keyverifier/ServerKeyVerifier;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    .line 60
    iput-boolean p2, p0, Lorg/apache/sshd/client/keyverifier/DefaultKnownHostsServerKeyVerifier;->strict:Z

    .line 61
    return-void
.end method


# virtual methods
.method public final isStrict()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lorg/apache/sshd/client/keyverifier/DefaultKnownHostsServerKeyVerifier;->strict:Z

    return v0
.end method

.method protected reloadKnownHosts(Lorg/apache/sshd/client/session/ClientSession;Ljava/nio/file/Path;)Ljava/util/List;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/session/ClientSession;",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;",
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
    invoke-virtual {p0}, Lorg/apache/sshd/client/keyverifier/DefaultKnownHostsServerKeyVerifier;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/DefaultKnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/DefaultKnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    const-string v1, "reloadKnownHosts({}) check permissions"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v0}, Lorg/apache/sshd/client/keyverifier/DefaultKnownHostsServerKeyVerifier;->validateStrictConfigFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 82
    .local v0, "violation":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    if-eqz v0, :cond_1

    .line 83
    iget-object v1, p0, Lorg/apache/sshd/client/keyverifier/DefaultKnownHostsServerKeyVerifier;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "reloadKnownHosts({}) invalid file permissions: {}"

    invoke-interface {v1, v3, p2, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lorg/apache/sshd/client/keyverifier/DefaultKnownHostsServerKeyVerifier;->updateReloadAttributes()V

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 89
    .end local v0    # "violation":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;->reloadKnownHosts(Lorg/apache/sshd/client/session/ClientSession;Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
