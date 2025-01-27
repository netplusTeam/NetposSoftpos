.class public abstract Lorg/apache/commons/lang/enums/Enum;
.super Ljava/lang/Object;
.source "Enum.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/enums/Enum$Entry;
    }
.end annotation


# static fields
.field private static final EMPTY_MAP:Ljava/util/Map;

.field private static cEnumClasses:Ljava/util/Map; = null

.field static synthetic class$org$apache$commons$lang$enums$Enum:Ljava/lang/Class; = null

.field static synthetic class$org$apache$commons$lang$enums$ValuedEnum:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = -0x6c255b64ccea986L


# instance fields
.field private final transient iHashCode:I

.field private final iName:Ljava/lang/String;

.field protected transient iToString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 300
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/enums/Enum;->EMPTY_MAP:Ljava/util/Map;

    .line 305
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/enums/Enum;->cEnumClasses:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/enums/Enum;->iToString:Ljava/lang/String;

    .line 368
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enums/Enum;->init(Ljava/lang/String;)V

    .line 369
    iput-object p1, p0, Lorg/apache/commons/lang/enums/Enum;->iName:Ljava/lang/String;

    .line 370
    invoke-virtual {p0}, Lorg/apache/commons/lang/enums/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/enums/Enum;->iHashCode:I

    .line 372
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 392
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

.method private static createEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enums/Enum$Entry;
    .locals 5
    .param p0, "enumClass"    # Ljava/lang/Class;

    .line 556
    new-instance v0, Lorg/apache/commons/lang/enums/Enum$Entry;

    invoke-direct {v0}, Lorg/apache/commons/lang/enums/Enum$Entry;-><init>()V

    .line 557
    .local v0, "entry":Lorg/apache/commons/lang/enums/Enum$Entry;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 558
    .local v1, "cls":Ljava/lang/Class;
    :goto_0
    if-eqz v1, :cond_3

    sget-object v2, Lorg/apache/commons/lang/enums/Enum;->class$org$apache$commons$lang$enums$Enum:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "org.apache.commons.lang.enums.Enum"

    invoke-static {v2}, Lorg/apache/commons/lang/enums/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/enums/Enum;->class$org$apache$commons$lang$enums$Enum:Ljava/lang/Class;

    :cond_0
    if-eq v1, v2, :cond_3

    sget-object v2, Lorg/apache/commons/lang/enums/Enum;->class$org$apache$commons$lang$enums$ValuedEnum:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "org.apache.commons.lang.enums.ValuedEnum"

    invoke-static {v2}, Lorg/apache/commons/lang/enums/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/enums/Enum;->class$org$apache$commons$lang$enums$ValuedEnum:Ljava/lang/Class;

    :cond_1
    if-eq v1, v2, :cond_3

    .line 559
    sget-object v2, Lorg/apache/commons/lang/enums/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang/enums/Enum$Entry;

    .line 560
    .local v2, "loopEntry":Lorg/apache/commons/lang/enums/Enum$Entry;
    if-eqz v2, :cond_2

    .line 561
    iget-object v3, v0, Lorg/apache/commons/lang/enums/Enum$Entry;->list:Ljava/util/List;

    iget-object v4, v2, Lorg/apache/commons/lang/enums/Enum$Entry;->list:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 562
    iget-object v3, v0, Lorg/apache/commons/lang/enums/Enum$Entry;->map:Ljava/util/Map;

    iget-object v4, v2, Lorg/apache/commons/lang/enums/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 563
    goto :goto_1

    .line 565
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 566
    .end local v2    # "loopEntry":Lorg/apache/commons/lang/enums/Enum$Entry;
    goto :goto_0

    .line 567
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enums/Enum$Entry;
    .locals 4
    .param p0, "enumClass"    # Ljava/lang/Class;

    .line 526
    if-eqz p0, :cond_3

    .line 529
    sget-object v0, Lorg/apache/commons/lang/enums/Enum;->class$org$apache$commons$lang$enums$Enum:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.lang.enums.Enum"

    invoke-static {v0}, Lorg/apache/commons/lang/enums/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/enums/Enum;->class$org$apache$commons$lang$enums$Enum:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    sget-object v0, Lorg/apache/commons/lang/enums/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/enums/Enum$Entry;

    .line 534
    .local v0, "entry":Lorg/apache/commons/lang/enums/Enum$Entry;
    if-nez v0, :cond_1

    .line 537
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 538
    sget-object v1, Lorg/apache/commons/lang/enums/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang/enums/Enum$Entry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 541
    goto :goto_0

    .line 539
    :catch_0
    move-exception v1

    .line 544
    :cond_1
    :goto_0
    return-object v0

    .line 530
    .end local v0    # "entry":Lorg/apache/commons/lang/enums/Enum$Entry;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Class must be a subclass of Enum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Enum Class must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getEnum(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/commons/lang/enums/Enum;
    .locals 2
    .param p0, "enumClass"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .line 450
    invoke-static {p0}, Lorg/apache/commons/lang/enums/Enum;->getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enums/Enum$Entry;

    move-result-object v0

    .line 451
    .local v0, "entry":Lorg/apache/commons/lang/enums/Enum$Entry;
    if-nez v0, :cond_0

    .line 452
    const/4 v1, 0x0

    return-object v1

    .line 454
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/lang/enums/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang/enums/Enum;

    return-object v1
