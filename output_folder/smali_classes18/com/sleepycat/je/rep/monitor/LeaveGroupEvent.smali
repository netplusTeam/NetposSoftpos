.class public Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;
.super Lcom/sleepycat/je/rep/monitor/MemberChangeEvent;
.source "LeaveGroupEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;
    }
.end annotation


# instance fields
.field private final joinTime:J

.field private final leaveReason:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

.field private final leaveTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;JJ)V
    .locals 0
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "masterName"    # Ljava/lang/String;
    .param p3, "leaveReason"    # Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;
    .param p4, "joinTime"    # J
    .param p6, "leaveTime"    # J

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/monitor/MemberChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-wide p4, p0, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;->joinTime:J

    .line 73
    iput-wide p6, p0, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;->leaveTime:J

    .line 74
    iput-object p3, p0, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;->leaveReason:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    .line 75
    return-void
.end method


# virtual methods
.method public getJoinTime()Ljava/util/Date;
    .locals 3

    .line 81
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;->joinTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLeaveReason()Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;->leaveReason:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    return-object v0
.end method

.method public getLeaveTime()Ljava/util/Date;
    .locals 3

    .line 88
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;->leaveTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Node "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " left at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;->getLeaveTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;->getLeaveReason()Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    return-object v0
.end method
