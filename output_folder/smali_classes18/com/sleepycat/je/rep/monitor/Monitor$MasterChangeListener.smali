.class Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Lcom/sleepycat/je/rep/elections/Learner$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/monitor/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterChangeListener"
.end annotation


# instance fields
.field private currentValue:Lcom/sleepycat/je/rep/elections/MasterValue;

.field final synthetic this$0:Lcom/sleepycat/je/rep/monitor/Monitor;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/rep/monitor/Monitor;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;->currentValue:Lcom/sleepycat/je/rep/elections/MasterValue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/monitor/Monitor;Lcom/sleepycat/je/rep/monitor/Monitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/monitor/Monitor;
    .param p2, "x1"    # Lcom/sleepycat/je/rep/monitor/Monitor$1;

    .line 628
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;-><init>(Lcom/sleepycat/je/rep/monitor/Monitor;)V

    return-void
.end method


# virtual methods
.method public notify(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V
    .locals 6
    .param p1, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .param p2, "value"    # Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 638
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;->currentValue:Lcom/sleepycat/je/rep/elections/MasterValue;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    return-void

    .line 641
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/sleepycat/je/rep/elections/MasterValue;

    iput-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;->currentValue:Lcom/sleepycat/je/rep/elections/MasterValue;

    .line 643
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/MasterValue;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "currentMasterName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-static {v1}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$100(Lcom/sleepycat/je/rep/monitor/Monitor;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-static {v2}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$200(Lcom/sleepycat/je/rep/monitor/Monitor;)Ljava/util/logging/Formatter;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Monitor notified of new Master: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 647
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-static {v1}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$300(Lcom/sleepycat/je/rep/monitor/Monitor;)Lcom/sleepycat/je/rep/monitor/MonitorChangeListener;

    move-result-object v1

    if-nez v1, :cond_1

    .line 649
    return-void

    .line 651
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-static {v1}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$300(Lcom/sleepycat/je/rep/monitor/Monitor;)Lcom/sleepycat/je/rep/monitor/MonitorChangeListener;

    move-result-object v1

    new-instance v2, Lcom/sleepycat/je/rep/monitor/NewMasterEvent;

    iget-object v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;->currentValue:Lcom/sleepycat/je/rep/elections/MasterValue;

    invoke-direct {v2, v3}, Lcom/sleepycat/je/rep/monitor/NewMasterEvent;-><init>(Lcom/sleepycat/je/rep/elections/MasterValue;)V

    .line 652
    invoke-interface {v1, v2}, Lcom/sleepycat/je/rep/monitor/MonitorChangeListener;->notify(Lcom/sleepycat/je/rep/monitor/NewMasterEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .end local v0    # "currentMasterName":Ljava/lang/String;
    goto :goto_0

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    .line 655
    invoke-static {v1}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$100(Lcom/sleepycat/je/rep/monitor/Monitor;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Monitor$MasterChangeListener;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-static {v2}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$200(Lcom/sleepycat/je/rep/monitor/Monitor;)Ljava/util/logging/Formatter;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Monitor change event processing exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 657
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 655
    invoke-static {v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 659
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
