.class public Lcom/sleepycat/je/latch/LatchFactory;
.super Ljava/lang/Object;
.source "LatchFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createContext(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/latch/LatchContext;
    .locals 1
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "name"    # Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/sleepycat/je/latch/LatchFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/latch/LatchFactory$1;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createExclusiveLatch(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Z)Lcom/sleepycat/je/latch/Latch;
    .locals 2
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "collectStats"    # Z

    .line 76
    if-eqz p2, :cond_0

    .line 77
    new-instance v0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;

    invoke-static {p0, p1}, Lcom/sleepycat/je/latch/LatchFactory;->createContext(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/latch/LatchContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;-><init>(Lcom/sleepycat/je/latch/LatchContext;)V

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Lcom/sleepycat/je/latch/LatchImpl;

    invoke-static {p0, p1}, Lcom/sleepycat/je/latch/LatchFactory;->createContext(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/latch/LatchContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/latch/LatchImpl;-><init>(Lcom/sleepycat/je/latch/LatchContext;)V

    return-object v0
.end method

.method public static createExclusiveLatch(Lcom/sleepycat/je/latch/LatchContext;Z)Lcom/sleepycat/je/latch/Latch;
    .locals 1
    .param p0, "context"    # Lcom/sleepycat/je/latch/LatchContext;
    .param p1, "collectStats"    # Z

    .line 60
    if-eqz p1, :cond_0

    .line 61
    new-instance v0, Lcom/sleepycat/je/latch/LatchWithStatsImpl;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/latch/LatchWithStatsImpl;-><init>(Lcom/sleepycat/je/latch/LatchContext;)V

    return-object v0

    .line 63
    :cond_0
    new-instance v0, Lcom/sleepycat/je/latch/LatchImpl;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/latch/LatchImpl;-><init>(Lcom/sleepycat/je/latch/LatchContext;)V

    return-object v0
.end method

.method public static createSharedLatch(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Z)Lcom/sleepycat/je/latch/SharedLatch;
    .locals 3
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "exclusiveOnly"    # Z

    .line 45
    if-eqz p2, :cond_0

    .line 46
    new-instance v0, Lcom/sleepycat/je/latch/LatchImpl;

    invoke-static {p0, p1}, Lcom/sleepycat/je/latch/LatchFactory;->createContext(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/latch/LatchContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/latch/LatchImpl;-><init>(Lcom/sleepycat/je/latch/LatchContext;)V

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/sleepycat/je/latch/SharedLatchImpl;

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, p1}, Lcom/sleepycat/je/latch/LatchFactory;->createContext(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/latch/LatchContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/latch/SharedLatchImpl;-><init>(ZLcom/sleepycat/je/latch/LatchContext;)V

    .line 48
    return-object v0
.end method

.method public static createSharedLatch(Lcom/sleepycat/je/latch/LatchContext;Z)Lcom/sleepycat/je/latch/SharedLatch;
    .locals 2
    .param p0, "context"    # Lcom/sleepycat/je/latch/LatchContext;
    .param p1, "exclusiveOnly"    # Z

    .line 29
    if-eqz p1, :cond_0

    .line 30
    new-instance v0, Lcom/sleepycat/je/latch/LatchImpl;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/latch/LatchImpl;-><init>(Lcom/sleepycat/je/latch/LatchContext;)V

    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lcom/sleepycat/je/latch/SharedLatchImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sleepycat/je/latch/SharedLatchImpl;-><init>(ZLcom/sleepycat/je/latch/LatchContext;)V

    return-object v0
.end method

.method public static createTestLatchContext(Ljava/lang/String;)Lcom/sleepycat/je/latch/LatchContext;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/sleepycat/je/latch/LatchFactory$2;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/latch/LatchFactory$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
