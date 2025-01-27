.class public Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStats;
.super Ljava/lang/Object;
.source "NetworkBackupStats.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final statGroup:Lcom/sleepycat/je/utilint/StatGroup;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "statGroup"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStats;->statGroup:Lcom/sleepycat/je/utilint/StatGroup;

    .line 41
    return-void
.end method


# virtual methods
.method public getBackupFileCount()I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStats;->statGroup:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->BACKUP_FILE_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getDisposedCount()I
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStats;->statGroup:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->DISPOSED_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getExpectedBytes()J
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStats;->statGroup:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->EXPECTED_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFetchCount()I
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStats;->statGroup:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->FETCH_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getSkipCount()I
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStats;->statGroup:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->SKIP_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getTransferRate()J
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStats;->statGroup:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->TRANSFER_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 69
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/LongAvgRateStat;

    .line 70
    .local v0, "stat":Lcom/sleepycat/je/utilint/LongAvgRateStat;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongAvgRateStat;->get()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getTransferredBytes()J
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStats;->statGroup:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->TRANSFERRED_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStats;->statGroup:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatGroup;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
