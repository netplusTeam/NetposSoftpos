.class public Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$OK;
.source "RepGroupProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransferOK"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

.field private final winner:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
    .param p2, "request"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;
    .param p3, "winner"    # Ljava/lang/String;

    .line 395
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 396
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)V

    .line 397
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;->winner:Ljava/lang/String;

    .line 398
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

    .line 401
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 402
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;->winner:Ljava/lang/String;

    .line 404
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->TRANSFER_OK:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public getWinner()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;->winner:Ljava/lang/String;

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 2

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;->winner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
