.class public Lcom/github/barteksc/pdfviewer/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    .line 44
    .local v0, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "read":I
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 47
    .local v2, "bytes":[B
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v1, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 48
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 52
    .end local v1    # "read":I
    .end local v2    # "bytes":[B
    :cond_0
    if-eqz p0, :cond_1

    .line 53
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 56
    :catchall_0
    move-exception v1

    .line 57
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 59
    throw v1

    .line 56
    :cond_1
    :goto_1
    nop

    .line 57
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 60
    nop

    .line 61
    return-void

    .line 51
    :catchall_1
    move-exception v1

    .line 52
    if-eqz p0, :cond_3

    .line 53
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 56
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 59
    :cond_2
    throw v1

    .line 56
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 57
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 60
    :cond_4
    throw v1
.end method

.method public static fileFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-pdfview.pdf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .local v0, "outFile":Ljava/io/File;
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/github/barteksc/pdfviewer/util/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V

    .line 38
    return-object v0
.end method
