.class public Lorg/apache/sshd/common/util/io/DirectoryScanner;
.super Ljava/lang/Object;
.source "DirectoryScanner.java"


# instance fields
.field private basedir:Ljava/nio/file/Path;

.field private caseSensitive:Z

.field private includePatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isUNIX()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/sshd/common/util/io/DirectoryScanner;->caseSensitive:Z

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "dir"    # Ljava/nio/file/Path;

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/util/io/DirectoryScanner;-><init>(Ljava/nio/file/Path;Ljava/util/Collection;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/util/Collection;)V
    .locals 1
    .param p1, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p2, "includes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isUNIX()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/sshd/common/util/io/DirectoryScanner;->caseSensitive:Z

    .line 158
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->setBasedir(Ljava/nio/file/Path;)V

    .line 159
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->setIncludes(Ljava/util/Collection;)V

    .line 160
    return-void
.end method

.method public varargs constructor <init>(Ljava/nio/file/Path;[Ljava/lang/String;)V
    .locals 1
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p2, "includes"    # [Ljava/lang/String;

    .line 154
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/util/io/DirectoryScanner;-><init>(Ljava/nio/file/Path;Ljava/util/Collection;)V

    .line 155
    return-void
.end method

.method static synthetic lambda$setIncludes$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 210
    invoke-static {p0}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setIncludes$1(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "includes"    # Ljava/util/Collection;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static normalizePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pattern"    # Ljava/lang/String;

    .line 347
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 349
    const-string v0, "%regex["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x5c

    if-eqz v0, :cond_1

    .line 350
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/4 v2, -0x1

    const-string v3, "/"

    const-string v4, "\\\\"

    if-ne v0, v1, :cond_0

    .line 351
    invoke-static {p0, v3, v4, v2}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 353
    :cond_0
    invoke-static {p0, v4, v3, v2}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 356
    :cond_1
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 358
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 363
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "repl"    # Ljava/lang/String;
    .param p2, "with"    # Ljava/lang/String;
    .param p3, "max"    # I

    .line 380
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 384
    :cond_0
    const/4 v0, 0x0

    .line 385
    .local v0, "start":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 386
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .local v2, "end":I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 387
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 390
    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_1

    .line 391
    goto :goto_1

    .line 386
    :cond_1
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 394
    .end local v2    # "end":I
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 381
    .end local v0    # "start":I
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    :cond_3
    :goto_2
    return-object p0
.end method


# virtual methods
.method protected couldHoldIncluded(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 325
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->getIncludes()Ljava/util/List;

    move-result-object v0

    .line 326
    .local v0, "includes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 327
    return v2

    .line 330
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->isCaseSensitive()Z

    move-result v1

    .line 331
    .local v1, "cs":Z
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 332
    .local v4, "include":Ljava/lang/String;
    invoke-static {v4, p1, v1}, Lorg/apache/sshd/common/util/SelectorUtils;->matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 333
    const/4 v2, 0x1

    return v2

    .line 335
    .end local v4    # "include":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 337
    :cond_2
    return v2
.end method

.method public getBasedir()Ljava/nio/file/Path;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/DirectoryScanner;->basedir:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getIncludes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/DirectoryScanner;->includePatterns:Ljava/util/List;

    return-object v0
.end method

.method public isCaseSensitive()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lorg/apache/sshd/common/util/io/DirectoryScanner;->caseSensitive:Z

    return v0
.end method

.method protected isIncluded(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 301
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->getIncludes()Ljava/util/List;

    move-result-object v0

    .line 302
    .local v0, "includes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 303
    return v2

    .line 306
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->isCaseSensitive()Z

    move-result v1

    .line 307
    .local v1, "cs":Z
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 308
    .local v4, "include":Ljava/lang/String;
    invoke-static {v4, p1, v1}, Lorg/apache/sshd/common/util/SelectorUtils;->matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 309
    const/4 v2, 0x1

    return v2

    .line 311
    .end local v4    # "include":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 313
    :cond_2
    return v2
.end method

.method public scan()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 233
    new-instance v0, Lorg/apache/sshd/common/util/io/DirectoryScanner$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/io/DirectoryScanner$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->scan(Ljava/util/function/Supplier;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public scan(Ljava/util/function/Supplier;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;>(",
            "Ljava/util/function/Supplier<",
            "+TC;>;)TC;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 237
    .local p1, "factory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TC;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->getBasedir()Ljava/nio/file/Path;

    move-result-object v0

    .line 238
    .local v0, "dir":Ljava/nio/file/Path;
    if-eqz v0, :cond_3

    .line 241
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    const-string v3, "basedir "

    if-eqz v2, :cond_2

    .line 244
    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->getIncludes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p0, v0, v0, v1}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->scandir(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1

    .line 248
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No includes set for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No basedir set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected scandir(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 7
    .param p1, "rootDir"    # Ljava/nio/file/Path;
    .param p2, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;>(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "TC;)TC;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    .local p3, "filesList":Ljava/util/Collection;, "TC;"
    invoke-static {p2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    .line 271
    .local v0, "ds":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    .line 272
    .local v2, "p":Ljava/nio/file/Path;
    invoke-interface {p1, v2}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v3

    .line 273
    .local v3, "rel":Ljava/nio/file/Path;
    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    new-array v6, v5, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v6}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 275
    invoke-virtual {p0, v4}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->isIncluded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 276
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-virtual {p0, p1, v2, p3}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->scandir(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/util/Collection;)Ljava/util/Collection;

    goto :goto_1

    .line 278
    :cond_0
    invoke-virtual {p0, v4}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->couldHoldIncluded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 279
    invoke-virtual {p0, p1, v2, p3}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->scandir(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/util/Collection;)Ljava/util/Collection;

    goto :goto_1

    .line 281
    :cond_1
    new-array v5, v5, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v5}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 282
    invoke-virtual {p0, v4}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->isIncluded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 283
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .end local v2    # "p":Ljava/nio/file/Path;
    .end local v3    # "rel":Ljava/nio/file/Path;
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    :goto_1
    goto :goto_0

    .line 287
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V

    .line 289
    .end local v0    # "ds":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_4
    return-object p3

    .line 270
    .restart local v0    # "ds":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v1

    .end local v0    # "ds":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .end local p1    # "rootDir":Ljava/nio/file/Path;
    .end local p2    # "dir":Ljava/nio/file/Path;
    .end local p3    # "filesList":Ljava/util/Collection;, "TC;"
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 287
    .restart local v0    # "ds":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local p1    # "rootDir":Ljava/nio/file/Path;
    .restart local p2    # "dir":Ljava/nio/file/Path;
    .restart local p3    # "filesList":Ljava/util/Collection;, "TC;"
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_5

    :try_start_2
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v2
.end method

.method public setBasedir(Ljava/nio/file/Path;)V
    .locals 0
    .param p1, "basedir"    # Ljava/nio/file/Path;

    .line 170
    iput-object p1, p0, Lorg/apache/sshd/common/util/io/DirectoryScanner;->basedir:Ljava/nio/file/Path;

    .line 171
    return-void
.end method

.method public setCaseSensitive(Z)V
    .locals 0
    .param p1, "caseSensitive"    # Z

    .line 219
    iput-boolean p1, p0, Lorg/apache/sshd/common/util/io/DirectoryScanner;->caseSensitive:Z

    .line 220
    return-void
.end method

.method public setIncludes(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p1, "includes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/util/io/DirectoryScanner$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/sshd/common/util/io/DirectoryScanner$$ExternalSyntheticLambda1;-><init>()V

    .line 210
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/util/io/DirectoryScanner$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/apache/sshd/common/util/io/DirectoryScanner$$ExternalSyntheticLambda2;-><init>(Ljava/util/Collection;)V

    .line 211
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 208
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/common/util/io/DirectoryScanner;->includePatterns:Ljava/util/List;

    .line 212
    return-void
.end method

.method public varargs setIncludes([Ljava/lang/String;)V
    .locals 1
    .param p1, "includes"    # [Ljava/lang/String;

    .line 195
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->setIncludes(Ljava/util/Collection;)V

    .line 196
    return-void
.end method
