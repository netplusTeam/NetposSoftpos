.class Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;
.super Ljava/lang/Object;
.source "BtreeVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/util/verify/BtreeVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileSizeInfo"
.end annotation


# instance fields
.field size:I

.field sizeFromCache:Z

.field sizeFromLastFile:Z


# direct methods
.method constructor <init>(ZZI)V
    .locals 0
    .param p1, "sizeFromLastFile"    # Z
    .param p2, "sizeFromCache"    # Z
    .param p3, "size"    # I

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 865
    iput-boolean p1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;->sizeFromLastFile:Z

    .line 866
    iput-boolean p2, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;->sizeFromCache:Z

    .line 867
    iput p3, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;->size:I

    .line 868
    return-void
.end method


# virtual methods
.method getReason()Ljava/lang/String;
    .locals 2

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;->sizeFromLastFile:Z

    if-eqz v1, :cond_0

    const-string v1, "File size from last file"

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;->sizeFromCache:Z

    if-eqz v1, :cond_1

    const-string v1, "File size previously cached"

    goto :goto_0

    :cond_1
    const-string v1, "File size added to cache"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
