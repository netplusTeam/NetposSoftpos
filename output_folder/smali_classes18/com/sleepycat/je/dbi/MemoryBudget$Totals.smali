.class public abstract Lcom/sleepycat/je/dbi/MemoryBudget$Totals;
.super Ljava/lang/Object;
.source "MemoryBudget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/MemoryBudget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Totals"
.end annotation


# instance fields
.field private criticalThreshold:J

.field maxMemory:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1215
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->maxMemory:J

    .line 1216
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/dbi/MemoryBudget$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/dbi/MemoryBudget$1;

    .line 1209
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/sleepycat/je/dbi/MemoryBudget$Totals;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/MemoryBudget$Totals;
    .param p1, "x1"    # J

    .line 1209
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->setMaxMemory(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/sleepycat/je/dbi/MemoryBudget$Totals;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/MemoryBudget$Totals;
    .param p1, "x1"    # J

    .line 1209
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->setCriticalThreshold(J)V

    return-void
.end method

.method private setCriticalThreshold(J)V
    .locals 0
    .param p1, "criticalThreshold"    # J

    .line 1227
    iput-wide p1, p0, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->criticalThreshold:J

    .line 1228
    return-void
.end method

.method private setMaxMemory(J)V
    .locals 0
    .param p1, "maxMemory"    # J

    .line 1219
    iput-wide p1, p0, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->maxMemory:J

    .line 1220
    return-void
.end method


# virtual methods
.method public abstract getCacheUsage()J
.end method

.method public final getCriticalThreshold()J
    .locals 2

    .line 1231
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->criticalThreshold:J

    return-wide v0
.end method

.method public final getMaxMemory()J
    .locals 2

    .line 1223
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->maxMemory:J

    return-wide v0
.end method

.method abstract isSharedCache()Z
.end method

.method abstract updateCacheUsage(J)Z
.end method