.end method

.method protected static getEnumList(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .param p0, "enumClass"    # Ljava/lang/Class;

    .line 493
    invoke-static {p0}, Lorg/apache/commons/lang/enums/Enum;->getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enums/Enum$Entry;

    move-result-object v0

    .line 494
    .local v0, "entry":Lorg/apache/commons/lang/enums/Enum$Entry;
    if-nez v0, :cond_0

    .line 495
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1

    .line 497
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/lang/enums/Enum$Entry;->unmodifiableList:Ljava/util/List;

    return-object v1
.end method

.method protected static getEnumMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .param p0, "enumClass"    # Ljava/lang/Class;

    .line 471
    invoke-static {p0}, Lorg/apache/commons/lang/enums/Enum;->getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enums/Enum$Entry;

    move-result-object v0

    .line 472
    .local v0, "entry":Lorg/apache/commons/lang/enums/Enum$Entry;
    if-nez v0, :cond_0

    .line 473
    sget-object v1, Lorg/apache/commons/lang/enums/Enum;->EMPTY_MAP:Ljava/util/Map;

    return-object v1

    .line 475
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/lang/enums/Enum$Entry;->unmodifiableMap:Ljava/util/Map;

    return-object v1
.end method

.method private getNameInOtherClassLoader(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 673
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getName"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 674
    .local v0, "mth":Ljava/lang/reflect/Method;
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .local v1, "name":Ljava/lang/String;
    return-object v1

    .line 680
    .end local v0    # "mth":Ljava/lang/reflect/Method;
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 678
    :catch_1
    move-exception v0

    goto :goto_0

    .line 676
    :catch_2
    move-exception v0

    .line 682
    :goto_0
    nop

    .line 683
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should not happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 382
    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 386
    invoke-virtual {p0}, Lorg/apache/commons/lang/enums/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    .line 387
    .local v0, "enumClass":Ljava/lang/Class;
    if-eqz v0, :cond_8

    .line 390
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 391
    .local v1, "cls":Ljava/lang/Class;
    const/4 v2, 0x0

    .line 392
    .local v2, "ok":Z
    :goto_0
    if-eqz v1, :cond_3

    sget-object v3, Lorg/apache/commons/lang/enums/Enum;->class$org$apache$commons$lang$enums$Enum:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "org.apache.commons.lang.enums.Enum"

    invoke-static {v3}, Lorg/apache/commons/lang/enums/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/enums/Enum;->class$org$apache$commons$lang$enums$Enum:Ljava/lang/Class;

    :cond_0
    if-eq v1, v3, :cond_3

    sget-object v3, Lorg/apache/commons/lang/enums/Enum;->class$org$apache$commons$lang$enums$ValuedEnum:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "org.apache.commons.lang.enums.ValuedEnum"

    invoke-static {v3}, Lorg/apache/commons/lang/enums/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/enums/Enum;->class$org$apache$commons$lang$enums$ValuedEnum:Ljava/lang/Class;

    :cond_1
    if-eq v1, v3, :cond_3

    .line 393
    if-ne v1, v0, :cond_2

    .line 394
    const/4 v2, 0x1

    .line 395
    goto :goto_1

    .line 397
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 399
    :cond_3
    :goto_1
    if-eqz v2, :cond_7

    .line 404
    sget-object v3, Lorg/apache/commons/lang/enums/Enum;->class$org$apache$commons$lang$enums$Enum:Ljava/lang/Class;

    if-nez v3, :cond_4

    const-string v3, "org.apache.commons.lang.enums.Enum"

    invoke-static {v3}, Lorg/apache/commons/lang/enums/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/enums/Enum;->class$org$apache$commons$lang$enums$Enum:Ljava/lang/Class;

    :cond_4
    monitor-enter v3

    .line 406
    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lorg/apache/commons/lang/enums/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang/enums/Enum$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 407
    .local v4, "entry":Lorg/apache/commons/lang/enums/Enum$Entry;
    if-nez v4, :cond_5

    .line 408
    :try_start_1
    invoke-static {v0}, Lorg/apache/commons/lang/enums/Enum;->createEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enums/Enum$Entry;

    move-result-object v5

    move-object v4, v5

    .line 409
    new-instance v5, Ljava/util/WeakHashMap;

    invoke-direct {v5}, Ljava/util/WeakHashMap;-><init>()V

    .line 410
    .local v5, "myMap":Ljava/util/Map;
    sget-object v6, Lorg/apache/commons/lang/enums/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 411
    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sput-object v5, Lorg/apache/commons/lang/enums/Enum;->cEnumClasses:Ljava/util/Map;

    .line 414
    .end local v5    # "myMap":Ljava/util/Map;
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 415
    iget-object v3, v4, Lorg/apache/commons/lang/enums/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 418
    iget-object v3, v4, Lorg/apache/commons/lang/enums/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v3, v4, Lorg/apache/commons/lang/enums/Enum$Entry;->list:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    return-void

    .line 416
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

    .line 414
    .end local v4    # "entry":Lorg/apache/commons/lang/enums/Enum$Entry;
    :catchall_0
    move-exception v5

    .restart local v4    # "entry":Lorg/apache/commons/lang/enums/Enum$Entry;
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    :catchall_1
    move-exception v5

    goto :goto_2

    .line 400
    .end local v4    # "entry":Lorg/apache/commons/lang/enums/Enum$Entry;
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "getEnumClass() must return a superclass of this class"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 388
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v2    # "ok":Z
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getEnumClass() must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
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

    .line 515
    invoke-static {p0}, Lorg/apache/commons/lang/enums/Enum;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 652
    if-ne p1, p0, :cond_0

    .line 653
    const/4 v0, 0x0

    return v0

    .line 655
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 656
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

    .line 657
    iget-object v0, p0, Lorg/apache/commons/lang/enums/Enum;->iName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enums/Enum;->getNameInOtherClassLoader(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 659
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

    .line 662
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/lang/enums/Enum;->iName:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/enums/Enum;

    iget-object v1, v1, Lorg/apache/commons/lang/enums/Enum;->iName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 608
    if-ne p1, p0, :cond_0

    .line 609
    const/4 v0, 0x1

    return v0

    .line 610
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 611
    return v0

    .line 612
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 616
    iget-object v0, p0, Lorg/apache/commons/lang/enums/Enum;->iName:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/enums/Enum;

    iget-object v1, v1, Lorg/apache/commons/lang/enums/Enum;->iName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 619
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

    .line 620
    return v0

    .line 622
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/lang/enums/Enum;->iName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enums/Enum;->getNameInOtherClassLoader(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getEnumClass()Ljava/lang/Class;
    .locals 1

    .line 591
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 577
    iget-object v0, p0, Lorg/apache/commons/lang/enums/Enum;->iName:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 632
    iget v0, p0, Lorg/apache/commons/lang/enums/Enum;->iHashCode:I

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 3

    .line 429
    sget-object v0, Lorg/apache/commons/lang/enums/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/commons/lang/enums/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/enums/Enum$Entry;

    .line 430
    .local v0, "entry":Lorg/apache/commons/lang/enums/Enum$Entry;
    if-nez v0, :cond_0

    .line 431
    const/4 v1, 0x0

    return-object v1

    .line 433
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/lang/enums/Enum$Entry;->map:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/commons/lang/enums/Enum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 694
    iget-object v0, p0, Lorg/apache/commons/lang/enums/Enum;->iToString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 695
    invoke-virtual {p0}, Lorg/apache/commons/lang/enums/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "shortName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang/enums/Enum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/enums/Enum;->iToString:Ljava/lang/String;

    .line 698
    .end local v0    # "shortName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/enums/Enum;->iToString:Ljava/lang/String;

    return-object v0
.end method
