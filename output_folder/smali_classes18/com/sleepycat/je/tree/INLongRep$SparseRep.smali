.class public Lcom/sleepycat/je/tree/INLongRep$SparseRep;
.super Lcom/sleepycat/je/tree/INLongRep$DefaultRep;
.source "INLongRep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/tree/INLongRep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SparseRep"
.end annotation


# static fields
.field private static final MAX_ENTRIES:I = 0x4


# instance fields
.field private final idxs:[S


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "nBytes"    # I

    .line 303
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;-><init>(II)V

    .line 305
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sleepycat/je/tree/INLongRep$SparseRep;->idxs:[S

    .line 306
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([SS)V

    .line 307
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V
    .locals 1
    .param p1, "marker"    # Lcom/sleepycat/je/utilint/SizeofMarker;

    .line 311
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;-><init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/INLongRep$SparseRep;->idxs:[S

    .line 313
    return-void
.end method


# virtual methods
.method public clear(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/INLongRep$EmptyRep;)Lcom/sleepycat/je/tree/INLongRep;
    .locals 4
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "emptyRep"    # Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    .line 389
    nop

    .line 390
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/INLongRep$SparseRep;->getMemorySize()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sleepycat/je/tree/INLongRep$EmptyRep;->getMemorySize()J

    move-result-wide v2

    .line 389
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 392
    return-object p2
.end method

.method public compact(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/INLongRep$EmptyRep;)Lcom/sleepycat/je/tree/INLongRep;
    .locals 1
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "emptyRep"    # Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    .line 379
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/INLongRep$SparseRep;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/tree/INLongRep$SparseRep;->clear(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/INLongRep$EmptyRep;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    return-object v0

    .line 383
    :cond_0
    return-object p0
.end method

.method public copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "n"    # I
    .param p4, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 410
    move-object v0, p0

    .line 412
    .local v0, "target":Lcom/sleepycat/je/tree/INLongRep;
    if-eq p2, p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    .line 414
    :cond_0
    if-ge p2, p1, :cond_2

    .line 416
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 417
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "to":I
    .local v2, "to":I
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "from":I
    .local v3, "from":I
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INLongRep$SparseRep;->get(I)J

    move-result-wide v4

    invoke-virtual {v0, p2, v4, v5, p4}, Lcom/sleepycat/je/tree/INLongRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    .line 416
    add-int/lit8 v1, v1, 0x1

    move p2, v2

    move p1, v3

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "to":I
    .end local v3    # "from":I
    .restart local p1    # "from":I
    .restart local p2    # "to":I
    :cond_1
    goto :goto_2

    .line 421
    :cond_2
    add-int/2addr p1, p3

    .line 422
    add-int/2addr p2, p3

    .line 423
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, p3, :cond_3

    .line 424
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INLongRep$SparseRep;->get(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, v2, v3, p4}, Lcom/sleepycat/je/tree/INLongRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 428
    .end local v1    # "i":I
    :cond_3
    :goto_2
    return-object v0
.end method

.method public get(I)J
    .locals 3
    .param p1, "idx"    # I

    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/tree/INLongRep$SparseRep;->idxs:[S

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 324
    aget-short v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 325
    invoke-super {p0, v0}, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->get(I)J

    move-result-wide v1

    return-wide v1

    .line 323
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "i":I
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMemorySize()J
    .locals 4

    .line 433
    invoke-super {p0}, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->getMemorySize()J

    move-result-wide v0

    sget v2, Lcom/sleepycat/je/dbi/MemoryBudget;->SPARSE_LONG_REP_OVERHEAD:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget v2, Lcom/sleepycat/je/dbi/MemoryBudget;->DEFAULT_KEYVALS_OVERHEAD:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/sleepycat/je/tree/INLongRep$SparseRep;->idxs:[S

    array-length v2, v2

    .line 436
    invoke-static {v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->shortArraySize(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 433
    return-wide v0
.end method

.method public isEmpty()Z
    .locals 6

    .line 398
    iget-object v0, p0, Lcom/sleepycat/je/tree/INLongRep$SparseRep;->idxs:[S

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-short v4, v0, v3

    .line 399
    .local v4, "idx":S
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 400
    return v2

    .line 398
    .end local v4    # "idx":S
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic resize(I)Lcom/sleepycat/je/tree/INLongRep$DefaultRep;
    .locals 0

    .line 295
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INLongRep$SparseRep;->resize(I)Lcom/sleepycat/je/tree/INLongRep$SparseRep;

    move-result-object p1

    return-object p1
.end method

.method public resize(I)Lcom/sleepycat/je/tree/INLongRep$SparseRep;
    .locals 0
    .param p1, "capacity"    # I

    .line 317
    return-object p0
.end method

.method public bridge synthetic resize(I)Lcom/sleepycat/je/tree/INLongRep;
    .locals 0

    .line 295
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INLongRep$SparseRep;->resize(I)Lcom/sleepycat/je/tree/INLongRep$SparseRep;

    move-result-object p1

    return-object p1
.end method

.method public set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;
    .locals 7
    .param p1, "idx"    # I
    .param p2, "val"    # J
    .param p4, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 335
    const/4 v0, -0x1

    .line 337
    .local v0, "slot":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/tree/INLongRep$SparseRep;->idxs:[S

    array-length v3, v2

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    if-ge v1, v3, :cond_3

    .line 339
    aget-short v3, v2, v1

    if-ne v3, p1, :cond_1

    .line 340
    cmp-long v3, p2, v4

    if-nez v3, :cond_0

    .line 341
    aput-short v6, v2, v1

    .line 343
    :cond_0
    invoke-super {p0, v1, p2, p3, p4}, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v2

    return-object v2

    .line 346
    :cond_1
    if-gez v0, :cond_2

    if-ne v3, v6, :cond_2

    .line 347
    move v0, v1

    .line 337
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "i":I
    :cond_3
    cmp-long v1, p2, v4

    if-nez v1, :cond_4

    .line 352
    return-object p0

    .line 356
    :cond_4
    if-ltz v0, :cond_5

    .line 357
    int-to-short v1, p1

    aput-short v1, v2, v0

    .line 358
    invoke-super {p0, v0, p2, p3, p4}, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v1

    return-object v1

    .line 362
    :cond_5
    new-instance v1, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;

    .line 363
    invoke-virtual {p4}, Lcom/sleepycat/je/tree/IN;->getMaxEntries()I

    move-result v2

    iget v3, p0, Lcom/sleepycat/je/tree/INLongRep$SparseRep;->bytesPerValue:I

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;-><init>(II)V

    .line 365
    .local v1, "newRep":Lcom/sleepycat/je/tree/INLongRep;
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/INLongRep$SparseRep;->getMemorySize()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v4

    invoke-virtual {p4, v2, v3, v4, v5}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(JJ)V

    .line 367
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sleepycat/je/tree/INLongRep$SparseRep;->idxs:[S

    array-length v4, v3

    if-ge v2, v4, :cond_7

    .line 368
    aget-short v3, v3, v2

    if-eq v3, v6, :cond_6

    .line 369
    invoke-super {p0, v2}, Lcom/sleepycat/je/tree/INLongRep$DefaultRep;->get(I)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5, p4}, Lcom/sleepycat/je/tree/INLongRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v1

    .line 367
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 373
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sleepycat/je/tree/INLongRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v2

    return-object v2
.end method
