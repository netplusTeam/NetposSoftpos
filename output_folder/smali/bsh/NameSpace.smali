.class public Lbsh/NameSpace;
.super Ljava/lang/Object;
.source "NameSpace.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lbsh/BshClassManager$Listener;
.implements Lbsh/NameSource;


# static fields
.field public static final JAVACODE:Lbsh/NameSpace;


# instance fields
.field callerInfoNode:Lbsh/SimpleNode;

.field private transient classCache:Ljava/util/Hashtable;

.field classInstance:Ljava/lang/Object;

.field private transient classManager:Lbsh/BshClassManager;

.field classStatic:Ljava/lang/Class;

.field protected importedClasses:Ljava/util/Hashtable;

.field private importedCommands:Ljava/util/Vector;

.field private importedObjects:Ljava/util/Vector;

.field private importedPackages:Ljava/util/Vector;

.field private importedStatic:Ljava/util/Vector;

.field isClass:Z

.field isMethod:Z

.field private methods:Ljava/util/Hashtable;

.field nameSourceListeners:Ljava/util/Vector;

.field private names:Ljava/util/Hashtable;

.field private nsName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private parent:Lbsh/NameSpace;

.field private thisReference:Lbsh/This;

.field private variables:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Lbsh/NameSpace;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lbsh/BshClassManager;

    const-string v2, "Called from compiled Java code."

    invoke-direct {v0, v1, v2}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    sput-object v0, Lbsh/NameSpace;->JAVACODE:Lbsh/NameSpace;

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbsh/NameSpace;->isMethod:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Lbsh/BshClassManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "classManager"    # Lbsh/BshClassManager;
    .param p2, "name"    # Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Lbsh/BshClassManager;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Lbsh/NameSpace;Lbsh/BshClassManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "parent"    # Lbsh/NameSpace;
    .param p2, "classManager"    # Lbsh/BshClassManager;
    .param p3, "name"    # Ljava/lang/String;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0, p3}, Lbsh/NameSpace;->setName(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, p1}, Lbsh/NameSpace;->setParent(Lbsh/NameSpace;)V

    .line 183
    invoke-virtual {p0, p2}, Lbsh/NameSpace;->setClassManager(Lbsh/BshClassManager;)V

    .line 186
    if-eqz p2, :cond_0

    .line 187
    invoke-virtual {p2, p0}, Lbsh/BshClassManager;->addListener(Lbsh/BshClassManager$Listener;)V

    .line 188
    :cond_0
    return-void
.end method

