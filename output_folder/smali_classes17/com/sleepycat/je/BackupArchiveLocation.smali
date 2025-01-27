.class public interface abstract Lcom/sleepycat/je/BackupArchiveLocation;
.super Ljava/lang/Object;
.source "BackupArchiveLocation.java"


# virtual methods
.method public abstract getArchiveLocation(Ljava/lang/String;)Ljava/net/URL;
.end method

.method public abstract initialize(Ljava/lang/String;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
