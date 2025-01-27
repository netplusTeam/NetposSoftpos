.class Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;
.super Ljava/lang/Object;
.source "BtreeVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/util/verify/BtreeVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DanglingLSNCheckResult"
.end annotation


# static fields
.field private static final NO_DANGLING_LSN:Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;


# instance fields
.field fileNotExist:Z

.field fsInfo:Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;

.field problematicIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 818
    new-instance v0, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;-><init>(IZLcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;)V

    sput-object v0, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;->NO_DANGLING_LSN:Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;

    return-void
.end method

.method constructor <init>(IZLcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;)V
    .locals 0
    .param p1, "problematicIndex"    # I
    .param p2, "fileNotExist"    # Z
    .param p3, "fsInfo"    # Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    iput p1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;->problematicIndex:I

    .line 840
    iput-boolean p2, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;->fileNotExist:Z

    .line 841
    iput-object p3, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;->fsInfo:Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;

    .line 842
    return-void
.end method

.method static synthetic access$300()Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;
    .locals 1

    .line 816
    sget-object v0, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;->NO_DANGLING_LSN:Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;

    return-object v0
.end method


# virtual methods
.method getReason()Ljava/lang/String;
    .locals 2

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;->fileNotExist:Z

    if-eqz v1, :cond_0

    const-string v1, "File does not exist. "

    goto :goto_0

    :cond_0
    const-string v1, "Offset[+lastLoggerSize] exceeds the end of the file. "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;->fsInfo:Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;

    iget v1, v1, Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$DanglingLSNCheckResult;->fsInfo:Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;

    .line 847
    invoke-virtual {v1}, Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 845
    return-object v0
.end method
