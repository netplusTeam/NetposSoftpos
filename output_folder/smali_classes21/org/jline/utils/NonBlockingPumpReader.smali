.class public Lorg/jline/utils/NonBlockingPumpReader;
.super Lorg/jline/utils/NonBlockingReader;
.source "NonBlockingPumpReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/utils/NonBlockingPumpReader$NbpWriter;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# instance fields
.field private final buffer:[C

.field private closed:Z

.field private count:I

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private read:I

.field private write:I

.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lorg/jline/utils/NonBlockingPumpReader;-><init>(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "bufferSize"    # I

    .line 42
    invoke-direct {p0}, Lorg/jline/utils/NonBlockingReader;-><init>()V

    .line 43
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/jline/utils/NonBlockingPumpReader;->buffer:[C

    .line 44
    new-instance v0, Lorg/jline/utils/NonBlockingPumpReader$NbpWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jline/utils/NonBlockingPumpReader$NbpWriter;-><init>(Lorg/jline/utils/NonBlockingPumpReader;Lorg/jline/utils/NonBlockingPumpReader$1;)V

    iput-object v0, p0, Lorg/jline/utils/NonBlockingPumpReader;->writer:Ljava/io/Writer;

    .line 45
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/jline/utils/NonBlockingPumpReader;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/utils/NonBlockingPumpReader;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 48
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpReader;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 61
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 63
    :try_start_0
    iget v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 63
    return v1

    .line 65
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 66
    throw v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpReader;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 184
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 186
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->closed:Z

    .line 187
    iget-object v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 188
    iget-object v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 191
    nop

    .line 192
    return-void

    .line 190
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 191
    throw v1
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpReader;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method protected read(JZ)I
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "isPeek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpReader;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 72
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 75
    :try_start_0
    iget-boolean v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->closed:Z

    if-nez v1, :cond_1

    iget v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 77
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 78
    :try_start_1
    iget-object v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->notEmpty:Ljava/util/concurrent/locks/Condition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, v2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_0
    goto :goto_1

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p1    # "timeout":J
    .end local p3    # "isPeek":Z
    throw v2

    .line 86
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p1    # "timeout":J
    .restart local p3    # "isPeek":Z
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->closed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 87
    const/4 v1, -0x1

    .line 104
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 87
    return v1

    .line 88
    :cond_2
    :try_start_3
    iget v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->count:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_3

    .line 89
    const/4 v1, -0x2

    .line 104
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 89
    return v1

    .line 91
    :cond_3
    if-eqz p3, :cond_4

    .line 92
    :try_start_4
    iget-object v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->buffer:[C

    iget v2, p0, Lorg/jline/utils/NonBlockingPumpReader;->read:I

    aget-char v1, v1, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 104
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 92
    return v1

    .line 94
    :cond_4
    :try_start_5
    iget-object v2, p0, Lorg/jline/utils/NonBlockingPumpReader;->buffer:[C

    iget v3, p0, Lorg/jline/utils/NonBlockingPumpReader;->read:I

    aget-char v4, v2, v3

    .line 95
    .local v4, "res":I
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jline/utils/NonBlockingPumpReader;->read:I

    array-length v2, v2

    if-ne v3, v2, :cond_5

    .line 96
    const/4 v2, 0x0

    iput v2, p0, Lorg/jline/utils/NonBlockingPumpReader;->read:I

    .line 98
    :cond_5
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->count:I

    .line 99
    iget-object v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 100
    nop

    .line 104
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 100
    return v4

    .line 104
    .end local v4    # "res":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 105
    throw v1
.end method

.method public readBuffered([C)I
    .locals 7
    .param p1, "b"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    if-eqz p1, :cond_6

    .line 112
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 113
    return v1

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpReader;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 116
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 118
    :try_start_0
    iget-boolean v2, p0, Lorg/jline/utils/NonBlockingPumpReader;->closed:Z

    if-nez v2, :cond_1

    iget v2, p0, Lorg/jline/utils/NonBlockingPumpReader;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 120
    :try_start_1
    iget-object v2, p0, Lorg/jline/utils/NonBlockingPumpReader;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p1    # "b":[C
    throw v2

    .line 125
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p1    # "b":[C
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lorg/jline/utils/NonBlockingPumpReader;->closed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 126
    const/4 v1, -0x1

    .line 142
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 126
    return v1

    .line 127
    :cond_2
    :try_start_3
    iget v2, p0, Lorg/jline/utils/NonBlockingPumpReader;->count:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_3

    .line 128
    const/4 v1, -0x2

    .line 142
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 128
    return v1

    .line 130
    :cond_3
    :try_start_4
    array-length v3, p1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 131
    .local v2, "r":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 132
    iget-object v4, p0, Lorg/jline/utils/NonBlockingPumpReader;->buffer:[C

    iget v5, p0, Lorg/jline/utils/NonBlockingPumpReader;->read:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/jline/utils/NonBlockingPumpReader;->read:I

    aget-char v5, v4, v5

    aput-char v5, p1, v3

    .line 133
    array-length v4, v4

    if-ne v6, v4, :cond_4

    .line 134
    iput v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->read:I

    .line 131
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 137
    .end local v3    # "i":I
    :cond_5
    iget v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->count:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->count:I

    .line 138
    iget-object v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    nop

    .line 142
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 139
    return v2

    .line 142
    .end local v2    # "r":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 143
    throw v1

    .line 111
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public ready()Z
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/jline/utils/NonBlockingPumpReader;->available()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method write([CII)V
    .locals 6
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    if-lez p3, :cond_5

    .line 149
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpReader;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 150
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 152
    :goto_0
    if-lez p3, :cond_4

    .line 155
    :try_start_0
    iget-boolean v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->closed:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->count:I

    iget-object v2, p0, Lorg/jline/utils/NonBlockingPumpReader;->buffer:[C

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v1, v2, :cond_0

    .line 157
    :try_start_1
    iget-object v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    goto :goto_1

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p1    # "cbuf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v2

    .line 162
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p1    # "cbuf":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->closed:Z

    if-nez v1, :cond_3

    .line 165
    :goto_2
    if-lez p3, :cond_2

    iget v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->count:I

    iget-object v2, p0, Lorg/jline/utils/NonBlockingPumpReader;->buffer:[C

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 166
    iget v3, p0, Lorg/jline/utils/NonBlockingPumpReader;->write:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/jline/utils/NonBlockingPumpReader;->write:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v5, p2, 0x1

    .end local p2    # "off":I
    .local v5, "off":I
    :try_start_3
    aget-char p2, p1, p2

    aput-char p2, v2, v3

    .line 167
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->count:I

    .line 168
    add-int/lit8 p3, p3, -0x1

    .line 169
    array-length p2, v2

    if-ne v4, p2, :cond_1

    .line 170
    const/4 p2, 0x0

    iput p2, p0, Lorg/jline/utils/NonBlockingPumpReader;->write:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    :cond_1
    move p2, v5

    goto :goto_2

    .line 176
    :catchall_0
    move-exception v1

    move p2, v5

    goto :goto_3

    .line 173
    .end local v5    # "off":I
    .restart local p2    # "off":I
    :cond_2
    :try_start_4
    iget-object v1, p0, Lorg/jline/utils/NonBlockingPumpReader;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    .line 163
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p1    # "cbuf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 176
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p1    # "cbuf":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catchall_1
    move-exception v1

    :goto_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 177
    throw v1

    .line 176
    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 179
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_5
    return-void
.end method
