.class public Lcom/sleepycat/je/rep/elections/Protocol$MasterQuery;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MasterQuery"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/elections/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Protocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Protocol;

    .line 712
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Protocol$MasterQuery;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Protocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p2, "responseLine"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 715
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Protocol$MasterQuery;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 717
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 718
    return-void
.end method


# virtual methods
.method protected getMessagePrefix()Ljava/lang/String;
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$MasterQuery;->messagePrefixNocheck:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$MasterQuery;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/elections/Protocol;->MASTER_QUERY:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$MasterQuery;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$MasterQuery;->getMessagePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$MasterQuery;->wireFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 1

    .line 732
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$MasterQuery;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
