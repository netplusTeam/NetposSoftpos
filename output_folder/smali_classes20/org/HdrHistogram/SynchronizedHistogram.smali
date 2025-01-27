.class public Lorg/HdrHistogram/SynchronizedHistogram;
.super Lorg/HdrHistogram/Histogram;
.source "SynchronizedHistogram.java"


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "numberOfSignificantValueDigits"    # I

    .line 44
    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x2

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/SynchronizedHistogram;-><init>(JJI)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/SynchronizedHistogram;->setAutoResize(Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 6
    .param p1, "highestTrackableValue"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 59
    const-wide/16 v1, 0x1

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/SynchronizedHistogram;-><init>(JJI)V

    .line 60
    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 0
    .param p1, "lowestDiscernibleValue"    # J
    .param p3, "highestTrackableValue"    # J
    .param p5, "numberOfSignificantValueDigits"    # I

    .line 79
    invoke-direct/range {p0 .. p5}, Lorg/HdrHistogram/Histogram;-><init>(JJI)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 0
    .param p1, "source"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 88
    invoke-direct {p0, p1}, Lorg/HdrHistogram/Histogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 89
    return-void
.end method

.method public static decodeFromByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/SynchronizedHistogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestTrackableValue"    # J

    .line 99
    const-class v0, Lorg/HdrHistogram/SynchronizedHistogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/SynchronizedHistogram;->decodeFromByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/SynchronizedHistogram;

    return-object v0
.end method

.method public static decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/SynchronizedHistogram;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestTrackableValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 111
    const-class v0, Lorg/HdrHistogram/SynchronizedHistogram;

    invoke-static {p0, v0, p1, p2}, Lorg/HdrHistogram/SynchronizedHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/SynchronizedHistogram;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/HdrHistogram/SynchronizedHistogram;
    .locals 3
    .param p0, "base64CompressedHistogramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 124
    nop

    .line 125
    invoke-static {p0}, Lorg/HdrHistogram/Base64Helper;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 124
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/HdrHistogram/SynchronizedHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/SynchronizedHistogram;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "o"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 525
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 526
    return-void
.end method


# virtual methods
.method public add(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 4
    .param p1, "otherHistogram"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 236
    iget-wide v0, p0, Lorg/HdrHistogram/SynchronizedHistogram;->identity:J

    iget-wide v2, p1, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 239
    :try_start_1
    invoke-super {p0, p1}, Lorg/HdrHistogram/Histogram;->add(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 240
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "otherHistogram":Lorg/HdrHistogram/AbstractHistogram;
    :try_start_4
    throw v0

    .line 241
    .restart local p1    # "otherHistogram":Lorg/HdrHistogram/AbstractHistogram;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 243
    :cond_0
    monitor-enter p1

    .line 244
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 245
    :try_start_6
    invoke-super {p0, p1}, Lorg/HdrHistogram/Histogram;->add(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 246
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 247
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 249
    :goto_0
    return-void

    .line 246
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local p1    # "otherHistogram":Lorg/HdrHistogram/AbstractHistogram;
    :try_start_9
    throw v0

    .line 247
    .restart local p1    # "otherHistogram":Lorg/HdrHistogram/AbstractHistogram;
    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method public addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/AbstractHistogram;J)V
    .locals 4
    .param p1, "fromHistogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "expectedIntervalBetweenValueSamples"    # J

    .line 277
    iget-wide v0, p0, Lorg/HdrHistogram/SynchronizedHistogram;->identity:J

    iget-wide v2, p1, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 278
    monitor-enter p0

    .line 279
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 280
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Lorg/HdrHistogram/Histogram;->addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/AbstractHistogram;J)V

    .line 281
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "fromHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .end local p2    # "expectedIntervalBetweenValueSamples":J
    :try_start_4
    throw v0

    .line 282
    .restart local p1    # "fromHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .restart local p2    # "expectedIntervalBetweenValueSamples":J
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 284
    :cond_0
    monitor-enter p1

    .line 285
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 286
    :try_start_6
    invoke-super {p0, p1, p2, p3}, Lorg/HdrHistogram/Histogram;->addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/AbstractHistogram;J)V

    .line 287
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 288
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 290
    :goto_0
    return-void

    .line 287
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local p1    # "fromHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .end local p2    # "expectedIntervalBetweenValueSamples":J
    :try_start_9
    throw v0

    .line 288
    .restart local p1    # "fromHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .restart local p2    # "expectedIntervalBetweenValueSamples":J
    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method public declared-synchronized allValues()Lorg/HdrHistogram/AbstractHistogram$AllValues;
    .locals 1

    monitor-enter p0

    .line 476
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->allValues()Lorg/HdrHistogram/AbstractHistogram$AllValues;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 476
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic copy()Lorg/HdrHistogram/AbstractHistogram;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/HdrHistogram/SynchronizedHistogram;->copy()Lorg/HdrHistogram/SynchronizedHistogram;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/HdrHistogram/Histogram;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/HdrHistogram/SynchronizedHistogram;->copy()Lorg/HdrHistogram/SynchronizedHistogram;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized copy()Lorg/HdrHistogram/SynchronizedHistogram;
    .locals 1

    monitor-enter p0

    .line 177
    :try_start_0
    new-instance v0, Lorg/HdrHistogram/SynchronizedHistogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/SynchronizedHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 178
    .local v0, "toHistogram":Lorg/HdrHistogram/SynchronizedHistogram;
    invoke-virtual {v0, p0}, Lorg/HdrHistogram/SynchronizedHistogram;->add(Lorg/HdrHistogram/AbstractHistogram;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-object v0

    .line 176
    .end local v0    # "toHistogram":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/AbstractHistogram;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/SynchronizedHistogram;->copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/SynchronizedHistogram;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/Histogram;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/SynchronizedHistogram;->copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/SynchronizedHistogram;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/SynchronizedHistogram;
    .locals 1
    .param p1, "expectedIntervalBetweenValueSamples"    # J

    monitor-enter p0

    .line 185
    :try_start_0
    new-instance v0, Lorg/HdrHistogram/SynchronizedHistogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/SynchronizedHistogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 186
    .local v0, "toHistogram":Lorg/HdrHistogram/SynchronizedHistogram;
    invoke-virtual {v0, p0, p1, p2}, Lorg/HdrHistogram/SynchronizedHistogram;->addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/AbstractHistogram;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-object v0

    .line 184
    .end local v0    # "toHistogram":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "expectedIntervalBetweenValueSamples":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public copyInto(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 4
    .param p1, "targetHistogram"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 195
    iget-wide v0, p0, Lorg/HdrHistogram/SynchronizedHistogram;->identity:J

    iget-wide v2, p1, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 196
    monitor-enter p0

    .line 198
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 199
    :try_start_1
    invoke-super {p0, p1}, Lorg/HdrHistogram/Histogram;->copyInto(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 200
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "targetHistogram":Lorg/HdrHistogram/AbstractHistogram;
    :try_start_4
    throw v0

    .line 201
    .restart local p1    # "targetHistogram":Lorg/HdrHistogram/AbstractHistogram;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 203
    :cond_0
    monitor-enter p1

    .line 204
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 205
    :try_start_6
    invoke-super {p0, p1}, Lorg/HdrHistogram/Histogram;->copyInto(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 206
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 207
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 209
    :goto_0
    return-void

    .line 206
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local p1    # "targetHistogram":Lorg/HdrHistogram/AbstractHistogram;
    :try_start_9
    throw v0

    .line 207
    .restart local p1    # "targetHistogram":Lorg/HdrHistogram/AbstractHistogram;
    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method public copyIntoCorrectedForCoordinatedOmission(Lorg/HdrHistogram/AbstractHistogram;J)V
    .locals 4
    .param p1, "targetHistogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "expectedIntervalBetweenValueSamples"    # J

    .line 217
    iget-wide v0, p0, Lorg/HdrHistogram/SynchronizedHistogram;->identity:J

    iget-wide v2, p1, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 218
    monitor-enter p0

    .line 219
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 220
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Lorg/HdrHistogram/Histogram;->copyIntoCorrectedForCoordinatedOmission(Lorg/HdrHistogram/AbstractHistogram;J)V

    .line 221
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "targetHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .end local p2    # "expectedIntervalBetweenValueSamples":J
    :try_start_4
    throw v0

    .line 222
    .restart local p1    # "targetHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .restart local p2    # "expectedIntervalBetweenValueSamples":J
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 224
    :cond_0
    monitor-enter p1

    .line 225
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 226
    :try_start_6
    invoke-super {p0, p1, p2, p3}, Lorg/HdrHistogram/Histogram;->copyIntoCorrectedForCoordinatedOmission(Lorg/HdrHistogram/AbstractHistogram;J)V

    .line 227
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 228
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 230
    :goto_0
    return-void

    .line 227
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local p1    # "targetHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .end local p2    # "expectedIntervalBetweenValueSamples":J
    :try_start_9
    throw v0

    .line 228
    .restart local p1    # "targetHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .restart local p2    # "expectedIntervalBetweenValueSamples":J
    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method public declared-synchronized encodeIntoByteBuffer(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    monitor-enter p0

    .line 508
    :try_start_0
    invoke-super {p0, p1}, Lorg/HdrHistogram/Histogram;->encodeIntoByteBuffer(Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 508
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized encodeIntoCompressedByteBuffer(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "targetBuffer"    # Ljava/nio/ByteBuffer;

    monitor-enter p0

    .line 520
    :try_start_0
    invoke-super {p0, p1}, Lorg/HdrHistogram/Histogram;->encodeIntoCompressedByteBuffer(Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 520
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "targetBuffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized encodeIntoCompressedByteBuffer(Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p1, "targetBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "compressionLevel"    # I

    monitor-enter p0

    .line 515
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->encodeIntoCompressedByteBuffer(Ljava/nio/ByteBuffer;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 515
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "targetBuffer":Ljava/nio/ByteBuffer;
    .end local p2    # "compressionLevel":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 304
    if-ne p0, p1, :cond_0

    .line 305
    const/4 v0, 0x1

    return v0

    .line 307
    :cond_0
    instance-of v0, p1, Lorg/HdrHistogram/AbstractHistogram;

    if-eqz v0, :cond_2

    .line 308
    move-object v0, p1

    check-cast v0, Lorg/HdrHistogram/AbstractHistogram;

    .line 309
    .local v0, "otherHistogram":Lorg/HdrHistogram/AbstractHistogram;
    iget-wide v1, p0, Lorg/HdrHistogram/SynchronizedHistogram;->identity:J

    iget-wide v3, v0, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 310
    monitor-enter p0

    .line 311
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 312
    :try_start_1
    invoke-super {p0, v0}, Lorg/HdrHistogram/Histogram;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v1

    .line 313
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "otherHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .end local p1    # "other":Ljava/lang/Object;
    :try_start_4
    throw v1

    .line 314
    .restart local v0    # "otherHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .restart local p1    # "other":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 316
    :cond_1
    monitor-enter v0

    .line 317
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 318
    :try_start_6
    invoke-super {p0, v0}, Lorg/HdrHistogram/Histogram;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    return v1

    .line 319
    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v0    # "otherHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .end local p1    # "other":Ljava/lang/Object;
    :try_start_9
    throw v1

    .line 320
    .restart local v0    # "otherHistogram":Lorg/HdrHistogram/AbstractHistogram;
    .restart local p1    # "other":Ljava/lang/Object;
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1

    .line 323
    .end local v0    # "otherHistogram":Lorg/HdrHistogram/AbstractHistogram;
    :cond_2
    monitor-enter p0

    .line 324
    :try_start_a
    invoke-super {p0, p1}, Lorg/HdrHistogram/Histogram;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 325
    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0
.end method

.method public declared-synchronized getCountAtValue(J)J
    .locals 2
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    monitor-enter p0

    .line 451
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->getCountAtValue(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 451
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "value":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCountBetweenValues(JJ)J
    .locals 2
    .param p1, "lowValue"    # J
    .param p3, "highValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    monitor-enter p0

    .line 446
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/Histogram;->getCountBetweenValues(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 446
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "lowValue":J
    .end local p3    # "highValue":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEndTimeStamp()J
    .locals 2

    monitor-enter p0

    .line 396
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->getEndTimeStamp()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 396
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEstimatedFootprintInBytes()I
    .locals 1

    monitor-enter p0

    .line 381
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->getEstimatedFootprintInBytes()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 381
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHighestTrackableValue()J
    .locals 2

    monitor-enter p0

    .line 341
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->getHighestTrackableValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 341
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLowestDiscernibleValue()J
    .locals 2

    monitor-enter p0

    .line 336
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->getLowestDiscernibleValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 336
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxValue()J
    .locals 2

    monitor-enter p0

    .line 411
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->getMaxValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 411
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxValueAsDouble()D
    .locals 2

    monitor-enter p0

    .line 421
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->getMaxValueAsDouble()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 421
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMean()D
    .locals 2

    monitor-enter p0

    .line 426
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->getMean()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 426
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinNonZeroValue()J
    .locals 2

    monitor-enter p0

    .line 416
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->getMinNonZeroValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 416
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinValue()J
    .locals 2

    monitor-enter p0

    .line 406
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->getMinValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 406
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNeededByteBufferCapacity()I
    .locals 1

    monitor-enter p0

    .line 502
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->getNeededByteBufferCapacity()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 502
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumberOfSignificantValueDigits()I
    .locals 1

    monitor-enter p0

    .line 346
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->getNumberOfSignificantValueDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 346
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPercentileAtOrBelowValue(J)D
    .locals 2
    .param p1, "value"    # J

    monitor-enter p0

    .line 441
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->getPercentileAtOrBelowValue(J)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 441
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "value":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getStartTimeStamp()J
    .locals 2

    monitor-enter p0

    .line 386
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->getStartTimeStamp()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 386
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStdDeviation()D
    .locals 2

    monitor-enter p0

    .line 431
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->getStdDeviation()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 431
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalCount()J
    .locals 2

    monitor-enter p0

    .line 131
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->getTotalCount()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 131
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValueAtPercentile(D)J
    .locals 2
    .param p1, "percentile"    # D

    monitor-enter p0

    .line 436
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->getValueAtPercentile(D)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 436
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "percentile":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    monitor-enter p0

    .line 331
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->hashCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 331
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized highestEquivalentValue(J)J
    .locals 2
    .param p1, "value"    # J

    monitor-enter p0

    .line 361
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->highestEquivalentValue(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 361
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "value":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isAutoResize()Z
    .locals 1

    monitor-enter p0

    .line 136
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->isAutoResize()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 136
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized linearBucketValues(J)Lorg/HdrHistogram/AbstractHistogram$LinearBucketValues;
    .locals 1
    .param p1, "valueUnitsPerBucket"    # J

    monitor-enter p0

    .line 461
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->linearBucketValues(J)Lorg/HdrHistogram/AbstractHistogram$LinearBucketValues;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 461
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "valueUnitsPerBucket":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized logarithmicBucketValues(JD)Lorg/HdrHistogram/AbstractHistogram$LogarithmicBucketValues;
    .locals 1
    .param p1, "valueUnitsInFirstBucket"    # J
    .param p3, "logBase"    # D

    monitor-enter p0

    .line 466
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/Histogram;->logarithmicBucketValues(JD)Lorg/HdrHistogram/AbstractHistogram$LogarithmicBucketValues;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 466
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "valueUnitsInFirstBucket":J
    .end local p3    # "logBase":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized lowestEquivalentValue(J)J
    .locals 2
    .param p1, "value"    # J

    monitor-enter p0

    .line 356
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->lowestEquivalentValue(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 356
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "value":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized medianEquivalentValue(J)J
    .locals 2
    .param p1, "value"    # J

    monitor-enter p0

    .line 366
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->medianEquivalentValue(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 366
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "value":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nextNonEquivalentValue(J)J
    .locals 2
    .param p1, "value"    # J

    monitor-enter p0

    .line 371
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->nextNonEquivalentValue(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 371
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "value":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized outputPercentileDistribution(Ljava/io/PrintStream;ILjava/lang/Double;)V
    .locals 0
    .param p1, "printStream"    # Ljava/io/PrintStream;
    .param p2, "percentileTicksPerHalfDistance"    # I
    .param p3, "outputValueUnitScalingRatio"    # Ljava/lang/Double;

    monitor-enter p0

    .line 489
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/HdrHistogram/Histogram;->outputPercentileDistribution(Ljava/io/PrintStream;ILjava/lang/Double;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    .line 488
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "printStream":Ljava/io/PrintStream;
    .end local p2    # "percentileTicksPerHalfDistance":I
    .end local p3    # "outputValueUnitScalingRatio":Ljava/lang/Double;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized outputPercentileDistribution(Ljava/io/PrintStream;ILjava/lang/Double;Z)V
    .locals 0
    .param p1, "printStream"    # Ljava/io/PrintStream;
    .param p2, "percentileTicksPerHalfDistance"    # I
    .param p3, "outputValueUnitScalingRatio"    # Ljava/lang/Double;
    .param p4, "useCsvFormat"    # Z

    monitor-enter p0

    .line 497
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/Histogram;->outputPercentileDistribution(Ljava/io/PrintStream;ILjava/lang/Double;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    monitor-exit p0

    return-void

    .line 496
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "printStream":Ljava/io/PrintStream;
    .end local p2    # "percentileTicksPerHalfDistance":I
    .end local p3    # "outputValueUnitScalingRatio":Ljava/lang/Double;
    .end local p4    # "useCsvFormat":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized outputPercentileDistribution(Ljava/io/PrintStream;Ljava/lang/Double;)V
    .locals 0
    .param p1, "printStream"    # Ljava/io/PrintStream;
    .param p2, "outputValueUnitScalingRatio"    # Ljava/lang/Double;

    monitor-enter p0

    .line 482
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->outputPercentileDistribution(Ljava/io/PrintStream;Ljava/lang/Double;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    monitor-exit p0

    return-void

    .line 481
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "printStream":Ljava/io/PrintStream;
    .end local p2    # "outputValueUnitScalingRatio":Ljava/lang/Double;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized percentiles(I)Lorg/HdrHistogram/AbstractHistogram$Percentiles;
    .locals 1
    .param p1, "percentileTicksPerHalfDistance"    # I

    monitor-enter p0

    .line 456
    :try_start_0
    invoke-super {p0, p1}, Lorg/HdrHistogram/Histogram;->percentiles(I)Lorg/HdrHistogram/AbstractHistogram$Percentiles;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 456
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "percentileTicksPerHalfDistance":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordValue(J)V
    .locals 0
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->recordValue(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 145
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "value":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordValue(JJ)V
    .locals 0
    .param p1, "value"    # J
    .param p3, "expectedIntervalBetweenValueSamples"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    monitor-enter p0

    .line 167
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/Histogram;->recordValue(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 166
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "value":J
    .end local p3    # "expectedIntervalBetweenValueSamples":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordValueWithCount(JJ)V
    .locals 0
    .param p1, "value"    # J
    .param p3, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    monitor-enter p0

    .line 151
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/Histogram;->recordValueWithCount(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 150
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "value":J
    .end local p3    # "count":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordValueWithExpectedInterval(JJ)V
    .locals 0
    .param p1, "value"    # J
    .param p3, "expectedIntervalBetweenValueSamples"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    monitor-enter p0

    .line 157
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/Histogram;->recordValueWithExpectedInterval(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 156
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "value":J
    .end local p3    # "expectedIntervalBetweenValueSamples":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordedValues()Lorg/HdrHistogram/AbstractHistogram$RecordedValues;
    .locals 1

    monitor-enter p0

    .line 471
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->recordedValues()Lorg/HdrHistogram/AbstractHistogram$RecordedValues;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 471
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 172
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/Histogram;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 171
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoResize(Z)V
    .locals 0
    .param p1, "autoResize"    # Z

    monitor-enter p0

    .line 141
    :try_start_0
    invoke-super {p0, p1}, Lorg/HdrHistogram/Histogram;->setAutoResize(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 140
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "autoResize":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEndTimeStamp(J)V
    .locals 0
    .param p1, "timeStampMsec"    # J

    monitor-enter p0

    .line 401
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->setEndTimeStamp(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit p0

    return-void

    .line 400
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "timeStampMsec":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStartTimeStamp(J)V
    .locals 0
    .param p1, "timeStampMsec"    # J

    monitor-enter p0

    .line 391
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->setStartTimeStamp(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    monitor-exit p0

    return-void

    .line 390
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "timeStampMsec":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shiftValuesLeft(I)V
    .locals 0
    .param p1, "numberOfBinaryOrdersOfMagnitude"    # I

    monitor-enter p0

    .line 293
    :try_start_0
    invoke-super {p0, p1}, Lorg/HdrHistogram/Histogram;->shiftValuesLeft(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    .line 292
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "numberOfBinaryOrdersOfMagnitude":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shiftValuesRight(I)V
    .locals 0
    .param p1, "numberOfBinaryOrdersOfMagnitude"    # I

    monitor-enter p0

    .line 298
    :try_start_0
    invoke-super {p0, p1}, Lorg/HdrHistogram/Histogram;->shiftValuesRight(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    .line 297
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "numberOfBinaryOrdersOfMagnitude":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sizeOfEquivalentValueRange(J)J
    .locals 2
    .param p1, "value"    # J

    monitor-enter p0

    .line 351
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->sizeOfEquivalentValueRange(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 351
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "value":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public subtract(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 4
    .param p1, "otherHistogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 256
    iget-wide v0, p0, Lorg/HdrHistogram/SynchronizedHistogram;->identity:J

    iget-wide v2, p1, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 259
    :try_start_1
    invoke-super {p0, p1}, Lorg/HdrHistogram/Histogram;->subtract(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 260
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "otherHistogram":Lorg/HdrHistogram/AbstractHistogram;
    :try_start_4
    throw v0

    .line 261
    .restart local p1    # "otherHistogram":Lorg/HdrHistogram/AbstractHistogram;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 263
    :cond_0
    monitor-enter p1

    .line 264
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 265
    :try_start_6
    invoke-super {p0, p1}, Lorg/HdrHistogram/Histogram;->subtract(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 266
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 267
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 269
    :goto_0
    return-void

    .line 266
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local p1    # "otherHistogram":Lorg/HdrHistogram/AbstractHistogram;
    :try_start_9
    throw v0

    .line 267
    .restart local p1    # "otherHistogram":Lorg/HdrHistogram/AbstractHistogram;
    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method public declared-synchronized valuesAreEquivalent(JJ)Z
    .locals 1
    .param p1, "value1"    # J
    .param p3, "value2"    # J

    monitor-enter p0

    .line 376
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/Histogram;->valuesAreEquivalent(JJ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 376
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedHistogram;
    .end local p1    # "value1":J
    .end local p3    # "value2":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
