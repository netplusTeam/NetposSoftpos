.class Lcom/sleepycat/je/utilint/Java7FileStoreInfo;
.super Lcom/sleepycat/je/utilint/FileStoreInfo;
.source "Java7FileStoreInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/utilint/Java7FileStoreInfo$Java7Factory;
    }
.end annotation


# instance fields
.field private final fileStore:Ljava/nio/file/FileStore;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/FileStoreInfo;-><init>()V

    .line 53
    if-eqz p1, :cond_0

    .line 56
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/Java7FileStoreInfo;->fileStore:Ljava/nio/file/FileStore;

    .line 57
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The file must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 75
    if-ne p0, p1, :cond_0

    .line 76
    const/4 v0, 0x1

    return v0

    .line 77
    :cond_0
    instance-of v0, p1, Lcom/sleepycat/je/utilint/Java7FileStoreInfo;

    if-nez v0, :cond_1

    .line 78
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/utilint/Java7FileStoreInfo;->fileStore:Ljava/nio/file/FileStore;

    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/utilint/Java7FileStoreInfo;

    iget-object v1, v1, Lcom/sleepycat/je/utilint/Java7FileStoreInfo;->fileStore:Ljava/nio/file/FileStore;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getTotalSpace()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/sleepycat/je/utilint/Java7FileStoreInfo;->fileStore:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->getTotalSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUsableSpace()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/sleepycat/je/utilint/Java7FileStoreInfo;->fileStore:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/nio/file/FileStore;->getUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/utilint/Java7FileStoreInfo;->fileStore:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit16 v0, v0, 0xc7

    add-int/lit16 v0, v0, 0xc5

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sleepycat/je/utilint/Java7FileStoreInfo;->fileStore:Ljava/nio/file/FileStore;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
