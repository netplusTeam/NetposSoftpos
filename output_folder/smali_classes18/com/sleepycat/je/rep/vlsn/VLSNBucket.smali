.class public Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
.super Ljava/lang/Object;
.source "VLSNBucket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;,
        Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;,
        Lcom/sleepycat/je/rep/vlsn/VLSNBucket$VLSNBucketBinding;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final NO_OFFSET:I = 0x0

.field private static final VERSION:I = 0x1


# instance fields
.field private closed:Z

.field dirty:Z

.field private final fileNumber:J

.field private fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private lastLsn:J

.field protected lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private maxDistance:I

.field private maxMappings:I

.field private final stride:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 101
    return-void
.end method

.method constructor <init>(JIIILcom/sleepycat/je/utilint/VLSN;)V
    .locals 3
    .param p1, "fileNumber"    # J
    .param p3, "stride"    # I
    .param p4, "maxMappings"    # I
    .param p5, "maxDistance"    # I
    .param p6, "firstVLSN"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 113
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->closed:Z

    .line 147
    iput-wide p1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileNumber:J

    .line 148
    iput p3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->stride:I

    .line 149
    iput p4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->maxMappings:I

    .line 150
    iput p5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->maxDistance:I

    .line 157
    iput-object p6, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 158
    iput-object p6, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 164
    new-instance v1, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-direct {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->add(ILjava/lang/Object;)V

    .line 166
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/bind/tuple/TupleInput;)V
    .locals 5
    .param p1, "ti"    # Lcom/sleepycat/bind/tuple/TupleInput;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 113
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->closed:Z

    .line 170
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileNumber:J

    .line 171
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->stride:I

    .line 172
    new-instance v0, Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 173
    new-instance v0, Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 174
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J

    .line 175
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v0

    .line 176
    .local v0, "size":I
    new-instance v1, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-direct {v1, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;-><init>(I)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 178
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readUnsignedInt()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffsetAsInt(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->add(ILjava/lang/Object;)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/je/rep/vlsn/VLSNBucket$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/bind/tuple/TupleInput;
    .param p2, "x1"    # Lcom/sleepycat/je/rep/vlsn/VLSNBucket$1;

    .line 101
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;-><init>(Lcom/sleepycat/bind/tuple/TupleInput;)V

    return-void
.end method

.method private belongs(Lcom/sleepycat/je/utilint/VLSN;J)Z
    .locals 8
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "lsn"    # J

    .line 273
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-ltz v0, :cond_7

    .line 276
    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileNumber:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 278
    return v1

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->emptyInternal()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 282
    return v2

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-lez v0, :cond_2

    .line 290
    return v2

    .line 293
    :cond_2
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->isModulo(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    .line 294
    .local v0, "onStrideBoundary":Z
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v3

    iget v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->maxMappings:I

    if-lt v3, v4, :cond_3

    .line 296
    return v1

    .line 303
    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getIndex(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v4

    if-eq v3, v4, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 304
    invoke-virtual {v3, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v3

    if-gez v3, :cond_6

    .line 306
    :cond_5
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 307
    .local v3, "lastOffset":I
    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v4

    .line 308
    invoke-static {v3}, Lcom/sleepycat/je/utilint/DbLsn;->convertIntFileOffsetToLong(I)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->maxDistance:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 311
    return v1

    .line 315
    .end local v3    # "lastOffset":I
    :cond_6
    return v2

    .line 273
    .end local v0    # "onStrideBoundary":Z
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstVLSN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should not be greater than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private emptyInternal()Z
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private findPopulatedIndex(IZ)I
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "forward"    # Z

    .line 450
    if-eqz p2, :cond_2

    .line 451
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    return v0

    .line 451
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 457
    :cond_2
    move v0, p1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 458
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    .line 459
    return v0

    .line 457
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 463
    .end local v0    # "i":I
    :cond_4
    :goto_2
    return p1
.end method

.method private getGTEIndex(Lcom/sleepycat/je/utilint/VLSN;)I
    .locals 7
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 440
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 441
    .local v0, "diff":J
    iget v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->stride:I

    add-int/lit8 v3, v2, -0x1

    int-to-long v3, v3

    add-long/2addr v3, v0

    int-to-long v5, v2

    div-long/2addr v3, v5

    long-to-int v2, v3

    return v2
.end method

.method private getIndex(Lcom/sleepycat/je/utilint/VLSN;)I
    .locals 4
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 263
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->isModulo(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->stride:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t call getIndex on non-modulo VLSN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bucket="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private isModulo(Lcom/sleepycat/je/utilint/VLSN;)Z
    .locals 4
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 258
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->stride:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .locals 2
    .param p0, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 901
    new-instance v0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$VLSNBucketBinding;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$VLSNBucketBinding;-><init>(Lcom/sleepycat/je/rep/vlsn/VLSNBucket$1;)V

    .line 902
    .local v0, "mapperBinding":Lcom/sleepycat/je/rep/vlsn/VLSNBucket$VLSNBucketBinding;
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$VLSNBucketBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 903
    .local v1, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    return-object v1
.end method

.method private scanForNewBucket(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;J)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .locals 17
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "first"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "last"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p4, "startLsn"    # J

    .line 671
    move-object/from16 v0, p0

    new-instance v8, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    iget-wide v2, v0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileNumber:J

    iget v4, v0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->stride:I

    iget v5, v0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->maxMappings:I

    iget v6, v0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->maxDistance:I

    move-object v1, v8

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;-><init>(JIIILcom/sleepycat/je/utilint/VLSN;)V

    .line 674
    .local v1, "newBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    nop

    .line 675
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_ITERATOR_MAX_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 676
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v2

    .line 678
    .local v2, "readBufferSize":I
    new-instance v3, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;

    move-object v9, v3

    move-object v10, v1

    move-object/from16 v11, p1

    move v12, v2

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-wide/from16 v15, p4

    invoke-direct/range {v9 .. v16}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;-><init>(Lcom/sleepycat/je/rep/vlsn/VLSNBucket;Lcom/sleepycat/je/dbi/EnvironmentImpl;ILcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 682
    .local v3, "scanner":Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;
    :goto_0
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->readNextEntry()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 687
    return-object v1

    .line 685
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method


# virtual methods
.method close()V
    .locals 1

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->closed:Z

    .line 823
    return-void
.end method

.method public dump(Ljava/io/PrintStream;)V
    .locals 10
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 928
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    if-nez v0, :cond_0

    .line 929
    return-void

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    .line 933
    .local v0, "vlsnVal":J
    const/4 v2, 0x0

    .line 934
    .local v2, "newlineCounter":I
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 935
    .local v4, "offset":Ljava/lang/Integer;
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v5

    .line 936
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/sleepycat/je/utilint/DbLsn;->convertIntFileOffsetToLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v7

    .line 935
    const-string v5, " [%d 0x%x]"

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 938
    iget v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->stride:I

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 939
    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x6

    if-le v2, v5, :cond_1

    .line 940
    const-string v5, "\n"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 941
    const/4 v2, 0x0

    .line 943
    .end local v4    # "offset":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 945
    :cond_2
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    aput-object v4, v3, v5

    iget-wide v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J

    .line 946
    invoke-static {v4, v5}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 945
    const-string v4, "\n---------Last: VLSN=%s LSN=%s"

    invoke-virtual {p1, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 947
    return-void
.end method

.method declared-synchronized empty()Z
    .locals 1

    monitor-enter p0

    .line 360
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->emptyInternal()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 360
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method fillDataEntry(Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p1, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 907
    new-instance v0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$VLSNBucketBinding;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$VLSNBucketBinding;-><init>(Lcom/sleepycat/je/rep/vlsn/VLSNBucket$1;)V

    .line 908
    .local v0, "binding":Lcom/sleepycat/je/rep/vlsn/VLSNBucket$VLSNBucketBinding;
    invoke-virtual {v0, p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$VLSNBucketBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 909
    return-void
.end method

.method follows(Lcom/sleepycat/je/utilint/VLSN;)Z
    .locals 1
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 369
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method declared-synchronized getFirst()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    monitor-enter p0

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 333
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getGTEFileNumber()J
    .locals 2

    .line 356
    iget-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileNumber:J

    return-wide v0
.end method

.method public declared-synchronized getGTELsn(Lcom/sleepycat/je/utilint/VLSN;)J
    .locals 5
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 400
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 409
    const/4 v0, 0x0

    .local v0, "index":I
    goto :goto_0

    .line 411
    .end local v0    # "index":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getGTEIndex(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    .line 418
    .restart local v0    # "index":I
    :goto_0
    if-ltz v0, :cond_4

    .line 425
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 426
    iget-wide v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v1

    .line 428
    :cond_2
    const/4 v1, 0x1

    :try_start_2
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->findPopulatedIndex(IZ)I

    move-result v1

    .line 429
    .local v1, "useIndex":I
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 430
    .local v2, "offset":I
    if-nez v2, :cond_3

    iget-wide v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J

    goto :goto_1

    :cond_3
    iget-wide v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileNumber:J

    .line 431
    invoke-static {v3, v4, v2}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 430
    :goto_1
    monitor-exit p0

    return-wide v3

    .line 419
    .end local v1    # "useIndex":I
    .end local v2    # "offset":I
    :cond_4
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vlsn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bucket="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 394
    .end local v0    # "index":I
    .end local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getLTEFileNumber()J
    .locals 2

    .line 348
    iget-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileNumber:J

    return-wide v0
.end method

.method declared-synchronized getLTELsn(Lcom/sleepycat/je/utilint/VLSN;)J
    .locals 8
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    monitor-enter p0

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 492
    iget-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 495
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 501
    .local v0, "diff":J
    iget v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->stride:I

    int-to-long v2, v2

    div-long v2, v0, v2

    long-to-int v2, v2

    .line 502
    .local v2, "index":I
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 503
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 506
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->findPopulatedIndex(IZ)I

    move-result v3

    .line 507
    .local v3, "useIndex":I
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 509
    .local v4, "offset":I
    if-eqz v4, :cond_2

    .line 512
    iget-wide v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileNumber:J

    invoke-static {v5, v6, v4}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v5

    .line 509
    :cond_2
    :try_start_2
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bucket should always have a non-null first offset. vlsn= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bucket="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    .end local v0    # "diff":J
    .end local v2    # "index":I
    .end local v3    # "useIndex":I
    .end local v4    # "offset":I
    .end local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getLast()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    monitor-enter p0

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 337
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getLastLsn()J
    .locals 2

    monitor-enter p0

    .line 545
    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 545
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLsn(Lcom/sleepycat/je/utilint/VLSN;)J
    .locals 4
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    monitor-enter p0

    .line 521
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->owns(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 523
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 527
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->isModulo(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    .line 528
    monitor-exit p0

    return-wide v1

    .line 531
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getIndex(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    .line 532
    .local v0, "index":I
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v0, v3, :cond_2

    .line 533
    monitor-exit p0

    return-wide v1

    .line 536
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v3, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 537
    .local v3, "offset":I
    if-nez v3, :cond_3

    .line 538
    monitor-exit p0

    return-wide v1

    .line 541
    :cond_3
    :try_start_4
    iget-wide v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileNumber:J

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-wide v1

    .line 520
    .end local v0    # "index":I
    .end local v3    # "offset":I
    .end local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 521
    .restart local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :cond_4
    :try_start_5
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vlsn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 520
    .end local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method getNumOffsets()I
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v0

    return v0
.end method

.method isGhost()Z
    .locals 1

    .line 950
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized owns(Lcom/sleepycat/je/utilint/VLSN;)Z
    .locals 3
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    monitor-enter p0

    .line 322
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    monitor-exit p0

    return v1

    .line 324
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 325
    monitor-exit p0

    return v1

    .line 327
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 328
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ltz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_2
    nop

    .line 327
    :goto_0
    monitor-exit p0

    return v1

    .line 321
    .end local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method precedes(Lcom/sleepycat/je/utilint/VLSN;)Z
    .locals 2
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 373
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 374
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 373
    :goto_0
    return v0
.end method

.method declared-synchronized put(Lcom/sleepycat/je/utilint/VLSN;J)Z
    .locals 7
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "lsn"    # J

    monitor-enter p0

    .line 214
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 215
    monitor-exit p0

    return v1

    .line 218
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->belongs(Lcom/sleepycat/je/utilint/VLSN;J)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 219
    monitor-exit p0

    return v1

    .line 226
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->isModulo(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 227
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getIndex(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    .line 228
    .local v0, "index":I
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v3

    .line 229
    .local v3, "listLen":I
    if-ge v0, v3, :cond_2

    .line 230
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffsetAsInt(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 231
    .end local p0    # "this":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_2
    if-ne v0, v3, :cond_3

    .line 232
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffsetAsInt(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    :cond_3
    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 235
    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 237
    .end local v4    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffsetAsInt(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->add(Ljava/lang/Object;)Z

    .line 239
    :goto_1
    iput-boolean v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->dirty:Z

    .line 243
    .end local v0    # "index":I
    .end local v3    # "listLen":I
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-ltz v0, :cond_6

    iget-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_7

    .line 245
    :cond_6
    iput-object p1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 246
    iput-wide p2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J

    .line 247
    iput-boolean v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->dirty:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    :cond_7
    monitor-exit p0

    return v2

    .line 213
    .end local p1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "lsn":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method removeFromHead(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .locals 13
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "lastDuplicate"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 578
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 579
    return-object v1

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p2, v0}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-gez v0, :cond_1

    .line 587
    return-object v1

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, p2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 595
    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    .line 596
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 597
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 598
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J

    .line 599
    return-object v1

    .line 602
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 603
    .local v0, "indexVLSN":Lcom/sleepycat/je/utilint/VLSN;
    const/4 v1, -0x1

    .line 610
    .local v1, "newFirstIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 611
    invoke-virtual {v0, p2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    .line 612
    invoke-virtual {v3, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_3

    .line 613
    move v1, v2

    .line 614
    goto :goto_1

    .line 616
    :cond_3
    new-instance v3, Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v4

    iget v6, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->stride:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    move-object v0, v3

    .line 610
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 619
    .end local v2    # "i":I
    :cond_4
    :goto_1
    const/4 v2, 0x0

    .line 621
    .local v2, "remainder":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_5

    .line 628
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 629
    .local v3, "lastOffset":I
    new-instance v5, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-direct {v5}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;-><init>()V

    iput-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    .line 630
    iget-wide v6, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J

    invoke-static {v6, v7}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffsetAsInt(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    goto :goto_2

    .line 634
    .end local v3    # "lastOffset":I
    :cond_5
    if-lez v1, :cond_7

    .line 635
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v5}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 636
    .restart local v3    # "lastOffset":I
    new-instance v5, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    iget-object v6, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    .line 638
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v7

    invoke-virtual {v6, v1, v7}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;-><init>(Ljava/util/List;)V

    .line 639
    .local v5, "newFileOffsets":Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;, "Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList<Ljava/lang/Integer;>;"
    iput-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    .line 640
    new-instance v6, Lcom/sleepycat/je/utilint/VLSN;

    iget v7, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->stride:I

    mul-int/2addr v7, v1

    int-to-long v7, v7

    iget-object v9, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 641
    invoke-virtual {v9}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-direct {v6, v7, v8}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    iput-object v6, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 644
    .end local v5    # "newFileOffsets":Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;, "Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList<Ljava/lang/Integer;>;"
    :goto_2
    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 652
    iget-wide v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileNumber:J

    invoke-static {v5, v6, v3}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v5

    .line 653
    .local v5, "scanStart":J
    nop

    .line 654
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v9

    iget-object v7, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 655
    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/VLSN;->getPrev()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v10

    .line 653
    move-object v7, p0

    move-object v8, p1

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->scanForNewBucket(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;J)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v2

    .line 659
    .end local v5    # "scanStart":J
    :cond_6
    iput-boolean v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->dirty:Z

    .line 660
    return-object v2

    .line 634
    .end local v3    # "lastOffset":I
    :cond_7
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method removeFromTail(Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 8
    .param p1, "startOfDelete"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "prevLsn"    # J

    .line 741
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    return-void

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-gez v0, :cond_1

    .line 746
    return-void

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    const-wide/16 v1, -0x1

    if-ltz v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 752
    iput-wide v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J

    .line 753
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->clear()V

    .line 754
    return-void

    .line 758
    :cond_2
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getGTEIndex(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    .line 766
    .local v0, "deleteIndex":I
    if-lez v0, :cond_8

    .line 774
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v0, v3, :cond_4

    .line 780
    cmp-long v3, p2, v1

    if-nez v3, :cond_3

    .line 781
    add-int/lit8 v3, v0, -0x1

    .line 782
    invoke-direct {p0, v3, v4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->findPopulatedIndex(IZ)I

    move-result v3

    .line 783
    .local v3, "lastPopulatedIndex":I
    add-int/lit8 v4, v0, -0x1

    if-eq v3, v4, :cond_3

    .line 784
    add-int/lit8 v0, v3, 0x1

    .line 787
    .end local v3    # "lastPopulatedIndex":I
    :cond_3
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v3, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->truncate(I)V

    goto :goto_0

    .line 793
    :cond_4
    cmp-long v3, p2, v1

    if-nez v3, :cond_5

    .line 794
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    .line 795
    .local v3, "lastIndex":I
    invoke-direct {p0, v3, v4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->findPopulatedIndex(IZ)I

    move-result v4

    .line 796
    .local v4, "lastPopulatedIndex":I
    if-ge v4, v3, :cond_5

    .line 797
    iget-object v6, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v6, v4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->truncate(I)V

    .line 803
    .end local v3    # "lastIndex":I
    .end local v4    # "lastPopulatedIndex":I
    :cond_5
    :goto_0
    cmp-long v1, p2, v1

    if-nez v1, :cond_7

    .line 804
    new-instance v1, Lcom/sleepycat/je/utilint/VLSN;

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    iget v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->stride:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 805
    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v6

    add-long/2addr v2, v6

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 806
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 807
    .local v1, "lastOffset":Ljava/lang/Integer;
    if-eqz v1, :cond_6

    .line 808
    iget-wide v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileNumber:J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J

    .line 809
    .end local v1    # "lastOffset":Ljava/lang/Integer;
    goto :goto_1

    .line 807
    .restart local v1    # "lastOffset":Ljava/lang/Integer;
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 810
    .end local v1    # "lastOffset":Ljava/lang/Integer;
    :cond_7
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getPrev()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 811
    iput-wide p2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J

    .line 813
    :goto_1
    iput-boolean v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->dirty:Z

    .line 814
    return-void

    .line 767
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startOfDelete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bucket="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 768
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 916
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileNumber:J

    .line 918
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileNumber:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    if-nez v1, :cond_0

    goto :goto_0

    .line 919
    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    iget v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->stride:I

    .line 920
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J

    .line 921
    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 916
    const-string v1, "<VLSNBucket fileNum=%d(0x%x) numOffsets=%d stride=%d firstVLSN=%s lastVLSN=%s lastLsn=%s/>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeToDatabase(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/Cursor;)V
    .locals 7
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "cursor"    # Lcom/sleepycat/je/Cursor;

    .line 873
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->dirty:Z

    if-nez v0, :cond_0

    .line 874
    return-void

    .line 877
    :cond_0
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 878
    .local v0, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 880
    .local v1, "data":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/sleepycat/bind/tuple/LongBinding;->longToEntry(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 881
    new-instance v2, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$VLSNBucketBinding;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$VLSNBucketBinding;-><init>(Lcom/sleepycat/je/rep/vlsn/VLSNBucket$1;)V

    .line 882
    .local v2, "bucketBinding":Lcom/sleepycat/je/rep/vlsn/VLSNBucket$VLSNBucketBinding;
    invoke-virtual {v2, p0, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$VLSNBucketBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 884
    invoke-static {p2}, Lcom/sleepycat/je/DbInternal;->getCursorImpl(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/dbi/CursorImpl;->setAllowEviction(Z)V

    .line 885
    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    .line 887
    .local v3, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v5, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v3, v5, :cond_1

    .line 892
    iput-boolean v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->dirty:Z

    .line 893
    return-void

    .line 888
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write VLSNBucket for file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileNumber:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 889
    invoke-static {p1, v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4
.end method

.method writeToDatabase(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "bucketDbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "txn"    # Lcom/sleepycat/je/txn/Txn;

    .line 832
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->dirty:Z

    if-nez v0, :cond_0

    .line 833
    return-void

    .line 836
    :cond_0
    const/4 v0, 0x0

    .line 838
    .local v0, "c":Lcom/sleepycat/je/Cursor;
    :try_start_0
    sget-object v1, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    invoke-static {p2, p3, v1}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 841
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->writeToDatabase(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    if-eqz v0, :cond_1

    .line 844
    invoke-virtual {v0}, Lcom/sleepycat/je/Cursor;->close()V

    .line 847
    :cond_1
    return-void

    .line 843
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 844
    invoke-virtual {v0}, Lcom/sleepycat/je/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method writeToTupleOutput(Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 4
    .param p1, "to"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 955
    iget-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileNumber:J

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 956
    iget v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->stride:I

    invoke-virtual {p1, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 957
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 958
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 959
    iget-wide v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->lastLsn:J

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 960
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 961
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->fileOffsets:Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$TruncateableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 962
    .local v1, "offset":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/sleepycat/je/utilint/DbLsn;->convertIntFileOffsetToLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeUnsignedInt(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 963
    .end local v1    # "offset":Ljava/lang/Integer;
    goto :goto_0

    .line 964
    :cond_0
    return-void
.end method
