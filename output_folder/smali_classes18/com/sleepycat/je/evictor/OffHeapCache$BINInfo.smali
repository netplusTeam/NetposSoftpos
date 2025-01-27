.class public Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;
.super Ljava/lang/Object;
.source "OffHeapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/evictor/OffHeapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BINInfo"
.end annotation


# instance fields
.field public final fullBINLsn:J

.field public final isBINDelta:Z


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;)V
    .locals 2
    .param p1, "pb"    # Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;

    .line 2260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2261
    iget v0, p1, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;->isBINDelta:Z

    .line 2262
    iget-wide v0, p1, Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;->lastFullLsn:J

    iput-wide v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;->fullBINLsn:J

    .line 2263
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;Lcom/sleepycat/je/evictor/OffHeapCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;
    .param p2, "x1"    # Lcom/sleepycat/je/evictor/OffHeapCache$1;

    .line 2255
    invoke-direct {p0, p1}, Lcom/sleepycat/je/evictor/OffHeapCache$BINInfo;-><init>(Lcom/sleepycat/je/evictor/OffHeapCache$ParsedBIN;)V

    return-void
.end method
