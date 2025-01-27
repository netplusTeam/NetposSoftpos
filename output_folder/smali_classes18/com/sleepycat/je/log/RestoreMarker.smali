.class public Lcom/sleepycat/je/log/RestoreMarker;
.super Ljava/lang/Object;
.source "RestoreMarker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/log/RestoreMarker$FileCreationException;
    }
.end annotation


# instance fields
.field private final lastFile:Ljava/io/File;

.field private final logManager:Lcom/sleepycat/je/log/LogManager;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/log/FileManager;Lcom/sleepycat/je/log/LogManager;)V
    .locals 2
    .param p1, "fileManager"    # Lcom/sleepycat/je/log/FileManager;
    .param p2, "logManager"    # Lcom/sleepycat/je/log/LogManager;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/sleepycat/je/log/RestoreMarker;->logManager:Lcom/sleepycat/je/log/LogManager;

    .line 77
    const-wide/32 v0, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(J)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "lastFileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sleepycat/je/log/RestoreMarker;->lastFile:Ljava/io/File;

    .line 79
    return-void
.end method

.method public static getMarkerFileName()Ljava/lang/String;
    .locals 2

    .line 82
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Lcom/sleepycat/je/log/FileManager;->getFileName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createMarkerFile(Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;Ljava/util/Properties;)V
    .locals 11
    .param p1, "failureType"    # Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/RestoreMarker$FileCreationException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/sleepycat/je/log/RestoreMarker;->lastFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/log/RestoreMarker;->lastFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 116
    return-void

    .line 120
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/log/RestoreMarker;->lastFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 130
    new-instance v0, Lcom/sleepycat/je/log/FileHeader;

    const-wide/32 v3, 0x7fffffff

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sleepycat/je/log/FileHeader;-><init>(JJ)V

    .line 131
    .local v0, "header":Lcom/sleepycat/je/log/FileHeader;
    new-instance v3, Lcom/sleepycat/je/log/entry/FileHeaderEntry;

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_FILE_HEADER:Lcom/sleepycat/je/log/LogEntryType;

    invoke-direct {v3, v4, v0}, Lcom/sleepycat/je/log/entry/FileHeaderEntry;-><init>(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/FileHeader;)V

    .line 133
    .local v3, "headerLogEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    iget-object v4, p0, Lcom/sleepycat/je/log/RestoreMarker;->logManager:Lcom/sleepycat/je/log/LogManager;

    invoke-virtual {v4, v3, v1, v2}, Lcom/sleepycat/je/log/LogManager;->putIntoBuffer(Lcom/sleepycat/je/log/entry/LogEntry;J)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 136
    .local v4, "buf1":Ljava/nio/ByteBuffer;
    new-instance v5, Lcom/sleepycat/je/log/entry/RestoreRequired;

    invoke-direct {v5, p1, p2}, Lcom/sleepycat/je/log/entry/RestoreRequired;-><init>(Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;Ljava/util/Properties;)V

    .line 138
    .local v5, "rr":Lcom/sleepycat/je/log/entry/RestoreRequired;
    sget-object v6, Lcom/sleepycat/je/log/LogEntryType;->LOG_RESTORE_REQUIRED:Lcom/sleepycat/je/log/LogEntryType;

    .line 139
    invoke-static {v6, v5}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/Loggable;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v6

    .line 140
    .local v6, "marker":Lcom/sleepycat/je/log/entry/LogEntry;
    iget-object v7, p0, Lcom/sleepycat/je/log/RestoreMarker;->logManager:Lcom/sleepycat/je/log/LogManager;

    invoke-virtual {v7, v6, v1, v2}, Lcom/sleepycat/je/log/LogManager;->putIntoBuffer(Lcom/sleepycat/je/log/entry/LogEntry;J)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    .local v1, "buf2":Ljava/nio/ByteBuffer;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/sleepycat/je/log/RestoreMarker;->lastFile:Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 142
    .local v7, "channel":Ljava/nio/channels/FileChannel;
    nop

    .line 144
    :try_start_3
    invoke-virtual {v7, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 145
    invoke-virtual {v7, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    if-eqz v7, :cond_1

    :try_start_4
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .end local v7    # "channel":Ljava/nio/channels/FileChannel;
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 149
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    nop

    .line 154
    .end local v0    # "header":Lcom/sleepycat/je/log/FileHeader;
    .end local v1    # "buf2":Ljava/nio/ByteBuffer;
    .end local v3    # "headerLogEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v4    # "buf1":Ljava/nio/ByteBuffer;
    .end local v5    # "rr":Lcom/sleepycat/je/log/entry/RestoreRequired;
    .end local v6    # "marker":Lcom/sleepycat/je/log/entry/LogEntry;
    nop

    .line 155
    return-void

    .line 142
    .restart local v0    # "header":Lcom/sleepycat/je/log/FileHeader;
    .restart local v1    # "buf2":Ljava/nio/ByteBuffer;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "headerLogEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v4    # "buf1":Ljava/nio/ByteBuffer;
    .restart local v5    # "rr":Lcom/sleepycat/je/log/entry/RestoreRequired;
    .restart local v6    # "marker":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v7    # "channel":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v8

    .end local v0    # "header":Lcom/sleepycat/je/log/FileHeader;
    .end local v1    # "buf2":Ljava/nio/ByteBuffer;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .end local v3    # "headerLogEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v4    # "buf1":Ljava/nio/ByteBuffer;
    .end local v5    # "rr":Lcom/sleepycat/je/log/entry/RestoreRequired;
    .end local v6    # "marker":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v7    # "channel":Ljava/nio/channels/FileChannel;
    .end local p1    # "failureType":Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
    .end local p2    # "props":Ljava/util/Properties;
    :try_start_6
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 146
    .restart local v0    # "header":Lcom/sleepycat/je/log/FileHeader;
    .restart local v1    # "buf2":Ljava/nio/ByteBuffer;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "headerLogEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v4    # "buf1":Ljava/nio/ByteBuffer;
    .restart local v5    # "rr":Lcom/sleepycat/je/log/entry/RestoreRequired;
    .restart local v6    # "marker":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v7    # "channel":Ljava/nio/channels/FileChannel;
    .restart local p1    # "failureType":Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
    .restart local p2    # "props":Ljava/util/Properties;
    :catchall_1
    move-exception v9

    if-eqz v7, :cond_2

    :try_start_7
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v10

    :try_start_8
    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "header":Lcom/sleepycat/je/log/FileHeader;
    .end local v1    # "buf2":Ljava/nio/ByteBuffer;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .end local v3    # "headerLogEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v4    # "buf1":Ljava/nio/ByteBuffer;
    .end local v5    # "rr":Lcom/sleepycat/je/log/entry/RestoreRequired;
    .end local v6    # "marker":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local p1    # "failureType":Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
    .end local p2    # "props":Ljava/util/Properties;
    :cond_2
    :goto_0
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 142
    .end local v7    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v0    # "header":Lcom/sleepycat/je/log/FileHeader;
    .restart local v1    # "buf2":Ljava/nio/ByteBuffer;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "headerLogEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v4    # "buf1":Ljava/nio/ByteBuffer;
    .restart local v5    # "rr":Lcom/sleepycat/je/log/entry/RestoreRequired;
    .restart local v6    # "marker":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local p1    # "failureType":Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
    .restart local p2    # "props":Ljava/util/Properties;
    :catchall_3
    move-exception v7

    .end local v0    # "header":Lcom/sleepycat/je/log/FileHeader;
    .end local v1    # "buf2":Ljava/nio/ByteBuffer;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .end local v3    # "headerLogEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v4    # "buf1":Ljava/nio/ByteBuffer;
    .end local v5    # "rr":Lcom/sleepycat/je/log/entry/RestoreRequired;
    .end local v6    # "marker":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local p1    # "failureType":Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
    .end local p2    # "props":Ljava/util/Properties;
    :try_start_9
    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 146
    .restart local v0    # "header":Lcom/sleepycat/je/log/FileHeader;
    .restart local v1    # "buf2":Ljava/nio/ByteBuffer;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "headerLogEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v4    # "buf1":Ljava/nio/ByteBuffer;
    .restart local v5    # "rr":Lcom/sleepycat/je/log/entry/RestoreRequired;
    .restart local v6    # "marker":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local p1    # "failureType":Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
    .restart local p2    # "props":Ljava/util/Properties;
    :catchall_4
    move-exception v8

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v9

    :try_start_b
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "header":Lcom/sleepycat/je/log/FileHeader;
    .end local v1    # "buf2":Ljava/nio/ByteBuffer;
    .end local v3    # "headerLogEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v4    # "buf1":Ljava/nio/ByteBuffer;
    .end local v5    # "rr":Lcom/sleepycat/je/log/entry/RestoreRequired;
    .end local v6    # "marker":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local p1    # "failureType":Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
    .end local p2    # "props":Ljava/util/Properties;
    :goto_1
    throw v8
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v0    # "header":Lcom/sleepycat/je/log/FileHeader;
    .restart local v1    # "buf2":Ljava/nio/ByteBuffer;
    .restart local v3    # "headerLogEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local v4    # "buf1":Ljava/nio/ByteBuffer;
    .restart local v5    # "rr":Lcom/sleepycat/je/log/entry/RestoreRequired;
    .restart local v6    # "marker":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local p1    # "failureType":Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
    .restart local p2    # "props":Ljava/util/Properties;
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/io/IOException;
    nop

    .end local p1    # "failureType":Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
    .end local p2    # "props":Ljava/util/Properties;
    :try_start_c
    throw v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 150
    .end local v0    # "header":Lcom/sleepycat/je/log/FileHeader;
    .end local v1    # "buf2":Ljava/nio/ByteBuffer;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "headerLogEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v4    # "buf1":Ljava/nio/ByteBuffer;
    .end local v5    # "rr":Lcom/sleepycat/je/log/entry/RestoreRequired;
    .end local v6    # "marker":Lcom/sleepycat/je/log/entry/LogEntry;
    .restart local p1    # "failureType":Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
    .restart local p2    # "props":Ljava/util/Properties;
    :catch_1
    move-exception v0

    .line 151
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lcom/sleepycat/je/log/RestoreMarker$FileCreationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marker file creation failed for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 153
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/log/RestoreMarker$FileCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeMarkerFile(Lcom/sleepycat/je/log/FileManager;)V
    .locals 2
    .param p1, "fileManager"    # Lcom/sleepycat/je/log/FileManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/sleepycat/je/log/RestoreMarker;->lastFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-wide/32 v0, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/je/log/FileManager;->deleteFile(J)Z

    .line 96
    :cond_0
    return-void
.end method
