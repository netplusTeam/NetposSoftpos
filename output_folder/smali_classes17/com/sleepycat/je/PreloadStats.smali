.class public Lcom/sleepycat/je/PreloadStats;
.super Ljava/lang/Object;
.source "PreloadStats.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7f12f614L


# instance fields
.field private nBINsLoaded:I

.field private nCountMemoryExceeded:I

.field private nDBINsLoaded:I

.field private nDINsLoaded:I

.field private nDupCountLNsLoaded:I

.field private nEmbeddedLNs:I

.field private nINsLoaded:I

.field private nLNsLoaded:I

.field private status:Lcom/sleepycat/je/PreloadStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-direct {p0}, Lcom/sleepycat/je/PreloadStats;->reset()V

    .line 77
    return-void
.end method

.method private reset()V
    .locals 1

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/PreloadStats;->nEmbeddedLNs:I

    .line 84
    iput v0, p0, Lcom/sleepycat/je/PreloadStats;->nINsLoaded:I

    .line 85
    iput v0, p0, Lcom/sleepycat/je/PreloadStats;->nBINsLoaded:I

    .line 86
    iput v0, p0, Lcom/sleepycat/je/PreloadStats;->nLNsLoaded:I

    .line 87
    iput v0, p0, Lcom/sleepycat/je/PreloadStats;->nDINsLoaded:I

    .line 88
    iput v0, p0, Lcom/sleepycat/je/PreloadStats;->nDBINsLoaded:I

    .line 89
    iput v0, p0, Lcom/sleepycat/je/PreloadStats;->nDupCountLNsLoaded:I

    .line 90
    iput v0, p0, Lcom/sleepycat/je/PreloadStats;->nCountMemoryExceeded:I

    .line 91
    sget-object v0, Lcom/sleepycat/je/PreloadStatus;->SUCCESS:Lcom/sleepycat/je/PreloadStatus;

    iput-object v0, p0, Lcom/sleepycat/je/PreloadStats;->status:Lcom/sleepycat/je/PreloadStatus;

    .line 92
    return-void
.end method


# virtual methods
.method public getNBINsLoaded()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/sleepycat/je/PreloadStats;->nBINsLoaded:I

    return v0
.end method

.method public getNCountMemoryExceeded()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/sleepycat/je/PreloadStats;->nCountMemoryExceeded:I

    return v0
.end method

.method public getNDBINsLoaded()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/sleepycat/je/PreloadStats;->nDBINsLoaded:I

    return v0
.end method

.method public getNDINsLoaded()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/sleepycat/je/PreloadStats;->nDINsLoaded:I

    return v0
.end method

.method public getNDupCountLNsLoaded()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/sleepycat/je/PreloadStats;->nDupCountLNsLoaded:I

    return v0
.end method

.method public getNEmbeddedLNs()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/sleepycat/je/PreloadStats;->nEmbeddedLNs:I

    return v0
.end method

.method public getNINsLoaded()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/sleepycat/je/PreloadStats;->nINsLoaded:I

    return v0
.end method

.method public getNLNsLoaded()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/sleepycat/je/PreloadStats;->nLNsLoaded:I

    return v0
.end method

.method public getStatus()Lcom/sleepycat/je/PreloadStatus;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sleepycat/je/PreloadStats;->status:Lcom/sleepycat/je/PreloadStatus;

    return-object v0
.end method

.method public incBINsLoaded()V
    .locals 1

    .line 180
    iget v0, p0, Lcom/sleepycat/je/PreloadStats;->nBINsLoaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/PreloadStats;->nBINsLoaded:I

    .line 181
    return-void
.end method

.method public incDBINsLoaded()V
    .locals 1

    .line 212
    iget v0, p0, Lcom/sleepycat/je/PreloadStats;->nDBINsLoaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/PreloadStats;->nDBINsLoaded:I

    .line 213
    return-void
.end method

.method public incDINsLoaded()V
    .locals 1

    .line 204
    iget v0, p0, Lcom/sleepycat/je/PreloadStats;->nDINsLoaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/PreloadStats;->nDINsLoaded:I

    .line 205
    return-void
.end method

.method public incDupCountLNsLoaded()V
    .locals 1

    .line 220
    iget v0, p0, Lcom/sleepycat/je/PreloadStats;->nDupCountLNsLoaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/PreloadStats;->nDupCountLNsLoaded:I

    .line 221
    return-void
.end method

.method public incEmbeddedLNs()V
    .locals 1

    .line 196
    iget v0, p0, Lcom/sleepycat/je/PreloadStats;->nEmbeddedLNs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/PreloadStats;->nEmbeddedLNs:I

    .line 197
    return-void
.end method

.method public incINsLoaded()V
    .locals 1

    .line 172
    iget v0, p0, Lcom/sleepycat/je/PreloadStats;->nINsLoaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/PreloadStats;->nINsLoaded:I

    .line 173
    return-void
.end method

.method public incLNsLoaded()V
    .locals 1

    .line 188
    iget v0, p0, Lcom/sleepycat/je/PreloadStats;->nLNsLoaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/PreloadStats;->nLNsLoaded:I

    .line 189
    return-void
.end method

.method public incMemoryExceeded()V
    .locals 1

    .line 228
    iget v0, p0, Lcom/sleepycat/je/PreloadStats;->nCountMemoryExceeded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/PreloadStats;->nCountMemoryExceeded:I

    .line 229
    return-void
.end method

.method public setStatus(Lcom/sleepycat/je/PreloadStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/sleepycat/je/PreloadStatus;

    .line 236
    iput-object p1, p0, Lcom/sleepycat/je/PreloadStats;->status:Lcom/sleepycat/je/PreloadStatus;

    .line 237
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/PreloadStats;->status:Lcom/sleepycat/je/PreloadStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, "nINsLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sleepycat/je/PreloadStats;->nINsLoaded:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    const-string v1, "nBINsLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sleepycat/je/PreloadStats;->nBINsLoaded:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    const-string v1, "nLNsLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sleepycat/je/PreloadStats;->nLNsLoaded:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
