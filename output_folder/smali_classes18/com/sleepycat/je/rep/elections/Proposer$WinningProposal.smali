.class public Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;
.super Ljava/lang/Object;
.source "Proposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Proposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WinningProposal"
.end annotation


# instance fields
.field final chosenValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

.field final proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

.field final proposerStats:Lcom/sleepycat/je/utilint/StatGroup;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .param p2, "value"    # Lcom/sleepycat/je/rep/elections/Protocol$Value;
    .param p3, "proposerStats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;->proposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 489
    iput-object p2, p0, Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;->chosenValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 490
    iput-object p3, p0, Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;->proposerStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 491
    return-void
.end method
