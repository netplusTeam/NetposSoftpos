.class final Lcom/sleepycat/je/log/FileManager$6;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Lcom/sleepycat/je/log/FileManager$FileFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 1
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "fullName"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 3397
    new-instance v0, Lcom/sleepycat/je/log/FileManager$DefaultRandomAccessFile;

    invoke-direct {v0, p2, p3}, Lcom/sleepycat/je/log/FileManager$DefaultRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
