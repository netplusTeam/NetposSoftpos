.class public Lcom/sleepycat/je/rep/elections/Protocol$Reject;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Reject"
.end annotation


# instance fields
.field private final higherProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

.field final synthetic this$0:Lcom/sleepycat/je/rep/elections/Protocol;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p2, "higherProposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 481
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Protocol$Reject;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

    .line 482
    iput-object p2, p0, Lcom/sleepycat/je/rep/elections/Protocol$Reject;->higherProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 483
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Protocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p2, "responseLine"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 486
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Protocol$Reject;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 488
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 489
    invoke-static {p1}, Lcom/sleepycat/je/rep/elections/Protocol;->access$000(Lcom/sleepycat/je/rep/elections/Protocol;)Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Reject;->nextPayloadToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;->parse(Ljava/lang/String;)Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Reject;->higherProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 490
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 504
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 505
    return v0

    .line 507
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 508
    return v2

    .line 510
    :cond_1
    instance-of v1, p1, Lcom/sleepycat/je/rep/elections/Protocol$Reject;

    if-nez v1, :cond_2

    .line 511
    return v2

    .line 513
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/rep/elections/Protocol$Reject;

    .line 514
    .local v1, "other":Lcom/sleepycat/je/rep/elections/Protocol$Reject;
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Reject;->higherProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-nez v3, :cond_3

    .line 515
    iget-object v3, v1, Lcom/sleepycat/je/rep/elections/Protocol$Reject;->higherProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-eqz v3, :cond_4

    .line 516
    return v2

    .line 518
    :cond_3
    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/Protocol$Reject;->higherProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 519
    return v2

    .line 521
    :cond_4
    return v0
.end method

.method getHigherProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Reject;->higherProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Reject;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/elections/Protocol;->REJECT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 494
    const/16 v0, 0x1f

    .line 495
    .local v0, "prime":I
    invoke-super {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->hashCode()I

    move-result v1

    .line 496
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Reject;->higherProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 499
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 2

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Reject;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Protocol$Reject;->higherProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    invoke-interface {v1}, Lcom/sleepycat/je/rep/elections/Proposer$Proposal;->wireFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
