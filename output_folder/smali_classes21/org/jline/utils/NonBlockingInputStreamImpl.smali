.class public Lorg/jline/utils/NonBlockingInputStreamImpl;
.super Lorg/jline/utils/NonBlockingInputStream;
.source "NonBlockingInputStreamImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private b:I

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/InputStream;

.field private name:Ljava/lang/String;

.field private thread:Ljava/lang/Thread;

.field private threadDelay:J

.field private threadIsReading:Z


# direct methods
.method public static synthetic $r8$lambda$pd7ZvUrBxHY_s955ad_ziEphJXM(Lorg/jline/utils/NonBlockingInputStreamImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/jline/utils/NonBlockingInputStreamImpl;->run()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;

    .line 49
    invoke-direct {p0}, Lorg/jline/utils/NonBlockingInputStream;-><init>()V

    .line 33
    const/4 v0, -0x2

    iput v0, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->b:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->threadIsReading:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->exception:Ljava/io/IOException;

    .line 38
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->threadDelay:J

    .line 50
    iput-object p2, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->in:Ljava/io/InputStream;

    .line 51
    iput-object p1, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->name:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private run()V
    .locals 7

    .line 179
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "NonBlockingInputStream start"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 189
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 190
    :try_start_1
    iget-boolean v2, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->threadIsReading:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 196
    .local v2, "needToRead":Z
    if-nez v2, :cond_0

    .line 197
    :try_start_2
    iget-wide v4, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->threadDelay:J

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    .line 199
    :catch_0
    move-exception v4

    goto :goto_2

    .line 201
    :cond_0
    :goto_1
    nop

    .line 203
    :goto_2
    :try_start_3
    iget-boolean v4, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->threadIsReading:Z

    move v2, v4

    .line 204
    if-nez v2, :cond_1

    .line 205
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 239
    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "NonBlockingInputStream shutdown"

    aput-object v4, v0, v3

    invoke-static {v0}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 240
    monitor-enter p0

    .line 241
    :try_start_4
    iput-object v1, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->thread:Ljava/lang/Thread;

    .line 242
    iput-boolean v3, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->threadIsReading:Z

    .line 243
    monitor-exit p0

    .line 205
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 207
    :cond_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 213
    const/4 v4, -0x2

    .line 214
    .local v4, "byteRead":I
    const/4 v5, 0x0

    .line 216
    .local v5, "failure":Ljava/io/IOException;
    :try_start_6
    iget-object v6, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move v4, v6

    .line 219
    goto :goto_3

    .line 217
    :catch_1
    move-exception v6

    .line 218
    .local v6, "e":Ljava/io/IOException;
    move-object v5, v6

    .line 224
    .end local v6    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 225
    :try_start_8
    iput-object v5, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->exception:Ljava/io/IOException;

    .line 226
    iput v4, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->b:I

    .line 227
    iput-boolean v3, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->threadIsReading:Z

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 229
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 232
    if-gez v4, :cond_2

    .line 239
    new-array v0, v0, [Ljava/lang/Object;

    const-string v6, "NonBlockingInputStream shutdown"

    aput-object v6, v0, v3

    invoke-static {v0}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 240
    monitor-enter p0

    .line 241
    :try_start_9
    iput-object v1, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->thread:Ljava/lang/Thread;

    .line 242
    iput-boolean v3, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->threadIsReading:Z

    .line 243
    monitor-exit p0

    .line 233
    return-void

    .line 243
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    .line 235
    .end local v4    # "byteRead":I
    .end local v5    # "failure":Ljava/io/IOException;
    :cond_2
    goto :goto_0

    .line 229
    .restart local v4    # "byteRead":I
    .restart local v5    # "failure":Ljava/io/IOException;
    :catchall_2
    move-exception v6

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 207
    .end local v2    # "needToRead":Z
    .end local v4    # "byteRead":I
    .end local v5    # "failure":Ljava/io/IOException;
    :catchall_3
    move-exception v2

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 236
    :catchall_4
    move-exception v2

    .line 237
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v4, 0x2

    :try_start_e
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Error in NonBlockingInputStream thread"

    aput-object v5, v4, v3

    aput-object v2, v4, v0

    invoke-static {v4}, Lorg/jline/utils/Log;->warn([Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 239
    .end local v2    # "t":Ljava/lang/Throwable;
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "NonBlockingInputStream shutdown"

    aput-object v2, v0, v3

    invoke-static {v0}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 240
    monitor-enter p0

    .line 241
    :try_start_f
    iput-object v1, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->thread:Ljava/lang/Thread;

    .line 242
    iput-boolean v3, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->threadIsReading:Z

    .line 243
    monitor-exit p0

    .line 244
    nop

    .line 245
    return-void

    .line 243
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v0

    .line 239
    :catchall_6
    move-exception v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "NonBlockingInputStream shutdown"

    aput-object v4, v0, v3

    invoke-static {v0}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 240
    monitor-enter p0

    .line 241
    :try_start_10
    iput-object v1, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->thread:Ljava/lang/Thread;

    .line 242
    iput-boolean v3, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->threadIsReading:Z

    .line 243
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 244
    throw v2

    .line 243
    :catchall_7
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v0
.end method

.method private declared-synchronized startReadingThreadIfNeeded()V
    .locals 3

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jline/utils/NonBlockingInputStreamImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/jline/utils/NonBlockingInputStreamImpl$$ExternalSyntheticLambda0;-><init>(Lorg/jline/utils/NonBlockingInputStreamImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->thread:Ljava/lang/Thread;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " non blocking reader thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 59
    iget-object v0, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local p0    # "this":Lorg/jline/utils/NonBlockingInputStreamImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 81
    invoke-virtual {p0}, Lorg/jline/utils/NonBlockingInputStreamImpl;->shutdown()V

    .line 82
    return-void
.end method

.method public declared-synchronized read(JZ)I
    .locals 11
    .param p1, "timeout"    # J
    .param p3, "isPeek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->exception:Ljava/io/IOException;

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-eqz v0, :cond_2

    .line 98
    iget v3, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->b:I

    if-ne v3, v2, :cond_1

    .line 99
    nop

    .line 100
    .local v0, "toBeThrown":Ljava/io/IOException;
    if-nez p3, :cond_0

    .line 101
    iput-object v1, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->exception:Ljava/io/IOException;

    .line 102
    .end local p0    # "this":Lorg/jline/utils/NonBlockingInputStreamImpl;
    :cond_0
    throw v0

    .line 98
    .end local v0    # "toBeThrown":Ljava/io/IOException;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 110
    :cond_2
    iget v3, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->b:I

    const/4 v4, -0x1

    if-lt v3, v4, :cond_4

    .line 111
    if-nez v0, :cond_3

    goto/16 :goto_3

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 113
    :cond_4
    const-wide/16 v5, 0x0

    if-nez p3, :cond_5

    cmp-long v0, p1, v5

    if-gtz v0, :cond_5

    iget-boolean v0, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->threadIsReading:Z

    if-nez v0, :cond_5

    .line 114
    iget-object v0, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->b:I

    goto :goto_3

    .line 120
    :cond_5
    iget-boolean v0, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->threadIsReading:Z

    const/4 v3, 0x1

    if-nez v0, :cond_6

    .line 121
    iput-boolean v3, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->threadIsReading:Z

    .line 122
    invoke-direct {p0}, Lorg/jline/utils/NonBlockingInputStreamImpl;->startReadingThreadIfNeeded()V

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 126
    :cond_6
    cmp-long v0, p1, v5

    if-gtz v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 132
    .local v0, "isInfinite":Z
    :goto_1
    if-nez v0, :cond_8

    cmp-long v3, p1, v5

    if-lez v3, :cond_d

    .line 133
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .local v7, "start":J
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_9

    .line 139
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 143
    goto :goto_2

    .line 137
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

    .line 141
    .restart local v0    # "isInfinite":Z
    .restart local v7    # "start":J
    .restart local p1    # "timeout":J
    .restart local p3    # "isPeek":Z
    :catch_0
    move-exception v3

    .line 142
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v9, Ljava/io/InterruptedIOException;

    invoke-direct {v9}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-virtual {v9, v3}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v9

    check-cast v9, Ljava/io/IOException;

    iput-object v9, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->exception:Ljava/io/IOException;

    .line 145
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_2
    iget-object v3, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->exception:Ljava/io/IOException;

    if-eqz v3, :cond_c

    .line 146
    iget v4, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->b:I

    if-ne v4, v2, :cond_b

    .line 148
    move-object v2, v3

    .line 149
    .local v2, "toBeThrown":Ljava/io/IOException;
    if-nez p3, :cond_a

    .line 150
    iput-object v1, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->exception:Ljava/io/IOException;

    .line 151
    :cond_a
    throw v2

    .line 146
    .end local v2    # "toBeThrown":Ljava/io/IOException;
    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 154
    :cond_c
    iget v9, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->b:I

    if-lt v9, v4, :cond_10

    .line 155
    if-nez v3, :cond_f

    .line 171
    .end local v0    # "isInfinite":Z
    .end local v7    # "start":J
    :cond_d
    :goto_3
    iget v0, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->b:I

    .line 172
    .local v0, "ret":I
    if-nez p3, :cond_e

    .line 173
    iput v2, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    :cond_e
    monitor-exit p0

    return v0

    .line 155
    .local v0, "isInfinite":Z
    .restart local v7    # "start":J
    :cond_f
    :try_start_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 159
    :cond_10
    if-nez v0, :cond_11

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long/2addr v9, v7

    sub-long/2addr p1, v9

    .line 162
    .end local v7    # "start":J
    :cond_11
    goto :goto_1

    .line 96
    .end local v0    # "isInfinite":Z
    .end local p1    # "timeout":J
    .end local p3    # "isPeek":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/jline/utils/NonBlockingInputStreamImpl;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local p0    # "this":Lorg/jline/utils/NonBlockingInputStreamImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
