.class Lcom/sleepycat/je/evictor/CHeapAllocator;
.super Ljava/lang/Object;
.source "CHeapAllocator.java"

# interfaces
.implements Lcom/sleepycat/je/evictor/OffHeapAllocator;


# static fields
.field private static final CHECK_BOUNDS:Z = true

.field private static final SIZE_BYTES:I = 0x4


# instance fields
.field private final unsafe:Lsun/misc/Unsafe;

.field private final usedBytes:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/evictor/CHeapAllocator;->usedBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 56
    :try_start_0
    const-class v0, Lsun/misc/Unsafe;

    const-string/jumbo v1, "theUnsafe"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 57
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/misc/Unsafe;

    iput-object v2, p0, Lcom/sleepycat/je/evictor/CHeapAllocator;->unsafe:Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v0    # "field":Ljava/lang/reflect/Field;
    nop

    .line 64
    if-eqz v2, :cond_2

    .line 73
    sget v0, Lsun/misc/Unsafe;->ARRAY_BYTE_INDEX_SCALE:I

    if-ne v0, v1, :cond_1

    .line 78
    sget v0, Lsun/misc/Unsafe;->ARRAY_INT_INDEX_SCALE:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 83
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Unsafe.ARRAY_INT_INDEX_SCALE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lsun/misc/Unsafe;->ARRAY_INT_INDEX_SCALE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Unsafe.ARRAY_BYTE_INDEX_SCALE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lsun/misc/Unsafe;->ARRAY_BYTE_INDEX_SCALE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsafe singleton is null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unable to get Unsafe object"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private addOverhead(I)I
    .locals 1
    .param p1, "allocSize"    # I

    .line 122
    rem-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x10

    add-int/2addr p1, v0

    .line 125
    const/16 v0, 0x18

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method public allocate(I)J
    .locals 10
    .param p1, "size"    # I

    .line 98
    add-int/lit8 v0, p1, 0x4

    .line 99
    .local v0, "allocSize":I
    iget-object v1, p0, Lcom/sleepycat/je/evictor/CHeapAllocator;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v1

    .line 101
    .local v1, "memId":J
    iget-object v3, p0, Lcom/sleepycat/je/evictor/CHeapAllocator;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v3, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(JI)V

    .line 102
    iget-object v4, p0, Lcom/sleepycat/je/evictor/CHeapAllocator;->unsafe:Lsun/misc/Unsafe;

    const-wide/16 v5, 0x4

    add-long/2addr v5, v1

    int-to-long v7, p1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->setMemory(JJB)V

    .line 103
    iget-object v3, p0, Lcom/sleepycat/je/evictor/CHeapAllocator;->usedBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/evictor/CHeapAllocator;->addOverhead(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 105
    return-wide v1
.end method

.method public copy(JIJII)V
    .locals 20
    .param p1, "fromMemId"    # J
    .param p3, "fromMemOff"    # I
    .param p4, "toMemId"    # J
    .param p6, "toMemOff"    # I
    .param p7, "len"    # I

    .line 208
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p4

    move/from16 v4, p6

    move/from16 v5, p7

    const-wide/16 v6, 0x0

    cmp-long v8, p1, v6

    if-eqz v8, :cond_2

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2

    .line 211
    const-string v6, " copyLen="

    const-string v7, " memSize="

    const-string v8, "memOff="

    if-ltz v1, :cond_1

    add-int v9, v1, v5

    invoke-virtual/range {p0 .. p2}, Lcom/sleepycat/je/evictor/CHeapAllocator;->size(J)I

    move-result v10

    if-gt v9, v10, :cond_1

    .line 217
    if-ltz v4, :cond_0

    add-int v9, v4, v5

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/evictor/CHeapAllocator;->size(J)I

    move-result v10

    if-gt v9, v10, :cond_0

    .line 225
    iget-object v11, v0, Lcom/sleepycat/je/evictor/CHeapAllocator;->unsafe:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const-wide/16 v6, 0x4

    add-long v8, p1, v6

    int-to-long v13, v1

    add-long/2addr v13, v8

    const/4 v15, 0x0

    add-long/2addr v6, v2

    int-to-long v8, v4

    add-long v16, v6, v8

    int-to-long v6, v5

    move-wide/from16 v18, v6

    invoke-virtual/range {v11 .. v19}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 229
    return-void

    .line 218
    :cond_0
    new-instance v9, Ljava/lang/IndexOutOfBoundsException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 220
    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/evictor/CHeapAllocator;->size(J)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 212
    :cond_1
    new-instance v9, Ljava/lang/IndexOutOfBoundsException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 214
    invoke-virtual/range {p0 .. p2}, Lcom/sleepycat/je/evictor/CHeapAllocator;->size(J)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 209
    :cond_2
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "memId is 0"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public copy(JI[BII)V
    .locals 14
    .param p1, "memId"    # J
    .param p3, "memOff"    # I
    .param p4, "buf"    # [B
    .param p5, "bufOff"    # I
    .param p6, "len"    # I

    .line 144
    move/from16 v0, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_3

    .line 147
    if-eqz v10, :cond_2

    .line 150
    const-string v1, " copyLen="

    if-ltz v0, :cond_1

    add-int v2, v0, v12

    invoke-virtual/range {p0 .. p2}, Lcom/sleepycat/je/evictor/CHeapAllocator;->size(J)I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 156
    if-ltz v11, :cond_0

    add-int v2, v11, v12

    array-length v3, v10

    if-gt v2, v3, :cond_0

    .line 164
    move-object v13, p0

    iget-object v1, v13, Lcom/sleepycat/je/evictor/CHeapAllocator;->unsafe:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    const-wide/16 v3, 0x4

    add-long/2addr v3, p1

    int-to-long v5, v0

    add-long/2addr v3, v5

    sget v5, Lsun/misc/Unsafe;->ARRAY_BYTE_BASE_OFFSET:I

    add-int/2addr v5, v11

    int-to-long v6, v5

    int-to-long v8, v12

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 168
    return-void

    .line 156
    :cond_0
    move-object v13, p0

    .line 157
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bufOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bufSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_1
    move-object v13, p0

    .line 151
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "memOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " memSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 153
    invoke-virtual/range {p0 .. p2}, Lcom/sleepycat/je/evictor/CHeapAllocator;->size(J)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_2
    move-object v13, p0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "buf is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_3
    move-object v13, p0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "memId is 0"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public copy([BIJII)V
    .locals 16
    .param p1, "buf"    # [B
    .param p2, "bufOff"    # I
    .param p3, "memId"    # J
    .param p5, "memOff"    # I
    .param p6, "len"    # I

    .line 174
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-wide/from16 v12, p3

    move/from16 v14, p5

    move/from16 v15, p6

    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-eqz v1, :cond_3

    .line 177
    if-eqz v10, :cond_2

    .line 180
    const-string v1, " copyLen="

    if-ltz v14, :cond_1

    add-int v2, v14, v15

    invoke-virtual {v0, v12, v13}, Lcom/sleepycat/je/evictor/CHeapAllocator;->size(J)I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 186
    if-ltz v11, :cond_0

    add-int v2, v11, v15

    array-length v3, v10

    if-gt v2, v3, :cond_0

    .line 194
    iget-object v1, v0, Lcom/sleepycat/je/evictor/CHeapAllocator;->unsafe:Lsun/misc/Unsafe;

    sget v2, Lsun/misc/Unsafe;->ARRAY_BYTE_BASE_OFFSET:I

    add-int/2addr v2, v11

    int-to-long v3, v2

    const/4 v5, 0x0

    const-wide/16 v6, 0x4

    add-long/2addr v6, v12

    int-to-long v8, v14

    add-long/2addr v6, v8

    int-to-long v8, v15

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 198
    return-void

    .line 187
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bufOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bufSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "memOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " memSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 183
    invoke-virtual {v0, v12, v13}, Lcom/sleepycat/je/evictor/CHeapAllocator;->size(J)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "buf is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "memId is 0"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public free(J)I
    .locals 4
    .param p1, "memId"    # J

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/evictor/CHeapAllocator;->size(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/sleepycat/je/evictor/CHeapAllocator;->addOverhead(I)I

    move-result v0

    .line 112
    .local v0, "totalSize":I
    iget-object v1, p0, Lcom/sleepycat/je/evictor/CHeapAllocator;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1, p1, p2}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 113
    iget-object v1, p0, Lcom/sleepycat/je/evictor/CHeapAllocator;->usedBytes:Ljava/util/concurrent/atomic/AtomicLong;

    rsub-int/lit8 v2, v0, 0x0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 114
    return v0
.end method

.method public getUsedBytes()J
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/sleepycat/je/evictor/CHeapAllocator;->usedBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public setMaxBytes(J)V
    .locals 0
    .param p1, "maxBytes"    # J

    .line 87
    return-void
.end method

.method public size(J)I
    .locals 1
    .param p1, "memId"    # J

    .line 131
    iget-object v0, p0, Lcom/sleepycat/je/evictor/CHeapAllocator;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v0

    return v0
.end method

.method public totalSize(J)I
    .locals 1
    .param p1, "memId"    # J

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/evictor/CHeapAllocator;->size(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/sleepycat/je/evictor/CHeapAllocator;->addOverhead(I)I

    move-result v0

    return v0
.end method
