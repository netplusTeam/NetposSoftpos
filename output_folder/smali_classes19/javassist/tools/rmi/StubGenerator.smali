.class public Ljavassist/tools/rmi/StubGenerator;
.super Ljava/lang/Object;
.source "StubGenerator.java"

# interfaces
.implements Ljavassist/Translator;


# static fields
.field private static final accessorObjectId:Ljava/lang/String; = "_getObjectId"

.field private static final fieldImporter:Ljava/lang/String; = "importer"

.field private static final fieldObjectId:Ljava/lang/String; = "objectId"

.field private static final sampleClass:Ljava/lang/String; = "javassist.tools.rmi.Sample"


# instance fields
.field private classPool:Ljavassist/ClassPool;

.field private exceptionForProxy:[Ljavassist/CtClass;

.field private forwardMethod:Ljavassist/CtMethod;

.field private forwardStaticMethod:Ljavassist/CtMethod;

.field private interfacesForProxy:[Ljavassist/CtClass;

.field private proxyClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtClass;",
            ">;"
        }
    .end annotation
.end field

.field private proxyConstructorParamTypes:[Ljavassist/CtClass;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavassist/tools/rmi/StubGenerator;->proxyClasses:Ljava/util/Map;

    .line 75
    return-void
.end method

.method private addMethods(Ljavassist/CtClass;[Ljava/lang/reflect/Method;)V
    .locals 11
    .param p1, "proxy"    # Ljavassist/CtClass;
    .param p2, "ms"    # [Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_4

    .line 215
    aget-object v1, p2, v0

    .line 216
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    .line 217
    .local v2, "mod":I
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_3

    .line 218
    invoke-static {v2}, Ljavassist/Modifier;->isFinal(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 219
    invoke-static {v2}, Ljavassist/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    invoke-static {v2}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, p0, Ljavassist/tools/rmi/StubGenerator;->forwardStaticMethod:Ljavassist/CtMethod;

    .local v3, "body":Ljavassist/CtMethod;
    goto :goto_1

    .line 224
    .end local v3    # "body":Ljavassist/CtMethod;
    :cond_0
    iget-object v3, p0, Ljavassist/tools/rmi/StubGenerator;->forwardMethod:Ljavassist/CtMethod;

    .line 226
    .restart local v3    # "body":Ljavassist/CtMethod;
    :goto_1
    nop

    .line 227
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v4}, Ljavassist/tools/rmi/StubGenerator;->toCtClass(Ljava/lang/Class;)Ljavassist/CtClass;

    move-result-object v4

    .line 228
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-direct {p0, v6}, Ljavassist/tools/rmi/StubGenerator;->toCtClass([Ljava/lang/Class;)[Ljavassist/CtClass;

    move-result-object v6

    iget-object v7, p0, Ljavassist/tools/rmi/StubGenerator;->exceptionForProxy:[Ljavassist/CtClass;

    .line 232
    invoke-static {v0}, Ljavassist/CtMethod$ConstParameter;->integer(I)Ljavassist/CtMethod$ConstParameter;

    move-result-object v9

    .line 227
    move-object v8, v3

    move-object v10, p1

    invoke-static/range {v4 .. v10}, Ljavassist/CtNewMethod;->wrapped(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object v4

    .line 234
    .local v4, "wmethod":Ljavassist/CtMethod;
    invoke-virtual {v4, v2}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 235
    invoke-virtual {p1, v4}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    .line 236
    .end local v3    # "body":Ljavassist/CtMethod;
    goto :goto_2

    .line 237
    .end local v4    # "wmethod":Ljavassist/CtMethod;
    :cond_1
    invoke-static {v2}, Ljavassist/Modifier;->isProtected(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 238
    invoke-static {v2}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 240
    :cond_2
    new-instance v3, Ljavassist/CannotCompileException;

    const-string v4, "the methods must be public, protected, or private."

    invoke-direct {v3, v4}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 214
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "mod":I
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private modifySuperclass(Ljavassist/CtClass;)V
    .locals 2
    .param p1, "orgclass"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 253
    :goto_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    .line 254
    .local v0, "superclazz":Ljavassist/CtClass;
    if-nez v0, :cond_0

    .line 255
    goto :goto_1

    .line 258
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljavassist/CtClass;->getDeclaredConstructor([Ljavassist/CtClass;)Ljavassist/CtConstructor;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    nop

    .line 267
    :goto_1
    return-void

    .line 261
    :catch_0
    move-exception v1

    .line 264
    nop

    .line 265
    invoke-static {v0}, Ljavassist/CtNewConstructor;->defaultConstructor(Ljavassist/CtClass;)Ljavassist/CtConstructor;

    move-result-object v1

    .line 264
    invoke-virtual {v0, v1}, Ljavassist/CtClass;->addConstructor(Ljavassist/CtConstructor;)V

    .line 252
    move-object p1, v0

    goto :goto_0
.end method

.method private produceProxyClass(Ljavassist/CtClass;Ljava/lang/Class;)Ljavassist/CtClass;
    .locals 7
    .param p1, "orgclass"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/CtClass;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljavassist/CtClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 143
    .local p2, "orgRtClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljavassist/CtClass;->getModifiers()I

    move-result v0

    .line 144
    .local v0, "modify":I
    invoke-static {v0}, Ljavassist/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljavassist/Modifier;->isNative(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    invoke-static {v0}, Ljavassist/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Ljavassist/tools/rmi/StubGenerator;->classPool:Ljavassist/ClassPool;

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v3

    .line 149
    invoke-virtual {v1, v2, v3}, Ljavassist/ClassPool;->makeClass(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v1

    .line 152
    .local v1, "proxy":Ljavassist/CtClass;
    iget-object v2, p0, Ljavassist/tools/rmi/StubGenerator;->interfacesForProxy:[Ljavassist/CtClass;

    invoke-virtual {v1, v2}, Ljavassist/CtClass;->setInterfaces([Ljavassist/CtClass;)V

    .line 154
    new-instance v2, Ljavassist/CtField;

    iget-object v3, p0, Ljavassist/tools/rmi/StubGenerator;->classPool:Ljavassist/ClassPool;

    .line 155
    const-string v4, "javassist.tools.rmi.ObjectImporter"

    invoke-virtual {v3, v4}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3

    const-string v4, "importer"

    invoke-direct {v2, v3, v4, v1}, Ljavassist/CtField;-><init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V

    .line 157
    .local v2, "f":Ljavassist/CtField;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljavassist/CtField;->setModifiers(I)V

    .line 158
    const/4 v4, 0x0

    invoke-static {v4}, Ljavassist/CtField$Initializer;->byParameter(I)Ljavassist/CtField$Initializer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljavassist/CtClass;->addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    .line 160
    new-instance v4, Ljavassist/CtField;

    sget-object v5, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    const-string v6, "objectId"

    invoke-direct {v4, v5, v6, v1}, Ljavassist/CtField;-><init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V

    move-object v2, v4

    .line 161
    invoke-virtual {v2, v3}, Ljavassist/CtField;->setModifiers(I)V

    .line 162
    const/4 v3, 0x1

    invoke-static {v3}, Ljavassist/CtField$Initializer;->byParameter(I)Ljavassist/CtField$Initializer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavassist/CtClass;->addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    .line 164
    const-string v3, "_getObjectId"

    invoke-static {v3, v2}, Ljavassist/CtNewMethod;->getter(Ljava/lang/String;Ljavassist/CtField;)Ljavassist/CtMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    .line 166
    invoke-static {v1}, Ljavassist/CtNewConstructor;->defaultConstructor(Ljavassist/CtClass;)Ljavassist/CtConstructor;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavassist/CtClass;->addConstructor(Ljavassist/CtConstructor;)V

    .line 167
    iget-object v3, p0, Ljavassist/tools/rmi/StubGenerator;->proxyConstructorParamTypes:[Ljavassist/CtClass;

    const/4 v4, 0x0

    .line 168
    invoke-static {v3, v4, v1}, Ljavassist/CtNewConstructor;->skeleton([Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtConstructor;

    move-result-object v3

    .line 170
    .local v3, "cons":Ljavassist/CtConstructor;
    invoke-virtual {v1, v3}, Ljavassist/CtClass;->addConstructor(Ljavassist/CtConstructor;)V

    .line 173
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Ljavassist/tools/rmi/StubGenerator;->addMethods(Ljavassist/CtClass;[Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    return-object v1

    .line 176
    :catch_0
    move-exception v4

    .line 177
    .local v4, "e":Ljava/lang/SecurityException;
    new-instance v5, Ljavassist/CannotCompileException;

    invoke-direct {v5, v4}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 146
    .end local v1    # "proxy":Ljavassist/CtClass;
    .end local v2    # "f":Ljavassist/CtField;
    .end local v3    # "cons":Ljavassist/CtConstructor;
    .end local v4    # "e":Ljava/lang/SecurityException;
    :cond_0
    new-instance v1, Ljavassist/CannotCompileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be public, non-native, and non-abstract."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toCtClass(Ljava/lang/Class;)Ljavassist/CtClass;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljavassist/CtClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 183
    .local p1, "rtclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    goto :goto_1

    .line 186
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    :goto_0
    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 195
    .local v0, "name":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Ljavassist/tools/rmi/StubGenerator;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    return-object v1

    .line 190
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    :cond_1
    goto :goto_0
.end method

.method private toCtClass([Ljava/lang/Class;)[Ljavassist/CtClass;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljavassist/CtClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 199
    .local p1, "rtclasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p1

    .line 200
    .local v0, "n":I
    new-array v1, v0, [Ljavassist/CtClass;

    .line 201
    .local v1, "ctclasses":[Ljavassist/CtClass;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 202
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Ljavassist/tools/rmi/StubGenerator;->toCtClass(Ljava/lang/Class;)Ljavassist/CtClass;

    move-result-object v3

    aput-object v3, v1, v2

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public isProxyClass(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Ljavassist/tools/rmi/StubGenerator;->proxyClasses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized makeProxyClass(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 130
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "classname":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/tools/rmi/StubGenerator;->proxyClasses:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 132
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 133
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljavassist/tools/rmi/StubGenerator;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Ljavassist/tools/rmi/StubGenerator;->produceProxyClass(Ljavassist/CtClass;Ljava/lang/Class;)Ljavassist/CtClass;

    move-result-object v1

    .line 135
    .local v1, "ctclazz":Ljavassist/CtClass;
    iget-object v2, p0, Ljavassist/tools/rmi/StubGenerator;->proxyClasses:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-direct {p0, v1}, Ljavassist/tools/rmi/StubGenerator;->modifySuperclass(Ljavassist/CtClass;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 129
    .end local v0    # "classname":Ljava/lang/String;
    .end local v1    # "ctclazz":Ljavassist/CtClass;
    .end local p0    # "this":Ljavassist/tools/rmi/StubGenerator;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onLoad(Ljavassist/ClassPool;Ljava/lang/String;)V
    .locals 0
    .param p1, "pool"    # Ljavassist/ClassPool;
    .param p2, "classname"    # Ljava/lang/String;

    .line 106
    return-void
.end method

.method public start(Ljavassist/ClassPool;)V
    .locals 4
    .param p1, "pool"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 85
    iput-object p1, p0, Ljavassist/tools/rmi/StubGenerator;->classPool:Ljavassist/ClassPool;

    .line 86
    const-string v0, "javassist.tools.rmi.Sample"

    invoke-virtual {p1, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 87
    .local v0, "c":Ljavassist/CtClass;
    const-string v1, "forward"

    invoke-virtual {v0, v1}, Ljavassist/CtClass;->getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v1

    iput-object v1, p0, Ljavassist/tools/rmi/StubGenerator;->forwardMethod:Ljavassist/CtMethod;

    .line 88
    const-string v1, "forwardStatic"

    invoke-virtual {v0, v1}, Ljavassist/CtClass;->getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v1

    iput-object v1, p0, Ljavassist/tools/rmi/StubGenerator;->forwardStaticMethod:Ljavassist/CtMethod;

    .line 90
    const-string v1, "javassist.tools.rmi.ObjectImporter"

    const-string v2, "int"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {p1, v1}, Ljavassist/ClassPool;->get([Ljava/lang/String;)[Ljavassist/CtClass;

    move-result-object v1

    iput-object v1, p0, Ljavassist/tools/rmi/StubGenerator;->proxyConstructorParamTypes:[Ljavassist/CtClass;

    .line 93
    const-string v1, "java.io.Serializable"

    const-string v2, "javassist.tools.rmi.Proxy"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p1, v1}, Ljavassist/ClassPool;->get([Ljava/lang/String;)[Ljavassist/CtClass;

    move-result-object v1

    iput-object v1, p0, Ljavassist/tools/rmi/StubGenerator;->interfacesForProxy:[Ljavassist/CtClass;

    .line 96
    const/4 v1, 0x1

    new-array v1, v1, [Ljavassist/CtClass;

    .line 97
    const-string v2, "javassist.tools.rmi.RemoteException"

    invoke-virtual {p1, v2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Ljavassist/tools/rmi/StubGenerator;->exceptionForProxy:[Ljavassist/CtClass;

    .line 98
    return-void
.end method
