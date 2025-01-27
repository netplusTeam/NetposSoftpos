.class public Lorg/jpos/util/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zipFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p0, "input"    # Ljava/io/File;
    .param p1, "output"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 37
    .local v1, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 38
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 39
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 40
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 42
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "bytesRead":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 43
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 46
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 47
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .end local v2    # "buffer":[B
    .end local v4    # "bytesRead":I
    nop

    .line 50
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 52
    nop

    .line 53
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 56
    return-void

    .line 49
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 52
    :cond_1
    if-eqz v1, :cond_2

    .line 53
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 55
    :cond_2
    throw v2
.end method
