.class public Ljavassist/Loader;
.super Ljava/lang/ClassLoader;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/Loader$Simple;
    }
.end annotation


# instance fields
.field public doDelegation:Z

.field private domain:Ljava/security/ProtectionDomain;

.field private notDefinedHere:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private notDefinedPackages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private source:Ljavassist/ClassPool;

.field private translator:Ljavassist/Translator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/Loader;-><init>(Ljavassist/ClassPool;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljavassist/ClassPool;)V
    .locals 1
    .param p1, "parent"    # Ljava/lang/ClassLoader;
    .param p2, "cp"    # Ljavassist/ClassPool;

    .line 226
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/Loader;->doDelegation:Z

    .line 227
    invoke-direct {p0, p2}, Ljavassist/Loader;->init(Ljavassist/ClassPool;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Ljavassist/ClassPool;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/ClassPool;

    .line 214
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/Loader;->doDelegation:Z

    .line 215
    invoke-direct {p0, p1}, Ljavassist/Loader;->init(Ljavassist/ClassPool;)V

    .line 216
    return-void
.end method

.method private init(Ljavassist/ClassPool;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/ClassPool;

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavassist/Loader;->notDefinedHere:Ljava/util/HashMap;

    .line 232
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavassist/Loader;->notDefinedPackages:Ljava/util/Vector;

    .line 233
    iput-object p1, p0, Ljavassist/Loader;->source:Ljavassist/ClassPool;

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/Loader;->translator:Ljavassist/Translator;

    .line 235
    iput-object v0, p0, Ljavassist/Loader;->domain:Ljava/security/ProtectionDomain;

    .line 236
    const-string v0, "javassist.Loader"

    invoke-virtual {p0, v0}, Ljavassist/Loader;->delegateLoadingOf(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private isDefinedPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 424
    sget v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x35

    if-lt v0, v3, :cond_1

    .line 425
    invoke-virtual {p0, p1}, Ljavassist/Loader;->getDefinedPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 427
    :cond_1
    invoke-virtual {p0, p1}, Ljavassist/Loader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 301
    new-instance v0, Ljavassist/Loader;

    invoke-direct {v0}, Ljavassist/Loader;-><init>()V

    .line 302
    .local v0, "cl":Ljavassist/Loader;
    invoke-virtual {v0, p0}, Ljavassist/Loader;->run([Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method private notDelegated(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 458
    iget-object v0, p0, Ljavassist/Loader;->notDefinedHere:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 459
    return v1

    .line 461
    :cond_0
    iget-object v0, p0, Ljavassist/Loader;->notDefinedPackages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 462
    .local v2, "pack":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 463
    return v1

    .line 462
    .end local v2    # "pack":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 465
    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addTranslator(Ljavassist/ClassPool;Ljavassist/Translator;)V
    .locals 0
    .param p1, "cp"    # Ljavassist/ClassPool;
    .param p2, "t"    # Ljavassist/Translator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 282
    iput-object p1, p0, Ljavassist/Loader;->source:Ljavassist/ClassPool;

    .line 283
    iput-object p2, p0, Ljavassist/Loader;->translator:Ljavassist/Translator;

    .line 284
    invoke-interface {p2, p1}, Ljavassist/Translator;->start(Ljavassist/ClassPool;)V

    .line 285
    return-void
.end method

.method public delegateLoadingOf(Ljava/lang/String;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;

    .line 248
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Ljavassist/Loader;->notDefinedPackages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Ljavassist/Loader;->notDefinedHere:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :goto_0
    return-void
.end method

.method protected delegateToParent(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 471
    invoke-virtual {p0}, Ljavassist/Loader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 472
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 474
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/Loader;->findSystemClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 378
    :try_start_0
    iget-object v0, p0, Ljavassist/Loader;->source:Ljavassist/ClassPool;

    const/4 v1, 0x0

    const/16 v2, 0x2e

    if-eqz v0, :cond_1

    .line 379
    iget-object v3, p0, Ljavassist/Loader;->translator:Ljavassist/Translator;

    if-eqz v3, :cond_0

    .line 380
    invoke-interface {v3, v0, p1}, Ljavassist/Translator;->onLoad(Ljavassist/ClassPool;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 383
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavassist/Loader;->source:Ljavassist/ClassPool;

    invoke-virtual {v0, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->toBytecode()[B

    move-result-object v0
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 387
    .local v0, "classfile":[B
    goto :goto_0

    .line 385
    .end local v0    # "classfile":[B
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljavassist/NotFoundException;
    return-object v1

    .line 390
    .end local v0    # "e":Ljavassist/NotFoundException;
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".class"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "jarname":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 392
    .local v3, "in":Ljava/io/InputStream;
    if-nez v3, :cond_2

    .line 393
    return-object v1

    .line 395
    :cond_2
    invoke-static {v3}, Ljavassist/ClassPoolTail;->readStream(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 402
    .end local v3    # "in":Ljava/io/InputStream;
    .local v0, "classfile":[B
    :goto_0
    nop

    .line 404
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 405
    .local v1, "i":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    .line 406
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "pname":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljavassist/Loader;->isDefinedPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 409
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, p0

    move-object v5, v2

    :try_start_3
    invoke-virtual/range {v4 .. v12}, Ljavassist/Loader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 415
    goto :goto_1

    .line 412
    :catch_1
    move-exception v4

    .line 418
    .end local v2    # "pname":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v9, p0, Ljavassist/Loader;->domain:Ljava/security/ProtectionDomain;

    if-nez v9, :cond_4

    .line 419
    array-length v2, v0

    invoke-virtual {p0, p1, v0, v3, v2}, Ljavassist/Loader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v2

    return-object v2

    .line 420
    :cond_4
    const/4 v7, 0x0

    array-length v8, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    invoke-virtual/range {v4 .. v9}, Ljavassist/Loader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v2

    return-object v2

    .line 398
    .end local v0    # "classfile":[B
    .end local v1    # "i":I
    :catch_2
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught an exception while obtaining a class file for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 343
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 344
    monitor-enter p1

    .line 345
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/Loader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 346
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0, p1}, Ljavassist/Loader;->loadClassByDelegation(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 349
    :cond_0
    if-nez v0, :cond_1

    .line 350
    invoke-virtual {p0, p1}, Ljavassist/Loader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 352
    :cond_1
    if-nez v0, :cond_2

    .line 353
    invoke-virtual {p0, p1}, Ljavassist/Loader;->delegateToParent(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 355
    :cond_2
    if-eqz p2, :cond_3

    .line 356
    invoke-virtual {p0, v0}, Ljavassist/Loader;->resolveClass(Ljava/lang/Class;)V

    .line 358
    :cond_3
    monitor-exit p1

    return-object v0

    .line 359
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected loadClassByDelegation(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-boolean v1, p0, Ljavassist/Loader;->doDelegation:Z

    if-eqz v1, :cond_1

    .line 445
    const-string v1, "java."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    const-string v1, "javax."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    const-string v1, "sun."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    const-string v1, "com.sun."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    const-string v1, "org.w3c."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    const-string v1, "org.xml."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    invoke-direct {p0, p1}, Ljavassist/Loader;->notDelegated(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/Loader;->delegateToParent(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 454
    :cond_1
    return-object v0
.end method

.method public run(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 326
    invoke-virtual {p0, p1}, Ljavassist/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 328
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v1, "main"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    nop

    .line 335
    return-void

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    throw v2
.end method

.method public run([Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 315
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 316
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljavassist/Loader;->run(Ljava/lang/String;[Ljava/lang/String;)V

    .line 317
    :cond_0
    return-void
.end method

.method public setClassPool(Ljavassist/ClassPool;)V
    .locals 0
    .param p1, "cp"    # Ljavassist/ClassPool;

    .line 268
    iput-object p1, p0, Ljavassist/Loader;->source:Ljavassist/ClassPool;

    .line 269
    return-void
.end method

.method public setDomain(Ljava/security/ProtectionDomain;)V
    .locals 0
    .param p1, "d"    # Ljava/security/ProtectionDomain;

    .line 261
    iput-object p1, p0, Ljavassist/Loader;->domain:Ljava/security/ProtectionDomain;

    .line 262
    return-void
.end method
