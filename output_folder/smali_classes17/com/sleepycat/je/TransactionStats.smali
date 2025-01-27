.class public Lcom/sleepycat/je/TransactionStats;
.super Ljava/lang/Object;
.source "TransactionStats.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/TransactionStats$Active;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7f5f5897L


# instance fields
.field private stats:Lcom/sleepycat/je/utilint/StatGroup;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sleepycat/je/TransactionStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 44
    return-void
.end method


# virtual methods
.method public getActiveTxns()[Lcom/sleepycat/je/TransactionStats$Active;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/sleepycat/je/TransactionStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_ACTIVE_TXNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getActiveTxnArray(Lcom/sleepycat/je/utilint/StatDefinition;)[Lcom/sleepycat/je/TransactionStats$Active;

    move-result-object v0

    return-object v0
.end method

.method public getNAborts()J
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/sleepycat/je/TransactionStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_ABORTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNActive()I
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/sleepycat/je/TransactionStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_ACTIVE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNBegins()J
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/sleepycat/je/TransactionStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_BEGINS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNCommits()J
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/sleepycat/je/TransactionStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_COMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNXAAborts()J
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/sleepycat/je/TransactionStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_XAABORTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNXACommits()J
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/sleepycat/je/TransactionStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_XACOMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNXAPrepares()J
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/sleepycat/je/TransactionStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_XAPREPARES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/TransactionStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatGroup;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringVerbose()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/sleepycat/je/TransactionStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatGroup;->toStringVerbose()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
