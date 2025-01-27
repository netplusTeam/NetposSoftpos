.class public Lorg/jline/terminal/impl/PosixPtyTerminal;
.super Lorg/jline/terminal/impl/AbstractPosixTerminal;
.source "PosixPtyTerminal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/terminal/impl/PosixPtyTerminal$InputStreamWrapper;
    }
.end annotation


# instance fields
.field private final in:Ljava/io/InputStream;

.field private final input:Lorg/jline/utils/NonBlockingInputStream;

.field private inputPumpThread:Ljava/lang/Thread;

.field private final lock:Ljava/lang/Object;

.field private final masterInput:Ljava/io/InputStream;

.field private final masterOutput:Ljava/io/OutputStream;

.field private final out:Ljava/io/OutputStream;

.field private final output:Ljava/io/OutputStream;

.field private outputPumpThread:Ljava/lang/Thread;

.field private paused:Z

.field private final reader:Lorg/jline/utils/NonBlockingReader;

.field private final writer:Ljava/io/PrintWriter;


# direct methods
.method public static synthetic $r8$lambda$09uVd5D2gk8PnRUh0Hf8EJg2OqY(Lorg/jline/terminal/impl/PosixPtyTerminal;)V
    .locals 0

    invoke-direct {p0}, Lorg/jline/terminal/impl/PosixPtyTerminal;->pumpOut()V

    return-void
.end method

