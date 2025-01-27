.class public Lch/qos/logback/core/OutputStreamAppender;
.super Lch/qos/logback/core/UnsynchronizedAppenderBase;
.source "OutputStreamAppender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/UnsynchronizedAppenderBase<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected encoder:Lch/qos/logback/core/encoder/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/encoder/Encoder<",
            "TE;>;"
        }
    .end annotation
.end field

.field immediateFlush:Z

.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    .local p0, "this":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/OutputStreamAppender;->immediateFlush:Z

    return-void
.end method

.method private writeBytes([B)V
    .locals 2
    .param p1, "byteArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    .local p0, "this":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 199
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 200
    iget-boolean v0, p0, Lch/qos/logback/core/OutputStreamAppender;->immediateFlush:Z

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_1
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 205
    nop

    .line 206
    return-void

    .line 204
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 195
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected append(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    .local p1, "eventObject":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lch/qos/logback/core/OutputStreamAppender;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0, p1}, Lch/qos/logback/core/OutputStreamAppender;->subAppend(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method protected closeOutputStream()V
    .locals 3

    .line 126
    .local p0, "this":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/OutputStreamAppender;->encoderClose()V

    .line 130
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lch/qos/logback/core/status/ErrorStatus;

    const-string v2, "Could not close output stream for OutputStreamAppender."

    invoke-direct {v1, v2, p0, v0}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lch/qos/logback/core/OutputStreamAppender;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method encoderClose()V
    .locals 4

    .line 139
    .local p0, "this":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 141
    :try_start_0
    invoke-interface {v0}, Lch/qos/logback/core/encoder/Encoder;->footerBytes()[B

    move-result-object v0

    .line 142
    .local v0, "footer":[B
    invoke-direct {p0, v0}, Lch/qos/logback/core/OutputStreamAppender;->writeBytes([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0    # "footer":[B
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "ioe":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lch/qos/logback/core/OutputStreamAppender;->started:Z

    .line 145
    new-instance v1, Lch/qos/logback/core/status/ErrorStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write footer for appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/OutputStreamAppender;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lch/qos/logback/core/OutputStreamAppender;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 148
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method encoderInit()V
    .locals 4

    .line 178
    .local p0, "this":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 180
    :try_start_0
    invoke-interface {v0}, Lch/qos/logback/core/encoder/Encoder;->headerBytes()[B

    move-result-object v0

    .line 181
    .local v0, "header":[B
    invoke-direct {p0, v0}, Lch/qos/logback/core/OutputStreamAppender;->writeBytes([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v0    # "header":[B
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "ioe":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lch/qos/logback/core/OutputStreamAppender;->started:Z

    .line 184
    new-instance v1, Lch/qos/logback/core/status/ErrorStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize encoder for appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/OutputStreamAppender;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lch/qos/logback/core/OutputStreamAppender;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 187
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public getEncoder()Lch/qos/logback/core/encoder/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/encoder/Encoder<",
            "TE;>;"
        }
    .end annotation

    .line 242
    .local p0, "this":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 62
    .local p0, "this":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public isImmediateFlush()Z
    .locals 1

    .line 250
    .local p0, "this":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/OutputStreamAppender;->immediateFlush:Z

    return v0
.end method

.method public setEncoder(Lch/qos/logback/core/encoder/Encoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/encoder/Encoder<",
            "TE;>;)V"
        }
    .end annotation

    .line 246
    .local p0, "this":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    .local p1, "encoder":Lch/qos/logback/core/encoder/Encoder;, "Lch/qos/logback/core/encoder/Encoder<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    .line 247
    return-void
.end method

.method public setImmediateFlush(Z)V
    .locals 0
    .param p1, "immediateFlush"    # Z

    .line 254
    .local p0, "this":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    iput-boolean p1, p0, Lch/qos/logback/core/OutputStreamAppender;->immediateFlush:Z

    .line 255
    return-void
.end method

.method public setLayout(Lch/qos/logback/core/Layout;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Layout<",
            "TE;>;)V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    .local p1, "layout":Lch/qos/logback/core/Layout;, "Lch/qos/logback/core/Layout<TE;>;"
    const-string v0, "This appender no longer admits a layout as a sub-component, set an encoder instead."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/OutputStreamAppender;->addWarn(Ljava/lang/String;)V

    .line 88
    const-string v0, "To ensure compatibility, wrapping your layout in LayoutWrappingEncoder."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/OutputStreamAppender;->addWarn(Ljava/lang/String;)V

    .line 89
    const-string v0, "See also http://logback.qos.ch/codes.html#layoutInsteadOfEncoder for details"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/OutputStreamAppender;->addWarn(Ljava/lang/String;)V

    .line 90
    new-instance v0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;

    invoke-direct {v0}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;-><init>()V

    .line 91
    .local v0, "lwe":Lch/qos/logback/core/encoder/LayoutWrappingEncoder;, "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<TE;>;"
    invoke-virtual {v0, p1}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->setLayout(Lch/qos/logback/core/Layout;)V

    .line 92
    iget-object v1, p0, Lch/qos/logback/core/OutputStreamAppender;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->setContext(Lch/qos/logback/core/Context;)V

    .line 93
    iput-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    .line 94
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 161
    .local p0, "this":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/OutputStreamAppender;->closeOutputStream()V

    .line 165
    iput-object p1, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;

    .line 166
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    if-nez v0, :cond_0

    .line 167
    const-string v0, "Encoder has not been set. Cannot invoke its init method."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/OutputStreamAppender;->addWarn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 171
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lch/qos/logback/core/OutputStreamAppender;->encoderInit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    nop

    .line 175
    return-void

    .line 173
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public start()V
    .locals 5

    .line 70
    .local p0, "this":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    const/4 v0, 0x0

    .line 71
    .local v0, "errors":I
    iget-object v1, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    const-string v2, "\"."

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lch/qos/logback/core/status/ErrorStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No encoder set for the appender named \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lch/qos/logback/core/OutputStreamAppender;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lch/qos/logback/core/OutputStreamAppender;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 76
    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;

    if-nez v1, :cond_1

    .line 77
    new-instance v1, Lch/qos/logback/core/status/ErrorStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No output stream set for the appender named \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lch/qos/logback/core/OutputStreamAppender;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lch/qos/logback/core/OutputStreamAppender;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    .line 81
    :cond_1
    if-nez v0, :cond_2

    .line 82
    invoke-super {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->start()V

    .line 84
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 2

    .line 113
    .local p0, "this":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/OutputStreamAppender;->closeOutputStream()V

    .line 116
    invoke-super {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 119
    nop

    .line 120
    return-void

    .line 118
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected subAppend(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 217
    .local p0, "this":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lch/qos/logback/core/OutputStreamAppender;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    return-void

    .line 222
    :cond_0
    :try_start_0
    instance-of v0, p1, Lch/qos/logback/core/spi/DeferredProcessingAware;

    if-eqz v0, :cond_1

    .line 223
    move-object v0, p1

    check-cast v0, Lch/qos/logback/core/spi/DeferredProcessingAware;

    invoke-interface {v0}, Lch/qos/logback/core/spi/DeferredProcessingAware;->prepareForDeferredProcessing()V

    .line 230
    :cond_1
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    invoke-interface {v0, p1}, Lch/qos/logback/core/encoder/Encoder;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    .line 231
    .local v0, "byteArray":[B
    invoke-direct {p0, v0}, Lch/qos/logback/core/OutputStreamAppender;->writeBytes([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v0    # "byteArray":[B
    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 236
    .local v0, "ioe":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lch/qos/logback/core/OutputStreamAppender;->started:Z

    .line 237
    new-instance v1, Lch/qos/logback/core/status/ErrorStatus;

    const-string v2, "IO failure in appender"

    invoke-direct {v1, v2, p0, v0}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lch/qos/logback/core/OutputStreamAppender;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 239
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method protected writeOut(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    .local p0, "this":Lch/qos/logback/core/OutputStreamAppender;, "Lch/qos/logback/core/OutputStreamAppender<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    invoke-interface {v0, p1}, Lch/qos/logback/core/encoder/Encoder;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    .line 190
    .local v0, "byteArray":[B
    invoke-direct {p0, v0}, Lch/qos/logback/core/OutputStreamAppender;->writeBytes([B)V

    .line 191
    return-void
.end method
