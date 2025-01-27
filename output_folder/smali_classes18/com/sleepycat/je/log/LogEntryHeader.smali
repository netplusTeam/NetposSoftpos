.class public Lcom/sleepycat/je/log/LogEntryHeader;
.super Ljava/lang/Object;
.source "LogEntryHeader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CHECKSUM_BYTES:I = 0x4

.field public static final ENTRYTYPE_OFFSET:I = 0x4

.field private static final FILE_HEADER_TYPE_NUM:B

.field static final FLAGS_OFFSET:I = 0x5

.field private static final IGNORE_INVISIBLE:B = -0x11t

.field private static final IGNORE_VERSION_6_FLAGS:B = 0x1ft

.field private static final INVISIBLE:B = 0x10t

.field private static final ITEMSIZE_OFFSET:I = 0xa

.field public static final MAX_HEADER_SIZE:I = 0x16

.field public static final MIN_HEADER_SIZE:I = 0xe

.field private static final PREV_OFFSET:I = 0x6

.field private static final PROVISIONAL_ALWAYS_MASK:B = -0x80t

.field private static final PROVISIONAL_BEFORE_CKPT_END_MASK:B = 0x40t

.field private static final REPLICATED_MASK:B = 0x20t

.field private static final VERSION_6_FLAGS:B = -0x20t

.field public static final VLSN_OFFSET:I = 0xe

.field private static final VLSN_PRESENT:B = 0x8t


# instance fields
.field private checksumVal:J

.field private final entryType:B

.field private entryVersion:I

.field private invisible:Z

.field private final itemSize:I

.field private prevOffset:J

.field private provisional:Lcom/sleepycat/je/log/Provisional;

.field private replicated:Z

.field private vlsn:Lcom/sleepycat/je/utilint/VLSN;

.field private vlsnPresent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    nop

    .line 108
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_FILE_HEADER:Lcom/sleepycat/je/log/LogEntryType;

    .line 109
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v0

    sput-byte v0, Lcom/sleepycat/je/log/LogEntryHeader;->FILE_HEADER_TYPE_NUM:B

    .line 108
    return-void
.end method

