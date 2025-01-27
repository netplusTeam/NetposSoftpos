.class public Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
.source "NodeStateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/NodeStateProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeStateRequest"
.end annotation


# instance fields
.field private final nodeName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/NodeStateProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/NodeStateProtocol;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/NodeStateProtocol;
    .param p2, "nodeName"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;->this$0:Lcom/sleepycat/je/rep/impl/NodeStateProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

    .line 59
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;->nodeName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/NodeStateProtocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/NodeStateProtocol;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;->this$0:Lcom/sleepycat/je/rep/impl/NodeStateProtocol;

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;->nodeName:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method protected getMessagePrefix()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;->messagePrefixNocheck:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;->nodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;->this$0:Lcom/sleepycat/je/rep/impl/NodeStateProtocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol;->NODE_STATE_REQ:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/NodeStateProtocol$NodeStateRequest;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
