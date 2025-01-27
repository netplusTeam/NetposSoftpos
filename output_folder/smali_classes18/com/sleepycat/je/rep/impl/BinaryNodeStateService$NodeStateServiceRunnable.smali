.class Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;
.super Ljava/lang/Object;
.source "BinaryNodeStateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NodeStateServiceRunnable"
.end annotation


# instance fields
.field private channel:Lcom/sleepycat/je/rep/net/DataChannel;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;Lcom/sleepycat/je/rep/net/DataChannel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;
    .param p2, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 72
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    .line 74
    return-void
.end method

.method private createResponse(Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;)Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;
    .locals 25
    .param p1, "protocol"    # Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;

    .line 80
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$000(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMonitorEventManager()Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->getJoinTime()J

    move-result-wide v20

    .line 81
    .local v20, "joinTime":J
    iget-object v1, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$000(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCurrentTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    move-wide v11, v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    .line 82
    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$000(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCurrentTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    move-wide v11, v1

    :goto_0
    nop

    .line 83
    .local v11, "txnEndVLSN":J
    iget-object v1, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$000(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->replica()Lcom/sleepycat/je/rep/impl/node/Replica;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica;->getMasterTxnEndVLSN()J

    move-result-wide v22

    .local v22, "masterTxnEndVLSN":J
    move-wide/from16 v13, v22

    .line 84
    iget-object v1, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$000(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager()Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeReplicaCount()I

    move-result v1

    .local v1, "activeFeeders":I
    move v15, v1

    .line 86
    new-instance v24, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;

    move-object/from16 v2, v24

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    .line 87
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$000(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNodeName()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$000(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    .line 88
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$000(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sleepycat/je/JEVersion;->CURRENT_VERSION:Lcom/sleepycat/je/JEVersion;

    iget-object v3, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    .line 89
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$000(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v10

    const/16 v16, 0x11

    iget-object v3, v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    .line 91
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$000(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getAppState()[B

    move-result-object v17

    invoke-static {}, Lcom/sleepycat/je/utilint/JVMSystemUtils;->getSystemLoad()D

    move-result-wide v18

    move-object/from16 v3, p1

    move-wide/from16 v8, v20

    invoke-direct/range {v2 .. v19}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;-><init>(Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/JEVersion;JLcom/sleepycat/je/rep/ReplicatedEnvironment$State;JJII[BD)V

    .line 86
    return-object v24
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "protocol":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-static {v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;->ensureChannelBlocking(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 100
    :try_start_0
    new-instance v1, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NOCHECK:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    .line 101
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$000(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v1

    .line 103
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    const-class v2, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;

    .line 110
    .local v1, "msg":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;->getGroupName()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "groupName":Ljava/lang/String;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$000(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    .line 112
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$000(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    nop

    .line 119
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->createResponse(Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;)Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;

    move-result-object v3

    .line 120
    .local v3, "response":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 121
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$100(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Ljava/util/logging/Logger;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$000(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    const-string v6, "Deal with a node state request successfully."

    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .end local v1    # "msg":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;
    .end local v2    # "groupName":Ljava/lang/String;
    .end local v3    # "response":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 113
    .restart local v1    # "msg":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;
    .restart local v2    # "groupName":Ljava/lang/String;
    :cond_0
    :try_start_3
    new-instance v3, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;

    const-string v4, "Sending the request to a wrong group or a wrong node."

    invoke-direct {v3, v4}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v0    # "protocol":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
    throw v3
    :try_end_3
    .catch Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    .end local v1    # "msg":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;
    .end local v2    # "groupName":Ljava/lang/String;
    .restart local v0    # "protocol":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$100(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$000(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 133
    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 134
    new-instance v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolError;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolError;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    :goto_0
    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 123
    :catch_1
    move-exception v1

    .line 124
    .local v1, "e":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    :try_start_6
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$100(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->access$000(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get a ProtocolException with message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 126
    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while dealing with a node state request."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 128
    new-instance v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolError;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolError;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 137
    .end local v1    # "e":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    :try_start_7
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    goto :goto_0

    .line 147
    :cond_1
    :goto_1
    goto :goto_3

    .line 137
    :goto_2
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V

    :cond_2
    nop

    .end local v0    # "protocol":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 141
    .restart local v0    # "protocol":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
    :catch_2
    move-exception v1

    .line 148
    :goto_3
    return-void
.end method
