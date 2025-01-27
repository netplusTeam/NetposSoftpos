.class public Lcom/sleepycat/je/rep/elections/ProposerStatDefinition;
.super Ljava/lang/Object;
.source "ProposerStatDefinition.java"


# static fields
.field public static final GROUP_DESC:Ljava/lang/String; = "Proposals are the first stage of a replication group election."

.field public static final GROUP_NAME:Ljava/lang/String; = "Election Proposer"

.field public static PHASE1_ARBITER:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static PHASE1_HIGHER_PROPOSAL:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static PHASE1_NO_NON_ZERO_PRIO:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static PHASE1_NO_QUORUM:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static PHASE2_HIGHER_PROPOSAL:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static PHASE2_NO_QUORUM:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static PROMISE_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "phase1Arbiter"

    const-string v2, "Number of times Phase 1 ended due to Arbiter having highest VLSN."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/elections/ProposerStatDefinition;->PHASE1_ARBITER:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 33
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "phase1NoQuorum"

    const-string v2, "Number of times Phase 1 ended with insufficient votes for a quorum."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/elections/ProposerStatDefinition;->PHASE1_NO_QUORUM:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 39
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "phase1NoNonZeroPrio"

    const-string v2, "Number of times Phase 1 ended due to the absence of participating electable nodes with non-zero priority"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/elections/ProposerStatDefinition;->PHASE1_NO_NON_ZERO_PRIO:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 45
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "phase1HigherProposal"

    const-string v2, "Number of times Phase 1 was terminated because one of the Acceptor agents already had a higher numbered proposal."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/elections/ProposerStatDefinition;->PHASE1_HIGHER_PROPOSAL:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 51
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "phase2NoQuorum"

    const-string v2, "Number of times Phase 2 ended with insufficient votes for a quorum."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/elections/ProposerStatDefinition;->PHASE2_NO_QUORUM:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 57
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "phase2HigherProposal"

    const-string v2, "Number of times Phase 2 was terminated because one of the Acceptor agents already had a higher numbered proposal."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/elections/ProposerStatDefinition;->PHASE2_HIGHER_PROPOSAL:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 63
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "promiseCount"

    const-string v2, "Number of promises made by Acceptors in phase 1."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/elections/ProposerStatDefinition;->PROMISE_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
