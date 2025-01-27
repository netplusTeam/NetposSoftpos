.class public Lch/qos/logback/core/recovery/ResilientFileOutputStream;
.super Lch/qos/logback/core/recovery/ResilientOutputStreamBase;
.source "ResilientFileOutputStream.java"


# instance fields
.field private file:Ljava/io/File;

.field private fos:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;ZJ)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "append"    # Z
    .param p3, "bufferSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lch/qos/logback/core/recovery/ResilientOutputStreamBase;-><init>()V

    .line 25
    iput-object p1, p0, Lch/qos/logback/core/recovery/ResilientFileOutputStream;->file:Ljava/io/File;

    .line 26
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lch/qos/logback/core/recovery/ResilientFileOutputStream;->fos:Ljava/io/FileOutputStream;

    .line 27
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lch/qos/logback/core/recovery/ResilientFileOutputStream;->fos:Ljava/io/FileOutputStream;

    long-to-int v2, p3

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lch/qos/logback/core/recovery/ResilientFileOutputStream;->os:Ljava/io/OutputStream;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/recovery/ResilientFileOutputStream;->presumedClean:Z

    .line 29
    return-void
.end method


# virtual methods
.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    .line 32
    iget-object v0, p0, Lch/qos/logback/core/recovery/ResilientFileOutputStream;->os:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/recovery/ResilientFileOutputStream;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method getDescription()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/recovery/ResilientFileOutputStream;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 39
    iget-object v0, p0, Lch/qos/logback/core/recovery/ResilientFileOutputStream;->file:Ljava/io/File;

    return-object v0
.end method

.method openNewOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lch/qos/logback/core/recovery/ResilientFileOutputStream;->file:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lch/qos/logback/core/recovery/ResilientFileOutputStream;->fos:Ljava/io/FileOutputStream;

    .line 51
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lch/qos/logback/core/recovery/ResilientFileOutputStream;->fos:Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c.q.l.c.recovery.ResilientFileOutputStream@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
