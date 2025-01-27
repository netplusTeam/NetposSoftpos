.class public Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;
.super Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/monitor/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupChange"
.end annotation


# instance fields
.field private final group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

.field private final opType:Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

.field final synthetic this$0:Lcom/sleepycat/je/rep/monitor/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/monitor/Protocol;Lcom/sleepycat/je/rep/impl/RepGroupImpl;Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/monitor/Protocol;
    .param p2, "group"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .param p3, "nodeName"    # Ljava/lang/String;
    .param p4, "opType"    # Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    .line 126
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;->this$0:Lcom/sleepycat/je/rep/monitor/Protocol;

    .line 127
    invoke-direct {p0, p1, p3}, Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;-><init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;)V

    .line 128
    iput-object p2, p0, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 129
    iput-object p4, p0, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;->opType:Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/monitor/Protocol;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;->this$0:Lcom/sleepycat/je/rep/monitor/Protocol;

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;-><init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;->valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;->opType:Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    .line 137
    nop

    .line 138
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;->getCurrentTokenPosition()I

    move-result v0

    invoke-static {p3, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->deserializeHex([Ljava/lang/String;I)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 139
    return-void
.end method


# virtual methods
.method public getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    return-object v0
.end method

.method public bridge synthetic getNodeName()Ljava/lang/String;
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;->this$0:Lcom/sleepycat/je/rep/monitor/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/monitor/Protocol;->GROUP_CHANGE_REQ:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public getOpType()Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;->opType:Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;->sendVersion:Ljava/lang/String;

    .line 157
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 158
    const-string v2, "1.0"

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 161
    .local v0, "repGroupVersion":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;->wireFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;->opType:Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    .line 162
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 163
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->serializeHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    return-object v1
.end method
