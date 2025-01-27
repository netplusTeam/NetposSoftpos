.class abstract Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;
.super Ljava/lang/Object;
.source "AbstractPackedLongArray.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/HdrHistogram/packedarray/AbstractPackedLongArray$AllValuesIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final NUMBER_OF_NON_ZEROS_TO_HASH:I = 0x8

.field private static final NUMBER_OF_SETS:I = 0x8


# instance fields
.field private arrayContext:Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

.field private endTimeStampMsec:J

.field private startTimeStampMsec:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->startTimeStampMsec:J

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->endTimeStampMsec:J

    return-void
.end method

.method private oneAtATimeHashStep(II)I
    .locals 2
    .param p1, "incomingHash"    # I
    .param p2, "v"    # I

    .line 400
    move v0, p1

    .line 401
    .local v0, "h":I
    add-int/2addr v0, p2

    .line 402
    shl-int/lit8 v1, v0, 0xa

    add-int/2addr v0, v1

    .line 403
    shr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 404
    return v0
.end method


# virtual methods
.method public add(IJ)V
    .locals 23
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 152
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-nez v0, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    move-wide/from16 v5, p2

    .line 159
    .local v5, "remainingValueToAdd":J
    :goto_0
    const-wide/16 v7, 0xff

    .line 160
    .local v7, "byteMask":J
    const/4 v0, 0x0

    .local v0, "byteNum":I
    const/4 v9, 0x0

    move v10, v9

    move-wide v8, v7

    move-wide v6, v5

    move v5, v0

    .line 161
    .end local v0    # "byteNum":I
    .end local v7    # "byteMask":J
    .local v5, "byteNum":I
    .local v6, "remainingValueToAdd":J
    .local v8, "byteMask":J
    .local v10, "byteShift":I
    :goto_1
    const/16 v0, 0x8

    if-ge v5, v0, :cond_3

    .line 163
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->criticalSectionEnter()J

    move-result-wide v11
    :try_end_0
    .catch Lorg/HdrHistogram/packedarray/ResizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .local v11, "criticalValue":J
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->getArrayContext()Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    move-result-object v13

    .line 168
    .local v13, "arrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    invoke-virtual {v13}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->isPacked()Z

    move-result v14

    if-nez v14, :cond_1

    .line 169
    invoke-virtual {v13, v2, v6, v7}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->addAndGetAtUnpackedIndex(IJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    :try_start_2
    invoke-virtual {v1, v11, v12}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->criticalSectionExit(J)V
    :try_end_2
    .catch Lorg/HdrHistogram/packedarray/ResizeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 170
    return-void

    .line 173
    :cond_1
    const/4 v14, 0x1

    :try_start_3
    invoke-virtual {v13, v5, v2, v14}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPackedIndex(IIZ)I

    move-result v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    .local v14, "packedIndex":I
    and-long v15, v6, v8

    .line 176
    .local v15, "amountToAddAtSet":J
    shr-long v0, v15, v10

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 177
    .local v0, "byteToAdd":B
    :try_start_4
    invoke-virtual {v13, v14, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->addAtByteIndex(IB)J

    move-result-wide v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    .local v17, "afterAddByteValue":J
    sub-long/2addr v6, v15

    .line 183
    const-wide/16 v19, 0x100

    and-long v19, v17, v19

    .line 184
    .local v19, "carryAmount":J
    shl-long v21, v19, v10

    add-long v6, v6, v21

    .line 186
    cmp-long v1, v6, v3

    if-nez v1, :cond_2

    .line 190
    move-object/from16 v1, p0

    :try_start_5
    invoke-virtual {v1, v11, v12}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->criticalSectionExit(J)V

    .line 187
    return-void

    .line 186
    :cond_2
    move-object/from16 v1, p0

    .line 190
    .end local v0    # "byteToAdd":B
    .end local v13    # "arrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    .end local v14    # "packedIndex":I
    .end local v15    # "amountToAddAtSet":J
    .end local v17    # "afterAddByteValue":J
    .end local v19    # "carryAmount":J
    invoke-virtual {v1, v11, v12}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->criticalSectionExit(J)V

    .line 192
    nop

    .line 162
    .end local v11    # "criticalValue":J
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v10, 0x8

    const/16 v0, 0x8

    shl-long/2addr v8, v0

    goto :goto_1

    .line 190
    .restart local v11    # "criticalValue":J
    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_2
    invoke-virtual {v1, v11, v12}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->criticalSectionExit(J)V

    .line 192
    nop

    .end local v6    # "remainingValueToAdd":J
    .end local p1    # "index":I
    .end local p2    # "value":J
    throw v0
    :try_end_5
    .catch Lorg/HdrHistogram/packedarray/ResizeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 195
    .end local v5    # "byteNum":I
    .end local v8    # "byteMask":J
    .end local v10    # "byteShift":I
    .end local v11    # "criticalValue":J
    .restart local v6    # "remainingValueToAdd":J
    .restart local p1    # "index":I
    .restart local p2    # "value":J
    :catch_0
    move-exception v0

    move-wide v5, v6

    .line 196
    .end local v6    # "remainingValueToAdd":J
    .local v0, "ex":Lorg/HdrHistogram/packedarray/ResizeException;
    .local v5, "remainingValueToAdd":J
    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/ResizeException;->getNewSize()I

    move-result v7

    invoke-virtual {v1, v7}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->resizeStorageArray(I)V

    .line 198
    .end local v0    # "ex":Lorg/HdrHistogram/packedarray/ResizeException;
    goto :goto_0

    .line 194
    .end local v5    # "remainingValueToAdd":J
    .restart local v6    # "remainingValueToAdd":J
    .restart local v8    # "byteMask":J
    :cond_3
    return-void
.end method

.method public add(Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;)V
    .locals 5
    .param p1, "other"    # Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;

    .line 261
    invoke-virtual {p1}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->nonZeroValues()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/HdrHistogram/packedarray/IterationValue;

    .line 262
    .local v1, "v":Lorg/HdrHistogram/packedarray/IterationValue;
    invoke-virtual {v1}, Lorg/HdrHistogram/packedarray/IterationValue;->getIndex()I

    move-result v2

    invoke-virtual {v1}, Lorg/HdrHistogram/packedarray/IterationValue;->getValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->add(IJ)V

    .line 263
    .end local v1    # "v":Lorg/HdrHistogram/packedarray/IterationValue;
    goto :goto_0

    .line 264
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 0

    .line 270
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->clearContents()V

    .line 271
    return-void
.end method

.method abstract clearContents()V
.end method

.method public abstract copy()Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;
.end method

.method abstract criticalSectionEnter()J
.end method

.method abstract criticalSectionExit(J)V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 339
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 340
    return v0

    .line 342
    :cond_0
    instance-of v1, p1, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 343
    return v2

    .line 345
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;

    .line 346
    .local v1, "that":Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->length()I

    move-result v3

    invoke-virtual {v1}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->length()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 347
    return v2

    .line 349
    :cond_2
    iget-object v3, p0, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->arrayContext:Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    invoke-virtual {v3}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->isPacked()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->arrayContext:Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    invoke-virtual {v3}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->isPacked()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 369
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 370
    invoke-virtual {p0, v3}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->get(I)J

    move-result-wide v4

    invoke-virtual {v1, v3}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->get(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 371
    return v2

    .line 369
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 358
    .end local v3    # "i":I
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->nonZeroValues()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/HdrHistogram/packedarray/IterationValue;

    .line 359
    .local v4, "v":Lorg/HdrHistogram/packedarray/IterationValue;
    invoke-virtual {v4}, Lorg/HdrHistogram/packedarray/IterationValue;->getIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->get(I)J

    move-result-wide v5

    invoke-virtual {v4}, Lorg/HdrHistogram/packedarray/IterationValue;->getValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_6

    .line 360
    return v2

    .line 362
    .end local v4    # "v":Lorg/HdrHistogram/packedarray/IterationValue;
    :cond_6
    goto :goto_2

    .line 363
    :cond_7
    invoke-virtual {v1}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->nonZeroValues()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/HdrHistogram/packedarray/IterationValue;

    .line 364
    .restart local v4    # "v":Lorg/HdrHistogram/packedarray/IterationValue;
    invoke-virtual {v4}, Lorg/HdrHistogram/packedarray/IterationValue;->getIndex()I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->get(I)J

    move-result-wide v5

    invoke-virtual {v4}, Lorg/HdrHistogram/packedarray/IterationValue;->getValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_8

    .line 365
    return v2

    .line 367
    .end local v4    # "v":Lorg/HdrHistogram/packedarray/IterationValue;
    :cond_8
    goto :goto_3

    :cond_9
    nop

    .line 375
    :cond_a
    return v0
.end method

.method public get(I)J
    .locals 14
    .param p1, "index"    # I

    .line 102
    const-wide/16 v0, 0x0

    .line 103
    .local v0, "value":J
    const/4 v2, 0x0

    .local v2, "byteNum":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_7

    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, "packedIndex":I
    const-wide/16 v4, 0x0

    .line 107
    .local v4, "byteValueAtPackedIndex":J
    :cond_0
    const/4 v6, 0x0

    .line 108
    .local v6, "newArraySize":I
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->criticalSectionEnter()J

    move-result-wide v7

    .line 111
    .local v7, "criticalValue":J
    :try_start_0
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->getArrayContext()Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    move-result-object v9

    .line 113
    .local v9, "arrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    invoke-virtual {v9}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->isPacked()Z

    move-result v10

    if-nez v10, :cond_2

    .line 114
    invoke-virtual {v9, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getAtUnpackedIndex(I)J

    move-result-wide v10
    :try_end_0
    .catch Lorg/HdrHistogram/packedarray/ResizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual {p0, v7, v8}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->criticalSectionExit(J)V

    .line 127
    if-eqz v6, :cond_1

    .line 128
    invoke-virtual {p0, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->resizeStorageArray(I)V

    .line 114
    :cond_1
    return-wide v10

    .line 117
    :cond_2
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v9, v2, p1, v10}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPackedIndex(IIZ)I

    move-result v10
    :try_end_1
    .catch Lorg/HdrHistogram/packedarray/ResizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v10

    .line 118
    if-gez v3, :cond_4

    .line 119
    nop

    .line 126
    invoke-virtual {p0, v7, v8}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->criticalSectionExit(J)V

    .line 127
    if-eqz v6, :cond_3

    .line 128
    invoke-virtual {p0, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->resizeStorageArray(I)V

    .line 119
    :cond_3
    return-wide v0

    .line 121
    :cond_4
    nop

    .line 122
    :try_start_2
    invoke-virtual {v9, v3}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getAtByteIndex(I)B

    move-result v10
    :try_end_2
    .catch Lorg/HdrHistogram/packedarray/ResizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v10, v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    shl-int/lit8 v12, v2, 0x3

    shl-long v4, v10, v12

    .line 126
    .end local v9    # "arrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    invoke-virtual {p0, v7, v8}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->criticalSectionExit(J)V

    .line 127
    if-eqz v6, :cond_5

    .line 128
    :goto_1
    invoke-virtual {p0, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->resizeStorageArray(I)V

    goto :goto_2

    .line 126
    :catchall_0
    move-exception v9

    goto :goto_3

    .line 123
    :catch_0
    move-exception v9

    .line 124
    .local v9, "ex":Lorg/HdrHistogram/packedarray/ResizeException;
    :try_start_3
    invoke-virtual {v9}, Lorg/HdrHistogram/packedarray/ResizeException;->getNewSize()I

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v6, v10

    .line 126
    .end local v9    # "ex":Lorg/HdrHistogram/packedarray/ResizeException;
    invoke-virtual {p0, v7, v8}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->criticalSectionExit(J)V

    .line 127
    if-eqz v6, :cond_5

    .line 128
    goto :goto_1

    .line 131
    .end local v6    # "newArraySize":I
    .end local v7    # "criticalValue":J
    :cond_5
    :goto_2
    if-eqz v3, :cond_0

    .line 133
    add-long/2addr v0, v4

    .line 103
    .end local v3    # "packedIndex":I
    .end local v4    # "byteValueAtPackedIndex":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .restart local v3    # "packedIndex":I
    .restart local v4    # "byteValueAtPackedIndex":J
    .restart local v6    # "newArraySize":I
    .restart local v7    # "criticalValue":J
    :goto_3
    invoke-virtual {p0, v7, v8}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->criticalSectionExit(J)V

    .line 127
    if-eqz v6, :cond_6

    .line 128
    invoke-virtual {p0, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->resizeStorageArray(I)V

    .line 130
    :cond_6
    throw v9

    .line 135
    .end local v2    # "byteNum":I
    .end local v3    # "packedIndex":I
    .end local v4    # "byteValueAtPackedIndex":J
    .end local v6    # "newArraySize":I
    .end local v7    # "criticalValue":J
    :cond_7
    return-wide v0
.end method

.method getArrayContext()Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->arrayContext:Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    return-object v0
.end method

.method public getEndTimeStamp()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->endTimeStampMsec:J

    return-wide v0
.end method

.method public getPhysicalLength()I
    .locals 1

    .line 278
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->getArrayContext()Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->length()I

    move-result v0

    return v0
.end method

.method public getStartTimeStamp()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->startTimeStampMsec:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "h":I
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->oneAtATimeHashStep(II)I

    move-result v0

    .line 384
    const/4 v1, 0x0

    .line 386
    .local v1, "count":I
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->nonZeroValues()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/HdrHistogram/packedarray/IterationValue;

    .line 387
    .local v3, "v":Lorg/HdrHistogram/packedarray/IterationValue;
    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x8

    if-le v1, v4, :cond_0

    .line 388
    goto :goto_1

    .line 390
    :cond_0
    invoke-virtual {v3}, Lorg/HdrHistogram/packedarray/IterationValue;->getIndex()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->oneAtATimeHashStep(II)I

    move-result v0

    .line 391
    invoke-virtual {v3}, Lorg/HdrHistogram/packedarray/IterationValue;->getValue()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {p0, v0, v4}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->oneAtATimeHashStep(II)I

    move-result v0

    .line 392
    .end local v3    # "v":Lorg/HdrHistogram/packedarray/IterationValue;
    goto :goto_0

    .line 393
    :cond_1
    :goto_1
    shl-int/lit8 v2, v0, 0x3

    add-int/2addr v0, v2

    .line 394
    shr-int/lit8 v2, v0, 0xb

    xor-int/2addr v0, v2

    .line 395
    shl-int/lit8 v2, v0, 0xf

    add-int/2addr v0, v2

    .line 396
    return v0
.end method

.method public increment(I)V
    .locals 2
    .param p1, "index"    # I

    .line 143
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->add(IJ)V

    .line 144
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 320
    new-instance v0, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray$AllValuesIterator;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray$AllValuesIterator;-><init>(Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;)V

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 286
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->getArrayContext()Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getVirtualLength()I

    move-result v0

    return v0
.end method

.method public nonZeroValues()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/HdrHistogram/packedarray/IterationValue;",
            ">;"
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->getArrayContext()Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->nonZeroValues()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method abstract resizeStorageArray(I)V
.end method

.method public set(IJ)V
    .locals 11
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 207
    const/4 v0, 0x0

    .line 209
    .local v0, "bytesAlreadySet":I
    :goto_0
    move-wide v1, p2

    .line 211
    .local v1, "valueForNextLevels":J
    const/4 v3, 0x0

    .local v3, "byteNum":I
    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    .line 212
    :try_start_0
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->criticalSectionEnter()J

    move-result-wide v5
    :try_end_0
    .catch Lorg/HdrHistogram/packedarray/ResizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .local v5, "criticalValue":J
    :try_start_1
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->getArrayContext()Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    move-result-object v7

    .line 217
    .local v7, "arrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    invoke-virtual {v7}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->isPacked()Z

    move-result v8

    if-nez v8, :cond_0

    .line 218
    invoke-virtual {v7, p1, p2, p3}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setAtUnpackedIndex(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :try_start_2
    invoke-virtual {p0, v5, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->criticalSectionExit(J)V
    :try_end_2
    .catch Lorg/HdrHistogram/packedarray/ResizeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 219
    return-void

    .line 222
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-nez v8, :cond_1

    .line 224
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v7, v3, p1, v8}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPackedIndex(IIZ)I

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    .local v8, "packedIndex":I
    if-gez v8, :cond_1

    .line 245
    :try_start_4
    invoke-virtual {p0, v5, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->criticalSectionExit(J)V
    :try_end_4
    .catch Lorg/HdrHistogram/packedarray/ResizeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 226
    return-void

    .line 230
    .end local v8    # "packedIndex":I
    :cond_1
    const/4 v8, 0x1

    :try_start_5
    invoke-virtual {v7, v3, p1, v8}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPackedIndex(IIZ)I

    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 233
    .restart local v8    # "packedIndex":I
    const-wide/16 v9, 0xff

    and-long/2addr v9, v1

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 234
    .local v9, "byteToWrite":B
    shr-long/2addr v1, v4

    .line 236
    if-ge v3, v0, :cond_2

    .line 245
    :try_start_6
    invoke-virtual {p0, v5, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->criticalSectionExit(J)V
    :try_end_6
    .catch Lorg/HdrHistogram/packedarray/ResizeException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 242
    :cond_2
    :try_start_7
    invoke-virtual {v7, v8, v9}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setAtByteIndex(IB)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 243
    add-int/lit8 v0, v0, 0x1

    .line 245
    .end local v7    # "arrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    .end local v8    # "packedIndex":I
    .end local v9    # "byteToWrite":B
    :try_start_8
    invoke-virtual {p0, v5, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->criticalSectionExit(J)V

    .line 246
    nop

    .line 211
    .end local v5    # "criticalValue":J
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 245
    .restart local v5    # "criticalValue":J
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v5, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->criticalSectionExit(J)V

    .line 246
    nop

    .end local v0    # "bytesAlreadySet":I
    .end local v1    # "valueForNextLevels":J
    .end local p1    # "index":I
    .end local p2    # "value":J
    throw v4
    :try_end_8
    .catch Lorg/HdrHistogram/packedarray/ResizeException; {:try_start_8 .. :try_end_8} :catch_0

    .line 249
    .end local v3    # "byteNum":I
    .end local v5    # "criticalValue":J
    .restart local v0    # "bytesAlreadySet":I
    .restart local v1    # "valueForNextLevels":J
    .restart local p1    # "index":I
    .restart local p2    # "value":J
    :catch_0
    move-exception v3

    .line 250
    .local v3, "ex":Lorg/HdrHistogram/packedarray/ResizeException;
    invoke-virtual {v3}, Lorg/HdrHistogram/packedarray/ResizeException;->getNewSize()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->resizeStorageArray(I)V

    .line 252
    .end local v1    # "valueForNextLevels":J
    .end local v3    # "ex":Lorg/HdrHistogram/packedarray/ResizeException;
    goto :goto_0

    .line 248
    .restart local v1    # "valueForNextLevels":J
    :cond_3
    return-void
.end method

.method setArrayContext(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;)V
    .locals 0
    .param p1, "newArrayContext"    # Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    .line 31
    iput-object p1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->arrayContext:Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    .line 32
    return-void
.end method

.method public setEndTimeStamp(J)V
    .locals 0
    .param p1, "timeStampMsec"    # J

    .line 63
    iput-wide p1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->endTimeStampMsec:J

    .line 64
    return-void
.end method

.method public setStartTimeStamp(J)V
    .locals 0
    .param p1, "timeStampMsec"    # J

    .line 47
    iput-wide p1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->startTimeStampMsec:J

    .line 48
    return-void
.end method

.method public abstract setVirtualLength(I)V
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 90
    const-string v0, "PackedArray:\n"

    .line 91
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->getArrayContext()Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    move-result-object v1

    .line 92
    .local v1, "arrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    return-object v0
.end method
