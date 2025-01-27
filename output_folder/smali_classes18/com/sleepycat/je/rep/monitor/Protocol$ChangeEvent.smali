.class abstract Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/monitor/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ChangeEvent"
.end annotation


# instance fields
.field private final nodeName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sleepycat/je/rep/monitor/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;)V
    .locals 0
    .param p2, "nodeName"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;->this$0:Lcom/sleepycat/je/rep/monitor/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

    .line 94
    iput-object p2, p0, Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;->nodeName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/monitor/Protocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;->this$0:Lcom/sleepycat/je/rep/monitor/Protocol;

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;->nextPayloadToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;->nodeName:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method protected getMessagePrefix()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;->messagePrefixNocheck:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;->nodeName:Ljava/lang/String;

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/Protocol$ChangeEvent;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