.method public constructor <init>(BIILcom/sleepycat/je/utilint/VLSN;)V
    .locals 3
    .param p1, "entryType"    # B
    .param p2, "entryVersion"    # I
    .param p3, "itemSize"    # I
    .param p4, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iput-byte p1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryType:B

    .line 264
    iput p2, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryVersion:I

    .line 265
    iput p3, p0, Lcom/sleepycat/je/log/LogEntryHeader;->itemSize:I

    .line 266
    iput-object p4, p0, Lcom/sleepycat/je/log/LogEntryHeader;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->replicated:Z

    .line 268
    iput-boolean v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->vlsnPresent:Z

    .line 269
    sget-object v0, Lcom/sleepycat/je/log/Provisional;->NO:Lcom/sleepycat/je/log/Provisional;

    iput-object v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->provisional:Lcom/sleepycat/je/log/Provisional;

    .line 270
    return-void

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vlsn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/Provisional;Lcom/sleepycat/je/log/ReplicationContext;)V
    .locals 4
    .param p1, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p2, "provisional"    # Lcom/sleepycat/je/log/Provisional;
    .param p3, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    invoke-interface {p1}, Lcom/sleepycat/je/log/entry/LogEntry;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    .line 225
    .local v0, "logEntryType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v1

    iput-byte v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryType:B

    .line 226
    const/16 v1, 0x11

    iput v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryVersion:I

    .line 227
    invoke-interface {p1}, Lcom/sleepycat/je/log/entry/LogEntry;->getSize()I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->itemSize:I

    .line 228
    iput-object p2, p0, Lcom/sleepycat/je/log/LogEntryHeader;->provisional:Lcom/sleepycat/je/log/Provisional;

    .line 230
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isReplicationPossible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    invoke-virtual {p3}, Lcom/sleepycat/je/log/ReplicationContext;->inReplicationStream()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should never be replicated."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 234
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isReplicationPossible()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 235
    invoke-virtual {p3}, Lcom/sleepycat/je/log/ReplicationContext;->inReplicationStream()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->replicated:Z

    goto :goto_1

    .line 237
    :cond_2
    iput-boolean v2, p0, Lcom/sleepycat/je/log/LogEntryHeader;->replicated:Z

    .line 239
    :goto_1
    iput-boolean v2, p0, Lcom/sleepycat/je/log/LogEntryHeader;->invisible:Z

    .line 247
    invoke-virtual {p3}, Lcom/sleepycat/je/log/ReplicationContext;->getClientVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    if-nez v1, :cond_3

    .line 248
    invoke-virtual {p3}, Lcom/sleepycat/je/log/ReplicationContext;->mustGenerateVLSN()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    iput-boolean v2, p0, Lcom/sleepycat/je/log/LogEntryHeader;->vlsnPresent:Z

    .line 249
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;IJ)V
    .locals 7
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I
    .param p3, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    const/16 v1, 0x11

    if-gt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 166
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readUnsignedInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->checksumVal:J

    .line 167
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryType:B

    .line 168
    invoke-static {v1}, Lcom/sleepycat/je/log/LogEntryType;->isValidType(B)Z

    move-result v2

    const-string v3, " bufRemaining="

    const-string v4, " bufPosition="

    const-string v5, " lsn="

    if-eqz v2, :cond_8

    .line 176
    sget-byte v2, Lcom/sleepycat/je/log/LogEntryHeader;->FILE_HEADER_TYPE_NUM:B

    if-ne v1, v2, :cond_2

    .line 178
    iput v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryVersion:I

    .line 180
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/log/LogEntryHeader;->initFlags(I)V

    goto :goto_1

    .line 183
    :cond_2
    if-eq p2, v0, :cond_7

    .line 193
    const/4 v0, 0x6

    if-gt p2, v0, :cond_4

    .line 195
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryVersion:I

    .line 196
    and-int/lit8 v1, v1, -0x20

    invoke-direct {p0, v1}, Lcom/sleepycat/je/log/LogEntryHeader;->initFlags(I)V

    .line 197
    iget v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryVersion:I

    and-int/lit8 v1, v1, 0x1f

    iput v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryVersion:I

    .line 199
    if-ne p2, v0, :cond_5

    if-ne v1, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 202
    :cond_4
    iput p2, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryVersion:I

    .line 203
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/log/LogEntryHeader;->initFlags(I)V

    .line 206
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readUnsignedInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->prevOffset:J

    .line 207
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->itemSize:I

    .line 208
    if-ltz v0, :cond_6

    .line 215
    return-void

    .line 209
    :cond_6
    new-instance v1, Lcom/sleepycat/je/log/ChecksumException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid log entry size: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/je/log/ChecksumException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_7
    new-instance v0, Lcom/sleepycat/je/log/ChecksumException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong entry type for header: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 191
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/log/ChecksumException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_8
    new-instance v0, Lcom/sleepycat/je/log/ChecksumException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid log entry type: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 173
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/log/ChecksumException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initFlags(I)V
    .locals 4
    .param p1, "entryFlags"    # I

    .line 273
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lcom/sleepycat/je/log/Provisional;->YES:Lcom/sleepycat/je/log/Provisional;

    iput-object v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->provisional:Lcom/sleepycat/je/log/Provisional;

    goto :goto_0

    .line 275
    :cond_0
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_1

    .line 276
    sget-object v0, Lcom/sleepycat/je/log/Provisional;->BEFORE_CKPT_END:Lcom/sleepycat/je/log/Provisional;

    iput-object v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->provisional:Lcom/sleepycat/je/log/Provisional;

    goto :goto_0

    .line 278
    :cond_1
    sget-object v0, Lcom/sleepycat/je/log/Provisional;->NO:Lcom/sleepycat/je/log/Provisional;

    iput-object v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->provisional:Lcom/sleepycat/je/log/Provisional;

    .line 280
    :goto_0
    and-int/lit8 v0, p1, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->replicated:Z

    .line 281
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/sleepycat/je/log/LogEntryHeader;->invisible:Z

    .line 282
    and-int/lit8 v3, p1, 0x8

    if-nez v3, :cond_5

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :cond_5
    :goto_3
    iput-boolean v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->vlsnPresent:Z

    .line 283
    return-void
.end method

.method static makeInvisible(B)B
    .locals 1
    .param p0, "flags"    # B

    .line 626
    or-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    return v0
.end method

