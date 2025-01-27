.class Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;
.super Lcom/sleepycat/je/cleaner/FileSummary;
.source "UtilizationFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/UtilizationFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtendedFileSummary"
.end annotation


# instance fields
.field private recalcObsoleteINSize:I

.field private recalcObsoleteLNSize:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 303
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/FileSummary;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/log/UtilizationFileReader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/log/UtilizationFileReader$1;

    .line 303
    invoke-direct {p0}, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;

    .line 303
    iget v0, p0, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->recalcObsoleteINSize:I

    return v0
.end method

.method static synthetic access$102(Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;
    .param p1, "x1"    # I

    .line 303
    iput p1, p0, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->recalcObsoleteINSize:I

    return p1
.end method

.method static synthetic access$200(Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;

    .line 303
    iget v0, p0, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->recalcObsoleteLNSize:I

    return v0
.end method

.method static synthetic access$202(Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;
    .param p1, "x1"    # I

    .line 303
    iput p1, p0, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->recalcObsoleteLNSize:I

    return p1
.end method


# virtual methods
.method public getObsoleteINSize()I
    .locals 1

    .line 322
    iget v0, p0, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->recalcObsoleteINSize:I

    return v0
.end method

.method public getObsoleteLNSize()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->recalcObsoleteLNSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/sleepycat/je/cleaner/FileSummary;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, "<extended-info recalcObsoleteINSize=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget v1, p0, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->recalcObsoleteINSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, "\" recalcObsoleteLNSize=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget v1, p0, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->recalcObsoleteLNSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
