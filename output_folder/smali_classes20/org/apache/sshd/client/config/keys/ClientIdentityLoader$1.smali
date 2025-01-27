.class final Lorg/apache/sshd/client/config/keys/ClientIdentityLoader$1;
.super Ljava/lang/Object;
.source "ClientIdentityLoader.java"

# interfaces
.implements Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toPath(Lorg/apache/sshd/common/NamedResource;)Ljava/nio/file/Path;
    .locals 2
    .param p1, "location"    # Lorg/apache/sshd/common/NamedResource;

    .line 77
    const-string v0, "No location provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    invoke-interface {p1}, Lorg/apache/sshd/common/NamedResource;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No location value for %s"

    invoke-static {v0, v1, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 80
    .local v0, "path":Ljava/nio/file/Path;
    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v0

    .line 82
    return-object v0
.end method


# virtual methods
.method public isValidLocation(Lorg/apache/sshd/common/NamedResource;)Z
    .locals 2
    .param p1, "location"    # Lorg/apache/sshd/common/NamedResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader$1;->toPath(Lorg/apache/sshd/common/NamedResource;)Ljava/nio/file/Path;

    move-result-object v0

    .line 57
    .local v0, "path":Ljava/nio/file/Path;
    sget-object v1, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_LINK_OPTIONS:[Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    return v1
.end method

.method public loadClientIdentities(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Ljava/lang/Iterable;
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "location"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "provider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
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

    .line 64
    invoke-direct {p0, p2}, Lorg/apache/sshd/client/config/keys/ClientIdentityLoader$1;->toPath(Lorg/apache/sshd/common/NamedResource;)Ljava/nio/file/Path;

    move-result-object v0

    .line 65
    .local v0, "path":Ljava/nio/file/Path;
    new-instance v1, Lorg/apache/sshd/common/util/io/resource/PathResource;

    invoke-direct {v1, v0}, Lorg/apache/sshd/common/util/io/resource/PathResource;-><init>(Ljava/nio/file/Path;)V

    .line 66
    .local v1, "resource":Lorg/apache/sshd/common/util/io/resource/PathResource;
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/resource/PathResource;->openInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 67
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p1, v1, v2, p3}, Lorg/apache/sshd/common/util/security/SecurityUtils;->loadKeyPairIdentities(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/io/InputStream;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Ljava/lang/Iterable;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 67
    :cond_0
    return-object v3

    .line 66
    :catchall_0
    move-exception v3

    .end local v0    # "path":Ljava/nio/file/Path;
    .end local v1    # "resource":Lorg/apache/sshd/common/util/io/resource/PathResource;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "location":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    .restart local v0    # "path":Ljava/nio/file/Path;
    .restart local v1    # "resource":Lorg/apache/sshd/common/util/io/resource/PathResource;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "location":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "provider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "DEFAULT"

    return-object v0
.end method
