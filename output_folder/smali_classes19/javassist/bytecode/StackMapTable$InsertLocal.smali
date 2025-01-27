.class Ljavassist/bytecode/StackMapTable$InsertLocal;
.super Ljavassist/bytecode/StackMapTable$SimpleCopy;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InsertLocal"
.end annotation


# instance fields
.field private varData:I

.field private varIndex:I

.field private varTag:I


# direct methods
.method public constructor <init>([BIII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "varIndex"    # I
    .param p3, "varTag"    # I
    .param p4, "varData"    # I

    .line 513
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$SimpleCopy;-><init>([B)V

    .line 514
    iput p2, p0, Ljavassist/bytecode/StackMapTable$InsertLocal;->varIndex:I

    .line 515
    iput p3, p0, Ljavassist/bytecode/StackMapTable$InsertLocal;->varTag:I

    .line 516
    iput p4, p0, Ljavassist/bytecode/StackMapTable$InsertLocal;->varData:I

    .line 517
    return-void
.end method


# virtual methods
.method public fullFrame(II[I[I[I[I)V
    .locals 15
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "localTags"    # [I
    .param p4, "localData"    # [I
    .param p5, "stackTags"    # [I
    .param p6, "stackData"    # [I

    .line 522
    move-object v7, p0

    move-object/from16 v8, p3

    array-length v9, v8

    .line 523
    .local v9, "len":I
    iget v0, v7, Ljavassist/bytecode/StackMapTable$InsertLocal;->varIndex:I

    if-ge v9, v0, :cond_0

    .line 524
    invoke-super/range {p0 .. p6}, Ljavassist/bytecode/StackMapTable$SimpleCopy;->fullFrame(II[I[I[I[I)V

    .line 525
    return-void

    .line 528
    :cond_0
    iget v0, v7, Ljavassist/bytecode/StackMapTable$InsertLocal;->varTag:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    :goto_1
    move v10, v0

    .line 529
    .local v10, "typeSize":I
    add-int v0, v9, v10

    new-array v11, v0, [I

    .line 530
    .local v11, "localTags2":[I
    add-int v0, v9, v10

    new-array v12, v0, [I

    .line 531
    .local v12, "localData2":[I
    iget v13, v7, Ljavassist/bytecode/StackMapTable$InsertLocal;->varIndex:I

    .line 532
    .local v13, "index":I
    const/4 v0, 0x0

    .line 533
    .local v0, "j":I
    const/4 v1, 0x0

    move v14, v0

    .end local v0    # "j":I
    .local v1, "i":I
    .local v14, "j":I
    :goto_2
    if-ge v1, v9, :cond_4

    .line 534
    if-ne v14, v13, :cond_3

    .line 535
    add-int/2addr v14, v10

    .line 537
    :cond_3
    aget v0, v8, v1

    aput v0, v11, v14

    .line 538
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "j":I
    .restart local v0    # "j":I
    aget v3, p4, v1

    aput v3, v12, v14

    .line 533
    add-int/lit8 v1, v1, 0x1

    move v14, v0

    goto :goto_2

    .line 541
    .end local v0    # "j":I
    .end local v1    # "i":I
    .restart local v14    # "j":I
    :cond_4
    iget v0, v7, Ljavassist/bytecode/StackMapTable$InsertLocal;->varTag:I

    aput v0, v11, v13

    .line 542
    iget v0, v7, Ljavassist/bytecode/StackMapTable$InsertLocal;->varData:I

    aput v0, v12, v13

    .line 543
    if-le v10, v2, :cond_5

    .line 544
    add-int/lit8 v0, v13, 0x1

    const/4 v1, 0x0

    aput v1, v11, v0

    .line 545
    add-int/lit8 v0, v13, 0x1

    aput v1, v12, v0

    .line 548
    :cond_5
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-super/range {v0 .. v6}, Ljavassist/bytecode/StackMapTable$SimpleCopy;->fullFrame(II[I[I[I[I)V

    .line 549
    return-void
.end method
