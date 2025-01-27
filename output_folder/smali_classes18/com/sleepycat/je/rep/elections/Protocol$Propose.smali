.class public Lcom/sleepycat/je/rep/elections/Protocol$Propose;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Propose"
.end annotation


# instance fields
.field protected final proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

.field final synthetic this$0:Lcom/sleepycat/je/rep/elections/Protocol;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p2, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 545
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

    .line 546
    iput-object p2, p0, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 547
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Protocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p2, "requestLine"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 550
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 552
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 553
    invoke-static {p1}, Lcom/sleepycat/je/rep/elections/Protocol;->access$000(Lcom/sleepycat/je/rep/elections/Protocol;)Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->nextPayloadToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;->parse(Ljava/lang/String;)Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 554
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 567
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 568
    return v0

    .line 570
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 571
    return v2

    .line 573
    :cond_1
    instance-of v1, p1, Lcom/sleepycat/je/rep/elections/Protocol$Propose;

    if-nez v1, :cond_2

    .line 574
    return v2

    .line 576
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/rep/elections/Protocol$Propose;

    .line 577
    .local v1, "other":Lcom/sleepycat/je/rep/elections/Protocol$Propose;
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-nez v3, :cond_3

    .line 578
    iget-object v3, v1, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-eqz v3, :cond_4

    .line 579
    return v2

    .line 581
    :cond_3
    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 582
    return v2

    .line 584
    :cond_4
    return v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/elections/Protocol;->PROPOSE:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method getProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 558
    const/16 v0, 0x1f

    .line 559
    .local v0, "prime":I
    invoke-super {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->hashCode()I

    move-result v1

    .line 560
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 561
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 562
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 2

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    invoke-interface {v1}, Lcom/sleepycat/je/rep/elections/Proposer$Proposal;->wireFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
