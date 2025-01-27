.class public Lorg/HdrHistogram/SynchronizedDoubleHistogram;
.super Lorg/HdrHistogram/DoubleHistogram;
.source "SynchronizedDoubleHistogram.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "numberOfSignificantValueDigits"    # I

    .line 65
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1, p1}, Lorg/HdrHistogram/SynchronizedDoubleHistogram;-><init>(JI)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/SynchronizedDoubleHistogram;->setAutoResize(Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "highestToLowestValueRatio"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 80
    const-class v0, Lorg/HdrHistogram/SynchronizedHistogram;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/HdrHistogram/DoubleHistogram;-><init>(JILjava/lang/Class;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/HdrHistogram/ConcurrentDoubleHistogram;)V
    .locals 0
    .param p1, "source"    # Lorg/HdrHistogram/ConcurrentDoubleHistogram;

    .line 89
    invoke-direct {p0, p1}, Lorg/HdrHistogram/DoubleHistogram;-><init>(Lorg/HdrHistogram/DoubleHistogram;)V

    .line 90
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lorg/HdrHistogram/DoubleHistogram;)V
    .locals 4
    .param p1, "fromHistogram"    # Lorg/HdrHistogram/DoubleHistogram;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/SynchronizedDoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v0, v0, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    iget-object v2, p1, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v2, v2, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 181
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 182
    :try_start_1
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    :try_start_2
    invoke-super {p0, p1}, Lorg/HdrHistogram/DoubleHistogram;->add(Lorg/HdrHistogram/DoubleHistogram;)V

    .line 184
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 184
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p1    # "fromHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 185
    .restart local p1    # "fromHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :catchall_1
    move-exception v0

    :goto_0
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_2
    move-exception v0

    goto :goto_0

    .line 187
    :cond_0
    monitor-enter p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 188
    :try_start_8
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 189
    :try_start_9
    invoke-super {p0, p1}, Lorg/HdrHistogram/DoubleHistogram;->add(Lorg/HdrHistogram/DoubleHistogram;)V

    .line 190
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 191
    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 193
    :goto_1
    monitor-exit p0

    return-void

    .line 190
    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .end local p1    # "fromHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :try_start_c
    throw v0

    .line 191
    .restart local p1    # "fromHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :catchall_4
    move-exception v0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 179
    .end local p1    # "fromHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/DoubleHistogram;D)V
    .locals 4
    .param p1, "fromHistogram"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "expectedIntervalBetweenValueSamples"    # D

    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/SynchronizedDoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v0, v0, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    iget-object v2, p1, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v2, v2, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 220
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 221
    :try_start_1
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    :try_start_2
    invoke-super {p0, p1, p2, p3}, Lorg/HdrHistogram/DoubleHistogram;->addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/DoubleHistogram;D)V

    .line 223
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 223
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p1    # "fromHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local p2    # "expectedIntervalBetweenValueSamples":D
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 224
    .restart local p1    # "fromHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .restart local p2    # "expectedIntervalBetweenValueSamples":D
    :catchall_1
    move-exception v0

    :goto_0
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_2
    move-exception v0

    goto :goto_0

    .line 226
    :cond_0
    monitor-enter p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 227
    :try_start_8
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 228
    :try_start_9
    invoke-super {p0, p1, p2, p3}, Lorg/HdrHistogram/DoubleHistogram;->addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/DoubleHistogram;D)V

    .line 229
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 230
    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 232
    :goto_1
    monitor-exit p0

    return-void

    .line 229
    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .end local p1    # "fromHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local p2    # "expectedIntervalBetweenValueSamples":D
    :try_start_c
    throw v0

    .line 230
    .restart local p1    # "fromHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .restart local p2    # "expectedIntervalBetweenValueSamples":D
    :catchall_4
    move-exception v0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 218
    .end local p1    # "fromHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local p2    # "expectedIntervalBetweenValueSamples":D
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized allValues()Lorg/HdrHistogram/DoubleHistogram$AllValues;
    .locals 1

    monitor-enter p0

    .line 415
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->allValues()Lorg/HdrHistogram/DoubleHistogram$AllValues;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 415
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized copy()Lorg/HdrHistogram/DoubleHistogram;
    .locals 3

    monitor-enter p0

    .line 125
    :try_start_0
    new-instance v0, Lorg/HdrHistogram/DoubleHistogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/DoubleHistogram;-><init>(Lorg/HdrHistogram/DoubleHistogram;)V

    .line 127
    .local v0, "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    iget-object v1, p0, Lorg/HdrHistogram/SynchronizedDoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-object v2, v0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    invoke-virtual {v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->copyInto(Lorg/HdrHistogram/AbstractHistogram;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-object v0

    .line 124
    .end local v0    # "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized copyCorrectedForCoordinatedOmission(D)Lorg/HdrHistogram/DoubleHistogram;
    .locals 1
    .param p1, "expectedIntervalBetweenValueSamples"    # D

    monitor-enter p0

    .line 133
    :try_start_0
    new-instance v0, Lorg/HdrHistogram/DoubleHistogram;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/DoubleHistogram;-><init>(Lorg/HdrHistogram/DoubleHistogram;)V

    .line 135
    .local v0, "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    invoke-virtual {v0, p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/DoubleHistogram;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-object v0

    .line 132
    .end local v0    # "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "expectedIntervalBetweenValueSamples":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized copyInto(Lorg/HdrHistogram/DoubleHistogram;)V
    .locals 4
    .param p1, "targetHistogram"    # Lorg/HdrHistogram/DoubleHistogram;

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/SynchronizedDoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v0, v0, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    iget-object v2, p1, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v2, v2, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 143
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 144
    :try_start_1
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    :try_start_2
    invoke-super {p0, p1}, Lorg/HdrHistogram/DoubleHistogram;->copyInto(Lorg/HdrHistogram/DoubleHistogram;)V

    .line 146
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 146
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p1    # "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 147
    .restart local p1    # "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :catchall_1
    move-exception v0

    :goto_0
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_2
    move-exception v0

    goto :goto_0

    .line 149
    :cond_0
    monitor-enter p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 150
    :try_start_8
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 151
    :try_start_9
    invoke-super {p0, p1}, Lorg/HdrHistogram/DoubleHistogram;->copyInto(Lorg/HdrHistogram/DoubleHistogram;)V

    .line 152
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 153
    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 155
    :goto_1
    monitor-exit p0

    return-void

    .line 152
    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .end local p1    # "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :try_start_c
    throw v0

    .line 153
    .restart local p1    # "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :catchall_4
    move-exception v0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 141
    .end local p1    # "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized copyIntoCorrectedForCoordinatedOmission(Lorg/HdrHistogram/DoubleHistogram;D)V
    .locals 4
    .param p1, "targetHistogram"    # Lorg/HdrHistogram/DoubleHistogram;
    .param p2, "expectedIntervalBetweenValueSamples"    # D

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/SynchronizedDoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v0, v0, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    iget-object v2, p1, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v2, v2, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 163
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 164
    :try_start_1
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    :try_start_2
    invoke-super {p0, p1, p2, p3}, Lorg/HdrHistogram/DoubleHistogram;->copyIntoCorrectedForCoordinatedOmission(Lorg/HdrHistogram/DoubleHistogram;D)V

    .line 166
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 166
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p1    # "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local p2    # "expectedIntervalBetweenValueSamples":D
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 167
    .restart local p1    # "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .restart local p2    # "expectedIntervalBetweenValueSamples":D
    :catchall_1
    move-exception v0

    :goto_0
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_2
    move-exception v0

    goto :goto_0

    .line 169
    :cond_0
    monitor-enter p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 170
    :try_start_8
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 171
    :try_start_9
    invoke-super {p0, p1, p2, p3}, Lorg/HdrHistogram/DoubleHistogram;->copyIntoCorrectedForCoordinatedOmission(Lorg/HdrHistogram/DoubleHistogram;D)V

    .line 172
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 173
    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 175
    :goto_1
    monitor-exit p0

    return-void

    .line 172
    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .end local p1    # "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local p2    # "expectedIntervalBetweenValueSamples":D
    :try_start_c
    throw v0

    .line 173
    .restart local p1    # "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .restart local p2    # "expectedIntervalBetweenValueSamples":D
    :catchall_4
    move-exception v0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 161
    .end local p1    # "targetHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local p2    # "expectedIntervalBetweenValueSamples":D
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized encodeIntoByteBuffer(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    monitor-enter p0

    .line 450
    :try_start_0
    invoke-super {p0, p1}, Lorg/HdrHistogram/DoubleHistogram;->encodeIntoByteBuffer(Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 450
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
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

    .line 462
    :try_start_0
    invoke-super {p0, p1}, Lorg/HdrHistogram/DoubleHistogram;->encodeIntoCompressedByteBuffer(Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 462
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
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

    .line 457
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->encodeIntoCompressedByteBuffer(Ljava/nio/ByteBuffer;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 457
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "targetBuffer":Ljava/nio/ByteBuffer;
    .end local p2    # "compressionLevel":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    monitor-enter p0

    .line 236
    if-ne p0, p1, :cond_0

    .line 237
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 239
    :cond_0
    :try_start_0
    instance-of v0, p1, Lorg/HdrHistogram/DoubleHistogram;

    if-eqz v0, :cond_2

    .line 240
    move-object v0, p1

    check-cast v0, Lorg/HdrHistogram/DoubleHistogram;

    .line 241
    .local v0, "otherHistogram":Lorg/HdrHistogram/DoubleHistogram;
    iget-object v1, p0, Lorg/HdrHistogram/SynchronizedDoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v1, v1, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    iget-object v3, v0, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v3, v3, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 242
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 243
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    :try_start_2
    invoke-super {p0, v0}, Lorg/HdrHistogram/DoubleHistogram;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v1

    .line 245
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "otherHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local p1    # "other":Ljava/lang/Object;
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 246
    .restart local v0    # "otherHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .restart local p1    # "other":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    :goto_0
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1

    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_2
    move-exception v1

    goto :goto_0

    .line 248
    :cond_1
    monitor-enter v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 249
    :try_start_8
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 250
    :try_start_9
    invoke-super {p0, v0}, Lorg/HdrHistogram/DoubleHistogram;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    monitor-exit p0

    return v1

    .line 251
    :catchall_3
    move-exception v1

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .end local v0    # "otherHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .end local p1    # "other":Ljava/lang/Object;
    :try_start_c
    throw v1

    .line 252
    .restart local v0    # "otherHistogram":Lorg/HdrHistogram/DoubleHistogram;
    .restart local p1    # "other":Ljava/lang/Object;
    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v1

    .line 255
    .end local v0    # "otherHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :cond_2
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 256
    :try_start_e
    invoke-super {p0, p1}, Lorg/HdrHistogram/DoubleHistogram;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    monitor-exit p0

    return v0

    .line 257
    :catchall_5
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 235
    .end local p1    # "other":Ljava/lang/Object;
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCountAtValue(D)J
    .locals 2
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    monitor-enter p0

    .line 389
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->getCountAtValue(D)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 389
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "value":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCountBetweenValues(DD)D
    .locals 2
    .param p1, "lowValue"    # D
    .param p3, "highValue"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    monitor-enter p0

    .line 384
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/DoubleHistogram;->getCountBetweenValues(DD)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 384
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "lowValue":D
    .end local p3    # "highValue":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEndTimeStamp()J
    .locals 2

    monitor-enter p0

    .line 333
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->getEndTimeStamp()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 333
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEstimatedFootprintInBytes()I
    .locals 1

    monitor-enter p0

    .line 318
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->getEstimatedFootprintInBytes()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 318
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHighestToLowestValueRatio()J
    .locals 2

    monitor-enter p0

    .line 283
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->getHighestToLowestValueRatio()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 283
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIntegerToDoubleValueConversionRatio()D
    .locals 2

    monitor-enter p0

    .line 273
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 273
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxValue()D
    .locals 2

    monitor-enter p0

    .line 348
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->getMaxValue()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 348
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxValueAsDouble()D
    .locals 2

    monitor-enter p0

    .line 358
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->getMaxValueAsDouble()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 358
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMean()D
    .locals 2

    monitor-enter p0

    .line 363
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->getMean()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 363
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinNonZeroValue()D
    .locals 2

    monitor-enter p0

    .line 353
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->getMinNonZeroValue()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 353
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinValue()D
    .locals 2

    monitor-enter p0

    .line 343
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->getMinValue()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 343
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNeededByteBufferCapacity()I
    .locals 1

    monitor-enter p0

    .line 445
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->getNeededByteBufferCapacity()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 445
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumberOfSignificantValueDigits()I
    .locals 1

    monitor-enter p0

    .line 278
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->getNumberOfSignificantValueDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 278
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPercentileAtOrBelowValue(D)D
    .locals 2
    .param p1, "value"    # D

    monitor-enter p0

    .line 378
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->getPercentileAtOrBelowValue(D)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 378
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "value":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getStartTimeStamp()J
    .locals 2

    monitor-enter p0

    .line 323
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->getStartTimeStamp()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 323
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStdDeviation()D
    .locals 2

    monitor-enter p0

    .line 368
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->getStdDeviation()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 368
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalCount()J
    .locals 2

    monitor-enter p0

    .line 268
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->getTotalCount()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 268
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValueAtPercentile(D)D
    .locals 2
    .param p1, "percentile"    # D

    monitor-enter p0

    .line 373
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->getValueAtPercentile(D)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 373
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "percentile":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    monitor-enter p0

    .line 263
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->hashCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 263
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized highestEquivalentValue(D)D
    .locals 2
    .param p1, "value"    # D

    monitor-enter p0

    .line 298
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->highestEquivalentValue(D)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 298
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "value":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isAutoResize()Z
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->isAutoResize()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 94
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized linearBucketValues(D)Lorg/HdrHistogram/DoubleHistogram$LinearBucketValues;
    .locals 1
    .param p1, "valueUnitsPerBucket"    # D

    monitor-enter p0

    .line 399
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->linearBucketValues(D)Lorg/HdrHistogram/DoubleHistogram$LinearBucketValues;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 399
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "valueUnitsPerBucket":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized logarithmicBucketValues(DD)Lorg/HdrHistogram/DoubleHistogram$LogarithmicBucketValues;
    .locals 1
    .param p1, "valueUnitsInFirstBucket"    # D
    .param p3, "logBase"    # D

    monitor-enter p0

    .line 405
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/DoubleHistogram;->logarithmicBucketValues(DD)Lorg/HdrHistogram/DoubleHistogram$LogarithmicBucketValues;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 405
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "valueUnitsInFirstBucket":D
    .end local p3    # "logBase":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized lowestEquivalentValue(D)D
    .locals 2
    .param p1, "value"    # D

    monitor-enter p0

    .line 293
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->lowestEquivalentValue(D)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 293
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "value":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized medianEquivalentValue(D)D
    .locals 2
    .param p1, "value"    # D

    monitor-enter p0

    .line 303
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->medianEquivalentValue(D)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 303
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "value":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nextNonEquivalentValue(D)D
    .locals 2
    .param p1, "value"    # D

    monitor-enter p0

    .line 308
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->nextNonEquivalentValue(D)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 308
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "value":D
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

    .line 428
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/HdrHistogram/DoubleHistogram;->outputPercentileDistribution(Ljava/io/PrintStream;ILjava/lang/Double;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    .line 427
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
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

    .line 436
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/DoubleHistogram;->outputPercentileDistribution(Ljava/io/PrintStream;ILjava/lang/Double;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-void

    .line 435
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
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

    .line 421
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->outputPercentileDistribution(Ljava/io/PrintStream;Ljava/lang/Double;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit p0

    return-void

    .line 420
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "printStream":Ljava/io/PrintStream;
    .end local p2    # "outputValueUnitScalingRatio":Ljava/lang/Double;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized percentiles(I)Lorg/HdrHistogram/DoubleHistogram$Percentiles;
    .locals 1
    .param p1, "percentileTicksPerHalfDistance"    # I

    monitor-enter p0

    .line 394
    :try_start_0
    invoke-super {p0, p1}, Lorg/HdrHistogram/DoubleHistogram;->percentiles(I)Lorg/HdrHistogram/DoubleHistogram$Percentiles;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 394
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "percentileTicksPerHalfDistance":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordValue(D)V
    .locals 0
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->recordValue(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 103
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "value":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordValueWithCount(DJ)V
    .locals 0
    .param p1, "value"    # D
    .param p3, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/DoubleHistogram;->recordValueWithCount(DJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 108
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "value":D
    .end local p3    # "count":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordValueWithExpectedInterval(DD)V
    .locals 0
    .param p1, "value"    # D
    .param p3, "expectedIntervalBetweenValueSamples"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    monitor-enter p0

    .line 115
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/DoubleHistogram;->recordValueWithExpectedInterval(DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 114
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "value":D
    .end local p3    # "expectedIntervalBetweenValueSamples":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordedValues()Lorg/HdrHistogram/DoubleHistogram$RecordedValues;
    .locals 1

    monitor-enter p0

    .line 410
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->recordedValues()Lorg/HdrHistogram/DoubleHistogram$RecordedValues;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 410
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    invoke-super {p0}, Lorg/HdrHistogram/DoubleHistogram;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 119
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoResize(Z)V
    .locals 0
    .param p1, "autoResize"    # Z

    monitor-enter p0

    .line 99
    :try_start_0
    invoke-super {p0, p1}, Lorg/HdrHistogram/DoubleHistogram;->setAutoResize(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 98
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
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

    .line 338
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->setEndTimeStamp(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    monitor-exit p0

    return-void

    .line 337
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
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

    .line 328
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->setStartTimeStamp(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 327
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "timeStampMsec":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sizeOfEquivalentValueRange(D)D
    .locals 2
    .param p1, "value"    # D

    monitor-enter p0

    .line 288
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->sizeOfEquivalentValueRange(D)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 288
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "value":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized subtract(Lorg/HdrHistogram/DoubleHistogram;)V
    .locals 4
    .param p1, "fromHistogram"    # Lorg/HdrHistogram/DoubleHistogram;

    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/SynchronizedDoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v0, v0, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    iget-object v2, p1, Lorg/HdrHistogram/DoubleHistogram;->integerValuesHistogram:Lorg/HdrHistogram/AbstractHistogram;

    iget-wide v2, v2, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 200
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 201
    :try_start_1
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    :try_start_2
    invoke-super {p0, p1}, Lorg/HdrHistogram/DoubleHistogram;->subtract(Lorg/HdrHistogram/DoubleHistogram;)V

    .line 203
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 203
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p1    # "fromHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 204
    .restart local p1    # "fromHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :catchall_1
    move-exception v0

    :goto_0
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    :catchall_2
    move-exception v0

    goto :goto_0

    .line 206
    :cond_0
    monitor-enter p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 207
    :try_start_8
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 208
    :try_start_9
    invoke-super {p0, p1}, Lorg/HdrHistogram/DoubleHistogram;->subtract(Lorg/HdrHistogram/DoubleHistogram;)V

    .line 209
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 210
    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 212
    :goto_1
    monitor-exit p0

    return-void

    .line 209
    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .end local p1    # "fromHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :try_start_c
    throw v0

    .line 210
    .restart local p1    # "fromHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :catchall_4
    move-exception v0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 198
    .end local p1    # "fromHistogram":Lorg/HdrHistogram/DoubleHistogram;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized valuesAreEquivalent(DD)Z
    .locals 1
    .param p1, "value1"    # D
    .param p3, "value2"    # D

    monitor-enter p0

    .line 313
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/DoubleHistogram;->valuesAreEquivalent(DD)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 313
    .end local p0    # "this":Lorg/HdrHistogram/SynchronizedDoubleHistogram;
    .end local p1    # "value1":D
    .end local p3    # "value2":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
