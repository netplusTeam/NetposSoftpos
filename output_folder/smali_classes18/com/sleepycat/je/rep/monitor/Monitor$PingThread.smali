.class Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;
.super Ljava/lang/Thread;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/monitor/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingThread"
.end annotation


# instance fields
.field private group:Lcom/sleepycat/je/rep/ReplicationGroup;

.field private final missedLeaveEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final retries:I

.field private final retryInterval:J

.field private volatile running:Z

.field private final socketConnectTimeout:I

.field final synthetic this$0:Lcom/sleepycat/je/rep/monitor/Monitor;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/monitor/Monitor;Lcom/sleepycat/je/rep/ReplicationGroup;)V
    .locals 3
    .param p2, "group"    # Lcom/sleepycat/je/rep/ReplicationGroup;

    .line 712
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->running:Z

    .line 708
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->missedLeaveEvents:Ljava/util/Map;

    .line 713
    iput-object p2, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->group:Lcom/sleepycat/je/rep/ReplicationGroup;

    .line 714
    invoke-static {p1}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$400(Lcom/sleepycat/je/rep/monitor/Monitor;)Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getNumRetries()I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->retries:I

    .line 715
    invoke-static {p1}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$400(Lcom/sleepycat/je/rep/monitor/Monitor;)Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getRetryInterval()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->retryInterval:J

    .line 716
    nop

    .line 717
    invoke-static {p1}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$400(Lcom/sleepycat/je/rep/monitor/Monitor;)Lcom/sleepycat/je/rep/monitor/MonitorConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/MonitorConfig;->getSocketConnectTimeout()I

    move-result p1

    iput p1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->socketConnectTimeout:I

    .line 718
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->setDaemon(Z)V

    .line 719
    return-void
.end method

