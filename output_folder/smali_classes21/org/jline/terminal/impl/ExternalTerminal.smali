.class public Lorg/jline/terminal/impl/ExternalTerminal;
.super Lorg/jline/terminal/impl/LineDisciplineTerminal;
.source "ExternalTerminal.java"


# instance fields
.field protected final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final lock:Ljava/lang/Object;

.field protected final masterInput:Ljava/io/InputStream;

.field protected paused:Z

.field protected pumpThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "masterInput"    # Ljava/io/InputStream;
    .param p4, "masterOutput"    # Ljava/io/OutputStream;
    .param p5, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    sget-object v6, Lorg/jline/terminal/Terminal$SignalHandler;->SIG_DFL:Lorg/jline/terminal/Terminal$SignalHandler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/jline/terminal/impl/ExternalTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "masterInput"    # Ljava/io/InputStream;
    .param p4, "masterOutput"    # Ljava/io/OutputStream;
    .param p5, "encoding"    # Ljava/nio/charset/Charset;
    .param p6, "signalHandler"    # Lorg/jline/terminal/Terminal$SignalHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/jline/terminal/impl/ExternalTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;Z)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "masterInput"    # Ljava/io/InputStream;
    .param p4, "masterOutput"    # Ljava/io/OutputStream;
    .param p5, "encoding"    # Ljava/nio/charset/Charset;
    .param p6, "signalHandler"    # Lorg/jline/terminal/Terminal$SignalHandler;
    .param p7, "paused"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lorg/jline/terminal/impl/ExternalTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;ZLorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;ZLorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "masterInput"    # Ljava/io/InputStream;
    .param p4, "masterOutput"    # Ljava/io/OutputStream;
    .param p5, "encoding"    # Ljava/nio/charset/Charset;
    .param p6, "signalHandler"    # Lorg/jline/terminal/Terminal$SignalHandler;
    .param p7, "paused"    # Z
    .param p8, "attributes"    # Lorg/jline/terminal/Attributes;
    .param p9, "size"    # Lorg/jline/terminal/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/LineDisciplineTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jline/terminal/impl/ExternalTerminal;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jline/terminal/impl/ExternalTerminal;->lock:Ljava/lang/Object;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/terminal/impl/ExternalTerminal;->paused:Z

    .line 74
    iput-object p3, p0, Lorg/jline/terminal/impl/ExternalTerminal;->masterInput:Ljava/io/InputStream;

    .line 75
    if-eqz p8, :cond_0

    .line 76
    invoke-virtual {p0, p8}, Lorg/jline/terminal/impl/ExternalTerminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 78
    :cond_0
    if-eqz p9, :cond_1

    .line 79
    invoke-virtual {p0, p9}, Lorg/jline/terminal/impl/ExternalTerminal;->setSize(Lorg/jline/terminal/Size;)V

    .line 81
    :cond_1
    if-nez p7, :cond_2

    .line 82
    invoke-virtual {p0}, Lorg/jline/terminal/impl/ExternalTerminal;->resume()V

    .line 84
    :cond_2
    return-void
.end method


# virtual methods
.method public canPauseResume()Z
    .locals 1

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method protected doClose()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/jline/terminal/impl/ExternalTerminal;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lorg/jline/terminal/impl/ExternalTerminal;->pause()V

    .line 89
    invoke-super {p0}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->doClose()V

    .line 91
    :cond_0
    return-void
.end method

