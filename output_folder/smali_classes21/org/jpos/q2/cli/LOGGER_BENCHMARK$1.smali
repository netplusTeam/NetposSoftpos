.class Lorg/jpos/q2/cli/LOGGER_BENCHMARK$1;
.super Ljava/lang/Thread;
.source "LOGGER_BENCHMARK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/q2/cli/LOGGER_BENCHMARK;->exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/q2/cli/LOGGER_BENCHMARK;

.field final synthetic val$done:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$numMessages:I

.field final synthetic val$p:Lorg/jpos/util/Profiler;


# direct methods
.method constructor <init>(Lorg/jpos/q2/cli/LOGGER_BENCHMARK;ILjava/lang/String;Lorg/jpos/util/Profiler;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/q2/cli/LOGGER_BENCHMARK;

    .line 42
    iput-object p1, p0, Lorg/jpos/q2/cli/LOGGER_BENCHMARK$1;->this$0:Lorg/jpos/q2/cli/LOGGER_BENCHMARK;

    iput p2, p0, Lorg/jpos/q2/cli/LOGGER_BENCHMARK$1;->val$numMessages:I

    iput-object p3, p0, Lorg/jpos/q2/cli/LOGGER_BENCHMARK$1;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lorg/jpos/q2/cli/LOGGER_BENCHMARK$1;->val$p:Lorg/jpos/util/Profiler;

    iput-object p5, p0, Lorg/jpos/q2/cli/LOGGER_BENCHMARK$1;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jpos/q2/cli/LOGGER_BENCHMARK$1;->val$numMessages:I

    if-ge v0, v1, :cond_0

    .line 45
    new-instance v1, Lorg/jpos/util/LogEvent;

    invoke-direct {v1}, Lorg/jpos/util/LogEvent;-><init>()V

    .line 46
    .local v1, "ev":Lorg/jpos/util/LogEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jpos/q2/cli/LOGGER_BENCHMARK$1;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 47
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 44
    .end local v1    # "ev":Lorg/jpos/util/LogEvent;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/jpos/q2/cli/LOGGER_BENCHMARK$1;->val$p:Lorg/jpos/util/Profiler;

    iget-object v1, p0, Lorg/jpos/q2/cli/LOGGER_BENCHMARK$1;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jpos/util/Profiler;->checkPoint(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lorg/jpos/q2/cli/LOGGER_BENCHMARK$1;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 52
    return-void
.end method
