.class public Lcom/hivemq/client/internal/util/collections/IntIndex;
.super Ljava/lang/Object;
.source "IntIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/collections/IntIndex$Node;,
        Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MAX_CAPACITY:I = 0x40000000


# instance fields
.field private nodeCount:I

.field private nodeThreshold:I

.field private size:I

.field private final spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/IntIndex$Spec<",
            "TE;>;"
        }
    .end annotation
.end field

.field private table:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/IntIndex$Spec<",
            "TE;>;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex;, "Lcom/hivemq/client/internal/util/collections/IntIndex<TE;>;"
    .local p1, "spec":Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;, "Lcom/hivemq/client/internal/util/collections/IntIndex$Spec<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    .line 76
    iget v0, p1, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->minCapacity:I

    invoke-static {v0}, Lcom/hivemq/client/internal/util/Pow2Util;->roundToPowerOf2Bits(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 77
    .local v0, "minCapacityPow2":I
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->table:[Ljava/lang/Object;

    .line 78
    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->calcThresholds(I)V

    .line 79
    return-void
.end method

.method private added()V
    .locals 1

    .line 272
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex;, "Lcom/hivemq/client/internal/util/collections/IntIndex<TE;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->size:I

    .line 273
    return-void
.end method

.method private addedNode()V
    .locals 18

    .line 276
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex;, "Lcom/hivemq/client/internal/util/collections/IntIndex<TE;>;"
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hivemq/client/internal/util/collections/IntIndex;->nodeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hivemq/client/internal/util/collections/IntIndex;->nodeCount:I

    iget v2, v0, Lcom/hivemq/client/internal/util/collections/IntIndex;->nodeThreshold:I

    if-le v1, v2, :cond_d

    iget-object v1, v0, Lcom/hivemq/client/internal/util/collections/IntIndex;->table:[Ljava/lang/Object;

    array-length v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_d

    .line 277
    iget-object v1, v0, Lcom/hivemq/client/internal/util/collections/IntIndex;->table:[Ljava/lang/Object;

    .line 278
    .local v1, "oldTable":[Ljava/lang/Object;
    array-length v2, v1

    .line 279
    .local v2, "oldCapacity":I
    shl-int/lit8 v3, v2, 0x1

    .line 280
    .local v3, "newCapacity":I
    add-int/lit8 v4, v3, -0x1

    .line 281
    .local v4, "newMask":I
    new-array v5, v3, [Ljava/lang/Object;

    .line 282
    .local v5, "newTable":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 284
    .local v6, "newNodeCount":I
    const/4 v7, 0x0

    .local v7, "oldIndex":I
    :goto_0
    if-ge v7, v2, :cond_c

    .line 285
    aget-object v8, v1, v7

    .line 286
    .local v8, "o":Ljava/lang/Object;
    if-eqz v8, :cond_b

    .line 287
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    if-ne v9, v10, :cond_a

    .line 288
    move-object v9, v8

    check-cast v9, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    .line 289
    .local v9, "node":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    const/4 v10, 0x0

    .local v10, "low":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    const/4 v11, 0x0

    .line 290
    .local v11, "prevLow":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    const/4 v12, 0x0

    .local v12, "high":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    const/4 v13, 0x0

    .line 291
    .local v13, "prevHigh":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    add-int v14, v7, v2

    .line 293
    .local v14, "highIndex":I
    :goto_1
    iget v15, v9, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->key:I

    and-int/2addr v15, v4

    if-ne v15, v7, :cond_1

    .line 294
    if-nez v10, :cond_0

    .line 295
    move-object v10, v9

    .line 296
    aput-object v9, v5, v7

    goto :goto_2

    .line 298
    :cond_0
    move-object v11, v10

    .line 299
    move-object v10, v9

    .line 300
    iput-object v10, v11, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    goto :goto_2

    .line 303
    :cond_1
    if-nez v12, :cond_2

    .line 304
    move-object v12, v9

    .line 305
    aput-object v9, v5, v14

    goto :goto_2

    .line 307
    :cond_2
    move-object v13, v12

    .line 308
    move-object v12, v9

    .line 309
    iput-object v12, v13, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 312
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 313
    iget-object v15, v9, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 314
    .local v15, "next":Ljava/lang/Object;
    move-object/from16 v16, v1

    .end local v1    # "oldTable":[Ljava/lang/Object;
    .local v16, "oldTable":[Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move/from16 v17, v2

    .end local v2    # "oldCapacity":I
    .local v17, "oldCapacity":I
    const-class v2, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    if-ne v1, v2, :cond_3

    .line 315
    move-object v9, v15

    check-cast v9, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    .line 349
    .end local v15    # "next":Ljava/lang/Object;
    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_1

    .line 317
    .restart local v15    # "next":Ljava/lang/Object;
    :cond_3
    invoke-direct {v0, v15}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 318
    .local v1, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, v0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    iget-object v2, v2, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->keyFunction:Ljava/util/function/ToIntFunction;

    invoke-interface {v2, v1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    and-int/2addr v2, v4

    if-ne v2, v7, :cond_6

    .line 319
    if-nez v10, :cond_4

    .line 320
    aput-object v1, v5, v7

    goto :goto_3

    .line 322
    :cond_4
    iput-object v1, v10, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 324
    :goto_3
    if-eqz v12, :cond_9

    .line 325
    if-nez v13, :cond_5

    .line 326
    iget-object v2, v12, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->value:Ljava/lang/Object;

    aput-object v2, v5, v14

    goto :goto_4

    .line 328
    :cond_5
    iget-object v2, v12, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->value:Ljava/lang/Object;

    iput-object v2, v13, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 330
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 333
    :cond_6
    if-nez v12, :cond_7

    .line 334
    aput-object v1, v5, v14

    goto :goto_5

    .line 336
    :cond_7
    iput-object v1, v12, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 338
    :goto_5
    if-eqz v10, :cond_9

    .line 339
    if-nez v11, :cond_8

    .line 340
    iget-object v2, v10, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->value:Ljava/lang/Object;

    aput-object v2, v5, v7

    goto :goto_6

    .line 342
    :cond_8
    iget-object v2, v10, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->value:Ljava/lang/Object;

    iput-object v2, v11, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 344
    :goto_6
    add-int/lit8 v6, v6, -0x1

    .line 350
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v9    # "node":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    .end local v10    # "low":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    .end local v11    # "prevLow":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    .end local v12    # "high":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    .end local v13    # "prevHigh":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    .end local v14    # "highIndex":I
    .end local v15    # "next":Ljava/lang/Object;
    :cond_9
    :goto_7
    goto :goto_8

    .line 351
    .end local v16    # "oldTable":[Ljava/lang/Object;
    .end local v17    # "oldCapacity":I
    .local v1, "oldTable":[Ljava/lang/Object;
    .restart local v2    # "oldCapacity":I
    :cond_a
    move-object/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "oldTable":[Ljava/lang/Object;
    .end local v2    # "oldCapacity":I
    .restart local v16    # "oldTable":[Ljava/lang/Object;
    .restart local v17    # "oldCapacity":I
    iget-object v1, v0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    iget-object v1, v1, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->keyFunction:Ljava/util/function/ToIntFunction;

    invoke-direct {v0, v8}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    .line 352
    .local v1, "key":I
    and-int v2, v1, v4

    .line 353
    .local v2, "newIndex":I
    aput-object v8, v5, v2

    goto :goto_8

    .line 286
    .end local v16    # "oldTable":[Ljava/lang/Object;
    .end local v17    # "oldCapacity":I
    .local v1, "oldTable":[Ljava/lang/Object;
    .local v2, "oldCapacity":I
    :cond_b
    move-object/from16 v16, v1

    move/from16 v17, v2

    .line 284
    .end local v1    # "oldTable":[Ljava/lang/Object;
    .end local v2    # "oldCapacity":I
    .end local v8    # "o":Ljava/lang/Object;
    .restart local v16    # "oldTable":[Ljava/lang/Object;
    .restart local v17    # "oldCapacity":I
    :goto_8
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_0

    .end local v16    # "oldTable":[Ljava/lang/Object;
    .end local v17    # "oldCapacity":I
    .restart local v1    # "oldTable":[Ljava/lang/Object;
    .restart local v2    # "oldCapacity":I
    :cond_c
    move-object/from16 v16, v1

    move/from16 v17, v2

    .line 358
    .end local v1    # "oldTable":[Ljava/lang/Object;
    .end local v2    # "oldCapacity":I
    .end local v7    # "oldIndex":I
    .restart local v16    # "oldTable":[Ljava/lang/Object;
    .restart local v17    # "oldCapacity":I
    iput-object v5, v0, Lcom/hivemq/client/internal/util/collections/IntIndex;->table:[Ljava/lang/Object;

    .line 359
    iput v6, v0, Lcom/hivemq/client/internal/util/collections/IntIndex;->nodeCount:I

    .line 360
    invoke-direct {v0, v3}, Lcom/hivemq/client/internal/util/collections/IntIndex;->calcThresholds(I)V

    .line 362
    .end local v3    # "newCapacity":I
    .end local v4    # "newMask":I
    .end local v5    # "newTable":[Ljava/lang/Object;
    .end local v6    # "newNodeCount":I
    .end local v16    # "oldTable":[Ljava/lang/Object;
    .end local v17    # "oldCapacity":I
    :cond_d
    return-void
.end method

.method private calcThresholds(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 411
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex;, "Lcom/hivemq/client/internal/util/collections/IntIndex<TE;>;"
    int-to-float v0, p1

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    iget v1, v1, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->nodeThresholdFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->nodeThreshold:I

    .line 412
    return-void
.end method

.method private cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 416
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex;, "Lcom/hivemq/client/internal/util/collections/IntIndex<TE;>;"
    return-object p1
.end method

.method private put(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 10
    .param p2, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)TE;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex;, "Lcom/hivemq/client/internal/util/collections/IntIndex<TE;>;"
    .local p1, "entry":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->table:[Ljava/lang/Object;

    .line 95
    .local v0, "table":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    iget-object v1, v1, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->keyFunction:Ljava/util/function/ToIntFunction;

    invoke-interface {v1, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    .line 96
    .local v1, "key":I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v1

    .line 97
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 98
    .local v3, "o":Ljava/lang/Object;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 99
    aput-object p1, v0, v2

    .line 100
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->added()V

    .line 101
    return-object v4

    .line 103
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    if-ne v5, v6, :cond_6

    .line 104
    move-object v5, v3

    check-cast v5, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    .line 106
    .local v5, "node":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    :goto_0
    iget v6, v5, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->key:I

    if-ne v6, v1, :cond_2

    .line 107
    iget-object v4, v5, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->value:Ljava/lang/Object;

    .line 108
    .local v4, "nodeValue":Ljava/lang/Object;
    if-eqz p2, :cond_1

    .line 109
    iput-object p1, v5, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->value:Ljava/lang/Object;

    .line 111
    :cond_1
    invoke-direct {p0, v4}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 113
    .end local v4    # "nodeValue":Ljava/lang/Object;
    :cond_2
    iget-object v6, v5, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 114
    .local v6, "next":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    if-ne v7, v8, :cond_3

    .line 115
    move-object v5, v6

    check-cast v5, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    .line 130
    .end local v6    # "next":Ljava/lang/Object;
    goto :goto_0

    .line 117
    .restart local v6    # "next":Ljava/lang/Object;
    :cond_3
    invoke-direct {p0, v6}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 118
    .local v7, "e":Ljava/lang/Object;, "TE;"
    iget-object v8, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    iget-object v8, v8, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->keyFunction:Ljava/util/function/ToIntFunction;

    invoke-interface {v8, v7}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v8

    .line 119
    .local v8, "nextKey":I
    if-ne v8, v1, :cond_5

    .line 120
    if-eqz p2, :cond_4

    .line 121
    iput-object p1, v5, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 123
    :cond_4
    return-object v7

    .line 125
    :cond_5
    new-instance v9, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    invoke-direct {v9, v8, v6, p1}, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v9, v5, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 126
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->added()V

    .line 127
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->addedNode()V

    .line 128
    return-object v4

    .line 132
    .end local v5    # "node":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    .end local v6    # "next":Ljava/lang/Object;
    .end local v7    # "e":Ljava/lang/Object;, "TE;"
    .end local v8    # "nextKey":I
    :cond_6
    invoke-direct {p0, v3}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 133
    .local v5, "e":Ljava/lang/Object;, "TE;"
    iget-object v6, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    iget-object v6, v6, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->keyFunction:Ljava/util/function/ToIntFunction;

    invoke-interface {v6, v5}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v6

    .line 134
    .local v6, "oKey":I
    if-ne v6, v1, :cond_8

    .line 135
    if-eqz p2, :cond_7

    .line 136
    aput-object p1, v0, v2

    .line 138
    :cond_7
    return-object v5

    .line 140
    :cond_8
    new-instance v7, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    invoke-direct {v7, v6, v3, p1}, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v2

    .line 141
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->added()V

    .line 142
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->addedNode()V

    .line 143
    return-object v4
.end method

.method private removed()V
    .locals 14

    .line 369
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex;, "Lcom/hivemq/client/internal/util/collections/IntIndex<TE;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->size:I

    iget v1, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->nodeThreshold:I

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->table:[Ljava/lang/Object;

    array-length v0, v0

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    iget v1, v1, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->minCapacity:I

    if-le v0, v1, :cond_5

    .line 370
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->table:[Ljava/lang/Object;

    .line 371
    .local v0, "oldTable":[Ljava/lang/Object;
    array-length v1, v0

    .line 372
    .local v1, "oldCapacity":I
    shr-int/lit8 v2, v1, 0x1

    .line 373
    .local v2, "newCapacity":I
    new-array v3, v2, [Ljava/lang/Object;

    .line 374
    .local v3, "newTable":[Ljava/lang/Object;
    iget v4, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->nodeCount:I

    .line 376
    .local v4, "newNodeCount":I
    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    move v5, v2

    .local v5, "oldIndex":I
    :goto_0
    if-ge v5, v1, :cond_4

    .line 378
    aget-object v6, v0, v5

    .line 379
    .local v6, "old":Ljava/lang/Object;
    if-eqz v6, :cond_3

    .line 380
    sub-int v7, v5, v2

    .line 381
    .local v7, "newIndex":I
    aget-object v8, v3, v7

    .line 382
    .local v8, "o":Ljava/lang/Object;
    if-nez v8, :cond_0

    .line 383
    aput-object v6, v3, v7

    goto :goto_2

    .line 384
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    if-ne v9, v10, :cond_2

    .line 385
    move-object v9, v8

    check-cast v9, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    .line 388
    .local v9, "node":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    :goto_1
    iget-object v10, v9, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 389
    .local v10, "next":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    if-ne v11, v12, :cond_1

    .line 390
    move-object v9, v10

    check-cast v9, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    goto :goto_1

    .line 395
    :cond_1
    new-instance v11, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    iget-object v12, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    iget-object v12, v12, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->keyFunction:Ljava/util/function/ToIntFunction;

    invoke-direct {p0, v10}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v12

    invoke-direct {v11, v12, v10, v6}, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v11, v9, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 396
    nop

    .end local v9    # "node":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    .end local v10    # "next":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    .line 397
    goto :goto_2

    .line 398
    :cond_2
    new-instance v9, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    iget-object v10, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    iget-object v10, v10, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->keyFunction:Ljava/util/function/ToIntFunction;

    invoke-direct {p0, v8}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v10

    invoke-direct {v9, v10, v8, v6}, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v3, v7

    .line 399
    add-int/lit8 v4, v4, 0x1

    .line 377
    .end local v6    # "old":Ljava/lang/Object;
    .end local v7    # "newIndex":I
    .end local v8    # "o":Ljava/lang/Object;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 404
    .end local v5    # "oldIndex":I
    :cond_4
    iput-object v3, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->table:[Ljava/lang/Object;

    .line 405
    iput v4, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->nodeCount:I

    .line 406
    invoke-direct {p0, v2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->calcThresholds(I)V

    .line 408
    .end local v0    # "oldTable":[Ljava/lang/Object;
    .end local v1    # "oldCapacity":I
    .end local v2    # "newCapacity":I
    .end local v3    # "newTable":[Ljava/lang/Object;
    .end local v4    # "newNodeCount":I
    :cond_5
    return-void
.end method

.method private removedNode()V
    .locals 1

    .line 365
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex;, "Lcom/hivemq/client/internal/util/collections/IntIndex<TE;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->nodeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->nodeCount:I

    .line 366
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 237
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex;, "Lcom/hivemq/client/internal/util/collections/IntIndex<TE;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->size:I

    if-lez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->table:[Ljava/lang/Object;

    array-length v0, v0

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    iget v1, v1, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->minCapacity:I

    if-ne v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->table:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    iget v0, v0, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->minCapacity:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->table:[Ljava/lang/Object;

    .line 243
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->size:I

    .line 244
    iput v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->nodeCount:I

    .line 245
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    iget v0, v0, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->minCapacity:I

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->calcThresholds(I)V

    .line 247
    :cond_1
    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 250
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex;, "Lcom/hivemq/client/internal/util/collections/IntIndex<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->table:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 251
    .local v3, "o":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 252
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    if-ne v4, v5, :cond_1

    .line 253
    move-object v4, v3

    check-cast v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    .line 255
    .local v4, "node":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    :goto_1
    iget-object v5, v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 256
    iget-object v5, v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 257
    .local v5, "next":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    if-ne v6, v7, :cond_0

    .line 258
    move-object v4, v5

    check-cast v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    .line 263
    .end local v5    # "next":Ljava/lang/Object;
    goto :goto_1

    .line 260
    .restart local v5    # "next":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, v5}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 261
    nop

    .line 264
    .end local v4    # "node":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    .end local v5    # "next":Ljava/lang/Object;
    goto :goto_2

    .line 265
    :cond_1
    invoke-direct {p0, v3}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 250
    .end local v3    # "o":Ljava/lang/Object;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_3
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex;, "Lcom/hivemq/client/internal/util/collections/IntIndex<TE;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->table:[Ljava/lang/Object;

    .line 148
    .local v0, "table":[Ljava/lang/Object;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    .line 149
    .local v1, "index":I
    aget-object v2, v0, v1

    .line 150
    .local v2, "o":Ljava/lang/Object;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 151
    return-object v3

    .line 153
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    if-ne v4, v5, :cond_4

    .line 154
    move-object v4, v2

    check-cast v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    .line 156
    .local v4, "node":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    :goto_0
    iget v5, v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->key:I

    if-ne v5, p1, :cond_1

    .line 157
    iget-object v3, v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 159
    :cond_1
    iget-object v5, v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 160
    .local v5, "next":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    if-ne v6, v7, :cond_2

    .line 161
    move-object v4, v5

    check-cast v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    .line 169
    .end local v5    # "next":Ljava/lang/Object;
    goto :goto_0

    .line 163
    .restart local v5    # "next":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, v5}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 164
    .local v6, "e":Ljava/lang/Object;, "TE;"
    iget-object v7, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    iget-object v7, v7, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->keyFunction:Ljava/util/function/ToIntFunction;

    invoke-interface {v7, v6}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, p1, :cond_3

    .line 165
    return-object v6

    .line 167
    :cond_3
    return-object v3

    .line 171
    .end local v4    # "node":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    .end local v5    # "next":Ljava/lang/Object;
    .end local v6    # "e":Ljava/lang/Object;, "TE;"
    :cond_4
    invoke-direct {p0, v2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 172
    .local v4, "e":Ljava/lang/Object;, "TE;"
    iget-object v5, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    iget-object v5, v5, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->keyFunction:Ljava/util/function/ToIntFunction;

    invoke-interface {v5, v4}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p1, :cond_5

    .line 173
    return-object v4

    .line 175
    :cond_5
    return-object v3
.end method

.method public put(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex;, "Lcom/hivemq/client/internal/util/collections/IntIndex<TE;>;"
    .local p1, "entry":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex;, "Lcom/hivemq/client/internal/util/collections/IntIndex<TE;>;"
    .local p1, "entry":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex;, "Lcom/hivemq/client/internal/util/collections/IntIndex<TE;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->table:[Ljava/lang/Object;

    .line 180
    .local v0, "table":[Ljava/lang/Object;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    .line 181
    .local v1, "index":I
    aget-object v2, v0, v1

    .line 182
    .local v2, "o":Ljava/lang/Object;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 183
    return-object v3

    .line 185
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    if-ne v4, v5, :cond_6

    .line 186
    move-object v4, v2

    check-cast v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    .line 187
    .local v4, "node":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    iget v5, v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->key:I

    if-ne v5, p1, :cond_1

    .line 188
    iget-object v3, v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    aput-object v3, v0, v1

    .line 189
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->removedNode()V

    .line 190
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->removed()V

    .line 191
    iget-object v3, v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 193
    :cond_1
    iget-object v5, v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 194
    .local v5, "next":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    if-eq v6, v7, :cond_3

    .line 195
    invoke-direct {p0, v5}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 196
    .local v6, "e":Ljava/lang/Object;, "TE;"
    iget-object v7, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    iget-object v7, v7, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->keyFunction:Ljava/util/function/ToIntFunction;

    invoke-interface {v7, v6}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, p1, :cond_2

    .line 197
    iget-object v3, v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->value:Ljava/lang/Object;

    aput-object v3, v0, v1

    .line 198
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->removedNode()V

    .line 199
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->removed()V

    .line 200
    return-object v6

    .line 202
    :cond_2
    return-object v3

    .line 206
    .end local v6    # "e":Ljava/lang/Object;, "TE;"
    :cond_3
    move-object v6, v4

    .line 207
    .local v6, "prevNode":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    move-object v4, v5

    check-cast v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    .line 208
    iget v7, v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->key:I

    if-ne v7, p1, :cond_4

    .line 209
    iget-object v3, v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    iput-object v3, v6, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 210
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->removedNode()V

    .line 211
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->removed()V

    .line 212
    iget-object v3, v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 214
    :cond_4
    iget-object v5, v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 215
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;

    if-eq v7, v8, :cond_3

    .line 216
    invoke-direct {p0, v5}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 217
    .local v7, "e":Ljava/lang/Object;, "TE;"
    iget-object v8, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    iget-object v8, v8, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->keyFunction:Ljava/util/function/ToIntFunction;

    invoke-interface {v8, v7}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, p1, :cond_5

    .line 218
    iget-object v3, v4, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->value:Ljava/lang/Object;

    iput-object v3, v6, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    .line 219
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->removedNode()V

    .line 220
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->removed()V

    .line 221
    return-object v7

    .line 223
    :cond_5
    return-object v3

    .line 227
    .end local v4    # "node":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    .end local v5    # "next":Ljava/lang/Object;
    .end local v6    # "prevNode":Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
    .end local v7    # "e":Ljava/lang/Object;, "TE;"
    :cond_6
    invoke-direct {p0, v2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 228
    .local v4, "e":Ljava/lang/Object;, "TE;"
    iget-object v5, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->spec:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    iget-object v5, v5, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->keyFunction:Ljava/util/function/ToIntFunction;

    invoke-interface {v5, v4}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p1, :cond_7

    .line 229
    aput-object v3, v0, v1

    .line 230
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->removed()V

    .line 231
    return-object v4

    .line 233
    :cond_7
    return-object v3
.end method

.method public size()I
    .locals 1

    .line 82
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/IntIndex;, "Lcom/hivemq/client/internal/util/collections/IntIndex<TE;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/IntIndex;->size:I

    return v0
.end method
