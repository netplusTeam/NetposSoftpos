.class public Lcom/sleepycat/utilint/StatLogger;
.super Ljava/lang/Object;
.source "StatLogger.java"


# instance fields
.field private currentRowCount:I

.field private final fileext:Ljava/lang/String;

.field private final filename:Ljava/lang/String;

.field private header:Ljava/lang/String;

.field private lastVal:Ljava/lang/String;

.field private final logDir:Ljava/io/File;

.field private final logFile:Ljava/io/File;

.field private maxFileCount:I

.field private maxRowCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "logdir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "fileext"    # Ljava/lang/String;
    .param p4, "filecount"    # I
    .param p5, "rowcount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/utilint/StatLogger;->header:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sleepycat/utilint/StatLogger;->lastVal:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/utilint/StatLogger;->logFile:Ljava/io/File;

    .line 64
    add-int/lit8 v1, p4, -0x1

    iput v1, p0, Lcom/sleepycat/utilint/StatLogger;->maxFileCount:I

    .line 65
    iput p5, p0, Lcom/sleepycat/utilint/StatLogger;->maxRowCount:I

    .line 66
    iput-object p2, p0, Lcom/sleepycat/utilint/StatLogger;->filename:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/sleepycat/utilint/StatLogger;->fileext:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/sleepycat/utilint/StatLogger;->logDir:Ljava/io/File;

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/sleepycat/utilint/StatLogger;->getHeader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/utilint/StatLogger;->header:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/sleepycat/utilint/StatLogger;->getLastRow()Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Statistic log file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " exists but is not a file."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_1
    :goto_0
    return-void
.end method

.method private formFn(I)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # I

    .line 235
    const-string v0, "."

    if-gez p1, :cond_0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sleepycat/utilint/StatLogger;->logDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/utilint/StatLogger;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/utilint/StatLogger;->fileext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 239
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sleepycat/utilint/StatLogger;->logDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/utilint/StatLogger;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/utilint/StatLogger;->fileext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHeader()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, "fr":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/sleepycat/utilint/StatLogger;->logFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 184
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .local v1, "header":Ljava/lang/String;
    nop

    .line 193
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    :goto_0
    goto :goto_1

    .line 195
    :catch_0
    move-exception v2

    goto :goto_0

    .line 201
    :goto_1
    return-object v1

    .line 191
    .end local v1    # "header":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 185
    :catch_1
    move-exception v1

    .line 186
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occured accessing statistic log file FileNotFoundException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/utilint/StatLogger;->logFile:Ljava/io/File;

    .line 189
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "fr":Ljava/io/BufferedReader;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "fr":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v0, :cond_0

    .line 193
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 197
    goto :goto_3

    .line 195
    :catch_2
    move-exception v2

    .line 197
    :cond_0
    :goto_3
    throw v1
.end method

.method private getLastRow()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "fr":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    iput v1, p0, Lcom/sleepycat/utilint/StatLogger;->currentRowCount:I

    .line 209
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/sleepycat/utilint/StatLogger;->logFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, "prevrow":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "row":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 212
    iget v2, p0, Lcom/sleepycat/utilint/StatLogger;->currentRowCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sleepycat/utilint/StatLogger;->currentRowCount:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    move-object v1, v3

    goto :goto_0

    .line 215
    :cond_0
    nop

    .line 223
    nop

    .line 225
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    goto :goto_1

    .line 227
    :catch_0
    move-exception v2

    .line 215
    :goto_1
    return-object v1

    .line 223
    .end local v1    # "prevrow":Ljava/lang/String;
    .end local v3    # "row":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 217
    :catch_1
    move-exception v1

    .line 218
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occured accessing statistic log file FileNotFoundException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/utilint/StatLogger;->logFile:Ljava/io/File;

    .line 221
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "fr":Ljava/io/BufferedReader;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "fr":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v0, :cond_1

    .line 225
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 229
    goto :goto_3

    .line 227
    :catch_2
    move-exception v2

    .line 229
    :cond_1
    :goto_3
    throw v1
.end method

