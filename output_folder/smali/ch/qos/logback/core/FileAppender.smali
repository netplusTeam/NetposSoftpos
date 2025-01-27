.class public Lch/qos/logback/core/FileAppender;
.super Lch/qos/logback/core/OutputStreamAppender;
.source "FileAppender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/OutputStreamAppender<",
        "TE;>;"
    }
.end annotation


# static fields
.field protected static COLLISION_WITH_EARLIER_APPENDER_URL:Ljava/lang/String; = null

.field public static final DEFAULT_BUFFER_SIZE:J = 0x2000L


# instance fields
.field protected append:Z

.field private bufferSize:Lch/qos/logback/core/util/FileSize;

.field protected fileName:Ljava/lang/String;

.field private prudent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "http://logback.qos.ch/codes.html#earlier_fa_collision"

    sput-object v0, Lch/qos/logback/core/FileAppender;->COLLISION_WITH_EARLIER_APPENDER_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 39
    .local p0, "this":Lch/qos/logback/core/FileAppender;, "Lch/qos/logback/core/FileAppender<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/OutputStreamAppender;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/FileAppender;->append:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/FileAppender;->prudent:Z

    .line 59
    new-instance v0, Lch/qos/logback/core/util/FileSize;

    const-wide/16 v1, 0x2000

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/util/FileSize;-><init>(J)V

    iput-object v0, p0, Lch/qos/logback/core/FileAppender;->bufferSize:Lch/qos/logback/core/util/FileSize;

    return-void
.end method

