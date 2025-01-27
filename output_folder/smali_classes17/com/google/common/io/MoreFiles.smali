.class public final Lcom/google/common/io/MoreFiles;
.super Ljava/lang/Object;
.source "MoreFiles.java"


# annotations
.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/MoreFiles$PathByteSink;,
        Lcom/google/common/io/MoreFiles$PathByteSource;
    }
.end annotation


# static fields
.field private static final FILE_TREE:Lcom/google/common/graph/SuccessorsFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/SuccessorsFunction<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 298
    new-instance v0, Lcom/google/common/io/MoreFiles$1;

    invoke-direct {v0}, Lcom/google/common/io/MoreFiles$1;-><init>()V

    sput-object v0, Lcom/google/common/io/MoreFiles;->FILE_TREE:Lcom/google/common/graph/SuccessorsFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Ljava/nio/file/Path;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "x0"    # Ljava/nio/file/Path;

    .line 74
    invoke-static {p0}, Lcom/google/common/io/MoreFiles;->fileTreeChildren(Ljava/nio/file/Path;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method private static addException(Ljava/util/Collection;Ljava/io/IOException;)Ljava/util/Collection;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;",
            "Ljava/io/IOException;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 767
    .local p0, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    if-nez p0, :cond_0

    .line 768
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    .line 770
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 771
    return-object p0
.end method

.method public static varargs asByteSink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/google/common/io/ByteSink;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;

    .line 203
    new-instance v0, Lcom/google/common/io/MoreFiles$PathByteSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/io/MoreFiles$PathByteSink;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;Lcom/google/common/io/MoreFiles$1;)V

    return-object v0
.end method

.method public static varargs asByteSource(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/google/common/io/ByteSource;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;

    .line 87
    new-instance v0, Lcom/google/common/io/MoreFiles$PathByteSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/io/MoreFiles$PathByteSource;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;Lcom/google/common/io/MoreFiles$1;)V

    return-object v0
.end method

