.class public final Lorg/jline/utils/ExecHelper;
.super Ljava/lang/Object;
.source "ExecHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private static varargs close([Ljava/io/Closeable;)V
    .locals 4
    .param p0, "closeables"    # [Ljava/io/Closeable;

    .line 75
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 76
    .local v2, "c":Ljava/io/Closeable;
    if-eqz v2, :cond_0

    .line 78
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_1

    .line 79
    :catch_0
    move-exception v3

    .line 75
    .end local v2    # "c":Ljava/io/Closeable;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_1
    return-void
.end method

.method public static varargs exec(Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "redirectInput"    # Z
    .param p1, "cmd"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Running: "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lorg/jline/utils/Log;->trace([Ljava/lang/Object;)V

    .line 31
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, p1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 32
    .local v1, "pb":Ljava/lang/ProcessBuilder;
    if-eqz p0, :cond_0

    .line 33
    sget-object v4, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    invoke-virtual {v1, v4}, Ljava/lang/ProcessBuilder;->redirectInput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    .line 35
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 36
    .local v4, "p":Ljava/lang/Process;
    invoke-static {v4}, Lorg/jline/utils/ExecHelper;->waitAndCapture(Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, "result":Ljava/lang/String;
    new-array v0, v0, [Ljava/lang/Object;

    const-string v6, "Result: "

    aput-object v6, v0, v3

    aput-object v5, v0, v2

    invoke-static {v0}, Lorg/jline/utils/Log;->trace([Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v5, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 42
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error executing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    move-object v6, p1

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-static {v3, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "redirectInput":Z
    .end local p1    # "cmd":[Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .restart local p0    # "redirectInput":Z
    .restart local p1    # "cmd":[Ljava/lang/String;
    :cond_2
    return-object v5

    .line 45
    .end local v1    # "pb":Ljava/lang/ProcessBuilder;
    .end local v4    # "p":Ljava/lang/Process;
    .end local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/InterruptedIOException;

    const-string v2, "Command interrupted"

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method public static waitAndCapture(Ljava/lang/Process;)Ljava/lang/String;
    .locals 11
    .param p0, "p"    # Ljava/lang/Process;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 53
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 54
    .local v2, "err":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 57
    .local v3, "out":Ljava/io/OutputStream;
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    move-object v1, v8

    .line 58
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v8

    move v9, v8

    .local v9, "c":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_0

    .line 59
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    move-object v2, v8

    .line 62
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v8

    move v9, v8

    if-eq v8, v10, :cond_1

    .line 63
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    move-object v3, v8

    .line 66
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    nop

    .end local v9    # "c":I
    new-array v7, v7, [Ljava/io/Closeable;

    aput-object v1, v7, v6

    aput-object v3, v7, v5

    aput-object v2, v7, v4

    invoke-static {v7}, Lorg/jline/utils/ExecHelper;->close([Ljava/io/Closeable;)V

    .line 69
    nop

    .line 71
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 68
    :catchall_0
    move-exception v8

    new-array v7, v7, [Ljava/io/Closeable;

    aput-object v1, v7, v6

    aput-object v3, v7, v5

    aput-object v2, v7, v4

    invoke-static {v7}, Lorg/jline/utils/ExecHelper;->close([Ljava/io/Closeable;)V

    .line 69
    throw v8
.end method
