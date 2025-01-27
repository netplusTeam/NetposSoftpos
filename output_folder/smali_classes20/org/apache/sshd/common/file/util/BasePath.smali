.class public abstract Lorg/apache/sshd/common/file/util/BasePath;
.super Ljava/lang/Object;
.source "BasePath.java"

# interfaces
.implements Ljava/nio/file/Path;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/apache/sshd/common/file/util/BasePath<",
        "TT;TFS;>;FS:",
        "Lorg/apache/sshd/common/file/util/BaseFileSystem<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/nio/file/Path;"
    }
.end annotation


# instance fields
.field private final fileSystem:Lorg/apache/sshd/common/file/util/BaseFileSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFS;"
        }
    .end annotation
.end field

.field private hashValue:I

.field protected final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final root:Ljava/lang/String;

.field private strValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/file/util/BaseFileSystem;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p2, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFS;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    .local p1, "fileSystem":Lorg/apache/sshd/common/file/util/BaseFileSystem;, "TFS;"
    .local p3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "No file system provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/file/util/BaseFileSystem;

    iput-object v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->fileSystem:Lorg/apache/sshd/common/file/util/BaseFileSystem;

    .line 52
    iput-object p2, p0, Lorg/apache/sshd/common/file/util/BasePath;->root:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    .line 54
    return-void
.end method


# virtual methods
.method protected asString()Ljava/lang/String;
    .locals 6

    .line 408
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/sshd/common/file/util/BasePath;->root:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->getFileSystem()Lorg/apache/sshd/common/file/util/BaseFileSystem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/sshd/common/file/util/BaseFileSystem;->getSeparator()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "separator":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 415
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_1

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 421
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected asT()Lorg/apache/sshd/common/file/util/BasePath;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    return-object p0
.end method

