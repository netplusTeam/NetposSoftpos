.class final Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal$1;
.super Ljava/lang/Object;
.source "TimebasedProposalGenerator.java"

# interfaces
.implements Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .locals 1
    .param p1, "wireFormat"    # Ljava/lang/String;

    .line 205
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
