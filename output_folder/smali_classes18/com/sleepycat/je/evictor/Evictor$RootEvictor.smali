.class Lcom/sleepycat/je/evictor/Evictor$RootEvictor;
.super Ljava/lang/Object;
.source "Evictor.java"

# interfaces
.implements Lcom/sleepycat/je/tree/WithRootLatched;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/evictor/Evictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RootEvictor"
.end annotation


# instance fields
.field backgroundIO:Z

.field evictedBytes:J

.field flushed:Z

.field rootRef:Lcom/sleepycat/je/tree/ChildReference;

.field source:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

.field stats:Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;

.field target:Lcom/sleepycat/je/tree/IN;

.field final synthetic this$0:Lcom/sleepycat/je/evictor/Evictor;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/evictor/Evictor;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/evictor/Evictor;

    .line 2531
    iput-object p1, p0, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->this$0:Lcom/sleepycat/je/evictor/Evictor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2536
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->stats:Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;

    .line 2539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->flushed:Z

    .line 2540
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->evictedBytes:J

    return-void
.end method


# virtual methods
.method public doWork(Lcom/sleepycat/je/tree/ChildReference;)Lcom/sleepycat/je/tree/IN;
    .locals 11
    .param p1, "root"    # Lcom/sleepycat/je/tree/ChildReference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2553
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/ChildReference;->getTarget()Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/IN;

    .line 2554
    .local v0, "rootIN":Lcom/sleepycat/je/tree/IN;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2555
    return-object v1

    .line 2558
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->rootRef:Lcom/sleepycat/je/tree/ChildReference;

    .line 2564
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU()V

    .line 2566
    iget-object v2, p0, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->target:Lcom/sleepycat/je/tree/IN;

    if-ne v0, v2, :cond_1

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2567
    iget-object v3, p0, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->this$0:Lcom/sleepycat/je/evictor/Evictor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    iget-boolean v8, p0, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->backgroundIO:Z

    iget-object v9, p0, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->source:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    iget-object v10, p0, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->stats:Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;

    move-object v4, p0

    invoke-static/range {v3 .. v10}, Lcom/sleepycat/je/evictor/Evictor;->access$200(Lcom/sleepycat/je/evictor/Evictor;Lcom/sleepycat/je/evictor/Evictor$RootEvictor;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;IZLcom/sleepycat/je/evictor/Evictor$EvictionSource;Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/je/evictor/Evictor$RootEvictor;->evictedBytes:J

    goto :goto_0

    .line 2573
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 2576
    :goto_0
    return-object v1
.end method