.method protected calculatedHashCode()I
    .locals 3

    .line 388
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->getFileSystem()Lorg/apache/sshd/common/file/util/BaseFileSystem;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/sshd/common/file/util/BasePath;->root:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected checkPath(Ljava/nio/file/Path;)Lorg/apache/sshd/common/file/util/BasePath;
    .locals 5
    .param p1, "paramPath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")TT;"
        }
    .end annotation

    .line 360
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    const-string v0, "Missing path argument"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 361
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 364
    move-object v0, p1

    check-cast v0, Lorg/apache/sshd/common/file/util/BasePath;

    .line 366
    .local v0, "t":Lorg/apache/sshd/common/file/util/BasePath;, "TT;"
    invoke-virtual {v0}, Lorg/apache/sshd/common/file/util/BasePath;->getFileSystem()Lorg/apache/sshd/common/file/util/BaseFileSystem;

    move-result-object v1

    .line 367
    .local v1, "fs":Ljava/nio/file/FileSystem;
    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sshd/common/file/util/BasePath;->fileSystem:Lorg/apache/sshd/common/file/util/BaseFileSystem;

    invoke-virtual {v3}, Lorg/apache/sshd/common/file/util/BaseFileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 370
    return-object v0

    .line 368
    :cond_0
    new-instance v2, Ljava/nio/file/ProviderMismatchException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatched providers for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/nio/file/ProviderMismatchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 362
    .end local v0    # "t":Lorg/apache/sshd/common/file/util/BasePath;, "TT;"
    .end local v1    # "fs":Ljava/nio/file/FileSystem;
    :cond_1
    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path is not of this class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/ProviderMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .line 351
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    if-nez p1, :cond_1

    .line 352
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 354
    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_1
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 42
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/util/BasePath;->compareTo(Ljava/nio/file/Path;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/nio/file/Path;)I
    .locals 6
    .param p1, "paramPath"    # Ljava/nio/file/Path;

    .line 333
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->asT()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    .line 334
    .local v0, "p1":Lorg/apache/sshd/common/file/util/BasePath;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/util/BasePath;->checkPath(Ljava/nio/file/Path;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v1

    .line 335
    .local v1, "p2":Lorg/apache/sshd/common/file/util/BasePath;, "TT;"
    iget-object v2, v0, Lorg/apache/sshd/common/file/util/BasePath;->root:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/sshd/common/file/util/BasePath;->root:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/apache/sshd/common/file/util/BasePath;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 336
    .local v2, "c":I
    if-eqz v2, :cond_0

    .line 337
    return v2

    .line 339
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v1, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 340
    iget-object v4, v0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 341
    .local v4, "n1":Ljava/lang/String;
    iget-object v5, v1, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 342
    .local v5, "n2":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Lorg/apache/sshd/common/file/util/BasePath;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 343
    if-eqz v2, :cond_1

    .line 344
    return v2

    .line 339
    .end local v4    # "n1":Ljava/lang/String;
    .end local v5    # "n2":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 347
    .end local v3    # "i":I
    :cond_2
    iget-object v3, v0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    return v3
.end method

.method protected create(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/sshd/common/file/util/BasePath;
    .locals 1
    .param p1, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    .local p2, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->unmodifiableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/file/util/BasePath;->create(Ljava/lang/String;Ljava/util/List;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    return-object v0
.end method

.method protected create(Ljava/lang/String;Ljava/util/List;)Lorg/apache/sshd/common/file/util/BasePath;
    .locals 1
    .param p1, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    .local p2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->fileSystem:Lorg/apache/sshd/common/file/util/BaseFileSystem;

    invoke-virtual {v0, p1, p2}, Lorg/apache/sshd/common/file/util/BaseFileSystem;->create(Ljava/lang/String;Ljava/util/List;)Ljava/nio/file/Path;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/file/util/BasePath;

    return-object v0
.end method

.method protected varargs create(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/sshd/common/file/util/BasePath;
    .locals 1
    .param p1, "root"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->unmodifiableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/file/util/BasePath;->create(Ljava/lang/String;Ljava/util/List;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    return-object v0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/String;

    .line 164
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->getFileSystem()Lorg/apache/sshd/common/file/util/BaseFileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/apache/sshd/common/file/util/BaseFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/util/BasePath;->endsWith(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public endsWith(Ljava/nio/file/Path;)Z
    .locals 4
    .param p1, "other"    # Ljava/nio/file/Path;

    .line 154
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->asT()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    .line 155
    .local v0, "p1":Lorg/apache/sshd/common/file/util/BasePath;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/util/BasePath;->checkPath(Ljava/nio/file/Path;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v1

    .line 156
    .local v1, "p2":Lorg/apache/sshd/common/file/util/BasePath;, "TT;"
    invoke-virtual {v1}, Lorg/apache/sshd/common/file/util/BasePath;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/file/util/BasePath;->compareTo(Ljava/nio/file/Path;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 159
    :cond_1
    iget-object v2, v0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    iget-object v3, v1, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lorg/apache/sshd/common/file/util/BasePath;->endsWith(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    return v2
.end method

.method protected endsWith(Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 149
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p2, "other":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 393
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    instance-of v0, p1, Ljava/nio/file/Path;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/nio/file/Path;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/util/BasePath;->compareTo(Ljava/nio/file/Path;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getFileName()Ljava/nio/file/Path;
    .locals 1

    .line 42
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->getFileName()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Lorg/apache/sshd/common/file/util/BasePath;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/file/util/BasePath;->create(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    return-object v1
.end method

.method public bridge synthetic getFileSystem()Ljava/nio/file/FileSystem;
    .locals 1

    .line 42
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->getFileSystem()Lorg/apache/sshd/common/file/util/BaseFileSystem;

    move-result-object v0

    return-object v0
.end method

.method public getFileSystem()Lorg/apache/sshd/common/file/util/BaseFileSystem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFS;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->fileSystem:Lorg/apache/sshd/common/file/util/BaseFileSystem;

    return-object v0
.end method

.method public bridge synthetic getName(I)Ljava/nio/file/Path;
    .locals 0

    .line 42
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/util/BasePath;->getName(I)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object p1

    return-object p1
.end method

.method public getName(I)Lorg/apache/sshd/common/file/util/BasePath;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->getNameCount()I

    move-result v0

    .line 115
    .local v0, "maxIndex":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 118
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v2, p1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/file/util/BasePath;->create(Ljava/lang/String;Ljava/util/List;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v1

    return-object v1

    .line 116
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid name index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - not in range [0-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNameCount()I
    .locals 1

    .line 109
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getParent()Ljava/nio/file/Path;
    .locals 1

    .line 42
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->getParent()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/sshd/common/file/util/BasePath;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->root:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->root:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/common/file/util/BasePath;->create(Ljava/lang/String;Ljava/util/List;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    return-object v0

    .line 102
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getRoot()Ljava/nio/file/Path;
    .locals 1

    .line 42
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->getRoot()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lorg/apache/sshd/common/file/util/BasePath;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->root:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/common/file/util/BasePath;->create(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 375
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    monitor-enter p0

    .line 376
    :try_start_0
    iget v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->hashValue:I

    if-nez v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->calculatedHashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->hashValue:I

    .line 378
    if-nez v0, :cond_0

    .line 379
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->hashValue:I

    .line 382
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    iget v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->hashValue:I

    return v0

    .line 382
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isAbsolute()Z
    .locals 1

    .line 80
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->root:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isNormal()Z
    .locals 6

    .line 168
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->getNameCount()I

    move-result v0

    .line 169
    .local v0, "count":I
    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 172
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->isAbsolute()Z

    move-result v1

    .line 173
    .local v1, "foundNonParentName":Z
    const/4 v2, 0x1

    .line 174
    .local v2, "normal":Z
    iget-object v3, p0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 175
    .local v4, "name":Ljava/lang/String;
    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    if-eqz v1, :cond_3

    .line 177
    const/4 v2, 0x0

    .line 178
    goto :goto_1

    .line 181
    :cond_1
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 182
    const/4 v2, 0x0

    .line 183
    goto :goto_1

    .line 185
    :cond_2
    const/4 v1, 0x1

    .line 187
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 188
    :cond_4
    :goto_1
    return v2

    .line 170
    .end local v1    # "foundNonParentName":Z
    .end local v2    # "normal":Z
    :cond_5
    :goto_2
    return v1
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

    .line 318
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    new-instance v0, Lorg/apache/sshd/common/file/util/BasePath$1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/file/util/BasePath$1;-><init>(Lorg/apache/sshd/common/file/util/BasePath;)V

    .line 328
    invoke-virtual {v0}, Lorg/apache/sshd/common/file/util/BasePath$1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 318
    return-object v0
.end method

.method public bridge synthetic normalize()Ljava/nio/file/Path;
    .locals 1

    .line 42
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->normalize()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    return-object v0
.end method

.method public normalize()Lorg/apache/sshd/common/file/util/BasePath;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->asT()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 198
    .local v0, "newNames":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 199
    .local v2, "name":Ljava/lang/String;
    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 201
    .local v4, "lastName":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    goto :goto_1

    .line 203
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_3

    .line 205
    invoke-interface {v0, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
    .end local v4    # "lastName":Ljava/lang/String;
    :cond_2
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 208
    invoke-interface {v0, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 207
    :cond_3
    :goto_1
    nop

    .line 210
    .end local v2    # "name":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 212
    :cond_4
    iget-object v1, p0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->asT()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lorg/apache/sshd/common/file/util/BasePath;->root:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/apache/sshd/common/file/util/BasePath;->create(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v1

    :goto_3
    return-object v1
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

    .line 308
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    .local p2, "events":[Ljava/nio/file/WatchEvent$Kind;, "[Ljava/nio/file/WatchEvent$Kind<*>;"
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/nio/file/WatchEvent$Modifier;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sshd/common/file/util/BasePath;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

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

    .line 313
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    .local p2, "events":[Ljava/nio/file/WatchEvent$Kind;, "[Ljava/nio/file/WatchEvent$Kind<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register to watch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->toAbsolutePath()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " N/A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    .line 42
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/util/BasePath;->relativize(Ljava/nio/file/Path;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object p1

    return-object p1
.end method

.method public relativize(Ljava/nio/file/Path;)Lorg/apache/sshd/common/file/util/BasePath;
    .locals 8
    .param p1, "other"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")TT;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->asT()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    .line 256
    .local v0, "p1":Lorg/apache/sshd/common/file/util/BasePath;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/util/BasePath;->checkPath(Ljava/nio/file/Path;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v1

    .line 257
    .local v1, "p2":Lorg/apache/sshd/common/file/util/BasePath;, "TT;"
    invoke-virtual {v0}, Lorg/apache/sshd/common/file/util/BasePath;->getRoot()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/sshd/common/file/util/BasePath;->getRoot()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 260
    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/file/util/BasePath;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 261
    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Lorg/apache/sshd/common/file/util/BasePath;->create(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v2

    return-object v2

    .line 263
    :cond_0
    iget-object v2, v0, Lorg/apache/sshd/common/file/util/BasePath;->root:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    return-object v1

    .line 267
    :cond_1
    const/4 v2, 0x0

    .line 268
    .local v2, "sharedSubsequenceLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, v0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, v1, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 269
    iget-object v6, v0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 270
    add-int/lit8 v2, v2, 0x1

    .line 268
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 275
    .end local v5    # "i":I
    :cond_2
    iget-object v5, v0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 276
    .local v3, "extraNamesInThis":I
    iget-object v5, v1, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v2, :cond_3

    .line 277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-object v5, v1, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    .line 278
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    :goto_1
    nop

    .line 279
    .local v5, "extraNamesInOther":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v3

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    .local v6, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, ".."

    invoke-static {v3, v7}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 284
    invoke-virtual {p0, v4, v6}, Lorg/apache/sshd/common/file/util/BasePath;->create(Ljava/lang/String;Ljava/util/List;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v4

    return-object v4

    .line 258
    .end local v2    # "sharedSubsequenceLength":I
    .end local v3    # "extraNamesInThis":I
    .end local v5    # "extraNamesInOther":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Paths have different roots: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic resolve(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    .line 42
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/util/BasePath;->resolve(Ljava/lang/String;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    .line 42
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/util/BasePath;->resolve(Ljava/nio/file/Path;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Ljava/lang/String;)Lorg/apache/sshd/common/file/util/BasePath;
    .locals 2
    .param p1, "other"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 238
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->getFileSystem()Lorg/apache/sshd/common/file/util/BaseFileSystem;

    move-result-object v0

    sget-object v1, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/apache/sshd/common/file/util/BaseFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/util/BasePath;->resolve(Ljava/nio/file/Path;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/nio/file/Path;)Lorg/apache/sshd/common/file/util/BasePath;
    .locals 7
    .param p1, "other"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")TT;"
        }
    .end annotation

    .line 217
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->asT()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    .line 218
    .local v0, "p1":Lorg/apache/sshd/common/file/util/BasePath;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/util/BasePath;->checkPath(Ljava/nio/file/Path;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v1

    .line 219
    .local v1, "p2":Lorg/apache/sshd/common/file/util/BasePath;, "TT;"
    invoke-virtual {v1}, Lorg/apache/sshd/common/file/util/BasePath;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    return-object v1

    .line 222
    :cond_0
    iget-object v2, v1, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    return-object v0

    .line 225
    :cond_1
    iget-object v2, v0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v1, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 226
    .local v2, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 227
    .local v3, "index":I
    iget-object v4, v0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 228
    .local v5, "p":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index":I
    .local v6, "index":I
    aput-object v5, v2, v3

    .line 229
    .end local v5    # "p":Ljava/lang/String;
    move v3, v6

    goto :goto_0

    .line 230
    .end local v6    # "index":I
    .restart local v3    # "index":I
    :cond_2
    iget-object v4, v1, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 231
    .restart local v5    # "p":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index":I
    .restart local v6    # "index":I
    aput-object v5, v2, v3

    .line 232
    .end local v5    # "p":Ljava/lang/String;
    move v3, v6

    goto :goto_1

    .line 233
    .end local v6    # "index":I
    .restart local v3    # "index":I
    :cond_3
    iget-object v4, v0, Lorg/apache/sshd/common/file/util/BasePath;->root:Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Lorg/apache/sshd/common/file/util/BasePath;->create(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v4

    return-object v4
.end method

.method public resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 2
    .param p1, "other"    # Ljava/lang/String;

    .line 250
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->getFileSystem()Lorg/apache/sshd/common/file/util/BaseFileSystem;

    move-result-object v0

    sget-object v1, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/apache/sshd/common/file/util/BaseFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/util/BasePath;->resolveSibling(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public resolveSibling(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 2
    .param p1, "other"    # Ljava/nio/file/Path;

    .line 243
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    const-string v0, "Missing sibling path argument"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->getParent()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    .line 245
    .local v0, "parent":Lorg/apache/sshd/common/file/util/BasePath;, "TT;"
    if-nez v0, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/file/util/BasePath;->resolve(Ljava/nio/file/Path;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/String;

    .line 145
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->getFileSystem()Lorg/apache/sshd/common/file/util/BaseFileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/apache/sshd/common/file/util/BaseFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/file/util/BasePath;->startsWith(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/nio/file/Path;)Z
    .locals 4
    .param p1, "other"    # Ljava/nio/file/Path;

    .line 136
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->asT()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    .line 137
    .local v0, "p1":Lorg/apache/sshd/common/file/util/BasePath;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/util/BasePath;->checkPath(Ljava/nio/file/Path;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v1

    .line 138
    .local v1, "p2":Lorg/apache/sshd/common/file/util/BasePath;, "TT;"
    invoke-virtual {v0}, Lorg/apache/sshd/common/file/util/BasePath;->getFileSystem()Lorg/apache/sshd/common/file/util/BaseFileSystem;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/sshd/common/file/util/BasePath;->getFileSystem()Lorg/apache/sshd/common/file/util/BaseFileSystem;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/apache/sshd/common/file/util/BasePath;->root:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/sshd/common/file/util/BasePath;->root:Ljava/lang/String;

    .line 139
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    iget-object v3, v1, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    .line 140
    invoke-virtual {p0, v2, v3}, Lorg/apache/sshd/common/file/util/BasePath;->startsWith(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 138
    :goto_0
    return v2
.end method

.method protected startsWith(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p2, "other":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public bridge synthetic subpath(II)Ljava/nio/file/Path;
    .locals 0

    .line 42
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/file/util/BasePath;->subpath(II)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object p1

    return-object p1
.end method

.method public subpath(II)Lorg/apache/sshd/common/file/util/BasePath;
    .locals 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->getNameCount()I

    move-result v0

    .line 124
    .local v0, "maxIndex":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    if-ge p1, p2, :cond_0

    .line 127
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/sshd/common/file/util/BasePath;->names:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/file/util/BasePath;->create(Ljava/lang/String;Ljava/util/List;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v1

    return-object v1

    .line 125
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subpath("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") bad index range - allowed [0-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic toAbsolutePath()Ljava/nio/file/Path;
    .locals 1

    .line 42
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->toAbsolutePath()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    return-object v0
.end method

.method public toAbsolutePath()Lorg/apache/sshd/common/file/util/BasePath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 289
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->asT()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    return-object v0

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->fileSystem:Lorg/apache/sshd/common/file/util/BaseFileSystem;

    invoke-virtual {v0}, Lorg/apache/sshd/common/file/util/BaseFileSystem;->getDefaultDir()Ljava/nio/file/Path;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/file/util/BasePath;

    invoke-virtual {v0, p0}, Lorg/apache/sshd/common/file/util/BasePath;->resolve(Ljava/nio/file/Path;)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    return-object v0
.end method

.method public toFile()Ljava/io/File;
    .locals 3

    .line 303
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->toAbsolutePath()Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " N/A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 398
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    monitor-enter p0

    .line 399
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->strValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 400
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->asString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->strValue:Ljava/lang/String;

    .line 402
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/BasePath;->strValue:Ljava/lang/String;

    return-object v0

    .line 402
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 2

    .line 297
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath;, "Lorg/apache/sshd/common/file/util/BasePath<TT;TFS;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/util/BasePath;->toFile()Ljava/io/File;

    move-result-object v0

    .line 298
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    return-object v1
.end method
