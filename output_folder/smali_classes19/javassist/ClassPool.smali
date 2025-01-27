.class public Ljavassist/ClassPool;
.super Ljava/lang/Object;
.source "ClassPool.java"


# static fields
.field private static final COMPRESS_THRESHOLD:I = 0x64

.field private static final INIT_HASH_SIZE:I = 0xbf

.field public static cacheOpenedJarFile:Z

.field private static defaultPool:Ljavassist/ClassPool;

.field public static doPruning:Z

.field public static releaseUnmodifiedClassFile:Z


# instance fields
.field private cflow:Ljava/util/Hashtable;

.field public childFirstLookup:Z

.field protected classes:Ljava/util/Hashtable;

.field private compressCount:I

.field private importedPackages:Ljava/util/ArrayList;

.field protected parent:Ljavassist/ClassPool;

.field protected source:Ljavassist/ClassPoolTail;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Ljavassist/ClassPool;->doPruning:Z

    .line 114
    const/4 v0, 0x1

    sput-boolean v0, Ljavassist/ClassPool;->releaseUnmodifiedClassFile:Z

    .line 122
    sput-boolean v0, Ljavassist/ClassPool;->cacheOpenedJarFile:Z

    .line 215
    const/4 v0, 0x0

    sput-object v0, Ljavassist/ClassPool;->defaultPool:Ljavassist/ClassPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/ClassPool;-><init>(Ljavassist/ClassPool;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljavassist/ClassPool;)V
    .locals 7
    .param p1, "parent"    # Ljavassist/ClassPool;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavassist/ClassPool;->childFirstLookup:Z

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Ljavassist/ClassPool;->cflow:Ljava/util/Hashtable;

    .line 167
    new-instance v2, Ljava/util/Hashtable;

    const/16 v3, 0xbf

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v2, p0, Ljavassist/ClassPool;->classes:Ljava/util/Hashtable;

    .line 168
    new-instance v2, Ljavassist/ClassPoolTail;

    invoke-direct {v2}, Ljavassist/ClassPoolTail;-><init>()V

    iput-object v2, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    .line 169
    iput-object p1, p0, Ljavassist/ClassPool;->parent:Ljavassist/ClassPool;

    .line 170
    if-nez p1, :cond_0

    .line 171
    sget-object v2, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    .line 172
    .local v2, "pt":[Ljavassist/CtClass;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 173
    iget-object v4, p0, Ljavassist/ClassPool;->classes:Ljava/util/Hashtable;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "pt":[Ljavassist/CtClass;
    .end local v3    # "i":I
    :cond_0
    iput-object v1, p0, Ljavassist/ClassPool;->cflow:Ljava/util/Hashtable;

    .line 177
    iput v0, p0, Ljavassist/ClassPool;->compressCount:I

    .line 178
    invoke-virtual {p0}, Ljavassist/ClassPool;->clearImportedPackages()V

    .line 179
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "useDefaultPath"    # Z

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/ClassPool;-><init>(Ljavassist/ClassPool;)V

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p0}, Ljavassist/ClassPool;->appendSystemPath()Ljavassist/ClassPath;

    .line 157
    :cond_0
    return-void
.end method

.method static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDefault()Ljavassist/ClassPool;
    .locals 3

    const-class v0, Ljavassist/ClassPool;

    monitor-enter v0

    .line 207
    :try_start_0
    sget-object v1, Ljavassist/ClassPool;->defaultPool:Ljavassist/ClassPool;

    if-nez v1, :cond_0

    .line 208
    new-instance v1, Ljavassist/ClassPool;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavassist/ClassPool;-><init>(Ljavassist/ClassPool;)V

    sput-object v1, Ljavassist/ClassPool;->defaultPool:Ljavassist/ClassPool;

    .line 209
    invoke-virtual {v1}, Ljavassist/ClassPool;->appendSystemPath()Ljavassist/ClassPath;

    .line 212
    :cond_0
    sget-object v1, Ljavassist/ClassPool;->defaultPool:Ljavassist/ClassPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public appendClassPath(Ljava/lang/String;)Ljavassist/ClassPath;
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 982
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0, p1}, Ljavassist/ClassPoolTail;->appendClassPath(Ljava/lang/String;)Ljavassist/ClassPath;

    move-result-object v0

    return-object v0
