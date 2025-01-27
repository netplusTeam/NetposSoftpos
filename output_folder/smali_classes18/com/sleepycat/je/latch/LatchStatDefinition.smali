.class public Lcom/sleepycat/je/latch/LatchStatDefinition;
.super Ljava/lang/Object;
.source "LatchStatDefinition.java"


# static fields
.field public static final GROUP_DESC:Ljava/lang/String; = "Latch characteristics"

.field public static final GROUP_NAME:Ljava/lang/String; = "Latch"

.field public static final LATCH_CONTENTION:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LATCH_CONTENTION_DESC:Ljava/lang/String; = "Number of times the latch was acquired when it was already owned by another thread."

.field public static final LATCH_CONTENTION_NAME:Ljava/lang/String; = "nLatchAcquiresWithContention"

.field public static final LATCH_NOWAIT_SUCCESS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LATCH_NOWAIT_SUCCESS_DESC:Ljava/lang/String; = "Number of successful no-wait acquires of the lock table latch."

.field public static final LATCH_NOWAIT_SUCCESS_NAME:Ljava/lang/String; = "nLatchAcquiresNoWaitSuccessful"

.field public static final LATCH_NOWAIT_UNSUCCESS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LATCH_NOWAIT_UNSUCCESS_DESC:Ljava/lang/String; = "Number of unsuccessful no-wait acquires of the lock table latch."

.field public static final LATCH_NOWAIT_UNSUCCESS_NAME:Ljava/lang/String; = "nLatchAcquireNoWaitUnsuccessful"

.field public static final LATCH_NO_WAITERS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LATCH_NO_WAITERS_DESC:Ljava/lang/String; = "Number of times the latch was acquired without contention."

.field public static final LATCH_NO_WAITERS_NAME:Ljava/lang/String; = "nLatchAcquiresNoWaiters"

.field public static final LATCH_RELEASES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LATCH_RELEASES_DESC:Ljava/lang/String; = "Number of latch releases."

.field public static final LATCH_RELEASES_NAME:Ljava/lang/String; = "nLatchReleases"

.field public static final LATCH_SELF_OWNED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LATCH_SELF_OWNED_DESC:Ljava/lang/String; = "Number of times the latch was acquired it was already owned by the caller."

.field public static final LATCH_SELF_OWNED_NAME:Ljava/lang/String; = "nLatchAcquiresSelfOwned"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLatchAcquiresNoWaiters"

    const-string v2, "Number of times the latch was acquired without contention."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_NO_WAITERS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 40
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLatchAcquiresSelfOwned"

    const-string v2, "Number of times the latch was acquired it was already owned by the caller."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_SELF_OWNED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 50
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLatchAcquiresWithContention"

    const-string v2, "Number of times the latch was acquired when it was already owned by another thread."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_CONTENTION:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 59
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLatchAcquiresNoWaitSuccessful"

    const-string v2, "Number of successful no-wait acquires of the lock table latch."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_NOWAIT_SUCCESS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 68
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLatchAcquireNoWaitUnsuccessful"

    const-string v2, "Number of unsuccessful no-wait acquires of the lock table latch."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_NOWAIT_UNSUCCESS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 77
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLatchReleases"

    const-string v2, "Number of latch releases."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/latch/LatchStatDefinition;->LATCH_RELEASES:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
