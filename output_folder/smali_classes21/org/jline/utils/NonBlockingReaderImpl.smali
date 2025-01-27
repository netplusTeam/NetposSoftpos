.class public Lorg/jline/utils/NonBlockingReaderImpl;
.super Lorg/jline/utils/NonBlockingReader;
.source "NonBlockingReaderImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final READ_EXPIRED:I = -0x2


# instance fields
.field private ch:I

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/Reader;

.field private name:Ljava/lang/String;

.field private thread:Ljava/lang/Thread;

.field private threadDelay:J

.field private threadIsReading:Z


# direct methods
.method public static synthetic $r8$lambda$e-qi6UbJ_26kszotGuO4ln-5Urk(Lorg/jline/utils/NonBlockingReaderImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/jline/utils/NonBlockingReaderImpl;->run()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/Reader;

    .line 53
    invoke-direct {p0}, Lorg/jline/utils/NonBlockingReader;-><init>()V

    .line 37
    const/4 v0, -0x2

    iput v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->ch:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->threadIsReading:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->exception:Ljava/io/IOException;

    .line 42
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->threadDelay:J

    .line 54
    iput-object p2, p0, Lorg/jline/utils/NonBlockingReaderImpl;->in:Ljava/io/Reader;

    .line 55
    iput-object p1, p0, Lorg/jline/utils/NonBlockingReaderImpl;->name:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private run()V
    .locals 7

    .line 214
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "NonBlockingReader start"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 224
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 225
    :try_start_1
    iget-boolean v2, p0, Lorg/jline/utils/NonBlockingReaderImpl;->threadIsReading:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 231
    .local v2, "needToRead":Z
    if-nez v2, :cond_0

    .line 232
    :try_start_2
    iget-wide v4, p0, Lorg/jline/utils/NonBlockingReaderImpl;->threadDelay:J

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 234
    :catch_0
    move-exception v4

    goto :goto_2

    .line 236
    :cond_0
    :goto_1
    nop

    .line 238
    :goto_2
    :try_start_3
    iget-boolean v4, p0, Lorg/jline/utils/NonBlockingReaderImpl;->threadIsReading:Z

    move v2, v4

    .line 239
    if-nez v2, :cond_1

    .line 240
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 273
    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "NonBlockingReader shutdown"

    aput-object v4, v0, v3

    invoke-static {v0}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 274
    monitor-enter p0

    .line 275
    :try_start_4
    iput-object v1, p0, Lorg/jline/utils/NonBlockingReaderImpl;->thread:Ljava/lang/Thread;

    .line 276
    iput-boolean v3, p0, Lorg/jline/utils/NonBlockingReaderImpl;->threadIsReading:Z

    .line 277
    monitor-exit p0

    .line 240
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 242
    :cond_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 248
    const/4 v4, -0x2

    .line 249
    .local v4, "charRead":I
    const/4 v5, 0x0

    .line 251
    .local v5, "failure":Ljava/io/IOException;
    :try_start_6
    iget-object v6, p0, Lorg/jline/utils/NonBlockingReaderImpl;->in:Ljava/io/Reader;

    invoke-virtual {v6}, Ljava/io/Reader;->read()I

    move-result v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move v4, v6

    .line 258
    goto :goto_3

    .line 255
    :catch_1
    move-exception v6

    .line 256
    .local v6, "e":Ljava/io/IOException;
    move-object v5, v6

    .line 263
    .end local v6    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 264
    :try_start_8
    iput-object v5, p0, Lorg/jline/utils/NonBlockingReaderImpl;->exception:Ljava/io/IOException;

    .line 265
    iput v4, p0, Lorg/jline/utils/NonBlockingReaderImpl;->ch:I

    .line 266
    iput-boolean v3, p0, Lorg/jline/utils/NonBlockingReaderImpl;->threadIsReading:Z

    .line 267
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 268
    monitor-exit p0

    .line 269
    .end local v4    # "charRead":I
    .end local v5    # "failure":Ljava/io/IOException;
    goto :goto_0

    .line 268
    .restart local v4    # "charRead":I
    .restart local v5    # "failure":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 242
    .end local v2    # "needToRead":Z
    .end local v4    # "charRead":I
    .end local v5    # "failure":Ljava/io/IOException;
    :catchall_2
    move-exception v2

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 270
    :catchall_3
    move-exception v2

    .line 271
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v4, 0x2

    :try_start_c
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Error in NonBlockingReader thread"

    aput-object v5, v4, v3

    aput-object v2, v4, v0

    invoke-static {v4}, Lorg/jline/utils/Log;->warn([Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 273
    .end local v2    # "t":Ljava/lang/Throwable;
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "NonBlockingReader shutdown"

    aput-object v2, v0, v3

    invoke-static {v0}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 274
    monitor-enter p0

    .line 275
    :try_start_d
    iput-object v1, p0, Lorg/jline/utils/NonBlockingReaderImpl;->thread:Ljava/lang/Thread;

    .line 276
    iput-boolean v3, p0, Lorg/jline/utils/NonBlockingReaderImpl;->threadIsReading:Z

    .line 277
    monitor-exit p0

    .line 278
    nop

    .line 279
    return-void

    .line 277
    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    .line 273
    :catchall_5
    move-exception v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "NonBlockingReader shutdown"

    aput-object v4, v0, v3

    invoke-static {v0}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 274
    monitor-enter p0

    .line 275
    :try_start_e
    iput-object v1, p0, Lorg/jline/utils/NonBlockingReaderImpl;->thread:Ljava/lang/Thread;

    .line 276
    iput-boolean v3, p0, Lorg/jline/utils/NonBlockingReaderImpl;->threadIsReading:Z

    .line 277
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 278
    throw v2

    .line 277
    :catchall_6
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0
.end method

.method private declared-synchronized startReadingThreadIfNeeded()V
    .locals 3

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jline/utils/NonBlockingReaderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/jline/utils/NonBlockingReaderImpl$$ExternalSyntheticLambda0;-><init>(Lorg/jline/utils/NonBlockingReaderImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->thread:Ljava/lang/Thread;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jline/utils/NonBlockingReaderImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " non blocking reader thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 63
    iget-object v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local p0    # "this":Lorg/jline/utils/NonBlockingReaderImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 282
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/jline/utils/NonBlockingReaderImpl;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lorg/jline/utils/NonBlockingReaderImpl;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 285
    .end local p0    # "this":Lorg/jline/utils/NonBlockingReaderImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 85
    invoke-virtual {p0}, Lorg/jline/utils/NonBlockingReaderImpl;->shutdown()V

    .line 86
    return-void
.end method

.method protected declared-synchronized read(JZ)I
    .locals 11
    .param p1, "timeout"    # J
    .param p3, "isPeek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->exception:Ljava/io/IOException;

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-eqz v0, :cond_2

    .line 133
    iget v3, p0, Lorg/jline/utils/NonBlockingReaderImpl;->ch:I

    if-ne v3, v2, :cond_1

    .line 134
    nop

    .line 135
    .local v0, "toBeThrown":Ljava/io/IOException;
    if-nez p3, :cond_0

    .line 136
    iput-object v1, p0, Lorg/jline/utils/NonBlockingReaderImpl;->exception:Ljava/io/IOException;

    .line 137
    .end local p0    # "this":Lorg/jline/utils/NonBlockingReaderImpl;
    :cond_0
    throw v0

    .line 133
    .end local v0    # "toBeThrown":Ljava/io/IOException;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 145
    :cond_2
    iget v3, p0, Lorg/jline/utils/NonBlockingReaderImpl;->ch:I

    const/4 v4, -0x1

    if-lt v3, v4, :cond_4

    .line 146
    if-nez v0, :cond_3

    goto/16 :goto_3

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 148
    :cond_4
    const-wide/16 v5, 0x0

    if-nez p3, :cond_5

    cmp-long v0, p1, v5

    if-gtz v0, :cond_5

    iget-boolean v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->threadIsReading:Z

    if-nez v0, :cond_5

    .line 149
    iget-object v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    iput v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->ch:I

    goto :goto_3

    .line 155
    :cond_5
    iget-boolean v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->threadIsReading:Z

    const/4 v3, 0x1

    if-nez v0, :cond_6

    .line 156
    iput-boolean v3, p0, Lorg/jline/utils/NonBlockingReaderImpl;->threadIsReading:Z

    .line 157
    invoke-direct {p0}, Lorg/jline/utils/NonBlockingReaderImpl;->startReadingThreadIfNeeded()V

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 161
    :cond_6
    cmp-long v0, p1, v5

    if-gtz v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 167
    .local v0, "isInfinite":Z
    :goto_1
    if-nez v0, :cond_8

    cmp-long v3, p1, v5

    if-lez v3, :cond_d

    .line 168
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .local v7, "start":J
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_9

    .line 174
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 178
    goto :goto_2

    .line 172
    :cond_9
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    .end local v0    # "isInfinite":Z
    .end local v7    # "start":J
    .end local p1    # "timeout":J
    .end local p3    # "isPeek":Z
    throw v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .restart local v0    # "isInfinite":Z
    .restart local v7    # "start":J
    .restart local p1    # "timeout":J
    .restart local p3    # "isPeek":Z
    :catch_0
    move-exception v3

    .line 177
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v9, Ljava/io/InterruptedIOException;

    invoke-direct {v9}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-virtual {v9, v3}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v9

    check-cast v9, Ljava/io/IOException;

    iput-object v9, p0, Lorg/jline/utils/NonBlockingReaderImpl;->exception:Ljava/io/IOException;

    .line 180
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_2
    iget-object v3, p0, Lorg/jline/utils/NonBlockingReaderImpl;->exception:Ljava/io/IOException;

    if-eqz v3, :cond_c

    .line 181
    iget v4, p0, Lorg/jline/utils/NonBlockingReaderImpl;->ch:I

    if-ne v4, v2, :cond_b

    .line 183
    move-object v2, v3

    .line 184
    .local v2, "toBeThrown":Ljava/io/IOException;
    if-nez p3, :cond_a

    .line 185
    iput-object v1, p0, Lorg/jline/utils/NonBlockingReaderImpl;->exception:Ljava/io/IOException;

    .line 186
    :cond_a
    throw v2

    .line 181
    .end local v2    # "toBeThrown":Ljava/io/IOException;
    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 189
    :cond_c
    iget v9, p0, Lorg/jline/utils/NonBlockingReaderImpl;->ch:I

    if-lt v9, v4, :cond_10

    .line 190
    if-nez v3, :cond_f

    .line 206
    .end local v0    # "isInfinite":Z
    .end local v7    # "start":J
    :cond_d
    :goto_3
    iget v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->ch:I

    .line 207
    .local v0, "ret":I
    if-nez p3, :cond_e

    .line 208
    iput v2, p0, Lorg/jline/utils/NonBlockingReaderImpl;->ch:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    :cond_e
    monitor-exit p0

    return v0

    .line 190
    .local v0, "isInfinite":Z
    .restart local v7    # "start":J
    :cond_f
    :try_start_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 194
    :cond_10
    if-nez v0, :cond_11

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long/2addr v9, v7

    sub-long/2addr p1, v9

    .line 197
    .end local v7    # "start":J
    :cond_11
    goto :goto_1

    .line 131
    .end local v0    # "isInfinite":Z
    .end local p1    # "timeout":J
    .end local p3    # "isPeek":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public readBuffered([C)I
    .locals 7
    .param p1, "b"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    if-eqz p1, :cond_6

    .line 97
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    return v1

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->exception:Ljava/io/IOException;

    const/4 v2, -0x2

    if-eqz v0, :cond_2

    .line 100
    iget v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->ch:I

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 101
    :cond_1
    iget-object v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->exception:Ljava/io/IOException;

    .line 102
    .local v0, "toBeThrown":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jline/utils/NonBlockingReaderImpl;->exception:Ljava/io/IOException;

    .line 103
    throw v0

    .line 104
    .end local v0    # "toBeThrown":Ljava/io/IOException;
    :cond_2
    iget v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->ch:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-lt v0, v4, :cond_3

    .line 105
    int-to-char v0, v0

    aput-char v0, p1, v1

    .line 106
    iput v2, p0, Lorg/jline/utils/NonBlockingReaderImpl;->ch:I

    .line 107
    return v3

    .line 108
    :cond_3
    iget-boolean v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->threadIsReading:Z

    if-nez v0, :cond_4

    .line 109
    iget-object v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->read([C)I

    move-result v0

    return v0

    .line 111
    :cond_4
    const-wide/16 v5, -0x1

    invoke-virtual {p0, v5, v6, v1}, Lorg/jline/utils/NonBlockingReaderImpl;->read(JZ)I

    move-result v0

    .line 112
    .local v0, "c":I
    if-ltz v0, :cond_5

    .line 113
    int-to-char v2, v0

    aput-char v2, p1, v1

    .line 114
    return v3

    .line 116
    :cond_5
    return v4

    .line 96
    .end local v0    # "c":I
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public declared-synchronized ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_0
    iget v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->ch:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .end local p0    # "this":Lorg/jline/utils/NonBlockingReaderImpl;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lorg/jline/utils/NonBlockingReaderImpl;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local p0    # "this":Lorg/jline/utils/NonBlockingReaderImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
