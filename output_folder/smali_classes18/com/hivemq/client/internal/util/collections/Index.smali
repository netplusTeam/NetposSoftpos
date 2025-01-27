.class public Lcom/hivemq/client/internal/util/collections/Index;
.super Ljava/lang/Object;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/collections/Index$Node;,
        Lcom/hivemq/client/internal/util/collections/Index$Spec;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "K:",
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

.field private final spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/Index$Spec<",
            "TE;TK;>;"
        }
    .end annotation
.end field

.field private table:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/util/collections/Index$Spec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/Index$Spec<",
            "TE;TK;>;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index;, "Lcom/hivemq/client/internal/util/collections/Index<TE;TK;>;"
    .local p1, "spec":Lcom/hivemq/client/internal/util/collections/Index$Spec;, "Lcom/hivemq/client/internal/util/collections/Index$Spec<TE;TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    .line 77
    iget v0, p1, Lcom/hivemq/client/internal/util/collections/Index$Spec;->minCapacity:I

    invoke-static {v0}, Lcom/hivemq/client/internal/util/Pow2Util;->roundToPowerOf2Bits(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 78
    .local v0, "minCapacityPow2":I
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    .line 79
    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/util/collections/Index;->calcThresholds(I)V

    .line 80
    return-void
.end method

.method private added()V
    .locals 1

    .line 289
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index;, "Lcom/hivemq/client/internal/util/collections/Index<TE;TK;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->size:I

    .line 290
    return-void
.end method

.method private addedNode()V
    .locals 18

    .line 293
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index;, "Lcom/hivemq/client/internal/util/collections/Index<TE;TK;>;"
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hivemq/client/internal/util/collections/Index;->nodeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hivemq/client/internal/util/collections/Index;->nodeCount:I

    iget v2, v0, Lcom/hivemq/client/internal/util/collections/Index;->nodeThreshold:I

    if-le v1, v2, :cond_d

    iget-object v1, v0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    array-length v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_d

    .line 294
    iget-object v1, v0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    .line 295
    .local v1, "oldTable":[Ljava/lang/Object;
    array-length v2, v1

    .line 296
    .local v2, "oldCapacity":I
    shl-int/lit8 v3, v2, 0x1

    .line 297
    .local v3, "newCapacity":I
    add-int/lit8 v4, v3, -0x1

    .line 298
    .local v4, "newMask":I
    new-array v5, v3, [Ljava/lang/Object;

    .line 299
    .local v5, "newTable":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 301
    .local v6, "newNodeCount":I
    const/4 v7, 0x0

    .local v7, "oldIndex":I
    :goto_0
    if-ge v7, v2, :cond_c

    .line 302
    aget-object v8, v1, v7

    .line 303
    .local v8, "o":Ljava/lang/Object;
    if-eqz v8, :cond_b

    .line 304
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v9, v10, :cond_a

    .line 305
    move-object v9, v8

    check-cast v9, Lcom/hivemq/client/internal/util/collections/Index$Node;

    .line 306
    .local v9, "node":Lcom/hivemq/client/internal/util/collections/Index$Node;
    const/4 v10, 0x0

    .local v10, "low":Lcom/hivemq/client/internal/util/collections/Index$Node;
    const/4 v11, 0x0

    .line 307
    .local v11, "prevLow":Lcom/hivemq/client/internal/util/collections/Index$Node;
    const/4 v12, 0x0

    .local v12, "high":Lcom/hivemq/client/internal/util/collections/Index$Node;
    const/4 v13, 0x0

    .line 308
    .local v13, "prevHigh":Lcom/hivemq/client/internal/util/collections/Index$Node;
    add-int v14, v7, v2

    .line 310
    .local v14, "highIndex":I
    :goto_1
    iget v15, v9, Lcom/hivemq/client/internal/util/collections/Index$Node;->hash:I

    and-int/2addr v15, v4

    if-ne v15, v7, :cond_1

    .line 311
    if-nez v10, :cond_0

    .line 312
    move-object v10, v9

    .line 313
    aput-object v9, v5, v7

    goto :goto_2

    .line 315
    :cond_0
    move-object v11, v10

    .line 316
    move-object v10, v9

    .line 317
    iput-object v10, v11, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    goto :goto_2

    .line 320
    :cond_1
    if-nez v12, :cond_2

    .line 321
    move-object v12, v9

    .line 322
    aput-object v9, v5, v14

    goto :goto_2

    .line 324
    :cond_2
    move-object v13, v12

    .line 325
    move-object v12, v9

    .line 326
    iput-object v12, v13, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 329
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 330
    iget-object v15, v9, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 331
    .local v15, "next":Ljava/lang/Object;
    move-object/from16 v16, v1

    .end local v1    # "oldTable":[Ljava/lang/Object;
    .local v16, "oldTable":[Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move/from16 v17, v2

    .end local v2    # "oldCapacity":I
    .local v17, "oldCapacity":I
    const-class v2, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v1, v2, :cond_3

    .line 332
    move-object v9, v15

    check-cast v9, Lcom/hivemq/client/internal/util/collections/Index$Node;

    .line 366
    .end local v15    # "next":Ljava/lang/Object;
    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_1

    .line 334
    .restart local v15    # "next":Ljava/lang/Object;
    :cond_3
    invoke-direct {v0, v15}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 335
    .local v1, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, v0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v2, v2, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    and-int/2addr v2, v4

    if-ne v2, v7, :cond_6

    .line 336
    if-nez v10, :cond_4

    .line 337
    aput-object v1, v5, v7

    goto :goto_3

    .line 339
    :cond_4
    iput-object v1, v10, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 341
    :goto_3
    if-eqz v12, :cond_9

    .line 342
    if-nez v13, :cond_5

    .line 343
    iget-object v2, v12, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    aput-object v2, v5, v14

    goto :goto_4

    .line 345
    :cond_5
    iget-object v2, v12, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    iput-object v2, v13, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 347
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 350
    :cond_6
    if-nez v12, :cond_7

    .line 351
    aput-object v1, v5, v14

    goto :goto_5

    .line 353
    :cond_7
    iput-object v1, v12, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 355
    :goto_5
    if-eqz v10, :cond_9

    .line 356
    if-nez v11, :cond_8

    .line 357
    iget-object v2, v10, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    aput-object v2, v5, v7

    goto :goto_6

    .line 359
    :cond_8
    iget-object v2, v10, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    iput-object v2, v11, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 361
    :goto_6
    add-int/lit8 v6, v6, -0x1

    .line 367
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v9    # "node":Lcom/hivemq/client/internal/util/collections/Index$Node;
    .end local v10    # "low":Lcom/hivemq/client/internal/util/collections/Index$Node;
    .end local v11    # "prevLow":Lcom/hivemq/client/internal/util/collections/Index$Node;
    .end local v12    # "high":Lcom/hivemq/client/internal/util/collections/Index$Node;
    .end local v13    # "prevHigh":Lcom/hivemq/client/internal/util/collections/Index$Node;
    .end local v14    # "highIndex":I
    .end local v15    # "next":Ljava/lang/Object;
    :cond_9
    :goto_7
    goto :goto_8

    .line 368
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
    iget-object v1, v0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v1, v1, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-direct {v0, v8}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 369
    .local v1, "hash":I
    and-int v2, v1, v4

    .line 370
    .local v2, "newIndex":I
    aput-object v8, v5, v2

    goto :goto_8

    .line 303
    .end local v16    # "oldTable":[Ljava/lang/Object;
    .end local v17    # "oldCapacity":I
    .local v1, "oldTable":[Ljava/lang/Object;
    .local v2, "oldCapacity":I
    :cond_b
    move-object/from16 v16, v1

    move/from16 v17, v2

    .line 301
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

    .line 375
    .end local v1    # "oldTable":[Ljava/lang/Object;
    .end local v2    # "oldCapacity":I
    .end local v7    # "oldIndex":I
    .restart local v16    # "oldTable":[Ljava/lang/Object;
    .restart local v17    # "oldCapacity":I
    iput-object v5, v0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    .line 376
    iput v6, v0, Lcom/hivemq/client/internal/util/collections/Index;->nodeCount:I

    .line 377
    invoke-direct {v0, v3}, Lcom/hivemq/client/internal/util/collections/Index;->calcThresholds(I)V

    .line 379
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

    .line 428
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index;, "Lcom/hivemq/client/internal/util/collections/Index<TE;TK;>;"
    int-to-float v0, p1

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget v1, v1, Lcom/hivemq/client/internal/util/collections/Index$Spec;->nodeThresholdFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->nodeThreshold:I

    .line 429
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

    .line 433
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index;, "Lcom/hivemq/client/internal/util/collections/Index<TE;TK;>;"
    return-object p1
.end method

.method private put(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 12
    .param p2, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)TE;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index;, "Lcom/hivemq/client/internal/util/collections/Index<TE;TK;>;"
    .local p1, "entry":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    .line 96
    .local v0, "table":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v1, v1, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 98
    .local v2, "hash":I
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v2

    .line 99
    .local v3, "index":I
    aget-object v4, v0, v3

    .line 100
    .local v4, "o":Ljava/lang/Object;
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 101
    aput-object p1, v0, v3

    .line 102
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->added()V

    .line 103
    return-object v5

    .line 105
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v6, v7, :cond_6

    .line 106
    move-object v6, v4

    check-cast v6, Lcom/hivemq/client/internal/util/collections/Index$Node;

    .line 108
    .local v6, "node":Lcom/hivemq/client/internal/util/collections/Index$Node;
    :goto_0
    iget v7, v6, Lcom/hivemq/client/internal/util/collections/Index$Node;->hash:I

    if-ne v7, v2, :cond_2

    iget-object v7, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v7, v7, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    iget-object v8, v6, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v8}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 109
    iget-object v5, v6, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    .line 110
    .local v5, "nodeValue":Ljava/lang/Object;
    if-eqz p2, :cond_1

    .line 111
    iput-object p1, v6, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    .line 113
    :cond_1
    invoke-direct {p0, v5}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    return-object v7

    .line 115
    .end local v5    # "nodeValue":Ljava/lang/Object;
    :cond_2
    iget-object v7, v6, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 116
    .local v7, "next":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v8, v9, :cond_3

    .line 117
    move-object v6, v7

    check-cast v6, Lcom/hivemq/client/internal/util/collections/Index$Node;

    .line 132
    .end local v7    # "next":Ljava/lang/Object;
    goto :goto_0

    .line 119
    .restart local v7    # "next":Ljava/lang/Object;
    :cond_3
    invoke-direct {p0, v7}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 120
    .local v8, "e":Ljava/lang/Object;, "TE;"
    iget-object v9, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v9, v9, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v9, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 121
    .local v9, "nextKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 122
    if-eqz p2, :cond_4

    .line 123
    iput-object p1, v6, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 125
    :cond_4
    return-object v8

    .line 127
    :cond_5
    new-instance v10, Lcom/hivemq/client/internal/util/collections/Index$Node;

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-direct {v10, v11, v7, p1}, Lcom/hivemq/client/internal/util/collections/Index$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v10, v6, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 128
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->added()V

    .line 129
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->addedNode()V

    .line 130
    return-object v5

    .line 134
    .end local v6    # "node":Lcom/hivemq/client/internal/util/collections/Index$Node;
    .end local v7    # "next":Ljava/lang/Object;
    .end local v8    # "e":Ljava/lang/Object;, "TE;"
    .end local v9    # "nextKey":Ljava/lang/Object;, "TK;"
    :cond_6
    invoke-direct {p0, v4}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 135
    .local v6, "e":Ljava/lang/Object;, "TE;"
    iget-object v7, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v7, v7, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v7, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 136
    .local v7, "oKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 137
    if-eqz p2, :cond_7

    .line 138
    aput-object p1, v0, v3

    .line 140
    :cond_7
    return-object v6

    .line 142
    :cond_8
    new-instance v8, Lcom/hivemq/client/internal/util/collections/Index$Node;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-direct {v8, v9, v4, p1}, Lcom/hivemq/client/internal/util/collections/Index$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v0, v3

    .line 143
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->added()V

    .line 144
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->addedNode()V

    .line 145
    return-object v5
.end method

.method private removed()V
    .locals 14

    .line 386
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index;, "Lcom/hivemq/client/internal/util/collections/Index<TE;TK;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->size:I

    iget v1, p0, Lcom/hivemq/client/internal/util/collections/Index;->nodeThreshold:I

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    array-length v0, v0

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget v1, v1, Lcom/hivemq/client/internal/util/collections/Index$Spec;->minCapacity:I

    if-le v0, v1, :cond_5

    .line 387
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    .line 388
    .local v0, "oldTable":[Ljava/lang/Object;
    array-length v1, v0

    .line 389
    .local v1, "oldCapacity":I
    shr-int/lit8 v2, v1, 0x1

    .line 390
    .local v2, "newCapacity":I
    new-array v3, v2, [Ljava/lang/Object;

    .line 391
    .local v3, "newTable":[Ljava/lang/Object;
    iget v4, p0, Lcom/hivemq/client/internal/util/collections/Index;->nodeCount:I

    .line 393
    .local v4, "newNodeCount":I
    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    move v5, v2

    .local v5, "oldIndex":I
    :goto_0
    if-ge v5, v1, :cond_4

    .line 395
    aget-object v6, v0, v5

    .line 396
    .local v6, "old":Ljava/lang/Object;
    if-eqz v6, :cond_3

    .line 397
    sub-int v7, v5, v2

    .line 398
    .local v7, "newIndex":I
    aget-object v8, v3, v7

    .line 399
    .local v8, "o":Ljava/lang/Object;
    if-nez v8, :cond_0

    .line 400
    aput-object v6, v3, v7

    goto :goto_2

    .line 401
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v9, v10, :cond_2

    .line 402
    move-object v9, v8

    check-cast v9, Lcom/hivemq/client/internal/util/collections/Index$Node;

    .line 405
    .local v9, "node":Lcom/hivemq/client/internal/util/collections/Index$Node;
    :goto_1
    iget-object v10, v9, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 406
    .local v10, "next":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v11, v12, :cond_1

    .line 407
    move-object v9, v10

    check-cast v9, Lcom/hivemq/client/internal/util/collections/Index$Node;

    goto :goto_1

    .line 412
    :cond_1
    new-instance v11, Lcom/hivemq/client/internal/util/collections/Index$Node;

    iget-object v12, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v12, v12, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-direct {p0, v10}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-direct {v11, v12, v10, v6}, Lcom/hivemq/client/internal/util/collections/Index$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v11, v9, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 413
    nop

    .end local v9    # "node":Lcom/hivemq/client/internal/util/collections/Index$Node;
    .end local v10    # "next":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    .line 414
    goto :goto_2

    .line 415
    :cond_2
    new-instance v9, Lcom/hivemq/client/internal/util/collections/Index$Node;

    iget-object v10, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v10, v10, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-direct {p0, v8}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-direct {v9, v10, v8, v6}, Lcom/hivemq/client/internal/util/collections/Index$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v3, v7

    .line 416
    add-int/lit8 v4, v4, 0x1

    .line 394
    .end local v6    # "old":Ljava/lang/Object;
    .end local v7    # "newIndex":I
    .end local v8    # "o":Ljava/lang/Object;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 421
    .end local v5    # "oldIndex":I
    :cond_4
    iput-object v3, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    .line 422
    iput v4, p0, Lcom/hivemq/client/internal/util/collections/Index;->nodeCount:I

    .line 423
    invoke-direct {p0, v2}, Lcom/hivemq/client/internal/util/collections/Index;->calcThresholds(I)V

    .line 425
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

    .line 382
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index;, "Lcom/hivemq/client/internal/util/collections/Index<TE;TK;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->nodeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->nodeCount:I

    .line 383
    return-void
.end method


# virtual methods
.method public any()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 254
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index;, "Lcom/hivemq/client/internal/util/collections/Index<TE;TK;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 255
    .local v3, "o":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 256
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v0, v1, :cond_0

    .line 257
    move-object v0, v3

    check-cast v0, Lcom/hivemq/client/internal/util/collections/Index$Node;

    .line 258
    .local v0, "node":Lcom/hivemq/client/internal/util/collections/Index$Node;
    iget-object v1, v0, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 260
    .end local v0    # "node":Lcom/hivemq/client/internal/util/collections/Index$Node;
    :cond_0
    invoke-direct {p0, v3}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 254
    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 2

    .line 241
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index;, "Lcom/hivemq/client/internal/util/collections/Index<TE;TK;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->size:I

    if-lez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    array-length v0, v0

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget v1, v1, Lcom/hivemq/client/internal/util/collections/Index$Spec;->minCapacity:I

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget v0, v0, Lcom/hivemq/client/internal/util/collections/Index$Spec;->minCapacity:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    .line 247
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->size:I

    .line 248
    iput v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->nodeCount:I

    .line 249
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget v0, v0, Lcom/hivemq/client/internal/util/collections/Index$Spec;->minCapacity:I

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/util/collections/Index;->calcThresholds(I)V

    .line 251
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

    .line 267
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index;, "Lcom/hivemq/client/internal/util/collections/Index<TE;TK;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 268
    .local v3, "o":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 269
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v4, v5, :cond_1

    .line 270
    move-object v4, v3

    check-cast v4, Lcom/hivemq/client/internal/util/collections/Index$Node;

    .line 272
    .local v4, "node":Lcom/hivemq/client/internal/util/collections/Index$Node;
    :goto_1
    iget-object v5, v4, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 273
    iget-object v5, v4, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 274
    .local v5, "next":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v6, v7, :cond_0

    .line 275
    move-object v4, v5

    check-cast v4, Lcom/hivemq/client/internal/util/collections/Index$Node;

    .line 280
    .end local v5    # "next":Ljava/lang/Object;
    goto :goto_1

    .line 277
    .restart local v5    # "next":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, v5}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 278
    nop

    .line 281
    .end local v4    # "node":Lcom/hivemq/client/internal/util/collections/Index$Node;
    .end local v5    # "next":Ljava/lang/Object;
    goto :goto_2

    .line 282
    :cond_1
    invoke-direct {p0, v3}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 267
    .end local v3    # "o":Ljava/lang/Object;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_3
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TE;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index;, "Lcom/hivemq/client/internal/util/collections/Index<TE;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    .line 150
    .local v0, "table":[Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 151
    .local v1, "hash":I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v1

    .line 152
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 153
    .local v3, "o":Ljava/lang/Object;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 154
    return-object v4

    .line 156
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v5, v6, :cond_4

    .line 157
    move-object v5, v3

    check-cast v5, Lcom/hivemq/client/internal/util/collections/Index$Node;

    .line 159
    .local v5, "node":Lcom/hivemq/client/internal/util/collections/Index$Node;
    :goto_0
    iget v6, v5, Lcom/hivemq/client/internal/util/collections/Index$Node;->hash:I

    if-ne v6, v1, :cond_1

    iget-object v6, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v6, v6, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    iget-object v7, v5, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 160
    iget-object v4, v5, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 162
    :cond_1
    iget-object v6, v5, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 163
    .local v6, "next":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v7, v8, :cond_2

    .line 164
    move-object v5, v6

    check-cast v5, Lcom/hivemq/client/internal/util/collections/Index$Node;

    .line 172
    .end local v6    # "next":Ljava/lang/Object;
    goto :goto_0

    .line 166
    .restart local v6    # "next":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, v6}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 167
    .local v7, "e":Ljava/lang/Object;, "TE;"
    iget-object v8, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v8, v8, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v8, v7}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 168
    return-object v7

    .line 170
    :cond_3
    return-object v4

    .line 174
    .end local v5    # "node":Lcom/hivemq/client/internal/util/collections/Index$Node;
    .end local v6    # "next":Ljava/lang/Object;
    .end local v7    # "e":Ljava/lang/Object;, "TE;"
    :cond_4
    invoke-direct {p0, v3}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 175
    .local v5, "e":Ljava/lang/Object;, "TE;"
    iget-object v6, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v6, v6, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v6, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 176
    return-object v5

    .line 178
    :cond_5
    return-object v4
.end method

.method public put(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index;, "Lcom/hivemq/client/internal/util/collections/Index<TE;TK;>;"
    .local p1, "entry":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/util/collections/Index;->put(Ljava/lang/Object;Z)Ljava/lang/Object;

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

    .line 91
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index;, "Lcom/hivemq/client/internal/util/collections/Index<TE;TK;>;"
    .local p1, "entry":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/util/collections/Index;->put(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TE;"
        }
    .end annotation

    .line 182
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index;, "Lcom/hivemq/client/internal/util/collections/Index<TE;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->table:[Ljava/lang/Object;

    .line 183
    .local v0, "table":[Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 184
    .local v1, "hash":I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v1

    .line 185
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 186
    .local v3, "o":Ljava/lang/Object;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 187
    return-object v4

    .line 189
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-ne v5, v6, :cond_6

    .line 190
    move-object v5, v3

    check-cast v5, Lcom/hivemq/client/internal/util/collections/Index$Node;

    .line 191
    .local v5, "node":Lcom/hivemq/client/internal/util/collections/Index$Node;
    iget v6, v5, Lcom/hivemq/client/internal/util/collections/Index$Node;->hash:I

    if-ne v6, v1, :cond_1

    iget-object v6, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v6, v6, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    iget-object v7, v5, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 192
    iget-object v4, v5, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    aput-object v4, v0, v2

    .line 193
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->removedNode()V

    .line 194
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->removed()V

    .line 195
    iget-object v4, v5, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 197
    :cond_1
    iget-object v6, v5, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 198
    .local v6, "next":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-eq v7, v8, :cond_3

    .line 199
    invoke-direct {p0, v6}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 200
    .local v7, "e":Ljava/lang/Object;, "TE;"
    iget-object v8, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v8, v8, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v8, v7}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 201
    iget-object v4, v5, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    aput-object v4, v0, v2

    .line 202
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->removedNode()V

    .line 203
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->removed()V

    .line 204
    return-object v7

    .line 206
    :cond_2
    return-object v4

    .line 210
    .end local v7    # "e":Ljava/lang/Object;, "TE;"
    :cond_3
    move-object v7, v5

    .line 211
    .local v7, "prevNode":Lcom/hivemq/client/internal/util/collections/Index$Node;
    move-object v5, v6

    check-cast v5, Lcom/hivemq/client/internal/util/collections/Index$Node;

    .line 212
    iget v8, v5, Lcom/hivemq/client/internal/util/collections/Index$Node;->hash:I

    if-ne v8, v1, :cond_4

    iget-object v8, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v8, v8, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    iget-object v9, v5, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v9}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 213
    iget-object v4, v5, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    iput-object v4, v7, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 214
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->removedNode()V

    .line 215
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->removed()V

    .line 216
    iget-object v4, v5, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 218
    :cond_4
    iget-object v6, v5, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 219
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lcom/hivemq/client/internal/util/collections/Index$Node;

    if-eq v8, v9, :cond_3

    .line 220
    invoke-direct {p0, v6}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 221
    .local v8, "e":Ljava/lang/Object;, "TE;"
    iget-object v9, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v9, v9, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v9, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 222
    iget-object v4, v5, Lcom/hivemq/client/internal/util/collections/Index$Node;->value:Ljava/lang/Object;

    iput-object v4, v7, Lcom/hivemq/client/internal/util/collections/Index$Node;->next:Ljava/lang/Object;

    .line 223
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->removedNode()V

    .line 224
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->removed()V

    .line 225
    return-object v8

    .line 227
    :cond_5
    return-object v4

    .line 231
    .end local v5    # "node":Lcom/hivemq/client/internal/util/collections/Index$Node;
    .end local v6    # "next":Ljava/lang/Object;
    .end local v7    # "prevNode":Lcom/hivemq/client/internal/util/collections/Index$Node;
    .end local v8    # "e":Ljava/lang/Object;, "TE;"
    :cond_6
    invoke-direct {p0, v3}, Lcom/hivemq/client/internal/util/collections/Index;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 232
    .local v5, "e":Ljava/lang/Object;, "TE;"
    iget-object v6, p0, Lcom/hivemq/client/internal/util/collections/Index;->spec:Lcom/hivemq/client/internal/util/collections/Index$Spec;

    iget-object v6, v6, Lcom/hivemq/client/internal/util/collections/Index$Spec;->keyFunction:Ljava/util/function/Function;

    invoke-interface {v6, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 233
    aput-object v4, v0, v2

    .line 234
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/Index;->removed()V

    .line 235
    return-object v5

    .line 237
    :cond_7
    return-object v4
.end method

.method public size()I
    .locals 1

    .line 83
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/Index;, "Lcom/hivemq/client/internal/util/collections/Index<TE;TK;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/Index;->size:I

    return v0
.end method
