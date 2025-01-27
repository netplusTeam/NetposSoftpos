.class public Lcom/sleepycat/je/log/CleanerFileReader;
.super Lcom/sleepycat/je/log/FileReader;
.source "CleanerFileReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/log/CleanerFileReader$EntryInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final IS_BIN_DELTA:B = 0x2t

.field private static final IS_DBTREE:B = 0x4t

.field private static final IS_FILEHEADER:B = 0x5t

.field private static final IS_IN:B = 0x1t

.field private static final IS_LN:B = 0x0t

.field private static final IS_OLD_BIN_DELTA:B = 0x3t


# instance fields
.field private final expTracker:Lcom/sleepycat/je/cleaner/ExpirationTracker;

.field private final fileSummary:Lcom/sleepycat/je/cleaner/FileSummary;

.field private firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final inSummary:Lcom/sleepycat/je/cleaner/INSummary;

.field private lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private targetCategory:B

.field private final targetEntryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/log/LogEntryType;",
            "Lcom/sleepycat/je/log/CleanerFileReader$EntryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJLjava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;Lcom/sleepycat/je/cleaner/INSummary;Lcom/sleepycat/je/cleaner/ExpirationTracker;)V
    .locals 16
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readBufferSize"    # I
    .param p3, "startLsn"    # J
    .param p5, "fileNum"    # Ljava/lang/Long;
    .param p6, "fileSummary"    # Lcom/sleepycat/je/cleaner/FileSummary;
    .param p7, "inSummary"    # Lcom/sleepycat/je/cleaner/INSummary;
    .param p8, "expTracker"    # Lcom/sleepycat/je/cleaner/ExpirationTracker;

    .line 81
    move-object/from16 v12, p0

    move-object/from16 v13, p8

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v13, :cond_0

    move v11, v14

    goto :goto_0

    :cond_0
    move v11, v15

    :goto_0
    const/4 v3, 0x1

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v11}, Lcom/sleepycat/je/log/FileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJZ)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, v12, Lcom/sleepycat/je/log/CleanerFileReader;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 61
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, v12, Lcom/sleepycat/je/log/CleanerFileReader;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 90
    move-object/from16 v0, p6

    iput-object v0, v12, Lcom/sleepycat/je/log/CleanerFileReader;->fileSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    .line 91
    move-object/from16 v1, p7

    iput-object v1, v12, Lcom/sleepycat/je/log/CleanerFileReader;->inSummary:Lcom/sleepycat/je/cleaner/INSummary;

    .line 92
    iput-object v13, v12, Lcom/sleepycat/je/log/CleanerFileReader;->expTracker:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    .line 94
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v12, Lcom/sleepycat/je/log/CleanerFileReader;->targetEntryMap:Ljava/util/Map;

    .line 96
    invoke-static {}, Lcom/sleepycat/je/log/LogEntryType;->getAllTypes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/log/LogEntryType;

    .line 97
    .local v3, "entryType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->isLNType()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    invoke-direct {v12, v15, v3}, Lcom/sleepycat/je/log/CleanerFileReader;->addTargetType(BLcom/sleepycat/je/log/LogEntryType;)V

    .line 105
    :cond_1
    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->isINType()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    invoke-direct {v12, v14, v3}, Lcom/sleepycat/je/log/CleanerFileReader;->addTargetType(BLcom/sleepycat/je/log/LogEntryType;)V

    .line 108
    .end local v3    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    :cond_2
    goto :goto_1

    .line 109
    :cond_3
    const/4 v2, 0x2

    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    invoke-direct {v12, v2, v3}, Lcom/sleepycat/je/log/CleanerFileReader;->addTargetType(BLcom/sleepycat/je/log/LogEntryType;)V

    .line 110
    const/4 v2, 0x3

    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_OLD_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    invoke-direct {v12, v2, v3}, Lcom/sleepycat/je/log/CleanerFileReader;->addTargetType(BLcom/sleepycat/je/log/LogEntryType;)V

    .line 111
    const/4 v2, 0x4

    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_DBTREE:Lcom/sleepycat/je/log/LogEntryType;

    invoke-direct {v12, v2, v3}, Lcom/sleepycat/je/log/CleanerFileReader;->addTargetType(BLcom/sleepycat/je/log/LogEntryType;)V

    .line 112
    const/4 v2, 0x5

    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_FILE_HEADER:Lcom/sleepycat/je/log/LogEntryType;

    invoke-direct {v12, v2, v3}, Lcom/sleepycat/je/log/CleanerFileReader;->addTargetType(BLcom/sleepycat/je/log/LogEntryType;)V

    .line 113
    return-void
