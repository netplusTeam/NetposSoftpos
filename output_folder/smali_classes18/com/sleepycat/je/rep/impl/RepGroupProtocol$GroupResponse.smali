.class public Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
.source "RepGroupProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupResponse"
.end annotation


# instance fields
.field final group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupRequest;Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
    .param p2, "request"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupRequest;
    .param p3, "group"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 424
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 425
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)V

    .line 426
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 427
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 430
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 432
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 433
    nop

    .line 434
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;->getCurrentTokenPosition()I

    move-result v0

    invoke-static {p3, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->deserializeHex([Ljava/lang/String;I)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 435
    return-void
.end method


# virtual methods
.method public getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    return-object v0
.end method

.method protected getMessagePrefix()Ljava/lang/String;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;->messagePrefixNocheck:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->GROUP_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;->sendVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->access$000(Ljava/lang/String;)I

    move-result v0

    .line 459
    .local v0, "groupFormatVersion":I
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 460
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v0

    .line 462
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;->group:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 463
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->serializeHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 462
    return-object v1
.end method
