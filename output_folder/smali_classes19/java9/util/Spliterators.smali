.class public final Ljava9/util/Spliterators;
.super Ljava/lang/Object;
.source "Spliterators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/Spliterators$DoubleIteratorSpliterator;,
        Ljava9/util/Spliterators$LongIteratorSpliterator;,
        Ljava9/util/Spliterators$IntIteratorSpliterator;,
        Ljava9/util/Spliterators$IteratorSpliterator;,
        Ljava9/util/Spliterators$AbstractDoubleSpliterator;,
        Ljava9/util/Spliterators$AbstractLongSpliterator;,
        Ljava9/util/Spliterators$AbstractIntSpliterator;,
        Ljava9/util/Spliterators$AbstractSpliterator;,
        Ljava9/util/Spliterators$DoubleArraySpliterator;,
        Ljava9/util/Spliterators$LongArraySpliterator;,
        Ljava9/util/Spliterators$IntArraySpliterator;,
        Ljava9/util/Spliterators$ArraySpliterator;,
        Ljava9/util/Spliterators$EmptySpliterator;
    }
.end annotation


# static fields
.field private static final ALLOW_RNDACC_SPLITER_OPT:Z

.field static final DELEGATION_ENABLED:Z

.field private static final DELEGATION_ENABLED_P:Ljava/lang/String;

.field private static final EMPTY_DOUBLE_SPLITERATOR:Ljava9/util/Spliterator$OfDouble;

.field private static final EMPTY_INT_SPLITERATOR:Ljava9/util/Spliterator$OfInt;

.field private static final EMPTY_LONG_SPLITERATOR:Ljava9/util/Spliterator$OfLong;

.field private static final EMPTY_SPLITERATOR:Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/Spliterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final HAS_STREAMS:Z

.field static final IS_ANDROID:Z

.field static final IS_ANDROID_O:Z

.field static final IS_HARMONY_ANDROID:Z

.field static final IS_JAVA6:Z

.field static final IS_JAVA9:Z

.field private static final IS_ROBOVM:Z

.field private static final NATIVE_OPT_ENABLED_P:Ljava/lang/String;

.field static final NATIVE_SPECIALIZATION:Z

