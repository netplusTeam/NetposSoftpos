.class public Lorg/apache/sshd/common/file/util/MockPath;
.super Ljava/lang/Object;
.source "MockPath.java"

# interfaces
.implements Ljava/nio/file/Path;


# instance fields
.field private final fs:Ljava/nio/file/FileSystem;

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/sshd/common/file/util/MockPath;->path:Ljava/lang/String;

    .line 44
    new-instance v0, Lorg/apache/sshd/common/file/util/MockFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/sshd/common/file/util/MockFileSystem;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/sshd/common/file/util/MockPath;->fs:Ljava/nio/file/FileSystem;

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/util/MockPath;->compareTo(Ljava/nio/file/Path;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/nio/file/Path;)I
    .locals 2
    .param p1, "other"    # Ljava/nio/file/Path;

    .line 178
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/MockPath;->path:Ljava/lang/String;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/MockPath;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public endsWith(Ljava/nio/file/Path;)Z
    .locals 1
    .param p1, "other"    # Ljava/nio/file/Path;

    .line 103
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/util/MockPath;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getFileName()Ljava/nio/file/Path;
    .locals 0

    .line 64
    return-object p0
.end method

.method public getFileSystem()Ljava/nio/file/FileSystem;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/MockPath;->fs:Ljava/nio/file/FileSystem;

    return-object v0
.end method

.method public getName(I)Ljava/nio/file/Path;
    .locals 3
    .param p1, "index"    # I

    .line 79
    if-nez p1, :cond_0

    .line 80
    return-object p0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getName - bad index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNameCount()I
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getParent()Ljava/nio/file/Path;
    .locals 1

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoot()Ljava/nio/file/Path;
    .locals 0

    .line 59
    return-object p0
.end method

.method public isAbsolute()Z
    .locals 1

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 173
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public normalize()Ljava/nio/file/Path;
    .locals 0

    .line 113
    return-object p0
.end method

.method public varargs register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;
    .locals 2
    .param p1, "watcher"    # Ljava/nio/file/WatchService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchService;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;)",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    .local p2, "events":[Ljava/nio/file/WatchEvent$Kind;, "[Ljava/nio/file/WatchEvent$Kind<*>;"
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/nio/file/WatchEvent$Modifier;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sshd/common/file/util/MockPath;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

    move-result-object v0

    return-object v0
.end method

.method public varargs register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .locals 3
    .param p1, "watcher"    # Ljava/nio/file/WatchService;
    .param p3, "modifiers"    # [Ljava/nio/file/WatchEvent$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchService;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    .local p2, "events":[Ljava/nio/file/WatchEvent$Kind;, "[Ljava/nio/file/WatchEvent$Kind<*>;"
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/common/file/util/MockPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") N/A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 3
    .param p1, "other"    # Ljava/nio/file/Path;

    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "relativize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") N/A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolve(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 3
    .param p1, "other"    # Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolve("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") N/A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1
    .param p1, "other"    # Ljava/nio/file/Path;

    .line 118
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/util/MockPath;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 3
    .param p1, "other"    # Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveSibling("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") N/A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolveSibling(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1
    .param p1, "other"    # Ljava/nio/file/Path;

    .line 128
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/util/MockPath;->resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/MockPath;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/nio/file/Path;)Z
    .locals 1
    .param p1, "other"    # Ljava/nio/file/Path;

    .line 93
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/util/MockPath;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public subpath(II)Ljava/nio/file/Path;
    .locals 3
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subPath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") N/A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toAbsolutePath()Ljava/nio/file/Path;
    .locals 0

    .line 148
    return-object p0
.end method

.method public toFile()Ljava/io/File;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "toFile() N/A"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .locals 0
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/MockPath;->path:Ljava/lang/String;

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "toUri() N/A"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
