.class public Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;
.super Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;
.source "DefaultAuthorizedKeysAuthenticator.java"

# interfaces
.implements Lorg/apache/sshd/common/auth/UsernameHolder;


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;


# instance fields
.field private final strict:Z

.field private final user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;-><init>(Z)V

    sput-object v0, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;->INSTANCE:Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/nio/file/Path;
    .param p3, "strict"    # Z
    .param p4, "options"    # [Ljava/nio/file/LinkOption;

    .line 76
    invoke-direct {p0, p2, p4}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    .line 77
    const-string v0, "No username provided"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;->user:Ljava/lang/String;

    .line 78
    iput-boolean p3, p0, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;->strict:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "strict"    # Z

    .line 68
    invoke-static {}, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;->getDefaultAuthorizedKeysFile()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;-><init>(Ljava/lang/String;Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V

    .line 69
    return-void
.end method

.method public varargs constructor <init>(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "strict"    # Z
    .param p3, "options"    # [Ljava/nio/file/LinkOption;

    .line 72
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;-><init>(Ljava/lang/String;Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "strict"    # Z

    .line 64
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;-><init>(Ljava/lang/String;Z)V

    .line 65
    return-void
.end method


# virtual methods
.method public final getUsername()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;->user:Ljava/lang/String;

    return-object v0
.end method

.method public final isStrict()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;->strict:Z

    return v0
.end method

.method protected isValidUsername(Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)Z
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 92
    invoke-super {p0, p1, p2}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->isValidUsername(Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    return v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "expected":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected reloadAuthorizedKeys(Ljava/nio/file/Path;Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)Ljava/util/Collection;
    .locals 7
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/server/session/ServerSession;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;->log:Lorg/slf4j/Logger;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p2, v5, v4

    aput-object p3, v5, v2

    aput-object p1, v5, v1

    const-string v6, "reloadAuthorizedKeys({})[{}] check permissions of {}"

    invoke-interface {v0, v6, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_0
    new-array v0, v4, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->validateStrictKeyFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 110
    .local v0, "violation":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    if-eqz v0, :cond_1

    .line 111
    iget-object v5, p0, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v4

    aput-object p3, v6, v2

    aput-object p1, v6, v1

    .line 112
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v3

    .line 111
    const-string v1, "reloadAuthorizedKeys({})[{}] invalid file={} permissions: {}"

    invoke-interface {v5, v1, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0}, Lorg/apache/sshd/server/config/keys/DefaultAuthorizedKeysAuthenticator;->updateReloadAttributes()V

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 118
    .end local v0    # "violation":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;->reloadAuthorizedKeys(Ljava/nio/file/Path;Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected validateFilePath(Ljava/nio/file/Path;Ljava/util/Collection;Ljava/util/Collection;)Ljava/nio/file/Path;
    .locals 5
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Collection<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    .local p2, "perms":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/file/attribute/PosixFilePermission;>;"
    .local p3, "excluded":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/file/attribute/PosixFilePermission;>;"
    invoke-static {p2, p3}, Lorg/apache/sshd/common/util/io/IoUtils;->validateExcludedPermissions(Ljava/util/Collection;Ljava/util/Collection;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v0

    .line 130
    .local v0, "p":Ljava/nio/file/attribute/PosixFilePermission;
    if-nez v0, :cond_0

    .line 135
    return-object p1

    .line 131
    :cond_0
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/nio/file/FileSystemException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not allowed to have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v1, v3}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method
