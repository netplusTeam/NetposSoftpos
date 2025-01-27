.class public Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
.source "NodeStateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/NodeStateProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeStateResponse"
.end annotation


# instance fields
.field private final joinTime:J

.field private final masterName:Ljava/lang/String;

.field private final nodeName:Ljava/lang/String;

.field private final nodeState:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/NodeStateProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/NodeStateProtocol;Ljava/lang/String;Ljava/lang/String;JLcom/sleepycat/je/rep/ReplicatedEnvironment$State;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/NodeStateProtocol;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "masterName"    # Ljava/lang/String;
    .param p4, "joinTime"    # J
    .param p6, "nodeState"    # Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    .line 99
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->this$0:Lcom/sleepycat/je/rep/impl/NodeStateProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

    .line 100
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->nodeName:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->masterName:Ljava/lang/String;

    .line 102
    iput-wide p4, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->joinTime:J

    .line 103
    iput-object p6, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->nodeState:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/NodeStateProtocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/NodeStateProtocol;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->this$0:Lcom/sleepycat/je/rep/impl/NodeStateProtocol;

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->nodeName:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->masterName:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->joinTime:J

    .line 113
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->nodeState:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    .line 114
    return-void
.end method


# virtual methods
.method public getJoinTime()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->joinTime:J

    return-wide v0
.end method

.method public getMasterName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->masterName:Ljava/lang/String;

    return-object v0
.end method

.method protected getMessagePrefix()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->messagePrefixNocheck:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->nodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->nodeState:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->this$0:Lcom/sleepycat/je/rep/impl/NodeStateProtocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol;->NODE_STATE_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 4

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->masterName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->joinTime:J

    .line 147
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateResponse;->nodeState:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    .line 148
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    return-object v0
.end method