.method private rotateFiles()V
    .locals 4

    .line 264
    new-instance v0, Ljava/io/File;

    iget v1, p0, Lcom/sleepycat/utilint/StatLogger;->maxFileCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/sleepycat/utilint/StatLogger;->formFn(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, "cf":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 268
    :cond_0
    iget v1, p0, Lcom/sleepycat/utilint/StatLogger;->maxFileCount:I

    add-int/lit8 v1, v1, -0x2

    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    if-lt v1, v2, :cond_2

    .line 269
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/sleepycat/utilint/StatLogger;->formFn(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    new-instance v2, Ljava/io/File;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/sleepycat/utilint/StatLogger;->formFn(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 268
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 274
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/sleepycat/utilint/StatLogger;->currentRowCount:I

    .line 275
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 5
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, "ps":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/sleepycat/utilint/StatLogger;->logFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    .line 249
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    nop

    .line 257
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 258
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 261
    return-void

    .line 256
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occured accessing statistic log file FileNotFoundException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/utilint/StatLogger;->logFile:Ljava/io/File;

    .line 254
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "ps":Ljava/io/PrintWriter;
    .end local p1    # "val":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "ps":Ljava/io/PrintWriter;
    .restart local p1    # "val":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 258
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_0
    throw v1
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget v0, p0, Lcom/sleepycat/utilint/StatLogger;->currentRowCount:I

    iget v1, p0, Lcom/sleepycat/utilint/StatLogger;->maxRowCount:I

    if-lt v0, v1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/sleepycat/utilint/StatLogger;->rotateFiles()V

    .line 142
    iget v0, p0, Lcom/sleepycat/utilint/StatLogger;->currentRowCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/utilint/StatLogger;->currentRowCount:I

    .line 143
    iget-object v0, p0, Lcom/sleepycat/utilint/StatLogger;->header:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sleepycat/utilint/StatLogger;->write(Ljava/lang/String;)V

    .line 145
    :cond_0
    iget v0, p0, Lcom/sleepycat/utilint/StatLogger;->currentRowCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/utilint/StatLogger;->currentRowCount:I

    .line 146
    invoke-direct {p0, p1}, Lcom/sleepycat/utilint/StatLogger;->write(Ljava/lang/String;)V

    .line 147
    iput-object p1, p0, Lcom/sleepycat/utilint/StatLogger;->lastVal:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public logDelta(Ljava/lang/String;)V
    .locals 4
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/sleepycat/utilint/StatLogger;->header:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/sleepycat/utilint/StatLogger;->lastVal:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/sleepycat/utilint/StatLogger;->getLastRow()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/utilint/StatLogger;->lastVal:Ljava/lang/String;

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 171
    .local v0, "lastNoFirst":Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/utilint/StatLogger;->lastVal:Ljava/lang/String;

    const/16 v2, 0x2c

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    invoke-virtual {p0, p1}, Lcom/sleepycat/utilint/StatLogger;->log(Ljava/lang/String;)V

    .line 177
    :cond_2
    return-void

    .line 164
    .end local v0    # "lastNoFirst":Ljava/lang/String;
    :cond_3
    const-string v0, "Unexpected state logHeader not called before logDelta."

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public setFileCount(I)V
    .locals 3
    .param p1, "filecount"    # I

    .line 98
    add-int/lit8 p1, p1, -0x1

    .line 99
    iget v0, p0, Lcom/sleepycat/utilint/StatLogger;->maxFileCount:I

    if-le v0, p1, :cond_1

    .line 101
    iget v0, p0, Lcom/sleepycat/utilint/StatLogger;->maxFileCount:I

    .local v0, "i":I
    :goto_0
    if-le v0, p1, :cond_1

    .line 102
    new-instance v1, Ljava/io/File;

    add-int/lit8 v2, v0, -0x2

    invoke-direct {p0, v2}, Lcom/sleepycat/utilint/StatLogger;->formFn(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "deleme":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 101
    .end local v1    # "deleme":Ljava/io/File;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 108
    .end local v0    # "i":I
    :cond_1
    iput p1, p0, Lcom/sleepycat/utilint/StatLogger;->maxFileCount:I

    .line 109
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/sleepycat/utilint/StatLogger;->header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/sleepycat/utilint/StatLogger;->header:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/sleepycat/utilint/StatLogger;->rotateFiles()V

    .line 125
    :cond_0
    iget v0, p0, Lcom/sleepycat/utilint/StatLogger;->currentRowCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/utilint/StatLogger;->currentRowCount:I

    .line 126
    invoke-direct {p0, p1}, Lcom/sleepycat/utilint/StatLogger;->write(Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Lcom/sleepycat/utilint/StatLogger;->header:Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/utilint/StatLogger;->lastVal:Ljava/lang/String;

    .line 130
    :cond_1
    return-void
.end method

.method public setRowCount(I)V
    .locals 0
    .param p1, "rowcount"    # I

    .line 89
    iput p1, p0, Lcom/sleepycat/utilint/StatLogger;->maxRowCount:I

    .line 90
    return-void
.end method
