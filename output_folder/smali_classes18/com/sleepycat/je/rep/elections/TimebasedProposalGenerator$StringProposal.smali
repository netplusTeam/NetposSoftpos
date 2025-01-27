.class Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;
.super Ljava/lang/Object;
.source "TimebasedProposalGenerator.java"

# interfaces
.implements Lcom/sleepycat/je/rep/elections/Proposer$Proposal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringProposal"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static theParser:Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;


# instance fields
.field private final proposal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 198
    const-class v0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator;

    .line 202
    new-instance v0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal$1;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal$1;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;->theParser:Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "proposal"    # Ljava/lang/String;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    if-eqz p1, :cond_0

    .line 213
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;->proposal:Ljava/lang/String;

    .line 214
    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic access$000()Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;
    .locals 1

    .line 198
    invoke-static {}, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;->getParser()Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;

    move-result-object v0

    return-object v0
.end method

.method private static getParser()Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;
    .locals 1

    .line 238
    sget-object v0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;->theParser:Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)I
    .locals 2
    .param p1, "otherProposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 223
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;->proposal:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;

    iget-object v1, v1, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;->proposal:Ljava/lang/String;

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 223
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 198
    check-cast p1, Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;->compareTo(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 248
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 249
    return v0

    .line 251
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 252
    return v1

    .line 254
    :cond_1
    instance-of v2, p1, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;

    if-nez v2, :cond_2

    .line 255
    return v1

    .line 257
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;

    .line 258
    .local v2, "other":Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;->proposal:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 259
    iget-object v3, v2, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;->proposal:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 260
    return v1

    .line 262
    :cond_3
    iget-object v4, v2, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;->proposal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 263
    return v1

    .line 265
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;->proposal:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proposal("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;->proposal:Ljava/lang/String;

    .line 230
    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;->proposal:Ljava/lang/String;

    .line 232
    const/16 v4, 0x30

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;->proposal:Ljava/lang/String;

    .line 233
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/TimebasedProposalGenerator$StringProposal;->proposal:Ljava/lang/String;

    return-object v0
.end method