.method public static turnOffInvisible(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "logHeaderStartPosition"    # I

    .line 638
    add-int/lit8 v0, p1, 0x5

    .line 639
    .local v0, "flagsPosition":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 640
    .local v1, "flags":B
    and-int/lit8 v2, v1, -0x11

    int-to-byte v1, v2

    .line 641
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 642
    return-void
.end method


# virtual methods
.method public addPostMarshallingInfo(Ljava/nio/ByteBuffer;JLcom/sleepycat/je/utilint/VLSN;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "lastOffset"    # J
    .param p4, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 448
    iput-wide p2, p0, Lcom/sleepycat/je/log/LogEntryHeader;->prevOffset:J

    .line 449
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 450
    iget-wide v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->prevOffset:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writeUnsignedInt(Ljava/nio/ByteBuffer;J)V

    .line 452
    if-eqz p4, :cond_0

    .line 453
    iput-object p4, p0, Lcom/sleepycat/je/log/LogEntryHeader;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 454
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 456
    invoke-virtual {p4, p1}, Lcom/sleepycat/je/utilint/VLSN;->writeToLog(Ljava/nio/ByteBuffer;)V

    .line 464
    :cond_0
    invoke-static {}, Lcom/sleepycat/je/utilint/Adler32;->makeChecksum()Ljava/util/zip/Checksum;

    move-result-object v0

    .line 465
    .local v0, "checksum":Ljava/util/zip/Checksum;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 466
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    .line 467
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    .line 465
    invoke-interface {v0, v1, v2, v3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 468
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 469
    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/je/log/LogEntryHeader;->checksumVal:J

    .line 470
    invoke-static {p1, v2, v3}, Lcom/sleepycat/je/log/LogUtils;->writeUnsignedInt(Ljava/nio/ByteBuffer;J)V

    .line 473
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 475
    return-object p1
.end method

.method convertCommitToAbort(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 534
    iget-byte v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryType:B

    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_COMMIT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v1

    if-ne v0, v1, :cond_0

    .line 537
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 540
    .local v0, "itemStart":I
    nop

    .line 541
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    sub-int v1, v0, v1

    .line 542
    .local v1, "entryTypePosition":I
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 543
    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_ABORT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 550
    invoke-static {}, Lcom/sleepycat/je/utilint/Adler32;->makeChecksum()Ljava/util/zip/Checksum;

    move-result-object v2

    .line 551
    .local v2, "checksum":Ljava/util/zip/Checksum;
    iget v3, p0, Lcom/sleepycat/je/log/LogEntryHeader;->itemSize:I

    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    add-int/2addr v3, v4

    .line 552
    .local v3, "checksumSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 553
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v1

    .line 552
    invoke-interface {v2, v4, v5, v3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 555
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 556
    invoke-interface {v2}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/log/LogEntryHeader;->checksumVal:J

    .line 557
    invoke-static {p1, v4, v5}, Lcom/sleepycat/je/log/LogUtils;->writeUnsignedInt(Ljava/nio/ByteBuffer;J)V

    .line 558
    return-void

    .line 534
    .end local v0    # "itemStart":I
    .end local v1    # "entryTypePosition":I
    .end local v2    # "checksum":Ljava/util/zip/Checksum;
    .end local v3    # "checksumSize":I
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 483
    const-string v0, "<hdr "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/log/LogEntryHeader;->dumpLogNoTag(Ljava/lang/StringBuilder;Z)V

    .line 485
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    return-void
.end method

.method dumpLogNoTag(Ljava/lang/StringBuilder;Z)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 496
    iget-byte v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryType:B

    invoke-static {v0}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    .line 498
    .local v0, "lastEntryType":Lcom/sleepycat/je/log/LogEntryType;
    const-string/jumbo v1, "type=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->toStringNoVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 499
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    iget-object v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->provisional:Lcom/sleepycat/je/log/Provisional;

    sget-object v2, Lcom/sleepycat/je/log/Provisional;->NO:Lcom/sleepycat/je/log/Provisional;

    if-eq v1, v2, :cond_0

    .line 501
    const-string v1, "\" prov=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget-object v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->provisional:Lcom/sleepycat/je/log/Provisional;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    if-eqz v1, :cond_1

    .line 506
    const-string v1, "\" "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-object v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/utilint/VLSN;->dumpLog(Ljava/lang/StringBuilder;Z)V

    goto :goto_0

    .line 509
    :cond_1
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryHeader;->getReplicated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 513
    const-string v1, " isReplicated=\"1\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_2
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 517
    const-string v1, " isInvisible=\"1\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_3
    const-string v1, " prev=\"0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/log/LogEntryHeader;->prevOffset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    if-eqz p2, :cond_4

    .line 522
    const-string v1, "\" size=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/log/LogEntryHeader;->itemSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 523
    const-string v1, "\" cksum=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/log/LogEntryHeader;->checksumVal:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 525
    :cond_4
    return-void
.end method

.method public dumpRep(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 572
    iget-byte v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryType:B

    invoke-static {v0}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    .line 574
    .local v0, "lastEntryType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->toStringNoVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 575
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 577
    iget-object v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    if-eqz v1, :cond_0

    .line 578
    const-string v1, " vlsn="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/log/LogEntryHeader;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 580
    :cond_0
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryHeader;->getReplicated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    const-string v1, " isReplicated=\"1\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 588
    const-string v1, " isInvisible=\"1\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_2
    return-void
.end method

.method public getChecksum()J
    .locals 2

    .line 294
    iget-wide v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->checksumVal:J

    return-wide v0
.end method

.method public getEntrySize()I
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getInvariantSizeMinusChecksum()I
    .locals 1

    .line 374
    const/16 v0, 0xa

    return v0
.end method

.method public getItemSize()I
    .locals 1

    .line 310
    iget v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->itemSize:I

    return v0
.end method

.method public getPrevOffset()J
    .locals 2

    .line 306
    iget-wide v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->prevOffset:J

    return-wide v0
.end method

.method public getProvisional()Lcom/sleepycat/je/log/Provisional;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->provisional:Lcom/sleepycat/je/log/Provisional;

    return-object v0
.end method

.method public getReplicated()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->replicated:Z

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 355
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->vlsnPresent:Z

    if-eqz v0, :cond_0

    .line 356
    const/16 v0, 0x16

    return v0

    .line 358
    :cond_0
    const/16 v0, 0xe

    return v0
.end method

.method getSizeMinusChecksum()I
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public getType()B
    .locals 1

    .line 298
    iget-byte v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryType:B

    return v0
.end method

.method public getVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public getVariablePortionSize()I
    .locals 1

    .line 348
    const/16 v0, 0x8

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 302
    iget v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryVersion:I

    return v0
.end method

.method public hasChecksum()Z
    .locals 1

    .line 344
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryHeader;->isErased()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isErased()Z
    .locals 2

    .line 340
    iget-byte v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryType:B

    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_ERASED:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvisible()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->invisible:Z

    return v0
.end method

.method public isVariableLength()Z
    .locals 1

    .line 619
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->vlsnPresent:Z

    return v0
.end method

.method public logicalEqualsIgnoreVersion(Lcom/sleepycat/je/log/LogEntryHeader;)Z
    .locals 4
    .param p1, "other"    # Lcom/sleepycat/je/log/LogEntryHeader;

    .line 605
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryHeader;->getReplicated()Z

    move-result v0

    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogEntryHeader;->getReplicated()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v0

    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVersion()I

    move-result v0

    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v1

    .line 609
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogEntryHeader;->getVersion()I

    move-result v2

    .line 610
    invoke-virtual {p1}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v3

    .line 608
    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/log/LogEntryType;->compareTypeAndVersion(IBIB)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 605
    :goto_0
    return v0
.end method

.method public readVariablePortion(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 382
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->vlsnPresent:Z

    if-eqz v0, :cond_0

    .line 383
    new-instance v0, Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v0}, Lcom/sleepycat/je/utilint/VLSN;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 384
    iget v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryVersion:I

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/utilint/VLSN;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 386
    :cond_0
    return-void
.end method

.method public setFileHeaderVersion(I)V
    .locals 0
    .param p1, "logVersion"    # I

    .line 290
    iput p1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryVersion:I

    .line 291
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/log/LogEntryHeader;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 564
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 398
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 399
    iget-byte v0, p0, Lcom/sleepycat/je/log/LogEntryHeader;->entryType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "flags":B
    iget-object v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->provisional:Lcom/sleepycat/je/log/Provisional;

    sget-object v2, Lcom/sleepycat/je/log/Provisional;->YES:Lcom/sleepycat/je/log/Provisional;

    if-ne v1, v2, :cond_0

    .line 404
    or-int/lit8 v1, v0, -0x80

    int-to-byte v0, v1

    goto :goto_0

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->provisional:Lcom/sleepycat/je/log/Provisional;

    sget-object v2, Lcom/sleepycat/je/log/Provisional;->BEFORE_CKPT_END:Lcom/sleepycat/je/log/Provisional;

    if-ne v1, v2, :cond_1

    .line 406
    or-int/lit8 v1, v0, 0x40

    int-to-byte v0, v1

    .line 408
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->replicated:Z

    if-eqz v1, :cond_2

    .line 409
    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    .line 411
    :cond_2
    iget-boolean v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->vlsnPresent:Z

    if-eqz v1, :cond_3

    .line 412
    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 414
    :cond_3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 420
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 421
    iget v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->itemSize:I

    invoke-static {p1, v1}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 427
    iget-boolean v1, p0, Lcom/sleepycat/je/log/LogEntryHeader;->vlsnPresent:Z

    if-eqz v1, :cond_4

    .line 428
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 430
    :cond_4
    return-void
.end method
