.class Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask$1;
.super Ljava/lang/Object;
.source "Elections.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;

.field final synthetic val$learners:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;

    .line 993
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask$1;->this$1:Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;

    iput-object p2, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask$1;->val$learners:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 996
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask$1;->this$1:Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;

    iget-object v0, v0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v0}, Lcom/sleepycat/je/rep/elections/Elections;->access$1300(Lcom/sleepycat/je/rep/elections/Elections;)Lcom/sleepycat/je/rep/elections/Learner;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask$1;->val$learners:Ljava/util/Set;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask$1;->this$1:Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;

    iget-object v2, v2, Lcom/sleepycat/je/rep/elections/Elections$RebroadcastTask;->this$0:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-static {v2}, Lcom/sleepycat/je/rep/elections/Elections;->access$800(Lcom/sleepycat/je/rep/elections/Elections;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/elections/Learner;->reinformLearners(Ljava/util/Set;Ljava/util/concurrent/ExecutorService;)V

    .line 997
    return-void
.end method
