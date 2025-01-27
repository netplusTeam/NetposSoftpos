.class public Lbsh/classpath/ClassManagerImpl;
.super Lbsh/BshClassManager;
.source "ClassManagerImpl.java"


# static fields
.field static final BSH_PACKAGE:Ljava/lang/String; = "bsh"


# instance fields
.field private baseClassPath:Lbsh/classpath/BshClassPath;

.field private baseLoader:Lbsh/classpath/BshClassLoader;

.field private fullClassPath:Lbsh/classpath/BshClassPath;

.field private listeners:Ljava/util/Vector;

.field private loaderMap:Ljava/util/Map;

.field private refQueue:Ljava/lang/ref/ReferenceQueue;

.field private superImport:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Lbsh/BshClassManager;-><init>()V

    .line 117
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/classpath/ClassManagerImpl;->listeners:Ljava/util/Vector;

    .line 118
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lbsh/classpath/ClassManagerImpl;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 137
    invoke-virtual {p0}, Lbsh/classpath/ClassManagerImpl;->reset()V

    .line 138
    return-void
.end method

.method private initBaseLoader()V
    .locals 2

    .line 330
    new-instance v0, Lbsh/classpath/BshClassLoader;

    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    invoke-direct {v0, p0, v1}, Lbsh/classpath/BshClassLoader;-><init>(Lbsh/BshClassManager;Lbsh/classpath/BshClassPath;)V

    iput-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    .line 331
    return-void
.end method


