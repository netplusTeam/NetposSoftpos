.class public Lcom/sleepycat/je/StatsConfig;
.super Ljava/lang/Object;
.source "StatsConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CLEAR:Lcom/sleepycat/je/StatsConfig;

.field public static final DEFAULT:Lcom/sleepycat/je/StatsConfig;


# instance fields
.field private clear:Z

.field private fast:Z

.field private showProgressInterval:I

.field private showProgressStream:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/sleepycat/je/StatsConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/StatsConfig;-><init>()V

    sput-object v0, Lcom/sleepycat/je/StatsConfig;->DEFAULT:Lcom/sleepycat/je/StatsConfig;

    .line 32
    new-instance v0, Lcom/sleepycat/je/StatsConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/StatsConfig;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/StatsConfig;->setClear(Z)Lcom/sleepycat/je/StatsConfig;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/StatsConfig;->CLEAR:Lcom/sleepycat/je/StatsConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/StatsConfig;->fast:Z

    .line 35
    iput-boolean v0, p0, Lcom/sleepycat/je/StatsConfig;->clear:Z

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/StatsConfig;->showProgressStream:Ljava/io/PrintStream;

    .line 37
    iput v0, p0, Lcom/sleepycat/je/StatsConfig;->showProgressInterval:I

    .line 44
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/StatsConfig;
    .locals 2

    .line 178
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/StatsConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "willNeverOccur":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/sleepycat/je/StatsConfig;->clone()Lcom/sleepycat/je/StatsConfig;

    move-result-object v0

    return-object v0
.end method

.method public getClear()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/sleepycat/je/StatsConfig;->clear:Z

    return v0
.end method

.method public getFast()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/sleepycat/je/StatsConfig;->fast:Z

    return v0
.end method

.method public getShowProgressInterval()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/sleepycat/je/StatsConfig;->showProgressInterval:I

    return v0
.end method

.method public getShowProgressStream()Ljava/io/PrintStream;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/sleepycat/je/StatsConfig;->showProgressStream:Ljava/io/PrintStream;

    return-object v0
.end method

.method public setClear(Z)Lcom/sleepycat/je/StatsConfig;
    .locals 0
    .param p1, "clear"    # Z

    .line 95
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/StatsConfig;->setClearVoid(Z)V

    .line 96
    return-object p0
.end method

.method public setClearVoid(Z)V
    .locals 0
    .param p1, "clear"    # Z

    .line 104
    iput-boolean p1, p0, Lcom/sleepycat/je/StatsConfig;->clear:Z

    .line 105
    return-void
.end method

.method public setFast(Z)Lcom/sleepycat/je/StatsConfig;
    .locals 0
    .param p1, "fast"    # Z

    .line 62
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/StatsConfig;->setFastVoid(Z)V

    .line 63
    return-object p0
.end method

.method public setFastVoid(Z)V
    .locals 0
    .param p1, "fast"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/sleepycat/je/StatsConfig;->fast:Z

    .line 72
    return-void
.end method

.method public setShowProgressInterval(I)Lcom/sleepycat/je/StatsConfig;
    .locals 0
    .param p1, "showProgressInterval"    # I

    .line 153
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/StatsConfig;->setShowProgressIntervalVoid(I)V

    .line 154
    return-object p0
.end method

.method public setShowProgressIntervalVoid(I)V
    .locals 0
    .param p1, "showProgressInterval"    # I

    .line 162
    iput p1, p0, Lcom/sleepycat/je/StatsConfig;->showProgressInterval:I

    .line 163
    return-void
.end method

.method public setShowProgressStream(Ljava/io/PrintStream;)Lcom/sleepycat/je/StatsConfig;
    .locals 0
    .param p1, "showProgressStream"    # Ljava/io/PrintStream;

    .line 126
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/StatsConfig;->setShowProgressStreamVoid(Ljava/io/PrintStream;)V

    .line 127
    return-object p0
.end method

.method public setShowProgressStreamVoid(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "showProgressStream"    # Ljava/io/PrintStream;

    .line 135
    iput-object p1, p0, Lcom/sleepycat/je/StatsConfig;->showProgressStream:Ljava/io/PrintStream;

    .line 136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/StatsConfig;->fast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nclear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/StatsConfig;->clear:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nshowProgressStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/StatsConfig;->showProgressStream:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nshowProgressInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/StatsConfig;->showProgressInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
