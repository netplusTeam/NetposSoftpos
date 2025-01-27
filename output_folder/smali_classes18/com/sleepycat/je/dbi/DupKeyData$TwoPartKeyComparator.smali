.class public Lcom/sleepycat/je/dbi/DupKeyData$TwoPartKeyComparator;
.super Ljava/lang/Object;
.source "DupKeyData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DupKeyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwoPartKeyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final btreeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field private final duplicateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "[B>;",
            "Ljava/util/Comparator<",
            "[B>;)V"
        }
    .end annotation

    .line 239
    .local p1, "btreeComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    .local p2, "dupComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DupKeyData$TwoPartKeyComparator;->btreeComparator:Ljava/util/Comparator;

    .line 241
    iput-object p2, p0, Lcom/sleepycat/je/dbi/DupKeyData$TwoPartKeyComparator;->duplicateComparator:Ljava/util/Comparator;

    .line 242
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 233
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData$TwoPartKeyComparator;->compare([B[B)I

    move-result p1

    return p1
.end method

.method public compare([B[B)I
    .locals 18
    .param p1, "twoPartKey1"    # [B
    .param p2, "twoPartKey2"    # [B

    .line 248
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    array-length v1, v7

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    .line 249
    invoke-static {v7, v1}, Lcom/sleepycat/util/PackedInteger;->readReverseInt([BI)I

    move-result v10

    .line 251
    .local v10, "origKeySize1":I
    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    array-length v1, v7

    sub-int/2addr v1, v9

    goto :goto_0

    :cond_0
    move v1, v10

    :goto_0
    move v12, v1

    .line 255
    .local v12, "keySize1":I
    array-length v1, v8

    sub-int/2addr v1, v9

    .line 256
    invoke-static {v8, v1}, Lcom/sleepycat/util/PackedInteger;->readReverseInt([BI)I

    move-result v13

    .line 258
    .local v13, "origKeySize2":I
    if-ne v13, v11, :cond_1

    array-length v1, v8

    sub-int/2addr v1, v9

    goto :goto_1

    :cond_1
    move v1, v13

    :goto_1
    move v14, v1

    .line 264
    .local v14, "keySize2":I
    iget-object v1, v0, Lcom/sleepycat/je/dbi/DupKeyData$TwoPartKeyComparator;->btreeComparator:Ljava/util/Comparator;

    const/4 v15, 0x0

    if-nez v1, :cond_2

    .line 265
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move v3, v12

    move-object/from16 v4, p2

    move v6, v14

    invoke-static/range {v1 .. v6}, Lcom/sleepycat/je/tree/Key;->compareUnsignedBytes([BII[BII)I

    move-result v1

    move/from16 v16, v1

    .local v1, "keyCmp":I
    goto :goto_2

    .line 268
    .end local v1    # "keyCmp":I
    :cond_2
    new-array v1, v12, [B

    .line 269
    .local v1, "key1":[B
    new-array v2, v14, [B

    .line 270
    .local v2, "key2":[B
    invoke-static {v7, v15, v1, v15, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    invoke-static {v8, v15, v2, v15, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iget-object v3, v0, Lcom/sleepycat/je/dbi/DupKeyData$TwoPartKeyComparator;->btreeComparator:Ljava/util/Comparator;

    invoke-interface {v3, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    move/from16 v16, v3

    .line 275
    .end local v1    # "key1":[B
    .end local v2    # "key2":[B
    .local v16, "keyCmp":I
    :goto_2
    if-eqz v16, :cond_3

    .line 276
    return v16

    .line 279
    :cond_3
    if-eq v10, v11, :cond_6

    if-ne v13, v11, :cond_4

    goto :goto_4

    .line 287
    :cond_4
    array-length v1, v7

    sub-int/2addr v1, v9

    .line 288
    invoke-static {v7, v1}, Lcom/sleepycat/util/PackedInteger;->getReadIntLength([BI)I

    move-result v11

    .line 289
    .local v11, "keySizeLen1":I
    array-length v1, v8

    sub-int/2addr v1, v9

    .line 290
    invoke-static {v8, v1}, Lcom/sleepycat/util/PackedInteger;->getReadIntLength([BI)I

    move-result v9

    .line 292
    .local v9, "keySizeLen2":I
    array-length v1, v7

    sub-int/2addr v1, v12

    sub-int v6, v1, v11

    .line 293
    .local v6, "dataSize1":I
    array-length v1, v8

    sub-int/2addr v1, v14

    sub-int v5, v1, v9

    .line 296
    .local v5, "dataSize2":I
    iget-object v1, v0, Lcom/sleepycat/je/dbi/DupKeyData$TwoPartKeyComparator;->duplicateComparator:Ljava/util/Comparator;

    if-nez v1, :cond_5

    .line 297
    nop

    .line 298
    move-object/from16 v1, p1

    move v2, v12

    move v3, v6

    move-object/from16 v4, p2

    move v15, v5

    .end local v5    # "dataSize2":I
    .local v15, "dataSize2":I
    move v5, v14

    move/from16 v17, v9

    move v9, v6

    .end local v6    # "dataSize1":I
    .local v9, "dataSize1":I
    .local v17, "keySizeLen2":I
    move v6, v15

    invoke-static/range {v1 .. v6}, Lcom/sleepycat/je/tree/Key;->compareUnsignedBytes([BII[BII)I

    move-result v1

    move v4, v1

    move v1, v15

    .local v1, "dataCmp":I
    goto :goto_3

    .line 301
    .end local v1    # "dataCmp":I
    .end local v15    # "dataSize2":I
    .end local v17    # "keySizeLen2":I
    .restart local v5    # "dataSize2":I
    .restart local v6    # "dataSize1":I
    .local v9, "keySizeLen2":I
    :cond_5
    move v1, v5

    move/from16 v17, v9

    move v9, v6

    .end local v5    # "dataSize2":I
    .end local v6    # "dataSize1":I
    .local v1, "dataSize2":I
    .local v9, "dataSize1":I
    .restart local v17    # "keySizeLen2":I
    new-array v2, v9, [B

    .line 302
    .local v2, "data1":[B
    new-array v3, v1, [B

    .line 303
    .local v3, "data2":[B
    invoke-static {v7, v12, v2, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    invoke-static {v8, v14, v3, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    iget-object v4, v0, Lcom/sleepycat/je/dbi/DupKeyData$TwoPartKeyComparator;->duplicateComparator:Ljava/util/Comparator;

    invoke-interface {v4, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 307
    .end local v2    # "data1":[B
    .end local v3    # "data2":[B
    .local v4, "dataCmp":I
    :goto_3
    return v4

    .line 280
    .end local v1    # "dataSize2":I
    .end local v4    # "dataCmp":I
    .end local v9    # "dataSize1":I
    .end local v11    # "keySizeLen1":I
    .end local v17    # "keySizeLen2":I
    :cond_6
    :goto_4
    if-ne v10, v13, :cond_7

    .line 281
    return v15

    .line 283
    :cond_7
    if-ne v10, v11, :cond_8

    move v9, v11

    :cond_8
    return v9
.end method
