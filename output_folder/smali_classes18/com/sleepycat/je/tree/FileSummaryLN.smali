.class public final Lcom/sleepycat/je/tree/FileSummaryLN;
.super Lcom/sleepycat/je/tree/LN;
.source "FileSummaryLN.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BEGIN_TAG:Ljava/lang/String; = "<fileSummaryLN>"

.field private static final END_TAG:Ljava/lang/String; = "</fileSummaryLN>"


# instance fields
.field private final baseSummary:Lcom/sleepycat/je/cleaner/FileSummary;

.field private entryVersion:I

.field private extraMarshaledMemorySize:I

.field private needOffsets:Z

.field private obsoleteOffsets:Lcom/sleepycat/je/cleaner/PackedOffsets;

.field private trackedSummary:Lcom/sleepycat/je/cleaner/TrackedFileSummary;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/sleepycat/je/tree/LN;-><init>()V

    .line 104
    new-instance v0, Lcom/sleepycat/je/cleaner/FileSummary;

    invoke-direct {v0}, Lcom/sleepycat/je/cleaner/FileSummary;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->baseSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    .line 105
    new-instance v0, Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-direct {v0}, Lcom/sleepycat/je/cleaner/PackedOffsets;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/PackedOffsets;

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/cleaner/FileSummary;)V
    .locals 1
    .param p1, "baseSummary"    # Lcom/sleepycat/je/cleaner/FileSummary;

    .line 93
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/sleepycat/je/tree/LN;-><init>([B)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    iput-object p1, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->baseSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    .line 96
    new-instance v0, Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-direct {v0}, Lcom/sleepycat/je/cleaner/PackedOffsets;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/PackedOffsets;

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->entryVersion:I

    .line 98
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "deletedMarker"    # Z

    .line 115
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [B

    invoke-direct {p0, v0}, Lcom/sleepycat/je/tree/LN;-><init>([B)V

    .line 116
    new-instance v0, Lcom/sleepycat/je/cleaner/FileSummary;

    invoke-direct {v0}, Lcom/sleepycat/je/cleaner/FileSummary;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->baseSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    .line 117
    new-instance v0, Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-direct {v0}, Lcom/sleepycat/je/cleaner/PackedOffsets;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/PackedOffsets;

    .line 118
    return-void
.end method

.method public static getFileNumber([B)J
    .locals 5
    .param p0, "bytes"    # [B

    .line 200
    invoke-static {p0}, Lcom/sleepycat/je/tree/FileSummaryLN;->hasStringKey([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {p0}, Lcom/sleepycat/utilint/StringUtils;->fromUTF8([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 203
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 204
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->readIntMSB(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    return-wide v1
.end method

.method private getOffsets()V
    .locals 4

    .line 412
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/FileSummaryLN;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 413
    iget-boolean v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->needOffsets:Z

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->trackedSummary:Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->getObsoleteOffsets()[J

    move-result-object v0

    .line 415
    .local v0, "offsets":[J
    if-eqz v0, :cond_0

    .line 416
    iget-object v1, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/PackedOffsets;->getExtraMemorySize()I

    move-result v1

    .line 417
    .local v1, "oldSize":I
    iget-object v2, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/cleaner/PackedOffsets;->pack([J)V

    .line 418
    iget-object v2, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/PackedOffsets;->getExtraMemorySize()I

    move-result v2

    .line 419
    .local v2, "newSize":I
    sub-int v3, v2, v1

    iput v3, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->extraMarshaledMemorySize:I

    .line 421
    .end local v1    # "oldSize":I
    .end local v2    # "newSize":I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->needOffsets:Z

    .line 423
    .end local v0    # "offsets":[J
    :cond_1
    return-void

    .line 412
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static getSequence([B)J
    .locals 5
    .param p0, "bytes"    # [B

    .line 213
    invoke-static {p0}, Lcom/sleepycat/je/tree/FileSummaryLN;->hasStringKey([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-wide/16 v0, 0x0

    return-wide v0

    .line 216
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 217
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->readIntMSB(Ljava/nio/ByteBuffer;)I

    .line 218
    const v1, 0x7fffffff

    .line 219
    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->readIntMSB(Ljava/nio/ByteBuffer;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 218
    return-wide v1
.end method

.method public static hasStringKey([B)Z
    .locals 4
    .param p0, "bytes"    # [B

    .line 187
    array-length v0, p0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 188
    return v1

    .line 190
    :cond_0
    const/4 v0, 0x4

    aget-byte v2, p0, v0

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    aget-byte v0, p0, v0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static makeDeletedLN()Lcom/sleepycat/je/tree/LN;
    .locals 2

    .line 124
    new-instance v0, Lcom/sleepycat/je/tree/FileSummaryLN;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/tree/FileSummaryLN;-><init>(Z)V

    return-object v0
.end method

.method public static makeFullKey(JI)[B
    .locals 3
    .param p0, "fileNum"    # J
    .param p2, "sequence"    # I

    .line 246
    if-ltz p2, :cond_0

    .line 248
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 249
    .local v0, "bytes":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 256
    .local v1, "buf":Ljava/nio/ByteBuffer;
    long-to-int v2, p0

    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writeIntMSB(Ljava/nio/ByteBuffer;I)V

    .line 257
    const v2, 0x7fffffff

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writeIntMSB(Ljava/nio/ByteBuffer;I)V

    .line 259
    return-object v0

    .line 246
    .end local v0    # "bytes":[B
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static makePartialKey(J)[B
    .locals 3
    .param p0, "fileNum"    # J

    .line 229
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 230
    .local v0, "bytes":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 232
    .local v1, "buf":Ljava/nio/ByteBuffer;
    long-to-int v2, p0

    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writeIntMSB(Ljava/nio/ByteBuffer;I)V

    .line 234
    return-object v0
.end method


# virtual methods
.method public addExtraMarshaledMemorySize(Lcom/sleepycat/je/tree/BIN;)V
    .locals 4
    .param p1, "parentBIN"    # Lcom/sleepycat/je/tree/BIN;

    .line 464
    iget v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->extraMarshaledMemorySize:I

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->trackedSummary:Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    if-eqz v0, :cond_1

    .line 466
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    const-wide/16 v0, 0x0

    iget v2, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->extraMarshaledMemorySize:I

    int-to-long v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sleepycat/je/tree/BIN;->updateMemorySize(JJ)V

    .line 468
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->extraMarshaledMemorySize:I

    goto :goto_0

    .line 466
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 465
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 470
    :cond_2
    :goto_0
    return-void
.end method

.method public beginTag()Ljava/lang/String;
    .locals 1

    .line 290
    const-string v0, "<fileSummaryLN>"

    return-object v0
.end method

.method public dumpKey(Ljava/lang/StringBuilder;[B)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "key"    # [B

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<fileSummaryLNKey fileNumber=\"0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 475
    invoke-static {p2}, Lcom/sleepycat/je/tree/FileSummaryLN;->getFileNumber([B)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sequence=\"0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 477
    invoke-static {p2}, Lcom/sleepycat/je/tree/FileSummaryLN;->getSequence([B)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/LN;->dumpKey(Ljava/lang/StringBuilder;[B)V

    .line 479
    return-void
.end method

.method protected dumpLogAdditional(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 316
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/FileSummaryLN;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->baseSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/cleaner/FileSummary;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 318
    if-eqz p2, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/cleaner/PackedOffsets;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 322
    :cond_0
    return-void
.end method

.method public dumpString(IZ)Ljava/lang/String;
    .locals 2
    .param p1, "nSpaces"    # I
    .param p2, "dumpTags"    # Z

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/LN;->dumpString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/FileSummaryLN;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->baseSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/FileSummary;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v1, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/PackedOffsets;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public endTag()Ljava/lang/String;
    .locals 1

    .line 295
    const-string v0, "</fileSummaryLN>"

    return-object v0
.end method

.method public getBaseSummary()Lcom/sleepycat/je/cleaner/FileSummary;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->baseSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    return-object v0
.end method

.method public getLogSize(IZ)I
    .locals 2
    .param p1, "logVersion"    # I
    .param p2, "forReplication"    # Z

    .line 350
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/LN;->getLogSize(IZ)I

    move-result v0

    .line 351
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/FileSummaryLN;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->baseSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/FileSummary;->getLogSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    invoke-direct {p0}, Lcom/sleepycat/je/tree/FileSummaryLN;->getOffsets()V

    .line 354
    iget-object v1, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/PackedOffsets;->getLogSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 356
    :cond_0
    return v0
.end method

.method protected getLogType(ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/log/LogEntryType;
    .locals 2
    .param p1, "isInsert"    # Z
    .param p2, "isTransactional"    # Z
    .param p3, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 337
    if-nez p2, :cond_0

    .line 339
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_FILESUMMARYLN:Lcom/sleepycat/je/log/LogEntryType;

    return-object v0

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Txnl access to UP db not allowed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getMemorySizeIncludedByParent()J
    .locals 4

    .line 430
    invoke-super {p0}, Lcom/sleepycat/je/tree/LN;->getMemorySizeIncludedByParent()J

    move-result-wide v0

    sget v2, Lcom/sleepycat/je/dbi/MemoryBudget;->FILESUMMARYLN_OVERHEAD:I

    sget v3, Lcom/sleepycat/je/dbi/MemoryBudget;->LN_OVERHEAD:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/PackedOffsets;

    .line 433
    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/PackedOffsets;->getExtraMemorySize()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 430
    return-wide v0
.end method

.method public getObsoleteOffsets()Lcom/sleepycat/je/cleaner/PackedOffsets;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/PackedOffsets;

    return-object v0
.end method

.method public getTrackedSummary()Lcom/sleepycat/je/cleaner/TrackedFileSummary;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->trackedSummary:Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    return-object v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method makeDeleted()V
    .locals 1

    .line 441
    invoke-super {p0}, Lcom/sleepycat/je/tree/LN;->makeDeleted()V

    .line 442
    new-instance v0, Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-direct {v0}, Lcom/sleepycat/je/cleaner/PackedOffsets;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/PackedOffsets;

    .line 443
    return-void
.end method

.method public postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V
    .locals 2
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "sourceLsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 271
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/LN;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 273
    iget v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->entryVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/Cleaner;->isRMWFixEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-direct {v0}, Lcom/sleepycat/je/cleaner/PackedOffsets;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/PackedOffsets;

    .line 277
    :cond_0
    return-void
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 387
    iput p2, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->entryVersion:I

    .line 389
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/LN;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 391
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/FileSummaryLN;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->baseSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/cleaner/FileSummary;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 393
    if-lez p2, :cond_0

    .line 394
    iget-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/cleaner/PackedOffsets;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 397
    :cond_0
    return-void
.end method

.method public setTrackedSummary(Lcom/sleepycat/je/cleaner/TrackedFileSummary;)V
    .locals 1
    .param p1, "trackedSummary"    # Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    .line 132
    iput-object p1, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->trackedSummary:Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->needOffsets:Z

    .line 134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 285
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/tree/FileSummaryLN;->dumpString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;IZ)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I
    .param p3, "forReplication"    # Z

    .line 369
    iget-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->trackedSummary:Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/FileSummaryLN;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->baseSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    iget-object v1, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->trackedSummary:Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/cleaner/FileSummary;->add(Lcom/sleepycat/je/cleaner/FileSummary;)V

    .line 371
    invoke-direct {p0}, Lcom/sleepycat/je/tree/FileSummaryLN;->getOffsets()V

    .line 373
    iget-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->trackedSummary:Lcom/sleepycat/je/cleaner/TrackedFileSummary;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/TrackedFileSummary;->reset()V

    .line 376
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/LN;->writeToLog(Ljava/nio/ByteBuffer;IZ)V

    .line 378
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/FileSummaryLN;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->baseSummary:Lcom/sleepycat/je/cleaner/FileSummary;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/cleaner/FileSummary;->writeToLog(Ljava/nio/ByteBuffer;)V

    .line 380
    iget-object v0, p0, Lcom/sleepycat/je/tree/FileSummaryLN;->obsoleteOffsets:Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/cleaner/PackedOffsets;->writeToLog(Ljava/nio/ByteBuffer;)V

    .line 382
    :cond_1
    return-void
.end method
