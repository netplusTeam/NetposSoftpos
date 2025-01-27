.class Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;
.super Ljava/lang/Object;
.source "ArbiterImpl.java"

# interfaces
.implements Lcom/sleepycat/je/rep/elections/Learner$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterChangeListener"
.end annotation


# instance fields
.field private currentValue:Lcom/sleepycat/je/rep/elections/MasterValue;

.field final synthetic this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;->currentValue:Lcom/sleepycat/je/rep/elections/MasterValue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;
    .param p2, "x1"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$1;

    .line 777
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;-><init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)V

    return-void
.end method


# virtual methods
.method public notify(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V
    .locals 6
    .param p1, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .param p2, "value"    # Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 787
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;->currentValue:Lcom/sleepycat/je/rep/elections/MasterValue;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    return-void

    .line 790
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/sleepycat/je/rep/elections/MasterValue;

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;->currentValue:Lcom/sleepycat/je/rep/elections/MasterValue;

    .line 792
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/MasterValue;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "currentMasterName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-static {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->access$300(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-static {v2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->access$400(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Ljava/util/logging/Formatter;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Arbiter notified of new Master: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 796
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-static {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->access$500(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;->currentValue:Lcom/sleepycat/je/rep/elections/MasterValue;

    .line 797
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/elections/MasterValue;->getHostName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;->currentValue:Lcom/sleepycat/je/rep/elections/MasterValue;

    .line 798
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/elections/MasterValue;->getPort()I

    move-result v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;->currentValue:Lcom/sleepycat/je/rep/elections/MasterValue;

    .line 799
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/elections/MasterValue;->getNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    .line 797
    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/je/rep/stream/MasterStatus;->setGroupMaster(Ljava/lang/String;ILcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    .end local v0    # "currentMasterName":Ljava/lang/String;
    goto :goto_0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    .line 802
    invoke-static {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->access$300(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$MasterChangeListener;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-static {v2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->access$400(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Ljava/util/logging/Formatter;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Arbiter change event processing exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 804
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 802
    invoke-static {v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 806
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
