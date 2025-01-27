.class public Ljavassist/bytecode/analysis/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field public static final BOGUS:Ljavassist/bytecode/analysis/Type;

.field public static final BOOLEAN:Ljavassist/bytecode/analysis/Type;

.field public static final BYTE:Ljavassist/bytecode/analysis/Type;

.field public static final CHAR:Ljavassist/bytecode/analysis/Type;

.field public static final CLONEABLE:Ljavassist/bytecode/analysis/Type;

.field public static final DOUBLE:Ljavassist/bytecode/analysis/Type;

.field public static final FLOAT:Ljavassist/bytecode/analysis/Type;

.field public static final INTEGER:Ljavassist/bytecode/analysis/Type;

.field public static final LONG:Ljavassist/bytecode/analysis/Type;

.field public static final OBJECT:Ljavassist/bytecode/analysis/Type;

.field public static final RETURN_ADDRESS:Ljavassist/bytecode/analysis/Type;

.field public static final SERIALIZABLE:Ljavassist/bytecode/analysis/Type;

.field public static final SHORT:Ljavassist/bytecode/analysis/Type;

.field public static final THROWABLE:Ljavassist/bytecode/analysis/Type;

.field public static final TOP:Ljavassist/bytecode/analysis/Type;

.field public static final UNINIT:Ljavassist/bytecode/analysis/Type;

.field public static final VOID:Ljavassist/bytecode/analysis/Type;

.field private static final prims:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavassist/CtClass;",
            "Ljavassist/bytecode/analysis/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clazz:Ljavassist/CtClass;

.field private final special:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 45
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, Ljavassist/bytecode/analysis/Type;->prims:Ljava/util/Map;

    .line 47
    new-instance v1, Ljavassist/bytecode/analysis/Type;

    sget-object v2, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    invoke-direct {v1, v2}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    .line 49
    new-instance v2, Ljavassist/bytecode/analysis/Type;

    sget-object v3, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    invoke-direct {v2, v3}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v2, Ljavassist/bytecode/analysis/Type;->BOOLEAN:Ljavassist/bytecode/analysis/Type;

    .line 51
    new-instance v3, Ljavassist/bytecode/analysis/Type;

    sget-object v4, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    invoke-direct {v3, v4}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v3, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    .line 53
    new-instance v4, Ljavassist/bytecode/analysis/Type;

    sget-object v5, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    invoke-direct {v4, v5}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v4, Ljavassist/bytecode/analysis/Type;->CHAR:Ljavassist/bytecode/analysis/Type;

    .line 55
    new-instance v5, Ljavassist/bytecode/analysis/Type;

    sget-object v6, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    invoke-direct {v5, v6}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v5, Ljavassist/bytecode/analysis/Type;->BYTE:Ljavassist/bytecode/analysis/Type;

    .line 57
    new-instance v6, Ljavassist/bytecode/analysis/Type;

    sget-object v7, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    invoke-direct {v6, v7}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v6, Ljavassist/bytecode/analysis/Type;->SHORT:Ljavassist/bytecode/analysis/Type;

    .line 59
    new-instance v7, Ljavassist/bytecode/analysis/Type;

    sget-object v8, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    invoke-direct {v7, v8}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v7, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    .line 61
    new-instance v8, Ljavassist/bytecode/analysis/Type;

    sget-object v9, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    invoke-direct {v8, v9}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v8, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    .line 63
    new-instance v9, Ljavassist/bytecode/analysis/Type;

    sget-object v10, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    invoke-direct {v9, v10}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v9, Ljavassist/bytecode/analysis/Type;->VOID:Ljavassist/bytecode/analysis/Type;

    .line 74
    new-instance v10, Ljavassist/bytecode/analysis/Type;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v10, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    .line 80
    new-instance v10, Ljavassist/bytecode/analysis/Type;

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;Z)V

    sput-object v10, Ljavassist/bytecode/analysis/Type;->RETURN_ADDRESS:Ljavassist/bytecode/analysis/Type;

    .line 83
    new-instance v10, Ljavassist/bytecode/analysis/Type;

    invoke-direct {v10, v11, v12}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;Z)V

    sput-object v10, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    .line 92
    new-instance v10, Ljavassist/bytecode/analysis/Type;

    invoke-direct {v10, v11, v12}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;Z)V

    sput-object v10, Ljavassist/bytecode/analysis/Type;->BOGUS:Ljavassist/bytecode/analysis/Type;

    .line 95
    const-string v10, "java.lang.Object"

    invoke-static {v10}, Ljavassist/bytecode/analysis/Type;->lookupType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v10

    sput-object v10, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    .line 97
    const-string v10, "java.io.Serializable"

    invoke-static {v10}, Ljavassist/bytecode/analysis/Type;->lookupType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v10

    sput-object v10, Ljavassist/bytecode/analysis/Type;->SERIALIZABLE:Ljavassist/bytecode/analysis/Type;

    .line 99
    const-string v10, "java.lang.Cloneable"

    invoke-static {v10}, Ljavassist/bytecode/analysis/Type;->lookupType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v10

    sput-object v10, Ljavassist/bytecode/analysis/Type;->CLONEABLE:Ljavassist/bytecode/analysis/Type;

    .line 101
    const-string v10, "java.lang.Throwable"

    invoke-static {v10}, Ljavassist/bytecode/analysis/Type;->lookupType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v10

    sput-object v10, Ljavassist/bytecode/analysis/Type;->THROWABLE:Ljavassist/bytecode/analysis/Type;

    .line 104
    sget-object v10, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v1, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method constructor <init>(Ljavassist/CtClass;)V
    .locals 1
    .param p1, "clazz"    # Ljavassist/CtClass;

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;Z)V

    .line 139
    return-void
