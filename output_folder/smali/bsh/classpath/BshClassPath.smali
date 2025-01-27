.class public Lbsh/classpath/BshClassPath;
.super Ljava/lang/Object;
.source "BshClassPath.java"

# interfaces
.implements Lbsh/classpath/ClassPathListener;
.implements Lbsh/NameSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/classpath/BshClassPath$MappingFeedback;,
        Lbsh/classpath/BshClassPath$AmbiguousName;,
        Lbsh/classpath/BshClassPath$UnqualifiedNameTable;,
        Lbsh/classpath/BshClassPath$GeneratedClassSource;,
        Lbsh/classpath/BshClassPath$DirClassSource;,
        Lbsh/classpath/BshClassPath$JarClassSource;,
        Lbsh/classpath/BshClassPath$ClassSource;
    }
.end annotation


# static fields
.field static bootClassPath:Lbsh/classpath/BshClassPath;

.field static mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

.field static userClassPath:Lbsh/classpath/BshClassPath;

.field static userClassPathComp:[Ljava/net/URL;


# instance fields
.field private classSource:Ljava/util/Map;

.field private compPaths:Ljava/util/List;

.field listeners:Ljava/util/Vector;

.field private mapsInitialized:Z

.field name:Ljava/lang/String;

.field private nameCompletionIncludesUnqNames:Z

.field nameSourceListeners:Ljava/util/List;

.field private packageMap:Ljava/util/Map;

.field private path:Ljava/util/List;

.field private unqNameTable:Lbsh/classpath/BshClassPath$UnqualifiedNameTable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/classpath/BshClassPath;->nameCompletionIncludesUnqNames:Z

    .line 85
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->listeners:Ljava/util/Vector;

    .line 90
    iput-object p1, p0, Lbsh/classpath/BshClassPath;->name:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lbsh/classpath/BshClassPath;->reset()V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/net/URL;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "urls"    # [Ljava/net/URL;

    .line 95
    invoke-direct {p0, p1}, Lbsh/classpath/BshClassPath;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, p2}, Lbsh/classpath/BshClassPath;->add([Ljava/net/URL;)V

    .line 97
    return-void
.end method

.method public static addMappingFeedback(Lbsh/classpath/BshClassPath$MappingFeedback;)V
    .locals 2
    .param p0, "mf"    # Lbsh/classpath/BshClassPath$MappingFeedback;

    .line 827
    sget-object v0, Lbsh/classpath/BshClassPath;->mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

    if-nez v0, :cond_0

    .line 829
    sput-object p0, Lbsh/classpath/BshClassPath;->mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

    .line 830
    return-void

    .line 828
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unimplemented: already a listener"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildUnqualifiedNameTable()Lbsh/classpath/BshClassPath$UnqualifiedNameTable;
    .locals 5

    .line 303
    new-instance v0, Lbsh/classpath/BshClassPath$UnqualifiedNameTable;

    invoke-direct {v0}, Lbsh/classpath/BshClassPath$UnqualifiedNameTable;-><init>()V

    .line 306
    .local v0, "unqNameTable":Lbsh/classpath/BshClassPath$UnqualifiedNameTable;
    iget-object v1, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 307
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 308
    iget-object v2, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsh/classpath/BshClassPath;

    iget-object v2, v2, Lbsh/classpath/BshClassPath;->classSource:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 309
    .local v2, "s":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 310
    .local v3, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lbsh/classpath/BshClassPath$UnqualifiedNameTable;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 307
    .end local v2    # "s":Ljava/util/Set;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lbsh/classpath/BshClassPath;->classSource:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 316
    .local v1, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lbsh/classpath/BshClassPath$UnqualifiedNameTable;->add(Ljava/lang/String;)V

    goto :goto_2

    .line 319
    :cond_2
    return-object v0
.end method

.method public static canonicalizeClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 522
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "classname":Ljava/lang/String;
    const/16 v2, 0x5c

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 524
    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_0

    .line 525
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 526
    :cond_0
    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 528
    :cond_1
    return-object v0
.end method

.method private declared-synchronized clearCachedStructures()V
    .locals 1

    monitor-enter p0

    .line 418
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lbsh/classpath/BshClassPath;->mapsInitialized:Z

    .line 419
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->packageMap:Ljava/util/Map;

    .line 420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->classSource:Ljava/util/Map;

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->unqNameTable:Lbsh/classpath/BshClassPath$UnqualifiedNameTable;

    .line 422
    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->nameSpaceChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    .line 417
    .end local p0    # "this":Lbsh/classpath/BshClassPath;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getBootClassPath()Lbsh/classpath/BshClassPath;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    .line 653
    sget-object v0, Lbsh/classpath/BshClassPath;->bootClassPath:Lbsh/classpath/BshClassPath;

    if-nez v0, :cond_0

    .line 658
    :try_start_0
    invoke-static {}, Lbsh/classpath/BshClassPath;->getRTJarPath()Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "rtjar":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    .line 660
    .local v1, "url":Ljava/net/URL;
    new-instance v2, Lbsh/classpath/BshClassPath;

    const-string v3, "Boot Class Path"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/net/URL;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-direct {v2, v3, v4}, Lbsh/classpath/BshClassPath;-><init>(Ljava/lang/String;[Ljava/net/URL;)V

    sput-object v2, Lbsh/classpath/BshClassPath;->bootClassPath:Lbsh/classpath/BshClassPath;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    .end local v0    # "rtjar":Ljava/lang/String;
    .end local v1    # "url":Ljava/net/URL;
    goto :goto_0

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Lbsh/ClassPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " can\'t find boot jar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/ClassPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 666
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :goto_0
    sget-object v0, Lbsh/classpath/BshClassPath;->bootClassPath:Lbsh/classpath/BshClassPath;

    return-object v0
.end method

.method private static getRTJarPath()Ljava/lang/String;
    .locals 5

    .line 672
    const-class v0, Ljava/lang/Class;

    .line 673
    const-string v1, "/java/lang/String.class"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "urlString":Ljava/lang/String;
    const-string v1, "jar:file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 676
    return-object v3

    .line 678
    :cond_0
    const-string v2, "!"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 679
    .local v2, "i":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 680
    return-object v3

    .line 682
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getUnqualifiedNameTable()Lbsh/classpath/BshClassPath$UnqualifiedNameTable;
    .locals 1

    .line 296
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->unqNameTable:Lbsh/classpath/BshClassPath$UnqualifiedNameTable;

    if-nez v0, :cond_0

    .line 297
    invoke-direct {p0}, Lbsh/classpath/BshClassPath;->buildUnqualifiedNameTable()Lbsh/classpath/BshClassPath$UnqualifiedNameTable;

    move-result-object v0

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->unqNameTable:Lbsh/classpath/BshClassPath$UnqualifiedNameTable;

    .line 298
    :cond_0
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->unqNameTable:Lbsh/classpath/BshClassPath$UnqualifiedNameTable;

    return-object v0
.end method

.method public static getUserClassPath()Lbsh/classpath/BshClassPath;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    .line 640
    sget-object v0, Lbsh/classpath/BshClassPath;->userClassPath:Lbsh/classpath/BshClassPath;

    if-nez v0, :cond_0

    .line 641
    new-instance v0, Lbsh/classpath/BshClassPath;

    .line 642
    invoke-static {}, Lbsh/classpath/BshClassPath;->getUserClassPathComponents()[Ljava/net/URL;

    move-result-object v1

    const-string v2, "User Class Path"

    invoke-direct {v0, v2, v1}, Lbsh/classpath/BshClassPath;-><init>(Ljava/lang/String;[Ljava/net/URL;)V

    sput-object v0, Lbsh/classpath/BshClassPath;->userClassPath:Lbsh/classpath/BshClassPath;

    .line 643
    :cond_0
    sget-object v0, Lbsh/classpath/BshClassPath;->userClassPath:Lbsh/classpath/BshClassPath;

    return-object v0
.end method

.method public static getUserClassPathComponents()[Ljava/net/URL;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    .line 574
    sget-object v0, Lbsh/classpath/BshClassPath;->userClassPathComp:[Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 575
    return-object v0

    .line 577
    :cond_0
    const-string v0, "java.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "cp":Ljava/lang/String;
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v0, v1}, Lbsh/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, "paths":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [Ljava/net/URL;

    .line 582
    .local v2, "urls":[Ljava/net/URL;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 586
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    aget-object v6, v1, v3

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 590
    .end local v3    # "i":I
    :cond_1
    nop

    .line 592
    sput-object v2, Lbsh/classpath/BshClassPath;->userClassPathComp:[Ljava/net/URL;

    .line 593
    return-object v2

    .line 588
    :catch_0
    move-exception v3

    .line 589
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lbsh/ClassPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t parse class path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lbsh/ClassPathException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static isArchiveFileName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 510
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 511
    const-string v0, ".jar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isClassFileName(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 505
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 749
    array-length v0, p0

    new-array v0, v0, [Ljava/net/URL;

    .line 750
    .local v0, "urls":[Ljava/net/URL;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 751
    new-instance v2, Ljava/io/File;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    aput-object v2, v0, v1

    .line 750
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 752
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lbsh/classpath/BshClassPath;

    const-string v2, "Test"

    invoke-direct {v1, v2, v0}, Lbsh/classpath/BshClassPath;-><init>(Ljava/lang/String;[Ljava/net/URL;)V

    .line 753
    .local v1, "bcp":Lbsh/classpath/BshClassPath;
    return-void
.end method

.method private map([Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "classes"    # [Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/Object;

    .line 378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 380
    aget-object v1, p1, v0

    invoke-direct {p0, v1, p2}, Lbsh/classpath/BshClassPath;->mapClass(Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private mapClass(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/Object;

    .line 387
    invoke-static {p1}, Lbsh/classpath/BshClassPath;->splitClassname(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "sa":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 389
    .local v1, "pack":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 390
    .local v2, "clas":Ljava/lang/String;
    iget-object v3, p0, Lbsh/classpath/BshClassPath;->packageMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 391
    .local v3, "set":Ljava/util/Set;
    if-nez v3, :cond_0

    .line 392
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v3, v4

    .line 393
    iget-object v4, p0, Lbsh/classpath/BshClassPath;->packageMap:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_0
    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v4, p0, Lbsh/classpath/BshClassPath;->classSource:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 401
    .local v4, "obj":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 402
    iget-object v5, p0, Lbsh/classpath/BshClassPath;->classSource:Ljava/util/Map;

    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_1
    return-void
.end method

.method public static removeInnerClassNames(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .param p0, "col"    # Ljava/util/Collection;

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 556
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 557
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 558
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 559
    .local v2, "name":Ljava/lang/String;
    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 560
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 561
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 562
    :cond_1
    return-object v0
.end method

.method private declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 409
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->path:Ljava/util/List;

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    .line 411
    invoke-direct {p0}, Lbsh/classpath/BshClassPath;->clearCachedStructures()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    return-void

    .line 408
    .end local p0    # "this":Lbsh/classpath/BshClassPath;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static searchJarForClasses(Ljava/net/URL;)[Ljava/lang/String;
    .locals 6
    .param p0, "jar"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 488
    .local v0, "v":Ljava/util/Vector;
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 489
    .local v1, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 492
    .local v2, "zin":Ljava/util/zip/ZipInputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    move-object v4, v3

    .local v4, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_1

    .line 493
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lbsh/classpath/BshClassPath;->isClassFileName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 495
    invoke-static {v3}, Lbsh/classpath/BshClassPath;->canonicalizeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 496
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 497
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 499
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 500
    .local v3, "sa":[Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 501
    return-object v3
.end method

.method public static splitClassname(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "classname"    # Ljava/lang/String;

    .line 535
    invoke-static {p0}, Lbsh/classpath/BshClassPath;->canonicalizeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 537
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 539
    .local v0, "i":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 541
    move-object v2, p0

    .line 542
    .local v2, "classn":Ljava/lang/String;
    const-string v3, "<unpackaged>"

    .local v3, "packn":Ljava/lang/String;
    goto :goto_0

    .line 544
    .end local v2    # "classn":Ljava/lang/String;
    .end local v3    # "packn":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 545
    .restart local v3    # "packn":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 547
    .restart local v2    # "classn":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v1

    const/4 v1, 0x1

    aput-object v2, v4, v1

    return-object v4
.end method

.method static traverseDirForClasses(Ljava/io/File;)[Ljava/lang/String;
    .locals 2
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    invoke-static {p0, p0}, Lbsh/classpath/BshClassPath;->traverseDirForClassesAux(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 445
    .local v0, "list":Ljava/util/List;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method static traverseDirForClassesAux(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .locals 8
    .param p0, "topDir"    # Ljava/io/File;
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v0, "list":Ljava/util/List;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "top":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 455
    .local v2, "children":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 456
    aget-object v4, v2, v3

    .line 457
    .local v4, "child":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 458
    invoke-static {p0, v4}, Lbsh/classpath/BshClassPath;->traverseDirForClassesAux(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 460
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, "name":Ljava/lang/String;
    invoke-static {v5}, Lbsh/classpath/BshClassPath;->isClassFileName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 466
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 467
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 471
    invoke-static {v5}, Lbsh/classpath/BshClassPath;->canonicalizeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 472
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 469
    :cond_1
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "problem parsing paths"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 455
    .end local v4    # "child":Ljava/io/File;
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 478
    .end local v3    # "i":I
    :cond_3
    return-object v0
.end method


# virtual methods
.method public add(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->path:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-boolean v0, p0, Lbsh/classpath/BshClassPath;->mapsInitialized:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Lbsh/classpath/BshClassPath;->map(Ljava/net/URL;)V

    .line 129
    :cond_0
    return-void
.end method

.method public add([Ljava/net/URL;)V
    .locals 2
    .param p1, "urls"    # [Ljava/net/URL;

    .line 120
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->path:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    iget-boolean v0, p0, Lbsh/classpath/BshClassPath;->mapsInitialized:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lbsh/classpath/BshClassPath;->map([Ljava/net/URL;)V

    .line 123
    :cond_0
    return-void
.end method

.method public addComponent(Lbsh/classpath/BshClassPath;)V
    .locals 1
    .param p1, "bcp"    # Lbsh/classpath/BshClassPath;

    .line 113
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    .line 115
    :cond_0
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {p1, p0}, Lbsh/classpath/BshClassPath;->addListener(Lbsh/classpath/ClassPathListener;)V

    .line 117
    return-void
.end method

.method public addListener(Lbsh/classpath/ClassPathListener;)V
    .locals 2
    .param p1, "l"    # Lbsh/classpath/ClassPathListener;

    .line 613
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->listeners:Ljava/util/Vector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 614
    return-void
.end method

.method public addNameSourceListener(Lbsh/NameSource$Listener;)V
    .locals 1
    .param p1, "listener"    # Lbsh/NameSource$Listener;

    .line 815
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->nameSourceListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->nameSourceListeners:Ljava/util/List;

    .line 817
    :cond_0
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->nameSourceListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    return-void
.end method

.method classMapping(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 840
    sget-object v0, Lbsh/classpath/BshClassPath;->mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

    if-eqz v0, :cond_0

    .line 841
    invoke-interface {v0, p1}, Lbsh/classpath/BshClassPath$MappingFeedback;->classMapping(Ljava/lang/String;)V

    goto :goto_0

    .line 843
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 844
    :goto_0
    return-void
.end method

.method public classPathChanged()V
    .locals 0

    .line 426
    invoke-direct {p0}, Lbsh/classpath/BshClassPath;->clearCachedStructures()V

    .line 427
    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->notifyListeners()V

    .line 428
    return-void
.end method

.method endClassMapping()V
    .locals 2

    .line 854
    sget-object v0, Lbsh/classpath/BshClassPath;->mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

    if-eqz v0, :cond_0

    .line 855
    invoke-interface {v0}, Lbsh/classpath/BshClassPath$MappingFeedback;->endClassMapping()V

    goto :goto_0

    .line 857
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "End ClassPath Mapping"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 858
    :goto_0
    return-void
.end method

.method errorWhileMapping(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 847
    sget-object v0, Lbsh/classpath/BshClassPath;->mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

    if-eqz v0, :cond_0

    .line 848
    invoke-interface {v0, p1}, Lbsh/classpath/BshClassPath$MappingFeedback;->errorWhileMapping(Ljava/lang/String;)V

    goto :goto_0

    .line 850
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 851
    :goto_0
    return-void
.end method

.method public getAllNames()[Ljava/lang/String;
    .locals 4

    .line 324
    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->insureInitialized()V

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v0, "names":Ljava/util/List;
    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->getPackagesSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 328
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 330
    .local v2, "pack":Ljava/lang/String;
    nop

    .line 331
    invoke-virtual {p0, v2}, Lbsh/classpath/BshClassPath;->getClassesForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lbsh/classpath/BshClassPath;->removeInnerClassNames(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    .line 330
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 332
    .end local v2    # "pack":Ljava/lang/String;
    goto :goto_0

    .line 334
    :cond_0
    iget-boolean v2, p0, Lbsh/classpath/BshClassPath;->nameCompletionIncludesUnqNames:Z

    if-eqz v2, :cond_1

    .line 335
    invoke-direct {p0}, Lbsh/classpath/BshClassPath;->getUnqualifiedNameTable()Lbsh/classpath/BshClassPath$UnqualifiedNameTable;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/classpath/BshClassPath$UnqualifiedNameTable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 337
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public getClassNameByUnqName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->insureInitialized()V

    .line 281
    invoke-direct {p0}, Lbsh/classpath/BshClassPath;->getUnqualifiedNameTable()Lbsh/classpath/BshClassPath$UnqualifiedNameTable;

    move-result-object v0

    .line 283
    .local v0, "unqNameTable":Lbsh/classpath/BshClassPath$UnqualifiedNameTable;
    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath$UnqualifiedNameTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 284
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lbsh/classpath/BshClassPath$AmbiguousName;

    if-nez v2, :cond_0

    .line 288
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 285
    :cond_0
    new-instance v2, Lbsh/ClassPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ambigous class names: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lbsh/classpath/BshClassPath$AmbiguousName;

    .line 286
    invoke-virtual {v4}, Lbsh/classpath/BshClassPath$AmbiguousName;->get()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbsh/ClassPathException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public declared-synchronized getClassSource(Ljava/lang/String;)Lbsh/classpath/BshClassPath$ClassSource;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->classSource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/classpath/BshClassPath$ClassSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .local v0, "cs":Lbsh/classpath/BshClassPath$ClassSource;
    if-eqz v0, :cond_0

    .line 170
    monitor-exit p0

    return-object v0

    .line 172
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->insureInitialized()V

    .line 174
    iget-object v1, p0, Lbsh/classpath/BshClassPath;->classSource:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsh/classpath/BshClassPath$ClassSource;

    move-object v0, v1

    .line 175
    if-nez v0, :cond_1

    iget-object v1, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 176
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-nez v0, :cond_1

    .line 177
    iget-object v2, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsh/classpath/BshClassPath;

    invoke-virtual {v2, p1}, Lbsh/classpath/BshClassPath;->getClassSource(Ljava/lang/String;)Lbsh/classpath/BshClassPath$ClassSource;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "i":I
    .end local p0    # "this":Lbsh/classpath/BshClassPath;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 167
    .end local v0    # "cs":Lbsh/classpath/BshClassPath$ClassSource;
    .end local p1    # "className":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getClassesForPackage(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .param p1, "pack"    # Ljava/lang/String;

    monitor-enter p0

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->insureInitialized()V

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 145
    .local v0, "set":Ljava/util/Set;
    iget-object v1, p0, Lbsh/classpath/BshClassPath;->packageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 146
    .local v1, "c":Ljava/util/Collection;
    if-eqz v1, :cond_0

    .line 147
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 149
    .end local p0    # "this":Lbsh/classpath/BshClassPath;
    :cond_0
    iget-object v2, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 150
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 151
    iget-object v3, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbsh/classpath/BshClassPath;

    invoke-virtual {v3, p1}, Lbsh/classpath/BshClassPath;->getClassesForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    move-object v1, v3

    .line 153
    if-eqz v1, :cond_1

    .line 154
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v2    # "i":I
    :cond_2
    monitor-exit p0

    return-object v0

    .line 142
    .end local v0    # "set":Ljava/util/Set;
    .end local v1    # "c":Ljava/util/Collection;
    .end local p1    # "pack":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getFullPath()Ljava/util/List;
    .locals 6

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v0, "list":Ljava/util/List;
    iget-object v1, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 254
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 255
    iget-object v2, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsh/classpath/BshClassPath;

    invoke-virtual {v2}, Lbsh/classpath/BshClassPath;->getFullPath()Ljava/util/List;

    move-result-object v2

    .line 258
    .local v2, "l":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 259
    .local v3, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 261
    .local v4, "o":Ljava/lang/Object;
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 262
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v4    # "o":Ljava/lang/Object;
    :cond_0
    goto :goto_1

    .line 254
    .end local v2    # "l":Ljava/util/List;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lbsh/classpath/BshClassPath;->path:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    return-object v0
.end method

.method public getPackagesSet()Ljava/util/Set;
    .locals 3

    .line 601
    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->insureInitialized()V

    .line 602
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 603
    .local v0, "set":Ljava/util/Set;
    iget-object v1, p0, Lbsh/classpath/BshClassPath;->packageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 605
    iget-object v1, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 606
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 607
    iget-object v2, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    .line 608
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsh/classpath/BshClassPath;

    iget-object v2, v2, Lbsh/classpath/BshClassPath;->packageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 607
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 606
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getPathComponents()[Ljava/net/URL;
    .locals 2

    .line 135
    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->getFullPath()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/net/URL;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    check-cast v0, [Ljava/net/URL;

    return-object v0
.end method

.method public insureInitialized()V
    .locals 1

    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/classpath/BshClassPath;->insureInitialized(Z)V

    .line 217
    return-void
.end method

.method protected declared-synchronized insureInitialized(Z)V
    .locals 3
    .param p1, "topPath"    # Z

    monitor-enter p0

    .line 227
    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lbsh/classpath/BshClassPath;->mapsInitialized:Z

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->startClassMapping()V

    .line 231
    .end local p0    # "this":Lbsh/classpath/BshClassPath;
    :cond_0
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 233
    iget-object v2, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsh/classpath/BshClassPath;

    invoke-virtual {v2, v1}, Lbsh/classpath/BshClassPath;->insureInitialized(Z)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "i":I
    :cond_1
    iget-boolean v0, p0, Lbsh/classpath/BshClassPath;->mapsInitialized:Z

    if-nez v0, :cond_2

    .line 237
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->path:Ljava/util/List;

    new-array v1, v1, [Ljava/net/URL;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    check-cast v0, [Ljava/net/URL;

    invoke-virtual {p0, v0}, Lbsh/classpath/BshClassPath;->map([Ljava/net/URL;)V

    .line 239
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lbsh/classpath/BshClassPath;->mapsInitialized:Z

    if-nez v0, :cond_3

    .line 240
    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->endClassMapping()V

    .line 242
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/classpath/BshClassPath;->mapsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 226
    .end local p1    # "topPath":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized map(Ljava/net/URL;)V
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 357
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbsh/classpath/BshClassPath;->classMapping(Ljava/lang/String;)V

    .line 362
    invoke-static {v1}, Lbsh/classpath/BshClassPath;->traverseDirForClasses(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbsh/classpath/BshClassPath$DirClassSource;

    invoke-direct {v3, v1}, Lbsh/classpath/BshClassPath$DirClassSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2, v3}, Lbsh/classpath/BshClassPath;->map([Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 363
    .end local p0    # "this":Lbsh/classpath/BshClassPath;
    :cond_0
    invoke-static {v0}, Lbsh/classpath/BshClassPath;->isArchiveFileName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Archive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbsh/classpath/BshClassPath;->classMapping(Ljava/lang/String;)V

    .line 365
    invoke-static {p1}, Lbsh/classpath/BshClassPath;->searchJarForClasses(Ljava/net/URL;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbsh/classpath/BshClassPath$JarClassSource;

    invoke-direct {v3, p1}, Lbsh/classpath/BshClassPath$JarClassSource;-><init>(Ljava/net/URL;)V

    invoke-direct {p0, v2, v3}, Lbsh/classpath/BshClassPath;->map([Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 372
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a classpath component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lbsh/classpath/BshClassPath;->errorWhileMapping(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 356
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "f":Ljava/io/File;
    .end local p1    # "url":Ljava/net/URL;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized map([Ljava/net/URL;)V
    .locals 4
    .param p1, "urls"    # [Ljava/net/URL;

    monitor-enter p0

    .line 345
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_0

    .line 347
    :try_start_1
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lbsh/classpath/BshClassPath;->map(Ljava/net/URL;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    goto :goto_1

    .line 348
    .end local p0    # "this":Lbsh/classpath/BshClassPath;
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error constructing classpath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lbsh/classpath/BshClassPath;->errorWhileMapping(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "s":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    .end local v0    # "i":I
    :cond_0
    monitor-exit p0

    return-void

    .line 344
    .end local p1    # "urls":[Ljava/net/URL;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method nameSpaceChanged()V
    .locals 3

    .line 801
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->nameSourceListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 802
    return-void

    .line 804
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lbsh/classpath/BshClassPath;->nameSourceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 805
    iget-object v1, p0, Lbsh/classpath/BshClassPath;->nameSourceListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsh/NameSource$Listener;

    move-object v2, v1

    check-cast v2, Lbsh/NameSource$Listener;

    .line 806
    invoke-interface {v1, p0}, Lbsh/NameSource$Listener;->nameSourceChanged(Lbsh/NameSource;)V

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 807
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method notifyListeners()V
    .locals 4

    .line 622
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 624
    .local v1, "wr":Ljava/lang/ref/WeakReference;
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsh/classpath/ClassPathListener;

    .line 625
    .local v2, "l":Lbsh/classpath/ClassPathListener;
    if-nez v2, :cond_0

    .line 626
    iget-object v3, p0, Lbsh/classpath/BshClassPath;->listeners:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_1

    .line 628
    :cond_0
    invoke-interface {v2}, Lbsh/classpath/ClassPathListener;->classPathChanged()V

    .line 629
    .end local v1    # "wr":Ljava/lang/ref/WeakReference;
    .end local v2    # "l":Lbsh/classpath/ClassPathListener;
    :goto_1
    goto :goto_0

    .line 630
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_1
    return-void
.end method

.method public removeListener(Lbsh/classpath/ClassPathListener;)V
    .locals 1
    .param p1, "l"    # Lbsh/classpath/ClassPathListener;

    .line 616
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 617
    return-void
.end method

.method public declared-synchronized setClassSource(Ljava/lang/String;Lbsh/classpath/BshClassPath$ClassSource;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "cs"    # Lbsh/classpath/BshClassPath$ClassSource;

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->classSource:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 187
    .end local p0    # "this":Lbsh/classpath/BshClassPath;
    .end local p1    # "className":Ljava/lang/String;
    .end local p2    # "cs":Lbsh/classpath/BshClassPath$ClassSource;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPath([Ljava/net/URL;)V
    .locals 0
    .param p1, "urls"    # [Ljava/net/URL;

    .line 104
    invoke-direct {p0}, Lbsh/classpath/BshClassPath;->reset()V

    .line 105
    invoke-virtual {p0, p1}, Lbsh/classpath/BshClassPath;->add([Ljava/net/URL;)V

    .line 106
    return-void
.end method

.method startClassMapping()V
    .locals 2

    .line 833
    sget-object v0, Lbsh/classpath/BshClassPath;->mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

    if-eqz v0, :cond_0

    .line 834
    invoke-interface {v0}, Lbsh/classpath/BshClassPath$MappingFeedback;->startClassMapping()V

    goto :goto_0

    .line 836
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Start ClassPath Mapping"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 837
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BshClassPath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/classpath/BshClassPath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") path= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/classpath/BshClassPath;->path:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "compPaths = {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
