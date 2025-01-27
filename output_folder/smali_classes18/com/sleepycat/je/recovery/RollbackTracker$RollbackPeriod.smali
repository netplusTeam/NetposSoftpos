.class Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
.super Ljava/lang/Object;
.source "RollbackTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/recovery/RollbackTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RollbackPeriod"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private activeTxnIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final beforeCheckpointStart:Z

.field private childIter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private currentChild:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

.field private final matchpointLSN:J

.field private final rollbackEndLSN:J

.field private final rollbackStartLSN:J

.field private final tracker:Lcom/sleepycat/je/recovery/RollbackTracker;

.field private final txnChainMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/txn/TxnChain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 629
    const-class v0, Lcom/sleepycat/je/recovery/RollbackTracker;

    return-void
.end method

.method constructor <init>(JJJJ)V
    .locals 11
    .param p1, "matchpointLSN"    # J
    .param p3, "rollbackStartLSN"    # J
    .param p5, "rollbackEndLSN"    # J
    .param p7, "checkpointStart"    # J

    .line 684
    const/4 v1, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;-><init>(Lcom/sleepycat/je/recovery/RollbackTracker;JJJJLjava/util/Set;)V

    .line 686
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/recovery/RollbackTracker;JJJJLjava/util/Set;)V
    .locals 1
    .param p1, "tracker"    # Lcom/sleepycat/je/recovery/RollbackTracker;
    .param p2, "matchpointLSN"    # J
    .param p4, "rollbackStartLSN"    # J
    .param p6, "rollbackEndLSN"    # J
    .param p8, "checkpointStart"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/recovery/RollbackTracker;",
            "JJJJ",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 694
    .local p10, "activeTxnIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->currentChild:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 695
    iput-object p1, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->tracker:Lcom/sleepycat/je/recovery/RollbackTracker;

    .line 696
    iput-wide p2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->matchpointLSN:J

    .line 697
    iput-wide p4, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackStartLSN:J

    .line 698
    iput-wide p6, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackEndLSN:J

    .line 699
    invoke-direct {p0, p8, p9}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->calcBeforeCheckpoint(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->beforeCheckpointStart:Z

    .line 700
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->txnChainMap:Ljava/util/Map;

    .line 701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->children:Ljava/util/List;

    .line 702
    iput-object p10, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->activeTxnIds:Ljava/util/Set;

    .line 703
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/recovery/RollbackTracker;Lcom/sleepycat/je/txn/RollbackEnd;J)V
    .locals 11
    .param p1, "tracker"    # Lcom/sleepycat/je/recovery/RollbackTracker;
    .param p2, "rollbackEnd"    # Lcom/sleepycat/je/txn/RollbackEnd;
    .param p3, "rollbackEndLSN"    # J

    .line 660
    nop

    .line 661
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/RollbackEnd;->getMatchpoint()J

    move-result-wide v2

    .line 662
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/RollbackEnd;->getRollbackStart()J

    move-result-wide v4

    .line 664
    invoke-virtual {p1}, Lcom/sleepycat/je/recovery/RollbackTracker;->getCheckpointStart()J

    move-result-wide v8

    .line 660
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v10}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;-><init>(Lcom/sleepycat/je/recovery/RollbackTracker;JJJJLjava/util/Set;)V

    .line 666
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/recovery/RollbackTracker;Lcom/sleepycat/je/txn/RollbackStart;J)V
    .locals 11
    .param p1, "tracker"    # Lcom/sleepycat/je/recovery/RollbackTracker;
    .param p2, "rollbackStart"    # Lcom/sleepycat/je/txn/RollbackStart;
    .param p3, "rollbackStartLSN"    # J

    .line 671
    nop

    .line 672
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/RollbackStart;->getMatchpoint()J

    move-result-wide v2

    .line 675
    invoke-virtual {p1}, Lcom/sleepycat/je/recovery/RollbackTracker;->getCheckpointStart()J

    move-result-wide v8

    .line 676
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/RollbackStart;->getActiveTxnIds()Ljava/util/Set;

    move-result-object v10

    .line 671
    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v10}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;-><init>(Lcom/sleepycat/je/recovery/RollbackTracker;JJJJLjava/util/Set;)V

    .line 677
    return-void
.end method

