.class abstract Ljavassist/bytecode/CodeIterator$Switcher;
.super Ljavassist/bytecode/CodeIterator$Branch;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Switcher"
.end annotation


# instance fields
.field defaultByte:I

.field gap:I

.field offsets:[I

.field pointers:Ljavassist/bytecode/CodeIterator$Pointers;


# direct methods
.method constructor <init>(II[ILjavassist/bytecode/CodeIterator$Pointers;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "defaultByte"    # I
    .param p3, "offsets"    # [I
    .param p4, "ptrs"    # Ljavassist/bytecode/CodeIterator$Pointers;

    .line 1516
    invoke-direct {p0, p1}, Ljavassist/bytecode/CodeIterator$Branch;-><init>(I)V

    .line 1517
    and-int/lit8 v0, p1, 0x3

    rsub-int/lit8 v0, v0, 0x3

    iput v0, p0, Ljavassist/bytecode/CodeIterator$Switcher;->gap:I

    .line 1518
    iput p2, p0, Ljavassist/bytecode/CodeIterator$Switcher;->defaultByte:I

    .line 1519
    iput-object p3, p0, Ljavassist/bytecode/CodeIterator$Switcher;->offsets:[I

    .line 1520
    iput-object p4, p0, Ljavassist/bytecode/CodeIterator$Switcher;->pointers:Ljavassist/bytecode/CodeIterator$Pointers;

    .line 1521
    return-void
.end method


# virtual methods
.method adjustOffsets(II)V
    .locals 3
    .param p1, "size"    # I
    .param p2, "nops"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1585
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Switcher;->pointers:Ljavassist/bytecode/CodeIterator$Pointers;

    iget v1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->pos:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljavassist/bytecode/CodeIterator$Pointers;->shiftForSwitch(II)V

    .line 1586
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Switcher;->defaultByte:I

    if-ne v0, p1, :cond_0

    .line 1587
    sub-int/2addr v0, p2

    iput v0, p0, Ljavassist/bytecode/CodeIterator$Switcher;->defaultByte:I

    .line 1589
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->offsets:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1590
    aget v2, v1, v0

    if-ne v2, p1, :cond_1

    .line 1591
    sub-int/2addr v2, p2

    aput v2, v1, v0

    .line 1589
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1592
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method deltaSize()I
    .locals 2

    .line 1548
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Switcher;->gap:I

    iget v1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->orgPos:I

    and-int/lit8 v1, v1, 0x3

    rsub-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    return v0
.end method

.method gapChanged()I
    .locals 2

    .line 1536
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Switcher;->pos:I

    and-int/lit8 v0, v0, 0x3

    rsub-int/lit8 v0, v0, 0x3

    .line 1537
    .local v0, "newGap":I
    iget v1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->gap:I

    if-le v0, v1, :cond_0

    .line 1538
    sub-int v1, v0, v1

    .line 1539
    .local v1, "diff":I
    iput v0, p0, Ljavassist/bytecode/CodeIterator$Switcher;->gap:I

    .line 1540
    return v1

    .line 1543
    .end local v1    # "diff":I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method shift(IIZ)V
    .locals 5
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "exclusive"    # Z

    .line 1525
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Switcher;->pos:I

    .line 1526
    .local v0, "p":I
    iget v1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->defaultByte:I

    invoke-static {v0, v1, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Switcher;->shiftOffset(IIIIZ)I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->defaultByte:I

    .line 1527
    iget-object v1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->offsets:[I

    array-length v1, v1

    .line 1528
    .local v1, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1529
    iget-object v3, p0, Ljavassist/bytecode/CodeIterator$Switcher;->offsets:[I

    aget v4, v3, v2

    invoke-static {v0, v4, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Switcher;->shiftOffset(IIIIZ)I

    move-result v4

    aput v4, v3, v2

    .line 1528
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1531
    .end local v2    # "i":I
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Branch;->shift(IIZ)V

    .line 1532
    return-void
.end method

.method abstract tableSize()I
.end method

.method write(I[BI[B)I
    .locals 6
    .param p1, "src"    # I
    .param p2, "code"    # [B
    .param p3, "dest"    # I
    .param p4, "newcode"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1553
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Switcher;->pos:I

    and-int/lit8 v0, v0, 0x3

    rsub-int/lit8 v0, v0, 0x3

    .line 1554
    .local v0, "padding":I
    iget v1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->gap:I

    sub-int/2addr v1, v0

    .line 1555
    .local v1, "nops":I
    iget v2, p0, Ljavassist/bytecode/CodeIterator$Switcher;->orgPos:I

    and-int/lit8 v2, v2, 0x3

    rsub-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator$Switcher;->tableSize()I

    move-result v3

    add-int/2addr v2, v3

    .line 1556
    .local v2, "bytecodeSize":I
    if-lez v1, :cond_0

    .line 1557
    invoke-virtual {p0, v2, v1}, Ljavassist/bytecode/CodeIterator$Switcher;->adjustOffsets(II)V

    .line 1559
    :cond_0
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "dest":I
    .local v3, "dest":I
    aget-byte v4, p2, p1

    aput-byte v4, p4, p3

    .line 1560
    :goto_0
    add-int/lit8 p3, v0, -0x1

    .end local v0    # "padding":I
    .local p3, "padding":I
    const/4 v4, 0x0

    if-lez v0, :cond_1

    .line 1561
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "dest":I
    .local v0, "dest":I
    aput-byte v4, p4, v3

    move v3, v0

    move v0, p3

    goto :goto_0

    .line 1563
    .end local v0    # "dest":I
    .restart local v3    # "dest":I
    :cond_1
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Switcher;->defaultByte:I

    invoke-static {v0, p4, v3}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 1564
    add-int/lit8 v0, v3, 0x4

    invoke-virtual {p0, v0, p4}, Ljavassist/bytecode/CodeIterator$Switcher;->write2(I[B)I

    move-result v0

    .line 1565
    .local v0, "size":I
    add-int/lit8 v5, v0, 0x4

    add-int/2addr v3, v5

    .line 1566
    :goto_1
    add-int/lit8 v5, v1, -0x1

    .end local v1    # "nops":I
    .local v5, "nops":I
    if-lez v1, :cond_2

    .line 1567
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "dest":I
    .local v1, "dest":I
    aput-byte v4, p4, v3

    move v3, v1

    move v1, v5

    goto :goto_1

    .line 1569
    .end local v1    # "dest":I
    .restart local v3    # "dest":I
    :cond_2
    iget v1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->orgPos:I

    and-int/lit8 v1, v1, 0x3

    rsub-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    return v1
.end method

.method abstract write2(I[B)I
.end method
