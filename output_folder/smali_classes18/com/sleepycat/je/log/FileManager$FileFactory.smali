.class public interface abstract Lcom/sleepycat/je/log/FileManager$FileFactory;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileFactory"
.end annotation


# virtual methods
.method public abstract createFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method
