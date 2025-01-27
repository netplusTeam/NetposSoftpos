.class Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
.super Ljava/lang/Object;
.source "FileSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/FileSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileInfo"
.end annotation


# instance fields
.field dbIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            ">;"
        }
    .end annotation
.end field

.field firstVlsn:Lcom/sleepycat/je/utilint/VLSN;

.field lastVlsn:Lcom/sleepycat/je/utilint/VLSN;

.field private requiredUtil:I

.field private status:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->requiredUtil:I

    .line 211
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->firstVlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 212
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->lastVlsn:Lcom/sleepycat/je/utilint/VLSN;

    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    .line 205
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->requiredUtil:I

    return v0
.end method

.method static synthetic access$002(Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    .param p1, "x1"    # I

    .line 205
    iput p1, p0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->requiredUtil:I

    return p1
.end method

.method static synthetic access$100(Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;)Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;

    .line 205
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->status:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;)Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;
    .param p1, "x1"    # Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    .line 205
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->status:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->status:Lcom/sleepycat/je/cleaner/FileSelector$FileStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dbIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->dbIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " firstVlsn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->firstVlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastVlsn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector$FileInfo;->lastVlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
