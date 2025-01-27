.class public Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
.super Ljava/util/ArrayList;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x62cfe53b24b268b1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "cnt"    # I

    .line 299
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 300
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;",
            ">;)V"
        }
    .end annotation

    .line 303
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 304
    return-void
.end method

.method public constructor <init>([Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V
    .locals 3
    .param p1, "points"    # [Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 292
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>()V

    .line 293
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 294
    .local v2, "point":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v2    # "point":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_0
    return-void
.end method

.method private static excludeOp(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;
    .locals 2
    .param p0, "op"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 275
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 276
    .local v0, "result":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 277
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iput-object v0, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 278
    const/4 v1, 0x0

    iput v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->idx:I

    .line 279
    return-object v0
.end method


# virtual methods
.method public TranslatePath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
    .locals 9
    .param p1, "delta"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 440
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(I)V

    .line 441
    .local v0, "outPath":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 442
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public area()D
    .locals 11

    .line 307
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v0

    .line 308
    .local v0, "cnt":I
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 309
    const-wide/16 v1, 0x0

    return-wide v1

    .line 311
    :cond_0
    const-wide/16 v1, 0x0

    .line 312
    .local v1, "a":D
    const/4 v3, 0x0

    .local v3, "i":I
    add-int/lit8 v4, v0, -0x1

    .local v4, "j":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 313
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    long-to-double v7, v7

    add-double/2addr v5, v7

    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    long-to-double v7, v7

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v9

    long-to-double v9, v9

    sub-double/2addr v7, v9

    mul-double/2addr v5, v7

    add-double/2addr v1, v5

    .line 314
    move v4, v3

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 316
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_1
    neg-double v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    return-wide v3
.end method

.method public cleanPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
    .locals 2

    .line 320
    const-wide v0, 0x3ff6a3d70a3d70a4L    # 1.415

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->cleanPolygon(D)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v0

    return-object v0
.end method

.method public cleanPolygon(D)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
    .locals 8
    .param p1, "distance"    # D

    .line 328
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v0

    .line 330
    .local v0, "cnt":I
    if-nez v0, :cond_0

    .line 331
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>()V

    return-object v1

    .line 334
    :cond_0
    new-array v1, v0, [Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 335
    .local v1, "outPts":[Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 336
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;-><init>()V

    aput-object v3, v1, v2

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    const/4 v3, 0x0

    if-ge v2, v0, :cond_2

    .line 340
    aget-object v4, v1, v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iput-object v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 341
    aget-object v4, v1, v2

    add-int/lit8 v5, v2, 0x1

    rem-int/2addr v5, v0

    aget-object v5, v1, v5

    iput-object v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 342
    aget-object v4, v1, v2

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    aget-object v5, v1, v2

    iput-object v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 343
    aget-object v4, v1, v2

    iput v3, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->idx:I

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 346
    .end local v2    # "i":I
    :cond_2
    mul-double v4, p1, p1

    .line 347
    .local v4, "distSqrd":D
    aget-object v2, v1, v3

    .line 348
    .local v2, "op":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;
    :goto_2
    iget v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->idx:I

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v6, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eq v3, v6, :cond_6

    .line 349
    iget-object v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v6, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v6, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-static {v3, v6, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->arePointsClose(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;D)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 350
    invoke-static {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->excludeOp(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    .line 351
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 353
    :cond_3
    iget-object v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v3, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v6, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v6, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-static {v3, v6, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->arePointsClose(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;D)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 354
    iget-object v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-static {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->excludeOp(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 355
    invoke-static {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->excludeOp(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    .line 356
    add-int/lit8 v0, v0, -0x2

    goto :goto_2

    .line 358
    :cond_4
    iget-object v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v3, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v6, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v7, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-static {v3, v6, v7, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->slopesNearCollinear(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;D)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 359
    invoke-static {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->excludeOp(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    .line 360
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 363
    :cond_5
    const/4 v3, 0x1

    iput v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->idx:I

    .line 364
    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_2

    .line 368
    :cond_6
    const/4 v3, 0x3

    if-ge v0, v3, :cond_7

    .line 369
    const/4 v0, 0x0

    .line 371
    :cond_7
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-direct {v3, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(I)V

    .line 372
    .local v3, "result":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v0, :cond_8

    .line 373
    iget-object v7, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v3, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 372
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 376
    .end local v6    # "i":I
    :cond_8
    const/4 v1, 0x0

    .line 377
    return-object v3
.end method

.method public isPointInPolygon(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)I
    .locals 21
    .param p1, "pt"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 384
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 385
    .local v1, "result":I
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v2

    .line 386
    .local v2, "cnt":I
    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    .line 387
    return v3

    .line 389
    :cond_0
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 390
    .local v4, "ip":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-gt v5, v2, :cond_13

    .line 391
    if-ne v5, v2, :cond_1

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v6

    :goto_1
    check-cast v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 392
    .local v6, "ipNext":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v9

    cmp-long v7, v7, v9

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-nez v7, :cond_5

    .line 393
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-nez v7, :cond_5

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-lez v7, :cond_2

    move v7, v9

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_3

    move v10, v9

    goto :goto_3

    :cond_3
    move v10, v3

    :goto_3
    if-ne v7, v10, :cond_5

    .line 394
    :cond_4
    return v8

    .line 397
    :cond_5
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-gez v7, :cond_6

    move v7, v9

    goto :goto_4

    :cond_6
    move v7, v3

    :goto_4
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_7

    move v10, v9

    goto :goto_5

    :cond_7
    move v10, v3

    :goto_5
    if-eq v7, v10, :cond_11

    .line 398
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v7, v10, v12

    const-wide/16 v10, 0x0

    if-ltz v7, :cond_d

    .line 399
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v14

    cmp-long v7, v12, v14

    if-lez v7, :cond_8

    .line 400
    rsub-int/lit8 v1, v1, 0x1

    move-object/from16 v20, v4

    goto/16 :goto_a

    .line 403
    :cond_8
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v14

    sub-long/2addr v12, v14

    long-to-double v12, v12

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v16

    sub-long v14, v14, v16

    long-to-double v14, v14

    mul-double/2addr v12, v14

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v16

    sub-long v14, v14, v16

    long-to-double v14, v14

    .line 404
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v18

    move-object/from16 v20, v4

    .end local v4    # "ip":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    .local v20, "ip":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    sub-long v3, v16, v18

    long-to-double v3, v3

    mul-double/2addr v14, v3

    sub-double/2addr v12, v14

    .line 405
    .local v12, "d":D
    cmpl-double v3, v12, v10

    if-nez v3, :cond_9

    .line 406
    return v8

    .line 408
    :cond_9
    cmpl-double v3, v12, v10

    if-lez v3, :cond_a

    move v3, v9

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v14

    cmp-long v4, v10, v14

    if-lez v4, :cond_b

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    :goto_7
    if-ne v3, v9, :cond_c

    .line 409
    rsub-int/lit8 v1, v1, 0x1

    .line 411
    .end local v12    # "d":D
    :cond_c
    goto :goto_a

    .line 414
    .end local v20    # "ip":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    .restart local v4    # "ip":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    :cond_d
    move-object/from16 v20, v4

    .end local v4    # "ip":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    .restart local v20    # "ip":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v3, v3, v12

    if-lez v3, :cond_12

    .line 415
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    sub-long/2addr v3, v12

    long-to-double v3, v3

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v14

    sub-long/2addr v12, v14

    long-to-double v12, v12

    mul-double/2addr v3, v12

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v14

    sub-long/2addr v12, v14

    long-to-double v12, v12

    .line 416
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v16

    sub-long v14, v14, v16

    long-to-double v14, v14

    mul-double/2addr v12, v14

    sub-double/2addr v3, v12

    .line 417
    .local v3, "d":D
    cmpl-double v12, v3, v10

    if-nez v12, :cond_e

    .line 418
    return v8

    .line 420
    :cond_e
    cmpl-double v8, v3, v10

    if-lez v8, :cond_f

    move v8, v9

    goto :goto_8

    :cond_f
    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_10

    goto :goto_9

    :cond_10
    const/4 v9, 0x0

    :goto_9
    if-ne v8, v9, :cond_12

    .line 421
    rsub-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 397
    .end local v3    # "d":D
    .end local v20    # "ip":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    .restart local v4    # "ip":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    :cond_11
    move-object/from16 v20, v4

    .line 426
    .end local v4    # "ip":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    .restart local v20    # "ip":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    :cond_12
    :goto_a
    move-object v4, v6

    .line 390
    .end local v6    # "ipNext":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    .end local v20    # "ip":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    .restart local v4    # "ip":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 428
    .end local v5    # "i":I
    :cond_13
    return v1
.end method

.method public orientation()Z
    .locals 4

    .line 432
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->area()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reverse()V
    .locals 0

    .line 436
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 437
    return-void
.end method
