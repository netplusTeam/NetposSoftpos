.class Lcom/sleepycat/je/rep/impl/node/Feeder$IOThreadsHandler;
.super Ljava/lang/Object;
.source "Feeder.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/Feeder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IOThreadsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/rep/impl/node/Feeder;)V
    .locals 0

    .line 1578
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$IOThreadsHandler;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/rep/impl/node/Feeder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/impl/node/Feeder;
    .param p2, "x1"    # Lcom/sleepycat/je/rep/impl/node/Feeder$1;

    .line 1578
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/node/Feeder$IOThreadsHandler;-><init>(Lcom/sleepycat/je/rep/impl/node/Feeder;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 1582
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$IOThreadsHandler;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$IOThreadsHandler;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uncaught exception in feeder thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1584
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1585
    invoke-static {p2}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1582
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1588
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$IOThreadsHandler;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$IOThreadsHandler;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1590
    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNCAUGHT_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uncaught exception in feeder thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, p2}, Lcom/sleepycat/je/EnvironmentFailureException;->promote(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    .line 1589
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->setRepNodeShutdownException(Ljava/lang/RuntimeException;)V

    .line 1599
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$IOThreadsHandler;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->interrupt()V

    .line 1600
    return-void
.end method
