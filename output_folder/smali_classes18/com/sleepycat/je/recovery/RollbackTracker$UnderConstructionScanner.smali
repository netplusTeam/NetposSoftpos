.class Lcom/sleepycat/je/recovery/RollbackTracker$UnderConstructionScanner;
.super Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;
.source "RollbackTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/recovery/RollbackTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnderConstructionScanner"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/recovery/RollbackTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 532
    const-class v0, Lcom/sleepycat/je/recovery/RollbackTracker;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/recovery/RollbackTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/recovery/RollbackTracker;

    .line 532
    iput-object p1, p0, Lcom/sleepycat/je/recovery/RollbackTracker$UnderConstructionScanner;->this$0:Lcom/sleepycat/je/recovery/RollbackTracker;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;-><init>(Lcom/sleepycat/je/recovery/RollbackTracker;)V

    return-void
.end method


# virtual methods
.method public positionAndCheck(JJ)Z
    .locals 2
    .param p1, "lsn"    # J
    .param p3, "txnId"    # J

    .line 537
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$UnderConstructionScanner;->this$0:Lcom/sleepycat/je/recovery/RollbackTracker;

    invoke-static {v0}, Lcom/sleepycat/je/recovery/RollbackTracker;->access$300(Lcom/sleepycat/je/recovery/RollbackTracker;)Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 538
    return v1

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$UnderConstructionScanner;->this$0:Lcom/sleepycat/je/recovery/RollbackTracker;

    invoke-static {v0}, Lcom/sleepycat/je/recovery/RollbackTracker;->access$300(Lcom/sleepycat/je/recovery/RollbackTracker;)Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    move-result-object v0

    .line 542
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->notInRollbackStartAndEnd(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$UnderConstructionScanner;->this$0:Lcom/sleepycat/je/recovery/RollbackTracker;

    invoke-static {v0}, Lcom/sleepycat/je/recovery/RollbackTracker;->access$300(Lcom/sleepycat/je/recovery/RollbackTracker;)Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->getScannerTarget(J)Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$UnderConstructionScanner;->target:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 546
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$UnderConstructionScanner;->target:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$UnderConstructionScanner;->target:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->containsLN(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    const/4 v0, 0x1

    return v0

    .line 550
    :cond_1
    return v1

    .line 541
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker$UnderConstructionScanner;->this$0:Lcom/sleepycat/je/recovery/RollbackTracker;

    .line 543
    invoke-static {v1}, Lcom/sleepycat/je/recovery/RollbackTracker;->access$300(Lcom/sleepycat/je/recovery/RollbackTracker;)Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->bracketFailure(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
