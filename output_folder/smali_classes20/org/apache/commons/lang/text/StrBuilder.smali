.class public Lorg/apache/commons/lang/text/StrBuilder;
.super Ljava/lang/Object;
.source "StrBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;,
        Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;,
        Lorg/apache/commons/lang/text/StrBuilder$StrBuilderTokenizer;
    }
.end annotation


# static fields
.field static final CAPACITY:I = 0x20

.field private static final serialVersionUID:J = 0x69dea51fe8fc7e4bL


# instance fields
.field protected buffer:[C

.field private newLine:Ljava/lang/String;

.field private nullText:Ljava/lang/String;

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 103
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    if-gtz p1, :cond_0

    .line 113
    const/16 p1, 0x20

    .line 115
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/16 v0, 0x20

    if-nez p1, :cond_0

    .line 127
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    new-array v0, v1, [C

    iput-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 132
    :goto_0
    return-void
.end method

.method private deleteImpl(III)V
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "len"    # I

    .line 1524
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1525
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1526
    return-void
.end method

.method private replaceImpl(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 10
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;
    .param p3, "from"    # I
    .param p4, "to"    # I
    .param p5, "replaceCount"    # I

    .line 1845
    if-eqz p1, :cond_5

    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    goto :goto_3

    .line 1848
    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1849
    .local v0, "replaceLen":I
    :goto_0
    iget-object v7, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 1850
    .local v7, "buf":[C
    move v1, p3

    move v8, v1

    .local v8, "i":I
    :goto_1
    if-ge v8, p4, :cond_4

    if-eqz p5, :cond_4

    .line 1851
    invoke-virtual {p1, v7, v8, p3, p4}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v9

    .line 1852
    .local v9, "removeLen":I
    if-lez v9, :cond_3

    .line 1853
    add-int v3, v8, v9

    move-object v1, p0

    move v2, v8

    move v4, v9

    move-object v5, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/lang/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 1854
    sub-int v1, p4, v9

    add-int/2addr v1, v0

    .line 1855
    .end local p4    # "to":I
    .local v1, "to":I
    add-int p4, v8, v0

    add-int/lit8 v8, p4, -0x1

    .line 1856
    if-lez p5, :cond_2

    .line 1857
    add-int/lit8 p5, p5, -0x1

    move p4, v1

    goto :goto_2

    .line 1856
    :cond_2
    move p4, v1

    .line 1850
    .end local v1    # "to":I
    .end local v9    # "removeLen":I
    .restart local p4    # "to":I
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1861
    .end local v8    # "i":I
    :cond_4
    return-object p0

    .line 1846
    .end local v0    # "replaceLen":I
    .end local v7    # "buf":[C
    :cond_5
    :goto_3
    return-object p0
.end method

.method private replaceImpl(IIILjava/lang/String;I)V
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "removeLen"    # I
    .param p4, "insertStr"    # Ljava/lang/String;
    .param p5, "insertLen"    # I

    .line 1663
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v0, p3

    add-int/2addr v0, p5

    .line 1664
    .local v0, "newSize":I
    if-eq p5, p3, :cond_0

    .line 1665
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1666
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int v2, p1, p5

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1667
    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1669
    :cond_0
    if-lez p5, :cond_1

    .line 1670
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p4, v1, p5, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1672
    :cond_1
    return-void
.end method


# virtual methods
.method public append(C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "ch"    # C

    .line 692
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 693
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 694
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    aput-char p1, v1, v2

    .line 695
    return-object p0
.end method

.method public append(D)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # D

    .line 735
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # F

    .line 725
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I

    .line 705
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(J)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # J

    .line 715
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 459
    if-nez p1, :cond_0

    .line 460
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 462
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 473
    if-nez p1, :cond_0

    .line 474
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 476
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 477
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 478
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    .line 479
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 480
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 481
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 483
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 496
    if-nez p1, :cond_0

    .line 497
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 499
    :cond_0
    if-ltz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 502
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 505
    if-lez p3, :cond_1

    .line 506
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 507
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 508
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 509
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 511
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 503
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "str"    # Ljava/lang/StringBuffer;

    .line 522
    if-nez p1, :cond_0

    .line 523
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 525
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 526
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 527
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    .line 528
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 529
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 530
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 532
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/StringBuffer;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 545
    if-nez p1, :cond_0

    .line 546
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 548
    :cond_0
    if-ltz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 551
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 554
    if-lez p3, :cond_1

    .line 555
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 556
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 557
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 558
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 560
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 552
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Lorg/apache/commons/lang/text/StrBuilder;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 5
    .param p1, "str"    # Lorg/apache/commons/lang/text/StrBuilder;

    .line 571
    if-nez p1, :cond_0

    .line 572
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 574
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 575
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 576
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    .line 577
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 578
    iget-object v2, p1, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 579
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 581
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append(Lorg/apache/commons/lang/text/StrBuilder;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 594
    if-nez p1, :cond_0

    .line 595
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 597
    :cond_0
    if-ltz p2, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 600
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    invoke-virtual {p1}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 603
    if-lez p3, :cond_1

    .line 604
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 605
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 606
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Lorg/apache/commons/lang/text/StrBuilder;->getChars(II[CI)V

    .line 607
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 609
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 601
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Z)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 5
    .param p1, "value"    # Z

    .line 668
    const/16 v0, 0x65

    if-eqz p1, :cond_0

    .line 669
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 670
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v4, 0x74

    aput-char v4, v1, v2

    .line 671
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v4, 0x72

    aput-char v4, v1, v3

    .line 672
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v4, 0x75

    aput-char v4, v1, v2

    .line 673
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    aput-char v0, v1, v3

    goto :goto_0

    .line 675
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 676
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v4, 0x66

    aput-char v4, v1, v2

    .line 677
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v4, 0x61

    aput-char v4, v1, v3

    .line 678
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v4, 0x6c

    aput-char v4, v1, v2

    .line 679
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/16 v4, 0x73

    aput-char v4, v1, v3

    .line 680
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    aput-char v0, v1, v2

    .line 682
    :goto_0
    return-object p0
.end method

.method public append([C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "chars"    # [C

    .line 620
    if-nez p1, :cond_0

    .line 621
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 623
    :cond_0
    array-length v0, p1

    .line 624
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 625
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    .line 626
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 627
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 630
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append([CII)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 643
    if-nez p1, :cond_0

    .line 644
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNull()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 646
    :cond_0
    if-ltz p2, :cond_3

    array-length v0, p1

    if-gt p2, v0, :cond_3

    .line 649
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 652
    if-lez p3, :cond_1

    .line 653
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 654
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 655
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 656
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 658
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 650
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid startIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendAll(Ljava/util/Collection;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "coll"    # Ljava/util/Collection;

    .line 950
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 951
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 952
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 953
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0

    .line 956
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-object p0
.end method

.method public appendAll(Ljava/util/Iterator;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "it"    # Ljava/util/Iterator;

    .line 969
    if-eqz p1, :cond_0

    .line 970
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0

    .line 974
    :cond_0
    return-object p0
.end method

.method public appendAll([Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;

    .line 932
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 933
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 934
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 933
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 937
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public appendFixedWidthPadLeft(IIC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .line 1271
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .line 1239
    if-lez p2, :cond_4

    .line 1240
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1241
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, "str":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 1243
    const-string v0, ""

    .line 1245
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1246
    .local v1, "strLen":I
    if-lt v1, p2, :cond_2

    .line 1247
    sub-int v2, v1, p2

    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {v0, v2, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_2

    .line 1249
    :cond_2
    sub-int v2, p2, v1

    .line 1250
    .local v2, "padLen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1251
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v5, v3

    aput-char p3, v4, v5

    .line 1250
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1253
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v5, v2

    invoke-virtual {v0, v3, v1, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1255
    .end local v2    # "padLen":I
    :goto_2
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v2, p2

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1257
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "strLen":I
    :cond_4
    return-object p0
.end method

.method public appendFixedWidthPadRight(IIC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .line 1318
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .line 1286
    if-lez p2, :cond_4

    .line 1287
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1288
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1289
    .local v0, "str":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 1290
    const-string v0, ""

    .line 1292
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1293
    .local v1, "strLen":I
    const/4 v2, 0x0

    if-lt v1, p2, :cond_2

    .line 1294
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {v0, v2, p2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_2

    .line 1296
    :cond_2
    sub-int v3, p2, v1

    .line 1297
    .local v3, "padLen":I
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {v0, v2, v1, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1298
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1299
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v5, v1

    add-int/2addr v5, v2

    aput-char p3, v4, v5

    .line 1298
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1302
    .end local v2    # "i":I
    .end local v3    # "padLen":I
    :cond_3
    :goto_2
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v2, p2

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1304
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "strLen":I
    :cond_4
    return-object p0
.end method

.method public appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1

    .line 432
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->newLine:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 433
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 434
    return-object p0

    .line 436
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendNull()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1

    .line 445
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 446
    return-object p0

    .line 448
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendPadding(IC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "length"    # I
    .param p2, "padChar"    # C

    .line 1217
    if-ltz p1, :cond_0

    .line 1218
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1220
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    aput-char p2, v1, v2

    .line 1219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1223
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public appendSeparator(C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "separator"    # C

    .line 1127
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1128
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1130
    :cond_0
    return-object p0
.end method

.method public appendSeparator(CC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "standard"    # C
    .param p2, "defaultIfEmpty"    # C

    .line 1145
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1146
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_0

    .line 1149
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1151
    :goto_0
    return-object p0
.end method

.method public appendSeparator(CI)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 0
    .param p1, "separator"    # C
    .param p2, "loopIndex"    # I

    .line 1202
    if-lez p2, :cond_0

    .line 1203
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1205
    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;

    .line 1069
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSeparator(Ljava/lang/String;I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 0
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "loopIndex"    # I

    .line 1175
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 1176
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1178
    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "standard"    # Ljava/lang/String;
    .param p2, "defaultIfEmpty"    # Ljava/lang/String;

    .line 1100
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 1101
    .local v0, "str":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 1102
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1104
    :cond_1
    return-object p0
.end method

.method public appendWithSeparators(Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "coll"    # Ljava/util/Collection;
    .param p2, "separator"    # Ljava/lang/String;

    .line 1011
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1012
    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    move-object p2, v0

    .line 1013
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1014
    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1015
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1016
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1017
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_1

    .line 1021
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_2
    return-object p0
.end method

.method public appendWithSeparators(Ljava/util/Iterator;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "it"    # Ljava/util/Iterator;
    .param p2, "separator"    # Ljava/lang/String;

    .line 1035
    if-eqz p1, :cond_2

    .line 1036
    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    move-object p2, v0

    .line 1037
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1038
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1039
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1040
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_1

    .line 1044
    :cond_2
    return-object p0
.end method

.method public appendWithSeparators([Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "separator"    # Ljava/lang/String;

    .line 989
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 990
    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    move-object p2, v0

    .line 991
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 992
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 993
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 994
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 992
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 997
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public appendln(C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "ch"    # C

    .line 874
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(D)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # D

    .line 918
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(D)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(F)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # F

    .line 907
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(F)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I

    .line 885
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(I)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(J)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # J

    .line 896
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->append(J)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 748
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 760
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 774
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuffer;

    .line 786
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuffer;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 800
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lorg/apache/commons/lang/text/StrBuilder;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Lorg/apache/commons/lang/text/StrBuilder;

    .line 812
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Lorg/apache/commons/lang/text/StrBuilder;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lorg/apache/commons/lang/text/StrBuilder;II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 826
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Lorg/apache/commons/lang/text/StrBuilder;II)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Z)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "value"    # Z

    .line 863
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Z)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "chars"    # [C

    .line 838
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append([C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([CII)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 852
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append([CII)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asReader()Ljava/io/Reader;
    .locals 1

    .line 2419
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;-><init>(Lorg/apache/commons/lang/text/StrBuilder;)V

    return-object v0
.end method

.method public asTokenizer()Lorg/apache/commons/lang/text/StrTokenizer;
    .locals 1

    .line 2395
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderTokenizer;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderTokenizer;-><init>(Lorg/apache/commons/lang/text/StrBuilder;)V

    return-object v0
.end method

.method public asWriter()Ljava/io/Writer;
    .locals 1

    .line 2444
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;-><init>(Lorg/apache/commons/lang/text/StrBuilder;)V

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 306
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 309
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v0, v0, p1

    return v0

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public clear()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 292
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2588
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/text/StrBuilder;

    .line 2589
    .local v0, "clone":Lorg/apache/commons/lang/text/StrBuilder;
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    array-length v1, v1

    new-array v1, v1, [C

    iput-object v1, v0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2590
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2591
    return-object v0
.end method

.method public contains(C)Z
    .locals 3
    .param p1, "ch"    # C

    .line 2082
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2083
    .local v0, "thisBuf":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v1, v2, :cond_1

    .line 2084
    aget-char v2, v0, v1

    if-ne v2, p1, :cond_0

    .line 2085
    const/4 v2, 0x1

    return v2

    .line 2083
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2088
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 2098
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public contains(Lorg/apache/commons/lang/text/StrMatcher;)Z
    .locals 2
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .line 2113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Lorg/apache/commons/lang/text/StrMatcher;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public delete(II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 1538
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 1539
    sub-int v0, p2, p1

    .line 1540
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 1541
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 1543
    :cond_0
    return-object p0
.end method

.method public deleteAll(C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "ch"    # C

    .line 1554
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_3

    .line 1555
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_2

    .line 1556
    move v1, v0

    .line 1557
    .local v1, "start":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v2, :cond_1

    .line 1558
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v2, v2, v0

    if-eq v2, p1, :cond_0

    .line 1562
    :cond_1
    sub-int v2, v0, v1

    .line 1563
    .local v2, "len":I
    invoke-direct {p0, v1, v0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 1564
    sub-int/2addr v0, v2

    .line 1554
    .end local v1    # "start":I
    .end local v2    # "len":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1567
    .end local v0    # "i":I
    :cond_3
    return-object p0
.end method

.method public deleteAll(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1594
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1595
    .local v1, "len":I
    :goto_0
    if-lez v1, :cond_1

    .line 1596
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1597
    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_1

    .line 1598
    add-int v2, v0, v1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 1599
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 1602
    .end local v0    # "index":I
    :cond_1
    return-object p0
.end method

.method public deleteAll(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .line 1634
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replace(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deleteCharAt(I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 2
    .param p1, "index"    # I

    .line 340
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge p1, v0, :cond_0

    .line 343
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 344
    return-object p0

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public deleteFirst(C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "ch"    # C

    .line 1577
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 1578
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1579
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 1580
    goto :goto_1

    .line 1577
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1583
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-object p0
.end method

.method public deleteFirst(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1612
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1613
    .local v1, "len":I
    :goto_0
    if-lez v1, :cond_1

    .line 1614
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1615
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 1616
    add-int v2, v0, v1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/commons/lang/text/StrBuilder;->deleteImpl(III)V

    .line 1619
    .end local v0    # "index":I
    :cond_1
    return-object p0
.end method

.method public deleteFirst(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .line 1648
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replace(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .line 1951
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1952
    return v0

    .line 1954
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1955
    .local v1, "len":I
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1956
    return v2

    .line 1958
    :cond_1
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-le v1, v3, :cond_2

    .line 1959
    return v0

    .line 1961
    :cond_2
    sub-int/2addr v3, v1

    .line 1962
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 1963
    iget-object v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v5, v5, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3

    .line 1964
    return v0

    .line 1962
    :cond_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1967
    .end local v4    # "i":I
    :cond_4
    return v2
.end method

.method public ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "capacity"    # I

    .line 232
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 233
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 234
    .local v0, "old":[C
    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 235
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    .end local v0    # "old":[C
    :cond_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2536
    instance-of v0, p1, Lorg/apache/commons/lang/text/StrBuilder;

    if-eqz v0, :cond_0

    .line 2537
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->equals(Lorg/apache/commons/lang/text/StrBuilder;)Z

    move-result v0

    return v0

    .line 2539
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lorg/apache/commons/lang/text/StrBuilder;)Z
    .locals 7
    .param p1, "other"    # Lorg/apache/commons/lang/text/StrBuilder;

    .line 2512
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2513
    return v0

    .line 2515
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    iget v2, p1, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 2516
    return v3

    .line 2518
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2519
    .local v2, "thisBuf":[C
    iget-object v4, p1, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2520
    .local v4, "otherBuf":[C
    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2521
    aget-char v5, v2, v1

    aget-char v6, v4, v1

    if-eq v5, v6, :cond_2

    .line 2522
    return v3

    .line 2520
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2525
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method public equalsIgnoreCase(Lorg/apache/commons/lang/text/StrBuilder;)Z
    .locals 9
    .param p1, "other"    # Lorg/apache/commons/lang/text/StrBuilder;

    .line 2486
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2487
    return v0

    .line 2489
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    iget v2, p1, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 2490
    return v3

    .line 2492
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2493
    .local v2, "thisBuf":[C
    iget-object v4, p1, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2494
    .local v4, "otherBuf":[C
    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2495
    aget-char v5, v2, v1

    .line 2496
    .local v5, "c1":C
    aget-char v6, v4, v1

    .line 2497
    .local v6, "c2":C
    if-eq v5, v6, :cond_2

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    if-eq v7, v8, :cond_2

    .line 2498
    return v3

    .line 2494
    .end local v5    # "c1":C
    .end local v6    # "c2":C
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2501
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method public getChars(II[CI)V
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "destination"    # [C
    .param p4, "destinationIndex"    # I

    .line 409
    if-ltz p1, :cond_2

    .line 412
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 415
    if-gt p1, p2, :cond_0

    .line 418
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    return-void

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 410
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getChars([C)[C
    .locals 3
    .param p1, "destination"    # [C

    .line 390
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    .line 391
    .local v0, "len":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 392
    :cond_0
    new-array p1, v0, [C

    .line 394
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    return-object p1
.end method

.method public getNewLineText()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->newLine:Ljava/lang/String;

    return-object v0
.end method

.method public getNullText()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 2548
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2549
    .local v0, "buf":[C
    const/4 v1, 0x0

    .line 2550
    .local v1, "hash":I
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2551
    mul-int/lit8 v3, v1, 0x1f

    aget-char v4, v0, v2

    add-int v1, v3, v4

    .line 2550
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2553
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public indexOf(C)I
    .locals 1
    .param p1, "ch"    # C

    .line 2124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(CI)I

    move-result v0

    return v0
.end method

.method public indexOf(CI)I
    .locals 4
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .line 2135
    if-gez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 2136
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v1, -0x1

    if-lt p2, v0, :cond_1

    .line 2137
    return v1

    .line 2139
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2140
    .local v0, "thisBuf":[C
    move v2, p2

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v2, v3, :cond_3

    .line 2141
    aget-char v3, v0, v2

    if-ne v3, p1, :cond_2

    .line 2142
    return v2

    .line 2140
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2145
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 2157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .line 2171
    const/4 v0, 0x0

    if-gez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    move p2, v1

    .line 2172
    const/4 v1, -0x1

    if-eqz p1, :cond_8

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p2, v2, :cond_1

    goto :goto_3

    .line 2175
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2176
    .local v2, "strLen":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2177
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(CI)I

    move-result v0

    return v0

    .line 2179
    :cond_2
    if-nez v2, :cond_3

    .line 2180
    return p2

    .line 2182
    :cond_3
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-le v2, v0, :cond_4

    .line 2183
    return v1

    .line 2185
    :cond_4
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2186
    .local v4, "thisBuf":[C
    sub-int/2addr v0, v2

    add-int/2addr v0, v3

    .line 2188
    .local v0, "len":I
    move v3, p2

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_7

    .line 2189
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v2, :cond_6

    .line 2190
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int v7, v3, v5

    aget-char v7, v4, v7

    if-eq v6, v7, :cond_5

    .line 2191
    nop

    .line 2188
    .end local v5    # "j":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2189
    .restart local v5    # "j":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2194
    .end local v5    # "j":I
    :cond_6
    return v3

    .line 2196
    .end local v3    # "i":I
    :cond_7
    return v1

    .line 2173
    .end local v0    # "len":I
    .end local v2    # "strLen":I
    .end local v4    # "thisBuf":[C
    :cond_8
    :goto_3
    return v1
.end method

.method public indexOf(Lorg/apache/commons/lang/text/StrMatcher;)I
    .locals 1
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .line 2210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Lorg/apache/commons/lang/text/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Lorg/apache/commons/lang/text/StrMatcher;I)I
    .locals 5
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "startIndex"    # I

    .line 2226
    if-gez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 2227
    const/4 v0, -0x1

    if-eqz p1, :cond_4

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p2, v1, :cond_1

    goto :goto_2

    .line 2230
    :cond_1
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 2231
    .local v1, "len":I
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2232
    .local v2, "buf":[C
    move v3, p2

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 2233
    invoke-virtual {p1, v2, v3, p2, v1}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-lez v4, :cond_2

    .line 2234
    return v3

    .line 2232
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2237
    .end local v3    # "i":I
    :cond_3
    return v0

    .line 2228
    .end local v1    # "len":I
    .end local v2    # "buf":[C
    :cond_4
    :goto_2
    return v0
.end method

.method public insert(IC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # C

    .line 1458
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->validateIndex(I)V

    .line 1459
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1460
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1461
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    .line 1462
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1463
    return-object p0
.end method

.method public insert(ID)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 1511
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 1499
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1475
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IJ)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 1487
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1332
    if-nez p2, :cond_0

    .line 1333
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 1335
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "index"    # I
    .param p2, "str"    # Ljava/lang/String;

    .line 1348
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->validateIndex(I)V

    .line 1349
    if-nez p2, :cond_0

    .line 1350
    iget-object p2, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    .line 1352
    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1353
    .local v1, "strLen":I
    :goto_0
    if-lez v1, :cond_2

    .line 1354
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v2, v1

    .line 1355
    .local v2, "newSize":I
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1356
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int v4, p1, v1

    iget v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v5, p1

    invoke-static {v3, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1357
    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1358
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-virtual {p2, v0, v1, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1360
    .end local v2    # "newSize":I
    :cond_2
    return-object p0
.end method

.method public insert(IZ)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 1427
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->validateIndex(I)V

    .line 1428
    const/16 v0, 0x65

    if-eqz p2, :cond_0

    .line 1429
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1430
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x4

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1431
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .local v2, "index":I
    const/16 v3, 0x74

    aput-char v3, v1, p1

    .line 1432
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    const/16 v3, 0x72

    aput-char v3, v1, v2

    .line 1433
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    const/16 v3, 0x75

    aput-char v3, v1, p1

    .line 1434
    aput-char v0, v1, v2

    .line 1435
    iget p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_0

    .line 1437
    .end local v2    # "index":I
    .restart local p1    # "index":I
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1438
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x5

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1439
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    const/16 v3, 0x66

    aput-char v3, v1, p1

    .line 1440
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    const/16 v3, 0x61

    aput-char v3, v1, v2

    .line 1441
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    const/16 v3, 0x6c

    aput-char v3, v1, p1

    .line 1442
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    const/16 v3, 0x73

    aput-char v3, v1, v2

    .line 1443
    aput-char v0, v1, p1

    .line 1444
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    move v2, p1

    .line 1446
    .end local p1    # "index":I
    .restart local v2    # "index":I
    :goto_0
    return-object p0
.end method

.method public insert(I[C)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4
    .param p1, "index"    # I
    .param p2, "chars"    # [C

    .line 1373
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->validateIndex(I)V

    .line 1374
    if-nez p2, :cond_0

    .line 1375
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 1377
    :cond_0
    array-length v0, p2

    .line 1378
    .local v0, "len":I
    if-lez v0, :cond_1

    .line 1379
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1380
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int v2, p1, v0

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1381
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1382
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1384
    :cond_1
    return-object p0
.end method

.method public insert(I[CII)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "index"    # I
    .param p2, "chars"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 1399
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->validateIndex(I)V

    .line 1400
    if-nez p2, :cond_0

    .line 1401
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 1403
    :cond_0
    if-ltz p3, :cond_3

    array-length v0, p2

    if-gt p3, v0, :cond_3

    .line 1406
    if-ltz p4, :cond_2

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_2

    .line 1409
    if-lez p4, :cond_1

    .line 1410
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1411
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int v1, p1, p4

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1412
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1413
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1415
    :cond_1
    return-object p0

    .line 1407
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1404
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 276
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(C)I
    .locals 1
    .param p1, "ch"    # C

    .line 2248
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->lastIndexOf(CI)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(CI)I
    .locals 3
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .line 2259
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p2, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 2260
    const/4 v0, -0x1

    if-gez p2, :cond_1

    .line 2261
    return v0

    .line 2263
    :cond_1
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 2264
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v2, v2, v1

    if-ne v2, p1, :cond_2

    .line 2265
    return v1

    .line 2263
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2268
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 2280
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .line 2294
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v1, 0x1

    if-lt p2, v0, :cond_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 2295
    const/4 v0, -0x1

    if-eqz p1, :cond_8

    if-gez p2, :cond_1

    goto :goto_4

    .line 2298
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2299
    .local v2, "strLen":I
    if-lez v2, :cond_6

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-gt v2, v3, :cond_6

    .line 2300
    if-ne v2, v1, :cond_2

    .line 2301
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/lang/text/StrBuilder;->lastIndexOf(CI)I

    move-result v0

    return v0

    .line 2305
    :cond_2
    sub-int v3, p2, v2

    add-int/2addr v3, v1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 2306
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 2307
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    add-int v6, v3, v1

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_3

    .line 2308
    nop

    .line 2305
    .end local v1    # "j":I
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2306
    .restart local v1    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2311
    .end local v1    # "j":I
    :cond_4
    return v3

    .line 2305
    .end local v3    # "i":I
    :cond_5
    goto :goto_3

    .line 2314
    :cond_6
    if-nez v2, :cond_7

    .line 2315
    return p2

    .line 2317
    :cond_7
    :goto_3
    return v0

    .line 2296
    .end local v2    # "strLen":I
    :cond_8
    :goto_4
    return v0
.end method

.method public lastIndexOf(Lorg/apache/commons/lang/text/StrMatcher;)I
    .locals 1
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .line 2331
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->lastIndexOf(Lorg/apache/commons/lang/text/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Lorg/apache/commons/lang/text/StrMatcher;I)I
    .locals 5
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "startIndex"    # I

    .line 2347
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p2, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 2348
    const/4 v0, -0x1

    if-eqz p1, :cond_4

    if-gez p2, :cond_1

    goto :goto_2

    .line 2351
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 2352
    .local v1, "buf":[C
    add-int/lit8 v2, p2, 0x1

    .line 2353
    .local v2, "endIndex":I
    move v3, p2

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 2354
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v3, v4, v2}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-lez v4, :cond_2

    .line 2355
    return v3

    .line 2353
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2358
    .end local v3    # "i":I
    :cond_3
    return v0

    .line 2349
    .end local v1    # "buf":[C
    .end local v2    # "endIndex":I
    :cond_4
    :goto_2
    return v0
.end method

.method public leftString(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I

    .line 2013
    if-gtz p1, :cond_0

    .line 2014
    const-string v0, ""

    return-object v0

    .line 2015
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    .line 2016
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 2018
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 186
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    return v0
.end method

.method public midString(II)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 2061
    if-gez p1, :cond_0

    .line 2062
    const/4 p1, 0x0

    .line 2064
    :cond_0
    if-lez p2, :cond_3

    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 2067
    :cond_1
    add-int v1, p1, p2

    if-gt v0, v1, :cond_2

    .line 2068
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    sub-int/2addr v0, p1

    invoke-direct {v1, v2, p1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 2070
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 2065
    :cond_3
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public minimizeCapacity()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 4

    .line 246
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    array-length v0, v0

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 248
    .local v0, "old":[C
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 249
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    .end local v0    # "old":[C
    :cond_0
    return-object p0
.end method

.method public replace(IILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "replaceStr"    # Ljava/lang/String;

    .line 1686
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 1687
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    move v5, v0

    .line 1688
    .local v5, "insertLen":I
    sub-int v3, p2, p1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 1689
    return-object p0
.end method

.method public replace(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "replaceCount"    # I

    .line 1823
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/lang/text/StrBuilder;->validateRange(II)I

    move-result p4

    .line 1824
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replaceImpl(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceAll(CC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "search"    # C
    .param p2, "replace"    # C

    .line 1702
    if-eq p1, p2, :cond_1

    .line 1703
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 1704
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 1705
    aput-char p2, v1, v0

    .line 1703
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1709
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 9
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .line 1741
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1742
    .local v1, "searchLen":I
    :goto_0
    if-lez v1, :cond_2

    .line 1743
    if-nez p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    move v8, v2

    .line 1744
    .local v8, "replaceLen":I
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1745
    .local v0, "index":I
    :goto_2
    if-ltz v0, :cond_2

    .line 1746
    add-int v4, v0, v1

    move-object v2, p0

    move v3, v0

    move v5, v1

    move-object v6, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/lang/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 1747
    add-int v2, v0, v8

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    .line 1750
    .end local v0    # "index":I
    .end local v8    # "replaceLen":I
    :cond_2
    return-object p0
.end method

.method public replaceAll(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .line 1785
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replace(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(CC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 3
    .param p1, "search"    # C
    .param p2, "replace"    # C

    .line 1721
    if-eq p1, p2, :cond_1

    .line 1722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 1723
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 1724
    aput-char p2, v1, v0

    .line 1725
    goto :goto_1

    .line 1722
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1729
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-object p0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 9
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .line 1761
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1762
    .local v1, "searchLen":I
    :goto_0
    if-lez v1, :cond_2

    .line 1763
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 1764
    .local v8, "index":I
    if-ltz v8, :cond_2

    .line 1765
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    move v7, v0

    .line 1766
    .local v7, "replaceLen":I
    add-int v4, v8, v1

    move-object v2, p0

    move v3, v8

    move v5, v1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/lang/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 1769
    .end local v7    # "replaceLen":I
    .end local v8    # "index":I
    :cond_2
    return-object p0
.end method

.method public replaceFirst(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .line 1800
    iget v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang/text/StrBuilder;->replace(Lorg/apache/commons/lang/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 6

    .line 1871
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    .line 1872
    return-object p0

    .line 1875
    :cond_0
    div-int/lit8 v1, v0, 0x2

    .line 1876
    .local v1, "half":I
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 1877
    .local v2, "buf":[C
    const/4 v3, 0x0

    .local v3, "leftIdx":I
    add-int/lit8 v0, v0, -0x1

    .local v0, "rightIdx":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1878
    aget-char v4, v2, v3

    .line 1879
    .local v4, "swap":C
    aget-char v5, v2, v0

    aput-char v5, v2, v3

    .line 1880
    aput-char v4, v2, v0

    .line 1877
    .end local v4    # "swap":C
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1882
    .end local v0    # "rightIdx":I
    .end local v3    # "leftIdx":I
    :cond_1
    return-object p0
.end method

.method public rightString(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I

    .line 2035
    if-gtz p1, :cond_0

    .line 2036
    const-string v0, ""

    return-object v0

    .line 2037
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    .line 2038
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 2040
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    sub-int/2addr v0, p1

    invoke-direct {v1, v2, v0, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public setCharAt(IC)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .line 323
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    .line 327
    return-object p0

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public setLength(I)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 5
    .param p1, "length"    # I

    .line 198
    if-ltz p1, :cond_2

    .line 201
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge p1, v0, :cond_0

    .line 202
    iput p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    goto :goto_1

    .line 203
    :cond_0
    if-le p1, v0, :cond_1

    .line 204
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 205
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 206
    .local v0, "oldEnd":I
    move v1, p1

    .line 207
    .local v1, "newEnd":I
    iput p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 208
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 209
    iget-object v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v4, 0x0

    aput-char v4, v3, v2

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "oldEnd":I
    .end local v1    # "newEnd":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object p0

    .line 199
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public setNewLineText(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 0
    .param p1, "newLine"    # Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->newLine:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public setNullText(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;
    .locals 1
    .param p1, "nullText"    # Ljava/lang/String;

    .line 172
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const/4 p1, 0x0

    .line 175
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrBuilder;->nullText:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public size()I
    .locals 1

    .line 264
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .line 1924
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1925
    return v0

    .line 1927
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1928
    .local v1, "len":I
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1929
    return v2

    .line 1931
    :cond_1
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-le v1, v3, :cond_2

    .line 1932
    return v0

    .line 1934
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 1935
    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    aget-char v4, v4, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    .line 1936
    return v0

    .line 1934
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1939
    .end local v3    # "i":I
    :cond_4
    return v2
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I

    .line 1979
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 1996
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 1997
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .line 354
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    .line 355
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v0

    .line 357
    :cond_0
    new-array v1, v0, [C

    .line 358
    .local v1, "chars":[C
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    return-object v1
.end method

.method public toCharArray(II)[C
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 373
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 374
    sub-int v0, p2, p1

    .line 375
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 376
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v1

    .line 378
    :cond_0
    new-array v1, v0, [C

    .line 379
    .local v1, "chars":[C
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2567
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toStringBuffer()Ljava/lang/StringBuffer;
    .locals 4

    .line 2577
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public trim()Lorg/apache/commons/lang/text/StrBuilder;
    .locals 5

    .line 1893
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    .line 1894
    return-object p0

    .line 1896
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 1897
    .local v0, "len":I
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 1898
    .local v1, "buf":[C
    const/4 v2, 0x0

    .line 1899
    .local v2, "pos":I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, v0, :cond_1

    aget-char v4, v1, v2

    if-gt v4, v3, :cond_1

    .line 1900
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1902
    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    aget-char v4, v1, v4

    if-gt v4, v3, :cond_2

    .line 1903
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1905
    :cond_2
    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-ge v0, v3, :cond_3

    .line 1906
    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/lang/text/StrBuilder;->delete(II)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1908
    :cond_3
    if-lez v2, :cond_4

    .line 1909
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lorg/apache/commons/lang/text/StrBuilder;->delete(II)Lorg/apache/commons/lang/text/StrBuilder;

    .line 1911
    :cond_4
    return-object p0
.end method

.method protected validateIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 2624
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-gt p1, v0, :cond_0

    .line 2627
    return-void

    .line 2625
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method protected validateRange(II)I
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 2605
    if-ltz p1, :cond_2

    .line 2608
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    if-le p2, v0, :cond_0

    .line 2609
    iget p2, p0, Lorg/apache/commons/lang/text/StrBuilder;->size:I

    .line 2611
    :cond_0
    if-gt p1, p2, :cond_1

    .line 2614
    return p2

    .line 2612
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2606
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method