.method public getCursorPosition(Ljava/util/function/IntConsumer;)Lorg/jline/terminal/Cursor;
    .locals 1
    .param p1, "discarded"    # Ljava/util/function/IntConsumer;

    .line 171
    invoke-static {p0, p1}, Lorg/jline/terminal/impl/CursorSupport;->getCursorPosition(Lorg/jline/terminal/Terminal;Ljava/util/function/IntConsumer;)Lorg/jline/terminal/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/jline/terminal/impl/ExternalTerminal;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/jline/terminal/impl/ExternalTerminal;->paused:Z

    .line 102
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pause(Z)V
    .locals 2
    .param p1, "wait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/jline/terminal/impl/ExternalTerminal;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/jline/terminal/impl/ExternalTerminal;->paused:Z

    .line 110
    iget-object v1, p0, Lorg/jline/terminal/impl/ExternalTerminal;->pumpThread:Ljava/lang/Thread;

    .line 111
    .local v1, "p":Ljava/lang/Thread;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 114
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 116
    :cond_0
    return-void

    .line 111
    .end local v1    # "p":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public paused()Z
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/jline/terminal/impl/ExternalTerminal;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-boolean v1, p0, Lorg/jline/terminal/impl/ExternalTerminal;->paused:Z

    monitor-exit v0

    return v1

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pump()V
    .locals 5

    .line 139
    const/16 v0, 0x400

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    .line 141
    .local v0, "buf":[B
    :goto_0
    iget-object v2, p0, Lorg/jline/terminal/impl/ExternalTerminal;->masterInput:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 142
    .local v2, "c":I
    if-ltz v2, :cond_0

    .line 143
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lorg/jline/terminal/impl/ExternalTerminal;->processInputBytes([BII)V

    .line 145
    :cond_0
    if-ltz v2, :cond_3

    iget-object v3, p0, Lorg/jline/terminal/impl/ExternalTerminal;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    goto :goto_1

    .line 148
    :cond_1
    iget-object v3, p0, Lorg/jline/terminal/impl/ExternalTerminal;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 149
    :try_start_1
    iget-boolean v4, p0, Lorg/jline/terminal/impl/ExternalTerminal;->paused:Z

    if-eqz v4, :cond_2

    .line 150
    iput-object v1, p0, Lorg/jline/terminal/impl/ExternalTerminal;->pumpThread:Ljava/lang/Thread;

    .line 151
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    iget-object v4, p0, Lorg/jline/terminal/impl/ExternalTerminal;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 159
    :try_start_2
    iput-object v1, p0, Lorg/jline/terminal/impl/ExternalTerminal;->pumpThread:Ljava/lang/Thread;

    .line 160
    monitor-exit v4

    .line 151
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 153
    :cond_2
    :try_start_3
    monitor-exit v3

    .line 154
    .end local v2    # "c":I
    goto :goto_0

    .line 153
    .restart local v2    # "c":I
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 158
    .end local v0    # "buf":[B
    .end local v2    # "c":I
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/jline/terminal/impl/ExternalTerminal;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_5
    iput-object v1, p0, Lorg/jline/terminal/impl/ExternalTerminal;->pumpThread:Ljava/lang/Thread;

    .line 160
    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 158
    :catchall_3
    move-exception v0

    goto :goto_4

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/ExternalTerminal;->processIOException(Ljava/io/IOException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 158
    .end local v0    # "e":Ljava/io/IOException;
    iget-object v0, p0, Lorg/jline/terminal/impl/ExternalTerminal;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_7
    iput-object v1, p0, Lorg/jline/terminal/impl/ExternalTerminal;->pumpThread:Ljava/lang/Thread;

    .line 160
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 161
    :goto_2
    nop

    .line 163
    :try_start_8
    iget-object v0, p0, Lorg/jline/terminal/impl/ExternalTerminal;->slaveInput:Lorg/jline/utils/NonBlockingPumpInputStream;

    invoke-virtual {v0}, Lorg/jline/utils/NonBlockingPumpInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 166
    goto :goto_3

    .line 164
    :catch_1
    move-exception v0

    .line 167
    :goto_3
    return-void

    .line 160
    :catchall_4
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1

    .line 158
    :goto_4
    iget-object v2, p0, Lorg/jline/terminal/impl/ExternalTerminal;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    :try_start_a
    iput-object v1, p0, Lorg/jline/terminal/impl/ExternalTerminal;->pumpThread:Ljava/lang/Thread;

    .line 160
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 161
    throw v0

    .line 160
    :catchall_5
    move-exception v0

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0
.end method

.method public resume()V
    .locals 5

    .line 120
    iget-object v0, p0, Lorg/jline/terminal/impl/ExternalTerminal;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/jline/terminal/impl/ExternalTerminal;->paused:Z

    .line 122
    iget-object v1, p0, Lorg/jline/terminal/impl/ExternalTerminal;->pumpThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/jline/terminal/impl/ExternalTerminal$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/jline/terminal/impl/ExternalTerminal$$ExternalSyntheticLambda0;-><init>(Lorg/jline/terminal/impl/ExternalTerminal;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " input pump thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jline/terminal/impl/ExternalTerminal;->pumpThread:Ljava/lang/Thread;

    .line 124
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 125
    iget-object v1, p0, Lorg/jline/terminal/impl/ExternalTerminal;->pumpThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 127
    :cond_0
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
