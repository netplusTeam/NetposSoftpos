.class public Lcom/itextpdf/io/util/IntHashtable;
.super Ljava/lang/Object;
.source "IntHashtable.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/util/IntHashtable$Entry;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x66104e021076104dL


# instance fields
.field count:I

.field private loadFactor:F

.field private table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 96
    const/16 v0, 0x96

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/io/util/IntHashtable;-><init>(IF)V

    .line 97
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 108
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/util/IntHashtable;-><init>(IF)V

    .line 109
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_2

    .line 124
    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-lez v2, :cond_1

    .line 127
    if-nez p1, :cond_0

    .line 128
    const/4 p1, 0x1

    .line 130
    :cond_0
    iput p2, p0, Lcom/itextpdf/io/util/IntHashtable;->loadFactor:F

    .line 131
    new-array v0, p1, [Lcom/itextpdf/io/util/IntHashtable$Entry;

    iput-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 132
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/io/util/IntHashtable;->threshold:I

    .line 133
    return-void

    .line 125
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Illegal Load: {0}"

    invoke-static {v0, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Illegal Capacity: {0}"

    invoke-static {v0, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Lcom/itextpdf/io/util/IntHashtable;)V
    .locals 2
    .param p1, "o"    # Lcom/itextpdf/io/util/IntHashtable;

    .line 136
    iget-object v0, p1, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    array-length v0, v0

    iget v1, p1, Lcom/itextpdf/io/util/IntHashtable;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/io/util/IntHashtable;-><init>(IF)V

    .line 137
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 375
    .local v0, "tab":[Lcom/itextpdf/io/util/IntHashtable$Entry;
    array-length v1, v0

    .local v1, "index":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 376
    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 378
    .end local v1    # "index":I
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    .line 379
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 463
    :try_start_0
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/util/IntHashtable;-><init>(Lcom/itextpdf/io/util/IntHashtable;)V

    .line 464
    .local v0, "t":Lcom/itextpdf/io/util/IntHashtable;
    iget-object v1, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    array-length v1, v1

    new-array v1, v1, [Lcom/itextpdf/io/util/IntHashtable$Entry;

    iput-object v1, v0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 465
    iget-object v1, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    array-length v1, v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_1

    .line 466
    iget-object v1, v0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    iget-object v3, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 467
    invoke-virtual {v3}, Lcom/itextpdf/io/util/IntHashtable$Entry;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/util/IntHashtable$Entry;

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    aput-object v3, v1, v2

    move v1, v2

    goto :goto_0

    .line 469
    .end local v2    # "i":I
    :cond_1
    iget v1, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    iput v1, v0, Lcom/itextpdf/io/util/IntHashtable;->count:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    return-object v0

    .line 471
    .end local v0    # "t":Lcom/itextpdf/io/util/IntHashtable;
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public contains(I)Z
    .locals 4
    .param p1, "value"    # I

    .line 178
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 179
    .local v0, "tab":[Lcom/itextpdf/io/util/IntHashtable$Entry;
    array-length v1, v0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_2

    .line 180
    aget-object v1, v0, v2

    .local v1, "e":Lcom/itextpdf/io/util/IntHashtable$Entry;
    :goto_1
    if-eqz v1, :cond_1

    .line 181
    iget v3, v1, Lcom/itextpdf/io/util/IntHashtable$Entry;->value:I

    if-ne v3, p1, :cond_0

    .line 182
    const/4 v3, 0x1

    return v3

    .line 180
    :cond_0
    iget-object v1, v1, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    goto :goto_1

    :cond_1
    move v1, v2

    .end local v1    # "e":Lcom/itextpdf/io/util/IntHashtable$Entry;
    goto :goto_0

    .line 186
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public containsKey(I)Z
    .locals 4
    .param p1, "key"    # I

    .line 214
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 215
    .local v0, "tab":[Lcom/itextpdf/io/util/IntHashtable$Entry;
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    array-length v2, v0

    rem-int/2addr v1, v2

    .line 216
    .local v1, "index":I
    aget-object v2, v0, v1

    .local v2, "e":Lcom/itextpdf/io/util/IntHashtable$Entry;
    :goto_0
    if-eqz v2, :cond_1

    .line 217
    iget v3, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    if-ne v3, p1, :cond_0

    .line 218
    const/4 v3, 0x1

    return v3

    .line 216
    :cond_0
    iget-object v2, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    goto :goto_0

    .line 221
    .end local v2    # "e":Lcom/itextpdf/io/util/IntHashtable$Entry;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public containsValue(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 201
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/util/IntHashtable;->contains(I)Z

    move-result v0

    return v0
.end method

.method public get(I)I
    .locals 4
    .param p1, "key"    # I

    .line 234
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 235
    .local v0, "tab":[Lcom/itextpdf/io/util/IntHashtable$Entry;
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    array-length v2, v0

    rem-int/2addr v1, v2

    .line 236
    .local v1, "index":I
    aget-object v2, v0, v1

    .local v2, "e":Lcom/itextpdf/io/util/IntHashtable$Entry;
    :goto_0
    if-eqz v2, :cond_1

    .line 237
    iget v3, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    if-ne v3, p1, :cond_0

    .line 238
    iget v3, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->value:I

    return v3

    .line 236
    :cond_0
    iget-object v2, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    goto :goto_0

    .line 241
    .end local v2    # "e":Lcom/itextpdf/io/util/IntHashtable$Entry;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getKeys()[I
    .locals 7

    .line 433
    iget v0, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    new-array v0, v0, [I

    .line 434
    .local v0, "res":[I
    const/4 v1, 0x0

    .line 435
    .local v1, "ptr":I
    iget-object v2, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    array-length v2, v2

    .line 436
    .local v2, "index":I
    const/4 v3, 0x0

    .line 438
    .local v3, "entry":Lcom/itextpdf/io/util/IntHashtable$Entry;
    :goto_0
    if-nez v3, :cond_1

    .line 439
    :goto_1
    add-int/lit8 v4, v2, -0x1

    .end local v2    # "index":I
    .local v4, "index":I
    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    aget-object v2, v2, v4

    move-object v3, v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    move v2, v4

    .line 440
    .end local v4    # "index":I
    .restart local v2    # "index":I
    :cond_1
    if-nez v3, :cond_2

    .line 441
    nop

    .line 446
    return-object v0

    .line 442
    :cond_2
    move-object v4, v3

    .line 443
    .local v4, "e":Lcom/itextpdf/io/util/IntHashtable$Entry;
    iget-object v3, v4, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 444
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "ptr":I
    .local v5, "ptr":I
    iget v6, v4, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    aput v6, v0, v1

    .line 445
    .end local v4    # "e":Lcom/itextpdf/io/util/IntHashtable$Entry;
    move v1, v5

    goto :goto_0
.end method

.method public getOneKey()I
    .locals 4

    .line 450
    iget v0, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 451
    return v1

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    array-length v0, v0

    .line 453
    .local v0, "index":I
    const/4 v2, 0x0

    .line 454
    .local v2, "entry":Lcom/itextpdf/io/util/IntHashtable$Entry;
    :goto_0
    add-int/lit8 v3, v0, -0x1

    .end local v0    # "index":I
    .local v3, "index":I
    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    aget-object v0, v0, v3

    move-object v2, v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    .line 455
    :cond_1
    if-nez v2, :cond_2

    .line 456
    return v1

    .line 457
    :cond_2
    iget v0, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 155
    iget v0, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(II)I
    .locals 5
    .param p1, "key"    # I
    .param p2, "value"    # I

    .line 312
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 313
    .local v0, "tab":[Lcom/itextpdf/io/util/IntHashtable$Entry;
    const v1, 0x7fffffff

    and-int v2, p1, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 314
    .local v2, "index":I
    aget-object v3, v0, v2

    .local v3, "e":Lcom/itextpdf/io/util/IntHashtable$Entry;
    :goto_0
    if-eqz v3, :cond_1

    .line 315
    iget v4, v3, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    if-ne v4, p1, :cond_0

    .line 316
    iget v1, v3, Lcom/itextpdf/io/util/IntHashtable$Entry;->value:I

    .line 318
    .local v1, "old":I
    iput p2, v3, Lcom/itextpdf/io/util/IntHashtable$Entry;->value:I

    .line 319
    return v1

    .line 314
    .end local v1    # "old":I
    :cond_0
    iget-object v3, v3, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    goto :goto_0

    .line 323
    .end local v3    # "e":Lcom/itextpdf/io/util/IntHashtable$Entry;
    :cond_1
    iget v3, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    iget v4, p0, Lcom/itextpdf/io/util/IntHashtable;->threshold:I

    if-lt v3, v4, :cond_2

    .line 325
    invoke-virtual {p0}, Lcom/itextpdf/io/util/IntHashtable;->rehash()V

    .line 327
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 328
    and-int/2addr v1, p1

    array-length v3, v0

    rem-int v2, v1, v3

    .line 332
    :cond_2
    new-instance v1, Lcom/itextpdf/io/util/IntHashtable$Entry;

    aget-object v3, v0, v2

    invoke-direct {v1, p1, p2, v3}, Lcom/itextpdf/io/util/IntHashtable$Entry;-><init>(IILcom/itextpdf/io/util/IntHashtable$Entry;)V

    .line 333
    .local v1, "e":Lcom/itextpdf/io/util/IntHashtable$Entry;
    aput-object v1, v0, v2

    .line 334
    iget v3, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    .line 335
    const/4 v3, 0x0

    return v3
.end method

.method protected rehash()V
    .locals 9

    .line 274
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    array-length v0, v0

    .line 275
    .local v0, "oldCapacity":I
    iget-object v1, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 277
    .local v1, "oldMap":[Lcom/itextpdf/io/util/IntHashtable$Entry;
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 278
    .local v2, "newCapacity":I
    new-array v3, v2, [Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 280
    .local v3, "newMap":[Lcom/itextpdf/io/util/IntHashtable$Entry;
    int-to-float v4, v2

    iget v5, p0, Lcom/itextpdf/io/util/IntHashtable;->loadFactor:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/itextpdf/io/util/IntHashtable;->threshold:I

    .line 281
    iput-object v3, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 283
    move v4, v0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "i":I
    .local v5, "i":I
    if-lez v4, :cond_1

    .line 284
    aget-object v4, v1, v5

    .local v4, "old":Lcom/itextpdf/io/util/IntHashtable$Entry;
    :goto_1
    if-eqz v4, :cond_0

    .line 285
    move-object v6, v4

    .line 286
    .local v6, "e":Lcom/itextpdf/io/util/IntHashtable$Entry;
    iget-object v4, v4, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 288
    iget v7, v6, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    rem-int/2addr v7, v2

    .line 289
    .local v7, "index":I
    aget-object v8, v3, v7

    iput-object v8, v6, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 290
    aput-object v6, v3, v7

    .line 291
    .end local v6    # "e":Lcom/itextpdf/io/util/IntHashtable$Entry;
    .end local v7    # "index":I
    goto :goto_1

    .end local v4    # "old":Lcom/itextpdf/io/util/IntHashtable$Entry;
    :cond_0
    move v4, v5

    goto :goto_0

    .line 293
    .end local v5    # "i":I
    :cond_1
    return-void
.end method

.method public remove(I)I
    .locals 6
    .param p1, "key"    # I

    .line 350
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 351
    .local v0, "tab":[Lcom/itextpdf/io/util/IntHashtable$Entry;
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    array-length v2, v0

    rem-int/2addr v1, v2

    .line 354
    .local v1, "index":I
    aget-object v2, v0, v1

    .local v2, "e":Lcom/itextpdf/io/util/IntHashtable$Entry;
    const/4 v3, 0x0

    .local v3, "prev":Lcom/itextpdf/io/util/IntHashtable$Entry;
    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 355
    iget v5, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    if-ne v5, p1, :cond_1

    .line 356
    if-eqz v3, :cond_0

    .line 357
    iget-object v5, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    iput-object v5, v3, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    goto :goto_1

    .line 359
    :cond_0
    iget-object v5, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    aput-object v5, v0, v1

    .line 361
    :goto_1
    iget v5, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    .line 362
    iget v5, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->value:I

    .line 363
    .local v5, "oldValue":I
    iput v4, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->value:I

    .line 364
    return v5

    .line 354
    .end local v5    # "oldValue":I
    :cond_1
    move-object v3, v2

    iget-object v2, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    goto :goto_0

    .line 367
    :cond_2
    return v4
.end method

.method public size()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    return v0
.end method

.method public toOrderedKeys()[I
    .locals 1

    .line 427
    invoke-virtual {p0}, Lcom/itextpdf/io/util/IntHashtable;->getKeys()[I

    move-result-object v0

    .line 428
    .local v0, "res":[I
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 429
    return-object v0
.end method