.end method

.method public appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;
    .locals 1
    .param p1, "cp"    # Ljavassist/ClassPath;

    .line 946
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0, p1}, Ljavassist/ClassPoolTail;->appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    move-result-object v0

    return-object v0
.end method

.method public appendPathList(Ljava/lang/String;)V
    .locals 4
    .param p1, "pathlist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1007
    sget-char v0, Ljava/io/File;->pathSeparatorChar:C

    .line 1008
    .local v0, "sep":C
    const/4 v1, 0x0

    .line 1010
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1011
    .local v2, "j":I
    if-gez v2, :cond_0

    .line 1012
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljavassist/ClassPool;->appendClassPath(Ljava/lang/String;)Ljavassist/ClassPath;

    .line 1013
    nop

    .line 1020
    .end local v2    # "j":I
    return-void

    .line 1016
    .restart local v2    # "j":I
    :cond_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljavassist/ClassPool;->appendClassPath(Ljava/lang/String;)Ljavassist/ClassPath;

    .line 1017
    add-int/lit8 v1, v2, 0x1

    .line 1019
    .end local v2    # "j":I
    goto :goto_0
.end method

.method public appendSystemPath()Ljavassist/ClassPath;
    .locals 1

    .line 920
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0}, Ljavassist/ClassPoolTail;->appendSystemPath()Ljavassist/ClassPath;

    move-result-object v0

    return-object v0
.end method

.method protected cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "c"    # Ljavassist/CtClass;
    .param p3, "dynamic"    # Z

    .line 236
    iget-object v0, p0, Ljavassist/ClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void
.end method

