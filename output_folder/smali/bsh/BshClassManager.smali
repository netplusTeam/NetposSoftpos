.class public Lbsh/BshClassManager;
.super Ljava/lang/Object;
.source "BshClassManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/BshClassManager$SignatureKey;,
        Lbsh/BshClassManager$Listener;
    }
.end annotation


# static fields
.field private static NOVALUE:Ljava/lang/Object;


# instance fields
.field protected transient absoluteClassCache:Ljava/util/Hashtable;

.field protected transient absoluteNonClasses:Ljava/util/Hashtable;

.field protected transient associatedClasses:Ljava/util/Hashtable;

.field private declaringInterpreter:Lbsh/Interpreter;

.field protected transient definingClasses:Ljava/util/Hashtable;

.field protected transient definingClassesBaseNames:Ljava/util/Hashtable;

.field protected externalClassLoader:Ljava/lang/ClassLoader;

.field protected transient resolvedObjectMethods:Ljava/util/Hashtable;

.field protected transient resolvedStaticMethods:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbsh/BshClassManager;->NOVALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/BshClassManager;->absoluteClassCache:Ljava/util/Hashtable;

    .line 100
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/BshClassManager;->absoluteNonClasses:Ljava/util/Hashtable;

    .line 107
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/BshClassManager;->resolvedObjectMethods:Ljava/util/Hashtable;

    .line 108
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/BshClassManager;->resolvedStaticMethods:Ljava/util/Hashtable;

    .line 110
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/BshClassManager;->definingClasses:Ljava/util/Hashtable;

    .line 111
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/BshClassManager;->definingClassesBaseNames:Ljava/util/Hashtable;

    .line 114
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/BshClassManager;->associatedClasses:Ljava/util/Hashtable;

    return-void
.end method

.method protected static cmUnavailable()Lbsh/UtilEvalError;
    .locals 2

    .line 595
    new-instance v0, Lbsh/Capabilities$Unavailable;

    const-string v1, "ClassLoading features unavailable."

    invoke-direct {v0, v1}, Lbsh/Capabilities$Unavailable;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createClassManager(Lbsh/Interpreter;)Lbsh/BshClassManager;
    .locals 4
    .param p0, "interpreter"    # Lbsh/Interpreter;

    .line 128
    const-string v0, "java.lang.ref.WeakReference"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "java.util.HashMap"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "bsh.classpath.ClassManagerImpl"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 136
    .local v0, "clas":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsh/BshClassManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 139
    .local v0, "manager":Lbsh/BshClassManager;
    goto :goto_0

    .line 137
    .end local v0    # "manager":Lbsh/BshClassManager;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading classmanager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Lbsh/BshClassManager;

    invoke-direct {v0}, Lbsh/BshClassManager;-><init>()V

    .line 143
    .local v0, "manager":Lbsh/BshClassManager;
    :goto_0
    if-nez p0, :cond_1

    .line 144
    new-instance v1, Lbsh/Interpreter;

    invoke-direct {v1}, Lbsh/Interpreter;-><init>()V

    move-object p0, v1

    .line 145
    :cond_1
    iput-object p0, v0, Lbsh/BshClassManager;->declaringInterpreter:Lbsh/Interpreter;

    .line 146
    return-object v0
.end method

