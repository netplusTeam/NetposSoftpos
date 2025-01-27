.class public Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;
.source "RepGroupProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Fail"
.end annotation


# instance fields
.field final reason:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
    .param p2, "reason"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;
    .param p3, "message"    # Ljava/lang/String;

    .line 477
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 478
    invoke-direct {p0, p1, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;)V

    .line 479
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;->reason:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 480
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
    .param p2, "request"    # Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .param p3, "reason"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;
    .param p4, "message"    # Ljava/lang/String;

    .line 482
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 483
    invoke-direct {p0, p1, p2, p4}, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/lang/String;)V

    .line 484
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;->reason:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 485
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

    .line 488
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 490
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;->reason:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    .line 492
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->RGFAIL_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public getReason()Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;->reason:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 2

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->wireFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;->reason:Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
