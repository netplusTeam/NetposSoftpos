.class public Lorg/jpos/util/RotateLogListener;
.super Lorg/jpos/util/SimpleLogListener;
.source "RotateLogListener.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Lorg/jpos/core/Configurable;
.implements Lorg/jpos/util/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/util/RotateLogListener$RotationAlgo;,
        Lorg/jpos/util/RotateLogListener$ScheduleTimer;,
        Lorg/jpos/util/RotateLogListener$Rotate;
    }
.end annotation


# static fields
.field public static final CHECK_INTERVAL:I = 0x64

.field public static final DEFAULT_MAXSIZE:J = 0x989680L


# instance fields
.field f:Ljava/io/FileOutputStream;

.field fileNamePattern:Ljava/lang/String;

.field logName:Ljava/lang/String;

.field maxCopies:I

.field maxSize:J

.field msgCount:I

.field rotate:Lorg/jpos/util/RotateLogListener$Rotate;

.field rotateOnStartup:Z

.field rotationAlgo:Lorg/jpos/util/RotateLogListener$RotationAlgo;

.field sleepTime:J

.field timer:Lorg/jpos/util/RotateLogListener$ScheduleTimer;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 61
    invoke-direct {p0}, Lorg/jpos/util/SimpleLogListener;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/util/RotateLogListener;->logName:Ljava/lang/String;

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lorg/jpos/util/RotateLogListener;->maxCopies:I

    .line 48
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/jpos/util/RotateLogListener;->sleepTime:J

    .line 49
    iput-wide v2, p0, Lorg/jpos/util/RotateLogListener;->maxSize:J

    .line 51
    iput-boolean v1, p0, Lorg/jpos/util/RotateLogListener;->rotateOnStartup:Z

    .line 52
    iput-object v0, p0, Lorg/jpos/util/RotateLogListener;->fileNamePattern:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lorg/jpos/util/RotateLogListener;->timer:Lorg/jpos/util/RotateLogListener$ScheduleTimer;

    .line 58
    iput-object v0, p0, Lorg/jpos/util/RotateLogListener;->rotationAlgo:Lorg/jpos/util/RotateLogListener$RotationAlgo;

    .line 62
    return-void
.end method

