.class public Lcom/itextpdf/layout/hyphenation/TernaryTree;
.super Ljava/lang/Object;
.source "TernaryTree.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final BLOCK_SIZE:I = 0x800

.field private static final serialVersionUID:J = 0x2c1154a2f8838c40L


# instance fields
.field protected eq:[C

.field protected freenode:C

.field protected hi:[C

.field protected kv:Lcom/itextpdf/layout/hyphenation/CharVector;

.field protected length:I

.field protected lo:[C

.field protected root:C

.field protected sc:[C


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 69
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->init()V

    .line 128
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/layout/hyphenation/TernaryTree;)V
    .locals 2
    .param p1, "tt"    # Lcom/itextpdf/layout/hyphenation/TernaryTree;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iget-char v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    iput-char v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    .line 132
    iget-char v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    iput-char v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    .line 133
    iget v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    .line 134
    iget-object v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    .line 135
    iget-object v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    .line 136
    iget-object v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    .line 137
    iget-object v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    .line 138
    new-instance v0, Lcom/itextpdf/layout/hyphenation/CharVector;

    iget-object v1, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/hyphenation/CharVector;-><init>(Lcom/itextpdf/layout/hyphenation/CharVector;)V

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    .line 139
    return-void
.end method

.method private compact(Lcom/itextpdf/layout/hyphenation/CharVector;Lcom/itextpdf/layout/hyphenation/TernaryTree;C)V
    .locals 4
    .param p1, "kx"    # Lcom/itextpdf/layout/hyphenation/CharVector;
    .param p2, "map"    # Lcom/itextpdf/layout/hyphenation/TernaryTree;
    .param p3, "p"    # C

    .line 564
    if-nez p3, :cond_0

    .line 565
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    aget-char v0, v0, p3

    const v1, 0xffff

    if-ne v0, v1, :cond_2

    .line 568
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-virtual {v0}, Lcom/itextpdf/layout/hyphenation/CharVector;->getArray()[C

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v1, v1, p3

    invoke-virtual {p2, v0, v1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->find([CI)I

    move-result v0

    .line 569
    .local v0, "k":I
    if-gez v0, :cond_1

    .line 570
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-virtual {v1}, Lcom/itextpdf/layout/hyphenation/CharVector;->getArray()[C

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v2, v2, p3

    invoke-static {v1, v2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->strlen([CI)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/hyphenation/CharVector;->alloc(I)I

    move-result v0

    .line 571
    invoke-virtual {p1}, Lcom/itextpdf/layout/hyphenation/CharVector;->getArray()[C

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-virtual {v2}, Lcom/itextpdf/layout/hyphenation/CharVector;->getArray()[C

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v3, v3, p3

    invoke-static {v1, v0, v2, v3}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->strcpy([CI[CI)V

    .line 572
    invoke-virtual {p1}, Lcom/itextpdf/layout/hyphenation/CharVector;->getArray()[C

    move-result-object v1

    int-to-char v2, v0

    invoke-virtual {p2, v1, v0, v2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insert([CIC)V

    .line 574
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    int-to-char v2, v0

    aput-char v2, v1, p3

    goto :goto_0

    .line 576
    .end local v0    # "k":I
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v0, v0, p3

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->compact(Lcom/itextpdf/layout/hyphenation/CharVector;Lcom/itextpdf/layout/hyphenation/TernaryTree;C)V

    .line 577
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    aget-char v0, v0, p3

    if-eqz v0, :cond_3

    .line 578
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aget-char v0, v0, p3

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->compact(Lcom/itextpdf/layout/hyphenation/CharVector;Lcom/itextpdf/layout/hyphenation/TernaryTree;C)V

    .line 580
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    aget-char v0, v0, p3

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->compact(Lcom/itextpdf/layout/hyphenation/CharVector;Lcom/itextpdf/layout/hyphenation/TernaryTree;C)V

    .line 582
    :goto_0
    return-void
.end method

.method private insert(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)C
    .locals 2
    .param p1, "params"    # Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;

    .line 320
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insertNewBranchIfNeeded(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)Ljava/lang/Character;

    move-result-object v0

    .line 321
    .local v0, "newBranch":Ljava/lang/Character;
    if-nez v0, :cond_0

    .line 322
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insertIntoExistingBranch(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)C

    move-result v1

    return v1

    .line 324
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v1

    return v1
.end method

.method private insertIntoExistingBranch(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)C
    .locals 13
    .param p1, "params"    # Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;

    .line 232
    iget-char v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->p:C

    .line 233
    .local v0, "initialP":C
    move-object v1, p1

    .line 234
    .local v1, "paramsToInsertNext":Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;
    :goto_0
    if-eqz v1, :cond_a

    .line 235
    iget-char v2, v1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->p:C

    .line 237
    .local v2, "p":C
    if-eqz v2, :cond_9

    .line 238
    iget-object v3, v1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->key:[C

    .line 239
    .local v3, "key":[C
    iget v4, v1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->start:I

    .line 240
    .local v4, "start":I
    iget-char v5, v1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->val:C

    .line 241
    .local v5, "val":C
    invoke-static {v3, v4}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->strlen([CI)I

    move-result v6

    .line 242
    .local v6, "len":I
    const/4 v1, 0x0

    .line 244
    iget-object v7, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    aget-char v8, v7, v2

    const v9, 0xffff

    if-ne v8, v9, :cond_2

    .line 248
    iget-char v8, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    add-int/lit8 v10, v8, 0x1

    int-to-char v10, v10

    iput-char v10, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    .line 251
    .local v8, "pp":C
    iget-object v10, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v11, v10, v2

    aput-char v11, v10, v8

    .line 254
    iget-object v11, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aget-char v12, v11, v2

    aput-char v12, v11, v8

    .line 255
    const/4 v12, 0x0

    aput-char v12, v10, v2

    .line 256
    if-lez v6, :cond_1

    .line 257
    iget-object v11, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    aget-char v10, v10, v8

    invoke-virtual {v11, v10}, Lcom/itextpdf/layout/hyphenation/CharVector;->get(I)C

    move-result v10

    aput-char v10, v7, v2

    .line 258
    iget-object v7, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aput-char v8, v7, v2

    .line 259
    iget-object v7, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v10, v7, v8

    add-int/lit8 v10, v10, 0x1

    int-to-char v10, v10

    aput-char v10, v7, v8

    .line 260
    iget-object v7, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-virtual {v7, v10}, Lcom/itextpdf/layout/hyphenation/CharVector;->get(I)C

    move-result v7

    if-nez v7, :cond_0

    .line 262
    iget-object v7, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aput-char v12, v7, v8

    .line 263
    iget-object v7, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    aput-char v12, v7, v8

    .line 264
    iget-object v7, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    aput-char v12, v7, v8

    goto :goto_1

    .line 267
    :cond_0
    iget-object v7, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    aput-char v9, v7, v8

    goto :goto_1

    .line 272
    :cond_1
    aput-char v9, v7, v8

    .line 273
    iget-object v9, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    aput-char v8, v9, v2

    .line 274
    aput-char v12, v7, v2

    .line 275
    aput-char v5, v11, v2

    .line 276
    iget v7, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    .line 277
    goto/16 :goto_5

    .line 280
    .end local v8    # "pp":C
    :cond_2
    :goto_1
    aget-char v7, v3, v4

    .line 281
    .local v7, "s":C
    iget-object v8, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    aget-char v8, v8, v2

    if-ge v7, v8, :cond_4

    .line 282
    new-instance v8, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;

    iget-object v9, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v9, v9, v2

    invoke-direct {v8, v9, v3, v4, v5}, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;-><init>(C[CIC)V

    .line 283
    .local v8, "branchParams":Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;
    invoke-direct {p0, v8}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insertNewBranchIfNeeded(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)Ljava/lang/Character;

    move-result-object v9

    .line 284
    .local v9, "insertNew":Ljava/lang/Character;
    if-nez v9, :cond_3

    .line 285
    move-object v1, v8

    goto :goto_2

    .line 287
    :cond_3
    iget-object v10, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v11

    aput-char v11, v10, v2

    .line 289
    .end local v8    # "branchParams":Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;
    .end local v9    # "insertNew":Ljava/lang/Character;
    :goto_2
    goto :goto_4

    :cond_4
    if-ne v7, v8, :cond_7

    .line 290
    if-eqz v7, :cond_6

    .line 291
    new-instance v8, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;

    iget-object v9, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aget-char v9, v9, v2

    add-int/lit8 v10, v4, 0x1

    invoke-direct {v8, v9, v3, v10, v5}, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;-><init>(C[CIC)V

    .line 292
    .restart local v8    # "branchParams":Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;
    invoke-direct {p0, v8}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insertNewBranchIfNeeded(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)Ljava/lang/Character;

    move-result-object v9

    .line 293
    .restart local v9    # "insertNew":Ljava/lang/Character;
    if-nez v9, :cond_5

    .line 294
    move-object v1, v8

    goto :goto_3

    .line 296
    :cond_5
    iget-object v10, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v11

    aput-char v11, v10, v2

    .line 298
    .end local v8    # "branchParams":Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;
    .end local v9    # "insertNew":Ljava/lang/Character;
    :goto_3
    goto :goto_4

    .line 300
    :cond_6
    iget-object v8, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aput-char v5, v8, v2

    goto :goto_4

    .line 303
    :cond_7
    new-instance v8, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;

    iget-object v9, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    aget-char v9, v9, v2

    invoke-direct {v8, v9, v3, v4, v5}, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;-><init>(C[CIC)V

    .line 304
    .restart local v8    # "branchParams":Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;
    invoke-direct {p0, v8}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insertNewBranchIfNeeded(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)Ljava/lang/Character;

    move-result-object v9

    .line 305
    .restart local v9    # "insertNew":Ljava/lang/Character;
    if-nez v9, :cond_8

    .line 306
    move-object v1, v8

    goto :goto_4

    .line 308
    :cond_8
    iget-object v10, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v11

    aput-char v11, v10, v2

    .line 311
    .end local v2    # "p":C
    .end local v3    # "key":[C
    .end local v4    # "start":I
    .end local v5    # "val":C
    .end local v6    # "len":I
    .end local v7    # "s":C
    .end local v8    # "branchParams":Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;
    .end local v9    # "insertNew":Ljava/lang/Character;
    :goto_4
    goto/16 :goto_0

    .line 237
    .restart local v2    # "p":C
    :cond_9
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 312
    .end local v2    # "p":C
    :cond_a
    :goto_5
    return v0
.end method

.method private insertNewBranchIfNeeded(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)Ljava/lang/Character;
    .locals 8
    .param p1, "params"    # Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;

    .line 196
    iget-char v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->p:C

    .line 197
    .local v0, "p":C
    iget-object v1, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->key:[C

    .line 198
    .local v1, "key":[C
    iget v2, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->start:I

    .line 199
    .local v2, "start":I
    iget-char v3, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->val:C

    .line 200
    .local v3, "val":C
    invoke-static {v1, v2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->strlen([CI)I

    move-result v4

    .line 201
    .local v4, "len":I
    if-nez v0, :cond_1

    .line 205
    iget-char v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    add-int/lit8 v6, v5, 0x1

    int-to-char v6, v6

    iput-char v6, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    move v0, v5

    .line 208
    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aput-char v3, v5, v0

    .line 209
    iget v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    .line 210
    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    const/4 v6, 0x0

    aput-char v6, v5, v0

    .line 211
    if-lez v4, :cond_0

    .line 214
    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    const v6, 0xffff

    aput-char v6, v5, v0

    .line 217
    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    iget-object v6, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/hyphenation/CharVector;->alloc(I)I

    move-result v6

    int-to-char v6, v6

    aput-char v6, v5, v0

    .line 218
    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-virtual {v5}, Lcom/itextpdf/layout/hyphenation/CharVector;->getArray()[C

    move-result-object v5

    iget-object v6, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v6, v6, v0

    invoke-static {v5, v6, v1, v2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->strcpy([CI[CI)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    aput-char v6, v5, v0

    .line 221
    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aput-char v6, v5, v0

    .line 223
    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    return-object v5

    .line 225
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method

.method private redimNodeArrays(I)V
    .locals 4
    .param p1, "newsize"    # I

    .line 467
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    array-length v1, v0

    if-ge p1, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    array-length v1, v0

    .line 468
    .local v1, "len":I
    :goto_0
    new-array v2, p1, [C

    .line 469
    .local v2, "na":[C
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    iput-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    .line 471
    new-array v0, p1, [C

    .line 472
    .end local v2    # "na":[C
    .local v0, "na":[C
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    .line 474
    new-array v0, p1, [C

    .line 475
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    .line 477
    new-array v0, p1, [C

    .line 478
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    .line 480
    return-void
.end method

.method public static strcmp(Ljava/lang/String;[CI)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "a"    # [C
    .param p2, "start"    # I

    .line 355
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 356
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 357
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p2, v1

    aget-char v3, p1, v3

    sub-int/2addr v2, v3

    .line 358
    .local v2, "d":I
    if-eqz v2, :cond_0

    .line 359
    return v2

    .line 361
    :cond_0
    add-int v3, p2, v1

    aget-char v3, p1, v3

    if-nez v3, :cond_1

    .line 362
    return v2

    .line 356
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .end local v2    # "d":I
    :cond_2
    add-int v2, p2, v1

    aget-char v2, p1, v2

    if-eqz v2, :cond_3

    .line 366
    add-int v2, p2, v1

    aget-char v2, p1, v2

    neg-int v2, v2

    return v2

    .line 368
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public static strcmp([CI[CI)I
    .locals 2
    .param p0, "a"    # [C
    .param p1, "startA"    # I
    .param p2, "b"    # [C
    .param p3, "startB"    # I

    .line 337
    :goto_0
    aget-char v0, p0, p1

    aget-char v1, p2, p3

    if-ne v0, v1, :cond_1

    .line 338
    aget-char v0, p0, p1

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    return v0

    .line 337
    :cond_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 342
    :cond_1
    aget-char v0, p0, p1

    aget-char v1, p2, p3

    sub-int/2addr v0, v1

    return v0
.end method

.method public static strcpy([CI[CI)V
    .locals 2
    .param p0, "dst"    # [C
    .param p1, "di"    # I
    .param p2, "src"    # [C
    .param p3, "si"    # I

    .line 379
    :goto_0
    aget-char v0, p2, p3

    if-eqz v0, :cond_0

    .line 380
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "di":I
    .local v0, "di":I
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "si":I
    .local v1, "si":I
    aget-char p3, p2, p3

    aput-char p3, p0, p1

    move p1, v0

    move p3, v1

    goto :goto_0

    .line 382
    .end local v0    # "di":I
    .end local v1    # "si":I
    .restart local p1    # "di":I
    .restart local p3    # "si":I
    :cond_0
    const/4 v0, 0x0

    aput-char v0, p0, p1

    .line 383
    return-void
.end method

.method public static strlen([C)I
    .locals 1
    .param p0, "a"    # [C

    .line 403
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->strlen([CI)I

    move-result v0

    return v0
.end method

.method public static strlen([CI)I
    .locals 3
    .param p0, "a"    # [C
    .param p1, "start"    # I

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "len":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-char v2, p0, v1

    if-eqz v2, :cond_0

    .line 393
    add-int/lit8 v0, v0, 0x1

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    .end local v1    # "i":I
    :cond_0
    return v0
.end method


# virtual methods
.method public balance()V
    .locals 7

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "i":I
    iget v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    .line 519
    .local v1, "n":I
    new-array v2, v1, [Ljava/lang/String;

    .line 520
    .local v2, "k":[Ljava/lang/String;
    new-array v3, v1, [C

    .line 521
    .local v3, "v":[C
    new-instance v4, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;

    invoke-direct {v4, p0}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;-><init>(Lcom/itextpdf/layout/hyphenation/TernaryTree;)V

    .line 522
    .local v4, "iter":Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;
    :goto_0
    invoke-virtual {v4}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 523
    invoke-virtual {v4}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->getValue()C

    move-result v5

    aput-char v5, v3, v0

    .line 524
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .local v5, "i":I
    invoke-virtual {v4}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v0

    move v0, v5

    goto :goto_0

    .line 526
    .end local v5    # "i":I
    .restart local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->init()V

    .line 527
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v5, v1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insertBalanced([Ljava/lang/String;[CII)V

    .line 531
    return-void
.end method

.method public find(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 412
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 413
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    .line 414
    .local v1, "strkey":[C
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 415
    aput-char v2, v1, v0

    .line 417
    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->find([CI)I

    move-result v2

    return v2
.end method

.method public find([CI)I
    .locals 5
    .param p1, "key"    # [C
    .param p2, "start"    # I

    .line 428
    iget-char v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    .line 429
    .local v0, "p":C
    move v1, p2

    .line 432
    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    if-eqz v0, :cond_5

    .line 433
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    aget-char v3, v3, v0

    const v4, 0xffff

    if-ne v3, v4, :cond_1

    .line 434
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-virtual {v3}, Lcom/itextpdf/layout/hyphenation/CharVector;->getArray()[C

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v4, v4, v0

    invoke-static {p1, v1, v3, v4}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->strcmp([CI[CI)I

    move-result v3

    if-nez v3, :cond_0

    .line 435
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aget-char v2, v2, v0

    return v2

    .line 437
    :cond_0
    return v2

    .line 440
    :cond_1
    aget-char v2, p1, v1

    .line 441
    .local v2, "c":C
    sub-int v3, v2, v3

    .line 442
    .local v3, "d":I
    if-nez v3, :cond_3

    .line 443
    if-nez v2, :cond_2

    .line 444
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aget-char v4, v4, v0

    return v4

    .line 446
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 447
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aget-char v0, v4, v0

    goto :goto_0

    .line 448
    :cond_3
    if-gez v3, :cond_4

    .line 449
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v0, v4, v0

    goto :goto_0

    .line 451
    :cond_4
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    aget-char v0, v4, v0

    goto :goto_0

    .line 454
    .end local v2    # "c":C
    .end local v3    # "d":I
    :cond_5
    return v2
.end method

.method protected init()V
    .locals 2

    .line 143
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    .line 144
    const/4 v1, 0x1

    iput-char v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    .line 145
    iput v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    .line 146
    const/16 v0, 0x800

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    .line 147
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    .line 148
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    .line 149
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    .line 150
    new-instance v0, Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-direct {v0}, Lcom/itextpdf/layout/hyphenation/CharVector;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    .line 151
    return-void
.end method

.method public insert(Ljava/lang/String;C)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # C

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 169
    .local v0, "len":I
    iget-char v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    array-length v3, v2

    if-le v1, v3, :cond_0

    .line 170
    array-length v1, v2

    add-int/lit16 v1, v1, 0x800

    invoke-direct {p0, v1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->redimNodeArrays(I)V

    .line 172
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "len":I
    .local v1, "len":I
    new-array v0, v0, [C

    .line 173
    .local v0, "strkey":[C
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 174
    aput-char v2, v0, v1

    .line 175
    new-instance v3, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;

    iget-char v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    invoke-direct {v3, v4, v0, v2, p2}, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;-><init>(C[CIC)V

    invoke-direct {p0, v3}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insert(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)C

    move-result v2

    iput-char v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    .line 176
    return-void
.end method

.method public insert([CIC)V
    .locals 4
    .param p1, "key"    # [C
    .param p2, "start"    # I
    .param p3, "val"    # C

    .line 185
    invoke-static {p1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->strlen([C)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 186
    .local v0, "len":I
    iget-char v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    array-length v3, v2

    if-le v1, v3, :cond_0

    .line 187
    array-length v1, v2

    add-int/lit16 v1, v1, 0x800

    invoke-direct {p0, v1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->redimNodeArrays(I)V

    .line 189
    :cond_0
    new-instance v1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;

    iget-char v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;-><init>(C[CIC)V

    invoke-direct {p0, v1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insert(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)C

    move-result v1

    iput-char v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    .line 190
    return-void
.end method

.method protected insertBalanced([Ljava/lang/String;[CII)V
    .locals 4
    .param p1, "k"    # [Ljava/lang/String;
    .param p2, "v"    # [C
    .param p3, "offset"    # I
    .param p4, "n"    # I

    .line 499
    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    .line 500
    return-void

    .line 502
    :cond_0
    shr-int/lit8 v1, p4, 0x1

    .line 504
    .local v1, "m":I
    add-int v2, v1, p3

    aget-object v2, p1, v2

    add-int v3, v1, p3

    aget-char v3, p2, v3

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insert(Ljava/lang/String;C)V

    .line 505
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insertBalanced([Ljava/lang/String;[CII)V

    .line 507
    add-int v2, p3, v1

    add-int/2addr v2, v0

    sub-int v3, p4, v1

    sub-int/2addr v3, v0

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insertBalanced([Ljava/lang/String;[CII)V

    .line 508
    return-void
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    .line 586
    new-instance v0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;-><init>(Lcom/itextpdf/layout/hyphenation/TernaryTree;)V

    return-object v0
.end method

.method public knows(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 462
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->find(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 484
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    return v0
.end method

.method public trimToSize()V
    .locals 3

    .line 548
    invoke-virtual {p0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->balance()V

    .line 551
    iget-char v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->redimNodeArrays(I)V

    .line 554
    new-instance v0, Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-direct {v0}, Lcom/itextpdf/layout/hyphenation/CharVector;-><init>()V

    .line 555
    .local v0, "kx":Lcom/itextpdf/layout/hyphenation/CharVector;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/hyphenation/CharVector;->alloc(I)I

    .line 556
    new-instance v1, Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-direct {v1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;-><init>()V

    .line 557
    .local v1, "map":Lcom/itextpdf/layout/hyphenation/TernaryTree;
    iget-char v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->compact(Lcom/itextpdf/layout/hyphenation/CharVector;Lcom/itextpdf/layout/hyphenation/TernaryTree;C)V

    .line 558
    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    .line 559
    invoke-virtual {v0}, Lcom/itextpdf/layout/hyphenation/CharVector;->trimToSize()V

    .line 560
    return-void
.end method
