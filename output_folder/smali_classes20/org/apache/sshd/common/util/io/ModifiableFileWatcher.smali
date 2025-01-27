.class public Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "ModifiableFileWatcher.java"


# static fields
.field public static final STRICTLY_PROHIBITED_FILE_PERMISSION:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final file:Ljava/nio/file/Path;

.field private final lastExisted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lastModified:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lastSize:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final options:[Ljava/nio/file/LinkOption;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 59
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 58
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->STRICTLY_PROHIBITED_FILE_PERMISSION:Ljava/util/Set;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "file"    # Ljava/nio/file/Path;

    .line 71
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/sshd/common/util/io/IoUtils;->getLinkOptions(Z)[Ljava/nio/file/LinkOption;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    .line 72
    return-void
.end method

.method public varargs constructor <init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V
    .locals 3
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;

    .line 74
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->lastExisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->lastSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->lastModified:Ljava/util/concurrent/atomic/AtomicLong;

    .line 75
    const-string v0, "No path to watch"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    iput-object v0, p0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->file:Ljava/nio/file/Path;

    .line 77
    if-nez p2, :cond_0

    sget-object v0, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_LINK_OPTIONS:[Ljava/nio/file/LinkOption;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, [Ljava/nio/file/LinkOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/LinkOption;

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->options:[Ljava/nio/file/LinkOption;

    .line 78
    return-void
.end method

.method public static varargs validateStrictConfigFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 8
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-static {p0, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/io/IoUtils;->getPermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    move-result-object v1

    .line 232
    .local v1, "perms":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/file/attribute/PosixFilePermission;>;"
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    return-object v0

    .line 236
    :cond_1
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isUNIX()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 237
    sget-object v2, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->STRICTLY_PROHIBITED_FILE_PERMISSION:Ljava/util/Set;

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/io/IoUtils;->validateExcludedPermissions(Ljava/util/Collection;Ljava/util/Collection;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v2

    .line 238
    .local v2, "p":Ljava/nio/file/attribute/PosixFilePermission;
    if-eqz v2, :cond_2

    .line 239
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v3, "Permissions violation (%s)"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 243
    .end local v2    # "p":Ljava/nio/file/attribute/PosixFilePermission;
    :cond_2
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/io/IoUtils;->getFileOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "owner":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 248
    return-object v0

    .line 251
    :cond_3
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->getCurrentUser()Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, "current":Ljava/lang/String;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 253
    .local v6, "expected":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isUNIX()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 256
    const-string v7, "root"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_4
    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 260
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v3, "Owner violation (%s)"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 263
    :cond_5
    return-object v0

    .line 228
    .end local v1    # "perms":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/file/attribute/PosixFilePermission;>;"
    .end local v2    # "owner":Ljava/lang/String;
    .end local v5    # "current":Ljava/lang/String;
    .end local v6    # "expected":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    :goto_0
    return-object v0
.end method


# virtual methods
.method public checkReloadRequired()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->exists()Z

    move-result v0

    .line 115
    .local v0, "exists":Z
    iget-object v1, p0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->lastExisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 116
    return v2

    .line 119
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->resetReloadAttributes()V

    .line 122
    return v1

    .line 125
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->size()J

    move-result-wide v3

    .line 126
    .local v3, "size":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_2

    .line 128
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->resetReloadAttributes()V

    .line 129
    return v2

    .line 133
    :cond_2
    iget-object v5, p0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->lastSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    .line 134
    return v2

    .line 137
    :cond_3
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->lastModified()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    .line 138
    .local v5, "modifiedTime":Ljava/nio/file/attribute/FileTime;
    if-nez v5, :cond_4

    .line 140
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->resetReloadAttributes()V

    .line 141
    return v2

    .line 144
    :cond_4
    invoke-virtual {v5}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v6

    .line 145
    .local v6, "timestamp":J
    iget-object v8, p0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->lastModified:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-eqz v8, :cond_5

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    return v2
.end method

.method public final exists()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->options:[Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method

.method public final getPath()Ljava/nio/file/Path;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->file:Ljava/nio/file/Path;

    return-object v0
.end method

.method public final lastModified()Ljava/nio/file/attribute/FileTime;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    iget-object v2, p0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->options:[Ljava/nio/file/LinkOption;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    .line 102
    .local v0, "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    return-object v1

    .line 104
    .end local v0    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public resetReloadAttributes()V
    .locals 3

    .line 155
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->lastExisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->lastSize:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 157
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->lastModified:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 158
    return-void
.end method

.method public final size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    return-wide v0

    .line 95
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public toPathResource()Lorg/apache/sshd/common/util/io/resource/PathResource;
    .locals 1

    .line 186
    sget-object v0, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_OPEN_OPTIONS:[Ljava/nio/file/OpenOption;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->toPathResource([Ljava/nio/file/OpenOption;)Lorg/apache/sshd/common/util/io/resource/PathResource;

    move-result-object v0

    return-object v0
.end method

.method public varargs toPathResource([Ljava/nio/file/OpenOption;)Lorg/apache/sshd/common/util/io/resource/PathResource;
    .locals 2
    .param p1, "options"    # [Ljava/nio/file/OpenOption;

    .line 190
    new-instance v0, Lorg/apache/sshd/common/util/io/resource/PathResource;

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/sshd/common/util/io/resource/PathResource;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 195
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateReloadAttributes()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->size()J

    move-result-wide v0

    .line 172
    .local v0, "size":J
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->lastModified()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    .line 174
    .local v2, "modifiedTime":Ljava/nio/file/attribute/FileTime;
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    if-eqz v2, :cond_0

    .line 175
    iget-object v3, p0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->lastExisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 176
    iget-object v3, p0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->lastSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 177
    iget-object v3, p0, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->lastModified:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 178
    return-void

    .line 182
    .end local v0    # "size":J
    .end local v2    # "modifiedTime":Ljava/nio/file/attribute/FileTime;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/ModifiableFileWatcher;->resetReloadAttributes()V

    .line 183
    return-void
.end method
