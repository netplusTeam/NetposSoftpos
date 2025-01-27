.class public Lcom/sleepycat/je/rep/elections/Protocol$Accepted;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Accepted"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

.field final synthetic this$0:Lcom/sleepycat/je/rep/elections/Protocol;

.field private final value:Lcom/sleepycat/je/rep/elections/Protocol$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 371
    const-class v0, Lcom/sleepycat/je/rep/elections/Protocol;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p2, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .param p3, "value"    # Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 375
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

    .line 376
    if-eqz p2, :cond_1

    .line 377
    if-eqz p3, :cond_0

    .line 378
    iput-object p2, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 379
    iput-object p3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->value:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 380
    return-void

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 376
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
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

    .line 383
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 385
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 386
    invoke-static {p1}, Lcom/sleepycat/je/rep/elections/Protocol;->access$000(Lcom/sleepycat/je/rep/elections/Protocol;)Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->nextPayloadToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;->parse(Ljava/lang/String;)Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 387
    invoke-static {p1}, Lcom/sleepycat/je/rep/elections/Protocol;->access$100(Lcom/sleepycat/je/rep/elections/Protocol;)Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->nextPayloadToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;->parse(Ljava/lang/String;)Lcom/sleepycat/je/rep/elections/Protocol$Value;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->value:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 388
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 402
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 403
    return v0

    .line 405
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 406
    return v2

    .line 408
    :cond_1
    instance-of v1, p1, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;

    if-nez v1, :cond_2

    .line 409
    return v2

    .line 411
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;

    .line 412
    .local v1, "other":Lcom/sleepycat/je/rep/elections/Protocol$Accepted;
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-nez v3, :cond_3

    .line 413
    iget-object v3, v1, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-eqz v3, :cond_4

    .line 414
    return v2

    .line 416
    :cond_3
    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 417
    return v2

    .line 419
    :cond_4
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->value:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    if-nez v3, :cond_5

    .line 420
    iget-object v3, v1, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->value:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    if-eqz v3, :cond_6

    .line 421
    return v2

    .line 423
    :cond_5
    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->value:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 424
    return v2

    .line 426
    :cond_6
    return v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/elections/Protocol;->ACCEPTED:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public getProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    return-object v0
.end method

.method public getValue()Lcom/sleepycat/je/rep/elections/Protocol$Value;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->value:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 392
    const/16 v0, 0x1f

    .line 393
    .local v0, "prime":I
    invoke-super {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->hashCode()I

    move-result v1

    .line 394
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 396
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->value:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    .line 397
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 3

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    invoke-interface {v2}, Lcom/sleepycat/je/rep/elections/Proposer$Proposal;->wireFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accepted;->value:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 437
    invoke-interface {v1}, Lcom/sleepycat/je/rep/elections/Protocol$Value;->wireFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    return-object v0
.end method
