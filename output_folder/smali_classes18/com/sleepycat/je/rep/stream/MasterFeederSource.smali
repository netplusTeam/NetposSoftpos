.class public Lcom/sleepycat/je/rep/stream/MasterFeederSource;
.super Ljava/lang/Object;
.source "MasterFeederSource.java"

# interfaces
.implements Lcom/sleepycat/je/rep/stream/FeederSource;


# instance fields
.field private final feederReader:Lcom/sleepycat/je/rep/stream/FeederReader;

.field private final protectedFileRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 9
    .param p1, "envImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p2, "vlsnIndex"    # Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .param p3, "replicaNameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p4, "startVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    nop

    .line 47
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_ITERATOR_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 48
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    .line 50
    .local v0, "readBufferSize":I
    new-instance v1, Lcom/sleepycat/je/rep/stream/FeederReader;

    const-wide/16 v5, -0x1

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/je/rep/stream/FeederReader;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;JI)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/MasterFeederSource;->feederReader:Lcom/sleepycat/je/rep/stream/FeederReader;

    .line 55
    invoke-virtual {v1, p4}, Lcom/sleepycat/je/rep/stream/FeederReader;->initScan(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v1

    .line 62
    .local v1, "startLsn":J
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Feeder-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v5

    .line 62
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/je/cleaner/FileProtector;->protectFileRange(Ljava/lang/String;JZZ)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/stream/MasterFeederSource;->protectedFileRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    .line 66
    return-void
.end method


# virtual methods
.method public dumpState()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterFeederSource;->feederReader:Lcom/sleepycat/je/rep/stream/FeederReader;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/FeederReader;->dumpState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWireRecord(Lcom/sleepycat/je/utilint/VLSN;I)Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .locals 5
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "waitTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterFeederSource;->feederReader:Lcom/sleepycat/je/rep/stream/FeederReader;

    .line 86
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/rep/stream/FeederReader;->scanForwards(Lcom/sleepycat/je/utilint/VLSN;I)Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    move-result-object v0

    .line 88
    .local v0, "record":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    if-nez v0, :cond_0

    .line 89
    const/4 v1, 0x0

    return-object v1

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MasterFeederSource;->feederReader:Lcom/sleepycat/je/rep/stream/FeederReader;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/stream/FeederReader;->getLastFile(Lcom/sleepycat/je/rep/stream/OutputWireRecord;)J

    move-result-wide v1

    .line 100
    .local v1, "lastFile":J
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/MasterFeederSource;->protectedFileRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    invoke-virtual {v3}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;->getRangeStart()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/MasterFeederSource;->protectedFileRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    invoke-virtual {v3, v1, v2}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;->advanceRange(J)V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_1
    return-object v0

    .line 105
    .end local v0    # "record":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .end local v1    # "lastFile":J
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MasterFeederSource fetching vlsn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " waitTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseException;->addErrorMessage(Ljava/lang/String;)V

    .line 110
    throw v0
.end method

.method public shutdown(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 73
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MasterFeederSource;->protectedFileRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/cleaner/FileProtector;->removeFileProtection(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V

    .line 74
    return-void
.end method
