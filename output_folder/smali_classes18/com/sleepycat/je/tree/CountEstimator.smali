.class public Lcom/sleepycat/je/tree/CountEstimator;
.super Ljava/lang/Object;
.source "CountEstimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/tree/CountEstimator$KeyRatios;
    }
.end annotation


# static fields
.field private static final MAX_RETRIES_AFTER_SPLIT:I = 0x64


# instance fields
.field private avgEntries:[F

.field private final avgEntriesStacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/tree/TrackingInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private beginStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/tree/TrackingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private endStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/tree/TrackingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private levelCount:I

.field private rootLevel:I


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/CountEstimator;->avgEntriesStacks:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lcom/sleepycat/je/tree/CountEstimator;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 76
    return-void
.end method

.method private addAvgEntriesSample(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/tree/TrackingInfo;",
            ">;)Z"
        }
    .end annotation

    .line 228
    .local p1, "stack":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/CountEstimator;->isFirstBIN(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/CountEstimator;->isLastBIN(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/CountEstimator;->avgEntriesStacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    const/4 v0, 0x1

    return v0

    .line 229
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private computeAvgEntries()V
    .locals 7

    .line 209
    iget v0, p0, Lcom/sleepycat/je/tree/CountEstimator;->levelCount:I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/sleepycat/je/tree/CountEstimator;->avgEntries:[F

    .line 211
    add-int/lit8 v0, v0, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    .line 213
    iget-object v0, p0, Lcom/sleepycat/je/tree/CountEstimator;->avgEntriesStacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    return-void

    .line 217
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/tree/CountEstimator;->levelCount:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "level":I
    :goto_0
    if-lez v0, :cond_2

    .line 218
    const-wide/16 v1, 0x0

    .line 219
    .local v1, "totalEntries":J
    iget-object v3, p0, Lcom/sleepycat/je/tree/CountEstimator;->avgEntriesStacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 220
    .local v4, "stack":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/tree/TrackingInfo;

    iget v5, v5, Lcom/sleepycat/je/tree/TrackingInfo;->entries:I

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 221
    .end local v4    # "stack":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    goto :goto_1

    .line 222
    :cond_1
    long-to-float v3, v1

    iget-object v4, p0, Lcom/sleepycat/je/tree/CountEstimator;->avgEntriesStacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 223
    .local v3, "avg":F
    iget-object v4, p0, Lcom/sleepycat/je/tree/CountEstimator;->avgEntries:[F

    add-int/lit8 v5, v0, -0x1

    aget v6, v4, v0

    mul-float/2addr v6, v3

    aput v6, v4, v5

    .line 217
    .end local v1    # "totalEntries":J
    .end local v3    # "avg":F
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 225
    .end local v0    # "level":I
    :cond_2
    return-void
.end method

.method private count(Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/dbi/CursorImpl;)J
    .locals 3
    .param p1, "beginCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p2, "endCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 80
    const/4 v0, 0x0

    .line 86
    .local v0, "numRetries":I
    :goto_0
    const/16 v1, 0x64

    if-gt v0, v1, :cond_3

    .line 94
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/CursorImpl;->getAncestorPath()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/tree/CountEstimator;->beginStack:Ljava/util/List;

    .line 95
    if-nez v1, :cond_0

    .line 96
    goto :goto_1

    .line 98
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/CursorImpl;->getAncestorPath()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/tree/CountEstimator;->endStack:Ljava/util/List;

    .line 99
    if-nez v1, :cond_1

    .line 100
    goto :goto_1

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/sleepycat/je/tree/CountEstimator;->findCommonAncestor()Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    nop

    .line 80
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/tree/CountEstimator;->getAvgEntries(Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 114
    invoke-direct {p0}, Lcom/sleepycat/je/tree/CountEstimator;->countTotal()J

    move-result-wide v1

    return-wide v1

    .line 87
    :cond_3
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public static count(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;ZLcom/sleepycat/je/dbi/CursorImpl;Z)J
    .locals 5
    .param p0, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p1, "beginCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p2, "beginInclusive"    # Z
    .param p3, "endCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p4, "endInclusive"    # Z

    .line 50
    invoke-virtual {p1, p3}, Lcom/sleepycat/je/dbi/CursorImpl;->isOnSamePosition(Lcom/sleepycat/je/dbi/CursorImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-wide/16 v0, 0x1

    return-wide v0

    .line 55
    :cond_0
    new-instance v0, Lcom/sleepycat/je/tree/CountEstimator;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/tree/CountEstimator;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 57
    .local v0, "estimator":Lcom/sleepycat/je/tree/CountEstimator;
    invoke-direct {v0, p1, p3}, Lcom/sleepycat/je/tree/CountEstimator;->count(Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/dbi/CursorImpl;)J

    move-result-wide v1

    int-to-long v3, p2

    add-long/2addr v1, v3

    int-to-long v3, p4

    add-long/2addr v1, v3

    return-wide v1
.end method

.method private countTotal()J
    .locals 11

    .line 259
    const-wide/16 v0, 0x0

    .line 262
    .local v0, "total":J
    iget-object v2, p0, Lcom/sleepycat/je/tree/CountEstimator;->beginStack:Ljava/util/List;

    iget v3, p0, Lcom/sleepycat/je/tree/CountEstimator;->rootLevel:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/TrackingInfo;

    iget v2, v2, Lcom/sleepycat/je/tree/TrackingInfo;->index:I

    add-int/lit8 v2, v2, 0x1

    .line 263
    .local v2, "rootIndex1":I
    iget-object v3, p0, Lcom/sleepycat/je/tree/CountEstimator;->endStack:Ljava/util/List;

    iget v4, p0, Lcom/sleepycat/je/tree/CountEstimator;->rootLevel:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/TrackingInfo;

    iget v3, v3, Lcom/sleepycat/je/tree/TrackingInfo;->index:I

    .line 264
    .local v3, "rootIndex2":I
    if-le v3, v2, :cond_0

    .line 265
    sub-int v4, v3, v2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sleepycat/je/tree/CountEstimator;->avgEntries:[F

    iget v6, p0, Lcom/sleepycat/je/tree/CountEstimator;->rootLevel:I

    aget v5, v5, v6

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 270
    :cond_0
    iget v4, p0, Lcom/sleepycat/je/tree/CountEstimator;->rootLevel:I

    add-int/lit8 v4, v4, 0x1

    .local v4, "level":I
    :goto_0
    iget v5, p0, Lcom/sleepycat/je/tree/CountEstimator;->levelCount:I

    if-ge v4, v5, :cond_3

    .line 273
    iget-object v5, p0, Lcom/sleepycat/je/tree/CountEstimator;->beginStack:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/tree/TrackingInfo;

    iget v5, v5, Lcom/sleepycat/je/tree/TrackingInfo;->index:I

    .line 274
    .local v5, "leftIndex":I
    iget-object v6, p0, Lcom/sleepycat/je/tree/CountEstimator;->beginStack:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/tree/TrackingInfo;

    iget v6, v6, Lcom/sleepycat/je/tree/TrackingInfo;->entries:I

    add-int/lit8 v6, v6, -0x1

    .line 275
    .local v6, "lastIndex":I
    if-le v6, v5, :cond_1

    .line 276
    sub-int v7, v6, v5

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sleepycat/je/tree/CountEstimator;->avgEntries:[F

    aget v8, v8, v4

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v0, v7

    .line 281
    :cond_1
    iget-object v7, p0, Lcom/sleepycat/je/tree/CountEstimator;->endStack:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/tree/TrackingInfo;

    iget v7, v7, Lcom/sleepycat/je/tree/TrackingInfo;->index:I

    .line 282
    .local v7, "rightIndex":I
    const/4 v8, 0x0

    .line 283
    .local v8, "firstIndex":I
    if-lez v7, :cond_2

    .line 284
    add-int/lit8 v9, v7, 0x0

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sleepycat/je/tree/CountEstimator;->avgEntries:[F

    aget v10, v10, v4

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v0, v9

    .line 270
    .end local v5    # "leftIndex":I
    .end local v6    # "lastIndex":I
    .end local v7    # "rightIndex":I
    .end local v8    # "firstIndex":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 289
    .end local v4    # "level":I
    :cond_3
    return-wide v0
.end method

.method private findCommonAncestor()Z
    .locals 7

    .line 126
    iget-object v0, p0, Lcom/sleepycat/je/tree/CountEstimator;->beginStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/tree/CountEstimator;->levelCount:I

    .line 127
    iget-object v1, p0, Lcom/sleepycat/je/tree/CountEstimator;->endStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 129
    return v2

    .line 132
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/tree/CountEstimator;->rootLevel:I

    .line 134
    iget v0, p0, Lcom/sleepycat/je/tree/CountEstimator;->levelCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "level":I
    :goto_0
    if-ltz v0, :cond_2

    .line 136
    iget-object v3, p0, Lcom/sleepycat/je/tree/CountEstimator;->beginStack:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/TrackingInfo;

    iget-wide v3, v3, Lcom/sleepycat/je/tree/TrackingInfo;->nodeId:J

    iget-object v5, p0, Lcom/sleepycat/je/tree/CountEstimator;->endStack:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/tree/TrackingInfo;

    iget-wide v5, v5, Lcom/sleepycat/je/tree/TrackingInfo;->nodeId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 137
    iput v0, p0, Lcom/sleepycat/je/tree/CountEstimator;->rootLevel:I

    .line 138
    goto :goto_1

    .line 134
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 141
    .end local v0    # "level":I
    :cond_2
    :goto_1
    iget v0, p0, Lcom/sleepycat/je/tree/CountEstimator;->rootLevel:I

    if-gez v0, :cond_3

    .line 143
    return v2

    .line 145
    :cond_3
    return v1
.end method

.method private getAvgEntries(Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/dbi/CursorImpl;)V
    .locals 1
    .param p1, "beginCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p2, "endCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 154
    iget-object v0, p0, Lcom/sleepycat/je/tree/CountEstimator;->avgEntriesStacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    iget-object v0, p0, Lcom/sleepycat/je/tree/CountEstimator;->beginStack:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/tree/CountEstimator;->addAvgEntriesSample(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/tree/CountEstimator;->sampleNextBIN(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/CountEstimator;->endStack:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/tree/CountEstimator;->addAvgEntriesSample(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/sleepycat/je/tree/CountEstimator;->sampleNextBIN(Lcom/sleepycat/je/dbi/CursorImpl;Z)V

    .line 164
    :cond_1
    invoke-direct {p0}, Lcom/sleepycat/je/tree/CountEstimator;->computeAvgEntries()V

    .line 165
    return-void
.end method

.method static getKeyRatios(Ljava/util/List;Z)Lcom/sleepycat/je/tree/CountEstimator$KeyRatios;
    .locals 16
    .param p1, "exact"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/tree/TrackingInfo;",
            ">;Z)",
            "Lcom/sleepycat/je/tree/CountEstimator$KeyRatios;"
        }
    .end annotation

    .line 320
    .local p0, "infoByLevel":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 321
    .local v0, "factor":D
    const-wide/16 v2, 0x0

    .line 322
    .local v2, "less":D
    const-wide/16 v4, 0x0

    .line 331
    .local v4, "greater":D
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/tree/TrackingInfo;

    .line 332
    .local v7, "info":Lcom/sleepycat/je/tree/TrackingInfo;
    iget v8, v7, Lcom/sleepycat/je/tree/TrackingInfo;->index:I

    if-nez v8, :cond_0

    .line 333
    iget v8, v7, Lcom/sleepycat/je/tree/TrackingInfo;->entries:I

    add-int/lit8 v8, v8, -0x1

    int-to-double v8, v8

    mul-double/2addr v8, v0

    iget v10, v7, Lcom/sleepycat/je/tree/TrackingInfo;->entries:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    add-double/2addr v4, v8

    goto :goto_1

    .line 334
    :cond_0
    iget v8, v7, Lcom/sleepycat/je/tree/TrackingInfo;->index:I

    iget v9, v7, Lcom/sleepycat/je/tree/TrackingInfo;->entries:I

    if-ne v8, v9, :cond_1

    .line 335
    add-double/2addr v2, v0

    goto :goto_1

    .line 337
    :cond_1
    iget v8, v7, Lcom/sleepycat/je/tree/TrackingInfo;->index:I

    int-to-double v8, v8

    mul-double/2addr v8, v0

    iget v10, v7, Lcom/sleepycat/je/tree/TrackingInfo;->entries:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    add-double/2addr v2, v8

    .line 338
    iget v8, v7, Lcom/sleepycat/je/tree/TrackingInfo;->entries:I

    iget v9, v7, Lcom/sleepycat/je/tree/TrackingInfo;->index:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    int-to-double v8, v8

    mul-double/2addr v8, v0

    iget v10, v7, Lcom/sleepycat/je/tree/TrackingInfo;->entries:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 343
    :goto_1
    iget v8, v7, Lcom/sleepycat/je/tree/TrackingInfo;->entries:I

    int-to-double v8, v8

    div-double/2addr v0, v8

    .line 350
    .end local v7    # "info":Lcom/sleepycat/je/tree/TrackingInfo;
    goto :goto_0

    .line 358
    :cond_2
    if-eqz p1, :cond_3

    .line 359
    move-wide v6, v0

    move-wide v14, v6

    .local v6, "equal":D
    goto :goto_2

    .line 361
    .end local v6    # "equal":D
    :cond_3
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v6

    if-eqz v6, :cond_4

    .line 362
    add-double/2addr v4, v0

    .line 364
    :cond_4
    const-wide/16 v6, 0x0

    move-wide v14, v6

    .line 367
    .local v14, "equal":D
    :goto_2
    new-instance v6, Lcom/sleepycat/je/tree/CountEstimator$KeyRatios;

    move-object v7, v6

    move-wide v8, v2

    move-wide v10, v14

    move-wide v12, v4

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/je/tree/CountEstimator$KeyRatios;-><init>(DDD)V

    return-object v6
.end method

.method private isFirstBIN(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/tree/TrackingInfo;",
            ">;)Z"
        }
    .end annotation

    .line 236
    .local p1, "stack":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 237
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/TrackingInfo;

    .line 238
    .local v1, "info":Lcom/sleepycat/je/tree/TrackingInfo;
    iget v2, v1, Lcom/sleepycat/je/tree/TrackingInfo;->index:I

    if-eqz v2, :cond_0

    .line 239
    const/4 v2, 0x0

    return v2

    .line 236
    .end local v1    # "info":Lcom/sleepycat/je/tree/TrackingInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method private isLastBIN(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/tree/TrackingInfo;",
            ">;)Z"
        }
    .end annotation

    .line 246
    .local p1, "stack":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 247
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/TrackingInfo;

    .line 248
    .local v1, "info":Lcom/sleepycat/je/tree/TrackingInfo;
    iget v3, v1, Lcom/sleepycat/je/tree/TrackingInfo;->index:I

    iget v4, v1, Lcom/sleepycat/je/tree/TrackingInfo;->entries:I

    sub-int/2addr v4, v2

    if-eq v3, v4, :cond_0

    .line 249
    const/4 v2, 0x0

    return v2

    .line 246
    .end local v1    # "info":Lcom/sleepycat/je/tree/TrackingInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method private sampleNextBIN(Lcom/sleepycat/je/dbi/CursorImpl;Z)V
    .locals 9
    .param p1, "beginOrEndCursor"    # Lcom/sleepycat/je/dbi/CursorImpl;
    .param p2, "moveForward"    # Z

    .line 174
    nop

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/CursorImpl;->cloneCursor(Z)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v0

    .line 178
    .local v0, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V

    .line 179
    if-eqz p2, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->setOnLastSlot()V

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->setOnFirstSlot()V

    .line 185
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/dbi/CursorImpl;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/txn/LockType;ZZZLcom/sleepycat/je/dbi/RangeConstraint;)Lcom/sleepycat/je/OperationResult;

    move-result-object v1

    .line 191
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->getAncestorPath()Ljava/util/List;

    move-result-object v2

    .line 193
    .local v2, "stack":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    if-eqz v2, :cond_1

    .line 194
    invoke-direct {p0, v2}, Lcom/sleepycat/je/tree/CountEstimator;->addAvgEntriesSample(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v2    # "stack":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/TrackingInfo;>;"
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    .line 199
    nop

    .line 200
    return-void

    .line 198
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/CursorImpl;->close()V

    throw v1
.end method
