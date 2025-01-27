.class Ljavassist/bytecode/StackMap$NewRemover;
.super Ljavassist/bytecode/StackMap$SimpleCopy;
.source "StackMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NewRemover"
.end annotation


# instance fields
.field posOfNew:I


# direct methods
.method constructor <init>(Ljavassist/bytecode/StackMap;I)V
    .locals 0
    .param p1, "map"    # Ljavassist/bytecode/StackMap;
    .param p2, "where"    # I

    .line 463
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMap$SimpleCopy;-><init>(Ljavassist/bytecode/StackMap;)V

    .line 464
    iput p2, p0, Ljavassist/bytecode/StackMap$NewRemover;->posOfNew:I

    .line 465
    return-void
.end method

.method private stackTypeInfoArray(III)I
    .locals 8
    .param p1, "pos"    # I
    .param p2, "offset"    # I
    .param p3, "num"    # I

    .line 473
    move v0, p1

    .line 474
    .local v0, "p":I
    const/4 v1, 0x0

    .line 475
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x7

    if-ge v2, p3, :cond_3

    .line 476
    iget-object v5, p0, Ljavassist/bytecode/StackMap$NewRemover;->info:[B

    aget-byte v5, v5, v0

    .line 477
    .local v5, "tag":B
    if-ne v5, v4, :cond_0

    .line 478
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 479
    :cond_0
    if-ne v5, v3, :cond_2

    .line 480
    iget-object v3, p0, Ljavassist/bytecode/StackMap$NewRemover;->info:[B

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v3

    .line 481
    .local v3, "offsetOfNew":I
    iget v4, p0, Ljavassist/bytecode/StackMap$NewRemover;->posOfNew:I

    if-ne v3, v4, :cond_1

    .line 482
    add-int/lit8 v1, v1, 0x1

    .line 484
    :cond_1
    nop

    .end local v3    # "offsetOfNew":I
    add-int/lit8 v0, v0, 0x3

    .line 485
    goto :goto_1

    .line 487
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 475
    .end local v5    # "tag":B
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 490
    .end local v2    # "k":I
    :cond_3
    iget-object v2, p0, Ljavassist/bytecode/StackMap$NewRemover;->writer:Ljavassist/bytecode/StackMap$Writer;

    sub-int v5, p3, v1

    invoke-virtual {v2, v5}, Ljavassist/bytecode/StackMap$Writer;->write16bit(I)V

    .line 491
    const/4 v2, 0x0

    .restart local v2    # "k":I
    :goto_2
    if-ge v2, p3, :cond_7

    .line 492
    iget-object v5, p0, Ljavassist/bytecode/StackMap$NewRemover;->info:[B

    aget-byte v5, v5, p1

    .line 493
    .restart local v5    # "tag":B
    if-ne v5, v4, :cond_4

    .line 494
    iget-object v6, p0, Ljavassist/bytecode/StackMap$NewRemover;->info:[B

    add-int/lit8 v7, p1, 0x1

    invoke-static {v6, v7}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v6

    .line 495
    .local v6, "clazz":I
    invoke-virtual {p0, p1, v6}, Ljavassist/bytecode/StackMap$NewRemover;->objectVariable(II)V

    .line 496
    nop

    .end local v6    # "clazz":I
    add-int/lit8 p1, p1, 0x3

    .line 497
    goto :goto_3

    .line 498
    :cond_4
    if-ne v5, v3, :cond_6

    .line 499
    iget-object v6, p0, Ljavassist/bytecode/StackMap$NewRemover;->info:[B

    add-int/lit8 v7, p1, 0x1

    invoke-static {v6, v7}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v6

    .line 500
    .local v6, "offsetOfNew":I
    iget v7, p0, Ljavassist/bytecode/StackMap$NewRemover;->posOfNew:I

    if-eq v6, v7, :cond_5

    .line 501
    invoke-virtual {p0, p1, v6}, Ljavassist/bytecode/StackMap$NewRemover;->uninitialized(II)V

    .line 503
    :cond_5
    nop

    .end local v6    # "offsetOfNew":I
    add-int/lit8 p1, p1, 0x3

    .line 504
    goto :goto_3

    .line 506
    :cond_6
    invoke-virtual {p0, p1, v5}, Ljavassist/bytecode/StackMap$NewRemover;->typeInfo(IB)V

    .line 507
    add-int/lit8 p1, p1, 0x1

    .line 491
    .end local v5    # "tag":B
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 511
    .end local v2    # "k":I
    :cond_7
    return p1
.end method


# virtual methods
.method public stack(III)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "offset"    # I
    .param p3, "num"    # I

    .line 469
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/StackMap$NewRemover;->stackTypeInfoArray(III)I

    move-result v0

    return v0
.end method
