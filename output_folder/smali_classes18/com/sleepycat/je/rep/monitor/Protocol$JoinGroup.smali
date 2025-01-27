.class public Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;
.super Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/monitor/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JoinGroup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/monitor/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/monitor/Protocol;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "masterName"    # Ljava/lang/String;
    .param p4, "joinTime"    # J

    .line 203
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;->this$0:Lcom/sleepycat/je/rep/monitor/Protocol;

    .line 204
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;-><init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;Ljava/lang/String;J)V

    .line 205
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/monitor/Protocol;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;->this$0:Lcom/sleepycat/je/rep/monitor/Protocol;

    .line 210
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;-><init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 211
    return-void
.end method


# virtual methods
.method public bridge synthetic getJoinTime()J
    .locals 2

    .line 202
    invoke-super {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->getJoinTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMasterName()Ljava/lang/String;
    .locals 1

    .line 202
    invoke-super {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->getMasterName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNodeName()Ljava/lang/String;
    .locals 1

    .line 202
    invoke-super {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;->this$0:Lcom/sleepycat/je/rep/monitor/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/monitor/Protocol;->JOIN_GROUP_REQ:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public bridge synthetic wireFormat()Ljava/lang/String;
    .locals 1

    .line 202
    invoke-super {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->wireFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