.method public static synthetic $r8$lambda$QFLQmTi0-eC-GUajXC9nnAzYons(Lorg/jline/terminal/impl/PosixPtyTerminal;)V
    .locals 0

    invoke-direct {p0}, Lorg/jline/terminal/impl/PosixPtyTerminal;->pumpIn()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/terminal/spi/Pty;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "pty"    # Lorg/jline/terminal/spi/Pty;
    .param p4, "in"    # Ljava/io/InputStream;
    .param p5, "out"    # Ljava/io/OutputStream;
    .param p6, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    sget-object v7, Lorg/jline/terminal/Terminal$SignalHandler;->SIG_DFL:Lorg/jline/terminal/Terminal$SignalHandler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/jline/terminal/impl/PosixPtyTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/terminal/spi/Pty;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/terminal/spi/Pty;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "pty"    # Lorg/jline/terminal/spi/Pty;
    .param p4, "in"    # Ljava/io/InputStream;
    .param p5, "out"    # Ljava/io/OutputStream;
    .param p6, "encoding"    # Ljava/nio/charset/Charset;
    .param p7, "signalHandler"    # Lorg/jline/terminal/Terminal$SignalHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/jline/terminal/impl/PosixPtyTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/terminal/spi/Pty;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;Z)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/terminal/spi/Pty;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;Z)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "pty"    # Lorg/jline/terminal/spi/Pty;
    .param p4, "in"    # Ljava/io/InputStream;
    .param p5, "out"    # Ljava/io/OutputStream;
    .param p6, "encoding"    # Ljava/nio/charset/Charset;
    .param p7, "signalHandler"    # Lorg/jline/terminal/Terminal$SignalHandler;
    .param p8, "paused"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/AbstractPosixTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jline/terminal/spi/Pty;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->lock:Ljava/lang/Object;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->paused:Z

    .line 52
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->in:Ljava/io/InputStream;

    .line 53
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->out:Ljava/io/OutputStream;

    .line 54
    invoke-interface {p3}, Lorg/jline/terminal/spi/Pty;->getMasterInput()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->masterInput:Ljava/io/InputStream;

    .line 55
    invoke-interface {p3}, Lorg/jline/terminal/spi/Pty;->getMasterOutput()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->masterOutput:Ljava/io/OutputStream;

    .line 56
    new-instance v0, Lorg/jline/terminal/impl/PosixPtyTerminal$InputStreamWrapper;

    invoke-interface {p3}, Lorg/jline/terminal/spi/Pty;->getSlaveInput()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jline/utils/NonBlocking;->nonBlocking(Ljava/lang/String;Ljava/io/InputStream;)Lorg/jline/utils/NonBlockingInputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/jline/terminal/impl/PosixPtyTerminal$InputStreamWrapper;-><init>(Lorg/jline/terminal/impl/PosixPtyTerminal;Lorg/jline/utils/NonBlockingInputStream;)V

    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->input:Lorg/jline/utils/NonBlockingInputStream;

    .line 57
    invoke-interface {p3}, Lorg/jline/terminal/spi/Pty;->getSlaveOutput()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->output:Ljava/io/OutputStream;

    .line 58
    invoke-virtual {p0}, Lorg/jline/terminal/impl/PosixPtyTerminal;->encoding()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lorg/jline/utils/NonBlocking;->nonBlocking(Ljava/lang/String;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/jline/utils/NonBlockingReader;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->reader:Lorg/jline/utils/NonBlockingReader;

    .line 59
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/PosixPtyTerminal;->encoding()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->writer:Ljava/io/PrintWriter;

    .line 60
    invoke-virtual {p0}, Lorg/jline/terminal/impl/PosixPtyTerminal;->parseInfoCmp()V

    .line 61
    if-nez p8, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/jline/terminal/impl/PosixPtyTerminal;->resume()V

    .line 64
    :cond_0
    return-void
.end method

.method private pumpIn()V
    .locals 3

    .line 172
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 173
    :try_start_1
    iget-boolean v2, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->paused:Z

    if-eqz v2, :cond_0

    .line 174
    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->inputPumpThread:Ljava/lang/Thread;

    .line 175
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 189
    iget-object v2, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 190
    :try_start_2
    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->inputPumpThread:Ljava/lang/Thread;

    .line 191
    monitor-exit v2

    .line 175
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 177
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 178
    :try_start_4
    iget-object v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 179
    .local v1, "b":I
    if-gez v1, :cond_1

    .line 180
    iget-object v2, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->input:Lorg/jline/utils/NonBlockingInputStream;

    invoke-virtual {v2}, Lorg/jline/utils/NonBlockingInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 181
    nop

    .line 189
    .end local v1    # "b":I
    iget-object v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_5
    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->inputPumpThread:Ljava/lang/Thread;

    .line 191
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 183
    .restart local v1    # "b":I
    :cond_1
    :try_start_6
    iget-object v2, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->masterOutput:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 184
    iget-object v2, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->masterOutput:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 185
    .end local v1    # "b":I
    goto :goto_0

    .line 177
    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 189
    :catchall_3
    move-exception v1

    goto :goto_2

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 189
    .end local v1    # "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_a
    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->inputPumpThread:Ljava/lang/Thread;

    .line 191
    monitor-exit v1

    .line 192
    :goto_1
    nop

    .line 193
    return-void

    .line 191
    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    .line 189
    :goto_2
    iget-object v2, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 190
    :try_start_b
    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->inputPumpThread:Ljava/lang/Thread;

    .line 191
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 192
    throw v1

    .line 191
    :catchall_5
    move-exception v0

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0
.end method

.method private pumpOut()V
    .locals 3

    .line 198
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 199
    :try_start_1
    iget-boolean v2, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->paused:Z

    if-eqz v2, :cond_0

    .line 200
    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->outputPumpThread:Ljava/lang/Thread;

    .line 201
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 215
    iget-object v2, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 216
    :try_start_2
    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->outputPumpThread:Ljava/lang/Thread;

    .line 217
    monitor-exit v2

    .line 201
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 203
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 204
    :try_start_4
    iget-object v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->masterInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 205
    .local v1, "b":I
    if-gez v1, :cond_1

    .line 206
    iget-object v2, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->input:Lorg/jline/utils/NonBlockingInputStream;

    invoke-virtual {v2}, Lorg/jline/utils/NonBlockingInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 207
    nop

    .line 215
    .end local v1    # "b":I
    iget-object v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_5
    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->outputPumpThread:Ljava/lang/Thread;

    .line 217
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 209
    .restart local v1    # "b":I
    :cond_1
    :try_start_6
    iget-object v2, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 210
    iget-object v2, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 211
    .end local v1    # "b":I
    goto :goto_0

    .line 203
    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 215
    :catchall_3
    move-exception v1

    goto :goto_3

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 215
    .end local v1    # "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_a
    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->outputPumpThread:Ljava/lang/Thread;

    .line 217
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 218
    :goto_1
    nop

    .line 220
    :try_start_b
    invoke-virtual {p0}, Lorg/jline/terminal/impl/PosixPtyTerminal;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 223
    goto :goto_2

    .line 221
    :catchall_4
    move-exception v0

    .line 224
    :goto_2
    return-void

    .line 217
    :catchall_5
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0

    .line 215
    :goto_3
    iget-object v2, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 216
    :try_start_d
    iput-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->outputPumpThread:Ljava/lang/Thread;

    .line 217
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 218
    throw v1

    .line 217
    :catchall_6
    move-exception v0

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v0
.end method


# virtual methods
.method public canPauseResume()Z
    .locals 1

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method protected doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-super {p0}, Lorg/jline/terminal/impl/AbstractPosixTerminal;->doClose()V

    .line 85
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->reader:Lorg/jline/utils/NonBlockingReader;

    invoke-virtual {v0}, Lorg/jline/utils/NonBlockingReader;->close()V

    .line 86
    return-void
.end method

.method public input()Ljava/io/InputStream;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->input:Lorg/jline/utils/NonBlockingInputStream;

    return-object v0
.end method

.method public output()Ljava/io/OutputStream;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->output:Ljava/io/OutputStream;

    return-object v0
.end method

.method public pause()V
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->paused:Z

    .line 97
    monitor-exit v0

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pause(Z)V
    .locals 3
    .param p1, "wait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->paused:Z

    .line 105
    iget-object v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->inputPumpThread:Ljava/lang/Thread;

    .line 106
    .local v1, "p1":Ljava/lang/Thread;
    iget-object v2, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->outputPumpThread:Ljava/lang/Thread;

    .line 107
    .local v2, "p2":Ljava/lang/Thread;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 111
    :cond_0
    if-eqz v2, :cond_1

    .line 112
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 114
    :cond_1
    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 117
    :cond_2
    if-eqz v2, :cond_3

    .line 118
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 120
    :cond_3
    return-void

    .line 107
    .end local v1    # "p1":Ljava/lang/Thread;
    .end local v2    # "p2":Ljava/lang/Thread;
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

    .line 141
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-boolean v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->paused:Z

    monitor-exit v0

    return v1

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reader()Lorg/jline/utils/NonBlockingReader;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->reader:Lorg/jline/utils/NonBlockingReader;

    return-object v0
.end method

.method public resume()V
    .locals 6

    .line 124
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->paused:Z

    .line 126
    iget-object v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->inputPumpThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lorg/jline/terminal/impl/PosixPtyTerminal$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/jline/terminal/impl/PosixPtyTerminal$$ExternalSyntheticLambda0;-><init>(Lorg/jline/terminal/impl/PosixPtyTerminal;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " input pump thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->inputPumpThread:Ljava/lang/Thread;

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 129
    iget-object v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->inputPumpThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 131
    :cond_0
    iget-object v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->outputPumpThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 132
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lorg/jline/terminal/impl/PosixPtyTerminal$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/jline/terminal/impl/PosixPtyTerminal$$ExternalSyntheticLambda1;-><init>(Lorg/jline/terminal/impl/PosixPtyTerminal;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " output pump thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->outputPumpThread:Ljava/lang/Thread;

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 134
    iget-object v1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->outputPumpThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 136
    :cond_1
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writer()Ljava/io/PrintWriter;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal;->writer:Ljava/io/PrintWriter;

    return-object v0
.end method
