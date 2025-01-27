.class Lcom/sleepycat/je/utilint/TaskCoordinator$1;
.super Ljava/util/TimerTask;
.source "TaskCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/utilint/TaskCoordinator;->setLeaseCheckingPeriod(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/utilint/TaskCoordinator;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/TaskCoordinator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/utilint/TaskCoordinator;

    .line 219
    iput-object p1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$1;->this$0:Lcom/sleepycat/je/utilint/TaskCoordinator;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 226
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$1;->this$0:Lcom/sleepycat/je/utilint/TaskCoordinator;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/TaskCoordinator;->access$000(Lcom/sleepycat/je/utilint/TaskCoordinator;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;

    .line 227
    .local v1, "p":Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->isExpired()Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    goto :goto_0

    .line 232
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    goto :goto_1

    .line 233
    :catch_0
    move-exception v2

    .line 235
    .local v2, "ise":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$1;->this$0:Lcom/sleepycat/je/utilint/TaskCoordinator;

    iget-object v3, v3, Lcom/sleepycat/je/utilint/TaskCoordinator;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected (possibly leaked) permit with expired lease: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 237
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->getTask()Lcom/sleepycat/je/utilint/TaskCoordinator$Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 238
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 235
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 240
    .end local v1    # "p":Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;
    .end local v2    # "ise":Ljava/lang/IllegalStateException;
    :goto_1
    goto :goto_0

    .line 241
    :cond_1
    return-void
.end method