.method private safeWrite(Ljava/lang/Object;)V
    .locals 9
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

    .line 241
    .local p0, "this":Lch/qos/logback/core/FileAppender;, "Lch/qos/logback/core/FileAppender<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lch/qos/logback/core/FileAppender;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/recovery/ResilientFileOutputStream;

    .line 242
    .local v0, "resilientFOS":Lch/qos/logback/core/recovery/ResilientFileOutputStream;
    invoke-virtual {v0}, Lch/qos/logback/core/recovery/ResilientFileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 243
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    if-nez v1, :cond_0

    .line 244
    return-void

    .line 248
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    .line 250
    .local v2, "interrupted":Z
    const/4 v3, 0x0

    .line 252
    .local v3, "fileLock":Ljava/nio/channels/FileLock;
    :try_start_0
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v4

    move-object v3, v4

    .line 253
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    .line 254
    .local v4, "position":J
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 255
    .local v6, "size":J
    cmp-long v8, v6, v4

    if-eqz v8, :cond_1

    .line 256
    invoke-virtual {v1, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 258
    :cond_1
    invoke-super {p0, p1}, Lch/qos/logback/core/OutputStreamAppender;->writeOut(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .end local v4    # "position":J
    .end local v6    # "size":J
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 264
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    .line 268
    :cond_2
    if-eqz v2, :cond_4

    .line 269
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 263
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 259
    :catch_0
    move-exception v4

    .line 261
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0, v4}, Lch/qos/logback/core/recovery/ResilientFileOutputStream;->postIOFailure(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 264
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    .line 268
    :cond_3
    if-eqz v2, :cond_4

    .line 269
    goto :goto_0

    .line 272
    :cond_4
    :goto_1
    return-void

    .line 263
    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 264
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    .line 268
    :cond_5
    if-eqz v2, :cond_6

    .line 269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    throw v4
.end method


# virtual methods
.method protected addErrorForCollision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "optionName"    # Ljava/lang/String;
    .param p2, "optionValue"    # Ljava/lang/String;
    .param p3, "appenderName"    # Ljava/lang/String;

    .line 176
    .local p0, "this":Lch/qos/logback/core/FileAppender;, "Lch/qos/logback/core/FileAppender<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' option has the same value \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" as that given for appender ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] defined earlier."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/FileAppender;->addError(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method protected checkForFileCollisionInPreviousFileAppenders()Z
    .locals 7

    .line 154
    .local p0, "this":Lch/qos/logback/core/FileAppender;, "Lch/qos/logback/core/FileAppender<TE;>;"
    const/4 v0, 0x0

    .line 155
    .local v0, "collisionsDetected":Z
    iget-object v1, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 156
    const/4 v1, 0x0

    return v1

    .line 159
    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/FileAppender;->context:Lch/qos/logback/core/Context;

    const-string v2, "FA_FILENAME_COLLISION_MAP"

    invoke-interface {v1, v2}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 160
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 161
    return v0

    .line 163
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 164
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 165
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "File"

    invoke-virtual {p0, v6, v4, v5}, Lch/qos/logback/core/FileAppender;->addErrorForCollision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x1

    .line 168
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    goto :goto_0

    .line 169
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lch/qos/logback/core/FileAppender;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 170
    invoke-virtual {p0}, Lch/qos/logback/core/FileAppender;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_4
    return v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .line 100
    .local p0, "this":Lch/qos/logback/core/FileAppender;, "Lch/qos/logback/core/FileAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public isAppend()Z
    .locals 1

    .line 79
    .local p0, "this":Lch/qos/logback/core/FileAppender;, "Lch/qos/logback/core/FileAppender<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/FileAppender;->append:Z

    return v0
.end method

.method public isPrudent()Z
    .locals 1

    .line 218
    .local p0, "this":Lch/qos/logback/core/FileAppender;, "Lch/qos/logback/core/FileAppender<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/FileAppender;->prudent:Z

    return v0
.end method

.method public openFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "file_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    .local p0, "this":Lch/qos/logback/core/FileAppender;, "Lch/qos/logback/core/FileAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/FileAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 198
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lch/qos/logback/core/util/FileUtil;->createMissingParentDirectories(Ljava/io/File;)Z

    move-result v1

    .line 200
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create parent directories for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lch/qos/logback/core/FileAppender;->addError(Ljava/lang/String;)V

    .line 204
    :cond_0
    new-instance v2, Lch/qos/logback/core/recovery/ResilientFileOutputStream;

    iget-boolean v3, p0, Lch/qos/logback/core/FileAppender;->append:Z

    iget-object v4, p0, Lch/qos/logback/core/FileAppender;->bufferSize:Lch/qos/logback/core/util/FileSize;

    invoke-virtual {v4}, Lch/qos/logback/core/util/FileSize;->getSize()J

    move-result-wide v4

    invoke-direct {v2, v0, v3, v4, v5}, Lch/qos/logback/core/recovery/ResilientFileOutputStream;-><init>(Ljava/io/File;ZJ)V

    .line 205
    .local v2, "resilientFos":Lch/qos/logback/core/recovery/ResilientFileOutputStream;
    iget-object v3, p0, Lch/qos/logback/core/FileAppender;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v2, v3}, Lch/qos/logback/core/recovery/ResilientFileOutputStream;->setContext(Lch/qos/logback/core/Context;)V

    .line 206
    invoke-virtual {p0, v2}, Lch/qos/logback/core/FileAppender;->setOutputStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "result":Z
    .end local v2    # "resilientFos":Lch/qos/logback/core/recovery/ResilientFileOutputStream;
    iget-object v0, p0, Lch/qos/logback/core/FileAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 209
    nop

    .line 210
    return-void

    .line 208
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/qos/logback/core/FileAppender;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final rawFileProperty()Ljava/lang/String;
    .locals 1

    .line 89
    .local p0, "this":Lch/qos/logback/core/FileAppender;, "Lch/qos/logback/core/FileAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppend(Z)V
    .locals 0
    .param p1, "append"    # Z

    .line 232
    .local p0, "this":Lch/qos/logback/core/FileAppender;, "Lch/qos/logback/core/FileAppender<TE;>;"
    iput-boolean p1, p0, Lch/qos/logback/core/FileAppender;->append:Z

    .line 233
    return-void
.end method

