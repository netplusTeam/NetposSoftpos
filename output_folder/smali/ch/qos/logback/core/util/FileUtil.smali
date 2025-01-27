.class public Lch/qos/logback/core/util/FileUtil;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "FileUtil.java"


# static fields
.field static final BUF_SIZE:I = 0x8000


# direct methods
.method public constructor <init>(Lch/qos/logback/core/Context;)V
    .locals 0
    .param p1, "context"    # Lch/qos/logback/core/Context;

    .line 27
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lch/qos/logback/core/util/FileUtil;->setContext(Lch/qos/logback/core/Context;)V

    .line 29
    return-void
.end method

.method public static createMissingParentDirectories(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 49
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 50
    .local v0, "parent":Ljava/io/File;
    if-nez v0, :cond_0

    .line 53
    const/4 v1, 0x1

    return v1

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static fileToURL(Ljava/io/File;)Ljava/net/URL;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 33
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception on file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/rolling/RolloverFailure;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 101
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 102
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 103
    const v2, 0x8000

    new-array v2, v2, [B

    .line 106
    .local v2, "inbuf":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 107
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 111
    const/4 v0, 0x0

    .line 112
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const/4 v1, 0x0

    .line 119
    .end local v2    # "inbuf":[B
    .end local v4    # "n":I
    if-eqz v0, :cond_1

    .line 121
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    goto :goto_1

    .line 122
    :catch_0
    move-exception v2

    .line 126
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 128
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 131
    :goto_2
    goto :goto_3

    .line 129
    :catch_1
    move-exception v2

    goto :goto_2

    .line 134
    :cond_2
    :goto_3
    return-void

    .line 119
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 114
    :catch_2
    move-exception v2

    .line 115
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {p0, v3, v2}, Lch/qos/logback/core/util/FileUtil;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    new-instance v4, Lch/qos/logback/core/rolling/RolloverFailure;

    invoke-direct {v4, v3}, Lch/qos/logback/core/rolling/RolloverFailure;-><init>(Ljava/lang/String;)V

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local p1    # "src":Ljava/lang/String;
    .end local p2    # "destination":Ljava/lang/String;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "msg":Ljava/lang/String;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local p1    # "src":Ljava/lang/String;
    .restart local p2    # "destination":Ljava/lang/String;
    :goto_4
    if-eqz v0, :cond_3

    .line 121
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 124
    goto :goto_5

    .line 122
    :catch_3
    move-exception v3

    .line 126
    :cond_3
    :goto_5
    if-eqz v1, :cond_4

    .line 128
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 131
    goto :goto_6

    .line 129
    :catch_4
    move-exception v3

    .line 131
    :cond_4
    :goto_6
    throw v2
.end method

.method public resourceAsString(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "resourceName"    # Ljava/lang/String;

    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 64
    .local v0, "url":Ljava/net/URL;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find resource ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lch/qos/logback/core/util/FileUtil;->addError(Ljava/lang/String;)V

    .line 66
    return-object v1

    .line 69
    :cond_0
    const/4 v2, 0x0

    .line 71
    .local v2, "isr":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 72
    .local v3, "urlConnection":Ljava/net/URLConnection;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 73
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v5

    .line 74
    const/16 v5, 0x80

    new-array v5, v5, [C

    .line 75
    .local v5, "buf":[C
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v6, "builder":Ljava/lang/StringBuilder;
    const/4 v7, -0x1

    .line 77
    .local v7, "count":I
    :goto_0
    array-length v8, v5

    invoke-virtual {v2, v5, v4, v8}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v8

    move v7, v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 78
    invoke-virtual {v6, v5, v4, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    nop

    .line 86
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    goto :goto_1

    .line 87
    :catch_0
    move-exception v4

    .line 89
    :goto_1
    return-object v1

    .line 84
    .end local v3    # "urlConnection":Ljava/net/URLConnection;
    .end local v5    # "buf":[C
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "count":I
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 81
    :catch_1
    move-exception v3

    .line 82
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lch/qos/logback/core/util/FileUtil;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_2

    .line 86
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 89
    :goto_2
    goto :goto_3

    .line 87
    :catch_2
    move-exception v3

    goto :goto_2

    .line 92
    :cond_2
    :goto_3
    return-object v1

    .line 84
    :goto_4
    if-eqz v2, :cond_3

    .line 86
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 89
    goto :goto_5

    .line 87
    :catch_3
    move-exception v3

    .line 89
    :cond_3
    :goto_5
    throw v1
.end method
