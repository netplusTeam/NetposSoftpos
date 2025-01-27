.class Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "ArbiterAcker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestThread"
.end annotation


# static fields
.field private static final REQUEST_QUEUE_POLL_INTERVAL_NS:J = 0x3b9aca00L


# instance fields
.field private volatile exception:Ljava/lang/Exception;

.field volatile exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

.field final synthetic this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;


# direct methods
.method protected constructor <init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    .line 763
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    .line 764
    invoke-static {p1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$200(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    const-string v1, "RequestThread"

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    .line 765
    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;)Ljava/lang/Exception;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;

    .line 751
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exception:Ljava/lang/Exception;

    return-object v0
.end method


# virtual methods
.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    invoke-static {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$300(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method protected initiateSoftShutdown()I
    .locals 1

    .line 770
    sget-object v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    .line 771
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 5

    .line 777
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    invoke-static {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$300(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    invoke-static {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$200(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request thread started. Message queue size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    .line 779
    invoke-static {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$400(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 777
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 782
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    .line 783
    invoke-static {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$400(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-wide/32 v1, 0x3b9aca00

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    .line 786
    .local v0, "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    sget-object v2, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exitRequest:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    sget-object v2, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->SOFT:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    .line 789
    invoke-static {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$500(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->isShutdownOrInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 792
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    invoke-static {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$500(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/MasterStatus;->assertSync()V

    .line 793
    if-nez v0, :cond_2

    .line 795
    goto :goto_0

    .line 797
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    invoke-static {v1, v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$600(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v1

    .line 798
    .local v1, "shutdownMessage":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    if-nez v1, :cond_3

    .line 802
    .end local v0    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .end local v1    # "shutdownMessage":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    goto :goto_0

    .line 799
    .restart local v0    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .restart local v1    # "shutdownMessage":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    move-object v3, v1

    check-cast v3, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;

    invoke-static {v2, v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$700(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;)Lcom/sleepycat/je/rep/GroupShutdownException;

    move-result-object v2

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    .end local v1    # "shutdownMessage":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :cond_4
    :goto_1
    return-void

    .line 803
    .end local v0    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->exception:Ljava/lang/Exception;

    .line 810
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    invoke-static {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$400(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 816
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    invoke-static {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$300(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    invoke-static {v2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$200(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closing arbiterFeederChannel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    .line 818
    invoke-static {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$800(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 816
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 819
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    invoke-static {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$800(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/rep/utilint/RepUtils;->shutdownChannel(Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 821
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    invoke-static {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$300(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestThread;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    invoke-static {v2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$200(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ArbiterAcker thread exiting with exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 823
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 821
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 825
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
