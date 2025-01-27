.class public Lcom/sleepycat/je/cleaner/FileSummary;
.super Ljava/lang/Object;
.source "FileSummary.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public maxLNSize:I

.field public obsoleteINCount:I

.field public obsoleteLNCount:I

.field public obsoleteLNSize:I

.field public obsoleteLNSizeCounted:I

.field public totalCount:I

.field public totalINCount:I

.field public totalINSize:I

.field public totalLNCount:I

.field public totalLNSize:I

.field public totalSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private calculateObsoleteSize(I)I
    .locals 3
    .param p1, "lnObsoleteSize"    # I

    .line 252
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    if-gtz v0, :cond_0

    .line 253
    const/4 v0, 0x0

    return v0

    .line 256
    :cond_0
    iget v1, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalINSize:I

    iget v2, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 258
    .local v0, "leftoverSize":I
    nop

    .line 259
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/FileSummary;->getObsoleteINSize()I

    move-result v1

    add-int/2addr v1, p1

    add-int/2addr v1, v0

    .line 267
    .local v1, "obsoleteSize":I
    iget v2, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    if-le v1, v2, :cond_1

    .line 268
    iget v1, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    .line 270
    :cond_1
    return v1
.end method

.method public static utilization(JJ)I
    .locals 3
    .param p0, "obsoleteSize"    # J
    .param p2, "totalSize"    # J

    .line 293
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x0

    return v0

    .line 296
    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    sub-long v1, p2, p0

    long-to-float v1, v1

    mul-float/2addr v1, v0

    long-to-float v0, p2

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public add(Lcom/sleepycat/je/cleaner/FileSummary;)V
    .locals 2
    .param p1, "o"    # Lcom/sleepycat/je/cleaner/FileSummary;

    .line 322
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalCount:I

    iget v1, p1, Lcom/sleepycat/je/cleaner/FileSummary;->totalCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalCount:I

    .line 323
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    iget v1, p1, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    .line 324
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalINCount:I

    iget v1, p1, Lcom/sleepycat/je/cleaner/FileSummary;->totalINCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalINCount:I

    .line 325
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalINSize:I

    iget v1, p1, Lcom/sleepycat/je/cleaner/FileSummary;->totalINSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalINSize:I

    .line 326
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    iget v1, p1, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    .line 327
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    iget v1, p1, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    .line 328
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->maxLNSize:I

    iget v1, p1, Lcom/sleepycat/je/cleaner/FileSummary;->maxLNSize:I

    if-ge v0, v1, :cond_0

    .line 329
    iput v1, p0, Lcom/sleepycat/je/cleaner/FileSummary;->maxLNSize:I

    .line 331
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteINCount:I

    iget v1, p1, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteINCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteINCount:I

    .line 332
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNCount:I

    iget v1, p1, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNCount:I

    .line 333
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSize:I

    iget v1, p1, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSize:I

    .line 334
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSizeCounted:I

    iget v1, p1, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSizeCounted:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSizeCounted:I

    .line 335
    return-void
.end method

.method public clone()Lcom/sleepycat/je/cleaner/FileSummary;
    .locals 2

    .line 49
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/FileSummary;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
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

    .line 26
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/FileSummary;->clone()Lcom/sleepycat/je/cleaner/FileSummary;

    move-result-object v0

    return-object v0
.end method

.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 395
    const-string v0, "<summary totalCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 397
    const-string v0, "\" totalSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    const-string v0, "\" totalINCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalINCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    const-string v0, "\" totalINSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalINSize:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    const-string v0, "\" totalLNCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    const-string v0, "\" totalLNSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    const-string v0, "\" maxLNSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->maxLNSize:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    const-string v0, "\" obsoleteINCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteINCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    const-string v0, "\" obsoleteLNCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    const-string v0, "\" obsoleteLNSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSize:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    const-string v0, "\" obsoleteLNSizeCounted=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSizeCounted:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    const-string v0, "\" getObsoleteSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/FileSummary;->getObsoleteSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    const-string v0, "\" getObsoleteINSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/FileSummary;->getObsoleteINSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    const-string v0, "\" getObsoleteLNSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/FileSummary;->getObsoleteLNSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    const-string v0, "\" getMaxObsoleteSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/FileSummary;->getMaxObsoleteSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    const-string v0, "\" getMaxObsoleteLNSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/FileSummary;->getMaxObsoleteLNSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    const-string v0, "\" getAvgObsoleteLNSizeNotCounted=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/FileSummary;->getAvgObsoleteLNSizeNotCounted()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 429
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    return-void
.end method

.method public getAvgObsoleteLNSizeNotCounted()F
    .locals 8

    .line 130
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNCount:I

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 131
    .local v0, "obsLNCount":I
    iget v1, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSize:I

    iget v2, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 132
    .local v1, "obsLNSize":I
    iget v2, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSizeCounted:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 135
    .local v2, "obsLNSizeCounted":I
    sub-int v3, v0, v2

    .line 136
    .local v3, "obsCountNotCounted":I
    const/high16 v4, 0x7fc00000    # Float.NaN

    if-gtz v3, :cond_0

    .line 137
    return v4

    .line 140
    :cond_0
    iget v5, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    sub-int/2addr v5, v1

    .line 141
    .local v5, "totalSizeNotCounted":I
    iget v6, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    sub-int/2addr v6, v2

    .line 143
    .local v6, "totalCountNotCounted":I
    if-lez v5, :cond_2

    if-gtz v6, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    int-to-float v4, v5

    int-to-float v7, v6

    div-float/2addr v4, v7

    return v4

    .line 144
    :cond_2
    :goto_0
    return v4
.end method