.end method

.method private constructor <init>(Ljavassist/CtClass;Z)V
    .locals 0
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "special"    # Z

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    .line 143
    iput-boolean p2, p0, Ljavassist/bytecode/analysis/Type;->special:Z

    .line 144
    return-void
.end method

.method private createArray(Ljavassist/bytecode/analysis/Type;I)Ljavassist/bytecode/analysis/Type;
    .locals 3
    .param p1, "rootComponent"    # Ljavassist/bytecode/analysis/Type;
    .param p2, "dims"    # I

    .line 319
    instance-of v0, p1, Ljavassist/bytecode/analysis/MultiType;

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Ljavassist/bytecode/analysis/MultiArrayType;

    move-object v1, p1

    check-cast v1, Ljavassist/bytecode/analysis/MultiType;

    invoke-direct {v0, v1, p2}, Ljavassist/bytecode/analysis/MultiArrayType;-><init>(Ljavassist/bytecode/analysis/MultiType;I)V

    return-object v0

    .line 322
    :cond_0
    iget-object v0, p1, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljavassist/bytecode/analysis/Type;->arrayName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Type;->getClassPool(Ljavassist/bytecode/analysis/Type;)Ljavassist/ClassPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    invoke-static {v1}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .local v1, "type":Ljavassist/bytecode/analysis/Type;
    nop

    .line 331
    return-object v1

    .line 327
    .end local v1    # "type":Ljavassist/bytecode/analysis/Type;
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Ljavassist/NotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z
    .locals 2
    .param p0, "one"    # Ljavassist/CtClass;
    .param p1, "two"    # Ljavassist/CtClass;

    .line 580
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private findCommonInterfaces(Ljavassist/bytecode/analysis/Type;)Ljava/util/Map;
    .locals 3
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/analysis/Type;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtClass;",
            ">;"
        }
    .end annotation

    .line 472
    iget-object v0, p1, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/analysis/Type;->getAllInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 473
    .local v0, "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    iget-object v2, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-virtual {p0, v2, v1}, Ljavassist/bytecode/analysis/Type;->getAllInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 475
    .local v1, "thisMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/analysis/Type;->findCommonInterfaces(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method private static findCommonSuperClass(Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtClass;
    .locals 6
    .param p0, "one"    # Ljavassist/CtClass;
    .param p1, "two"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 391
    move-object v0, p0

    .line 392
    .local v0, "deep":Ljavassist/CtClass;
    move-object v1, p1

    .line 393
    .local v1, "shallow":Ljavassist/CtClass;
    move-object v2, v1

    .line 394
    .local v2, "backupShallow":Ljavassist/CtClass;
    move-object v3, v0

    .line 399
    .local v3, "backupDeep":Ljavassist/CtClass;
    :goto_0
    invoke-static {v0, v1}, Ljavassist/bytecode/analysis/Type;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 400
    return-object v0

    .line 402
    :cond_0
    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v4

    .line 403
    .local v4, "deepSuper":Ljavassist/CtClass;
    invoke-virtual {v1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v5

    .line 405
    .local v5, "shallowSuper":Ljavassist/CtClass;
    if-nez v5, :cond_1

    .line 407
    move-object v1, v2

    .line 408
    goto :goto_1

    .line 411
    :cond_1
    if-nez v4, :cond_4

    .line 413
    move-object v0, v3

    .line 414
    move-object v3, v2

    .line 415
    move-object v2, v0

    .line 417
    move-object v0, v1

    .line 418
    move-object v1, v2

    .line 419
    nop

    .line 428
    .end local v4    # "deepSuper":Ljavassist/CtClass;
    .end local v5    # "shallowSuper":Ljavassist/CtClass;
    :goto_1
    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    .line 429
    if-nez v0, :cond_3

    .line 430
    nop

    .line 435
    move-object v0, v3

    .line 439
    :goto_2
    invoke-static {v0, v1}, Ljavassist/bytecode/analysis/Type;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 440
    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    .line 441
    invoke-virtual {v1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v1

    goto :goto_2

    .line 444
    :cond_2
    return-object v0

    .line 432
    :cond_3
    invoke-virtual {v3}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v3

    goto :goto_1

    .line 422
    .restart local v4    # "deepSuper":Ljavassist/CtClass;
    .restart local v5    # "shallowSuper":Ljavassist/CtClass;
    :cond_4
    move-object v0, v4

    .line 423
    move-object v1, v5

    .line 424
    .end local v4    # "deepSuper":Ljavassist/CtClass;
    .end local v5    # "shallowSuper":Ljavassist/CtClass;
    goto :goto_0
.end method

.method private findExclusiveDeclaredInterfaces(Ljavassist/bytecode/analysis/Type;Ljavassist/CtClass;)Ljava/util/Map;
    .locals 5
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;
    .param p2, "exclude"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/analysis/Type;",
            "Ljavassist/CtClass;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtClass;",
            ">;"
        }
    .end annotation

    .line 479
    iget-object v0, p1, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/analysis/Type;->getDeclaredInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 480
    .local v0, "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    iget-object v2, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-virtual {p0, v2, v1}, Ljavassist/bytecode/analysis/Type;->getDeclaredInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 481
    .local v2, "thisMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    invoke-virtual {p0, p2, v1}, Ljavassist/bytecode/analysis/Type;->getAllInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 483
    .local v1, "excludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 484
    .local v4, "intf":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .end local v4    # "intf":Ljava/lang/String;
    goto :goto_0

    .line 488
    :cond_0
    invoke-virtual {p0, v0, v2}, Ljavassist/bytecode/analysis/Type;->findCommonInterfaces(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    return-object v3
.end method

.method public static get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;
    .locals 2
    .param p0, "clazz"    # Ljavassist/CtClass;

    .line 125
    sget-object v0, Ljavassist/bytecode/analysis/Type;->prims:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/analysis/Type;

    .line 126
    .local v0, "type":Ljavassist/bytecode/analysis/Type;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljavassist/bytecode/analysis/Type;

    invoke-direct {v1, p0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    :goto_0
    return-object v1
.end method

.method private getClassPool(Ljavassist/bytecode/analysis/Type;)Ljavassist/ClassPool;
    .locals 2
    .param p1, "rootComponent"    # Ljavassist/bytecode/analysis/Type;

    .line 350
    iget-object v0, p1, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    .line 351
    .local v0, "pool":Ljavassist/ClassPool;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljavassist/ClassPool;->getDefault()Ljavassist/ClassPool;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static lookupType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 131
    :try_start_0
    new-instance v0, Ljavassist/bytecode/analysis/Type;

    invoke-static {}, Ljavassist/ClassPool;->getDefault()Ljavassist/ClassPool;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private mergeArray(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;
    .locals 8
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;

    .line 355
    invoke-virtual {p0, p1}, Ljavassist/bytecode/analysis/Type;->getRootComponent(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 356
    .local v0, "typeRoot":Ljavassist/bytecode/analysis/Type;
    invoke-virtual {p0, p0}, Ljavassist/bytecode/analysis/Type;->getRootComponent(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 357
    .local v1, "thisRoot":Ljavassist/bytecode/analysis/Type;
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->getDimensions()I

    move-result v2

    .line 358
    .local v2, "typeDims":I
    invoke-virtual {p0}, Ljavassist/bytecode/analysis/Type;->getDimensions()I

    move-result v3

    .line 361
    .local v3, "thisDims":I
    if-ne v2, v3, :cond_1

    .line 362
    invoke-virtual {v1, v0}, Ljavassist/bytecode/analysis/Type;->merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    .line 366
    .local v4, "mergedComponent":Ljavassist/bytecode/analysis/Type;
    sget-object v5, Ljavassist/bytecode/analysis/Type;->BOGUS:Ljavassist/bytecode/analysis/Type;

    if-ne v4, v5, :cond_0

    .line 367
    sget-object v5, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    return-object v5

    .line 369
    :cond_0
    invoke-direct {p0, v4, v3}, Ljavassist/bytecode/analysis/Type;->createArray(Ljavassist/bytecode/analysis/Type;I)Ljavassist/bytecode/analysis/Type;

    move-result-object v5

    return-object v5

    .line 375
    .end local v4    # "mergedComponent":Ljavassist/bytecode/analysis/Type;
    :cond_1
    if-ge v2, v3, :cond_2

    .line 376
    move-object v4, v0

    .line 377
    .local v4, "targetRoot":Ljavassist/bytecode/analysis/Type;
    move v5, v2

    .local v5, "targetDims":I
    goto :goto_0

    .line 379
    .end local v4    # "targetRoot":Ljavassist/bytecode/analysis/Type;
    .end local v5    # "targetDims":I
    :cond_2
    move-object v4, v1

    .line 380
    .restart local v4    # "targetRoot":Ljavassist/bytecode/analysis/Type;
    move v5, v3

    .line 384
    .restart local v5    # "targetDims":I
    :goto_0
    sget-object v6, Ljavassist/bytecode/analysis/Type;->CLONEABLE:Ljavassist/bytecode/analysis/Type;

    iget-object v6, v6, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    iget-object v7, v4, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-static {v6, v7}, Ljavassist/bytecode/analysis/Type;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Ljavassist/bytecode/analysis/Type;->SERIALIZABLE:Ljavassist/bytecode/analysis/Type;

    iget-object v6, v6, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    iget-object v7, v4, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-static {v6, v7}, Ljavassist/bytecode/analysis/Type;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 387
    :cond_3
    sget-object v6, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v6, v5}, Ljavassist/bytecode/analysis/Type;->createArray(Ljavassist/bytecode/analysis/Type;I)Ljavassist/bytecode/analysis/Type;

    move-result-object v6

    return-object v6

    .line 385
    :cond_4
    :goto_1
    invoke-direct {p0, v4, v5}, Ljavassist/bytecode/analysis/Type;->createArray(Ljavassist/bytecode/analysis/Type;I)Ljavassist/bytecode/analysis/Type;

    move-result-object v6

    return-object v6
.end method

.method private mergeClasses(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;
    .locals 4
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    iget-object v1, p1, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-static {v0, v1}, Ljavassist/bytecode/analysis/Type;->findCommonSuperClass(Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v0

    .line 451
    .local v0, "superClass":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v1

    if-nez v1, :cond_2

    .line 452
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Type;->findCommonInterfaces(Ljavassist/bytecode/analysis/Type;)Ljava/util/Map;

    move-result-object v1

    .line 453
    .local v1, "interfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 454
    new-instance v2, Ljavassist/bytecode/analysis/Type;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/CtClass;

    invoke-direct {v2, v3}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    return-object v2

    .line 455
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 456
    new-instance v2, Ljavassist/bytecode/analysis/MultiType;

    invoke-direct {v2, v1}, Ljavassist/bytecode/analysis/MultiType;-><init>(Ljava/util/Map;)V

    return-object v2

    .line 459
    :cond_1
    new-instance v2, Ljavassist/bytecode/analysis/Type;

    invoke-direct {v2, v0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    return-object v2

    .line 463
    .end local v1    # "interfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    :cond_2
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/analysis/Type;->findExclusiveDeclaredInterfaces(Ljavassist/bytecode/analysis/Type;Ljavassist/CtClass;)Ljava/util/Map;

    move-result-object v1

    .line 464
    .local v1, "commonDeclared":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 465
    new-instance v2, Ljavassist/bytecode/analysis/MultiType;

    new-instance v3, Ljavassist/bytecode/analysis/Type;

    invoke-direct {v3, v0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    invoke-direct {v2, v1, v3}, Ljavassist/bytecode/analysis/MultiType;-><init>(Ljava/util/Map;Ljavassist/bytecode/analysis/Type;)V

    return-object v2

    .line 468
    :cond_3
    new-instance v2, Ljavassist/bytecode/analysis/Type;

    invoke-direct {v2, v0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    return-object v2
.end method


# virtual methods
.method arrayName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 337
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 338
    .local v0, "i":I
    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v1, v0

    .line 339
    .local v1, "size":I
    new-array v2, v1, [C

    .line 340
    .local v2, "string":[C
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 341
    :goto_0
    if-ge v0, v1, :cond_0

    .line 342
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    const/16 v4, 0x5b

    aput-char v4, v2, v0

    .line 343
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x5d

    aput-char v4, v2, v3

    goto :goto_0

    .line 345
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    move-object p1, v3

    .line 346
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 573
    instance-of v0, p1, Ljavassist/bytecode/analysis/Type;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 574
    return v1

    .line 576
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    move-object v2, p1

    check-cast v2, Ljavassist/bytecode/analysis/Type;

    iget-object v2, v2, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-static {v0, v2}, Ljavassist/bytecode/analysis/Type;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method findCommonInterfaces(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtClass;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtClass;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtClass;",
            ">;"
        }
    .end annotation

    .line 493
    .local p1, "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    .local p2, "alterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    if-nez p2, :cond_0

    .line 494
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p2, v0

    .line 496
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 499
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 500
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 501
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 506
    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/CtClass;

    .line 509
    .local v1, "intf":Ljavassist/CtClass;
    :try_start_0
    invoke-virtual {v1}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v2
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .local v2, "interfaces":[Ljavassist/CtClass;
    nop

    .line 514
    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 515
    .local v5, "c":Ljavassist/CtClass;
    invoke-virtual {v5}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .end local v5    # "c":Ljavassist/CtClass;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 516
    .end local v1    # "intf":Ljavassist/CtClass;
    .end local v2    # "interfaces":[Ljavassist/CtClass;
    :cond_5
    goto :goto_1

    .line 510
    .restart local v1    # "intf":Ljavassist/CtClass;
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 518
    .end local v0    # "e":Ljavassist/NotFoundException;
    .end local v1    # "intf":Ljavassist/CtClass;
    :cond_6
    return-object p2
.end method

.method getAllInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .param p1, "clazz"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/CtClass;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtClass;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtClass;",
            ">;"
        }
    .end annotation

    .line 522
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    if-nez p2, :cond_0

    .line 523
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p2, v0

    .line 525
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v0

    .line 530
    .local v0, "interfaces":[Ljavassist/CtClass;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 531
    .local v3, "intf":Ljavassist/CtClass;
    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-virtual {p0, v3, p2}, Ljavassist/bytecode/analysis/Type;->getAllInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    .line 530
    nop

    .end local v3    # "intf":Ljavassist/CtClass;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :cond_2
    invoke-virtual {p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    .line 538
    .end local v0    # "interfaces":[Ljavassist/CtClass;
    nop

    .line 539
    if-nez p1, :cond_1

    .line 541
    return-object p2

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getComponent()Ljavassist/bytecode/analysis/Type;
    .locals 3

    .line 225
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 230
    :cond_0
    :try_start_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .local v0, "component":Ljavassist/CtClass;
    nop

    .line 235
    sget-object v1, Ljavassist/bytecode/analysis/Type;->prims:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/analysis/Type;

    .line 236
    .local v1, "type":Ljavassist/bytecode/analysis/Type;
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljavassist/bytecode/analysis/Type;

    invoke-direct {v2, v0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    :goto_0
    return-object v2

    .line 231
    .end local v0    # "component":Ljavassist/CtClass;
    .end local v1    # "type":Ljavassist/bytecode/analysis/Type;
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 226
    .end local v0    # "e":Ljavassist/NotFoundException;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCtClass()Ljavassist/CtClass;
    .locals 1

    .line 167
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    return-object v0
.end method

.method getDeclaredInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .param p1, "clazz"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/CtClass;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtClass;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtClass;",
            ">;"
        }
    .end annotation

    .line 545
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    if-nez p2, :cond_0

    .line 546
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p2, v0

    .line 548
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .local v0, "interfaces":[Ljavassist/CtClass;
    nop

    .line 558
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 559
    .local v3, "intf":Ljavassist/CtClass;
    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-virtual {p0, v3, p2}, Ljavassist/bytecode/analysis/Type;->getDeclaredInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    .line 558
    .end local v3    # "intf":Ljavassist/CtClass;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 563
    :cond_2
    return-object p2

    .line 554
    .end local v0    # "interfaces":[Ljavassist/CtClass;
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDimensions()I
    .locals 5

    .line 205
    invoke-virtual {p0}, Ljavassist/bytecode/analysis/Type;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 207
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 209
    .local v1, "pos":I
    const/4 v2, 0x0

    .line 210
    .local v2, "count":I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_1

    .line 211
    add-int/lit8 v1, v1, -0x2

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    :cond_1
    return v2
.end method

.method getRootComponent(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;
    .locals 1
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;

    .line 312
    :goto_0
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->getComponent()Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    goto :goto_0

    .line 315
    :cond_0
    return-object p1
.end method

.method public getSize()I
    .locals 2

    .line 158
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    sget-object v1, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    sget-object v1, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    if-eq v0, v1, :cond_1

    sget-object v0, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 568
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isArray()Z
    .locals 1

    .line 195
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAssignableFrom(Ljavassist/bytecode/analysis/Type;)Z
    .locals 3
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;

    .line 248
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 249
    return v0

    .line 251
    :cond_0
    sget-object v1, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Ljavassist/bytecode/analysis/Type;->isReference()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-ne p0, v1, :cond_3

    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->isReference()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 252
    :cond_2
    return v0

    .line 254
    :cond_3
    instance-of v0, p1, Ljavassist/bytecode/analysis/MultiType;

    if-eqz v0, :cond_4

    .line 255
    move-object v0, p1

    check-cast v0, Ljavassist/bytecode/analysis/MultiType;

    invoke-virtual {v0, p0}, Ljavassist/bytecode/analysis/MultiType;->isAssignableTo(Ljavassist/bytecode/analysis/Type;)Z

    move-result v0

    return v0

    .line 257
    :cond_4
    instance-of v0, p1, Ljavassist/bytecode/analysis/MultiArrayType;

    if-eqz v0, :cond_5

    .line 258
    move-object v0, p1

    check-cast v0, Ljavassist/bytecode/analysis/MultiArrayType;

    invoke-virtual {v0, p0}, Ljavassist/bytecode/analysis/MultiArrayType;->isAssignableTo(Ljavassist/bytecode/analysis/Type;)Z

    move-result v0

    return v0

    .line 262
    :cond_5
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 266
    :cond_6
    :try_start_0
    iget-object v0, p1, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    iget-object v1, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-virtual {v0, v1}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReference()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Ljavassist/bytecode/analysis/Type;->special:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpecial()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Ljavassist/bytecode/analysis/Type;->special:Z

    return v0
.end method

.method public merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;
    .locals 2
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;

    .line 284
    if-ne p1, p0, :cond_0

    .line 285
    return-object p0

    .line 286
    :cond_0
    if-nez p1, :cond_1

    .line 287
    return-object p0

    .line 288
    :cond_1
    sget-object v0, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v0, :cond_2

    .line 289
    return-object p0

    .line 290
    :cond_2
    if-ne p0, v0, :cond_3

    .line 291
    return-object p1

    .line 294
    :cond_3
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->isReference()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljavassist/bytecode/analysis/Type;->isReference()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 298
    :cond_4
    instance-of v0, p1, Ljavassist/bytecode/analysis/MultiType;

    if-eqz v0, :cond_5

    .line 299
    invoke-virtual {p1, p0}, Ljavassist/bytecode/analysis/Type;->merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    return-object v0

    .line 301
    :cond_5
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljavassist/bytecode/analysis/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 302
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Type;->mergeArray(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    return-object v0

    .line 305
    :cond_6
    :try_start_0
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Type;->mergeClasses(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 295
    .end local v0    # "e":Ljavassist/NotFoundException;
    :cond_7
    :goto_0
    sget-object v0, Ljavassist/bytecode/analysis/Type;->BOGUS:Ljavassist/bytecode/analysis/Type;

    return-object v0
.end method

.method popChanged()Z
    .locals 1

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 585
    sget-object v0, Ljavassist/bytecode/analysis/Type;->BOGUS:Ljavassist/bytecode/analysis/Type;

    if-ne p0, v0, :cond_0

    .line 586
    const-string v0, "BOGUS"

    return-object v0

    .line 587
    :cond_0
    sget-object v0, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    if-ne p0, v0, :cond_1

    .line 588
    const-string v0, "UNINIT"

    return-object v0

    .line 589
    :cond_1
    sget-object v0, Ljavassist/bytecode/analysis/Type;->RETURN_ADDRESS:Ljavassist/bytecode/analysis/Type;

    if-ne p0, v0, :cond_2

    .line 590
    const-string v0, "RETURN ADDRESS"

    return-object v0

    .line 591
    :cond_2
    sget-object v0, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    if-ne p0, v0, :cond_3

    .line 592
    const-string v0, "TOP"

    return-object v0

    .line 594
    :cond_3
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    if-nez v0, :cond_4

    const-string v0, "null"

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
