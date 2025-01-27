.class public Lio/netty/util/ResourceLeakDetector;
.super Ljava/lang/Object;
.source "ResourceLeakDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/ResourceLeakDetector$Record;,
        Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;,
        Lio/netty/util/ResourceLeakDetector$Level;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LEVEL:Lio/netty/util/ResourceLeakDetector$Level;

.field private static final DEFAULT_SAMPLING_INTERVAL:I = 0x80

.field private static final DEFAULT_TARGET_RECORDS:I = 0x4

.field private static final PROP_LEVEL:Ljava/lang/String; = "io.netty.leakDetection.level"

.field private static final PROP_LEVEL_OLD:Ljava/lang/String; = "io.netty.leakDetectionLevel"

.field private static final PROP_SAMPLING_INTERVAL:Ljava/lang/String; = "io.netty.leakDetection.samplingInterval"

.field private static final PROP_TARGET_RECORDS:Ljava/lang/String; = "io.netty.leakDetection.targetRecords"

.field static final SAMPLING_INTERVAL:I

.field private static final TARGET_RECORDS:I

.field private static final excludedMethods:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static level:Lio/netty/util/ResourceLeakDetector$Level;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final allLeaks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final reportedLeaks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceType:Ljava/lang/String;

.field private final samplingInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 47
    sget-object v0, Lio/netty/util/ResourceLeakDetector$Level;->SIMPLE:Lio/netty/util/ResourceLeakDetector$Level;

    sput-object v0, Lio/netty/util/ResourceLeakDetector;->DEFAULT_LEVEL:Lio/netty/util/ResourceLeakDetector$Level;

    .line 102
    const-class v1, Lio/netty/util/ResourceLeakDetector;

    invoke-static {v1}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 106
    const-string v2, "io.netty.noResourceLeakDetection"

    invoke-static {v2}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "io.netty.leakDetection.level"

    if-eqz v3, :cond_0

    .line 107
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 108
    .local v2, "disabled":Z
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "-Dio.netty.noResourceLeakDetection: {}"

    invoke-interface {v1, v5, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    nop

    .line 111
    invoke-virtual {v0}, Lio/netty/util/ResourceLeakDetector$Level;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 109
    const-string v5, "-Dio.netty.noResourceLeakDetection is deprecated. Use \'-D{}={}\' instead."

    invoke-interface {v1, v5, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    .end local v2    # "disabled":Z
    :cond_0
    const/4 v2, 0x0

    .line 116
    .restart local v2    # "disabled":Z
    :goto_0
    if-eqz v2, :cond_1

    sget-object v0, Lio/netty/util/ResourceLeakDetector$Level;->DISABLED:Lio/netty/util/ResourceLeakDetector$Level;

    .line 119
    .local v0, "defaultLevel":Lio/netty/util/ResourceLeakDetector$Level;
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/ResourceLeakDetector$Level;->name()Ljava/lang/String;

    move-result-object v3

    const-string v5, "io.netty.leakDetectionLevel"

    invoke-static {v5, v3}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "levelStr":Ljava/lang/String;
    invoke-static {v4, v3}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-static {v3}, Lio/netty/util/ResourceLeakDetector$Level;->parseLevel(Ljava/lang/String;)Lio/netty/util/ResourceLeakDetector$Level;

    move-result-object v5

    .line 125
    .local v5, "level":Lio/netty/util/ResourceLeakDetector$Level;
    const/4 v6, 0x4

    const-string v7, "io.netty.leakDetection.targetRecords"

    invoke-static {v7, v6}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lio/netty/util/ResourceLeakDetector;->TARGET_RECORDS:I

    .line 126
    const/16 v8, 0x80

    const-string v9, "io.netty.leakDetection.samplingInterval"

    invoke-static {v9, v8}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lio/netty/util/ResourceLeakDetector;->SAMPLING_INTERVAL:I

    .line 128
    sput-object v5, Lio/netty/util/ResourceLeakDetector;->level:Lio/netty/util/ResourceLeakDetector$Level;

    .line 129
    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 130
    invoke-virtual {v5}, Lio/netty/util/ResourceLeakDetector$Level;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "-D{}: {}"

    invoke-interface {v1, v9, v4, v8}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v9, v7, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 564
    .end local v0    # "defaultLevel":Lio/netty/util/ResourceLeakDetector$Level;
    .end local v2    # "disabled":Z
    .end local v3    # "levelStr":Ljava/lang/String;
    .end local v5    # "level":Lio/netty/util/ResourceLeakDetector$Level;
    :cond_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lio/netty/util/ResourceLeakDetector;->excludedMethods:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    .local p1, "resourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/util/ResourceLeakDetector;-><init>(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 3
    .param p2, "samplingInterval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 212
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    .local p1, "resourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {p0, v0, p2, v1, v2}, Lio/netty/util/ResourceLeakDetector;-><init>(Ljava/lang/String;IJ)V

    .line 213
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;IJ)V
    .locals 0
    .param p2, "samplingInterval"    # I
    .param p3, "maxActive"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    .local p1, "resourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lio/netty/util/ResourceLeakDetector;-><init>(Ljava/lang/Class;I)V

    .line 203
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "resourceType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    const/16 v0, 0x80

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {p0, p1, v0, v1, v2}, Lio/netty/util/ResourceLeakDetector;-><init>(Ljava/lang/String;IJ)V

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "resourceType"    # Ljava/lang/String;
    .param p2, "samplingInterval"    # I
    .param p3, "maxActive"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 166
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector;->allLeaks:Ljava/util/Set;

    .line 168
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 169
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 170
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector;->reportedLeaks:Ljava/util/Set;

    .line 222
    const-string v0, "resourceType"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector;->resourceType:Ljava/lang/String;

    .line 223
    iput p2, p0, Lio/netty/util/ResourceLeakDetector;->samplingInterval:I

    .line 224
    return-void
.end method

.method static synthetic access$000()Lio/netty/util/ResourceLeakDetector$Level;
    .locals 1

    .line 43
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->DEFAULT_LEVEL:Lio/netty/util/ResourceLeakDetector$Level;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 43
    sget v0, Lio/netty/util/ResourceLeakDetector;->TARGET_RECORDS:I

    return v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 43
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->excludedMethods:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static varargs addExclusions(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 6
    .param p0, "clz"    # Ljava/lang/Class;
    .param p1, "methodNames"    # [Ljava/lang/String;

    .line 568
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 571
    .local v0, "nameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 572
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 573
    goto :goto_1

    .line 571
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 576
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 582
    :cond_2
    sget-object v1, Lio/netty/util/ResourceLeakDetector;->excludedMethods:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 583
    .local v1, "oldMethods":[Ljava/lang/String;
    array-length v2, v1

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 584
    .local v2, "newMethods":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 585
    array-length v4, v1

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 586
    array-length v4, v1

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    aget-object v5, p1, v3

    aput-object v5, v2, v4

    .line 584
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 588
    .end local v3    # "i":I
    :cond_3
    sget-object v3, Lio/netty/util/ResourceLeakDetector;->excludedMethods:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 589
    return-void

    .line 577
    .end local v1    # "oldMethods":[Ljava/lang/String;
    .end local v2    # "newMethods":[Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private clearRefQueue()V
    .locals 1

    .line 269
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    .line 270
    .local v0, "ref":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
    if-nez v0, :cond_0

    .line 271
    nop

    .line 275
    .end local v0    # "ref":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
    return-void

    .line 273
    .restart local v0    # "ref":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
    :cond_0
    invoke-virtual {v0}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->dispose()Z

    .line 274
    .end local v0    # "ref":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
    goto :goto_0
.end method

.method public static getLevel()Lio/netty/util/ResourceLeakDetector$Level;
    .locals 1

    .line 161
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->level:Lio/netty/util/ResourceLeakDetector$Level;

    return-object v0
.end method

.method public static isEnabled()Z
    .locals 2

    .line 147
    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->getLevel()Lio/netty/util/ResourceLeakDetector$Level;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v0

    sget-object v1, Lio/netty/util/ResourceLeakDetector$Level;->DISABLED:Lio/netty/util/ResourceLeakDetector$Level;

    invoke-virtual {v1}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private reportLeak()V
    .locals 3

    .line 288
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    invoke-virtual {p0}, Lio/netty/util/ResourceLeakDetector;->needReport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-direct {p0}, Lio/netty/util/ResourceLeakDetector;->clearRefQueue()V

    .line 290
    return-void

    .line 295
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    .line 296
    .local v0, "ref":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
    if-nez v0, :cond_1

    .line 297
    nop

    .line 313
    .end local v0    # "ref":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
    return-void

    .line 300
    .restart local v0    # "ref":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->dispose()Z

    move-result v1

    if-nez v1, :cond_2

    .line 301
    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {v0}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "records":Ljava/lang/String;
    iget-object v2, p0, Lio/netty/util/ResourceLeakDetector;->reportedLeaks:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 306
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 307
    iget-object v2, p0, Lio/netty/util/ResourceLeakDetector;->resourceType:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lio/netty/util/ResourceLeakDetector;->reportUntracedLeak(Ljava/lang/String;)V

    goto :goto_1

    .line 309
    :cond_3
    iget-object v2, p0, Lio/netty/util/ResourceLeakDetector;->resourceType:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lio/netty/util/ResourceLeakDetector;->reportTracedLeak(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .end local v0    # "ref":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
    .end local v1    # "records":Ljava/lang/String;
    :cond_4
    :goto_1
    goto :goto_0
.end method

.method public static setEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    if-eqz p0, :cond_0

    sget-object v0, Lio/netty/util/ResourceLeakDetector$Level;->SIMPLE:Lio/netty/util/ResourceLeakDetector$Level;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/util/ResourceLeakDetector$Level;->DISABLED:Lio/netty/util/ResourceLeakDetector$Level;

    :goto_0
    invoke-static {v0}, Lio/netty/util/ResourceLeakDetector;->setLevel(Lio/netty/util/ResourceLeakDetector$Level;)V

    .line 141
    return-void
.end method

.method public static setLevel(Lio/netty/util/ResourceLeakDetector$Level;)V
    .locals 1
    .param p0, "level"    # Lio/netty/util/ResourceLeakDetector$Level;

    .line 154
    const-string v0, "level"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/ResourceLeakDetector$Level;

    sput-object v0, Lio/netty/util/ResourceLeakDetector;->level:Lio/netty/util/ResourceLeakDetector$Level;

    .line 155
    return-void
.end method

.method private track0(Ljava/lang/Object;)Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->level:Lio/netty/util/ResourceLeakDetector$Level;

    .line 252
    .local v0, "level":Lio/netty/util/ResourceLeakDetector$Level;
    sget-object v1, Lio/netty/util/ResourceLeakDetector$Level;->DISABLED:Lio/netty/util/ResourceLeakDetector$Level;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 253
    return-object v2

    .line 256
    :cond_0
    invoke-virtual {v0}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v1

    sget-object v3, Lio/netty/util/ResourceLeakDetector$Level;->PARANOID:Lio/netty/util/ResourceLeakDetector$Level;

    invoke-virtual {v3}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 257
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v1

    iget v3, p0, Lio/netty/util/ResourceLeakDetector;->samplingInterval:I

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 258
    invoke-direct {p0}, Lio/netty/util/ResourceLeakDetector;->reportLeak()V

    .line 259
    new-instance v1, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    iget-object v2, p0, Lio/netty/util/ResourceLeakDetector;->refQueue:Ljava/lang/ref/ReferenceQueue;

    iget-object v3, p0, Lio/netty/util/ResourceLeakDetector;->allLeaks:Ljava/util/Set;

    invoke-direct {v1, p1, v2, v3}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V

    return-object v1

    .line 261
    :cond_1
    return-object v2

    .line 263
    :cond_2
    invoke-direct {p0}, Lio/netty/util/ResourceLeakDetector;->reportLeak()V

    .line 264
    new-instance v1, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    iget-object v2, p0, Lio/netty/util/ResourceLeakDetector;->refQueue:Ljava/lang/ref/ReferenceQueue;

    iget-object v3, p0, Lio/netty/util/ResourceLeakDetector;->allLeaks:Ljava/util/Set;

    invoke-direct {v1, p1, v2, v3}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V

    return-object v1
.end method


# virtual methods
.method protected needReport()Z
    .locals 1

    .line 284
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public final open(Ljava/lang/Object;)Lio/netty/util/ResourceLeak;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/netty/util/ResourceLeak;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lio/netty/util/ResourceLeakDetector;->track0(Ljava/lang/Object;)Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    move-result-object v0

    return-object v0
.end method

.method protected reportInstancesLeak(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    return-void
.end method

.method protected reportTracedLeak(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "resourceType"    # Ljava/lang/String;
    .param p2, "records"    # Ljava/lang/String;

    .line 320
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "LEAK: {}.release() was not called before it\'s garbage-collected. See https://netty.io/wiki/reference-counted-objects.html for more information.{}"

    invoke-interface {v0, v1, p1, p2}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 324
    return-void
.end method

.method protected reportUntracedLeak(Ljava/lang/String;)V
    .locals 4
    .param p1, "resourceType"    # Ljava/lang/String;

    .line 331
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string v3, "io.netty.leakDetection.level"

    aput-object v3, v1, v2

    sget-object v2, Lio/netty/util/ResourceLeakDetector$Level;->ADVANCED:Lio/netty/util/ResourceLeakDetector$Level;

    .line 336
    invoke-virtual {v2}, Lio/netty/util/ResourceLeakDetector$Level;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 331
    const-string v2, "LEAK: {}.release() was not called before it\'s garbage-collected. Enable advanced leak reporting to find out where the leak occurred. To enable advanced leak reporting, specify the JVM option \'-D{}={}\' or call {}.setLevel() See https://netty.io/wiki/reference-counted-objects.html for more information."

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    return-void
.end method

.method public final track(Ljava/lang/Object;)Lio/netty/util/ResourceLeakTracker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/netty/util/ResourceLeakTracker<",
            "TT;>;"
        }
    .end annotation

    .line 246
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lio/netty/util/ResourceLeakDetector;->track0(Ljava/lang/Object;)Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    move-result-object v0

    return-object v0
.end method
