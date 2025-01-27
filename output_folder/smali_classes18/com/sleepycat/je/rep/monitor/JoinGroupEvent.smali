.class public Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;
.super Lcom/sleepycat/je/rep/monitor/MemberChangeEvent;
.source "JoinGroupEvent.java"


# instance fields
.field private final joinTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "masterName"    # Ljava/lang/String;
    .param p3, "joinTime"    # J

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/monitor/MemberChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-wide p3, p0, Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;->joinTime:J

    .line 37
    return-void
.end method


# virtual methods
.method public getJoinTime()Ljava/util/Date;
    .locals 3

    .line 43
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;->joinTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Node "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " joined at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;->getJoinTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