.method protected static noClassDefFound(Ljava/lang/String;Ljava/lang/Error;)Ljava/lang/Error;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Error;

    .line 589
    new-instance v0, Ljava/lang/NoClassDefFoundError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A class required by class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " could not be loaded:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 591
    invoke-virtual {p1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addClassPath(Ljava/net/URL;)V
    .locals 0
    .param p1, "path"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    return-void
.end method

.method public addListener(Lbsh/BshClassManager$Listener;)V
    .locals 0
    .param p1, "l"    # Lbsh/BshClassManager$Listener;

    .line 487
    return-void
.end method

.method public associateClass(Ljava/lang/Class;)V
    .locals 2
    .param p1, "clas"    # Ljava/lang/Class;

    .line 312
    iget-object v0, p0, Lbsh/BshClassManager;->associatedClasses:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    return-void
.end method

.method public cacheClassInfo(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Class;

    .line 290
    if-eqz p2, :cond_0

    .line 291
    iget-object v0, p0, Lbsh/BshClassManager;->absoluteClassCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lbsh/BshClassManager;->absoluteNonClasses:Ljava/util/Hashtable;

    sget-object v1, Lbsh/BshClassManager;->NOVALUE:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :goto_0
    return-void
.end method

.method public cacheResolvedMethod(Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "clas"    # Ljava/lang/Class;
    .param p2, "types"    # [Ljava/lang/Class;
    .param p3, "method"    # Ljava/lang/reflect/Method;

    .line 329
    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheResolvedMethod putting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 333
    :cond_0
    new-instance v0, Lbsh/BshClassManager$SignatureKey;

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lbsh/BshClassManager$SignatureKey;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 334
    .local v0, "sk":Lbsh/BshClassManager$SignatureKey;
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lbsh/BshClassManager;->resolvedStaticMethods:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 337
    :cond_1
    iget-object v1, p0, Lbsh/BshClassManager;->resolvedObjectMethods:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :goto_0
    return-void
.end method

.method public classExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 150
    invoke-virtual {p0, p1}, Lbsh/BshClassManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 163
    invoke-virtual {p0, p1}, Lbsh/BshClassManager;->isClassBeingDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "clas":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {p0, p1}, Lbsh/BshClassManager;->plainClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 171
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 174
    :goto_1
    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Lbsh/BshClassManager;->loadSourceClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 177
    :cond_0
    return-object v0

    .line 164
    .end local v0    # "clas":Ljava/lang/Class;
    :cond_1
    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to load class in the process of being defined: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected classLoaderChanged()V
    .locals 0

    .line 582
    return-void
.end method

.method protected clearCaches()V
    .locals 1

    .line 374
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/BshClassManager;->absoluteNonClasses:Ljava/util/Hashtable;

    .line 375
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/BshClassManager;->absoluteClassCache:Ljava/util/Hashtable;

    .line 376
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/BshClassManager;->resolvedObjectMethods:Ljava/util/Hashtable;

    .line 377
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/BshClassManager;->resolvedStaticMethods:Ljava/util/Hashtable;

    .line 378
    return-void
.end method

.method public defineClass(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # [B

    .line 553
    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") without class manager package."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected definingClass(Ljava/lang/String;)V
    .locals 6
    .param p1, "className"    # Ljava/lang/String;

    .line 509
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lbsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "baseName":Ljava/lang/String;
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 511
    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 512
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    :cond_0
    iget-object v2, p0, Lbsh/BshClassManager;->definingClassesBaseNames:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 514
    .local v2, "cur":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 520
    iget-object v3, p0, Lbsh/BshClassManager;->definingClasses:Ljava/util/Hashtable;

    sget-object v4, Lbsh/BshClassManager;->NOVALUE:Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object v3, p0, Lbsh/BshClassManager;->definingClassesBaseNames:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    return-void

    .line 515
    :cond_1
    new-instance v3, Lbsh/InterpreterError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Defining class problem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": BeanShell cannot yet simultaneously define two or more "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dependent classes of the same name.  Attempt to define: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while defining: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected doSuperImport()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 466
    invoke-static {}, Lbsh/BshClassManager;->cmUnavailable()Lbsh/UtilEvalError;

    move-result-object v0

    throw v0
.end method

.method protected doneDefiningClass(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 542
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lbsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "baseName":Ljava/lang/String;
    iget-object v1, p0, Lbsh/BshClassManager;->definingClasses:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    iget-object v1, p0, Lbsh/BshClassManager;->definingClassesBaseNames:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 492
    const-string v0, "BshClassManager: no class manager."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public getAssociatedClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lbsh/BshClassManager;->associatedClasses:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method protected getClassBeingDefined(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 533
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lbsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "baseName":Ljava/lang/String;
    iget-object v1, p0, Lbsh/BshClassManager;->definingClassesBaseNames:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method protected getClassNameByUnqName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 484
    invoke-static {}, Lbsh/BshClassManager;->cmUnavailable()Lbsh/UtilEvalError;

    move-result-object v0

    throw v0
.end method

.method protected getResolvedMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "clas"    # Ljava/lang/Class;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "types"    # [Ljava/lang/Class;
    .param p4, "onlyStatic"    # Z

    .line 348
    new-instance v0, Lbsh/BshClassManager$SignatureKey;

    invoke-direct {v0, p1, p2, p3}, Lbsh/BshClassManager$SignatureKey;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 352
    .local v0, "sk":Lbsh/BshClassManager$SignatureKey;
    iget-object v1, p0, Lbsh/BshClassManager;->resolvedStaticMethods:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 353
    .local v1, "method":Ljava/lang/reflect/Method;
    if-nez v1, :cond_0

    if-nez p4, :cond_0

    .line 354
    iget-object v2, p0, Lbsh/BshClassManager;->resolvedObjectMethods:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/reflect/Method;

    .line 356
    :cond_0
    sget-boolean v2, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 358
    const-string v2, " - "

    if-nez v1, :cond_1

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResolvedMethod cache MISS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResolvedMethod cache HIT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 365
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "url":Ljava/net/URL;
    iget-object v1, p0, Lbsh/BshClassManager;->externalClassLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_0

    .line 257
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 259
    :cond_0
    if-nez v0, :cond_1

    .line 260
    const-class v1, Lbsh/Interpreter;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 262
    :cond_1
    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "in":Ljava/io/InputStream;
    iget-object v1, p0, Lbsh/BshClassManager;->externalClassLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_0

    .line 274
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 276
    :cond_0
    if-nez v0, :cond_1

    .line 277
    const-class v1, Lbsh/Interpreter;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 279
    :cond_1
    return-object v0
.end method

.method protected hasSuperImport()Z
    .locals 1

    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method protected isClassBeingDefined(Ljava/lang/String;)Z
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lbsh/BshClassManager;->definingClasses:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected loadSourceClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lbsh/BshClassManager;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 185
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 186
    return-object v2

    .line 189
    :cond_0
    :try_start_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading class from source file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lbsh/BshClassManager;->declaringInterpreter:Lbsh/Interpreter;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v4}, Lbsh/Interpreter;->eval(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_0

    .line 191
    :catch_0
    move-exception v3

    .line 193
    .local v3, "e":Lbsh/EvalError;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 196
    .end local v3    # "e":Lbsh/EvalError;
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Lbsh/BshClassManager;->plainClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 197
    :catch_1
    move-exception v3

    .line 198
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class not found in source file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    return-object v2
.end method

.method public plainClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 220
    const/4 v0, 0x0

    .line 223
    .local v0, "c":Ljava/lang/Class;
    :try_start_0
    iget-object v1, p0, Lbsh/BshClassManager;->externalClassLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 228
    :goto_0
    invoke-virtual {p0, p1, v0}, Lbsh/BshClassManager;->cacheClassInfo(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    nop

    .line 244
    return-object v0

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-static {p1, v1}, Lbsh/BshClassManager;->noClassDefFound(Ljava/lang/String;Ljava/lang/Error;)Ljava/lang/Error;

    move-result-object v2

    throw v2
.end method

.method public reloadAllClasses()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 425
    invoke-static {}, Lbsh/BshClassManager;->cmUnavailable()Lbsh/UtilEvalError;

    move-result-object v0

    throw v0
.end method

.method public reloadClasses([Ljava/lang/String;)V
    .locals 1
    .param p1, "classNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 436
    invoke-static {}, Lbsh/BshClassManager;->cmUnavailable()Lbsh/UtilEvalError;

    move-result-object v0

    throw v0
.end method

.method public reloadPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "pack"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 448
    invoke-static {}, Lbsh/BshClassManager;->cmUnavailable()Lbsh/UtilEvalError;

    move-result-object v0

    throw v0
.end method

.method public removeListener(Lbsh/BshClassManager$Listener;)V
    .locals 0
    .param p1, "l"    # Lbsh/BshClassManager$Listener;

    .line 489
    return-void
.end method

.method public reset()V
    .locals 0

    .line 405
    invoke-virtual {p0}, Lbsh/BshClassManager;->clearCaches()V

    .line 406
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "externalCL"    # Ljava/lang/ClassLoader;

    .line 393
    iput-object p1, p0, Lbsh/BshClassManager;->externalClassLoader:Ljava/lang/ClassLoader;

    .line 394
    invoke-virtual {p0}, Lbsh/BshClassManager;->classLoaderChanged()V

    .line 395
    return-void
.end method

.method public setClassPath([Ljava/net/URL;)V
    .locals 1
    .param p1, "cp"    # [Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 415
    invoke-static {}, Lbsh/BshClassManager;->cmUnavailable()Lbsh/UtilEvalError;

    move-result-object v0

    throw v0
.end method
