.class abstract Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;
.super Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/monitor/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MemberEvent"
.end annotation


# instance fields
.field private final joinTime:J

.field private final masterName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sleepycat/je/rep/monitor/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "masterName"    # Ljava/lang/String;
    .param p4, "joinTime"    # J

    .line 171
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->this$0:Lcom/sleepycat/je/rep/monitor/Protocol;

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;-><init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;)V

    .line 173
    iput-object p3, p0, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->masterName:Ljava/lang/String;

    .line 174
    iput-wide p4, p0, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->joinTime:J

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->this$0:Lcom/sleepycat/je/rep/monitor/Protocol;

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;-><init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->nextPayloadToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->masterName:Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->nextPayloadToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->joinTime:J

    .line 183
    return-void
.end method


# virtual methods
.method public getJoinTime()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->joinTime:J

    return-wide v0
.end method

.method public getMasterName()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->masterName:Ljava/lang/String;

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;->wireFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->masterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/rep/monitor/Protocol$MemberEvent;->joinTime:J

    .line 197
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    return-object v0
.end method