.method private getValidGroup()Lcom/sleepycat/je/rep/ReplicationGroup;
    .locals 2

    .line 878
    const/4 v0, 0x0

    .line 880
    .local v0, "repGroup":Lcom/sleepycat/je/rep/ReplicationGroup;
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/monitor/Monitor;->getGroup()Lcom/sleepycat/je/rep/ReplicationGroup;

    move-result-object v1

    move-object v0, v1

    .line 881
    iput-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->group:Lcom/sleepycat/je/rep/ReplicationGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    goto :goto_0

    .line 882
    :catch_0
    move-exception v1

    .line 883
    .local v1, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->group:Lcom/sleepycat/je/rep/ReplicationGroup;

    .line 886
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private notifyMissedLeaveEvents(Ljava/lang/String;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    .line 891
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-static {v0}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$700(Lcom/sleepycat/je/rep/monitor/Monitor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;

    .line 892
    .local v0, "event":Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;
    if-nez v0, :cond_0

    .line 893
    return-void

    .line 896
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->missedLeaveEvents:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->missedLeaveEvents:Ljava/util/Map;

    .line 897
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    :goto_0
    move v1, v2

    .line 898
    .local v1, "counter":I
    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->missedLeaveEvents:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->missedLeaveEvents:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->retries:I

    if-ne v2, v3, :cond_2

    .line 901
    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    new-instance v11, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;

    .line 902
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;->getMasterName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;->ABNORMAL_TERMINATION:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    .line 904
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;->getJoinTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object v3, v11

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;JJ)V

    .line 901
    invoke-virtual {v2, v11}, Lcom/sleepycat/je/rep/monitor/Monitor;->notifyLeave(Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;)V

    .line 908
    :cond_2
    return-void
.end method

.method private pingNode(Lcom/sleepycat/je/rep/ReplicationNode;Lcom/sleepycat/je/rep/ReplicationGroup;Z)V
    .locals 8
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/ReplicationNode;
    .param p2, "repGroup"    # Lcom/sleepycat/je/rep/ReplicationGroup;
    .param p3, "removed"    # Z

    .line 826
    invoke-interface {p1}, Lcom/sleepycat/je/rep/ReplicationNode;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->isMonitor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    return-void

    .line 830
    :cond_0
    invoke-interface {p1}, Lcom/sleepycat/je/rep/ReplicationNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/sleepycat/je/rep/util/DbPing;

    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    .line 833
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/monitor/Monitor;->getGroupName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->socketConnectTimeout:I

    iget-object v4, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    .line 835
    invoke-static {v4}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$800(Lcom/sleepycat/je/rep/monitor/Monitor;)Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/sleepycat/je/rep/util/DbPing;-><init>(Lcom/sleepycat/je/rep/ReplicationNode;Ljava/lang/String;ILcom/sleepycat/je/rep/net/DataChannelFactory;)V

    .line 836
    .local v1, "ping":Lcom/sleepycat/je/rep/util/DbPing;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/util/DbPing;->getNodeState()Lcom/sleepycat/je/rep/NodeState;

    move-result-object v2

    .line 839
    .local v2, "state":Lcom/sleepycat/je/rep/NodeState;
    iget-object v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-static {v3}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$600(Lcom/sleepycat/je/rep/monitor/Monitor;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 840
    invoke-interface {p1}, Lcom/sleepycat/je/rep/ReplicationNode;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/NodeType;->isSecondary()Z

    move-result v3

    if-nez v3, :cond_1

    .line 841
    invoke-interface {p1}, Lcom/sleepycat/je/rep/ReplicationNode;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/NodeType;->isExternal()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez p3, :cond_1

    .line 843
    iget-object v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    new-instance v4, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;

    sget-object v5, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;->ADD:Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    invoke-direct {v4, p2, v0, v5}, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;-><init>(Lcom/sleepycat/je/rep/ReplicationGroup;Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;)V

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/monitor/Monitor;->notifyGroupChange(Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;)V

    .line 850
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-static {v3}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$700(Lcom/sleepycat/je/rep/monitor/Monitor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 851
    iget-object v3, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    new-instance v4, Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;

    .line 852
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/NodeState;->getMasterName()Ljava/lang/String;

    move-result-object v5

    .line 853
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/NodeState;->getJoinTime()J

    move-result-wide v6

    invoke-direct {v4, v0, v5, v6, v7}, Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 851
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/monitor/Monitor;->notifyJoin(Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 861
    .end local v1    # "ping":Lcom/sleepycat/je/rep/util/DbPing;
    .end local v2    # "state":Lcom/sleepycat/je/rep/NodeState;
    :catch_0
    move-exception v1

    .line 869
    .local v1, "e":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->notifyMissedLeaveEvents(Ljava/lang/String;)V

    goto :goto_1

    .line 858
    .end local v1    # "e":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    :catch_1
    move-exception v1

    .line 860
    .local v1, "e":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->notifyMissedLeaveEvents(Ljava/lang/String;)V

    .end local v1    # "e":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
    goto :goto_0

    .line 855
    :catch_2
    move-exception v1

    .line 857
    .local v1, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->notifyMissedLeaveEvents(Ljava/lang/String;)V

    .line 870
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    nop

    .line 871
    :goto_1
    return-void
.end method

.method private queryNodes()V
    .locals 8

    .line 762
    invoke-direct {p0}, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->getValidGroup()Lcom/sleepycat/je/rep/ReplicationGroup;

    move-result-object v0

    .line 764
    .local v0, "repGroup":Lcom/sleepycat/je/rep/ReplicationGroup;
    nop

    .line 765
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationGroup;->getRepGroupImpl()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getRemovedNodes()Ljava/util/Set;

    move-result-object v1

    .line 768
    .local v1, "removedNodes":Ljava/util/Set;, "Ljava/util/Set<+Lcom/sleepycat/je/rep/ReplicationNode;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/ReplicationNode;

    .line 769
    .local v3, "repNode":Lcom/sleepycat/je/rep/ReplicationNode;
    iget-object v4, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    new-instance v5, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;

    .line 771
    invoke-interface {v3}, Lcom/sleepycat/je/rep/ReplicationNode;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;->REMOVE:Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    invoke-direct {v5, v0, v6, v7}, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;-><init>(Lcom/sleepycat/je/rep/ReplicationGroup;Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;)V

    .line 770
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/monitor/Monitor;->notifyGroupChange(Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;)V

    .line 773
    .end local v3    # "repNode":Lcom/sleepycat/je/rep/ReplicationNode;
    goto :goto_0

    .line 780
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-static {v2}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$600(Lcom/sleepycat/je/rep/monitor/Monitor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 781
    .local v3, "nodeName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationGroup;->getRepGroupImpl()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getNode(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v4

    if-nez v4, :cond_1

    .line 782
    iget-object v4, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    new-instance v5, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;

    sget-object v6, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;->REMOVE:Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    invoke-direct {v5, v0, v3, v6}, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;-><init>(Lcom/sleepycat/je/rep/ReplicationGroup;Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;)V

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/monitor/Monitor;->notifyGroupChange(Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;)V

    .line 786
    .end local v3    # "nodeName":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 792
    :cond_2
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationGroup;->getNodes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/ReplicationNode;

    .line 793
    .local v3, "repNode":Lcom/sleepycat/je/rep/ReplicationNode;
    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4}, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->pingNode(Lcom/sleepycat/je/rep/ReplicationNode;Lcom/sleepycat/je/rep/ReplicationGroup;Z)V

    .line 794
    .end local v3    # "repNode":Lcom/sleepycat/je/rep/ReplicationNode;
    goto :goto_2

    .line 797
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/ReplicationNode;

    .line 798
    .restart local v3    # "repNode":Lcom/sleepycat/je/rep/ReplicationNode;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v0, v4}, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->pingNode(Lcom/sleepycat/je/rep/ReplicationNode;Lcom/sleepycat/je/rep/ReplicationGroup;Z)V

    .line 799
    .end local v3    # "repNode":Lcom/sleepycat/je/rep/ReplicationNode;
    goto :goto_3

    .line 811
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-static {v2}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$700(Lcom/sleepycat/je/rep/monitor/Monitor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 812
    .local v3, "nodeName":Ljava/lang/String;
    nop

    .line 813
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationGroup;->getRepGroupImpl()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getNode(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v4

    .line 814
    .local v4, "repNode":Lcom/sleepycat/je/rep/ReplicationNode;
    if-nez v4, :cond_5

    .line 815
    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->notifyMissedLeaveEvents(Ljava/lang/String;)V

    .line 817
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "repNode":Lcom/sleepycat/je/rep/ReplicationNode;
    :cond_5
    goto :goto_4

    .line 818
    :cond_6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 724
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->running:Z

    if-eqz v0, :cond_1

    .line 725
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->retries:I

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->running:Z

    if-eqz v1, :cond_0

    .line 727
    invoke-direct {p0}, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->queryNodes()V

    .line 734
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->group:Lcom/sleepycat/je/rep/ReplicationGroup;

    .line 735
    invoke-static {v1}, Lcom/sleepycat/je/rep/RepInternal;->getRepGroupImpl(Lcom/sleepycat/je/rep/ReplicationGroup;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v1

    .line 741
    .local v1, "groupImpl":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-static {v2}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$500(Lcom/sleepycat/je/rep/monitor/Monitor;)Lcom/sleepycat/je/rep/elections/Learner;

    move-result-object v2

    .line 742
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllLearnerSockets()Ljava/util/Set;

    move-result-object v3

    .line 741
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/elections/Learner;->queryForMaster(Ljava/util/Set;)V

    .line 745
    iget-wide v2, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->retryInterval:J

    invoke-static {v2, v3}, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->sleep(J)V

    .line 725
    .end local v1    # "groupImpl":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 747
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->missedLeaveEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 753
    :cond_1
    goto :goto_2

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-static {v1}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$100(Lcom/sleepycat/je/rep/monitor/Monitor;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->this$0:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-static {v2}, Lcom/sleepycat/je/rep/monitor/Monitor;->access$200(Lcom/sleepycat/je/rep/monitor/Monitor;)Ljava/util/logging/Formatter;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The daemon PingThread is interrupted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 752
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 750
    invoke-static {v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 754
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_2
    return-void
.end method

.method public stopThread()V
    .locals 1

    .line 911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/monitor/Monitor$PingThread;->running:Z

    .line 912
    return-void
.end method
