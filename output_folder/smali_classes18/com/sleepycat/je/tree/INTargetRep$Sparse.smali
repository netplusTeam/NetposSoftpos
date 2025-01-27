.class public Lcom/sleepycat/je/tree/INTargetRep$Sparse;
.super Lcom/sleepycat/je/tree/INTargetRep;
.source "INTargetRep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/tree/INTargetRep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sparse"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MAX_ENTRIES:I = 0x4

.field public static final MAX_INDEX:I = 0x7fff


# instance fields
.field final idxs:[S

.field final targets:[Lcom/sleepycat/je/tree/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    const-class v0, Lcom/sleepycat/je/tree/INTargetRep;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .line 160
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INTargetRep;-><init>()V

    .line 157
    const/4 v0, 0x4

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->idxs:[S

    .line 158
    new-array v0, v0, [Lcom/sleepycat/je/tree/Node;

    iput-object v0, p0, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->targets:[Lcom/sleepycat/je/tree/Node;

    .line 163
    const/4 v0, 0x3

    const/4 v2, -0x1

    aput-short v2, v1, v0

    const/4 v0, 0x2

    aput-short v2, v1, v0

    const/4 v0, 0x1

    aput-short v2, v1, v0

    const/4 v0, 0x0

    aput-short v2, v1, v0

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V
    .locals 2
    .param p1, "marker"    # Lcom/sleepycat/je/utilint/SizeofMarker;

    .line 167
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INTargetRep;-><init>()V

    .line 157
    const/4 v0, 0x4

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->idxs:[S

    .line 158
    new-array v0, v0, [Lcom/sleepycat/je/tree/Node;

    iput-object v0, p0, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->targets:[Lcom/sleepycat/je/tree/Node;

    .line 168
    return-void
.end method


# virtual methods
.method public calculateMemorySize()J
    .locals 2

    .line 287
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->SPARSE_TARGET_ENTRY_OVERHEAD:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public compact(Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;
    .locals 5
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "count":I
    iget-object v1, p0, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->targets:[Lcom/sleepycat/je/tree/Node;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 269
    .local v4, "target":Lcom/sleepycat/je/tree/Node;
    if-eqz v4, :cond_0

    .line 270
    add-int/lit8 v0, v0, 0x1

    .line 268
    .end local v4    # "target":Lcom/sleepycat/je/tree/Node;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    :cond_1
    if-nez v0, :cond_2

    .line 274
    sget-object v1, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->NONE:Lcom/sleepycat/je/tree/INTargetRep$None;

    .line 275
    .local v1, "newRep":Lcom/sleepycat/je/tree/INTargetRep$None;
    invoke-virtual {p0, v1, p1}, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->noteRepChange(Lcom/sleepycat/je/tree/INArrayRep;Lcom/sleepycat/je/tree/IN;)V

    .line 276
    return-object v1

    .line 278
    .end local v1    # "newRep":Lcom/sleepycat/je/tree/INTargetRep$None;
    :cond_2
    return-object p0
.end method

.method public bridge synthetic compact(Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->compact(Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;

    move-result-object p1

    return-object p1
.end method

.method public copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "n"    # I
    .param p4, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 245
    move-object v0, p0

    .line 247
    .local v0, "target":Lcom/sleepycat/je/tree/INTargetRep;
    if-eq p2, p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    .line 249
    :cond_0
    if-ge p2, p1, :cond_2

    .line 251
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 252
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "to":I
    .local v2, "to":I
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "from":I
    .local v3, "from":I
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->get(I)Lcom/sleepycat/je/tree/Node;

    move-result-object p1

    invoke-virtual {v0, p2, p1, p4}, Lcom/sleepycat/je/tree/INTargetRep;->set(ILjava/lang/Object;Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/tree/INTargetRep;

    .line 251
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

    .line 256
    :cond_2
    add-int/2addr p1, p3

    .line 257
    add-int/2addr p2, p3

    .line 258
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, p3, :cond_3

    .line 259
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->get(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v2

    invoke-virtual {v0, p2, v2, p4}, Lcom/sleepycat/je/tree/INTargetRep;->set(ILjava/lang/Object;Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sleepycat/je/tree/INTargetRep;

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 262
    .end local v1    # "i":I
    :cond_3
    :goto_2
    return-object v0
.end method

.method public bridge synthetic copy(IIILcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lcom/sleepycat/je/tree/Node;
    .locals 3
    .param p1, "j"    # I

    .line 182
    if-ltz p1, :cond_4

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_4

    .line 185
    iget-object v0, p0, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->idxs:[S

    const/4 v1, 0x0

    aget-short v2, v0, v1

    if-ne v2, p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->targets:[Lcom/sleepycat/je/tree/Node;

    aget-object v0, v0, v1

    return-object v0

    .line 188
    :cond_0
    const/4 v1, 0x1

    aget-short v2, v0, v1

    if-ne v2, p1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->targets:[Lcom/sleepycat/je/tree/Node;

    aget-object v0, v0, v1

    return-object v0

    .line 191
    :cond_1
    const/4 v1, 0x2

    aget-short v2, v0, v1

    if-ne v2, p1, :cond_2

    .line 192
    iget-object v0, p0, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->targets:[Lcom/sleepycat/je/tree/Node;

    aget-object v0, v0, v1

    return-object v0

    .line 194
    :cond_2
    const/4 v1, 0x3

    aget-short v0, v0, v1

    if-ne v0, p1, :cond_3

    .line 195
    iget-object v0, p0, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->targets:[Lcom/sleepycat/je/tree/Node;

    aget-object v0, v0, v1

    return-object v0

    .line 197
    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 182
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->get(I)Lcom/sleepycat/je/tree/Node;

    move-result-object p1

    return-object p1
.end method

.method public getType()Lcom/sleepycat/je/tree/INTargetRep$Type;
    .locals 1

    .line 177
    sget-object v0, Lcom/sleepycat/je/tree/INTargetRep$Type;->SPARSE:Lcom/sleepycat/je/tree/INTargetRep$Type;

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/Object;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->getType()Lcom/sleepycat/je/tree/INTargetRep$Type;

    move-result-object v0

    return-object v0
.end method

.method public resize(I)Lcom/sleepycat/je/tree/INTargetRep$Sparse;
    .locals 0
    .param p1, "capacity"    # I

    .line 172
    return-object p0
.end method

.method public bridge synthetic resize(I)Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->resize(I)Lcom/sleepycat/je/tree/INTargetRep$Sparse;

    move-result-object p1

    return-object p1
.end method

.method public set(ILcom/sleepycat/je/tree/Node;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;
    .locals 5
    .param p1, "j"    # I
    .param p2, "node"    # Lcom/sleepycat/je/tree/Node;
    .param p3, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 203
    if-ltz p1, :cond_7

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_7

    .line 205
    const/4 v0, -0x1

    .line 206
    .local v0, "slot":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->targets:[Lcom/sleepycat/je/tree/Node;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 208
    iget-object v3, p0, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->idxs:[S

    aget-short v3, v3, v1

    if-ne v3, p1, :cond_0

    .line 209
    aput-object p2, v2, v1

    .line 210
    return-object p0

    .line 213
    :cond_0
    if-gez v0, :cond_1

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 214
    move v0, v1

    .line 206
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    :cond_2
    if-nez p2, :cond_3

    .line 219
    return-object p0

    .line 223
    :cond_3
    if-ltz v0, :cond_4

    .line 224
    aput-object p2, v2, v0

    .line 225
    iget-object v1, p0, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->idxs:[S

    int-to-short v2, p1

    aput-short v2, v1, v0

    .line 226
    return-object p0

    .line 230
    :cond_4
    new-instance v1, Lcom/sleepycat/je/tree/INTargetRep$Default;

    invoke-virtual {p3}, Lcom/sleepycat/je/tree/IN;->getMaxEntries()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/tree/INTargetRep$Default;-><init>(I)V

    .line 231
    .local v1, "fe":Lcom/sleepycat/je/tree/INTargetRep$Default;
    invoke-virtual {p0, v1, p3}, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->noteRepChange(Lcom/sleepycat/je/tree/INArrayRep;Lcom/sleepycat/je/tree/IN;)V

    .line 233
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->targets:[Lcom/sleepycat/je/tree/Node;

    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 234
    aget-object v3, v3, v2

    if-eqz v3, :cond_5

    .line 235
    iget-object v4, p0, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->idxs:[S

    aget-short v4, v4, v2

    invoke-virtual {v1, v4, v3, p3}, Lcom/sleepycat/je/tree/INTargetRep$Default;->set(ILcom/sleepycat/je/tree/Node;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;

    .line 233
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 239
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {v1, p1, p2, p3}, Lcom/sleepycat/je/tree/INTargetRep$Default;->set(ILcom/sleepycat/je/tree/Node;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;

    move-result-object v2

    return-object v2

    .line 203
    .end local v0    # "slot":I
    .end local v1    # "fe":Lcom/sleepycat/je/tree/INTargetRep$Default;
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .locals 0

    .line 146
    check-cast p2, Lcom/sleepycat/je/tree/Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/INTargetRep$Sparse;->set(ILcom/sleepycat/je/tree/Node;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INTargetRep;

    move-result-object p1

    return-object p1
.end method

.method public updateCacheStats(ZLcom/sleepycat/je/evictor/Evictor;)V
    .locals 1
    .param p1, "increment"    # Z
    .param p2, "evictor"    # Lcom/sleepycat/je/evictor/Evictor;

    .line 292
    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {p2}, Lcom/sleepycat/je/evictor/Evictor;->getNINSparseTarget()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/je/evictor/Evictor;->getNINSparseTarget()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 297
    :goto_0
    return-void
.end method