.end method

.method private addTargetType(BLcom/sleepycat/je/log/LogEntryType;)V
    .locals 3
    .param p1, "category"    # B
    .param p2, "entryType"    # Lcom/sleepycat/je/log/LogEntryType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetEntryMap:Ljava/util/Map;

    new-instance v1, Lcom/sleepycat/je/log/CleanerFileReader$EntryInfo;

    .line 119
    invoke-virtual {p2}, Lcom/sleepycat/je/log/LogEntryType;->getNewLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/sleepycat/je/log/CleanerFileReader$EntryInfo;-><init>(Lcom/sleepycat/je/log/entry/LogEntry;B)V

    .line 118
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method


# virtual methods
.method public countExpired()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->expTracker:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-virtual {p0}, Lcom/sleepycat/je/log/CleanerFileReader;->getLastEntrySize()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->track(Lcom/sleepycat/je/log/entry/LogEntry;I)V

    .line 239
    :cond_0
    return-void
.end method

.method public countObsolete()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 212
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    .line 213
    .local v0, "type":Lcom/sleepycat/je/log/LogEntryType;
    invoke-static {v0}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->trackObsoleteInfo(Lcom/sleepycat/je/log/LogEntryType;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/log/CleanerFileReader;->getLastEntrySize()I

    move-result v1

    .line 217
    .local v1, "size":I
    invoke-static {v0}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->isLNType(Lcom/sleepycat/je/log/LogEntryType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->fileSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNCount:I

    .line 219
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->fileSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSize:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSize:I

    .line 220
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->fileSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSizeCounted:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSizeCounted:I

    goto :goto_0

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->fileSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteINCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteINCount:I

    .line 223
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isINType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->inSummary:Lcom/sleepycat/je/cleaner/INSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/INSummary;->obsoleteINCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sleepycat/je/cleaner/INSummary;->obsoleteINCount:I

    .line 225
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->inSummary:Lcom/sleepycat/je/cleaner/INSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/INSummary;->obsoleteINSize:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/sleepycat/je/cleaner/INSummary;->obsoleteINSize:I

    .line 227
    :cond_2
    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_OLD_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    .line 228
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 229
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->inSummary:Lcom/sleepycat/je/cleaner/INSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/INSummary;->obsoleteBINDeltaCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sleepycat/je/cleaner/INSummary;->obsoleteBINDeltaCount:I

    .line 230
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->inSummary:Lcom/sleepycat/je/cleaner/INSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/INSummary;->obsoleteBINDeltaSize:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/sleepycat/je/cleaner/INSummary;->obsoleteBINDeltaSize:I

    .line 233
    :cond_4
    :goto_0
    return-void
.end method

.method public getBINDelta()Lcom/sleepycat/je/tree/BIN;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v0, Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;->getMainItem()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    return-object v0
.end method

.method public getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 2

    .line 312
    iget-byte v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetCategory:B

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v0, Lcom/sleepycat/je/log/entry/LNLogEntry;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    return-object v0

    .line 314
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 317
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 318
    iget-object v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v0, Lcom/sleepycat/je/log/entry/OldBINDeltaLogEntry;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/OldBINDeltaLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    return-object v0

    .line 320
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 316
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v0, Lcom/sleepycat/je/log/entry/INLogEntry;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/INLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    return-object v0
.end method

.method public getFileHeader()Lcom/sleepycat/je/log/FileHeader;
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/FileHeader;

    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/log/FileHeader;

    return-object v0
.end method

.method public getFirstVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    :goto_0
    return-object v0
.end method

.method public getIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/IN;
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 293
    iget-object v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v0, Lcom/sleepycat/je/log/entry/INLogEntry;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/log/entry/INLogEntry;->getIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    return-object v0
.end method

.method public getLNLogEntry()Lcom/sleepycat/je/log/entry/LNLogEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v0, Lcom/sleepycat/je/log/entry/LNLogEntry;

    return-object v0
.end method

.method public getLastVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public getOldBINDelta()Lcom/sleepycat/je/tree/OldBINDelta;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    check-cast v0, Lcom/sleepycat/je/log/entry/OldBINDeltaLogEntry;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/OldBINDeltaLogEntry;->getMainItem()Lcom/sleepycat/je/log/Loggable;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/OldBINDelta;

    return-object v0
.end method

.method public isBINDelta()Z
    .locals 2

    .line 252
    iget-byte v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetCategory:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDbTree()Z
    .locals 2

    .line 273
    iget-byte v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetCategory:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFileHeader()Z
    .locals 2

    .line 277
    iget-byte v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetCategory:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIN()Z
    .locals 2

    .line 245
    iget-byte v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetCategory:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLN()Z
    .locals 1

    .line 266
    iget-byte v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetCategory:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOldBINDelta()Z
    .locals 2

    .line 259
    iget-byte v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetCategory:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 7
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/sleepycat/je/log/CleanerFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 136
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    .line 137
    .local v0, "type":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {p0}, Lcom/sleepycat/je/log/CleanerFileReader;->getLastEntrySize()I

    move-result v1

    .line 140
    .local v1, "size":I
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v2

    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_FILE_HEADER:Lcom/sleepycat/je/log/LogEntryType;

    .line 141
    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    .line 142
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->fileSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalCount:I

    .line 143
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->fileSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    .line 144
    invoke-static {v0}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->trackObsoleteInfo(Lcom/sleepycat/je/log/LogEntryType;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    invoke-static {v0}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;->isLNType(Lcom/sleepycat/je/log/LogEntryType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->fileSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    .line 147
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->fileSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    goto :goto_0

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->fileSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalINCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalINCount:I

    .line 150
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->fileSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalINSize:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/sleepycat/je/cleaner/FileSummary;->totalINSize:I

    .line 151
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isINType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->inSummary:Lcom/sleepycat/je/cleaner/INSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/INSummary;->totalINCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sleepycat/je/cleaner/INSummary;->totalINCount:I

    .line 153
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->inSummary:Lcom/sleepycat/je/cleaner/INSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/INSummary;->totalINSize:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/sleepycat/je/cleaner/INSummary;->totalINSize:I

    .line 155
    :cond_1
    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_OLD_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    .line 156
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->inSummary:Lcom/sleepycat/je/cleaner/INSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/INSummary;->totalBINDeltaCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sleepycat/je/cleaner/INSummary;->totalBINDeltaCount:I

    .line 158
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->inSummary:Lcom/sleepycat/je/cleaner/INSummary;

    iget v3, v2, Lcom/sleepycat/je/cleaner/INSummary;->totalBINDeltaSize:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/sleepycat/je/cleaner/INSummary;->totalBINDeltaSize:I

    .line 165
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 166
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/log/CleanerFileReader;->skipEntry(Ljava/nio/ByteBuffer;)V

    .line 167
    invoke-virtual {p0}, Lcom/sleepycat/je/log/CleanerFileReader;->countObsolete()V

    .line 168
    return v3

    .line 175
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getReplicated()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 176
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    .line 177
    .local v2, "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    if-eqz v2, :cond_7

    .line 180
    iget-object v5, p0, Lcom/sleepycat/je/log/CleanerFileReader;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    if-nez v5, :cond_5

    .line 181
    iput-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 183
    :cond_5
    iget-object v5, p0, Lcom/sleepycat/je/log/CleanerFileReader;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2, v5}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v5

    if-lez v5, :cond_6

    .line 186
    iput-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    goto :goto_1

    .line 183
    :cond_6
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vlsns out of order, last="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/log/CleanerFileReader;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " current="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 194
    .end local v2    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetEntryMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/log/CleanerFileReader$EntryInfo;

    .line 195
    .local v2, "info":Lcom/sleepycat/je/log/CleanerFileReader$EntryInfo;
    if-nez v2, :cond_8

    .line 196
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/log/CleanerFileReader;->skipEntry(Ljava/nio/ByteBuffer;)V

    .line 197
    invoke-virtual {p0}, Lcom/sleepycat/je/log/CleanerFileReader;->countObsolete()V

    .line 198
    return v3

    .line 200
    :cond_8
    iget-byte v3, v2, Lcom/sleepycat/je/log/CleanerFileReader$EntryInfo;->targetCategory:B

    iput-byte v3, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetCategory:B

    .line 201
    iget-object v3, v2, Lcom/sleepycat/je/log/CleanerFileReader$EntryInfo;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    iput-object v3, p0, Lcom/sleepycat/je/log/CleanerFileReader;->targetLogEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 202
    iget-object v5, p0, Lcom/sleepycat/je/log/CleanerFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v6, p0, Lcom/sleepycat/je/log/CleanerFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v3, v5, v6, p1}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 203
    return v4
.end method
