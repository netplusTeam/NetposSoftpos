.class public Ljavassist/tools/reflect/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"

# interfaces
.implements Ljavassist/Translator;


# static fields
.field static final classMetaobjectClassName:Ljava/lang/String; = "javassist.tools.reflect.ClassMetaobject"

.field static final classobjectAccessor:Ljava/lang/String; = "_getClass"

.field static final classobjectField:Ljava/lang/String; = "_classobject"

.field static final metaobjectClassName:Ljava/lang/String; = "javassist.tools.reflect.Metaobject"

.field static final metaobjectField:Ljava/lang/String; = "_metaobject"

.field static final metaobjectGetter:Ljava/lang/String; = "_getMetaobject"

.field static final metaobjectSetter:Ljava/lang/String; = "_setMetaobject"

.field static final readPrefix:Ljava/lang/String; = "_r_"

.field static final writePrefix:Ljava/lang/String; = "_w_"


# instance fields
.field protected classPool:Ljavassist/ClassPool;

.field protected converter:Ljavassist/CodeConverter;

.field protected readParam:[Ljavassist/CtClass;

.field protected trapMethod:Ljavassist/CtMethod;

.field protected trapRead:Ljavassist/CtMethod;

.field protected trapStaticMethod:Ljavassist/CtMethod;

.field protected trapWrite:Ljavassist/CtMethod;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    .line 110
    new-instance v0, Ljavassist/CodeConverter;

    invoke-direct {v0}, Ljavassist/CodeConverter;-><init>()V

    iput-object v0, p0, Ljavassist/tools/reflect/Reflection;->converter:Ljavassist/CodeConverter;

    .line 111
    return-void
.end method

.method private findOriginal(Ljavassist/CtMethod;Z)Ljavassist/CtMethod;
    .locals 6
    .param p1, "m"    # Ljavassist/CtMethod;
    .param p2, "dontSearch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 355
    if-eqz p2, :cond_0

    .line 356
    return-object p1

    .line 358
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/CtClass;->getDeclaredMethods()[Ljavassist/CtMethod;

    move-result-object v1

    .line 360
    .local v1, "ms":[Ljavassist/CtMethod;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 361
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, "orgName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 363
    const-string v4, "_m_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v1, v2

    .line 364
    invoke-virtual {v4}, Ljavassist/CtMethod;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljavassist/CtMethod;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    aget-object v4, v1, v2

    return-object v4

    .line 360
    .end local v3    # "orgName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    .end local v2    # "i":I
    :cond_2
    return-object p1
.end method

.method private isExcluded(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 97
    const-string v0, "_m_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    const-string v0, "_getClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    const-string v0, "_setMetaobject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    const-string v0, "_getMetaobject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    const-string v0, "_r_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const-string v0, "_w_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 97
    :goto_1
    return v0
.end method

.method private modifyClassfile(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtClass;)Z
    .locals 7
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "metaobject"    # Ljavassist/CtClass;
    .param p3, "metaclass"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 259
    const-string v0, "Reflective"

    invoke-virtual {p1, v0}, Ljavassist/CtClass;->getAttribute(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 260
    return v2

    .line 261
    :cond_0
    new-array v1, v2, [B

    invoke-virtual {p1, v0, v1}, Ljavassist/CtClass;->setAttribute(Ljava/lang/String;[B)V

    .line 263
    iget-object v0, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    const-string v1, "javassist.tools.reflect.Metalevel"

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 264
    .local v0, "mlevel":Ljavassist/CtClass;
    invoke-virtual {p1, v0}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    .line 265
    .local v1, "addMeta":Z
    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {p1, v0}, Ljavassist/CtClass;->addInterface(Ljavassist/CtClass;)V

    .line 268
    :cond_1
    invoke-direct {p0, p1, v1}, Ljavassist/tools/reflect/Reflection;->processMethods(Ljavassist/CtClass;Z)V

    .line 269
    invoke-direct {p0, p1}, Ljavassist/tools/reflect/Reflection;->processFields(Ljavassist/CtClass;)V

    .line 272
    if-eqz v1, :cond_2

    .line 273
    new-instance v4, Ljavassist/CtField;

    iget-object v5, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    const-string v6, "javassist.tools.reflect.Metaobject"

    invoke-virtual {v5, v6}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v5

    const-string v6, "_metaobject"

    invoke-direct {v4, v5, v6, p1}, Ljavassist/CtField;-><init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V

    .line 275
    .local v4, "f":Ljavassist/CtField;
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljavassist/CtField;->setModifiers(I)V

    .line 276
    invoke-static {p2}, Ljavassist/CtField$Initializer;->byNewWithParams(Ljavassist/CtClass;)Ljavassist/CtField$Initializer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljavassist/CtClass;->addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    .line 278
    const-string v5, "_getMetaobject"

    invoke-static {v5, v4}, Ljavassist/CtNewMethod;->getter(Ljava/lang/String;Ljavassist/CtField;)Ljavassist/CtMethod;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    .line 279
    const-string v5, "_setMetaobject"

    invoke-static {v5, v4}, Ljavassist/CtNewMethod;->setter(Ljava/lang/String;Ljavassist/CtField;)Ljavassist/CtMethod;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    .line 282
    .end local v4    # "f":Ljavassist/CtField;
    :cond_2
    new-instance v4, Ljavassist/CtField;

    iget-object v5, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    const-string v6, "javassist.tools.reflect.ClassMetaobject"

    invoke-virtual {v5, v6}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v5

    const-string v6, "_classobject"

    invoke-direct {v4, v5, v6, p1}, Ljavassist/CtField;-><init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V

    .line 284
    .restart local v4    # "f":Ljavassist/CtField;
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljavassist/CtField;->setModifiers(I)V

    .line 285
    new-array v5, v3, [Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 285
    invoke-static {p3, v5}, Ljavassist/CtField$Initializer;->byNew(Ljavassist/CtClass;[Ljava/lang/String;)Ljavassist/CtField$Initializer;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Ljavassist/CtClass;->addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    .line 288
    const-string v2, "_getClass"

    invoke-static {v2, v4}, Ljavassist/CtNewMethod;->getter(Ljava/lang/String;Ljavassist/CtField;)Ljavassist/CtMethod;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    .line 289
    return v3
.end method

.method private processFields(Ljavassist/CtClass;)V
    .locals 17
    .param p1, "clazz"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 374
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getDeclaredFields()[Ljavassist/CtField;

    move-result-object v9

    .line 375
    .local v9, "fs":[Ljavassist/CtField;
    const/4 v1, 0x0

    move v10, v1

    .local v10, "i":I
    :goto_0
    array-length v1, v9

    if-ge v10, v1, :cond_1

    .line 376
    aget-object v11, v9, v10

    .line 377
    .local v11, "f":Ljavassist/CtField;
    invoke-virtual {v11}, Ljavassist/CtField;->getModifiers()I

    move-result v1

    .line 378
    .local v1, "mod":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_0

    .line 379
    or-int/lit8 v12, v1, 0x8

    .line 380
    .end local v1    # "mod":I
    .local v12, "mod":I
    invoke-virtual {v11}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v13

    .line 381
    .local v13, "name":Ljava/lang/String;
    invoke-virtual {v11}, Ljavassist/CtField;->getType()Ljavassist/CtClass;

    move-result-object v14

    .line 382
    .local v14, "ftype":Ljavassist/CtClass;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_r_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Ljavassist/tools/reflect/Reflection;->readParam:[Ljavassist/CtClass;

    const/4 v4, 0x0

    iget-object v5, v0, Ljavassist/tools/reflect/Reflection;->trapRead:Ljavassist/CtMethod;

    .line 385
    invoke-static {v13}, Ljavassist/CtMethod$ConstParameter;->string(Ljava/lang/String;)Ljavassist/CtMethod$ConstParameter;

    move-result-object v6

    .line 383
    move-object v1, v14

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v7}, Ljavassist/CtNewMethod;->wrapped(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object v15

    .line 387
    .local v15, "wmethod":Ljavassist/CtMethod;
    invoke-virtual {v15, v12}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 388
    invoke-virtual {v8, v15}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    .line 389
    const/4 v1, 0x2

    new-array v7, v1, [Ljavassist/CtClass;

    .line 390
    .local v7, "writeParam":[Ljavassist/CtClass;
    const/4 v1, 0x0

    iget-object v2, v0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    const-string v3, "java.lang.Object"

    invoke-virtual {v2, v3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2

    aput-object v2, v7, v1

    .line 391
    const/4 v1, 0x1

    aput-object v14, v7, v1

    .line 392
    sget-object v1, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_w_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Ljavassist/tools/reflect/Reflection;->trapWrite:Ljavassist/CtMethod;

    .line 395
    invoke-static {v13}, Ljavassist/CtMethod$ConstParameter;->string(Ljava/lang/String;)Ljavassist/CtMethod$ConstParameter;

    move-result-object v6

    .line 392
    move-object v3, v7

    move-object/from16 v16, v7

    .end local v7    # "writeParam":[Ljavassist/CtClass;
    .local v16, "writeParam":[Ljavassist/CtClass;
    move-object/from16 v7, p1

    invoke-static/range {v1 .. v7}, Ljavassist/CtNewMethod;->wrapped(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object v1

    .line 396
    .end local v15    # "wmethod":Ljavassist/CtMethod;
    .local v1, "wmethod":Ljavassist/CtMethod;
    invoke-virtual {v1, v12}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 397
    invoke-virtual {v8, v1}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    .line 375
    .end local v1    # "wmethod":Ljavassist/CtMethod;
    .end local v11    # "f":Ljavassist/CtField;
    .end local v12    # "mod":I
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "ftype":Ljavassist/CtClass;
    .end local v16    # "writeParam":[Ljavassist/CtClass;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 400
    .end local v10    # "i":I
    :cond_1
    return-void
.end method

.method private processMethods(Ljavassist/CtClass;Z)V
    .locals 10
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "dontSearch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 295
    invoke-virtual {p1}, Ljavassist/CtClass;->getMethods()[Ljavassist/CtMethod;

    move-result-object v0

    .line 296
    .local v0, "ms":[Ljavassist/CtMethod;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 297
    aget-object v8, v0, v1

    .line 298
    .local v8, "m":Ljavassist/CtMethod;
    invoke-virtual {v8}, Ljavassist/CtMethod;->getModifiers()I

    move-result v9

    .line 299
    .local v9, "mod":I
    invoke-static {v9}, Ljavassist/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v9}, Ljavassist/Modifier;->isAbstract(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    move-object v2, p0

    move v3, v9

    move-object v4, p1

    move-object v5, v8

    move v6, v1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Ljavassist/tools/reflect/Reflection;->processMethods0(ILjavassist/CtClass;Ljavassist/CtMethod;IZ)V

    .line 296
    .end local v8    # "m":Ljavassist/CtMethod;
    .end local v9    # "mod":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private processMethods0(ILjavassist/CtClass;Ljavassist/CtMethod;IZ)V
    .locals 10
    .param p1, "mod"    # I
    .param p2, "clazz"    # Ljavassist/CtClass;
    .param p3, "m"    # Ljavassist/CtMethod;
    .param p4, "identifier"    # I
    .param p5, "dontSearch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 309
    invoke-virtual {p3}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v7

    .line 311
    .local v7, "name":Ljava/lang/String;
    invoke-direct {p0, v7}, Ljavassist/tools/reflect/Reflection;->isExcluded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    return-void

    .line 315
    :cond_0
    invoke-virtual {p3}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    if-ne v0, p2, :cond_3

    .line 316
    invoke-static {p1}, Ljavassist/Modifier;->isNative(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    return-void

    .line 319
    :cond_1
    move-object v0, p3

    .line 320
    .local v0, "m2":Ljavassist/CtMethod;
    invoke-static {p1}, Ljavassist/Modifier;->isFinal(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    and-int/lit8 p1, p1, -0x11

    .line 322
    invoke-virtual {v0, p1}, Ljavassist/CtMethod;->setModifiers(I)V

    move-object v8, v0

    goto :goto_0

    .line 320
    :cond_2
    move-object v8, v0

    goto :goto_0

    .line 326
    .end local v0    # "m2":Ljavassist/CtMethod;
    :cond_3
    invoke-static {p1}, Ljavassist/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    return-void

    .line 329
    :cond_4
    and-int/lit16 p1, p1, -0x101

    .line 330
    invoke-direct {p0, p3, p5}, Ljavassist/tools/reflect/Reflection;->findOriginal(Ljavassist/CtMethod;Z)Ljavassist/CtMethod;

    move-result-object v0

    invoke-static {v0, p2}, Ljavassist/CtNewMethod;->delegator(Ljavassist/CtMethod;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object v0

    .line 331
    .restart local v0    # "m2":Ljavassist/CtMethod;
    invoke-virtual {v0, p1}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 332
    invoke-virtual {p2, v0}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    move-object v8, v0

    .line 335
    .end local v0    # "m2":Ljavassist/CtMethod;
    .local v8, "m2":Ljavassist/CtMethod;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_m_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljavassist/CtMethod;->setName(Ljava/lang/String;)V

    .line 338
    invoke-static {p1}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 339
    iget-object v0, p0, Ljavassist/tools/reflect/Reflection;->trapStaticMethod:Ljavassist/CtMethod;

    move-object v9, v0

    .local v0, "body":Ljavassist/CtMethod;
    goto :goto_1

    .line 341
    .end local v0    # "body":Ljavassist/CtMethod;
    :cond_5
    iget-object v0, p0, Ljavassist/tools/reflect/Reflection;->trapMethod:Ljavassist/CtMethod;

    move-object v9, v0

    .line 343
    .local v9, "body":Ljavassist/CtMethod;
    :goto_1
    nop

    .line 344
    invoke-virtual {p3}, Ljavassist/CtMethod;->getReturnType()Ljavassist/CtClass;

    move-result-object v0

    .line 345
    invoke-virtual {p3}, Ljavassist/CtMethod;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v2

    invoke-virtual {p3}, Ljavassist/CtMethod;->getExceptionTypes()[Ljavassist/CtClass;

    move-result-object v3

    .line 346
    invoke-static {p4}, Ljavassist/CtMethod$ConstParameter;->integer(I)Ljavassist/CtMethod$ConstParameter;

    move-result-object v5

    .line 344
    move-object v1, v7

    move-object v4, v9

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Ljavassist/CtNewMethod;->wrapped(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object v0

    .line 348
    .local v0, "wmethod":Ljavassist/CtMethod;
    invoke-virtual {v0, p1}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 349
    invoke-virtual {p2, v0}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    .line 350
    return-void
.end method

.method private registerReflectiveClass(Ljavassist/CtClass;)V
    .locals 8
    .param p1, "clazz"    # Ljavassist/CtClass;

    .line 243
    invoke-virtual {p1}, Ljavassist/CtClass;->getDeclaredFields()[Ljavassist/CtField;

    move-result-object v0

    .line 244
    .local v0, "fs":[Ljavassist/CtField;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 245
    aget-object v2, v0, v1

    .line 246
    .local v2, "f":Ljavassist/CtField;
    invoke-virtual {v2}, Ljavassist/CtField;->getModifiers()I

    move-result v3

    .line 247
    .local v3, "mod":I
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_0

    .line 248
    invoke-virtual {v2}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Ljavassist/tools/reflect/Reflection;->converter:Ljavassist/CodeConverter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_r_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, p1, v6}, Ljavassist/CodeConverter;->replaceFieldRead(Ljavassist/CtField;Ljavassist/CtClass;Ljava/lang/String;)V

    .line 250
    iget-object v5, p0, Ljavassist/tools/reflect/Reflection;->converter:Ljavassist/CodeConverter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_w_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, p1, v6}, Ljavassist/CodeConverter;->replaceFieldWrite(Ljavassist/CtField;Ljavassist/CtClass;Ljava/lang/String;)V

    .line 244
    .end local v2    # "f":Ljavassist/CtField;
    .end local v3    # "mod":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public makeReflective(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
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

    .line 193
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "metaobject":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "metaclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {p0, v0, v1, v2}, Ljavassist/tools/reflect/Reflection;->makeReflective(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public makeReflective(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "metaobject"    # Ljava/lang/String;
    .param p3, "metaclass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    iget-object v1, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    .line 168
    invoke-virtual {v1, p2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    iget-object v2, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    .line 169
    invoke-virtual {v2, p3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2

    .line 167
    invoke-virtual {p0, v0, v1, v2}, Ljavassist/tools/reflect/Reflection;->makeReflective(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v0

    return v0
.end method

.method public makeReflective(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtClass;)Z
    .locals 3
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "metaobject"    # Ljavassist/CtClass;
    .param p3, "metaclass"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/tools/reflect/CannotReflectException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 220
    invoke-virtual {p1}, Ljavassist/CtClass;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    const-string v1, "javassist.tools.reflect.ClassMetaobject"

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/CtClass;->subclassOf(Ljavassist/CtClass;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    const-string v1, "javassist.tools.reflect.Metaobject"

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/CtClass;->subclassOf(Ljavassist/CtClass;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-direct {p0, p1}, Ljavassist/tools/reflect/Reflection;->registerReflectiveClass(Ljavassist/CtClass;)V

    .line 235
    invoke-direct {p0, p1, p2, p3}, Ljavassist/tools/reflect/Reflection;->modifyClassfile(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v0

    return v0

    .line 230
    :cond_0
    new-instance v0, Ljavassist/tools/reflect/CannotReflectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot reflect a subclass of Metaobject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/tools/reflect/CannotReflectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    new-instance v0, Ljavassist/tools/reflect/CannotReflectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot reflect a subclass of ClassMetaobject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/tools/reflect/CannotReflectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_2
    new-instance v0, Ljavassist/tools/reflect/CannotReflectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot reflect an interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/tools/reflect/CannotReflectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onLoad(Ljavassist/ClassPool;Ljava/lang/String;)V
    .locals 2
    .param p1, "pool"    # Ljavassist/ClassPool;
    .param p2, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 146
    invoke-virtual {p1, p2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 147
    .local v0, "clazz":Ljavassist/CtClass;
    iget-object v1, p0, Ljavassist/tools/reflect/Reflection;->converter:Ljavassist/CodeConverter;

    invoke-virtual {v0, v1}, Ljavassist/CtClass;->instrument(Ljavassist/CodeConverter;)V

    .line 148
    return-void
.end method

.method public rebuildClassFile(Ljavassist/bytecode/ClassFile;)V
    .locals 3
    .param p1, "cf"    # Ljavassist/bytecode/ClassFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 403
    sget v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 404
    return-void

    .line 406
    :cond_0
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/MethodInfo;

    .line 407
    .local v1, "mi":Ljavassist/bytecode/MethodInfo;
    iget-object v2, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1, v2}, Ljavassist/bytecode/MethodInfo;->rebuildStackMap(Ljavassist/ClassPool;)V

    .end local v1    # "mi":Ljavassist/bytecode/MethodInfo;
    goto :goto_0

    .line 408
    :cond_1
    return-void
.end method

.method public start(Ljavassist/ClassPool;)V
    .locals 7
    .param p1, "pool"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 118
    const-string v0, "javassist.tools.reflect.Sample is not found or broken."

    iput-object p1, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    .line 119
    const-string v1, "javassist.tools.reflect.Sample is not found or broken."

    .line 122
    .local v1, "msg":Ljava/lang/String;
    :try_start_0
    const-string v2, "javassist.tools.reflect.Sample"

    invoke-virtual {p1, v2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2

    .line 123
    .local v2, "c":Ljavassist/CtClass;
    invoke-virtual {v2}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljavassist/tools/reflect/Reflection;->rebuildClassFile(Ljavassist/bytecode/ClassFile;)V

    .line 124
    const-string v3, "trap"

    invoke-virtual {v2, v3}, Ljavassist/CtClass;->getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v3

    iput-object v3, p0, Ljavassist/tools/reflect/Reflection;->trapMethod:Ljavassist/CtMethod;

    .line 125
    const-string v3, "trapStatic"

    invoke-virtual {v2, v3}, Ljavassist/CtClass;->getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v3

    iput-object v3, p0, Ljavassist/tools/reflect/Reflection;->trapStaticMethod:Ljavassist/CtMethod;

    .line 126
    const-string v3, "trapRead"

    invoke-virtual {v2, v3}, Ljavassist/CtClass;->getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v3

    iput-object v3, p0, Ljavassist/tools/reflect/Reflection;->trapRead:Ljavassist/CtMethod;

    .line 127
    const-string v3, "trapWrite"

    invoke-virtual {v2, v3}, Ljavassist/CtClass;->getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v3

    iput-object v3, p0, Ljavassist/tools/reflect/Reflection;->trapWrite:Ljavassist/CtMethod;

    .line 128
    const/4 v3, 0x1

    new-array v3, v3, [Ljavassist/CtClass;

    const/4 v4, 0x0

    iget-object v5, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    const-string v6, "java.lang.Object"

    .line 129
    invoke-virtual {v5, v6}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v5

    aput-object v5, v3, v4

    iput-object v3, p0, Ljavassist/tools/reflect/Reflection;->readParam:[Ljavassist/CtClass;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v2    # "c":Ljavassist/CtClass;
    nop

    .line 136
    return-void

    .line 133
    :catch_0
    move-exception v2

    .line 134
    .local v2, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    .end local v2    # "e":Ljavassist/bytecode/BadBytecode;
    :catch_1
    move-exception v2

    .line 132
    .local v2, "e":Ljavassist/NotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