.method getEntriesCounted()I
    .locals 2

    .line 279
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalCount:I

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteINCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLogSize()I
    .locals 1

    .line 339
    invoke-static {}, Lcom/sleepycat/je/log/LogUtils;->getIntLogSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public getMaxObsoleteLNSize()I
    .locals 13

    .line 161
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->maxLNSize:I

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/FileSummary;->getObsoleteLNSize()I

    move-result v0

    return v0

    .line 165
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    if-nez v0, :cond_1

    .line 166
    const/4 v0, 0x0

    return v0

    .line 170
    :cond_1
    iget v1, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNCount:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 171
    .local v0, "obsLNCount":I
    iget v1, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSize:I

    iget v2, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 172
    .local v1, "obsLNSize":I
    iget v2, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSizeCounted:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 180
    .local v2, "obsLNSizeCounted":I
    int-to-long v3, v1

    .line 181
    .local v3, "obsSize":J
    sub-int v5, v0, v2

    int-to-long v5, v5

    .line 182
    .local v5, "obsCountNotCounted":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_2

    .line 205
    iget v7, p0, Lcom/sleepycat/je/cleaner/FileSummary;->maxLNSize:I

    int-to-long v7, v7

    mul-long/2addr v7, v5

    .line 207
    .local v7, "maxLNSizeNotCounted":J
    iget v9, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    sub-int/2addr v9, v1

    iget v10, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    sub-int/2addr v10, v0

    mul-int/lit8 v10, v10, 0x12

    sub-int/2addr v9, v10

    int-to-long v9, v9

    .line 210
    .local v9, "maxObsSizeNotCounted":J
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    add-long/2addr v3, v11

    .line 214
    .end local v7    # "maxLNSizeNotCounted":J
    .end local v9    # "maxObsSizeNotCounted":J
    :cond_2
    iget v7, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    int-to-long v8, v7

    cmp-long v8, v3, v8

    if-lez v8, :cond_3

    goto :goto_0

    :cond_3
    long-to-int v7, v3

    :goto_0
    return v7
.end method

.method public getMaxObsoleteSize()I
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/FileSummary;->getMaxObsoleteLNSize()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/cleaner/FileSummary;->calculateObsoleteSize(I)I

    move-result v0

    return v0
.end method

.method public getObsoleteINSize()I
    .locals 4

    .line 222
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalINCount:I

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    return v0

    .line 227
    :cond_0
    iget v1, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteINCount:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 230
    .local v0, "obsINCount":I
    iget v1, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalINSize:I

    int-to-float v1, v1

    .line 231
    .local v1, "size":F
    iget v2, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalINCount:I

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 232
    .local v2, "avgSizePerIN":F
    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v3, v3

    return v3
.end method

.method public getObsoleteLNSize()I
    .locals 9

    .line 72
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    return v0

    .line 77
    :cond_0
    iget v1, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNCount:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 78
    .local v0, "obsLNCount":I
    iget v1, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSize:I

    iget v2, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 79
    .local v1, "obsLNSize":I
    iget v2, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSizeCounted:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 87
    .local v2, "obsLNSizeCounted":I
    int-to-long v3, v1

    .line 88
    .local v3, "obsSize":J
    sub-int v5, v0, v2

    .line 89
    .local v5, "obsCountNotCounted":I
    if-lez v5, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/FileSummary;->getAvgObsoleteLNSizeNotCounted()F

    move-result v6

    .line 97
    .local v6, "avgLNSizeNotCounted":F
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_1

    .line 98
    int-to-float v7, v5

    mul-float/2addr v7, v6

    float-to-int v7, v7

    int-to-long v7, v7

    add-long/2addr v3, v7

    .line 103
    .end local v6    # "avgLNSizeNotCounted":F
    :cond_1
    iget v6, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    int-to-long v7, v6

    cmp-long v7, v3, v7

    if-lez v7, :cond_2

    goto :goto_0

    :cond_2
    long-to-int v6, v3

    :goto_0
    return v6
.end method

.method public getObsoleteSize()I
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/FileSummary;->getObsoleteLNSize()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/cleaner/FileSummary;->calculateObsoleteSize(I)I

    move-result v0

    return v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 436
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 60
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteINCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 359
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalCount:I

    .line 360
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    .line 361
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalINCount:I

    .line 362
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalINSize:I

    .line 363
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    .line 364
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    .line 365
    const/16 v0, 0x8

    if-lt p2, v0, :cond_0

    .line 366
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->maxLNSize:I

    .line 368
    :cond_0
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteINCount:I

    .line 369
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 376
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalINCount:I

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteINCount:I

    .line 378
    :cond_1
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNCount:I

    .line 384
    const/4 v0, 0x3

    if-lt p2, v0, :cond_2

    .line 385
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSize:I

    .line 386
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSizeCounted:I

    goto :goto_0

    .line 388
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSize:I

    .line 389
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSizeCounted:I

    .line 391
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalCount:I

    .line 305
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    .line 306
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalINCount:I

    .line 307
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalINSize:I

    .line 308
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    .line 309
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    .line 310
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->maxLNSize:I

    .line 311
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteINCount:I

    .line 312
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNCount:I

    .line 313
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSize:I

    .line 314
    iput v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSizeCounted:I

    .line 315
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/cleaner/FileSummary;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public utilization()I
    .locals 4

    .line 286
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/FileSummary;->getObsoleteSize()I

    move-result v0

    int-to-long v0, v0

    iget v2, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/cleaner/FileSummary;->utilization(JJ)I

    move-result v0

    return v0
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 344
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalCount:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 345
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 346
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalINCount:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 347
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalINSize:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 348
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 349
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 350
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->maxLNSize:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 351
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteINCount:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 352
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNCount:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 353
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSize:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 354
    iget v0, p0, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSizeCounted:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 355
    return-void
.end method