.field private static final RNDACC_SPLITER_ENABLED_P:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 76
    const-class v0, Ljava9/util/Spliterators;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".assume.oracle.collections.impl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljava9/util/Spliterators;->NATIVE_OPT_ENABLED_P:Ljava/lang/String;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jre.delegation.enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ljava9/util/Spliterators;->DELEGATION_ENABLED_P:Ljava/lang/String;

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".randomaccess.spliterator.enabled"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava9/util/Spliterators;->RNDACC_SPLITER_ENABLED_P:Ljava/lang/String;

    .line 81
    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava9/util/Spliterators;->getBooleanPropVal(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Ljava9/util/Spliterators;->NATIVE_SPECIALIZATION:Z

    .line 83
    invoke-static {v2, v3}, Ljava9/util/Spliterators;->getBooleanPropVal(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Ljava9/util/Spliterators;->DELEGATION_ENABLED:Z

    .line 86
    invoke-static {v0, v3}, Ljava9/util/Spliterators;->getBooleanPropVal(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljava9/util/Spliterators;->ALLOW_RNDACC_SPLITER_OPT:Z

    .line 88
    invoke-static {}, Ljava9/util/Spliterators;->isRoboVm()Z

    move-result v0

    sput-boolean v0, Ljava9/util/Spliterators;->IS_ROBOVM:Z

    .line 91
    invoke-static {}, Ljava9/util/Spliterators;->isAndroid()Z

    move-result v0

    sput-boolean v0, Ljava9/util/Spliterators;->IS_ANDROID:Z

    .line 93
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "android.opengl.GLES32$DebugProc"

    invoke-static {v2}, Ljava9/util/Spliterators;->isClassPresent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sput-boolean v2, Ljava9/util/Spliterators;->IS_HARMONY_ANDROID:Z

    .line 95
    if-eqz v0, :cond_1

    const-string v2, "java.time.DateTimeException"

    invoke-static {v2}, Ljava9/util/Spliterators;->isClassPresent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    sput-boolean v2, Ljava9/util/Spliterators;->IS_ANDROID_O:Z

    .line 97
    if-nez v0, :cond_2

    invoke-static {}, Ljava9/util/Spliterators;->isJava6()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    sput-boolean v3, Ljava9/util/Spliterators;->IS_JAVA6:Z

    .line 99
    invoke-static {}, Ljava9/util/Spliterators;->isStreamEnabled()Z

    move-result v0

    sput-boolean v0, Ljava9/util/Spliterators;->HAS_STREAMS:Z

    .line 101
    const-string v0, "java.lang.StackWalker$Option"

    invoke-static {v0}, Ljava9/util/Spliterators;->isClassPresent(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Ljava9/util/Spliterators;->IS_JAVA9:Z

    .line 123
    new-instance v0, Ljava9/util/Spliterators$EmptySpliterator$OfRef;

    invoke-direct {v0}, Ljava9/util/Spliterators$EmptySpliterator$OfRef;-><init>()V

    sput-object v0, Ljava9/util/Spliterators;->EMPTY_SPLITERATOR:Ljava9/util/Spliterator;

    .line 139
    new-instance v0, Ljava9/util/Spliterators$EmptySpliterator$OfInt;

    invoke-direct {v0}, Ljava9/util/Spliterators$EmptySpliterator$OfInt;-><init>()V

    sput-object v0, Ljava9/util/Spliterators;->EMPTY_INT_SPLITERATOR:Ljava9/util/Spliterator$OfInt;

    .line 155
    new-instance v0, Ljava9/util/Spliterators$EmptySpliterator$OfLong;

    invoke-direct {v0}, Ljava9/util/Spliterators$EmptySpliterator$OfLong;-><init>()V

    sput-object v0, Ljava9/util/Spliterators;->EMPTY_LONG_SPLITERATOR:Ljava9/util/Spliterator$OfLong;

    .line 171
    new-instance v0, Ljava9/util/Spliterators$EmptySpliterator$OfDouble;

    invoke-direct {v0}, Ljava9/util/Spliterators$EmptySpliterator$OfDouble;-><init>()V

    sput-object v0, Ljava9/util/Spliterators;->EMPTY_DOUBLE_SPLITERATOR:Ljava9/util/Spliterator$OfDouble;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFromToBounds(III)V
    .locals 3
    .param p0, "arrayLength"    # I
    .param p1, "origin"    # I
    .param p2, "fence"    # I

    .line 446
    if-gt p1, p2, :cond_2

    .line 450
    if-ltz p1, :cond_1

    .line 453
    if-gt p2, p0, :cond_0

    .line 456
    return-void

    .line 454
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 451
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 447
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origin("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > fence("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static delegatingSpliterator(Ljava/util/Collection;)Ljava9/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 695
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava9/util/DelegatingSpliterator;

    invoke-interface {p0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava9/util/DelegatingSpliterator;-><init>(Ljava/util/Spliterator;)V

    return-object v0
.end method

.method public static emptyDoubleSpliterator()Ljava9/util/Spliterator$OfDouble;
    .locals 1

    .line 168
    sget-object v0, Ljava9/util/Spliterators;->EMPTY_DOUBLE_SPLITERATOR:Ljava9/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public static emptyIntSpliterator()Ljava9/util/Spliterator$OfInt;
    .locals 1

    .line 136
    sget-object v0, Ljava9/util/Spliterators;->EMPTY_INT_SPLITERATOR:Ljava9/util/Spliterator$OfInt;

    return-object v0
.end method

.method public static emptyLongSpliterator()Ljava9/util/Spliterator$OfLong;
    .locals 1

    .line 152
    sget-object v0, Ljava9/util/Spliterators;->EMPTY_LONG_SPLITERATOR:Ljava9/util/Spliterator$OfLong;

    return-object v0
.end method

.method public static emptySpliterator()Ljava9/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 120
    sget-object v0, Ljava9/util/Spliterators;->EMPTY_SPLITERATOR:Ljava9/util/Spliterator;

    return-object v0
.end method

.method private static getBooleanPropVal(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "defVal"    # Z

    .line 2445
    new-instance v0, Ljava9/util/Spliterators$2;

    invoke-direct {v0, p1, p0}, Ljava9/util/Spliterators$2;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static hasAndroid7LHMBug(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 2621
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v0, Ljava9/util/Spliterators;->IS_ANDROID:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Ljava9/util/Spliterators;->IS_HARMONY_ANDROID:Z

    if-nez v0, :cond_0

    sget-boolean v0, Ljava9/util/Spliterators;->IS_ANDROID_O:Z

    if-nez v0, :cond_0

    .line 2622
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2623
    .local v0, "name":Ljava/lang/String;
    const-string v1, "java.util.HashMap$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2627
    invoke-interface {p0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v1

    return v1

    .line 2630
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isAndroid()Z
    .locals 1

    .line 2498
    const-string v0, "android.util.DisplayMetrics"

    invoke-static {v0}, Ljava9/util/Spliterators;->isClassPresent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Ljava9/util/Spliterators;->IS_ROBOVM:Z

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

.method private static isClassPresent(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 2471
    const/4 v0, 0x0

    .line 2475
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Ljava9/util/Spliterators;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 2478
    goto :goto_0

    .line 2476
    :catchall_0
    move-exception v2

    .line 2479
    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isFromJdk(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 2583
    const-string v0, "java.util.Collections$"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2584
    const-string v0, "RandomAccessList"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2588
    const/4 v0, 0x1

    return v0

    .line 2590
    :cond_0
    return v1
.end method

.method private static isJava6()Z
    .locals 3

    .line 2490
    const-string v0, "java.class.version"

    const-wide v1, 0x4049800000000000L    # 51.0

    invoke-static {v0, v1, v2}, Ljava9/util/Spliterators;->isVersionBelow(Ljava/lang/String;D)Z

    move-result v0

    return v0
.end method

.method private static isRoboVm()Z
    .locals 1

    .line 2494
    const-string v0, "org.robovm.rt.bro.Bro"

    invoke-static {v0}, Ljava9/util/Spliterators;->isClassPresent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isStreamEnabled()Z
    .locals 7

    .line 2509
    invoke-static {}, Ljava9/util/Spliterators;->isAndroid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-wide/high16 v2, 0x404a000000000000L    # 52.0

    const-string v0, "java.class.version"

    invoke-static {v0, v2, v3}, Ljava9/util/Spliterators;->isVersionBelow(Ljava/lang/String;D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2510
    return v1

    .line 2513
    :cond_0
    const/4 v0, 0x0

    .line 2514
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x2

    const-string v3, "java.util.function.Consumer"

    const-string v4, "java.util.Spliterator"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v3, v4

    .line 2517
    .local v5, "cn":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 2520
    nop

    .line 2514
    .end local v5    # "cn":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2518
    .restart local v5    # "cn":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2519
    .local v2, "ignore":Ljava/lang/Exception;
    return v1

    .line 2523
    .end local v2    # "ignore":Ljava/lang/Exception;
    .end local v5    # "cn":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 2524
    .local v2, "m":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_2

    .line 2526
    :try_start_1
    const-class v3, Ljava/util/Collection;

    const-string v4, "spliterator"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 2530
    goto :goto_1

    .line 2528
    :catch_1
    move-exception v3

    .line 2529
    .local v3, "ignore":Ljava/lang/Exception;
    return v1

    .line 2532
    .end local v3    # "ignore":Ljava/lang/Exception;
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private static isVersionBelow(Ljava/lang/String;D)Z
    .locals 4
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "maxVer"    # D

    .line 2549
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2550
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2551
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2552
    .local v1, "d":D
    cmpg-double v3, v1, p1

    if-gez v3, :cond_0

    .line 2553
    const/4 v3, 0x1

    return v3

    .line 2558
    .end local v0    # "v":Ljava/lang/String;
    .end local v1    # "d":D
    :cond_0
    goto :goto_0

    .line 2556
    :catch_0
    move-exception v0

    .line 2559
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static iterator(Ljava9/util/Spliterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/Spliterator<",
            "+TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 967
    .local p0, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<+TT;>;"
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    new-instance v0, Ljava9/util/Spliterators$1Adapter;

    invoke-direct {v0, p0}, Ljava9/util/Spliterators$1Adapter;-><init>(Ljava9/util/Spliterator;)V

    return-object v0
.end method

.method public static iterator(Ljava9/util/Spliterator$OfDouble;)Ljava9/util/PrimitiveIterator$OfDouble;
    .locals 1
    .param p0, "spliterator"    # Ljava9/util/Spliterator$OfDouble;

    .line 1117
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    new-instance v0, Ljava9/util/Spliterators$4Adapter;

    invoke-direct {v0, p0}, Ljava9/util/Spliterators$4Adapter;-><init>(Ljava9/util/Spliterator$OfDouble;)V

    return-object v0
.end method

.method public static iterator(Ljava9/util/Spliterator$OfInt;)Ljava9/util/PrimitiveIterator$OfInt;
    .locals 1
    .param p0, "spliterator"    # Ljava9/util/Spliterator$OfInt;

    .line 1017
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    new-instance v0, Ljava9/util/Spliterators$2Adapter;

    invoke-direct {v0, p0}, Ljava9/util/Spliterators$2Adapter;-><init>(Ljava9/util/Spliterator$OfInt;)V

    return-object v0
.end method

.method public static iterator(Ljava9/util/Spliterator$OfLong;)Ljava9/util/PrimitiveIterator$OfLong;
    .locals 1
    .param p0, "spliterator"    # Ljava9/util/Spliterator$OfLong;

    .line 1067
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    new-instance v0, Ljava9/util/Spliterators$3Adapter;

    invoke-direct {v0, p0}, Ljava9/util/Spliterators$3Adapter;-><init>(Ljava9/util/Spliterator$OfLong;)V

    return-object v0
.end method

.method private static listSpliterator(Ljava/util/List;Ljava/lang/String;)Ljava9/util/Spliterator;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 567
    .local p0, "c":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    sget-boolean v0, Ljava9/util/Spliterators;->NATIVE_SPECIALIZATION:Z

    if-nez v0, :cond_0

    sget-boolean v0, Ljava9/util/Spliterators;->IS_ANDROID:Z

    if-eqz v0, :cond_5

    .line 568
    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 569
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava9/util/ArrayListSpliterator;->spliterator(Ljava/util/ArrayList;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 572
    :cond_1
    const-string v0, "java.util.Arrays$ArrayList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    invoke-static {p0}, Ljava9/util/ArraysArrayListSpliterator;->spliterator(Ljava/util/List;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 576
    :cond_2
    instance-of v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    .line 577
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 578
    invoke-static {v0}, Ljava9/util/COWArrayListSpliterator;->spliterator(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 580
    :cond_3
    instance-of v0, p0, Ljava/util/LinkedList;

    if-eqz v0, :cond_4

    .line 581
    move-object v0, p0

    check-cast v0, Ljava/util/LinkedList;

    invoke-static {v0}, Ljava9/util/LinkedListSpliterator;->spliterator(Ljava/util/LinkedList;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 583
    :cond_4
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_5

    .line 584
    move-object v0, p0

    check-cast v0, Ljava/util/Vector;

    invoke-static {v0}, Ljava9/util/VectorSpliterator;->spliterator(Ljava/util/Vector;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 588
    :cond_5
    sget-boolean v0, Ljava9/util/Spliterators;->ALLOW_RNDACC_SPLITER_OPT:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_7

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_7

    .line 590
    instance-of v0, p0, Ljava/util/AbstractList;

    if-nez v0, :cond_6

    invoke-static {p1}, Ljava9/util/Spliterators;->isFromJdk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 593
    invoke-static {p0, v1}, Ljava9/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 599
    :cond_6
    instance-of v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_7

    .line 603
    invoke-static {p0}, Ljava9/util/RASpliterator;->spliterator(Ljava/util/List;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 608
    :cond_7
    invoke-static {p0, v1}, Ljava9/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method private static queueSpliterator(Ljava/util/Queue;)Ljava9/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "+TT;>;)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 653
    .local p0, "c":Ljava/util/Queue;, "Ljava/util/Queue<+TT;>;"
    instance-of v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz v0, :cond_0

    .line 654
    const/16 v0, 0x1110

    invoke-static {p0, v0}, Ljava9/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 658
    :cond_0
    sget-boolean v0, Ljava9/util/Spliterators;->NATIVE_SPECIALIZATION:Z

    if-nez v0, :cond_1

    sget-boolean v0, Ljava9/util/Spliterators;->IS_ANDROID:Z

    if-eqz v0, :cond_6

    .line 659
    :cond_1
    instance-of v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_2

    .line 660
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v0}, Ljava9/util/LBQSpliterator;->spliterator(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 662
    :cond_2
    instance-of v0, p0, Ljava/util/ArrayDeque;

    if-eqz v0, :cond_3

    .line 663
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-static {v0}, Ljava9/util/ArrayDequeSpliterator;->spliterator(Ljava/util/ArrayDeque;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 665
    :cond_3
    instance-of v0, p0, Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz v0, :cond_4

    .line 666
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-static {v0}, Ljava9/util/LBDSpliterator;->spliterator(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 668
    :cond_4
    instance-of v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v0, :cond_5

    .line 669
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-static {v0}, Ljava9/util/PBQueueSpliterator;->spliterator(Ljava/util/concurrent/PriorityBlockingQueue;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 671
    :cond_5
    instance-of v0, p0, Ljava/util/PriorityQueue;

    if-eqz v0, :cond_6

    .line 672
    move-object v0, p0

    check-cast v0, Ljava/util/PriorityQueue;

    invoke-static {v0}, Ljava9/util/PQueueSpliterator;->spliterator(Ljava/util/PriorityQueue;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 678
    :cond_6
    instance-of v0, p0, Ljava/util/Deque;

    if-nez v0, :cond_8

    .line 679
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/util/PriorityQueue;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/util/concurrent/DelayQueue;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/util/concurrent/SynchronousQueue;

    if-nez v0, :cond_7

    goto :goto_0

    .line 691
    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava9/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 686
    :cond_8
    :goto_0
    instance-of v0, p0, Ljava/util/ArrayDeque;

    if-eqz v0, :cond_9

    const/16 v0, 0x110

    goto :goto_1

    :cond_9
    const/16 v0, 0x10

    :goto_1
    invoke-static {p0, v0}, Ljava9/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method private static setSpliterator(Ljava/util/Set;Ljava/lang/String;)Ljava9/util/Spliterator;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 612
    .local p0, "c":Ljava/util/Set;, "Ljava/util/Set<+TT;>;"
    sget-boolean v0, Ljava9/util/Spliterators;->IS_HARMONY_ANDROID:Z

    if-nez v0, :cond_1

    sget-boolean v1, Ljava9/util/Spliterators;->NATIVE_SPECIALIZATION:Z

    if-eqz v1, :cond_1

    .line 613
    const-string v1, "java.util.HashMap$EntrySet"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    nop

    .line 615
    invoke-static {p0}, Ljava9/util/HMSpliterators;->getEntrySetSpliterator(Ljava/util/Set;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 617
    :cond_0
    const-string v1, "java.util.HashMap$KeySet"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    invoke-static {p0}, Ljava9/util/HMSpliterators;->getKeySetSpliterator(Ljava/util/Set;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 622
    :cond_1
    instance-of v1, p0, Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_2

    .line 623
    const/16 v0, 0x11

    invoke-static {p0, v0}, Ljava9/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 626
    :cond_2
    if-nez v0, :cond_3

    sget-boolean v0, Ljava9/util/Spliterators;->NATIVE_SPECIALIZATION:Z

    if-eqz v0, :cond_3

    .line 627
    instance-of v0, p0, Ljava/util/HashSet;

    if-eqz v0, :cond_3

    .line 628
    move-object v0, p0

    check-cast v0, Ljava/util/HashSet;

    invoke-static {v0}, Ljava9/util/HMSpliterators;->getHashSetSpliterator(Ljava/util/HashSet;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 633
    :cond_3
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_4

    .line 634
    new-instance v0, Ljava9/util/Spliterators$1;

    const/16 v1, 0x15

    invoke-direct {v0, p0, v1, p0}, Ljava9/util/Spliterators$1;-><init>(Ljava/util/Collection;ILjava/util/Set;)V

    return-object v0

    .line 643
    :cond_4
    sget-boolean v0, Ljava9/util/Spliterators;->NATIVE_SPECIALIZATION:Z

    if-nez v0, :cond_5

    sget-boolean v0, Ljava9/util/Spliterators;->IS_ANDROID:Z

    if-eqz v0, :cond_6

    :cond_5
    instance-of v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_6

    .line 644
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 645
    invoke-static {v0}, Ljava9/util/COWArraySetSpliterator;->spliterator(Ljava/util/concurrent/CopyOnWriteArraySet;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 649
    :cond_6
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava9/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator(Ljava9/util/PrimitiveIterator$OfDouble;JI)Ljava9/util/Spliterator$OfDouble;
    .locals 2
    .param p0, "iterator"    # Ljava9/util/PrimitiveIterator$OfDouble;
    .param p1, "size"    # J
    .param p3, "characteristics"    # I

    .line 922
    new-instance v0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/PrimitiveIterator$OfDouble;

    invoke-direct {v0, v1, p1, p2, p3}, Ljava9/util/Spliterators$DoubleIteratorSpliterator;-><init>(Ljava9/util/PrimitiveIterator$OfDouble;JI)V

    return-object v0
.end method

.method public static spliterator([DI)Ljava9/util/Spliterator$OfDouble;
    .locals 2
    .param p0, "array"    # [D
    .param p1, "additionalCharacteristics"    # I

    .line 394
    new-instance v0, Ljava9/util/Spliterators$DoubleArraySpliterator;

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    invoke-direct {v0, v1, p1}, Ljava9/util/Spliterators$DoubleArraySpliterator;-><init>([DI)V

    return-object v0
.end method

.method public static spliterator([DIII)Ljava9/util/Spliterator$OfDouble;
    .locals 1
    .param p0, "array"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I

    .line 431
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava9/util/Spliterators;->checkFromToBounds(III)V

    .line 432
    new-instance v0, Ljava9/util/Spliterators$DoubleArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava9/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v0
.end method

.method public static spliterator(Ljava9/util/PrimitiveIterator$OfInt;JI)Ljava9/util/Spliterator$OfInt;
    .locals 2
    .param p0, "iterator"    # Ljava9/util/PrimitiveIterator$OfInt;
    .param p1, "size"    # J
    .param p3, "characteristics"    # I

    .line 808
    new-instance v0, Ljava9/util/Spliterators$IntIteratorSpliterator;

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/PrimitiveIterator$OfInt;

    invoke-direct {v0, v1, p1, p2, p3}, Ljava9/util/Spliterators$IntIteratorSpliterator;-><init>(Ljava9/util/PrimitiveIterator$OfInt;JI)V

    return-object v0
.end method

.method public static spliterator([II)Ljava9/util/Spliterator$OfInt;
    .locals 2
    .param p0, "array"    # [I
    .param p1, "additionalCharacteristics"    # I

    .line 266
    new-instance v0, Ljava9/util/Spliterators$IntArraySpliterator;

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-direct {v0, v1, p1}, Ljava9/util/Spliterators$IntArraySpliterator;-><init>([II)V

    return-object v0
.end method

.method public static spliterator([IIII)Ljava9/util/Spliterator$OfInt;
    .locals 1
    .param p0, "array"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I

    .line 299
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava9/util/Spliterators;->checkFromToBounds(III)V

    .line 300
    new-instance v0, Ljava9/util/Spliterators$IntArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava9/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    return-object v0
.end method

.method public static spliterator(Ljava9/util/PrimitiveIterator$OfLong;JI)Ljava9/util/Spliterator$OfLong;
    .locals 2
    .param p0, "iterator"    # Ljava9/util/PrimitiveIterator$OfLong;
    .param p1, "size"    # J
    .param p3, "characteristics"    # I

    .line 865
    new-instance v0, Ljava9/util/Spliterators$LongIteratorSpliterator;

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/PrimitiveIterator$OfLong;

    invoke-direct {v0, v1, p1, p2, p3}, Ljava9/util/Spliterators$LongIteratorSpliterator;-><init>(Ljava9/util/PrimitiveIterator$OfLong;JI)V

    return-object v0
.end method

.method public static spliterator([JI)Ljava9/util/Spliterator$OfLong;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "additionalCharacteristics"    # I

    .line 328
    new-instance v0, Ljava9/util/Spliterators$LongArraySpliterator;

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-direct {v0, v1, p1}, Ljava9/util/Spliterators$LongArraySpliterator;-><init>([JI)V

    return-object v0
.end method

.method public static spliterator([JIII)Ljava9/util/Spliterator$OfLong;
    .locals 1
    .param p0, "array"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I

    .line 365
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava9/util/Spliterators;->checkFromToBounds(III)V

    .line 366
    new-instance v0, Ljava9/util/Spliterators$LongArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava9/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/Collection;)Ljava9/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 538
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-boolean v0, Ljava9/util/Spliterators;->HAS_STREAMS:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Ljava9/util/Spliterators;->DELEGATION_ENABLED:Z

    if-nez v0, :cond_0

    sget-boolean v0, Ljava9/util/Spliterators;->IS_JAVA9:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Ljava9/util/Spliterators;->hasAndroid7LHMBug(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    invoke-static {p0}, Ljava9/util/Spliterators;->delegatingSpliterator(Ljava/util/Collection;)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 546
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "name":Ljava/lang/String;
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 549
    move-object v1, p0

    check-cast v1, Ljava/util/List;

    invoke-static {v1, v0}, Ljava9/util/Spliterators;->listSpliterator(Ljava/util/List;Ljava/lang/String;)Ljava9/util/Spliterator;

    move-result-object v1

    return-object v1

    .line 551
    :cond_2
    instance-of v1, p0, Ljava/util/Set;

    if-eqz v1, :cond_3

    .line 552
    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    invoke-static {v1, v0}, Ljava9/util/Spliterators;->setSpliterator(Ljava/util/Set;Ljava/lang/String;)Ljava9/util/Spliterator;

    move-result-object v1

    return-object v1

    .line 554
    :cond_3
    instance-of v1, p0, Ljava/util/Queue;

    if-eqz v1, :cond_4

    .line 555
    move-object v1, p0

    check-cast v1, Ljava/util/Queue;

    invoke-static {v1}, Ljava9/util/Spliterators;->queueSpliterator(Ljava/util/Queue;)Ljava9/util/Spliterator;

    move-result-object v1

    return-object v1

    .line 558
    :cond_4
    sget-boolean v1, Ljava9/util/Spliterators;->IS_HARMONY_ANDROID:Z

    if-nez v1, :cond_5

    sget-boolean v1, Ljava9/util/Spliterators;->NATIVE_SPECIALIZATION:Z

    if-eqz v1, :cond_5

    const-string v1, "java.util.HashMap$Values"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 559
    invoke-static {p0}, Ljava9/util/HMSpliterators;->getValuesSpliterator(Ljava/util/Collection;)Ljava9/util/Spliterator;

    move-result-object v1

    return-object v1

    .line 563
    :cond_5
    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava9/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava9/util/Spliterator;

    move-result-object v1

    return-object v1
.end method

.method public static spliterator(Ljava/util/Collection;I)Ljava9/util/Spliterator;
    .locals 2
    .param p1, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;I)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 720
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava9/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1, p1}, Ljava9/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Collection;I)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/Iterator;JI)Ljava9/util/Spliterator;
    .locals 2
    .param p1, "size"    # J
    .param p3, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;JI)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 751
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    new-instance v0, Ljava9/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    invoke-direct {v0, v1, p1, p2, p3}, Ljava9/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Iterator;JI)V

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;I)Ljava9/util/Spliterator;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "additionalCharacteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava9/util/Spliterators$ArraySpliterator;

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Ljava9/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;III)Ljava9/util/Spliterator;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "III)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 237
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava9/util/Spliterators;->checkFromToBounds(III)V

    .line 238
    new-instance v0, Ljava9/util/Spliterators$ArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava9/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Ljava9/util/PrimitiveIterator$OfDouble;I)Ljava9/util/Spliterator$OfDouble;
    .locals 2
    .param p0, "iterator"    # Ljava9/util/PrimitiveIterator$OfDouble;
    .param p1, "characteristics"    # I

    .line 949
    new-instance v0, Ljava9/util/Spliterators$DoubleIteratorSpliterator;

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/PrimitiveIterator$OfDouble;

    invoke-direct {v0, v1, p1}, Ljava9/util/Spliterators$DoubleIteratorSpliterator;-><init>(Ljava9/util/PrimitiveIterator$OfDouble;I)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Ljava9/util/PrimitiveIterator$OfInt;I)Ljava9/util/Spliterator$OfInt;
    .locals 2
    .param p0, "iterator"    # Ljava9/util/PrimitiveIterator$OfInt;
    .param p1, "characteristics"    # I

    .line 835
    new-instance v0, Ljava9/util/Spliterators$IntIteratorSpliterator;

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/PrimitiveIterator$OfInt;

    invoke-direct {v0, v1, p1}, Ljava9/util/Spliterators$IntIteratorSpliterator;-><init>(Ljava9/util/PrimitiveIterator$OfInt;I)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Ljava9/util/PrimitiveIterator$OfLong;I)Ljava9/util/Spliterator$OfLong;
    .locals 2
    .param p0, "iterator"    # Ljava9/util/PrimitiveIterator$OfLong;
    .param p1, "characteristics"    # I

    .line 892
    new-instance v0, Ljava9/util/Spliterators$LongIteratorSpliterator;

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/PrimitiveIterator$OfLong;

    invoke-direct {v0, v1, p1}, Ljava9/util/Spliterators$LongIteratorSpliterator;-><init>(Ljava9/util/PrimitiveIterator$OfLong;I)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava9/util/Spliterator;
    .locals 2
    .param p1, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;I)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 778
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    new-instance v0, Ljava9/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    invoke-direct {v0, v1, p1}, Ljava9/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Iterator;I)V

    return-object v0
.end method
