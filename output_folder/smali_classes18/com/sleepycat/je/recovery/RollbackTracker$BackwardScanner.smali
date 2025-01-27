.class Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;
.super Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;
.source "RollbackTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/recovery/RollbackTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackwardScanner"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private currentPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

.field private final iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sleepycat/je/recovery/RollbackTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 560
    const-class v0, Lcom/sleepycat/je/recovery/RollbackTracker;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/recovery/RollbackTracker;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/recovery/RollbackTracker;

    .line 570
    iput-object p1, p0, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;->this$0:Lcom/sleepycat/je/recovery/RollbackTracker;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/recovery/RollbackTracker$Scanner;-><init>(Lcom/sleepycat/je/recovery/RollbackTracker;)V

    .line 571
    invoke-static {p1}, Lcom/sleepycat/je/recovery/RollbackTracker;->access$400(Lcom/sleepycat/je/recovery/RollbackTracker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;->iter:Ljava/util/Iterator;

    .line 572
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;->currentPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 574
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->initChildIter()V

    goto :goto_0

    .line 576
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;->currentPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 578
    :goto_0
    return-void
.end method


# virtual methods
.method public positionAndCheck(JJ)Z
    .locals 2
    .param p1, "lsn"    # J
    .param p3, "txnId"    # J

    .line 582
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;->currentPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 583
    return v1

    .line 586
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->follows(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;->currentPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 594
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->initChildIter()V

    goto :goto_0

    .line 596
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;->currentPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 597
    return v1

    .line 601
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;->currentPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->notInRollbackStartAndEnd(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 604
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;->currentPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 610
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;->currentPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->positionChildren(J)V

    .line 617
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;->currentPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->findTarget(JJ)Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;->target:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 618
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;->target:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 621
    :cond_4
    return v1

    .line 601
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker$BackwardScanner;->currentPeriod:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 602
    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->bracketFailure(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
