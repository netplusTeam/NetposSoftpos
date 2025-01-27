.class Lcom/sleepycat/je/dbi/DiskOrderedScanner$2;
.super Ljava/lang/Object;
.source "DiskOrderedScanner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/dbi/DiskOrderedScanner;->fetchAndProcessBINs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/dbi/DiskOrderedScanner;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/DiskOrderedScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    .line 1721
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$2;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLsn(Ljava/lang/Object;)J
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 1729
    instance-of v0, p1, Lcom/sleepycat/je/tree/OldBINDelta;

    if-eqz v0, :cond_0

    .line 1730
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/tree/OldBINDelta;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/OldBINDelta;->getLastFullLsn()J

    move-result-wide v0

    return-wide v0

    .line 1731
    :cond_0
    instance-of v0, p1, Lcom/sleepycat/je/tree/BIN;

    if-eqz v0, :cond_1

    .line 1732
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v0

    return-wide v0

    .line 1733
    :cond_1
    instance-of v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredDeltaRef;

    if-eqz v0, :cond_2

    .line 1734
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredDeltaRef;

    iget-object v0, v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredDeltaRef;->delta:Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v0

    return-wide v0

    .line 1735
    :cond_2
    instance-of v0, p1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;

    if-eqz v0, :cond_3

    .line 1736
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;

    iget-wide v0, v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$OffHeapBinRef;->fullBinLsn:J

    return-wide v0

    .line 1738
    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;

    iget-wide v0, v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$WeakBinRef;->fullBinLsn:J

    return-wide v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .line 1724
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$2;->getLsn(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-direct {p0, p2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner$2;->getLsn(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    return v0
.end method
