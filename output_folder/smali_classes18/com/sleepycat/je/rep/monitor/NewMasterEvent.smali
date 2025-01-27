.class public Lcom/sleepycat/je/rep/monitor/NewMasterEvent;
.super Lcom/sleepycat/je/rep/monitor/MemberChangeEvent;
.source "NewMasterEvent.java"


# instance fields
.field private final masterValue:Lcom/sleepycat/je/rep/elections/MasterValue;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/elections/MasterValue;)V
    .locals 2
    .param p1, "masterValue"    # Lcom/sleepycat/je/rep/elections/MasterValue;

    .line 29
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/elections/MasterValue;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/elections/MasterValue;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/rep/monitor/MemberChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/NewMasterEvent;->masterValue:Lcom/sleepycat/je/rep/elections/MasterValue;

    .line 31
    return-void
.end method


# virtual methods
.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 37
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/NewMasterEvent;->masterValue:Lcom/sleepycat/je/rep/elections/MasterValue;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/MasterValue;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/NewMasterEvent;->masterValue:Lcom/sleepycat/je/rep/elections/MasterValue;

    .line 38
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/elections/MasterValue;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 37
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/NewMasterEvent;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is new master"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
