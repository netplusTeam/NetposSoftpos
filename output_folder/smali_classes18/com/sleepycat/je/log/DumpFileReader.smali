.class public abstract Lcom/sleepycat/je/log/DumpFileReader;
.super Lcom/sleepycat/je/log/FileReader;
.source "DumpFileReader.java"


# instance fields
.field private final repEntriesOnly:Z

.field private final targetDbIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final targetEntryTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final targetTxnIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final verbose:Z


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 15
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readBufferSize"    # I
    .param p3, "startLsn"    # J
    .param p5, "finishLsn"    # J
    .param p7, "endOfFileLsn"    # J
    .param p9, "entryTypes"    # Ljava/lang/String;
    .param p10, "dbIds"    # Ljava/lang/String;
    .param p11, "txnIds"    # Ljava/lang/String;
    .param p12, "verbose"    # Z
    .param p13, "repEntriesOnly"    # Z
    .param p14, "forwards"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 61
    move-object v11, p0

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p14

    move-wide/from16 v4, p3

    move-wide/from16 v7, p7

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lcom/sleepycat/je/log/FileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJ)V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v11, Lcom/sleepycat/je/log/DumpFileReader;->targetEntryTypes:Ljava/util/Set;

    .line 71
    const-string v0, ","

    if-eqz v12, :cond_0

    .line 72
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v12, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "typeString":Ljava/lang/String;
    iget-object v3, v11, Lcom/sleepycat/je/log/DumpFileReader;->targetEntryTypes:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v2    # "typeString":Ljava/lang/String;
    goto :goto_0

    .line 79
    .end local v1    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v11, Lcom/sleepycat/je/log/DumpFileReader;->targetDbIds:Ljava/util/Set;

    .line 80
    if-eqz v13, :cond_1

    .line 81
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v13, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .restart local v1    # "tokenizer":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "dbIdString":Ljava/lang/String;
    iget-object v3, v11, Lcom/sleepycat/je/log/DumpFileReader;->targetDbIds:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v2    # "dbIdString":Ljava/lang/String;
    goto :goto_1

    .line 88
    .end local v1    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v11, Lcom/sleepycat/je/log/DumpFileReader;->targetTxnIds:Ljava/util/Set;

    .line 89
    if-eqz v14, :cond_2

    .line 90
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v14, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 91
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    :goto_2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "txnIdString":Ljava/lang/String;
    iget-object v2, v11, Lcom/sleepycat/je/log/DumpFileReader;->targetTxnIds:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v1    # "txnIdString":Ljava/lang/String;
    goto :goto_2

    .line 96
    .end local v0    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_2
    move/from16 v0, p12

    iput-boolean v0, v11, Lcom/sleepycat/je/log/DumpFileReader;->verbose:Z

    .line 97
    move/from16 v1, p13

    iput-boolean v1, v11, Lcom/sleepycat/je/log/DumpFileReader;->repEntriesOnly:Z

    .line 98
    return-void
.end method


# virtual methods
.method protected isTargetEntry()Z
    .locals 2

    .line 137
    iget-boolean v0, p0, Lcom/sleepycat/je/log/DumpFileReader;->repEntriesOnly:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/log/DumpFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getReplicated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/DumpFileReader;->targetEntryTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 148
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/log/DumpFileReader;->targetEntryTypes:Ljava/util/Set;

    iget-object v1, p0, Lcom/sleepycat/je/log/DumpFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 151
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 150
    return v0
.end method

.method protected matchEntry(Lcom/sleepycat/je/log/entry/LogEntry;)Z
    .locals 5
    .param p1, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;

    .line 105
    iget-object v0, p0, Lcom/sleepycat/je/log/DumpFileReader;->targetTxnIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 106
    invoke-interface {p1}, Lcom/sleepycat/je/log/entry/LogEntry;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    .line 107
    .local v0, "type":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isTransactional()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    return v1

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/log/DumpFileReader;->targetTxnIds:Ljava/util/Set;

    invoke-interface {p1}, Lcom/sleepycat/je/log/entry/LogEntry;->getTransactionId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    return v1

    .line 116
    .end local v0    # "type":Lcom/sleepycat/je/log/LogEntryType;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/log/DumpFileReader;->targetDbIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    invoke-interface {p1}, Lcom/sleepycat/je/log/entry/LogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    .line 118
    .local v0, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    if-nez v0, :cond_2

    .line 120
    return v1

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/log/DumpFileReader;->targetDbIds:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 124
    return v1

    .line 128
    .end local v0    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected needMatchEntry()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sleepycat/je/log/DumpFileReader;->targetTxnIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/log/DumpFileReader;->targetDbIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public summarize(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .line 158
    return-void
.end method