.method checkNotExists(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 3
    .param p1, "classname"    # Ljava/lang/String;

    .line 606
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->getCached(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 607
    .local v0, "clazz":Ljavassist/CtClass;
    if-nez v0, :cond_0

    .line 608
    iget-boolean v1, p0, Ljavassist/ClassPool;->childFirstLookup:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ljavassist/ClassPool;->parent:Ljavassist/ClassPool;

    if-eqz v1, :cond_0

    .line 610
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Ljavassist/ClassPool;->get0(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 612
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 615
    :cond_0
    :goto_1
    return-object v0
.end method

.method checkNotFrozen(Ljava/lang/String;)V
    .locals 4
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 581
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->getCached(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 582
    .local v0, "clazz":Ljavassist/CtClass;
    if-nez v0, :cond_1

    .line 583
    iget-boolean v1, p0, Ljavassist/ClassPool;->childFirstLookup:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ljavassist/ClassPool;->parent:Ljavassist/ClassPool;

    if-eqz v1, :cond_2

    .line 585
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Ljavassist/ClassPool;->get0(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 587
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 588
    if-nez v0, :cond_0

    goto :goto_1

    .line 589
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in a parent ClassPool.  Use the parent."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    :cond_1
    invoke-virtual {v0}, Ljavassist/CtClass;->isFrozen()Z

    move-result v1

    if-nez v1, :cond_3

    .line 597
    :cond_2
    :goto_1
    return-void

    .line 595
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": frozen class (cannot edit)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method declared-synchronized classNameChanged(Ljava/lang/String;Ljavassist/CtClass;)V
    .locals 3
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljavassist/CtClass;

    monitor-enter p0

    .line 397
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->getCached(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 398
    .local v0, "c":Ljavassist/CtClass;
    if-ne v0, p2, :cond_0

    .line 399
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->removeCached(Ljava/lang/String;)Ljavassist/CtClass;

    .line 401
    .end local p0    # "this":Ljavassist/ClassPool;
    :cond_0
    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "newName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljavassist/ClassPool;->checkNotFrozen(Ljava/lang/String;)V

    .line 403
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    .line 396
    .end local v0    # "c":Ljavassist/CtClass;
    .end local v1    # "newName":Ljava/lang/String;
    .end local p1    # "oldname":Ljava/lang/String;
    .end local p2    # "clazz":Ljavassist/CtClass;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearImportedPackages()V
    .locals 2

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/ClassPool;->importedPackages:Ljava/util/ArrayList;

    .line 300
    const-string v1, "java.lang"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method compress()V
    .locals 2

    .line 262
    iget v0, p0, Ljavassist/ClassPool;->compressCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/ClassPool;->compressCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/ClassPool;->compressCount:I

    .line 264
    iget-object v0, p0, Ljavassist/ClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 265
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->compress()V

    goto :goto_0

    .line 268
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_0
    return-void
.end method

.method protected createCtClass(Ljava/lang/String;Z)Ljavassist/CtClass;
    .locals 4
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "useCache"    # Z

    .line 542
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 543
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->toClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 545
    :cond_0
    const-string v1, "[]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 546
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "base":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Ljavassist/ClassPool;->getCached(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Ljavassist/ClassPool;->find(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_2

    .line 548
    return-object v3

    .line 550
    :cond_2
    new-instance v1, Ljavassist/CtArray;

    invoke-direct {v1, p1, p0}, Ljavassist/CtArray;-><init>(Ljava/lang/String;Ljavassist/ClassPool;)V

    return-object v1

    .line 553
    .end local v0    # "base":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->find(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_4

    .line 554
    return-object v3

    .line 556
    :cond_4
    new-instance v0, Ljavassist/CtClassType;

    invoke-direct {v0, p1, p0}, Ljavassist/CtClassType;-><init>(Ljava/lang/String;Ljavassist/ClassPool;)V

    return-object v0
.end method

.method public find(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;

    .line 569
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0, p1}, Ljavassist/ClassPoolTail;->find(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 2
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 424
    if-nez p1, :cond_0

    .line 425
    const/4 v0, 0x0

    .local v0, "clazz":Ljavassist/CtClass;
    goto :goto_0

    .line 427
    .end local v0    # "clazz":Ljavassist/CtClass;
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljavassist/ClassPool;->get0(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0

    .line 429
    .restart local v0    # "clazz":Ljavassist/CtClass;
    :goto_0
    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {v0}, Ljavassist/CtClass;->incGetCounter()V

    .line 433
    return-object v0

    .line 430
    :cond_1
    new-instance v1, Ljavassist/NotFoundException;

    invoke-direct {v1, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get([Ljava/lang/String;)[Ljavassist/CtClass;
    .locals 4
    .param p1, "classnames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 642
    if-nez p1, :cond_0

    .line 643
    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/CtClass;

    return-object v0

    .line 645
    :cond_0
    array-length v0, p1

    .line 646
    .local v0, "num":I
    new-array v1, v0, [Ljavassist/CtClass;

    .line 647
    .local v1, "result":[Ljavassist/CtClass;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 648
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3

    aput-object v3, v1, v2

    .line 647
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 650
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method protected declared-synchronized get0(Ljava/lang/String;Z)Ljavassist/CtClass;
    .locals 3
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "clazz":Ljavassist/CtClass;
    if-eqz p2, :cond_0

    .line 507
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->getCached(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 508
    if-eqz v0, :cond_0

    .line 509
    monitor-exit p0

    return-object v0

    .line 512
    .end local p0    # "this":Ljavassist/ClassPool;
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Ljavassist/ClassPool;->childFirstLookup:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Ljavassist/ClassPool;->parent:Ljavassist/ClassPool;

    if-eqz v1, :cond_1

    .line 513
    invoke-virtual {v1, p1, p2}, Ljavassist/ClassPool;->get0(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 514
    if-eqz v0, :cond_1

    .line 515
    monitor-exit p0

    return-object v0

    .line 518
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2}, Ljavassist/ClassPool;->createCtClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v1

    move-object v0, v1

    .line 519
    if-eqz v0, :cond_3

    .line 521
    if-eqz p2, :cond_2

    .line 522
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 524
    :cond_2
    monitor-exit p0

    return-object v0

    .line 527
    :cond_3
    :try_start_3
    iget-boolean v1, p0, Ljavassist/ClassPool;->childFirstLookup:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljavassist/ClassPool;->parent:Ljavassist/ClassPool;

    if-eqz v1, :cond_4

    .line 528
    invoke-virtual {v1, p1, p2}, Ljavassist/ClassPool;->get0(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    .line 530
    :cond_4
    monitor-exit p0

    return-object v0

    .line 504
    .end local v0    # "clazz":Ljavassist/CtClass;
    .end local p1    # "classname":Ljava/lang/String;
    .end local p2    # "useCache":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAndRename(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtClass;
    .locals 2
    .param p1, "orgName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 379
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavassist/ClassPool;->get0(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0

    .line 380
    .local v0, "clazz":Ljavassist/CtClass;
    if-eqz v0, :cond_1

    .line 383
    instance-of v1, v0, Ljavassist/CtClassType;

    if-eqz v1, :cond_0

    .line 384
    move-object v1, v0

    check-cast v1, Ljavassist/CtClassType;

    invoke-virtual {v1, p0}, Ljavassist/CtClassType;->setClassPool(Ljavassist/ClassPool;)V

    .line 386
    :cond_0
    invoke-virtual {v0, p2}, Ljavassist/CtClass;->setName(Ljava/lang/String;)V

    .line 388
    return-object v0

    .line 381
    :cond_1
    new-instance v1, Ljavassist/NotFoundException;

    invoke-direct {v1, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getCached(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;

    .line 225
    iget-object v0, p0, Ljavassist/ClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/CtClass;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1070
    invoke-static {}, Ljavassist/ClassPool;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getCtClass(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 2
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 492
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 493
    invoke-static {p1, p0}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0

    .line 495
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public getImportedPackages()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Ljavassist/ClassPool;->importedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 2
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "methodname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 663
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 664
    .local v0, "c":Ljavassist/CtClass;
    invoke-virtual {v0, p2}, Ljavassist/CtClass;->getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v1

    return-object v1
.end method

.method public getOrNull(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 2
    .param p1, "classname"    # Ljava/lang/String;

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, "clazz":Ljavassist/CtClass;
    if-nez p1, :cond_0

    .line 454
    const/4 v0, 0x0

    goto :goto_1

    .line 461
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Ljavassist/ClassPool;->get0(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 463
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 465
    :goto_1
    if-eqz v0, :cond_1

    .line 466
    invoke-virtual {v0}, Ljavassist/CtClass;->incGetCounter()V

    .line 468
    :cond_1
    return-object v0
.end method

.method public importPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 288
    iget-object v0, p0, Ljavassist/ClassPool;->importedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method public insertClassPath(Ljava/lang/String;)Ljavassist/ClassPath;
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 964
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0, p1}, Ljavassist/ClassPoolTail;->insertClassPath(Ljava/lang/String;)Ljavassist/ClassPath;

    move-result-object v0

    return-object v0
.end method

.method public insertClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;
    .locals 1
    .param p1, "cp"    # Ljavassist/ClassPath;

    .line 933
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0, p1}, Ljavassist/ClassPoolTail;->insertClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    move-result-object v0

    return-object v0
.end method

.method public lookupCflow(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 352
    iget-object v0, p0, Ljavassist/ClassPool;->cflow:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavassist/ClassPool;->cflow:Ljava/util/Hashtable;

    .line 355
    :cond_0
    iget-object v0, p0, Ljavassist/ClassPool;->cflow:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public makeAnnotation(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 899
    :try_start_0
    const-string v0, "java.lang.annotation.Annotation"

    invoke-virtual {p0, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljavassist/ClassPool;->makeInterface(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v0

    .line 900
    .local v0, "cc":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->getModifiers()I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Ljavassist/CtClass;->setModifiers(I)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    return-object v0

    .line 903
    .end local v0    # "cc":Ljavassist/CtClass;
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljavassist/NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public makeClass(Ljava/io/InputStream;)Ljavassist/CtClass;
    .locals 1
    .param p1, "classfile"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 685
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljavassist/ClassPool;->makeClass(Ljava/io/InputStream;Z)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public makeClass(Ljava/io/InputStream;Z)Ljavassist/CtClass;
    .locals 3
    .param p1, "classfile"    # Ljava/io/InputStream;
    .param p2, "ifNotFrozen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 705
    invoke-virtual {p0}, Ljavassist/ClassPool;->compress()V

    .line 706
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 707
    new-instance v0, Ljavassist/CtClassType;

    invoke-direct {v0, p1, p0}, Ljavassist/CtClassType;-><init>(Ljava/io/InputStream;Ljavassist/ClassPool;)V

    .line 708
    .local v0, "clazz":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 709
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, "classname":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 711
    invoke-virtual {p0, v1}, Ljavassist/ClassPool;->checkNotFrozen(Ljava/lang/String;)V

    .line 713
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V

    .line 714
    return-object v0
.end method

.method public makeClass(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 814
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavassist/ClassPool;->makeClass(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized makeClass(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtClass;
    .locals 2
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "superclass"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    monitor-enter p0

    .line 837
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->checkNotFrozen(Ljava/lang/String;)V

    .line 838
    new-instance v0, Ljavassist/CtNewClass;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1, p2}, Ljavassist/CtNewClass;-><init>(Ljava/lang/String;Ljavassist/ClassPool;ZLjavassist/CtClass;)V

    .line 839
    .local v0, "clazz":Ljavassist/CtClass;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    monitor-exit p0

    return-object v0

    .line 836
    .end local v0    # "clazz":Ljavassist/CtClass;
    .end local p0    # "this":Ljavassist/ClassPool;
    .end local p1    # "classname":Ljava/lang/String;
    .end local p2    # "superclass":Ljavassist/CtClass;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public makeClass(Ljavassist/bytecode/ClassFile;)Ljavassist/CtClass;
    .locals 1
    .param p1, "classfile"    # Ljavassist/bytecode/ClassFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 734
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljavassist/ClassPool;->makeClass(Ljavassist/bytecode/ClassFile;Z)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public makeClass(Ljavassist/bytecode/ClassFile;Z)Ljavassist/CtClass;
    .locals 3
    .param p1, "classfile"    # Ljavassist/bytecode/ClassFile;
    .param p2, "ifNotFrozen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 754
    invoke-virtual {p0}, Ljavassist/ClassPool;->compress()V

    .line 755
    new-instance v0, Ljavassist/CtClassType;

    invoke-direct {v0, p1, p0}, Ljavassist/CtClassType;-><init>(Ljavassist/bytecode/ClassFile;Ljavassist/ClassPool;)V

    .line 756
    .local v0, "clazz":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 757
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, "classname":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 759
    invoke-virtual {p0, v1}, Ljavassist/ClassPool;->checkNotFrozen(Ljava/lang/String;)V

    .line 761
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V

    .line 762
    return-object v0
.end method

.method public makeClassIfNew(Ljava/io/InputStream;)Ljavassist/CtClass;
    .locals 4
    .param p1, "classfile"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 783
    invoke-virtual {p0}, Ljavassist/ClassPool;->compress()V

    .line 784
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 785
    new-instance v0, Ljavassist/CtClassType;

    invoke-direct {v0, p1, p0}, Ljavassist/CtClassType;-><init>(Ljava/io/InputStream;Ljavassist/ClassPool;)V

    .line 786
    .local v0, "clazz":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 787
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    .line 788
    .local v1, "classname":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljavassist/ClassPool;->checkNotExists(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2

    .line 789
    .local v2, "found":Ljavassist/CtClass;
    if-eqz v2, :cond_0

    .line 790
    return-object v2

    .line 792
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v3}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V

    .line 793
    return-object v0
.end method

.method public makeInterface(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 866
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavassist/ClassPool;->makeInterface(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized makeInterface(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtClass;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "superclass"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    monitor-enter p0

    .line 881
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->checkNotFrozen(Ljava/lang/String;)V

    .line 882
    new-instance v0, Ljavassist/CtNewClass;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1, p2}, Ljavassist/CtNewClass;-><init>(Ljava/lang/String;Ljavassist/ClassPool;ZLjavassist/CtClass;)V

    .line 883
    .local v0, "clazz":Ljavassist/CtClass;
    invoke-virtual {p0, p1, v0, v1}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    monitor-exit p0

    return-object v0

    .line 880
    .end local v0    # "clazz":Ljavassist/CtClass;
    .end local p0    # "this":Ljavassist/ClassPool;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "superclass":Ljavassist/CtClass;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized makeNestedClass(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 3
    .param p1, "classname"    # Ljava/lang/String;

    monitor-enter p0

    .line 851
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->checkNotFrozen(Ljava/lang/String;)V

    .line 852
    new-instance v0, Ljavassist/CtNewClass;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Ljavassist/CtNewClass;-><init>(Ljava/lang/String;Ljavassist/ClassPool;ZLjavassist/CtClass;)V

    .line 853
    .local v0, "clazz":Ljavassist/CtClass;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    monitor-exit p0

    return-object v0

    .line 850
    .end local v0    # "clazz":Ljavassist/CtClass;
    .end local p0    # "this":Ljavassist/ClassPool;
    .end local p1    # "classname":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public makePackage(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1271
    invoke-static {p2, p1}, Ljavassist/util/proxy/DefinePackageHelper;->definePackage(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1272
    return-void
.end method

.method openClassfile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0, p1}, Ljavassist/ClassPoolTail;->openClassfile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method recordCflow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cname"    # Ljava/lang/String;
    .param p3, "fname"    # Ljava/lang/String;

    .line 340
    iget-object v0, p0, Ljavassist/ClassPool;->cflow:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavassist/ClassPool;->cflow:Ljava/util/Hashtable;

    .line 343
    :cond_0
    iget-object v0, p0, Ljavassist/ClassPool;->cflow:Ljava/util/Hashtable;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    return-void
.end method

.method public recordInvalidClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 329
    return-void
.end method

.method protected removeCached(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;

    .line 247
    iget-object v0, p0, Ljavassist/ClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/CtClass;

    return-object v0
.end method

.method public removeClassPath(Ljavassist/ClassPath;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/ClassPath;

    .line 991
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0, p1}, Ljavassist/ClassPoolTail;->removeClassPath(Ljavassist/ClassPath;)V

    .line 992
    return-void
.end method

.method public toClass(Ljavassist/CtClass;)Ljava/lang/Class;
    .locals 1
    .param p1, "clazz"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1056
    invoke-virtual {p0}, Ljavassist/ClassPool;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljavassist/ClassPool;->toClass(Ljavassist/CtClass;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public toClass(Ljavassist/CtClass;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .param p1, "ct"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/CtClass;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1158
    .local p2, "neighbor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 1159
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->toBytecode()[B

    move-result-object v0

    .line 1158
    invoke-static {p2, v0}, Ljavassist/util/proxy/DefineClassHelper;->toClass(Ljava/lang/Class;[B)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toClass(Ljavassist/CtClass;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 2
    .param p1, "ct"    # Ljavassist/CtClass;
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .param p4, "domain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/CtClass;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1240
    .local p2, "neighbor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1241
    invoke-virtual {p1}, Ljavassist/CtClass;->toBytecode()[B

    move-result-object v1

    .line 1240
    invoke-static {v0, p2, p3, p4, v1}, Ljavassist/util/proxy/DefineClassHelper;->toClass(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;[B)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1243
    :catch_0
    move-exception v0

    .line 1244
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toClass(Ljavassist/CtClass;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p1, "ct"    # Ljavassist/CtClass;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1098
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Ljavassist/ClassPool;->toClass(Ljavassist/CtClass;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public toClass(Ljavassist/CtClass;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 1
    .param p1, "ct"    # Ljavassist/CtClass;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "domain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Ljavassist/ClassPool;->toClass(Ljavassist/CtClass;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public toClass(Ljavassist/CtClass;Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;
    .locals 2
    .param p1, "ct"    # Ljavassist/CtClass;
    .param p2, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/CtClass;",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1184
    nop

    .line 1185
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->toBytecode()[B

    move-result-object v0

    .line 1184
    invoke-static {p2, v0}, Ljavassist/util/proxy/DefineClassHelper;->toClass(Ljava/lang/invoke/MethodHandles$Lookup;[B)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0}, Ljavassist/ClassPoolTail;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeClassfile(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;,
            Ljava/io/IOException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 627
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0, p1, p2}, Ljavassist/ClassPoolTail;->writeClassfile(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 628
    return-void
.end method
