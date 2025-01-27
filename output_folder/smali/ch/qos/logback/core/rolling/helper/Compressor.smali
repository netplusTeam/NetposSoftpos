.class public Lch/qos/logback/core/rolling/helper/Compressor;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "Compressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/core/rolling/helper/Compressor$CompressionRunnable;
    }
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x2000


# instance fields
.field final compressionMode:Lch/qos/logback/core/rolling/helper/CompressionMode;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/rolling/helper/CompressionMode;)V
    .locals 0
    .param p1, "compressionMode"    # Lch/qos/logback/core/rolling/helper/CompressionMode;

    .line 45
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 46
    iput-object p1, p0, Lch/qos/logback/core/rolling/helper/Compressor;->compressionMode:Lch/qos/logback/core/rolling/helper/CompressionMode;

    .line 47
    return-void
.end method

.method public static computeFileNameStrWithoutCompSuffix(Ljava/lang/String;Lch/qos/logback/core/rolling/helper/CompressionMode;)Ljava/lang/String;
    .locals 3
    .param p0, "fileNamePatternStr"    # Ljava/lang/String;
    .param p1, "compressionMode"    # Lch/qos/logback/core/rolling/helper/CompressionMode;

    .line 230
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 231
    .local v0, "len":I
    sget-object v1, Lch/qos/logback/core/rolling/helper/Compressor$1;->$SwitchMap$ch$qos$logback$core$rolling$helper$CompressionMode:[I

    invoke-virtual {p1}, Lch/qos/logback/core/rolling/helper/CompressionMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 245
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Execution should not reach this point"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :pswitch_0
    return-object p0

    .line 238
    :pswitch_1
    const-string v1, ".zip"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    add-int/lit8 v1, v0, -0x4

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 241
    :cond_0
    return-object p0

    .line 233
    :pswitch_2
    const-string v1, ".gz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    add-int/lit8 v1, v0, -0x3

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 236
    :cond_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private gzCompress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "nameOfFile2gz"    # Ljava/lang/String;
    .param p2, "nameOfgzedFile"    # Ljava/lang/String;

    .line 167
    const-string v0, "]."

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, "file2gz":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    new-instance v0, Lch/qos/logback/core/status/WarnStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The file to compress named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/helper/Compressor;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 172
    return-void

    .line 175
    :cond_0
    const-string v2, ".gz"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 179
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v2, "gzedFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The target compressed file named ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] exist already. Aborting file compression."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/helper/Compressor;->addWarn(Ljava/lang/String;)V

    .line 183
    return-void

    .line 186
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GZ compressing ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] as ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/rolling/helper/Compressor;->addInfo(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, v2}, Lch/qos/logback/core/rolling/helper/Compressor;->createMissingTargetDirsIfNecessary(Ljava/io/File;)V

    .line 189
    const/4 v3, 0x0

    .line 190
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 192
    .local v4, "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v5

    .line 193
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v5

    .line 194
    const/16 v5, 0x2000

    new-array v5, v5, [B

    .line 197
    .local v5, "inbuf":[B
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "n":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_3

    .line 198
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 202
    const/4 v3, 0x0

    .line 203
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 204
    const/4 v4, 0x0

    .line 206
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_4

    .line 207
    new-instance v6, Lch/qos/logback/core/status/WarnStatus;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not delete ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lch/qos/logback/core/rolling/helper/Compressor;->addStatus(Lch/qos/logback/core/status/Status;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .end local v5    # "inbuf":[B
    .end local v7    # "n":I
    :cond_4
    if-eqz v3, :cond_5

    .line 214
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 217
    goto :goto_1

    .line 215
    :catch_0
    move-exception v0

    .line 219
    :cond_5
    :goto_1
    if-eqz v4, :cond_7

    .line 221
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 224
    :goto_2
    goto :goto_4

    .line 222
    :catch_1
    move-exception v0

    goto :goto_2

    .line 212
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 209
    :catch_2
    move-exception v5

    .line 210
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v6, Lch/qos/logback/core/status/ErrorStatus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error occurred while compressing ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] into ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, p0, v5}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v6}, Lch/qos/logback/core/rolling/helper/Compressor;->addStatus(Lch/qos/logback/core/status/Status;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_6

    .line 214
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 217
    goto :goto_3

    .line 215
    :catch_3
    move-exception v0

    .line 219
    :cond_6
    :goto_3
    if-eqz v4, :cond_7

    .line 221
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 227
    :cond_7
    :goto_4
    return-void

    .line 212
    :goto_5
    if-eqz v3, :cond_8

    .line 214
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 217
    goto :goto_6

    .line 215
    :catch_4
    move-exception v5

    .line 219
    :cond_8
    :goto_6
    if-eqz v4, :cond_9

    .line 221
    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 224
    goto :goto_7

    .line 222
    :catch_5
    move-exception v5

    .line 224
    :cond_9
    :goto_7
    throw v0
.end method

.method private zipCompress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "nameOfFile2zip"    # Ljava/lang/String;
    .param p2, "nameOfZippedFile"    # Ljava/lang/String;
    .param p3, "innerEntryName"    # Ljava/lang/String;

    .line 69
    const-string v0, "]."

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "file2zip":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    new-instance v0, Lch/qos/logback/core/status/WarnStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The file to compress named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/helper/Compressor;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 74
    return-void

    .line 77
    :cond_0
    if-nez p3, :cond_1

    .line 78
    new-instance v0, Lch/qos/logback/core/status/WarnStatus;

    const-string v2, "The innerEntryName parameter cannot be null"

    invoke-direct {v0, v2, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/helper/Compressor;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 79
    return-void

    .line 82
    :cond_1
    const-string v2, ".zip"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 86
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, "zippedFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    new-instance v0, Lch/qos/logback/core/status/WarnStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The target compressed file named ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] exist already."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/helper/Compressor;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 91
    return-void

    .line 94
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZIP compressing ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] as ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/rolling/helper/Compressor;->addInfo(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v2}, Lch/qos/logback/core/rolling/helper/Compressor;->createMissingTargetDirsIfNecessary(Ljava/io/File;)V

    .line 97
    const/4 v3, 0x0

    .line 98
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 100
    .local v4, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v5

    .line 101
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v5

    .line 103
    invoke-virtual {p0, p3}, Lch/qos/logback/core/rolling/helper/Compressor;->computeZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 104
    .local v5, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 106
    const/16 v6, 0x2000

    new-array v6, v6, [B

    .line 109
    .local v6, "inbuf":[B
    :goto_0
    invoke-virtual {v3, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "n":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_4

    .line 110
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v8}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 116
    const/4 v4, 0x0

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_5

    .line 119
    new-instance v7, Lch/qos/logback/core/status/WarnStatus;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not delete ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lch/qos/logback/core/rolling/helper/Compressor;->addStatus(Lch/qos/logback/core/status/Status;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v5    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v6    # "inbuf":[B
    .end local v8    # "n":I
    :cond_5
    if-eqz v3, :cond_6

    .line 126
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    goto :goto_1

    .line 127
    :catch_0
    move-exception v0

    .line 131
    :cond_6
    :goto_1
    if-eqz v4, :cond_8

    .line 133
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 136
    :goto_2
    goto :goto_4

    .line 134
    :catch_1
    move-exception v0

    goto :goto_2

    .line 124
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 121
    :catch_2
    move-exception v5

    .line 122
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v6, Lch/qos/logback/core/status/ErrorStatus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error occurred while compressing ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] into ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, p0, v5}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v6}, Lch/qos/logback/core/rolling/helper/Compressor;->addStatus(Lch/qos/logback/core/status/Status;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_7

    .line 126
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 129
    goto :goto_3

    .line 127
    :catch_3
    move-exception v0

    .line 131
    :cond_7
    :goto_3
    if-eqz v4, :cond_8

    .line 133
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 140
    :cond_8
    :goto_4
    return-void

    .line 124
    :goto_5
    if-eqz v3, :cond_9

    .line 126
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 129
    goto :goto_6

    .line 127
    :catch_4
    move-exception v5

    .line 131
    :cond_9
    :goto_6
    if-eqz v4, :cond_a

    .line 133
    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 136
    goto :goto_7

    .line 134
    :catch_5
    move-exception v5

    .line 136
    :cond_a
    :goto_7
    throw v0
.end method


# virtual methods
.method public asyncCompress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "nameOfFile2Compress"    # Ljava/lang/String;
    .param p2, "nameOfCompressedFile"    # Ljava/lang/String;
    .param p3, "innerEntryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/rolling/RolloverFailure;
        }
    .end annotation

    .line 262
    new-instance v0, Lch/qos/logback/core/rolling/helper/Compressor$CompressionRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lch/qos/logback/core/rolling/helper/Compressor$CompressionRunnable;-><init>(Lch/qos/logback/core/rolling/helper/Compressor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .local v0, "runnable":Lch/qos/logback/core/rolling/helper/Compressor$CompressionRunnable;
    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/Compressor;->context:Lch/qos/logback/core/Context;

    invoke-interface {v1}, Lch/qos/logback/core/Context;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 264
    .local v1, "executorService":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 265
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    return-object v2
.end method

.method public compress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "nameOfFile2Compress"    # Ljava/lang/String;
    .param p2, "nameOfCompressedFile"    # Ljava/lang/String;
    .param p3, "innerEntryName"    # Ljava/lang/String;

    .line 56
    sget-object v0, Lch/qos/logback/core/rolling/helper/Compressor$1;->$SwitchMap$ch$qos$logback$core$rolling$helper$CompressionMode:[I

    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/Compressor;->compressionMode:Lch/qos/logback/core/rolling/helper/CompressionMode;

    invoke-virtual {v1}, Lch/qos/logback/core/rolling/helper/CompressionMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 64
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "compress method called in NONE compression mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lch/qos/logback/core/rolling/helper/Compressor;->zipCompress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    goto :goto_0

    .line 58
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lch/qos/logback/core/rolling/helper/Compressor;->gzCompress(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    nop

    .line 66
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method computeZipEntry(Ljava/io/File;)Ljava/util/zip/ZipEntry;
    .locals 1
    .param p1, "zippedFile"    # Ljava/io/File;

    .line 158
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/helper/Compressor;->computeZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method computeZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/Compressor;->compressionMode:Lch/qos/logback/core/rolling/helper/CompressionMode;

    invoke-static {p1, v0}, Lch/qos/logback/core/rolling/helper/Compressor;->computeFileNameStrWithoutCompSuffix(Ljava/lang/String;Lch/qos/logback/core/rolling/helper/CompressionMode;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "nameOfFileNestedWithinArchive":Ljava/lang/String;
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method createMissingTargetDirsIfNecessary(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .line 249
    invoke-static {p1}, Lch/qos/logback/core/util/FileUtil;->createMissingParentDirectories(Ljava/io/File;)Z

    move-result v0

    .line 250
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create parent directories for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/rolling/helper/Compressor;->addError(Ljava/lang/String;)V

    .line 253
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