.method private calcBeforeCheckpoint(J)Z
    .locals 4
    .param p1, "checkpointStart"    # J

    .line 706
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackEndLSN:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 708
    invoke-static {v2, v3, p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 706
    :goto_0
    return v0
.end method

.method private contained(Lcom/sleepycat/je/txn/RollbackEnd;J)Z
    .locals 4
    .param p1, "foundRBEnd"    # Lcom/sleepycat/je/txn/RollbackEnd;
    .param p2, "foundLSN"    # J

    .line 765
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->matchpointLSN:J

    invoke-static {p2, p3, v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-gez v0, :cond_0

    .line 767
    const/4 v0, 0x0

    return v0

    .line 770
    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackStartLSN:J

    invoke-static {p2, p3, v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-ltz v0, :cond_1

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Should not be two RollbackEnds in a row. New RollbackEnd at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 773
    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 771
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->fail(Ljava/lang/String;)V

    .line 781
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/RollbackEnd;->getMatchpoint()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->matchpointLSN:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-ltz v0, :cond_2

    .line 783
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/RollbackEnd;->getRollbackStart()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackStartLSN:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-ltz v0, :cond_3

    .line 785
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RollbackEnd intersects current rollback period "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 786
    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 785
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->fail(Ljava/lang/String;)V

    .line 790
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private contained(Lcom/sleepycat/je/txn/RollbackStart;J)Z
    .locals 6
    .param p1, "foundRBStart"    # Lcom/sleepycat/je/txn/RollbackStart;
    .param p2, "foundLSN"    # J

    .line 807
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->matchpointLSN:J

    invoke-static {p2, p3, v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-gez v0, :cond_0

    .line 809
    const/4 v0, 0x0

    return v0

    .line 812
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->isMatchingRollbackStart(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 813
    return v1

    .line 817
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/RollbackStart;->getMatchpoint()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->matchpointLSN:J

    invoke-static {v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-ltz v0, :cond_2

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackStartLSN:J

    .line 819
    invoke-static {p2, p3, v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-ltz v0, :cond_3

    .line 820
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RollbackStart intersects current rollback period "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 822
    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 820
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->fail(Ljava/lang/String;)V

    .line 826
    :cond_3
    return v1
.end method

.method private isMatchingRollbackStart(J)Z
    .locals 2
    .param p1, "foundLSN"    # J

    .line 834
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackStartLSN:J

    invoke-static {p1, p2, v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeChild(Lcom/sleepycat/je/txn/RollbackEnd;J)V
    .locals 2
    .param p1, "foundRBEnd"    # Lcom/sleepycat/je/txn/RollbackEnd;
    .param p2, "foundLSN"    # J

    .line 838
    new-instance v0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    iget-object v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->tracker:Lcom/sleepycat/je/recovery/RollbackTracker;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;-><init>(Lcom/sleepycat/je/recovery/RollbackTracker;Lcom/sleepycat/je/txn/RollbackEnd;J)V

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->currentChild:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 841
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    return-void
.end method

.method private makeChild(Lcom/sleepycat/je/txn/RollbackStart;J)V
    .locals 2
    .param p1, "foundRBStart"    # Lcom/sleepycat/je/txn/RollbackStart;
    .param p2, "foundLSN"    # J

    .line 845
    new-instance v0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    iget-object v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->tracker:Lcom/sleepycat/je/recovery/RollbackTracker;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;-><init>(Lcom/sleepycat/je/recovery/RollbackTracker;Lcom/sleepycat/je/txn/RollbackStart;J)V

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->currentChild:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 848
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    return-void
.end method


# virtual methods
.method beforeCheckpointStart()Z
    .locals 1

    .line 1051
    iget-boolean v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->beforeCheckpointStart:Z

    return v0
.end method

.method bracketFailure(J)Ljava/lang/String;
    .locals 4
    .param p1, "lsn"    # J

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] should not be within rollbackStart "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackStartLSN:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackStartLSN:J

    .line 991
    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] and rollbackEnd "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackEndLSN:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackEndLSN:J

    .line 993
    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 989
    return-object v0
.end method

.method contains(J)Z
    .locals 2
    .param p1, "lsn"    # J

    .line 930
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->matchpointLSN:J

    invoke-static {v0, v1, p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackStartLSN:J

    .line 931
    invoke-static {v0, v1, p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 930
    :goto_0
    return v0
.end method

.method containsLN(JJ)Z
    .locals 2
    .param p1, "lsn"    # J
    .param p3, "txnId"    # J

    .line 935
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->activeTxnIds:Ljava/util/Set;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 1040
    instance-of v0, p1, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1041
    return v1

    .line 1044
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 1045
    .local v0, "otherPeriod":Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->matchpointLSN:J

    iget-wide v4, v0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->matchpointLSN:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackStartLSN:J

    iget-wide v4, v0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackStartLSN:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackEndLSN:J

    iget-wide v4, v0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackEndLSN:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method fail(Ljava/lang/String;)V
    .locals 5
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 916
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->tracker:Lcom/sleepycat/je/recovery/RollbackTracker;

    .line 917
    invoke-virtual {v1}, Lcom/sleepycat/je/recovery/RollbackTracker;->getEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\ntracker contents="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->tracker:Lcom/sleepycat/je/recovery/RollbackTracker;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v0
.end method

.method findTarget(JJ)Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    .locals 1
    .param p1, "lsn"    # J
    .param p3, "txnId"    # J

    .line 957
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->currentChild:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    if-eqz v0, :cond_0

    .line 958
    nop

    .line 959
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->findTarget(JJ)Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    move-result-object v0

    .line 960
    .local v0, "candidate":Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    if-eqz v0, :cond_0

    .line 961
    return-object v0

    .line 965
    .end local v0    # "candidate":Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->containsLN(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 966
    return-object p0

    .line 968
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method follows(J)Z
    .locals 2
    .param p1, "lsn"    # J

    .line 1001
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->matchpointLSN:J

    invoke-static {v0, v1, p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getChain(JJLcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/TxnChain;
    .locals 10
    .param p1, "txnId"    # J
    .param p3, "undoLsn"    # J
    .param p5, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1013
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->txnChainMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/txn/TxnChain;

    .line 1014
    .local v0, "chain":Lcom/sleepycat/je/txn/TxnChain;
    if-nez v0, :cond_0

    .line 1015
    new-instance v9, Lcom/sleepycat/je/txn/TxnChain;

    iget-wide v6, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->matchpointLSN:J

    move-object v1, v9

    move-wide v2, p3

    move-wide v4, p1

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/txn/TxnChain;-><init>(JJJLcom/sleepycat/je/dbi/EnvironmentImpl;)V

    move-object v0, v9

    .line 1019
    iget-object v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->txnChainMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    :cond_0
    return-object v0
.end method

.method getNewPeriodTarget(Lcom/sleepycat/je/txn/RollbackEnd;J)Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    .locals 1
    .param p1, "foundRBEnd"    # Lcom/sleepycat/je/txn/RollbackEnd;
    .param p2, "foundLSN"    # J

    .line 857
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->currentChild:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    if-eqz v0, :cond_0

    .line 858
    nop

    .line 859
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->getNewPeriodTarget(Lcom/sleepycat/je/txn/RollbackEnd;J)Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    move-result-object v0

    .line 860
    .local v0, "target":Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    if-eqz v0, :cond_0

    .line 861
    return-object v0

    .line 865
    .end local v0    # "target":Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->contained(Lcom/sleepycat/je/txn/RollbackEnd;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    return-object p0

    .line 868
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getNewPeriodTarget(Lcom/sleepycat/je/txn/RollbackStart;J)Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    .locals 1
    .param p1, "foundRBStart"    # Lcom/sleepycat/je/txn/RollbackStart;
    .param p2, "foundLSN"    # J

    .line 877
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->currentChild:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    if-eqz v0, :cond_0

    .line 878
    nop

    .line 879
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->getNewPeriodTarget(Lcom/sleepycat/je/txn/RollbackStart;J)Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    move-result-object v0

    .line 880
    .local v0, "target":Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    if-eqz v0, :cond_0

    .line 881
    return-object v0

    .line 885
    .end local v0    # "target":Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->contained(Lcom/sleepycat/je/txn/RollbackStart;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    return-object p0

    .line 888
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getScannerTarget(J)Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    .locals 2
    .param p1, "lsn"    # J

    .line 892
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->currentChild:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->getScannerTarget(J)Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    move-result-object v0

    .line 894
    .local v0, "target":Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    if-eqz v0, :cond_0

    .line 895
    return-object v0

    .line 899
    .end local v0    # "target":Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->matchpointLSN:J

    invoke-static {p1, p2, v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-lez v0, :cond_1

    .line 900
    return-object p0

    .line 902
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method hasRollbackEnd()Z
    .locals 4

    .line 1025
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackEndLSN:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1056
    const/16 v0, 0x1f

    .line 1057
    .local v0, "prime":I
    iget-wide v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->matchpointLSN:J

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1f

    .line 1058
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackStartLSN:J

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 1059
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-wide v3, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackEndLSN:J

    long-to-int v3, v3

    add-int/2addr v1, v3

    .line 1060
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method initChildIter()V
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->childIter:Ljava/util/Iterator;

    .line 907
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->childIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->currentChild:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 909
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->initChildIter()V

    goto :goto_0

    .line 911
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->currentChild:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 913
    :goto_0
    return-void
.end method

.method makeNestedPeriod(Lcom/sleepycat/je/txn/RollbackEnd;J)Z
    .locals 2
    .param p1, "foundRBEnd"    # Lcom/sleepycat/je/txn/RollbackEnd;
    .param p2, "foundLSN"    # J

    .line 719
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->getNewPeriodTarget(Lcom/sleepycat/je/txn/RollbackEnd;J)Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    move-result-object v0

    .line 720
    .local v0, "target":Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    if-eqz v0, :cond_0

    .line 721
    invoke-direct {v0, p1, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->makeChild(Lcom/sleepycat/je/txn/RollbackEnd;J)V

    .line 722
    const/4 v1, 0x1

    return v1

    .line 724
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method makeNestedPeriod(Lcom/sleepycat/je/txn/RollbackStart;J)Z
    .locals 2
    .param p1, "foundRBStart"    # Lcom/sleepycat/je/txn/RollbackStart;
    .param p2, "foundLSN"    # J

    .line 736
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->getNewPeriodTarget(Lcom/sleepycat/je/txn/RollbackStart;J)Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    move-result-object v0

    .line 737
    .local v0, "target":Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;
    if-eqz v0, :cond_2

    .line 738
    invoke-direct {v0, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->isMatchingRollbackStart(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    iget-object v1, v0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->activeTxnIds:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 740
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/RollbackStart;->getActiveTxnIds()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->activeTxnIds:Ljava/util/Set;

    goto :goto_0

    .line 739
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 742
    :cond_1
    invoke-direct {v0, p1, p2, p3}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->makeChild(Lcom/sleepycat/je/txn/RollbackStart;J)V

    .line 750
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 753
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method notInRollbackStartAndEnd(JJ)Z
    .locals 6
    .param p1, "lsn"    # J
    .param p3, "txnId"    # J

    .line 976
    invoke-static {p3, p4}, Lcom/sleepycat/je/txn/TxnManager;->isReplicatedTxn(J)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 978
    return v1

    .line 981
    :cond_0
    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackEndLSN:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 982
    return v1

    .line 984
    :cond_1
    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackStartLSN:J

    invoke-static {v2, v3, p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-gez v0, :cond_3

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackEndLSN:J

    .line 985
    invoke-static {v2, v3, p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    nop

    .line 984
    :goto_1
    return v1
.end method

.method positionChildren(J)V
    .locals 1
    .param p1, "lsn"    # J

    .line 939
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->currentChild:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    if-nez v0, :cond_0

    .line 940
    return-void

    .line 942
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->follows(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 943
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->childIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->childIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->currentChild:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 945
    invoke-virtual {v0}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->initChildIter()V

    goto :goto_0

    .line 947
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->currentChild:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    .line 948
    return-void

    .line 952
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->currentChild:Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->positionChildren(J)V

    .line 953
    return-void
.end method

.method precedes(J)Z
    .locals 2
    .param p1, "lsn"    # J

    .line 1009
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackStartLSN:J

    invoke-static {v0, v1, p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "matchpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->matchpointLSN:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->matchpointLSN:J

    .line 1031
    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] rollbackStart="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackStartLSN:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackStartLSN:J

    .line 1033
    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] rollbackEnd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackEndLSN:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/recovery/RollbackTracker$RollbackPeriod;->rollbackEndLSN:J

    .line 1035
    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1030
    return-object v0
.end method
