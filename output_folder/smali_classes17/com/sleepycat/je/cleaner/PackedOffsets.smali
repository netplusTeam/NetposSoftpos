.class public Lcom/sleepycat/je/cleaner/PackedOffsets;
.super Ljava/lang/Object;
.source "PackedOffsets.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private data:[S

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/PackedOffsets;->getExtraMemorySize()I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/cleaner/PackedOffsets;)[S
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/PackedOffsets;

    .line 31
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/PackedOffsets;->data:[S

    return-object v0
.end method

.method private append([SIJ)I
    .locals 5
    .param p1, "to"    # [S
    .param p2, "index"    # I
    .param p3, "val"    # J

    .line 99
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    .line 102
    :goto_0
    const-wide/16 v2, 0x7fff

    and-long/2addr v2, p3

    long-to-int v2, v2

    int-to-short v2, v2

    .line 103
    .local v2, "s":S
    const/16 v3, 0xf

    ushr-long/2addr p3, v3

    .line 104
    cmp-long v3, p3, v0

    if-lez v3, :cond_0

    .line 105
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "index":I
    .local v3, "index":I
    rsub-int/lit8 v4, v2, -0x1

    int-to-short v4, v4

    aput-short v4, p1, p2

    .line 110
    .end local v2    # "s":S
    move p2, v3

    goto :goto_0

    .line 107
    .end local v3    # "index":I
    .restart local v2    # "s":S
    .restart local p2    # "index":I
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "index":I
    .local v0, "index":I
    aput-short v2, p1, p2

    .line 108
    nop

    .line 111
    .end local v2    # "s":S
    return v0

    .line 99
    .end local v0    # "index":I
    .restart local p2    # "index":I
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 3
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 205
    iget v0, p0, Lcom/sleepycat/je/cleaner/PackedOffsets;->size:I

    if-lez v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/PackedOffsets;->iterator()Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;

    move-result-object v0

    .line 207
    .local v0, "i":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    const-string v1, "<offsets size=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget v1, p0, Lcom/sleepycat/je/cleaner/PackedOffsets;->size:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, "\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    const-string v1, "0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->next()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 215
    :cond_0
    const-string v1, "</offsets>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .end local v0    # "i":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    goto :goto_1

    .line 217
    :cond_1
    const-string v0, "<offsets size=\"0\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :goto_1
    return-void
.end method

.method public getExtraMemorySize()I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/PackedOffsets;->data:[S

    if-eqz v0, :cond_0

    .line 151
    array-length v0, v0

    invoke-static {v0}, Lcom/sleepycat/je/dbi/MemoryBudget;->shortArraySize(I)I

    move-result v0

    return v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLogSize()I
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/PackedOffsets;->data:[S

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 163
    .local v0, "len":I
    :goto_0
    iget v1, p0, Lcom/sleepycat/je/cleaner/PackedOffsets;->size:I

    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v1

    .line 164
    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    .line 163
    return v1
.end method

.method public getTransactionId()J
    .locals 2

    .line 226
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method iterator()Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    .locals 2

    .line 52
    new-instance v0, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;-><init>(Lcom/sleepycat/je/cleaner/PackedOffsets;Lcom/sleepycat/je/cleaner/PackedOffsets$1;)V

    return-object v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public pack([J)V
    .locals 9
    .param p1, "offsets"    # [J

    .line 61
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [S

    .line 64
    .local v0, "newData":[S
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "dataIndex":I
    const-wide/16 v2, 0x0

    .line 67
    .local v2, "priorVal":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 68
    aget-wide v5, p1, v4

    .line 69
    .local v5, "val":J
    sub-long v7, v5, v2

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/sleepycat/je/cleaner/PackedOffsets;->append([SIJ)I

    move-result v1

    .line 70
    move-wide v2, v5

    .line 67
    .end local v5    # "val":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    .end local v4    # "i":I
    :cond_0
    new-array v4, v1, [S

    iput-object v4, p0, Lcom/sleepycat/je/cleaner/PackedOffsets;->data:[S

    .line 75
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    array-length v4, p1

    iput v4, p0, Lcom/sleepycat/je/cleaner/PackedOffsets;->size:I

    .line 77
    return-void
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 189
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 190
    .local v0, "unpacked":Z
    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/cleaner/PackedOffsets;->size:I

    .line 191
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v1

    .line 192
    .local v1, "len":I
    if-lez v1, :cond_1

    .line 193
    new-array v2, v1, [S

    iput-object v2, p0, Lcom/sleepycat/je/cleaner/PackedOffsets;->data:[S

    .line 194
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 195
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/PackedOffsets;->data:[S

    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readShort(Ljava/nio/ByteBuffer;)S

    move-result v4

    aput-short v4, v3, v2

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 198
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method toArray()[J
    .locals 6

    .line 83
    iget v0, p0, Lcom/sleepycat/je/cleaner/PackedOffsets;->size:I

    new-array v0, v0, [J

    .line 84
    .local v0, "offsets":[J
    const/4 v1, 0x0

    .line 85
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/PackedOffsets;->iterator()Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;

    move-result-object v2

    .line 86
    .local v2, "iter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    :goto_0
    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "index":I
    .local v3, "index":I
    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->next()J

    move-result-wide v4

    aput-wide v4, v0, v1

    move v1, v3

    goto :goto_0

    .line 89
    .end local v3    # "index":I
    .restart local v1    # "index":I
    :cond_0
    iget v3, p0, Lcom/sleepycat/je/cleaner/PackedOffsets;->size:I

    if-ne v1, v3, :cond_1

    .line 90
    return-object v0

    .line 89
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/cleaner/PackedOffsets;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 173
    iget v0, p0, Lcom/sleepycat/je/cleaner/PackedOffsets;->size:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 174
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/PackedOffsets;->data:[S

    if-eqz v0, :cond_1

    .line 175
    array-length v0, v0

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/PackedOffsets;->data:[S

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 177
    aget-short v1, v1, v0

    invoke-static {p1, v1}, Lcom/sleepycat/je/log/LogUtils;->writeShort(Ljava/nio/ByteBuffer;S)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 180
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 182
    :goto_1
    return-void
.end method
