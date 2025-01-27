.class public Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;
.super Lcom/sleepycat/je/rep/monitor/MonitorChangeEvent;
.source "GroupChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;
    }
.end annotation


# instance fields
.field private final opType:Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

.field private final repGroup:Lcom/sleepycat/je/rep/ReplicationGroup;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/ReplicationGroup;Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;)V
    .locals 0
    .param p1, "repGroup"    # Lcom/sleepycat/je/rep/ReplicationGroup;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "opType"    # Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    .line 63
    invoke-direct {p0, p2}, Lcom/sleepycat/je/rep/monitor/MonitorChangeEvent;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;->repGroup:Lcom/sleepycat/je/rep/ReplicationGroup;

    .line 65
    iput-object p3, p0, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;->opType:Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    .line 66
    return-void
.end method


# virtual methods
.method public getChangeType()Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;->opType:Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    return-object v0
.end method

.method public getRepGroup()Lcom/sleepycat/je/rep/ReplicationGroup;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;->repGroup:Lcom/sleepycat/je/rep/ReplicationGroup;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Node "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " change type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;->getChangeType()Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
