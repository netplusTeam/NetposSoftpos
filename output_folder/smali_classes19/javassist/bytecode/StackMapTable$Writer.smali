.class public Ljavassist/bytecode/StackMapTable$Writer;
.super Ljava/lang/Object;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Writer"
.end annotation


# instance fields
.field numOfEntries:I

.field output:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    .line 565
    const/4 v1, 0x0

    iput v1, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    .line 566
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 567
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 568
    return-void
.end method

.method private write16(I)V
    .locals 2
    .param p1, "value"    # I

    .line 701
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 702
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 703
    return-void
.end method

.method private writeTypeInfo(II)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "data"    # I

    .line 695
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 696
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 697
    :cond_0
    invoke-direct {p0, p2}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    .line 698
    :cond_1
    return-void
.end method


# virtual methods
.method public appendFrame(I[I[I)V
    .locals 4
    .param p1, "offsetDelta"    # I
    .param p2, "tags"    # [I
    .param p3, "data"    # [I

    .line 651
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    .line 652
    array-length v0, p2

    .line 653
    .local v0, "k":I
    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    add-int/lit16 v2, v0, 0xfb

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 654
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    .line 655
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 656
    aget v2, p2, v1

    aget v3, p3, v1

    invoke-direct {p0, v2, v3}, Ljavassist/bytecode/StackMapTable$Writer;->writeTypeInfo(II)V

    .line 655
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 657
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public chopFrame(II)V
    .locals 2
    .param p1, "offsetDelta"    # I
    .param p2, "k"    # I

    .line 632
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    .line 633
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    rsub-int v1, p2, 0xfb

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 634
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    .line 635
    return-void
.end method

.method public fullFrame(I[I[I[I[I)V
    .locals 4
    .param p1, "offsetDelta"    # I
    .param p2, "localTags"    # [I
    .param p3, "localData"    # [I
    .param p4, "stackTags"    # [I
    .param p5, "stackData"    # [I

    .line 680
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    .line 681
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 682
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    .line 683
    array-length v0, p2

    .line 684
    .local v0, "n":I
    invoke-direct {p0, v0}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    .line 685
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 686
    aget v2, p2, v1

    aget v3, p3, v1

    invoke-direct {p0, v2, v3}, Ljavassist/bytecode/StackMapTable$Writer;->writeTypeInfo(II)V

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 688
    .end local v1    # "i":I
    :cond_0
    array-length v0, p4

    .line 689
    invoke-direct {p0, v0}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    .line 690
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 691
    aget v2, p4, v1

    aget v3, p5, v1

    invoke-direct {p0, v2, v3}, Ljavassist/bytecode/StackMapTable$Writer;->writeTypeInfo(II)V

    .line 690
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 692
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public sameFrame(I)V
    .locals 2
    .param p1, "offsetDelta"    # I

    .line 594
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    .line 595
    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    .line 596
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 598
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xfb

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 599
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    .line 601
    :goto_0
    return-void
.end method

.method public sameLocals(III)V
    .locals 2
    .param p1, "offsetDelta"    # I
    .param p2, "tag"    # I
    .param p3, "data"    # I

    .line 615
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    .line 616
    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    .line 617
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v1, p1, 0x40

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 619
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xf7

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 620
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    .line 623
    :goto_0
    invoke-direct {p0, p2, p3}, Ljavassist/bytecode/StackMapTable$Writer;->writeTypeInfo(II)V

    .line 624
    return-void
.end method

.method public toByteArray()[B
    .locals 3

    .line 574
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 575
    .local v0, "b":[B
    iget v1, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 576
    return-object v0
.end method

.method public toStackMapTable(Ljavassist/bytecode/ConstPool;)Ljavassist/bytecode/StackMapTable;
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 587
    new-instance v0, Ljavassist/bytecode/StackMapTable;

    invoke-virtual {p0}, Ljavassist/bytecode/StackMapTable$Writer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/StackMapTable;-><init>(Ljavassist/bytecode/ConstPool;[B)V

    return-object v0
.end method