.method public constructor <init>(Lbsh/NameSpace;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lbsh/NameSpace;
    .param p2, "name"    # Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Lbsh/BshClassManager;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1389
    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/BshClassManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private enumerationToStringArray(Ljava/util/Enumeration;)[Ljava/lang/String;
    .locals 2
    .param p1, "e"    # Ljava/util/Enumeration;

    .line 528
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 529
    .local v0, "v":Ljava/util/Vector;
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 531
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 532
    .local v1, "sa":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 533
    return-object v1
.end method

.method private flattenMethodCollection(Ljava/util/Enumeration;)[Lbsh/BshMethod;
    .locals 5
    .param p1, "e"    # Ljava/util/Enumeration;

    .line 541
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 542
    .local v0, "v":Ljava/util/Vector;
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 543
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 544
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lbsh/BshMethod;

    if-eqz v2, :cond_0

    .line 545
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 547
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/util/Vector;

    .line 548
    .local v2, "ov":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 549
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 548
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 551
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "ov":Ljava/util/Vector;
    .end local v3    # "i":I
    :cond_1
    :goto_2
    goto :goto_0

    .line 552
    :cond_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lbsh/BshMethod;

    .line 553
    .local v1, "bma":[Lbsh/BshMethod;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 554
    return-object v1
.end method

.method private getClassImpl(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 1261
    const/4 v0, 0x0

    .line 1264
    .local v0, "c":Ljava/lang/Class;
    iget-object v1, p0, Lbsh/NameSpace;->classCache:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 1265
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 1267
    if-eqz v0, :cond_0

    .line 1268
    return-object v0

    .line 1272
    :cond_0
    invoke-static {p1}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1275
    .local v1, "unqualifiedName":Z
    if-eqz v1, :cond_2

    .line 1278
    if-nez v0, :cond_1

    .line 1279
    invoke-direct {p0, p1}, Lbsh/NameSpace;->getImportedClassImpl(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1282
    :cond_1
    if-eqz v0, :cond_2

    .line 1283
    invoke-virtual {p0, p1, v0}, Lbsh/NameSpace;->cacheClass(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1284
    return-object v0

    .line 1289
    :cond_2
    invoke-direct {p0, p1}, Lbsh/NameSpace;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1290
    if-eqz v0, :cond_4

    .line 1292
    if-eqz v1, :cond_3

    .line 1293
    invoke-virtual {p0, p1, v0}, Lbsh/NameSpace;->cacheClass(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1294
    :cond_3
    return-object v0

    .line 1298
    :cond_4
    sget-boolean v2, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClass(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not\tfound in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 1300
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method private getImportedClassImpl(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 1312
    const/4 v0, 0x0

    .line 1313
    .local v0, "fullname":Ljava/lang/String;
    iget-object v1, p0, Lbsh/NameSpace;->importedClasses:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 1314
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 1319
    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1325
    invoke-direct {p0, v0}, Lbsh/NameSpace;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1328
    .local v2, "clas":Ljava/lang/Class;
    if-nez v2, :cond_4

    .line 1334
    invoke-static {v0}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1336
    :try_start_0
    invoke-virtual {p0, v0}, Lbsh/NameSpace;->getNameResolver(Ljava/lang/String;)Lbsh/Name;

    move-result-object v3

    invoke-virtual {v3}, Lbsh/Name;->toClass()Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 1337
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    .line 1339
    :cond_1
    sget-boolean v3, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imported unpackaged name not found:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 1343
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 1345
    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lbsh/BshClassManager;->cacheClassInfo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1346
    return-object v2

    .line 1353
    :cond_3
    return-object v1

    .line 1349
    :cond_4
    return-object v2

    .line 1361
    .end local v2    # "clas":Ljava/lang/Class;
    :cond_5
    iget-object v2, p0, Lbsh/NameSpace;->importedPackages:Ljava/util/Vector;

    if-eqz v2, :cond_7

    .line 1362
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_7

    .line 1364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbsh/NameSpace;->importedPackages:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1365
    .local v3, "s":Ljava/lang/String;
    invoke-direct {p0, v3}, Lbsh/NameSpace;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1366
    .local v4, "c":Ljava/lang/Class;
    if-eqz v4, :cond_6

    .line 1367
    return-object v4

    .line 1362
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "c":Ljava/lang/Class;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1370
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v2

    .line 1377
    .local v2, "bcm":Lbsh/BshClassManager;
    invoke-virtual {v2}, Lbsh/BshClassManager;->hasSuperImport()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1379
    invoke-virtual {v2, p1}, Lbsh/BshClassManager;->getClassNameByUnqName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1380
    .restart local v3    # "s":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 1381
    invoke-direct {p0, v3}, Lbsh/NameSpace;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 1384
    .end local v3    # "s":Ljava/lang/String;
    :cond_8
    return-object v1
.end method

.method public static identifierToClass(Lbsh/ClassIdentifier;)Ljava/lang/Class;
    .locals 1
    .param p0, "ci"    # Lbsh/ClassIdentifier;

    .line 1617
    invoke-virtual {p0}, Lbsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private loadScriptedCommand(Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lbsh/Interpreter;)Lbsh/BshMethod;
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "argTypes"    # [Ljava/lang/Class;
    .param p4, "resourcePath"    # Ljava/lang/String;
    .param p5, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 1184
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p5, v0, p0, p4}, Lbsh/Interpreter;->eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    nop

    .line 1198
    invoke-virtual {p0, p2, p3}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v0

    .line 1205
    .local v0, "meth":Lbsh/BshMethod;
    return-object v0

    .line 1186
    .end local v0    # "meth":Lbsh/BshMethod;
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "e":Lbsh/EvalError;
    invoke-virtual {v0}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 1193
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading script: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1194
    invoke-virtual {v0}, Lbsh/EvalError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1464
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lbsh/NameSpace;->names:Ljava/util/Hashtable;

    .line 1466
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    monitor-exit p0

    return-void

    .line 1463
    .end local p0    # "this":Lbsh/NameSpace;
    .end local p1    # "s":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addNameSourceListener(Lbsh/NameSource$Listener;)V
    .locals 1
    .param p1, "listener"    # Lbsh/NameSource$Listener;

    .line 1429
    iget-object v0, p0, Lbsh/NameSpace;->nameSourceListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1430
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->nameSourceListeners:Ljava/util/Vector;

    .line 1431
    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->nameSourceListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1432
    return-void
.end method

.method attemptSetPropertyValue(Ljava/lang/String;Ljava/lang/Object;Lbsh/Interpreter;)Z
    .locals 7
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "interp"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 1710
    const-string/jumbo v0, "set"

    invoke-static {v0, p1}, Lbsh/Reflect;->accessorName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1712
    .local v0, "accessorName":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    if-nez p2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1714
    .local v2, "classArray":[Ljava/lang/Class;
    invoke-virtual {p0, v0, v2}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v3

    .line 1716
    .local v3, "m":Lbsh/BshMethod;
    if-eqz v3, :cond_1

    .line 1718
    :try_start_0
    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v4

    invoke-virtual {p0, v0, v5, p3}, Lbsh/NameSpace;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1721
    return v1

    .line 1722
    :catch_0
    move-exception v1

    .line 1723
    .local v1, "ee":Lbsh/EvalError;
    new-instance v4, Lbsh/UtilEvalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'This\' property accessor threw exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1725
    invoke-virtual {v1}, Lbsh/EvalError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1729
    .end local v1    # "ee":Lbsh/EvalError;
    :cond_1
    return v4
.end method

.method cacheClass(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "c"    # Ljava/lang/Class;

    .line 1212
    iget-object v0, p0, Lbsh/NameSpace;->classCache:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 1213
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->classCache:Ljava/util/Hashtable;

    .line 1217
    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->classCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    return-void
.end method

.method public classLoaderChanged()V
    .locals 0

    .line 1508
    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    .line 1509
    return-void
.end method

.method public clear()V
    .locals 2

    .line 1629
    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    .line 1630
    iput-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    .line 1631
    iput-object v0, p0, Lbsh/NameSpace;->importedClasses:Ljava/util/Hashtable;

    .line 1632
    iput-object v0, p0, Lbsh/NameSpace;->importedPackages:Ljava/util/Vector;

    .line 1633
    iput-object v0, p0, Lbsh/NameSpace;->importedCommands:Ljava/util/Vector;

    .line 1634
    iput-object v0, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    .line 1635
    iget-object v1, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-nez v1, :cond_0

    .line 1636
    invoke-virtual {p0}, Lbsh/NameSpace;->loadDefaultImports()V

    .line 1637
    :cond_0
    iput-object v0, p0, Lbsh/NameSpace;->classCache:Ljava/util/Hashtable;

    .line 1638
    iput-object v0, p0, Lbsh/NameSpace;->names:Ljava/util/Hashtable;

    .line 1639
    return-void
.end method

.method protected createVariable(Ljava/lang/String;Ljava/lang/Class;Lbsh/LHS;)Lbsh/Variable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "lhs"    # Lbsh/LHS;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 476
    new-instance v0, Lbsh/Variable;

    invoke-direct {v0, p1, p2, p3}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Lbsh/LHS;)V

    return-object v0
.end method

.method protected createVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)Lbsh/Variable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "mods"    # Lbsh/Modifiers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 469
    new-instance v0, Lbsh/Variable;

    invoke-direct {v0, p1, p2, p3, p4}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    return-object v0
.end method

.method protected createVariable(Ljava/lang/String;Ljava/lang/Object;Lbsh/Modifiers;)Lbsh/Variable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "mods"    # Lbsh/Modifiers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lbsh/NameSpace;->createVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)Lbsh/Variable;

    move-result-object v0

    return-object v0
.end method

.method public doSuperImport()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 1441
    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/BshClassManager;->doSuperImport()V

    .line 1442
    return-void
.end method

.method public get(Ljava/lang/String;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 232
    new-instance v0, Lbsh/CallStack;

    invoke-direct {v0, p0}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    .line 233
    .local v0, "callstack":Lbsh/CallStack;
    invoke-virtual {p0, p1}, Lbsh/NameSpace;->getNameResolver(Ljava/lang/String;)Lbsh/Name;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lbsh/Name;->toObject(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getAllNames()[Ljava/lang/String;
    .locals 2

    .line 1399
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1400
    .local v0, "vec":Ljava/util/Vector;
    invoke-virtual {p0, v0}, Lbsh/NameSpace;->getAllNamesAux(Ljava/util/Vector;)V

    .line 1401
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1402
    .local v1, "names":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1403
    return-object v1
.end method

.method protected getAllNamesAux(Ljava/util/Vector;)V
    .locals 3
    .param p1, "vec"    # Ljava/util/Vector;

    .line 1411
    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 1412
    .local v0, "varNames":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1413
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 1415
    :cond_0
    iget-object v1, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1416
    .local v1, "methodNames":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1417
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 1419
    :cond_1
    iget-object v2, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v2, :cond_2

    .line 1420
    invoke-virtual {v2, p1}, Lbsh/NameSpace;->getAllNamesAux(Ljava/util/Vector;)V

    .line 1421
    :cond_2
    return-void
.end method

.method public getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 1230
    invoke-direct {p0, p1}, Lbsh/NameSpace;->getClassImpl(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1231
    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 1232
    return-object v0

    .line 1235
    :cond_0
    iget-object v1, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v1, :cond_1

    .line 1236
    invoke-virtual {v1, p1}, Lbsh/NameSpace;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 1238
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method getClassInstance()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lbsh/NameSpace;->classInstance:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 132
    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->classStatic:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 137
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Can\'t refer to class instance from static context."

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t resolve class instance \'this\' in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClassManager()Lbsh/BshClassManager;
    .locals 2

    .line 631
    iget-object v0, p0, Lbsh/NameSpace;->classManager:Lbsh/BshClassManager;

    if-eqz v0, :cond_0

    .line 632
    return-object v0

    .line 633
    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v0, :cond_1

    sget-object v1, Lbsh/NameSpace;->JAVACODE:Lbsh/NameSpace;

    if-eq v0, v1, :cond_1

    .line 634
    invoke-virtual {v0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    return-object v0

    .line 637
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lbsh/BshClassManager;->createClassManager(Lbsh/Interpreter;)Lbsh/BshClassManager;

    move-result-object v0

    iput-object v0, p0, Lbsh/NameSpace;->classManager:Lbsh/BshClassManager;

    .line 640
    return-object v0
.end method

.method public getCommand(Ljava/lang/String;[Ljava/lang/Class;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "argTypes"    # [Ljava/lang/Class;
    .param p3, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 1065
    move-object v6, p0

    move-object v7, p1

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 1066
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v8

    .line 1068
    .local v8, "bcm":Lbsh/BshClassManager;
    iget-object v0, v6, Lbsh/NameSpace;->importedCommands:Ljava/util/Vector;

    if-eqz v0, :cond_5

    .line 1071
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v9, v0

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_5

    .line 1073
    iget-object v0, v6, Lbsh/NameSpace;->importedCommands:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 1076
    .local v10, "path":Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ".bsh"

    if-eqz v2, :cond_1

    .line 1077
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    .local v2, "scriptPath":Ljava/lang/String;
    goto :goto_1

    .line 1079
    .end local v2    # "scriptPath":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    .line 1081
    .local v11, "scriptPath":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "searching for script: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v8, v11}, Lbsh/BshClassManager;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 1085
    .local v12, "in":Ljava/io/InputStream;
    if-eqz v12, :cond_2

    .line 1086
    move-object v0, p0

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object v4, v11

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lbsh/NameSpace;->loadScriptedCommand(Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lbsh/Interpreter;)Lbsh/BshMethod;

    move-result-object v0

    return-object v0

    .line 1091
    :cond_2
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1092
    move-object v0, p1

    .local v0, "className":Ljava/lang/String;
    goto :goto_2

    .line 1094
    .end local v0    # "className":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1096
    .restart local v0    # "className":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "searching for class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 1097
    invoke-virtual {v8, v0}, Lbsh/BshClassManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1098
    .local v2, "clas":Ljava/lang/Class;
    if-eqz v2, :cond_4

    .line 1099
    return-object v2

    .line 1071
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "clas":Ljava/lang/Class;
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "scriptPath":Ljava/lang/String;
    .end local v12    # "in":Ljava/io/InputStream;
    :cond_4
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_0

    .line 1103
    .end local v9    # "i":I
    :cond_5
    iget-object v0, v6, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v0, :cond_6

    .line 1104
    move-object v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, p1, p2, v2}, Lbsh/NameSpace;->getCommand(Ljava/lang/String;[Ljava/lang/Class;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1106
    :cond_6
    move-object v1, p2

    move-object/from16 v2, p3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeclaredVariables()[Lbsh/Variable;
    .locals 5

    .line 767
    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 768
    const/4 v0, 0x0

    new-array v0, v0, [Lbsh/Variable;

    return-object v0

    .line 769
    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v0, v0, [Lbsh/Variable;

    .line 770
    .local v0, "vars":[Lbsh/Variable;
    const/4 v1, 0x0

    .line 771
    .local v1, "i":I
    iget-object v2, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 772
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbsh/Variable;

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_0

    .line 773
    .end local v2    # "e":Ljava/util/Enumeration;
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getGlobal(Lbsh/Interpreter;)Lbsh/This;
    .locals 1
    .param p1, "declaringInterpreter"    # Lbsh/Interpreter;

    .line 585
    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0, p1}, Lbsh/NameSpace;->getGlobal(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    return-object v0

    .line 588
    :cond_0
    invoke-virtual {p0, p1}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    return-object v0
.end method

.method protected getImportedMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sig"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 1113
    iget-object v0, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 1114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1116
    iget-object v1, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 1117
    .local v1, "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1118
    .local v2, "clas":Ljava/lang/Class;
    nop

    .line 1119
    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 1118
    invoke-static {v3, v2, p1, p2, v4}, Lbsh/Reflect;->resolveJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1120
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 1121
    new-instance v4, Lbsh/BshMethod;

    invoke-direct {v4, v3, v1}, Lbsh/BshMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    return-object v4

    .line 1114
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "clas":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1125
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1126
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1128
    iget-object v2, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 1129
    .restart local v2    # "clas":Ljava/lang/Class;
    nop

    .line 1130
    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v3

    .line 1129
    const/4 v4, 0x1

    invoke-static {v3, v2, p1, p2, v4}, Lbsh/Reflect;->resolveJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1131
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_2

    .line 1132
    new-instance v4, Lbsh/BshMethod;

    invoke-direct {v4, v3, v1}, Lbsh/BshMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    return-object v4

    .line 1126
    .end local v2    # "clas":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1135
    .end local v0    # "i":I
    :cond_3
    return-object v1
.end method

.method protected getImportedVar(Ljava/lang/String;)Lbsh/Variable;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 1142
    iget-object v0, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 1143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1145
    iget-object v1, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 1146
    .local v1, "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1147
    .local v2, "clas":Ljava/lang/Class;
    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lbsh/Reflect;->resolveJavaField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1149
    .local v3, "field":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_0

    .line 1150
    nop

    .line 1151
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Lbsh/LHS;

    invoke-direct {v5, v1, v3}, Lbsh/LHS;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 1150
    invoke-virtual {p0, p1, v4, v5}, Lbsh/NameSpace;->createVariable(Ljava/lang/String;Ljava/lang/Class;Lbsh/LHS;)Lbsh/Variable;

    move-result-object v4

    return-object v4

    .line 1143
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "clas":Ljava/lang/Class;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1155
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    if-eqz v0, :cond_3

    .line 1156
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1158
    iget-object v1, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 1159
    .local v1, "clas":Ljava/lang/Class;
    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lbsh/Reflect;->resolveJavaField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1161
    .local v2, "field":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_2

    .line 1162
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Lbsh/LHS;

    invoke-direct {v4, v2}, Lbsh/LHS;-><init>(Ljava/lang/reflect/Field;)V

    invoke-virtual {p0, p1, v3, v4}, Lbsh/NameSpace;->createVariable(Ljava/lang/String;Ljava/lang/Class;Lbsh/LHS;)Lbsh/Variable;

    move-result-object v3

    return-object v3

    .line 1156
    .end local v1    # "clas":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1165
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInvocationLine()I
    .locals 2

    .line 1592
    invoke-virtual {p0}, Lbsh/NameSpace;->getNode()Lbsh/SimpleNode;

    move-result-object v0

    .line 1593
    .local v0, "node":Lbsh/SimpleNode;
    if-eqz v0, :cond_0

    .line 1594
    invoke-virtual {v0}, Lbsh/SimpleNode;->getLineNumber()I

    move-result v1

    return v1

    .line 1596
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getInvocationText()Ljava/lang/String;
    .locals 2

    .line 1599
    invoke-virtual {p0}, Lbsh/NameSpace;->getNode()Lbsh/SimpleNode;

    move-result-object v0

    .line 1600
    .local v0, "node":Lbsh/SimpleNode;
    if-eqz v0, :cond_0

    .line 1601
    invoke-virtual {v0}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1603
    :cond_0
    const-string v1, "<invoked from Java code>"

    return-object v1
.end method

.method public getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sig"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 909
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lbsh/BshMethod;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lbsh/BshMethod;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sig"    # [Ljava/lang/Class;
    .param p3, "declaredOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 929
    const/4 v0, 0x0

    .line 933
    .local v0, "method":Lbsh/BshMethod;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lbsh/NameSpace;->isClass:Z

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    .line 934
    invoke-virtual {p0, p1, p2}, Lbsh/NameSpace;->getImportedMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v0

    .line 936
    :cond_0
    const/4 v1, 0x0

    .line 937
    .local v1, "m":Ljava/lang/Object;
    if-nez v0, :cond_3

    iget-object v2, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    if-eqz v2, :cond_3

    .line 939
    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 942
    if-eqz v1, :cond_3

    .line 946
    instance-of v2, v1, Ljava/util/Vector;

    if-eqz v2, :cond_1

    .line 948
    move-object v2, v1

    check-cast v2, Ljava/util/Vector;

    .line 949
    .local v2, "vm":Ljava/util/Vector;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Lbsh/BshMethod;

    .line 950
    .local v3, "ma":[Lbsh/BshMethod;
    invoke-virtual {v2, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 951
    .end local v2    # "vm":Ljava/util/Vector;
    goto :goto_0

    .line 952
    .end local v3    # "ma":[Lbsh/BshMethod;
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Lbsh/BshMethod;

    const/4 v3, 0x0

    move-object v4, v1

    check-cast v4, Lbsh/BshMethod;

    aput-object v4, v2, v3

    move-object v3, v2

    .line 955
    .restart local v3    # "ma":[Lbsh/BshMethod;
    :goto_0
    array-length v2, v3

    new-array v2, v2, [[Ljava/lang/Class;

    .line 956
    .local v2, "candidates":[[Ljava/lang/Class;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 957
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lbsh/BshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v4

    .line 956
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 959
    .end local v4    # "i":I
    :cond_2
    nop

    .line 960
    invoke-static {p2, v2}, Lbsh/Reflect;->findMostSpecificSignature([Ljava/lang/Class;[[Ljava/lang/Class;)I

    move-result v4

    .line 961
    .local v4, "match":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 962
    aget-object v0, v3, v4

    .line 966
    .end local v2    # "candidates":[[Ljava/lang/Class;
    .end local v3    # "ma":[Lbsh/BshMethod;
    .end local v4    # "match":I
    :cond_3
    if-nez v0, :cond_4

    iget-boolean v2, p0, Lbsh/NameSpace;->isClass:Z

    if-nez v2, :cond_4

    if-nez p3, :cond_4

    .line 967
    invoke-virtual {p0, p1, p2}, Lbsh/NameSpace;->getImportedMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v0

    .line 970
    :cond_4
    if-nez p3, :cond_5

    if-nez v0, :cond_5

    iget-object v2, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v2, :cond_5

    .line 971
    invoke-virtual {v2, p1, p2}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v2

    return-object v2

    .line 973
    :cond_5
    return-object v0
.end method

.method public getMethodNames()[Ljava/lang/String;
    .locals 1

    .line 508
    iget-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 509
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 511
    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/NameSpace;->enumerationToStringArray(Ljava/util/Enumeration;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()[Lbsh/BshMethod;
    .locals 1

    .line 521
    iget-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 522
    const/4 v0, 0x0

    new-array v0, v0, [Lbsh/BshMethod;

    return-object v0

    .line 524
    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/NameSpace;->flattenMethodCollection(Ljava/util/Enumeration;)[Lbsh/BshMethod;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lbsh/NameSpace;->nsName:Ljava/lang/String;

    return-object v0
.end method

.method getNameResolver(Ljava/lang/String;)Lbsh/Name;
    .locals 2
    .param p1, "ambigname"    # Ljava/lang/String;

    .line 1578
    iget-object v0, p0, Lbsh/NameSpace;->names:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 1579
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->names:Ljava/util/Hashtable;

    .line 1581
    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/Name;

    .line 1583
    .local v0, "name":Lbsh/Name;
    if-nez v0, :cond_1

    .line 1584
    new-instance v1, Lbsh/Name;

    invoke-direct {v1, p0, p1}, Lbsh/Name;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    move-object v0, v1

    .line 1585
    iget-object v1, p0, Lbsh/NameSpace;->names:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    :cond_1
    return-object v0
.end method

.method getNode()Lbsh/SimpleNode;
    .locals 1

    .line 218
    iget-object v0, p0, Lbsh/NameSpace;->callerInfoNode:Lbsh/SimpleNode;

    if-eqz v0, :cond_0

    .line 219
    return-object v0

    .line 220
    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0}, Lbsh/NameSpace;->getNode()Lbsh/SimpleNode;

    move-result-object v0

    return-object v0

    .line 223
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getPackage()Ljava/lang/String;
    .locals 1

    .line 1693
    iget-object v0, p0, Lbsh/NameSpace;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1694
    return-object v0

    .line 1696
    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v0, :cond_1

    .line 1697
    invoke-virtual {v0}, Lbsh/NameSpace;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1699
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParent()Lbsh/NameSpace;
    .locals 1

    .line 563
    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    return-object v0
.end method

.method getPropertyValue(Ljava/lang/String;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 7
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "interp"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 1741
    const-string v0, "get"

    invoke-static {v0, p1}, Lbsh/Reflect;->accessorName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1742
    .local v0, "accessorName":Ljava/lang/String;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 1744
    .local v1, "classArray":[Ljava/lang/Class;
    invoke-virtual {p0, v0, v1}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v2

    .line 1747
    .local v2, "m":Lbsh/BshMethod;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1748
    :try_start_0
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, p2}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 1750
    :cond_0
    const-string v4, "is"

    invoke-static {v4, p1}, Lbsh/Reflect;->accessorName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 1751
    invoke-virtual {p0, v0, v1}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v4

    move-object v2, v4

    .line 1752
    if-eqz v2, :cond_1

    .line 1753
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, p2}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 1755
    :cond_1
    sget-object v3, Lbsh/Primitive;->VOID:Lbsh/Primitive;
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1756
    :catch_0
    move-exception v3

    .line 1757
    .local v3, "ee":Lbsh/EvalError;
    new-instance v4, Lbsh/UtilEvalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'This\' property accessor threw exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1758
    invoke-virtual {v3}, Lbsh/EvalError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSuper(Lbsh/Interpreter;)Lbsh/This;
    .locals 1
    .param p1, "declaringInterpreter"    # Lbsh/Interpreter;

    .line 572
    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0, p1}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    return-object v0

    .line 575
    :cond_0
    invoke-virtual {p0, p1}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    return-object v0
.end method

.method public getThis(Lbsh/Interpreter;)Lbsh/This;
    .locals 1
    .param p1, "declaringInterpreter"    # Lbsh/Interpreter;

    .line 623
    iget-object v0, p0, Lbsh/NameSpace;->thisReference:Lbsh/This;

    if-nez v0, :cond_0

    .line 624
    invoke-static {p0, p1}, Lbsh/This;->getThis(Lbsh/NameSpace;Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    iput-object v0, p0, Lbsh/NameSpace;->thisReference:Lbsh/This;

    .line 626
    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->thisReference:Lbsh/This;

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 708
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lbsh/NameSpace;->getVariable(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 726
    invoke-virtual {p0, p1, p2}, Lbsh/NameSpace;->getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object v0

    .line 727
    .local v0, "var":Lbsh/Variable;
    invoke-virtual {p0, v0}, Lbsh/NameSpace;->unwrapVariable(Lbsh/Variable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 741
    const/4 v0, 0x0

    .line 745
    .local v0, "var":Lbsh/Variable;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lbsh/NameSpace;->isClass:Z

    if-eqz v1, :cond_0

    .line 746
    invoke-virtual {p0, p1}, Lbsh/NameSpace;->getImportedVar(Ljava/lang/String;)Lbsh/Variable;

    move-result-object v0

    .line 748
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    .line 749
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lbsh/Variable;

    .line 752
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lbsh/NameSpace;->isClass:Z

    if-nez v1, :cond_2

    .line 753
    invoke-virtual {p0, p1}, Lbsh/NameSpace;->getImportedVar(Ljava/lang/String;)Lbsh/Variable;

    move-result-object v0

    .line 756
    :cond_2
    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    iget-object v1, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v1, :cond_3

    .line 757
    invoke-virtual {v1, p1, p2}, Lbsh/NameSpace;->getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object v0

    .line 759
    :cond_3
    return-object v0
.end method

.method public getVariableNames()[Ljava/lang/String;
    .locals 1

    .line 496
    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 497
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 499
    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/NameSpace;->enumerationToStringArray(Ljava/util/Enumeration;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariableOrProperty(Ljava/lang/String;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "interp"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 691
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lbsh/NameSpace;->getVariable(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 692
    .local v0, "val":Ljava/lang/Object;
    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lbsh/NameSpace;->getPropertyValue(Ljava/lang/String;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public importClass(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 982
    iget-object v0, p0, Lbsh/NameSpace;->importedClasses:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 983
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->importedClasses:Ljava/util/Hashtable;

    .line 985
    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->importedClasses:Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lbsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    .line 987
    return-void
.end method

.method public importCommands(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1014
    iget-object v0, p0, Lbsh/NameSpace;->importedCommands:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1015
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->importedCommands:Ljava/util/Vector;

    .line 1018
    :cond_0
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1020
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1023
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1024
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1027
    :cond_2
    iget-object v0, p0, Lbsh/NameSpace;->importedCommands:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1028
    iget-object v0, p0, Lbsh/NameSpace;->importedCommands:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1030
    :cond_3
    iget-object v0, p0, Lbsh/NameSpace;->importedCommands:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1031
    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    .line 1032
    return-void
.end method

.method public importObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1655
    iget-object v0, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1656
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    .line 1659
    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1660
    iget-object v0, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1662
    :cond_1
    iget-object v0, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1663
    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    .line 1665
    return-void
.end method

.method public importPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 994
    iget-object v0, p0, Lbsh/NameSpace;->importedPackages:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 995
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->importedPackages:Ljava/util/Vector;

    .line 998
    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->importedPackages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    iget-object v0, p0, Lbsh/NameSpace;->importedPackages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1001
    :cond_1
    iget-object v0, p0, Lbsh/NameSpace;->importedPackages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1002
    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    .line 1003
    return-void
.end method

.method public importStatic(Ljava/lang/Class;)V
    .locals 1
    .param p1, "clas"    # Ljava/lang/Class;

    .line 1671
    iget-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1672
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    .line 1675
    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1676
    iget-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1678
    :cond_1
    iget-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1679
    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    .line 1680
    return-void
.end method

.method public invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 1483
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lbsh/NameSpace;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;
    .locals 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "interpreter"    # Lbsh/Interpreter;
    .param p4, "callstack"    # Lbsh/CallStack;
    .param p5, "callerInfo"    # Lbsh/SimpleNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 1499
    invoke-virtual {p0, p3}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lbsh/This;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadDefaultImports()V
    .locals 1

    .line 1542
    const-string v0, "bsh.EvalError"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importClass(Ljava/lang/String;)V

    .line 1543
    const-string v0, "bsh.Interpreter"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importClass(Ljava/lang/String;)V

    .line 1544
    const-string v0, "javax.swing.event"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    .line 1545
    const-string v0, "javax.swing"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    .line 1546
    const-string v0, "java.awt.event"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    .line 1547
    const-string v0, "java.awt"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    .line 1548
    const-string v0, "java.net"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    .line 1549
    const-string v0, "java.util"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    .line 1550
    const-string v0, "java.io"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    .line 1551
    const-string v0, "java.lang"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    .line 1552
    const-string v0, "/bsh/commands"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importCommands(Ljava/lang/String;)V

    .line 1553
    return-void
.end method

.method public nameSpaceChanged()V
    .locals 1

    .line 1515
    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/NameSpace;->classCache:Ljava/util/Hashtable;

    .line 1516
    iput-object v0, p0, Lbsh/NameSpace;->names:Ljava/util/Hashtable;

    .line 1517
    return-void
.end method

.method public prune()V
    .locals 2

    .line 657
    iget-object v0, p0, Lbsh/NameSpace;->classManager:Lbsh/BshClassManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 660
    nop

    .line 661
    invoke-static {v1}, Lbsh/BshClassManager;->createClassManager(Lbsh/Interpreter;)Lbsh/BshClassManager;

    move-result-object v0

    .line 660
    invoke-virtual {p0, v0}, Lbsh/NameSpace;->setClassManager(Lbsh/BshClassManager;)V

    .line 663
    :cond_0
    invoke-virtual {p0, v1}, Lbsh/NameSpace;->setParent(Lbsh/NameSpace;)V

    .line 664
    return-void
.end method

.method setClassInstance(Ljava/lang/Object;)V
    .locals 0
    .param p1, "instance"    # Ljava/lang/Object;

    .line 125
    iput-object p1, p0, Lbsh/NameSpace;->classInstance:Ljava/lang/Object;

    .line 126
    invoke-virtual {p0, p1}, Lbsh/NameSpace;->importObject(Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method setClassManager(Lbsh/BshClassManager;)V
    .locals 0
    .param p1, "classManager"    # Lbsh/BshClassManager;

    .line 644
    iput-object p1, p0, Lbsh/NameSpace;->classManager:Lbsh/BshClassManager;

    .line 645
    return-void
.end method

.method setClassStatic(Ljava/lang/Class;)V
    .locals 0
    .param p1, "clas"    # Ljava/lang/Class;

    .line 121
    iput-object p1, p0, Lbsh/NameSpace;->classStatic:Ljava/lang/Class;

    .line 122
    invoke-virtual {p0, p1}, Lbsh/NameSpace;->importStatic(Ljava/lang/Class;)V

    .line 123
    return-void
.end method

.method setLocalVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "strictJava"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 267
    return-void
.end method

.method setLocalVariableOrProperty(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "strictJava"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lbsh/NameSpace;->setVariableOrProperty(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 385
    return-void
.end method

.method public setMethod(Ljava/lang/String;Lbsh/BshMethod;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Lbsh/BshMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 885
    iget-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 886
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    .line 888
    :cond_0
    iget-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 890
    .local v0, "m":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 891
    iget-object v1, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 893
    :cond_1
    instance-of v1, v0, Lbsh/BshMethod;

    if-eqz v1, :cond_2

    .line 894
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 895
    .local v1, "v":Ljava/util/Vector;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 896
    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 897
    iget-object v2, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    .end local v1    # "v":Ljava/util/Vector;
    goto :goto_0

    .line 899
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 900
    :goto_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 193
    iput-object p1, p0, Lbsh/NameSpace;->nsName:Ljava/lang/String;

    .line 194
    return-void
.end method

.method setNode(Lbsh/SimpleNode;)V
    .locals 0
    .param p1, "node"    # Lbsh/SimpleNode;

    .line 211
    iput-object p1, p0, Lbsh/NameSpace;->callerInfoNode:Lbsh/SimpleNode;

    .line 212
    return-void
.end method

.method setPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1688
    iput-object p1, p0, Lbsh/NameSpace;->packageName:Ljava/lang/String;

    .line 1689
    return-void
.end method

.method public setParent(Lbsh/NameSpace;)V
    .locals 0
    .param p1, "parent"    # Lbsh/NameSpace;

    .line 668
    iput-object p1, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    .line 671
    if-nez p1, :cond_0

    .line 672
    invoke-virtual {p0}, Lbsh/NameSpace;->loadDefaultImports()V

    .line 673
    :cond_0
    return-void
.end method

.method public setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "modifiers"    # Lbsh/Modifiers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 825
    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 826
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    .line 829
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbsh/NameSpace;->getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object v1

    .line 835
    .local v1, "existing":Lbsh/Variable;
    if-eqz v1, :cond_2

    .line 838
    invoke-virtual {v1}, Lbsh/Variable;->getType()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 843
    invoke-virtual {v1}, Lbsh/Variable;->getType()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p2, :cond_1

    .line 851
    invoke-virtual {v1, p3, v0}, Lbsh/Variable;->setValue(Ljava/lang/Object;I)V

    .line 852
    return-void

    .line 845
    :cond_1
    new-instance v0, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Typed variable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was previously declared with type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 847
    invoke-virtual {v1}, Lbsh/Variable;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_2
    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lbsh/NameSpace;->createVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)Lbsh/Variable;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    return-void
.end method

.method public setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "isFinal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 794
    new-instance v0, Lbsh/Modifiers;

    invoke-direct {v0}, Lbsh/Modifiers;-><init>()V

    .line 795
    .local v0, "modifiers":Lbsh/Modifiers;
    if-eqz p4, :cond_0

    .line 796
    const/4 v1, 0x2

    const-string v2, "final"

    invoke-virtual {v0, v1, v2}, Lbsh/Modifiers;->addModifier(ILjava/lang/String;)V

    .line 797
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lbsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    .line 798
    return-void
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "strictJava"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 255
    sget-boolean v0, Lbsh/Interpreter;->LOCALSCOPING:Z

    if-eqz v0, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 256
    .local v0, "recurse":Z
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 257
    return-void
.end method

.method setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "strictJava"    # Z
    .param p4, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    .line 300
    :cond_0
    if-eqz p2, :cond_3

    .line 304
    invoke-virtual {p0, p1, p4}, Lbsh/NameSpace;->getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object v0

    .line 307
    .local v0, "existing":Lbsh/Variable;
    if-eqz v0, :cond_1

    .line 310
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, p2, v1}, Lbsh/Variable;->setValue(Ljava/lang/Object;I)V
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    goto :goto_0

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Lbsh/UtilEvalError;
    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Variable assignment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 313
    invoke-virtual {v1}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    .end local v1    # "e":Lbsh/UtilEvalError;
    :cond_1
    if-nez p3, :cond_2

    .line 326
    move-object v1, p0

    .line 328
    .local v1, "varScope":Lbsh/NameSpace;
    iget-object v2, v1, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    const/4 v3, 0x0

    .line 329
    invoke-virtual {p0, p1, p2, v3}, Lbsh/NameSpace;->createVariable(Ljava/lang/String;Ljava/lang/Object;Lbsh/Modifiers;)Lbsh/Variable;

    move-result-object v3

    .line 328
    invoke-virtual {v2, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    .line 334
    .end local v1    # "varScope":Lbsh/NameSpace;
    :goto_0
    return-void

    .line 319
    :cond_2
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(Strict Java mode) Assignment to undeclared variable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    .end local v0    # "existing":Lbsh/Variable;
    :cond_3
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "null variable value"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariableOrProperty(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "strictJava"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 359
    sget-boolean v0, Lbsh/Interpreter;->LOCALSCOPING:Z

    if-eqz v0, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 360
    .local v0, "recurse":Z
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lbsh/NameSpace;->setVariableOrProperty(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 361
    return-void
.end method

.method setVariableOrProperty(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "strictJava"    # Z
    .param p4, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 414
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    .line 417
    :cond_0
    if-eqz p2, :cond_4

    .line 421
    invoke-virtual {p0, p1, p4}, Lbsh/NameSpace;->getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object v0

    .line 424
    .local v0, "existing":Lbsh/Variable;
    if-eqz v0, :cond_1

    .line 427
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, p2, v1}, Lbsh/Variable;->setValue(Ljava/lang/Object;I)V
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    goto :goto_0

    .line 428
    :catch_0
    move-exception v1

    .line 429
    .local v1, "e":Lbsh/UtilEvalError;
    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Variable assignment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 430
    invoke-virtual {v1}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 435
    .end local v1    # "e":Lbsh/UtilEvalError;
    :cond_1
    if-nez p3, :cond_3

    .line 440
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lbsh/NameSpace;->attemptSetPropertyValue(Ljava/lang/String;Ljava/lang/Object;Lbsh/Interpreter;)Z

    move-result v2

    .line 442
    .local v2, "setProp":Z
    if-eqz v2, :cond_2

    .line 443
    return-void

    .line 448
    :cond_2
    move-object v3, p0

    .line 450
    .local v3, "varScope":Lbsh/NameSpace;
    iget-object v4, v3, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    .line 451
    invoke-virtual {p0, p1, p2, v1}, Lbsh/NameSpace;->createVariable(Ljava/lang/String;Ljava/lang/Object;Lbsh/Modifiers;)Lbsh/Variable;

    move-result-object v1

    .line 450
    invoke-virtual {v4, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    .line 456
    .end local v2    # "setProp":Z
    .end local v3    # "varScope":Lbsh/NameSpace;
    :goto_0
    return-void

    .line 436
    :cond_3
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(Strict Java mode) Assignment to undeclared variable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    .end local v0    # "existing":Lbsh/Variable;
    :cond_4
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "null variable value"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NameSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/NameSpace;->nsName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1448
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbsh/NameSpace;->nsName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1449
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lbsh/NameSpace;->isClass:Z

    const-string v2, ""

    if-eqz v1, :cond_1

    const-string v1, " (isClass) "

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lbsh/NameSpace;->isMethod:Z

    if-eqz v1, :cond_2

    const-string v1, " (method) "

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/NameSpace;->classStatic:Ljava/lang/Class;

    if-eqz v1, :cond_3

    const-string v1, " (class static) "

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/NameSpace;->classInstance:Ljava/lang/Object;

    if-eqz v1, :cond_4

    const-string v2, " (class instance) "

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsetVariable(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 484
    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    .line 489
    :cond_0
    return-void
.end method

.method protected unwrapVariable(Lbsh/Variable;)Ljava/lang/Object;
    .locals 1
    .param p1, "var"    # Lbsh/Variable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 784
    if-nez p1, :cond_0

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lbsh/Variable;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
