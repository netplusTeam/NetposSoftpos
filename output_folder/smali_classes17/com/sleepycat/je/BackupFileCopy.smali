.class public interface abstract Lcom/sleepycat/je/BackupFileCopy;
.super Ljava/lang/Object;
.source "BackupFileCopy.java"


# virtual methods
.method public abstract checksum(Ljava/net/URL;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract copy(Ljava/io/File;Ljava/net/URL;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getChecksumAlg()Ljava/lang/String;
.end method

.method public abstract getCompressionAlg()Ljava/lang/String;
.end method

.method public abstract getEncryptionAlg()Ljava/lang/String;
.end method

.method public abstract initialize(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
