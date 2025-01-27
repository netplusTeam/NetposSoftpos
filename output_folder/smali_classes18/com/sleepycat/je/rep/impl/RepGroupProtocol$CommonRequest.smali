.class abstract Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
.source "RepGroupProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CommonRequest"
.end annotation


# instance fields
.field private final nodeName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;)V
    .locals 0
    .param p2, "nodeName"    # Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

    .line 146
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;->nodeName:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p2, "requestLine"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;->nextPayloadToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;->nodeName:Ljava/lang/String;

    .line 154
    return-void
.end method


# virtual methods
.method protected getMessagePrefix()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;->messagePrefixNocheck:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;->nodeName:Ljava/lang/String;

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