.method public setBufferSize(Lch/qos/logback/core/util/FileSize;)V
    .locals 2
    .param p1, "bufferSize"    # Lch/qos/logback/core/util/FileSize;

    .line 236
    .local p0, "this":Lch/qos/logback/core/FileAppender;, "Lch/qos/logback/core/FileAppender<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting bufferSize to ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lch/qos/logback/core/util/FileSize;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/FileAppender;->addInfo(Ljava/lang/String;)V

    .line 237
    iput-object p1, p0, Lch/qos/logback/core/FileAppender;->bufferSize:Lch/qos/logback/core/util/FileSize;

    .line 238
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .line 66
    .local p0, "this":Lch/qos/logback/core/FileAppender;, "Lch/qos/logback/core/FileAppender<TE;>;"
    if-nez p1, :cond_0

    .line 67
    iput-object p1, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    .line 73
    :goto_0
    return-void
.end method

.method public setPrudent(Z)V
    .locals 0
    .param p1, "prudent"    # Z

    .line 228
    .local p0, "this":Lch/qos/logback/core/FileAppender;, "Lch/qos/logback/core/FileAppender<TE;>;"
    iput-boolean p1, p0, Lch/qos/logback/core/FileAppender;->prudent:Z

    .line 229
    return-void
.end method

.method public start()V
    .locals 4

    .line 109
    .local p0, "this":Lch/qos/logback/core/FileAppender;, "Lch/qos/logback/core/FileAppender<TE;>;"
    const/4 v0, 0x0

    .line 110
    .local v0, "errors":I
    invoke-virtual {p0}, Lch/qos/logback/core/FileAppender;->getFile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File property is set to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/FileAppender;->addInfo(Ljava/lang/String;)V

    .line 113
    iget-boolean v1, p0, Lch/qos/logback/core/FileAppender;->prudent:Z

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lch/qos/logback/core/FileAppender;->isAppend()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/FileAppender;->setAppend(Z)V

    .line 116
    const-string v1, "Setting \"Append\" property to true on account of \"Prudent\" mode"

    invoke-virtual {p0, v1}, Lch/qos/logback/core/FileAppender;->addWarn(Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/FileAppender;->checkForFileCollisionInPreviousFileAppenders()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    const-string v1, "Collisions detected with FileAppender/RollingAppender instances defined earlier. Aborting."

    invoke-virtual {p0, v1}, Lch/qos/logback/core/FileAppender;->addError(Ljava/lang/String;)V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For more information, please visit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lch/qos/logback/core/FileAppender;->COLLISION_WITH_EARLIER_APPENDER_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/FileAppender;->addError(Ljava/lang/String;)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/FileAppender;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/FileAppender;->openFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/io/IOException;
    add-int/lit8 v0, v0, 0x1

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lch/qos/logback/core/FileAppender;->append:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") call failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/core/FileAppender;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 134
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"File\" property not set for appender named ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/FileAppender;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/FileAppender;->addError(Ljava/lang/String;)V

    .line 137
    :goto_1
    if-nez v0, :cond_3

    .line 138
    invoke-super {p0}, Lch/qos/logback/core/OutputStreamAppender;->start()V

    .line 140
    :cond_3
    return-void
.end method

.method public stop()V
    .locals 2

    .line 144
    .local p0, "this":Lch/qos/logback/core/FileAppender;, "Lch/qos/logback/core/FileAppender<TE;>;"
    invoke-super {p0}, Lch/qos/logback/core/OutputStreamAppender;->stop()V

    .line 146
    iget-object v0, p0, Lch/qos/logback/core/FileAppender;->context:Lch/qos/logback/core/Context;

    invoke-static {v0}, Lch/qos/logback/core/util/ContextUtil;->getFilenameCollisionMap(Lch/qos/logback/core/Context;)Ljava/util/Map;

    move-result-object v0

    .line 147
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lch/qos/logback/core/FileAppender;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/FileAppender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void

    .line 148
    :cond_1
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

    .line 276
    .local p0, "this":Lch/qos/logback/core/FileAppender;, "Lch/qos/logback/core/FileAppender<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Lch/qos/logback/core/FileAppender;->prudent:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-direct {p0, p1}, Lch/qos/logback/core/FileAppender;->safeWrite(Ljava/lang/Object;)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-super {p0, p1}, Lch/qos/logback/core/OutputStreamAppender;->writeOut(Ljava/lang/Object;)V

    .line 281
    :goto_0
    return-void
.end method