.method public static varargs asCharSink(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Lcom/google/common/io/CharSink;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "options"    # [Ljava/nio/file/OpenOption;

    .line 252
    invoke-static {p0, p2}, Lcom/google/common/io/MoreFiles;->asByteSink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/google/common/io/ByteSink;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSink;->asCharSink(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSink;

    move-result-object v0

    return-object v0
.end method

.method public static varargs asCharSource(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Lcom/google/common/io/CharSource;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "options"    # [Ljava/nio/file/OpenOption;

    .line 238
    invoke-static {p0, p2}, Lcom/google/common/io/MoreFiles;->asByteSource(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSource;->asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method

.method private static checkAllowsInsecure(Ljava/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Lcom/google/common/io/RecursiveDeleteOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/InsecureRecursiveDeleteException;
        }
    .end annotation

    .line 756
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/common/io/RecursiveDeleteOption;->ALLOW_INSECURE:Lcom/google/common/io/RecursiveDeleteOption;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    return-void

    .line 757
    :cond_0
    new-instance v0, Lcom/google/common/io/InsecureRecursiveDeleteException;

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/io/InsecureRecursiveDeleteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static concat(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .param p0    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 783
    .local p0, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .local p1, "other":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    if-nez p0, :cond_0

    .line 784
    return-object p1

    .line 785
    :cond_0
    if-eqz p1, :cond_1

    .line 786
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 788
    :cond_1
    return-object p0
.end method

.method public static varargs createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 6
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    .local p1, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v0

    .line 432
    .local v0, "normalizedAbsolutePath":Ljava/nio/file/Path;
    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    .line 433
    .local v1, "parent":Ljava/nio/file/Path;
    if-nez v1, :cond_0

    .line 438
    return-void

    .line 445
    :cond_0
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 446
    invoke-static {v1, p1}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 447
    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 448
    :cond_1
    new-instance v2, Ljava/io/IOException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x27

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unable to create parent directories of "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 451
    :cond_2
    :goto_0
    return-void
.end method

.method public static varargs deleteDirectoryContents(Ljava/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V
    .locals 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Lcom/google/common/io/RecursiveDeleteOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    :try_start_0
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .local v1, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_1
    instance-of v2, v1, Ljava/nio/file/SecureDirectoryStream;

    if-eqz v2, :cond_0

    .line 601
    move-object v2, v1

    check-cast v2, Ljava/nio/file/SecureDirectoryStream;

    .line 602
    .local v2, "sds":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    invoke-static {v2}, Lcom/google/common/io/MoreFiles;->deleteDirectoryContentsSecure(Ljava/nio/file/SecureDirectoryStream;)Ljava/util/Collection;

    move-result-object v3

    move-object v0, v3

    .line 603
    .end local v2    # "sds":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    goto :goto_0

    .line 604
    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/io/MoreFiles;->checkAllowsInsecure(Ljava/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V

    .line 605
    invoke-static {v1}, Lcom/google/common/io/MoreFiles;->deleteDirectoryContentsInsecure(Ljava/nio/file/DirectoryStream;)Ljava/util/Collection;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 607
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 613
    .end local v1    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_1
    goto :goto_2

    .line 599
    .restart local v1    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .end local p0    # "path":Ljava/nio/file/Path;
    .end local p1    # "options":[Lcom/google/common/io/RecursiveDeleteOption;
    :cond_2
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 607
    .end local v1    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v0    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .restart local p0    # "path":Ljava/nio/file/Path;
    .restart local p1    # "options":[Lcom/google/common/io/RecursiveDeleteOption;
    :catch_0
    move-exception v1

    .line 608
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_4

    .line 611
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 615
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v0, :cond_3

    .line 616
    invoke-static {p0, v0}, Lcom/google/common/io/MoreFiles;->throwDeleteFailed(Ljava/nio/file/Path;Ljava/util/Collection;)V

    .line 618
    :cond_3
    return-void

    .line 609
    .restart local v1    # "e":Ljava/io/IOException;
    :cond_4
    throw v1
.end method

.method private static deleteDirectoryContentsInsecure(Ljava/nio/file/DirectoryStream;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 702
    .local p0, "dir":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    const/4 v0, 0x0

    .line 704
    .local v0, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    .line 705
    .local v2, "entry":Ljava/nio/file/Path;
    invoke-static {v2}, Lcom/google/common/io/MoreFiles;->deleteRecursivelyInsecure(Ljava/nio/file/Path;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/io/MoreFiles;->concat(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3
    :try_end_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 706
    .end local v2    # "entry":Ljava/nio/file/Path;
    goto :goto_0

    .line 708
    :cond_0
    return-object v0

    .line 709
    :catch_0
    move-exception v1

    .line 710
    .local v1, "e":Ljava/nio/file/DirectoryIteratorException;
    invoke-virtual {v1}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/io/MoreFiles;->addException(Ljava/util/Collection;Ljava/io/IOException;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method private static deleteDirectoryContentsSecure(Ljava/nio/file/SecureDirectoryStream;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/SecureDirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 656
    .local p0, "dir":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    const/4 v0, 0x0

    .line 658
    .local v0, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/nio/file/SecureDirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    .line 659
    .local v2, "path":Ljava/nio/file/Path;
    invoke-interface {v2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/common/io/MoreFiles;->deleteRecursivelySecure(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/io/MoreFiles;->concat(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3
    :try_end_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 660
    .end local v2    # "path":Ljava/nio/file/Path;
    goto :goto_0

    .line 662
    :cond_0
    return-object v0

    .line 663
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Ljava/nio/file/DirectoryIteratorException;
    invoke-virtual {v1}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/io/MoreFiles;->addException(Ljava/util/Collection;Ljava/io/IOException;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method public static varargs deleteRecursively(Ljava/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V
    .locals 6
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Lcom/google/common/io/RecursiveDeleteOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    invoke-static {p0}, Lcom/google/common/io/MoreFiles;->getParentPath(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 527
    .local v0, "parentPath":Ljava/nio/file/Path;
    if-eqz v0, :cond_6

    .line 531
    const/4 v1, 0x0

    .line 533
    .local v1, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    const/4 v2, 0x0

    .line 534
    .local v2, "sdsSupported":Z
    :try_start_0
    invoke-static {v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .local v3, "parent":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_1
    instance-of v4, v3, Ljava/nio/file/SecureDirectoryStream;

    if-eqz v4, :cond_0

    .line 536
    const/4 v2, 0x1

    .line 537
    move-object v4, v3

    check-cast v4, Ljava/nio/file/SecureDirectoryStream;

    .line 544
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    .line 538
    invoke-static {v4, v5}, Lcom/google/common/io/MoreFiles;->deleteRecursivelySecure(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;)Ljava/util/Collection;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    .line 546
    :cond_0
    if-eqz v3, :cond_1

    :try_start_2
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V

    .line 548
    .end local v3    # "parent":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_1
    if-nez v2, :cond_2

    .line 549
    invoke-static {p0, p1}, Lcom/google/common/io/MoreFiles;->checkAllowsInsecure(Ljava/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V

    .line 550
    invoke-static {p0}, Lcom/google/common/io/MoreFiles;->deleteRecursivelyInsecure(Ljava/nio/file/Path;)Ljava/util/Collection;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v3

    .line 558
    .end local v2    # "sdsSupported":Z
    :cond_2
    goto :goto_1

    .line 534
    .restart local v2    # "sdsSupported":Z
    .restart local v3    # "parent":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    :try_start_3
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "parentPath":Ljava/nio/file/Path;
    .end local v1    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .end local p0    # "path":Ljava/nio/file/Path;
    .end local p1    # "options":[Lcom/google/common/io/RecursiveDeleteOption;
    :cond_3
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 552
    .end local v2    # "sdsSupported":Z
    .end local v3    # "parent":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v0    # "parentPath":Ljava/nio/file/Path;
    .restart local v1    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .restart local p0    # "path":Ljava/nio/file/Path;
    .restart local p1    # "options":[Lcom/google/common/io/RecursiveDeleteOption;
    :catch_0
    move-exception v2

    .line 553
    .local v2, "e":Ljava/io/IOException;
    if-eqz v1, :cond_5

    .line 556
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 560
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz v1, :cond_4

    .line 561
    invoke-static {p0, v1}, Lcom/google/common/io/MoreFiles;->throwDeleteFailed(Ljava/nio/file/Path;Ljava/util/Collection;)V

    .line 563
    :cond_4
    return-void

    .line 554
    .restart local v2    # "e":Ljava/io/IOException;
    :cond_5
    throw v2

    .line 528
    .end local v1    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    new-instance v1, Ljava/nio/file/FileSystemException;

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "can\'t delete recursively"

    invoke-direct {v1, v2, v3, v4}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private static deleteRecursivelyInsecure(Ljava/nio/file/Path;)Ljava/util/Collection;
    .locals 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 674
    const/4 v0, 0x0

    .line 676
    .local v0, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/nio/file/LinkOption;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .local v1, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_1
    invoke-static {v1}, Lcom/google/common/io/MoreFiles;->deleteDirectoryContentsInsecure(Ljava/nio/file/DirectoryStream;)Ljava/util/Collection;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 679
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 677
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .end local p0    # "path":Ljava/nio/file/Path;
    :cond_0
    :goto_0
    throw v2

    .line 684
    .end local v1    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v0    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .restart local p0    # "path":Ljava/nio/file/Path;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 685
    invoke-static {p0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 688
    :cond_2
    return-object v0

    .line 689
    :catch_0
    move-exception v1

    .line 690
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/google/common/io/MoreFiles;->addException(Ljava/util/Collection;Ljava/io/IOException;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method private static deleteRecursivelySecure(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;)Ljava/util/Collection;
    .locals 5
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/SecureDirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 627
    .local p0, "dir":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    const/4 v0, 0x0

    .line 629
    .local v0, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/nio/file/LinkOption;

    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, p1, v2}, Lcom/google/common/io/MoreFiles;->isDirectory(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 630
    new-array v1, v1, [Ljava/nio/file/LinkOption;

    sget-object v2, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v2, v1, v4

    invoke-interface {p0, p1, v1}, Ljava/nio/file/SecureDirectoryStream;->newDirectoryStream(Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/SecureDirectoryStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    .local v1, "childDir":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_1
    invoke-static {v1}, Lcom/google/common/io/MoreFiles;->deleteDirectoryContentsSecure(Ljava/nio/file/SecureDirectoryStream;)Ljava/util/Collection;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 632
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Ljava/nio/file/SecureDirectoryStream;->close()V

    .line 636
    .end local v1    # "childDir":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    :cond_0
    if-nez v0, :cond_3

    .line 637
    invoke-interface {p0, p1}, Ljava/nio/file/SecureDirectoryStream;->deleteDirectory(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 630
    .restart local v1    # "childDir":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Ljava/nio/file/SecureDirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .end local p0    # "dir":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    .end local p1    # "path":Ljava/nio/file/Path;
    :cond_1
    :goto_0
    throw v2

    .line 640
    .end local v1    # "childDir":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v0    # "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    .restart local p0    # "dir":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    .restart local p1    # "path":Ljava/nio/file/Path;
    :cond_2
    invoke-interface {p0, p1}, Ljava/nio/file/SecureDirectoryStream;->deleteFile(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 643
    :cond_3
    :goto_1
    return-object v0

    .line 644
    :catch_0
    move-exception v1

    .line 645
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/google/common/io/MoreFiles;->addException(Ljava/util/Collection;Ljava/io/IOException;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method public static equal(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 10
    .param p0, "path1"    # Ljava/nio/file/Path;
    .param p1, "path2"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-static {p0, p1}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x1

    return v0

    .line 383
    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Lcom/google/common/io/MoreFiles;->asByteSource(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/google/common/io/ByteSource;

    move-result-object v1

    .line 384
    .local v1, "source1":Lcom/google/common/io/ByteSource;
    new-array v2, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v2}, Lcom/google/common/io/MoreFiles;->asByteSource(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/google/common/io/ByteSource;

    move-result-object v2

    .line 385
    .local v2, "source2":Lcom/google/common/io/ByteSource;
    invoke-virtual {v1}, Lcom/google/common/io/ByteSource;->sizeIfKnown()Lcom/google/common/base/Optional;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 386
    .local v6, "len1":J
    invoke-virtual {v2}, Lcom/google/common/io/ByteSource;->sizeIfKnown()Lcom/google/common/base/Optional;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 387
    .local v8, "len2":J
    cmp-long v3, v6, v4

    if-eqz v3, :cond_1

    cmp-long v3, v8, v4

    if-eqz v3, :cond_1

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    .line 388
    return v0

    .line 390
    :cond_1
    invoke-virtual {v1, v2}, Lcom/google/common/io/ByteSource;->contentEquals(Lcom/google/common/io/ByteSource;)Z

    move-result v0

    return v0
.end method

.method public static fileTraverser()Lcom/google/common/graph/Traverser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Traverser<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 295
    sget-object v0, Lcom/google/common/io/MoreFiles;->FILE_TREE:Lcom/google/common/graph/SuccessorsFunction;

    invoke-static {v0}, Lcom/google/common/graph/Traverser;->forTree(Lcom/google/common/graph/SuccessorsFunction;)Lcom/google/common/graph/Traverser;

    move-result-object v0

    return-object v0
.end method

.method private static fileTreeChildren(Ljava/nio/file/Path;)Ljava/lang/Iterable;
    .locals 3
    .param p0, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 307
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    invoke-static {p0}, Lcom/google/common/io/MoreFiles;->listFiles(Ljava/nio/file/Path;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 310
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/nio/file/DirectoryIteratorException;

    invoke-direct {v1, v0}, Ljava/nio/file/DirectoryIteratorException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 315
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static getFileExtension(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 466
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    .line 469
    .local v0, "name":Ljava/nio/file/Path;
    const-string v1, ""

    if-nez v0, :cond_0

    .line 470
    return-object v1

    .line 473
    :cond_0
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "fileName":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 475
    .local v3, "dotIndex":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getNameWithoutExtension(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 484
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    .line 487
    .local v0, "name":Ljava/nio/file/Path;
    if-nez v0, :cond_0

    .line 488
    const-string v1, ""

    return-object v1

    .line 491
    :cond_0
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "fileName":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 493
    .local v2, "dotIndex":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method private static getParentPath(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 721
    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    .line 724
    .local v0, "parent":Ljava/nio/file/Path;
    if-eqz v0, :cond_0

    .line 730
    return-object v0

    .line 734
    :cond_0
    invoke-interface {p0}, Ljava/nio/file/Path;->getNameCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 746
    const/4 v1, 0x0

    return-object v1

    .line 749
    :cond_1
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v1, v3, v2}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    return-object v1
.end method

.method public static varargs isDirectory([Ljava/nio/file/LinkOption;)Lcom/google/common/base/Predicate;
    .locals 2
    .param p0, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Lcom/google/common/base/Predicate<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, [Ljava/nio/file/LinkOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/LinkOption;

    .line 324
    .local v0, "optionsCopy":[Ljava/nio/file/LinkOption;
    new-instance v1, Lcom/google/common/io/MoreFiles$2;

    invoke-direct {v1, v0}, Lcom/google/common/io/MoreFiles$2;-><init>([Ljava/nio/file/LinkOption;)V

    return-object v1
.end method

.method private static varargs isDirectory(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .locals 1
    .param p1, "name"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/SecureDirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    .local p0, "dir":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {p0, p1, v0, p2}, Ljava/nio/file/SecureDirectoryStream;->getFileAttributeView(Ljava/lang/Object;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    .line 341
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    .line 340
    return v0
.end method

.method public static varargs isRegularFile([Ljava/nio/file/LinkOption;)Lcom/google/common/base/Predicate;
    .locals 2
    .param p0, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Lcom/google/common/base/Predicate<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, [Ljava/nio/file/LinkOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/LinkOption;

    .line 351
    .local v0, "optionsCopy":[Ljava/nio/file/LinkOption;
    new-instance v1, Lcom/google/common/io/MoreFiles$3;

    invoke-direct {v1, v0}, Lcom/google/common/io/MoreFiles$3;-><init>([Ljava/nio/file/LinkOption;)V

    return-object v1
.end method

.method public static listFiles(Ljava/nio/file/Path;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .param p0, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    :try_start_0
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .local v0, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_1
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_2 .. :try_end_2} :catch_0

    .line 265
    :cond_0
    return-object v1

    .line 264
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "dir":Ljava/nio/file/Path;
    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_4 .. :try_end_4} :catch_0

    .line 266
    .end local v0    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local p0    # "dir":Ljava/nio/file/Path;
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/nio/file/DirectoryIteratorException;
    invoke-virtual {v0}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private static pathNotFound(Ljava/nio/file/Path;Ljava/util/Collection;)Ljava/nio/file/NoSuchFileException;
    .locals 7
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;)",
            "Ljava/nio/file/NoSuchFileException;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 821
    .local p1, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 822
    return-object v1

    .line 824
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .line 825
    .local v0, "exception":Ljava/io/IOException;
    instance-of v2, v0, Ljava/nio/file/NoSuchFileException;

    if-nez v2, :cond_1

    .line 826
    return-object v1

    .line 828
    :cond_1
    move-object v2, v0

    check-cast v2, Ljava/nio/file/NoSuchFileException;

    .line 829
    .local v2, "noSuchFileException":Ljava/nio/file/NoSuchFileException;
    invoke-virtual {v2}, Ljava/nio/file/NoSuchFileException;->getFile()Ljava/lang/String;

    move-result-object v3

    .line 830
    .local v3, "exceptionFile":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 835
    return-object v1

    .line 837
    :cond_2
    invoke-static {p0}, Lcom/google/common/io/MoreFiles;->getParentPath(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v4

    .line 838
    .local v4, "parentPath":Ljava/nio/file/Path;
    if-nez v4, :cond_3

    .line 858
    return-object v1

    .line 861
    :cond_3
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    invoke-interface {v4, v5}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v5

    .line 862
    .local v5, "pathResolvedFromParent":Ljava/nio/file/Path;
    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 863
    return-object v2

    .line 865
    :cond_4
    return-object v1
.end method

.method private static throwDeleteFailed(Ljava/nio/file/Path;Ljava/util/Collection;)V
    .locals 5
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Collection<",
            "Ljava/io/IOException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/file/FileSystemException;
        }
    .end annotation

    .line 801
    .local p1, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/IOException;>;"
    invoke-static {p0, p1}, Lcom/google/common/io/MoreFiles;->pathNotFound(Ljava/nio/file/Path;Ljava/util/Collection;)Ljava/nio/file/NoSuchFileException;

    move-result-object v0

    .line 802
    .local v0, "pathNotFound":Ljava/nio/file/NoSuchFileException;
    if-nez v0, :cond_1

    .line 808
    new-instance v1, Ljava/nio/file/FileSystemException;

    .line 810
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "failed to delete one or more files; see suppressed exceptions for details"

    invoke-direct {v1, v2, v3, v4}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    .local v1, "deleteFailed":Ljava/nio/file/FileSystemException;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    .line 814
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v1, v3}, Ljava/nio/file/FileSystemException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 815
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 816
    :cond_0
    throw v1

    .line 803
    .end local v1    # "deleteFailed":Ljava/nio/file/FileSystemException;
    :cond_1
    throw v0
.end method

.method public static touch(Ljava/nio/file/Path;)V
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/nio/file/Files;->setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/nio/file/NoSuchFileException;
    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 413
    goto :goto_0

    .line 406
    :catch_1
    move-exception v1

    .line 415
    .end local v0    # "e":Ljava/nio/file/NoSuchFileException;
    :goto_0
    return-void
.end method