.method private runPostConfiguration()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 261
    :try_start_0
    iget-boolean v0, p0, Lorg/jpos/util/RotateLogListener;->rotateOnStartup:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0, v0}, Lorg/jpos/util/RotateLogListener;->logRotate(Z)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/util/RotateLogListener;->openLogFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    nop

    .line 269
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->timer:Lorg/jpos/util/RotateLogListener$ScheduleTimer;

    invoke-interface {v0}, Lorg/jpos/util/RotateLogListener$ScheduleTimer;->schedule()V

    .line 270
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v1, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected checkSize()V
    .locals 5

    .line 191
    iget-wide v0, p0, Lorg/jpos/util/RotateLogListener;->maxSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 192
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/jpos/util/RotateLogListener;->logName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "logFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/jpos/util/RotateLogListener;->maxSize:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 195
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxSize ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jpos/util/RotateLogListener;->maxSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") threshold reached"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jpos/util/RotateLogListener;->logDebug(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lorg/jpos/util/RotateLogListener;->logRotate()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 202
    .end local v0    # "logFile":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method protected declared-synchronized closeLogFile()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->p:Ljava/io/PrintStream;

    const-string v1, "</logger>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->f:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 164
    .end local p0    # "this":Lorg/jpos/util/RotateLogListener;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/util/RotateLogListener;->f:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroy()V
    .locals 2

    .line 240
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->rotate:Lorg/jpos/util/RotateLogListener$Rotate;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lorg/jpos/util/RotateLogListener$Rotate;->cancel()Z

    .line 243
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/util/RotateLogListener;->closeLogFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jpos/util/RotateLogListener;->logDebug(Ljava/lang/String;)V

    .line 247
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method protected fileNameFromPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "inFileName"    # Ljava/lang/String;
    .param p2, "patternCodes"    # Ljava/lang/String;

    .line 207
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "codes":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 209
    .local v1, "computedValues":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 210
    aget-object v3, v0, v2

    const-string v4, "h"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 213
    :catch_0
    move-exception v3

    .line 214
    .local v3, "e":Ljava/net/UnknownHostException;
    const-string v4, "#h"

    aput-object v4, v1, v2

    .line 215
    .end local v3    # "e":Ljava/net/UnknownHostException;
    :goto_1
    goto :goto_2

    .line 216
    :cond_0
    aget-object v3, v0, v2

    const-string v4, "e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    :try_start_1
    aget-object v3, v0, v2

    const/4 v4, 0x2

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "envVar":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    .end local v3    # "envVar":Ljava/lang/String;
    goto :goto_2

    .line 220
    :catch_1
    move-exception v3

    .line 221
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "#e"

    aput-object v4, v1, v2

    .line 209
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    .end local v2    # "i":I
    :cond_2
    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method synthetic lambda$setConfiguration$0$org-jpos-util-RotateLogListener()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 125
    invoke-static {}, Lorg/jpos/util/DefaultTimer;->getTimer()Ljava/util/Timer;

    move-result-object v6

    .line 126
    .local v6, "timer":Ljava/util/Timer;
    iget-wide v0, p0, Lorg/jpos/util/RotateLogListener;->sleepTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v1, Lorg/jpos/util/RotateLogListener$Rotate;

    invoke-direct {v1, p0}, Lorg/jpos/util/RotateLogListener$Rotate;-><init>(Lorg/jpos/util/RotateLogListener;)V

    iput-object v1, p0, Lorg/jpos/util/RotateLogListener;->rotate:Lorg/jpos/util/RotateLogListener$Rotate;

    iget-wide v4, p0, Lorg/jpos/util/RotateLogListener;->sleepTime:J

    move-object v0, v6

    move-wide v2, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 127
    :cond_0
    return-void
.end method

.method synthetic lambda$setConfiguration$1$org-jpos-util-RotateLogListener()V
    .locals 6

    .line 132
    iget v0, p0, Lorg/jpos/util/RotateLogListener;->maxCopies:I

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 133
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jpos/util/RotateLogListener;->logName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "dest":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/jpos/util/RotateLogListener;->logName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, "source":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 136
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 137
    .end local v1    # "dest":Ljava/io/File;
    .end local v2    # "source":Ljava/io/File;
    goto :goto_0

    .line 138
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public declared-synchronized log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    .locals 2
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    monitor-enter p0

    .line 145
    :try_start_0
    iget v0, p0, Lorg/jpos/util/RotateLogListener;->msgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jpos/util/RotateLogListener;->msgCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lorg/jpos/util/RotateLogListener;->checkSize()V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/util/RotateLogListener;->msgCount:I

    .line 150
    .end local p0    # "this":Lorg/jpos/util/RotateLogListener;
    :cond_0
    invoke-super {p0, p1}, Lorg/jpos/util/SimpleLogListener;->log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 144
    .end local p1    # "ev":Lorg/jpos/util/LogEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized logDebug(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->p:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->p:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<log realm=\"rotate-log-listener\" at=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->p:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->p:Ljava/io/PrintStream;

    const-string v1, "</log>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .end local p0    # "this":Lorg/jpos/util/RotateLogListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 183
    .end local p1    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public logRotate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jpos/util/RotateLogListener;->logRotate(Z)V

    .line 170
    return-void
.end method

.method public declared-synchronized logRotate(Z)V
    .locals 1
    .param p1, "isStartup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 174
    if-nez p1, :cond_0

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/util/RotateLogListener;->closeLogFile()V

    .line 176
    invoke-super {p0}, Lorg/jpos/util/SimpleLogListener;->close()V

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jpos/util/RotateLogListener;->setPrintStream(Ljava/io/PrintStream;)V

    .line 179
    .end local p0    # "this":Lorg/jpos/util/RotateLogListener;
    :cond_0
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->rotationAlgo:Lorg/jpos/util/RotateLogListener$RotationAlgo;

    invoke-interface {v0}, Lorg/jpos/util/RotateLogListener$RotationAlgo;->rotate()V

    .line 180
    invoke-virtual {p0}, Lorg/jpos/util/RotateLogListener;->openLogFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 173
    .end local p1    # "isStartup":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized openLogFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->f:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 155
    .end local p0    # "this":Lorg/jpos/util/RotateLogListener;
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/jpos/util/RotateLogListener;->logName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/jpos/util/RotateLogListener;->f:Ljava/io/FileOutputStream;

    .line 156
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/jpos/util/RotateLogListener;->f:Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/jpos/util/RotateLogListener;->setPrintStream(Ljava/io/PrintStream;)V

    .line 157
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->p:Ljava/io/PrintStream;

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->p:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<logger class=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 6
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 95
    iget v0, p0, Lorg/jpos/util/RotateLogListener;->maxCopies:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 96
    const-string v0, "copies"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/util/RotateLogListener;->maxCopies:I

    .line 99
    :cond_0
    iget-wide v2, p0, Lorg/jpos/util/RotateLogListener;->sleepTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 100
    const-string v0, "window"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    iput-wide v2, p0, Lorg/jpos/util/RotateLogListener;->sleepTime:J

    .line 103
    :cond_1
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->logName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 104
    const-string v0, "file"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/RotateLogListener;->logName:Ljava/lang/String;

    .line 108
    :cond_2
    iget-wide v2, p0, Lorg/jpos/util/RotateLogListener;->maxSize:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 109
    const-string v0, "maxsize"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jpos/util/RotateLogListener;->maxSize:J

    .line 110
    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    const-wide/32 v2, 0x989680

    :cond_3
    iput-wide v2, p0, Lorg/jpos/util/RotateLogListener;->maxSize:J

    .line 113
    :cond_4
    const-string v0, "rotate-on-startup"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/util/RotateLogListener;->rotateOnStartup:Z

    .line 115
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->fileNamePattern:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 116
    const/4 v0, 0x0

    const-string v1, "file-name-pattern"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/RotateLogListener;->fileNamePattern:Ljava/lang/String;

    .line 119
    :cond_5
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->fileNamePattern:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 120
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->logName:Ljava/lang/String;

    iget-object v1, p0, Lorg/jpos/util/RotateLogListener;->fileNamePattern:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/jpos/util/RotateLogListener;->fileNameFromPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/RotateLogListener;->logName:Ljava/lang/String;

    .line 123
    :cond_6
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->timer:Lorg/jpos/util/RotateLogListener$ScheduleTimer;

    if-nez v0, :cond_7

    .line 124
    new-instance v0, Lorg/jpos/util/RotateLogListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/jpos/util/RotateLogListener$$ExternalSyntheticLambda0;-><init>(Lorg/jpos/util/RotateLogListener;)V

    iput-object v0, p0, Lorg/jpos/util/RotateLogListener;->timer:Lorg/jpos/util/RotateLogListener$ScheduleTimer;

    .line 130
    :cond_7
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener;->rotationAlgo:Lorg/jpos/util/RotateLogListener$RotationAlgo;

    if-nez v0, :cond_8

    .line 131
    new-instance v0, Lorg/jpos/util/RotateLogListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/jpos/util/RotateLogListener$$ExternalSyntheticLambda1;-><init>(Lorg/jpos/util/RotateLogListener;)V

    iput-object v0, p0, Lorg/jpos/util/RotateLogListener;->rotationAlgo:Lorg/jpos/util/RotateLogListener$RotationAlgo;

    .line 141
    :cond_8
    invoke-direct {p0}, Lorg/jpos/util/RotateLogListener;->runPostConfiguration()V

    .line 142
    return-void
.end method
