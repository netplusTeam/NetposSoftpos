.class Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;
.super Ljava/lang/Object;
.source "ArbBinaryStateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NodeStateServiceRunnable"
.end annotation


# instance fields
.field private final channel:Lcom/sleepycat/je/rep/net/DataChannel;

.field final synthetic this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;Lcom/sleepycat/je/rep/net/DataChannel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;
    .param p2, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 70
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    .line 72
    return-void
.end method

.method private createResponse(Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;)Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;
    .locals 22
    .param p1, "protocol"    # Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;

    .line 78
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    invoke-static {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;->access$000(Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getJoinGroupTime()J

    move-result-wide v20

    .line 79
    .local v20, "joinTime":J
    iget-object v1, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    invoke-static {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;->access$000(Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getArbiterVLSNTracker()Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->get()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    move-wide v11, v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    .line 80
    invoke-static {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;->access$000(Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getArbiterVLSNTracker()Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->get()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    move-wide v11, v1

    :goto_0
    nop

    .local v11, "vlsnValue":J
    move-wide v13, v11

    .line 82
    new-instance v1, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;

    move-object v2, v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    .line 83
    invoke-static {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;->access$000(Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    .line 84
    invoke-static {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;->access$000(Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getGroupName()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    .line 85
    invoke-static {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;->access$000(Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getNodeMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sleepycat/je/JEVersion;->CURRENT_VERSION:Lcom/sleepycat/je/JEVersion;

    iget-object v3, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    .line 87
    invoke-static {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;->access$000(Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getNodeState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v10

    const/4 v15, 0x0

    const/16 v16, 0x11

    const/16 v17, 0x0

    .line 90
    invoke-static {}, Lcom/sleepycat/je/utilint/JVMSystemUtils;->getSystemLoad()D

    move-result-wide v18

    move-object/from16 v3, p1

    move-wide/from16 v8, v20

    invoke-direct/range {v2 .. v19}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;-><init>(Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/JEVersion;JLcom/sleepycat/je/rep/ReplicatedEnvironment$State;JJII[BD)V

    .line 82
    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "protocol":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-static {v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;->ensureChannelBlocking(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 99
    :try_start_0
    new-instance v1, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NOCHECK:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    .line 100
    invoke-static {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;->access$000(Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v1

    .line 102
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    const-class v2, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;

    .line 109
    .local v1, "msg":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;->getGroupName()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "groupName":Ljava/lang/String;
    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    invoke-static {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;->access$000(Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    .line 111
    invoke-static {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;->access$000(Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    nop

    .line 119
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->createResponse(Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;)Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;

    move-result-object v3

    .line 120
    .local v3, "response":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 121
    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    invoke-static {v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;->access$100(Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;)Ljava/util/logging/Logger;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    invoke-static {v5}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;->access$000(Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

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
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;
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
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    invoke-static {v2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;->access$100(Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;)Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    invoke-static {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;->access$000(Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

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

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

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
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    invoke-static {v2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;->access$100(Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;)Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;

    invoke-static {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;->access$000(Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

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

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 137
    .end local v1    # "e":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    :try_start_7
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    goto :goto_0

    .line 147
    :cond_1
    :goto_1
    goto :goto_3

    .line 137
    :goto_2
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbBinaryStateService$NodeStateServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

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
