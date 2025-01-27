.class public Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
.source "TextProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/TextProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProtocolError"
.end annotation


# instance fields
.field private final errorType:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

.field private final message:Ljava/lang/String;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;
    .param p2, "messageException"    # Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;

    .line 639
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;->getErrorType()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    move-result-object v0

    .line 640
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 639
    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;
    .param p2, "messageError"    # Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;
    .param p3, "message"    # Ljava/lang/String;

    .line 643
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

    .line 644
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->message:Ljava/lang/String;

    .line 645
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->errorType:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    .line 646
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;
    .param p2, "responseLine"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 649
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 651
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->errorType:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    .line 653
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->message:Ljava/lang/String;

    .line 654
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 667
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 668
    return v0

    .line 670
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 671
    return v2

    .line 673
    :cond_1
    instance-of v1, p1, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;

    if-nez v1, :cond_2

    .line 674
    return v2

    .line 676
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;

    .line 677
    .local v1, "other":Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->message:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 678
    iget-object v3, v1, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->message:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 679
    return v2

    .line 681
    :cond_3
    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 682
    return v2

    .line 685
    :cond_4
    return v0
.end method

.method public getErrorType()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->errorType:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/TextProtocol;->PROTOCOL_ERROR:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 658
    const/16 v0, 0x1f

    .line 659
    .local v0, "prime":I
    invoke-super {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->hashCode()I

    move-result v1

    .line 660
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->message:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 661
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 662
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 3

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->errorType:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    .line 696
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 695
    return-object v0
.end method
