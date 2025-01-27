.class public Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;
.super Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/monitor/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LeaveGroup"
.end annotation


# instance fields
.field private final leaveReason:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

.field private final leaveTime:J

.field final synthetic this$0:Lcom/sleepycat/je/rep/monitor/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;JJ)V
    .locals 6
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/monitor/Protocol;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "masterName"    # Ljava/lang/String;
    .param p4, "leaveReason"    # Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;
    .param p5, "joinTime"    # J
    .param p7, "leaveTime"    # J

    .line 228
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->this$0:Lcom/sleepycat/je/rep/monitor/Protocol;

    .line 229
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;-><init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;Ljava/lang/String;J)V

    .line 230
    iput-object p4, p0, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->leaveReason:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    .line 231
    iput-wide p7, p0, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->leaveTime:J

    .line 232
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/monitor/Protocol;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->this$0:Lcom/sleepycat/je/rep/monitor/Protocol;

    .line 237
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;-><init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;->valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->leaveReason:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    .line 239
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->leaveTime:J

    .line 240
    return-void
.end method


# virtual methods
.method public bridge synthetic getJoinTime()J
    .locals 2

    .line 220
    invoke-super {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->getJoinTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLeaveReason()Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->leaveReason:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    return-object v0
.end method

.method public getLeaveTime()J
    .locals 2

    .line 247
    iget-wide v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->leaveTime:J

    return-wide v0
.end method

.method public bridge synthetic getMasterName()Ljava/lang/String;
    .locals 1

    .line 220
    invoke-super {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->getMasterName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNodeName()Ljava/lang/String;
    .locals 1

    .line 220
    invoke-super {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->this$0:Lcom/sleepycat/je/rep/monitor/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/monitor/Protocol;->LEAVE_GROUP_REQ:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 3

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->wireFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->leaveReason:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    .line 258
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->leaveTime:J

    .line 259
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    return-object v0
.end method
