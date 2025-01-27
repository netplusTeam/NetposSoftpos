.class public abstract Lorg/apache/commons/lang/enum/Enum;
.super Ljava/lang/Object;
.source "Enum.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/enum/Enum$Entry;
    }
.end annotation


# static fields
.field private static final EMPTY_MAP:Ljava/util/Map;

.field private static cEnumClasses:Ljava/util/Map; = null

.field static synthetic class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class; = null

.field static synthetic class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = -0x6c255b64ccea986L


# instance fields
.field private final transient iHashCode:I

.field private final iName:Ljava/lang/String;

.field protected transient iToString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 254
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/enum/Enum;->EMPTY_MAP:Ljava/util/Map;

    .line 259
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iToString:Ljava/lang/String;

    .line 322
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enum/Enum;->init(Ljava/lang/String;)V

    .line 323
    iput-object p1, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    .line 324
    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/enum/Enum;->iHashCode:I

    .line 326
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 346
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;
    .locals 5
    .param p0, "enumClass"    # Ljava/lang/Class;

    .line 510
    new-instance v0, Lorg/apache/commons/lang/enum/Enum$Entry;

    invoke-direct {v0}, Lorg/apache/commons/lang/enum/Enum$Entry;-><init>()V

    .line 511
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 512
    .local v1, "cls":Ljava/lang/Class;
    :goto_0
    if-eqz v1, :cond_3

    sget-object v2, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "org.apache.commons.lang.enum.Enum"

    invoke-static {v2}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    :cond_0
    if-eq v1, v2, :cond_3

    sget-object v2, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "org.apache.commons.lang.enum.ValuedEnum"

    invoke-static {v2}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    :cond_1
    if-eq v1, v2, :cond_3

    .line 513
    sget-object v2, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang/enum/Enum$Entry;

    .line 514
    .local v2, "loopEntry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-eqz v2, :cond_2

    .line 515
    iget-object v3, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->list:Ljava/util/List;

    iget-object v4, v2, Lorg/apache/commons/lang/enum/Enum$Entry;->list:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 516
    iget-object v3, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    iget-object v4, v2, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 517
    goto :goto_1

    .line 519
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 520
    .end local v2    # "loopEntry":Lorg/apache/commons/lang/enum/Enum$Entry;
    goto :goto_0

    .line 521
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;
    .locals 4
    .param p0, "enumClass"    # Ljava/lang/Class;

    .line 480
    if-eqz p0, :cond_3

    .line 483
    sget-object v0, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.lang.enum.Enum"

    invoke-static {v0}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    sget-object v0, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/enum/Enum$Entry;

    .line 488
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v0, :cond_1

    .line 491
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 492
    sget-object v1, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang/enum/Enum$Entry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 495
    goto :goto_0

    .line 493
    :catch_0
    move-exception v1

    .line 498
    :cond_1
    :goto_0
    return-object v0

    .line 484
    .end local v0    # "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Class must be a subclass of Enum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Enum Class must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getEnum(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/commons/lang/enum/Enum;
    .locals 2
    .param p0, "enumClass"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .line 404
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;

    move-result-object v0

    .line 405
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v0, :cond_0

    .line 406
    const/4 v1, 0x0

    return-object v1

    .line 408
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang/enum/Enum;

    return-object v1
.end method