# virtual methods
.method public addClassPath(Ljava/net/URL;)V
    .locals 2
    .param p1, "path"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    if-nez v0, :cond_0

    .line 280
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/URL;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lbsh/classpath/ClassManagerImpl;->setClassPath([Ljava/net/URL;)V

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassLoader;->addURL(Ljava/net/URL;)V

    .line 284
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath;->add(Ljava/net/URL;)V

    .line 285
    invoke-virtual {p0}, Lbsh/classpath/ClassManagerImpl;->classLoaderChanged()V

    .line 287
    :goto_0
    return-void
.end method

.method public addListener(Lbsh/BshClassManager$Listener;)V
    .locals 4
    .param p1, "l"    # Lbsh/BshClassManager$Listener;

    .line 486
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->listeners:Ljava/util/Vector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lbsh/classpath/ClassManagerImpl;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 490
    :goto_0
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "deadref":Ljava/lang/ref/Reference;
    if-eqz v0, :cond_2

    .line 491
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    .line 492
    .local v0, "ok":Z
    if-eqz v0, :cond_0

    goto :goto_1

    .line 495
    :cond_0
    sget-boolean v2, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tried to remove non-existent weak ref: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 498
    .end local v0    # "ok":Z
    :cond_1
    :goto_1
    goto :goto_0

    .line 499
    :cond_2
    return-void
.end method

.method public classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->absoluteClassCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 147
    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 148
    return-object v0

    .line 151
    :cond_0
    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->absoluteNonClasses:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 152
    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "absoluteNonClass list hit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 154
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 157
    :cond_2
    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to load class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 161
    :cond_3
    invoke-virtual {p0, p1}, Lbsh/classpath/ClassManagerImpl;->getLoaderForClass(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 162
    .local v1, "overlayLoader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_4

    .line 165
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 171
    :goto_0
    goto :goto_1

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e2":Ljava/lang/NoClassDefFoundError;
    invoke-static {p1, v2}, Lbsh/classpath/ClassManagerImpl;->noClassDefFound(Ljava/lang/String;Ljava/lang/Error;)Ljava/lang/Error;

    move-result-object v3

    throw v3

    .line 166
    .end local v2    # "e2":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 178
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 179
    const-string v2, "bsh"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 181
    :try_start_1
    const-class v2, Lbsh/Interpreter;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v2

    .line 182
    :goto_2
    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_2

    .line 186
    :cond_5
    :goto_3
    if-nez v0, :cond_6

    .line 187
    iget-object v2, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    if-eqz v2, :cond_6

    .line 189
    :try_start_2
    invoke-virtual {v2, p1}, Lbsh/classpath/BshClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v2

    .line 190
    :goto_4
    goto :goto_5

    :catch_3
    move-exception v2

    goto :goto_4

    .line 194
    :cond_6
    :goto_5
    if-nez v0, :cond_7

    .line 195
    iget-object v2, p0, Lbsh/classpath/ClassManagerImpl;->externalClassLoader:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_7

    .line 197
    :try_start_3
    iget-object v2, p0, Lbsh/classpath/ClassManagerImpl;->externalClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v0, v2

    .line 198
    :goto_6
    goto :goto_7

    :catch_4
    move-exception v2

    goto :goto_6

    .line 205
    :cond_7
    :goto_7
    if-nez v0, :cond_9

    .line 209
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 210
    .local v2, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_8

    .line 211
    const/4 v3, 0x1

    invoke-static {p1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5

    move-object v0, v3

    .line 213
    .end local v2    # "contextClassLoader":Ljava/lang/ClassLoader;
    :cond_8
    :goto_8
    goto :goto_9

    :catch_5
    move-exception v2

    goto :goto_8

    .line 212
    :catch_6
    move-exception v2

    goto :goto_8

    .line 217
    :cond_9
    :goto_9
    if-nez v0, :cond_a

    .line 219
    :try_start_5
    invoke-virtual {p0, p1}, Lbsh/classpath/ClassManagerImpl;->plainClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_7

    move-object v0, v2

    .line 220
    :goto_a
    goto :goto_b

    :catch_7
    move-exception v2

    goto :goto_a

    .line 223
    :cond_a
    :goto_b
    if-nez v0, :cond_b

    .line 224
    invoke-virtual {p0, p1}, Lbsh/classpath/ClassManagerImpl;->loadSourceClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 229
    :cond_b
    invoke-virtual {p0, p1, v0}, Lbsh/classpath/ClassManagerImpl;->cacheClassInfo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 231
    return-object v0
.end method

.method protected classLoaderChanged()V
    .locals 4

    .line 545
    invoke-virtual {p0}, Lbsh/classpath/ClassManagerImpl;->clearCaches()V

    .line 547
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 548
    .local v0, "toRemove":Ljava/util/Vector;
    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->listeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 550
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 551
    .local v2, "wr":Ljava/lang/ref/WeakReference;
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbsh/BshClassManager$Listener;

    .line 552
    .local v3, "l":Lbsh/BshClassManager$Listener;
    if-nez v3, :cond_0

    .line 553
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 555
    :cond_0
    invoke-interface {v3}, Lbsh/BshClassManager$Listener;->classLoaderChanged()V

    .line 556
    .end local v2    # "wr":Ljava/lang/ref/WeakReference;
    .end local v3    # "l":Lbsh/BshClassManager$Listener;
    :goto_1
    goto :goto_0

    .line 557
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .restart local v1    # "e":Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 558
    iget-object v2, p0, Lbsh/classpath/ClassManagerImpl;->listeners:Ljava/util/Vector;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_2

    .line 559
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_2
    return-void
.end method

.method public defineClass(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # [B

    .line 526
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    new-instance v1, Lbsh/classpath/BshClassPath$GeneratedClassSource;

    invoke-direct {v1, p2}, Lbsh/classpath/BshClassPath$GeneratedClassSource;-><init>([B)V

    invoke-virtual {v0, p1, v1}, Lbsh/classpath/BshClassPath;->setClassSource(Ljava/lang/String;Lbsh/classpath/BshClassPath$ClassSource;)V

    .line 528
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lbsh/classpath/ClassManagerImpl;->reloadClasses([Ljava/lang/String;)V
    :try_end_0
    .catch Lbsh/ClassPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    nop

    .line 532
    invoke-virtual {p0, p1}, Lbsh/classpath/ClassManagerImpl;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Lbsh/ClassPathException;
    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defineClass: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public doSuperImport()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 459
    :try_start_0
    invoke-virtual {p0}, Lbsh/classpath/ClassManagerImpl;->getClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/classpath/BshClassPath;->insureInitialized()V

    .line 461
    const-string v0, ""

    invoke-virtual {p0, v0}, Lbsh/classpath/ClassManagerImpl;->getClassNameByUnqName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lbsh/ClassPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    nop

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/classpath/ClassManagerImpl;->superImport:Z

    .line 471
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Lbsh/ClassPathException;
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error importing classpath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "i"    # Ljava/io/PrintWriter;

    .line 563
    const-string v0, "Bsh Class Manager Dump: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    const-string v0, "----------------------- "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseLoader = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loaderMap= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbsh/classpath/ClassManagerImpl;->loaderMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baseClassPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method public getBaseLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 506
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    return-object v0
.end method

.method public getClassNameByUnqName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Lbsh/classpath/ClassManagerImpl;->getClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath;->getClassNameByUnqName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassPath()Lbsh/classpath/BshClassPath;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->fullClassPath:Lbsh/classpath/BshClassPath;

    if-eqz v0, :cond_0

    .line 435
    return-object v0

    .line 437
    :cond_0
    new-instance v0, Lbsh/classpath/BshClassPath;

    const-string v1, "BeanShell Full Class Path"

    invoke-direct {v0, v1}, Lbsh/classpath/BshClassPath;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbsh/classpath/ClassManagerImpl;->fullClassPath:Lbsh/classpath/BshClassPath;

    .line 438
    invoke-static {}, Lbsh/classpath/BshClassPath;->getUserClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh/classpath/BshClassPath;->addComponent(Lbsh/classpath/BshClassPath;)V

    .line 440
    :try_start_0
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->fullClassPath:Lbsh/classpath/BshClassPath;

    invoke-static {}, Lbsh/classpath/BshClassPath;->getBootClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh/classpath/BshClassPath;->addComponent(Lbsh/classpath/BshClassPath;)V
    :try_end_0
    .catch Lbsh/ClassPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Lbsh/ClassPathException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Warning: can\'t get boot class path"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 444
    .end local v0    # "e":Lbsh/ClassPathException;
    :goto_0
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->fullClassPath:Lbsh/classpath/BshClassPath;

    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0, v1}, Lbsh/classpath/BshClassPath;->addComponent(Lbsh/classpath/BshClassPath;)V

    .line 446
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->fullClassPath:Lbsh/classpath/BshClassPath;

    return-object v0
.end method

.method getLoaderForClass(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->loaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "url":Ljava/net/URL;
    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    if-eqz v1, :cond_0

    .line 243
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbsh/classpath/BshClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 244
    :cond_0
    if-nez v0, :cond_1

    .line 245
    invoke-super {p0, p1}, Lbsh/BshClassManager;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 246
    :cond_1
    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "in":Ljava/io/InputStream;
    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    if-eqz v1, :cond_0

    .line 259
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbsh/classpath/BshClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 261
    :cond_0
    if-nez v0, :cond_1

    .line 263
    invoke-super {p0, p1}, Lbsh/BshClassManager;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 265
    :cond_1
    return-object v0
.end method

.method protected hasSuperImport()Z
    .locals 1

    .line 473
    iget-boolean v0, p0, Lbsh/classpath/ClassManagerImpl;->superImport:Z

    return v0
.end method

.method public reloadAllClasses()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    .line 320
    new-instance v0, Lbsh/classpath/BshClassPath;

    const-string/jumbo v1, "temp"

    invoke-direct {v0, v1}, Lbsh/classpath/BshClassPath;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "bcp":Lbsh/classpath/BshClassPath;
    iget-object v1, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0, v1}, Lbsh/classpath/BshClassPath;->addComponent(Lbsh/classpath/BshClassPath;)V

    .line 322
    invoke-static {}, Lbsh/classpath/BshClassPath;->getUserClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh/classpath/BshClassPath;->addComponent(Lbsh/classpath/BshClassPath;)V

    .line 323
    invoke-virtual {v0}, Lbsh/classpath/BshClassPath;->getPathComponents()[Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbsh/classpath/ClassManagerImpl;->setClassPath([Ljava/net/URL;)V

    .line 324
    return-void
.end method

.method public reloadClasses([Ljava/lang/String;)V
    .locals 7
    .param p1, "classNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    if-nez v0, :cond_0

    .line 347
    invoke-direct {p0}, Lbsh/classpath/ClassManagerImpl;->initBaseLoader()V

    .line 349
    :cond_0
    new-instance v0, Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;

    invoke-direct {v0}, Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;-><init>()V

    .line 352
    .local v0, "map":Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 354
    aget-object v2, p1, v1

    .line 357
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v3, v2}, Lbsh/classpath/BshClassPath;->getClassSource(Ljava/lang/String;)Lbsh/classpath/BshClassPath$ClassSource;

    move-result-object v3

    .line 360
    .local v3, "classSource":Lbsh/classpath/BshClassPath$ClassSource;
    if-nez v3, :cond_1

    .line 361
    invoke-static {}, Lbsh/classpath/BshClassPath;->getUserClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v4

    invoke-virtual {v4}, Lbsh/classpath/BshClassPath;->insureInitialized()V

    .line 362
    invoke-static {}, Lbsh/classpath/BshClassPath;->getUserClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v4

    invoke-virtual {v4, v2}, Lbsh/classpath/BshClassPath;->getClassSource(Ljava/lang/String;)Lbsh/classpath/BshClassPath$ClassSource;

    move-result-object v3

    .line 369
    :cond_1
    if-eqz v3, :cond_3

    .line 376
    instance-of v4, v3, Lbsh/classpath/BshClassPath$JarClassSource;

    if-nez v4, :cond_2

    .line 380
    invoke-virtual {v0, v2, v3}, Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;->put(Ljava/lang/String;Lbsh/classpath/BshClassPath$ClassSource;)V

    .line 352
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "classSource":Lbsh/classpath/BshClassPath$ClassSource;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "classSource":Lbsh/classpath/BshClassPath$ClassSource;
    :cond_2
    new-instance v4, Lbsh/ClassPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot reload class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from source: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lbsh/ClassPathException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 370
    :cond_3
    new-instance v4, Lbsh/ClassPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Nothing known about class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lbsh/ClassPathException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 384
    .end local v1    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "classSource":Lbsh/classpath/BshClassPath$ClassSource;
    :cond_4
    new-instance v1, Lbsh/classpath/DiscreteFilesClassLoader;

    invoke-direct {v1, p0, v0}, Lbsh/classpath/DiscreteFilesClassLoader;-><init>(Lbsh/BshClassManager;Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;)V

    .line 387
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v0}, Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 388
    .local v2, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 389
    iget-object v3, p0, Lbsh/classpath/ClassManagerImpl;->loaderMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 391
    :cond_5
    invoke-virtual {p0}, Lbsh/classpath/ClassManagerImpl;->classLoaderChanged()V

    .line 392
    return-void
.end method

.method public reloadPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "pack"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    .line 404
    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath;->getClassesForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 406
    .local v0, "classes":Ljava/util/Collection;
    if-nez v0, :cond_0

    .line 408
    invoke-static {}, Lbsh/classpath/BshClassPath;->getUserClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v1

    invoke-virtual {v1, p1}, Lbsh/classpath/BshClassPath;->getClassesForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 412
    :cond_0
    if-eqz v0, :cond_1

    .line 415
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lbsh/classpath/ClassManagerImpl;->reloadClasses([Ljava/lang/String;)V

    .line 416
    return-void

    .line 413
    :cond_1
    new-instance v1, Lbsh/ClassPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No classes found for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/ClassPathException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeListener(Lbsh/BshClassManager$Listener;)V
    .locals 2
    .param p1, "l"    # Lbsh/BshClassManager$Listener;

    .line 502
    new-instance v0, Ljava/lang/Error;

    const-string/jumbo v1, "unimplemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 295
    new-instance v0, Lbsh/classpath/BshClassPath;

    const-string v1, "baseClassPath"

    invoke-direct {v0, v1}, Lbsh/classpath/BshClassPath;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseLoader:Lbsh/classpath/BshClassLoader;

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbsh/classpath/ClassManagerImpl;->loaderMap:Ljava/util/Map;

    .line 298
    invoke-virtual {p0}, Lbsh/classpath/ClassManagerImpl;->classLoaderChanged()V

    .line 299
    return-void
.end method

.method public setClassPath([Ljava/net/URL;)V
    .locals 1
    .param p1, "cp"    # [Ljava/net/URL;

    .line 306
    iget-object v0, p0, Lbsh/classpath/ClassManagerImpl;->baseClassPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath;->setPath([Ljava/net/URL;)V

    .line 307
    invoke-direct {p0}, Lbsh/classpath/ClassManagerImpl;->initBaseLoader()V

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbsh/classpath/ClassManagerImpl;->loaderMap:Ljava/util/Map;

    .line 309
    invoke-virtual {p0}, Lbsh/classpath/ClassManagerImpl;->classLoaderChanged()V

    .line 310
    return-void
.end method
