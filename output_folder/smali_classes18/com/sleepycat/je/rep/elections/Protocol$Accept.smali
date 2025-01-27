.class public Lcom/sleepycat/je/rep/elections/Protocol$Accept;
.super Lcom/sleepycat/je/rep/elections/Protocol$Propose;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Accept"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/elections/Protocol;

.field private final value:Lcom/sleepycat/je/rep/elections/Protocol$Value;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p2, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .param p3, "value"    # Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 630
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accept;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 631
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/elections/Protocol$Propose;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)V

    .line 632
    iput-object p3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accept;->value:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 633
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

    .line 636
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accept;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 638
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/elections/Protocol$Propose;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 639
    invoke-static {p1}, Lcom/sleepycat/je/rep/elections/Protocol;->access$100(Lcom/sleepycat/je/rep/elections/Protocol;)Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Accept;->nextPayloadToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;->parse(Ljava/lang/String;)Lcom/sleepycat/je/rep/elections/Protocol$Value;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accept;->value:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 640
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 652
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 653
    return v0

    .line 655
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 656
    return v2

    .line 658
    :cond_1
    instance-of v1, p1, Lcom/sleepycat/je/rep/elections/Protocol$Accept;

    if-nez v1, :cond_2

    .line 659
    return v2

    .line 661
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/rep/elections/Protocol$Accept;

    .line 662
    .local v1, "other":Lcom/sleepycat/je/rep/elections/Protocol$Accept;
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accept;->value:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    if-nez v3, :cond_3

    .line 663
    iget-object v3, v1, Lcom/sleepycat/je/rep/elections/Protocol$Accept;->value:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    if-eqz v3, :cond_4

    .line 664
    return v2

    .line 666
    :cond_3
    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/Protocol$Accept;->value:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 667
    return v2

    .line 669
    :cond_4
    return v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accept;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/elections/Protocol;->ACCEPT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method getValue()Lcom/sleepycat/je/rep/elections/Protocol$Value;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accept;->value:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 644
    const/16 v0, 0x1f

    .line 645
    .local v0, "prime":I
    invoke-super {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->hashCode()I

    move-result v1

    .line 646
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accept;->value:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 647
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 2

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Propose;->wireFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Protocol$Accept;->value:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    invoke-interface {v1}, Lcom/sleepycat/je/rep/elections/Protocol$Value;->wireFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