.method protected static getEnumList(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .param p0, "enumClass"    # Ljava/lang/Class;

    .line 447
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;

    move-result-object v0

    .line 448
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v0, :cond_0

    .line 449
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1

    .line 451
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->unmodifiableList:Ljava/util/List;

    return-object v1
.end method

.method protected static getEnumMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .param p0, "enumClass"    # Ljava/lang/Class;

    .line 425
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;

    move-result-object v0

    .line 426
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v0, :cond_0

    .line 427
    sget-object v1, Lorg/apache/commons/lang/enum/Enum;->EMPTY_MAP:Ljava/util/Map;

    return-object v1

    .line 429
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->unmodifiableMap:Ljava/util/Map;

    return-object v1
.end method

.method private getNameInOtherClassLoader(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 627
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getName"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 628
    .local v0, "mth":Ljava/lang/reflect/Method;
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .local v1, "name":Ljava/lang/String;
    return-object v1

    .line 634
    .end local v0    # "mth":Ljava/lang/reflect/Method;
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 632
    :catch_1
    move-exception v0

    goto :goto_0

    .line 630
    :catch_2
    move-exception v0

    .line 636
    :goto_0
    nop

    .line 637
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should not happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 336
    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 340
    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    .line 341
    .local v0, "enumClass":Ljava/lang/Class;
    if-eqz v0, :cond_8

    .line 344
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 345
    .local v1, "cls":Ljava/lang/Class;
    const/4 v2, 0x0

    .line 346
    .local v2, "ok":Z
    :goto_0
    if-eqz v1, :cond_3

    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "org.apache.commons.lang.enum.Enum"

    invoke-static {v3}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    :cond_0
    if-eq v1, v3, :cond_3

    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "org.apache.commons.lang.enum.ValuedEnum"

    invoke-static {v3}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    :cond_1
    if-eq v1, v3, :cond_3

    .line 347
    if-ne v1, v0, :cond_2

    .line 348
    const/4 v2, 0x1

    .line 349
    goto :goto_1

    .line 351
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 353
    :cond_3
    :goto_1
    if-eqz v2, :cond_7

    .line 358
    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    if-nez v3, :cond_4

    const-string v3, "org.apache.commons.lang.enum.Enum"

    invoke-static {v3}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    :cond_4
    monitor-enter v3

    .line 360
    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang/enum/Enum$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 361
    .local v4, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v4, :cond_5

    .line 362
    :try_start_1
    invoke-static {v0}, Lorg/apache/commons/lang/enum/Enum;->createEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;

    move-result-object v5

    move-object v4, v5

    .line 363
    new-instance v5, Ljava/util/WeakHashMap;

    invoke-direct {v5}, Ljava/util/WeakHashMap;-><init>()V

    .line 364
    .local v5, "myMap":Ljava/util/Map;
    sget-object v6, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 365
    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sput-object v5, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    .line 368
    .end local v5    # "myMap":Ljava/util/Map;
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 369
    iget-object v3, v4, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 372
    iget-object v3, v4, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v3, v4, Lorg/apache/commons/lang/enum/Enum$Entry;->list:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    return-void

    .line 370
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "The Enum name must be unique, \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\' has already been added"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 368
    .end local v4    # "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    :catchall_0
    move-exception v5

    .restart local v4    # "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    :catchall_1
    move-exception v5

    goto :goto_2

    .line 354
    .end local v4    # "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "getEnumClass() must return a superclass of this class"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 342
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v2    # "ok":Z
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getEnumClass() must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    .end local v0    # "enumClass":Ljava/lang/Class;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Enum name must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static iterator(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .param p0, "enumClass"    # Ljava/lang/Class;

    .line 469
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 606
    if-ne p1, p0, :cond_0

    .line 607
    const/4 v0, 0x0

    return v0

    .line 609
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 610
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enum/Enum;->getNameInOtherClassLoader(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 613
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Different enum class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/enum/Enum;

    iget-object v1, v1, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 562
    if-ne p1, p0, :cond_0

    .line 563
    const/4 v0, 0x1

    return v0

    .line 564
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 565
    return v0

    .line 566
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 570
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/enum/Enum;

    iget-object v1, v1, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 573
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 574
    return v0

    .line 576
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enum/Enum;->getNameInOtherClassLoader(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getEnumClass()Ljava/lang/Class;
    .locals 1

    .line 545
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 586
    iget v0, p0, Lorg/apache/commons/lang/enum/Enum;->iHashCode:I

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 3

    .line 383
    sget-object v0, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/enum/Enum$Entry;

    .line 384
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v0, :cond_0

    .line 385
    const/4 v1, 0x0

    return-object v1

    .line 387
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 648
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iToString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 649
    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "shortName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/enum/Enum;->iToString:Ljava/lang/String;

    .line 652
    .end local v0    # "shortName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iToString:Ljava/lang/String;

    return-object v0
.end method
