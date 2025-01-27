.class public Lcom/sleepycat/je/BackupFSArchiveCopy;
.super Ljava/lang/Object;
.source "BackupFSArchiveCopy.java"

# interfaces
.implements Lcom/sleepycat/je/BackupFileCopy;


# static fields
.field public static final CHECKSUM_KEY:Ljava/lang/String; = "checksumAlg"

.field private static final TRANSFER_BYTES:I = 0x10000


# instance fields
.field private volatile checksumAlg:Ljava/lang/String;

.field private volatile compressionAlg:Ljava/lang/String;

.field private volatile encryptionAlg:Ljava/lang/String;

.field private volatile initProperties:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private getFileFromURL(Ljava/net/URL;)Ljava/io/File;
    .locals 6
    .param p1, "archiveURL"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "archiveFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 176
    .local v1, "archiveParent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 178
    .local v2, "created":Z
    if-eqz v2, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create parent directories  for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 180
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    .end local v2    # "created":Z
    :cond_1
    :goto_0
    return-object v0

    .line 171
    .end local v0    # "archiveFile":Ljava/io/File;
    .end local v1    # "archiveParent":Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL scheme must be file; not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requireInitialized()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/sleepycat/je/BackupFSArchiveCopy;->initProperties:Ljava/util/Properties;

    if-eqz v0, :cond_0

    .line 229
    return-void

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not initialized);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checksum(Ljava/net/URL;)[B
    .locals 13
    .param p1, "archiveURL"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lcom/sleepycat/je/BackupFSArchiveCopy;->requireInitialized()V

    .line 191
    const-string v0, "archiveFile arg must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/BackupFSArchiveCopy;->checksumAlg:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    nop

    .line 203
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, "archiveFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 206
    .local v2, "length":J
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 209
    .local v4, "inputStream":Ljava/io/FileInputStream;
    const/high16 v5, 0x10000

    :try_start_1
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 210
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    move-wide v6, v2

    .local v6, "bytes":J
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 211
    const-wide/32 v8, 0x10000

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    .line 212
    .local v8, "readSize":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    .line 213
    .local v9, "readBytes":I
    const/4 v11, -0x1

    if-eq v9, v11, :cond_0

    .line 217
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v0, v11, v10, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 218
    int-to-long v10, v9

    sub-long/2addr v6, v10

    .line 219
    .end local v8    # "readSize":I
    .end local v9    # "readBytes":I
    goto :goto_0

    .line 214
    .restart local v8    # "readSize":I
    .restart local v9    # "readBytes":I
    :cond_0
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Premature EOF. Was expecting: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v1    # "archiveFile":Ljava/io/File;
    .end local v2    # "length":J
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local p1    # "archiveURL":Ljava/net/URL;
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "bytes":J
    .end local v8    # "readSize":I
    .end local v9    # "readBytes":I
    .restart local v0    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v1    # "archiveFile":Ljava/io/File;
    .restart local v2    # "length":J
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1    # "archiveURL":Ljava/net/URL;
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 221
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    return-object v4

    .line 206
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v5

    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v1    # "archiveFile":Ljava/io/File;
    .end local v2    # "length":J
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local p1    # "archiveURL":Ljava/net/URL;
    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 220
    .restart local v0    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v1    # "archiveFile":Ljava/io/File;
    .restart local v2    # "length":J
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1    # "archiveURL":Ljava/net/URL;
    :catchall_1
    move-exception v6

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v6

    .line 200
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v1    # "archiveFile":Ljava/io/File;
    .end local v2    # "length":J
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 193
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL scheme must be file; not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy(Ljava/io/File;Ljava/net/URL;)[B
    .locals 17
    .param p1, "localFile"    # Ljava/io/File;
    .param p2, "archiveURL"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/BackupFSArchiveCopy;->requireInitialized()V

    .line 130
    const-string v0, "localFile arg must not be null"

    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    const-string v0, "archiveFile arg must not be null"

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/BackupFSArchiveCopy;->checksumAlg:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 139
    .local v4, "messageDigest":Ljava/security/MessageDigest;
    nop

    .line 140
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 142
    .local v5, "length":J
    invoke-direct {v1, v3}, Lcom/sleepycat/je/BackupFSArchiveCopy;->getFileFromURL(Ljava/net/URL;)Ljava/io/File;

    move-result-object v7

    .line 143
    .local v7, "archiveFile":Ljava/io/File;
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v8, v0

    .line 144
    .local v8, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v9, 0x0

    invoke-direct {v0, v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v10, v0

    .line 143
    .local v10, "outputStream":Ljava/io/FileOutputStream;
    nop

    .line 146
    const/high16 v0, 0x10000

    :try_start_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 147
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    move-wide v11, v5

    .local v11, "bytes":J
    :goto_0
    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-lez v13, :cond_1

    .line 148
    const-wide/32 v13, 0x10000

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    long-to-int v13, v13

    .line 149
    .local v13, "readSize":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    invoke-virtual {v8, v14, v9, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14

    .line 150
    .local v14, "readBytes":I
    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    invoke-virtual {v10, v15, v9, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 155
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    invoke-virtual {v4, v15, v9, v14}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 156
    move-object/from16 v16, v10

    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .local v16, "outputStream":Ljava/io/FileOutputStream;
    int-to-long v9, v14

    sub-long/2addr v11, v9

    .line 157
    .end local v13    # "readSize":I
    .end local v14    # "readBytes":I
    move-object/from16 v10, v16

    const/4 v9, 0x0

    goto :goto_0

    .line 151
    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "readSize":I
    .restart local v14    # "readBytes":I
    :cond_0
    move-object/from16 v16, v10

    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "outputStream":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Premature EOF. Was expecting: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    .end local v5    # "length":J
    .end local v7    # "archiveFile":Ljava/io/File;
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    .end local p1    # "localFile":Ljava/io/File;
    .end local p2    # "archiveURL":Ljava/net/URL;
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v11    # "bytes":J
    .end local v13    # "readSize":I
    .end local v14    # "readBytes":I
    .restart local v4    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v5    # "length":J
    .restart local v7    # "archiveFile":Ljava/io/File;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v16    # "outputStream":Ljava/io/FileOutputStream;
    .restart local p1    # "localFile":Ljava/io/File;
    .restart local p2    # "archiveURL":Ljava/net/URL;
    :catchall_0
    move-exception v0

    move-object v9, v0

    goto :goto_1

    .line 147
    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "bytes":J
    :cond_1
    move-object/from16 v16, v10

    .line 158
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .end local v11    # "bytes":J
    .restart local v16    # "outputStream":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 162
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/dbi/BackupManager;->forceFile(Ljava/nio/file/Path;)V

    .line 164
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/dbi/BackupManager;->forceFile(Ljava/nio/file/Path;)V

    .line 166
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    .line 143
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v10

    move-object v9, v0

    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    .end local v5    # "length":J
    .end local v7    # "archiveFile":Ljava/io/File;
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .end local p1    # "localFile":Ljava/io/File;
    .end local p2    # "archiveURL":Ljava/net/URL;
    :goto_1
    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 158
    .restart local v4    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v5    # "length":J
    .restart local v7    # "archiveFile":Ljava/io/File;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v16    # "outputStream":Ljava/io/FileOutputStream;
    .restart local p1    # "localFile":Ljava/io/File;
    .restart local p2    # "archiveURL":Ljava/net/URL;
    :catchall_2
    move-exception v0

    move-object v10, v0

    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v11, v0

    :try_start_7
    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    .end local v5    # "length":J
    .end local v7    # "archiveFile":Ljava/io/File;
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local p1    # "localFile":Ljava/io/File;
    .end local p2    # "archiveURL":Ljava/net/URL;
    :goto_2
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 143
    .end local v16    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v5    # "length":J
    .restart local v7    # "archiveFile":Ljava/io/File;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1    # "localFile":Ljava/io/File;
    .restart local p2    # "archiveURL":Ljava/net/URL;
    :catchall_4
    move-exception v0

    move-object v9, v0

    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    .end local v5    # "length":J
    .end local v7    # "archiveFile":Ljava/io/File;
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local p1    # "localFile":Ljava/io/File;
    .end local p2    # "archiveURL":Ljava/net/URL;
    :try_start_8
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 158
    .restart local v4    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v5    # "length":J
    .restart local v7    # "archiveFile":Ljava/io/File;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1    # "localFile":Ljava/io/File;
    .restart local p2    # "archiveURL":Ljava/net/URL;
    :catchall_5
    move-exception v0

    move-object v10, v0

    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object v11, v0

    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v10

    .line 136
    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    .end local v5    # "length":J
    .end local v7    # "archiveFile":Ljava/io/File;
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bad checksum algorithm"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getChecksumAlg()Ljava/lang/String;
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/sleepycat/je/BackupFSArchiveCopy;->requireInitialized()V

    .line 114
    iget-object v0, p0, Lcom/sleepycat/je/BackupFSArchiveCopy;->checksumAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressionAlg()Ljava/lang/String;
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/sleepycat/je/BackupFSArchiveCopy;->requireInitialized()V

    .line 108
    iget-object v0, p0, Lcom/sleepycat/je/BackupFSArchiveCopy;->compressionAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionAlg()Ljava/lang/String;
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/sleepycat/je/BackupFSArchiveCopy;->requireInitialized()V

    .line 102
    iget-object v0, p0, Lcom/sleepycat/je/BackupFSArchiveCopy;->encryptionAlg:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized initialize(Ljava/io/File;)V
    .locals 5
    .param p1, "configFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/BackupFSArchiveCopy;->initProperties:Ljava/util/Properties;

    if-nez v0, :cond_2

    .line 72
    const-string v0, "configFile arg must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 75
    .local v0, "props":Ljava/util/Properties;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 76
    .local v1, "configStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 78
    .end local v1    # "configStream":Ljava/io/InputStream;
    const-string v1, "checksumAlg"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sleepycat/je/BackupFSArchiveCopy;->checksumAlg:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/sleepycat/je/BackupFSArchiveCopy;->checksumAlg:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v1, :cond_1

    .line 86
    :try_start_3
    iget-object v1, p0, Lcom/sleepycat/je/BackupFSArchiveCopy;->checksumAlg:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 89
    nop

    .line 91
    :try_start_4
    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 96
    iput-object v0, p0, Lcom/sleepycat/je/BackupFSArchiveCopy;->initProperties:Ljava/util/Properties;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 97
    monitor-exit p0

    return-void

    .line 92
    .end local p0    # "this":Lcom/sleepycat/je/BackupFSArchiveCopy;
    :cond_0
    :try_start_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad checksum algorithm"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 80
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checksum alg missing from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 75
    .local v1, "configStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "props":Ljava/util/Properties;
    .end local v1    # "configStream":Ljava/io/InputStream;
    .end local p1    # "configFile":Ljava/io/File;
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 77
    .restart local v0    # "props":Ljava/util/Properties;
    .restart local v1    # "configStream":Ljava/io/InputStream;
    .restart local p1    # "configFile":Ljava/io/File;
    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3

    .line 69
    .end local v0    # "props":Ljava/util/Properties;
    .end local v1    # "configStream":Ljava/io/InputStream;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 67
    .end local p1    # "configFile":Ljava/io/File;
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method
