.class Lcom/sleepycat/asm/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field static final ARRAY_OF:I = 0x10000000

.field static final BASE:I = 0x1000000

.field static final BASE_KIND:I = 0xff00000

.field static final BASE_VALUE:I = 0xfffff

.field static final BOOLEAN:I = 0x1000009

.field static final BYTE:I = 0x100000a

.field static final CHAR:I = 0x100000b

.field static final DIM:I = -0x10000000

.field static final DOUBLE:I = 0x1000003

.field static final ELEMENT_OF:I = -0x10000000

.field static final FLOAT:I = 0x1000002

.field static final INTEGER:I = 0x1000001

.field static final KIND:I = 0xf000000

.field private static final LOCAL:I = 0x2000000

.field static final LONG:I = 0x1000004

.field static final NULL:I = 0x1000005

.field static final OBJECT:I = 0x1700000

.field static final SHORT:I = 0x100000c

.field static final SIZE:[I

.field private static final STACK:I = 0x3000000

.field static final TOP:I = 0x1000000

.field static final TOP_IF_LONG_OR_DOUBLE:I = 0x800000

.field static final UNINITIALIZED:I = 0x1800000

.field static final UNINITIALIZED_THIS:I = 0x1000006

.field static final VALUE:I = 0x7fffff


# instance fields
.field private initializationCount:I

.field private initializations:[I

.field inputLocals:[I

.field inputStack:[I

.field private outputLocals:[I

.field private outputStack:[I

.field outputStackTop:I

.field owner:Lcom/sleepycat/asm/Label;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 239
    const/16 v0, 0xca

    new-array v0, v0, [I

    .line 240
    .local v0, "b":[I
    const-string v1, "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE"

    .line 244
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x45

    aput v3, v0, v2

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_0
    sput-object v0, Lcom/sleepycat/asm/Frame;->SIZE:[I

    .line 461
    .end local v0    # "b":[I
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "i":I
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convert(Lcom/sleepycat/asm/ClassWriter;I[Ljava/lang/Object;[I)I
    .locals 6
    .param p0, "cw"    # Lcom/sleepycat/asm/ClassWriter;
    .param p1, "nInput"    # I
    .param p2, "input"    # [Ljava/lang/Object;
    .param p3, "output"    # [I

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, p1, :cond_4

    .line 591
    aget-object v2, p2, v1

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 592
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    aget-object v3, p2, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    aput v3, p3, v0

    .line 593
    aget-object v0, p2, v1

    sget-object v3, Lcom/sleepycat/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v0, v3, :cond_1

    aget-object v0, p2, v1

    sget-object v3, Lcom/sleepycat/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_2

    .line 594
    :cond_1
    :goto_1
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aput v4, p3, v2

    goto :goto_2

    .line 596
    :cond_2
    aget-object v2, p2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 597
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget-object v3, p2, v1

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/sleepycat/asm/Type;->getObjectType(Ljava/lang/String;)Lcom/sleepycat/asm/Type;

    move-result-object v3

    .line 598
    invoke-virtual {v3}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 597
    invoke-static {p0, v3}, Lcom/sleepycat/asm/Frame;->type(Lcom/sleepycat/asm/ClassWriter;Ljava/lang/String;)I

    move-result v3

    aput v3, p3, v0

    move v0, v2

    goto :goto_2

    .line 600
    .end local v2    # "i":I
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    const/high16 v3, 0x1800000

    aget-object v4, p2, v1

    check-cast v4, Lcom/sleepycat/asm/Label;

    iget v4, v4, Lcom/sleepycat/asm/Label;->position:I

    .line 601
    const-string v5, ""

    invoke-virtual {p0, v5, v4}, Lcom/sleepycat/asm/ClassWriter;->addUninitializedType(Ljava/lang/String;I)I

    move-result v4

    or-int/2addr v3, v4

    aput v3, p3, v0

    move v0, v2

    .line 590
    .end local v2    # "i":I
    .restart local v0    # "i":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    .end local v1    # "j":I
    :cond_4
    return v0
.end method

.method private get(I)I
    .locals 3
    .param p1, "local"    # I

    .line 635
    iget-object v0, p0, Lcom/sleepycat/asm/Frame;->outputLocals:[I

    const/high16 v1, 0x2000000

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 640
    :cond_0
    aget v2, v0, p1

    .line 641
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 644
    or-int/2addr v1, p1

    aput v1, v0, p1

    move v2, v1

    .line 646
    :cond_1
    return v2

    .line 638
    .end local v2    # "type":I
    :cond_2
    :goto_0
    or-int v0, p1, v1

    return v0
.end method

.method private init(Lcom/sleepycat/asm/ClassWriter;I)I
    .locals 8
    .param p1, "cw"    # Lcom/sleepycat/asm/ClassWriter;
    .param p2, "t"    # I

    .line 879
    const/high16 v0, 0x1700000

    const v1, 0x1000006

    if-ne p2, v1, :cond_0

    .line 880
    iget-object v1, p1, Lcom/sleepycat/asm/ClassWriter;->thisName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    .local v0, "s":I
    goto :goto_0

    .line 881
    .end local v0    # "s":I
    :cond_0
    const/high16 v1, -0x100000

    and-int/2addr v1, p2

    const/high16 v2, 0x1800000

    if-ne v1, v2, :cond_5

    .line 882
    iget-object v1, p1, Lcom/sleepycat/asm/ClassWriter;->typeTable:[Lcom/sleepycat/asm/Item;

    const v2, 0xfffff

    and-int/2addr v2, p2

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    .line 883
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v0, v2

    .line 884
    .end local v1    # "type":Ljava/lang/String;
    .restart local v0    # "s":I
    nop

    .line 887
    :goto_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lcom/sleepycat/asm/Frame;->initializationCount:I

    if-ge v1, v2, :cond_4

    .line 888
    iget-object v2, p0, Lcom/sleepycat/asm/Frame;->initializations:[I

    aget v2, v2, v1

    .line 889
    .local v2, "u":I
    const/high16 v3, -0x10000000

    and-int/2addr v3, v2

    .line 890
    .local v3, "dim":I
    const/high16 v4, 0xf000000

    and-int/2addr v4, v2

    .line 891
    .local v4, "kind":I
    const/high16 v5, 0x2000000

    const v6, 0x7fffff

    if-ne v4, v5, :cond_1

    .line 892
    iget-object v5, p0, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    and-int/2addr v6, v2

    aget v5, v5, v6

    add-int v2, v3, v5

    goto :goto_2

    .line 893
    :cond_1
    const/high16 v5, 0x3000000

    if-ne v4, v5, :cond_2

    .line 894
    iget-object v5, p0, Lcom/sleepycat/asm/Frame;->inputStack:[I

    array-length v7, v5

    and-int/2addr v6, v2

    sub-int/2addr v7, v6

    aget v5, v5, v7

    add-int v2, v3, v5

    .line 896
    :cond_2
    :goto_2
    if-ne p2, v2, :cond_3

    .line 897
    return v0

    .line 887
    .end local v2    # "u":I
    .end local v3    # "dim":I
    .end local v4    # "kind":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 900
    .end local v1    # "j":I
    :cond_4
    return p2

    .line 885
    .end local v0    # "s":I
    :cond_5
    return p2
.end method

.method private init(I)V
    .locals 4
    .param p1, "var"    # I

    .line 853
    iget-object v0, p0, Lcom/sleepycat/asm/Frame;->initializations:[I

    if-nez v0, :cond_0

    .line 854
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sleepycat/asm/Frame;->initializations:[I

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/Frame;->initializations:[I

    array-length v0, v0

    .line 857
    .local v0, "n":I
    iget v1, p0, Lcom/sleepycat/asm/Frame;->initializationCount:I

    if-lt v1, v0, :cond_1

    .line 858
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 859
    .local v1, "t":[I
    iget-object v2, p0, Lcom/sleepycat/asm/Frame;->initializations:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    iput-object v1, p0, Lcom/sleepycat/asm/Frame;->initializations:[I

    .line 863
    .end local v1    # "t":[I
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/asm/Frame;->initializations:[I

    iget v2, p0, Lcom/sleepycat/asm/Frame;->initializationCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sleepycat/asm/Frame;->initializationCount:I

    aput p1, v1, v2

    .line 864
    return-void
.end method

.method private static merge(Lcom/sleepycat/asm/ClassWriter;I[II)Z
    .locals 9
    .param p0, "cw"    # Lcom/sleepycat/asm/ClassWriter;
    .param p1, "t"    # I
    .param p2, "types"    # [I
    .param p3, "index"    # I

    .line 1501
    aget v0, p2, p3

    .line 1502
    .local v0, "u":I
    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 1504
    return v1

    .line 1506
    :cond_0
    const v2, 0xfffffff

    and-int/2addr v2, p1

    const v3, 0x1000005

    if-ne v2, v3, :cond_2

    .line 1507
    if-ne v0, v3, :cond_1

    .line 1508
    return v1

    .line 1510
    :cond_1
    const p1, 0x1000005

    .line 1512
    :cond_2
    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 1514
    aput p1, p2, p3

    .line 1515
    return v2

    .line 1518
    :cond_3
    const/high16 v4, 0xff00000

    and-int v5, v0, v4

    const/high16 v6, 0x1700000

    const/high16 v7, -0x10000000

    if-eq v5, v6, :cond_8

    and-int v5, v0, v7

    if-eqz v5, :cond_4

    goto :goto_2

    .line 1552
    :cond_4
    if-ne v0, v3, :cond_7

    .line 1555
    and-int v3, p1, v4

    if-eq v3, v6, :cond_6

    and-int v3, p1, v7

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    const/high16 v3, 0x1000000

    goto :goto_1

    :cond_6
    :goto_0
    move v3, p1

    .local v3, "v":I
    :goto_1
    goto/16 :goto_8

    .line 1558
    .end local v3    # "v":I
    :cond_7
    const/high16 v3, 0x1000000

    .restart local v3    # "v":I
    goto/16 :goto_8

    .line 1520
    .end local v3    # "v":I
    :cond_8
    :goto_2
    if-ne p1, v3, :cond_9

    .line 1522
    return v1

    .line 1523
    :cond_9
    const/high16 v3, -0x100000

    and-int v5, p1, v3

    and-int/2addr v3, v0

    const-string v8, "java/lang/Object"

    if-ne v5, v3, :cond_b

    .line 1525
    and-int v3, v0, v4

    if-ne v3, v6, :cond_a

    .line 1529
    and-int v3, p1, v7

    or-int/2addr v3, v6

    const v4, 0xfffff

    and-int v5, p1, v4

    and-int/2addr v4, v0

    .line 1530
    invoke-virtual {p0, v5, v4}, Lcom/sleepycat/asm/ClassWriter;->getMergedType(II)I

    move-result v4

    or-int/2addr v3, v4

    .restart local v3    # "v":I
    goto :goto_8

    .line 1534
    .end local v3    # "v":I
    :cond_a
    and-int v3, v0, v7

    add-int/2addr v3, v7

    .line 1535
    .local v3, "vdim":I
    or-int v4, v3, v6

    invoke-virtual {p0, v8}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v5

    or-int v3, v4, v5

    .line 1536
    .local v3, "v":I
    goto :goto_8

    .line 1537
    .end local v3    # "v":I
    :cond_b
    and-int v3, p1, v4

    if-eq v3, v6, :cond_d

    and-int v3, p1, v7

    if-eqz v3, :cond_c

    goto :goto_3

    .line 1550
    :cond_c
    const/high16 v3, 0x1000000

    .restart local v3    # "v":I
    goto :goto_8

    .line 1542
    .end local v3    # "v":I
    :cond_d
    :goto_3
    and-int v3, p1, v7

    if-eqz v3, :cond_f

    and-int v3, p1, v4

    if-ne v3, v6, :cond_e

    goto :goto_4

    :cond_e
    move v3, v7

    goto :goto_5

    :cond_f
    :goto_4
    move v3, v1

    :goto_5
    and-int v5, p1, v7

    add-int/2addr v3, v5

    .line 1544
    .local v3, "tdim":I
    and-int v5, v0, v7

    if-eqz v5, :cond_11

    and-int/2addr v4, v0

    if-ne v4, v6, :cond_10

    goto :goto_6

    :cond_10
    move v4, v7

    goto :goto_7

    :cond_11
    :goto_6
    move v4, v1

    :goto_7
    and-int v5, v0, v7

    add-int/2addr v4, v5

    .line 1546
    .local v4, "udim":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    or-int/2addr v5, v6

    .line 1547
    invoke-virtual {p0, v8}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int v3, v5, v6

    .line 1548
    .end local v4    # "udim":I
    .local v3, "v":I
    nop

    .line 1560
    :goto_8
    if-eq v0, v3, :cond_12

    .line 1561
    aput v3, p2, p3

    .line 1562
    return v2

    .line 1564
    :cond_12
    return v1
.end method

.method private pop()I
    .locals 3

    .line 799
    iget v0, p0, Lcom/sleepycat/asm/Frame;->outputStackTop:I

    if-lez v0, :cond_0

    .line 800
    iget-object v1, p0, Lcom/sleepycat/asm/Frame;->outputStack:[I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sleepycat/asm/Frame;->outputStackTop:I

    aget v0, v1, v0

    return v0

    .line 803
    :cond_0
    const/high16 v0, 0x3000000

    iget-object v1, p0, Lcom/sleepycat/asm/Frame;->owner:Lcom/sleepycat/asm/Label;

    iget v2, v1, Lcom/sleepycat/asm/Label;->inputStackTop:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/sleepycat/asm/Label;->inputStackTop:I

    neg-int v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private pop(I)V
    .locals 3
    .param p1, "elements"    # I

    .line 814
    iget v0, p0, Lcom/sleepycat/asm/Frame;->outputStackTop:I

    if-lt v0, p1, :cond_0

    .line 815
    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sleepycat/asm/Frame;->outputStackTop:I

    goto :goto_0

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/Frame;->owner:Lcom/sleepycat/asm/Label;

    iget v1, v0, Lcom/sleepycat/asm/Label;->inputStackTop:I

    iget v2, p0, Lcom/sleepycat/asm/Frame;->outputStackTop:I

    sub-int v2, p1, v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sleepycat/asm/Label;->inputStackTop:I

    .line 821
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/asm/Frame;->outputStackTop:I

    .line 823
    :goto_0
    return-void
.end method

.method private pop(Ljava/lang/String;)V
    .locals 4
    .param p1, "desc"    # Ljava/lang/String;

    .line 834
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 835
    .local v0, "c":C
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x28

    if-ne v0, v3, :cond_0

    .line 836
    invoke-static {p1}, Lcom/sleepycat/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v3

    shr-int/lit8 v2, v3, 0x2

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/sleepycat/asm/Frame;->pop(I)V

    goto :goto_1

    .line 837
    :cond_0
    const/16 v3, 0x4a

    if-eq v0, v3, :cond_2

    const/16 v3, 0x44

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 840
    :cond_1
    invoke-direct {p0, v1}, Lcom/sleepycat/asm/Frame;->pop(I)V

    goto :goto_1

    .line 838
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 842
    :goto_1
    return-void
.end method

.method private push(I)V
    .locals 4
    .param p1, "type"    # I

    .line 681
    iget-object v0, p0, Lcom/sleepycat/asm/Frame;->outputStack:[I

    if-nez v0, :cond_0

    .line 682
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sleepycat/asm/Frame;->outputStack:[I

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/Frame;->outputStack:[I

    array-length v0, v0

    .line 685
    .local v0, "n":I
    iget v1, p0, Lcom/sleepycat/asm/Frame;->outputStackTop:I

    if-lt v1, v0, :cond_1

    .line 686
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 687
    .local v1, "t":[I
    iget-object v2, p0, Lcom/sleepycat/asm/Frame;->outputStack:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 688
    iput-object v1, p0, Lcom/sleepycat/asm/Frame;->outputStack:[I

    .line 691
    .end local v1    # "t":[I
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/asm/Frame;->outputStack:[I

    iget v2, p0, Lcom/sleepycat/asm/Frame;->outputStackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sleepycat/asm/Frame;->outputStackTop:I

    aput p1, v1, v2

    .line 693
    iget-object v1, p0, Lcom/sleepycat/asm/Frame;->owner:Lcom/sleepycat/asm/Label;

    iget v1, v1, Lcom/sleepycat/asm/Label;->inputStackTop:I

    iget v2, p0, Lcom/sleepycat/asm/Frame;->outputStackTop:I

    add-int/2addr v1, v2

    .line 694
    .local v1, "top":I
    iget-object v2, p0, Lcom/sleepycat/asm/Frame;->owner:Lcom/sleepycat/asm/Label;

    iget v2, v2, Lcom/sleepycat/asm/Label;->outputStackMax:I

    if-le v1, v2, :cond_2

    .line 695
    iget-object v2, p0, Lcom/sleepycat/asm/Frame;->owner:Lcom/sleepycat/asm/Label;

    iput v1, v2, Lcom/sleepycat/asm/Label;->outputStackMax:I

    .line 697
    :cond_2
    return-void
.end method

.method private push(Lcom/sleepycat/asm/ClassWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "cw"    # Lcom/sleepycat/asm/ClassWriter;
    .param p2, "desc"    # Ljava/lang/String;

    .line 710
    invoke-static {p1, p2}, Lcom/sleepycat/asm/Frame;->type(Lcom/sleepycat/asm/ClassWriter;Ljava/lang/String;)I

    move-result v0

    .line 711
    .local v0, "type":I
    if-eqz v0, :cond_1

    .line 712
    invoke-direct {p0, v0}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 713
    const v1, 0x1000004

    if-eq v0, v1, :cond_0

    const v1, 0x1000003

    if-ne v0, v1, :cond_1

    .line 714
    :cond_0
    const/high16 v1, 0x1000000

    invoke-direct {p0, v1}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 717
    :cond_1
    return-void
.end method

.method private set(II)V
    .locals 4
    .param p1, "local"    # I
    .param p2, "type"    # I

    .line 660
    iget-object v0, p0, Lcom/sleepycat/asm/Frame;->outputLocals:[I

    if-nez v0, :cond_0

    .line 661
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sleepycat/asm/Frame;->outputLocals:[I

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/Frame;->outputLocals:[I

    array-length v0, v0

    .line 664
    .local v0, "n":I
    if-lt p1, v0, :cond_1

    .line 665
    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 666
    .local v1, "t":[I
    iget-object v2, p0, Lcom/sleepycat/asm/Frame;->outputLocals:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 667
    iput-object v1, p0, Lcom/sleepycat/asm/Frame;->outputLocals:[I

    .line 670
    .end local v1    # "t":[I
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/asm/Frame;->outputLocals:[I

    aput p2, v1, p1

    .line 671
    return-void
.end method

.method static type(Lcom/sleepycat/asm/ClassWriter;Ljava/lang/String;)I
    .locals 5
    .param p0, "cw"    # Lcom/sleepycat/asm/ClassWriter;
    .param p1, "desc"    # Ljava/lang/String;

    .line 730
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 731
    .local v1, "index":I
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/high16 v3, 0x1700000

    sparse-switch v2, :sswitch_data_0

    .line 754
    add-int/lit8 v0, v1, 0x1

    .local v0, "dims":I
    goto :goto_1

    .line 733
    .end local v0    # "dims":I
    :sswitch_0
    return v0

    .line 748
    :sswitch_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "t":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v2, v3

    return v2

    .line 743
    .end local v0    # "t":Ljava/lang/String;
    :sswitch_2
    const v0, 0x1000004

    return v0

    .line 741
    :sswitch_3
    const v0, 0x1000002

    return v0

    .line 745
    :sswitch_4
    const v0, 0x1000003

    return v0

    .line 739
    :sswitch_5
    const v0, 0x1000001

    return v0

    .line 755
    .local v0, "dims":I
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x5b

    if-ne v2, v4, :cond_1

    .line 756
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 758
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 786
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 787
    .local v2, "t":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v3, v4

    move v2, v3

    .local v3, "data":I
    goto :goto_2

    .line 760
    .end local v2    # "t":Ljava/lang/String;
    .end local v3    # "data":I
    :sswitch_6
    const v2, 0x1000009

    .line 761
    .local v2, "data":I
    goto :goto_2

    .line 769
    .end local v2    # "data":I
    :sswitch_7
    const v2, 0x100000c

    .line 770
    .restart local v2    # "data":I
    goto :goto_2

    .line 778
    .end local v2    # "data":I
    :sswitch_8
    const v2, 0x1000004

    .line 779
    .restart local v2    # "data":I
    goto :goto_2

    .line 772
    .end local v2    # "data":I
    :sswitch_9
    const v2, 0x1000001

    .line 773
    .restart local v2    # "data":I
    goto :goto_2

    .line 775
    .end local v2    # "data":I
    :sswitch_a
    const v2, 0x1000002

    .line 776
    .restart local v2    # "data":I
    goto :goto_2

    .line 781
    .end local v2    # "data":I
    :sswitch_b
    const v2, 0x1000003

    .line 782
    .restart local v2    # "data":I
    goto :goto_2

    .line 763
    .end local v2    # "data":I
    :sswitch_c
    const v2, 0x100000b

    .line 764
    .restart local v2    # "data":I
    goto :goto_2

    .line 766
    .end local v2    # "data":I
    :sswitch_d
    const v2, 0x100000a

    .line 767
    .restart local v2    # "data":I
    nop

    .line 789
    :goto_2
    sub-int v3, v0, v1

    shl-int/lit8 v3, v3, 0x1c

    or-int/2addr v3, v2

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_5
        0x43 -> :sswitch_5
        0x44 -> :sswitch_4
        0x46 -> :sswitch_3
        0x49 -> :sswitch_5
        0x4a -> :sswitch_2
        0x4c -> :sswitch_1
        0x53 -> :sswitch_5
        0x56 -> :sswitch_0
        0x5a -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x42 -> :sswitch_d
        0x43 -> :sswitch_c
        0x44 -> :sswitch_b
        0x46 -> :sswitch_a
        0x49 -> :sswitch_9
        0x4a -> :sswitch_8
        0x53 -> :sswitch_7
        0x5a -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method execute(IILcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Item;)V
    .locals 16
    .param p1, "opcode"    # I
    .param p2, "arg"    # I
    .param p3, "cw"    # Lcom/sleepycat/asm/ClassWriter;
    .param p4, "item"    # Lcom/sleepycat/asm/Item;

    .line 955
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v7, 0x3

    const/16 v9, 0x5b

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/high16 v12, 0x1700000

    const v13, 0x1000002

    const v15, 0x1000003

    const v8, 0x1000001

    const v5, 0x1000004

    const/4 v6, 0x1

    const/high16 v14, 0x1000000

    packed-switch v1, :pswitch_data_0

    .line 1369
    :pswitch_0
    invoke-direct {v0, v2}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1370
    iget-object v5, v4, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Lcom/sleepycat/asm/Frame;->push(Lcom/sleepycat/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1359
    :pswitch_1
    iget-object v5, v4, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    .line 1360
    .local v5, "s":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    .line 1361
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_0

    .line 1362
    invoke-direct {v0, v3, v5}, Lcom/sleepycat/asm/Frame;->push(Lcom/sleepycat/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1364
    :cond_0
    invoke-virtual {v3, v5}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v6, v12

    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1366
    goto/16 :goto_3

    .line 1350
    .end local v5    # "s":Ljava/lang/String;
    :pswitch_2
    iget-object v5, v4, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    .line 1351
    .restart local v5    # "s":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    .line 1352
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_1

    .line 1353
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v3, v6}, Lcom/sleepycat/asm/Frame;->push(Lcom/sleepycat/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1355
    :cond_1
    const/high16 v6, 0x11700000

    invoke-virtual {v3, v5}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v6, v7

    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1357
    goto/16 :goto_3

    .line 1320
    .end local v5    # "s":Ljava/lang/String;
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    .line 1321
    packed-switch v2, :pswitch_data_1

    .line 1345
    const v5, 0x11000004

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1346
    goto/16 :goto_3

    .line 1335
    :pswitch_4
    const v5, 0x11000001

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1336
    goto/16 :goto_3

    .line 1332
    :pswitch_5
    const v5, 0x1100000c

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1333
    goto/16 :goto_3

    .line 1329
    :pswitch_6
    const v5, 0x1100000a

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1330
    goto/16 :goto_3

    .line 1341
    :pswitch_7
    const v5, 0x11000003

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1342
    goto/16 :goto_3

    .line 1338
    :pswitch_8
    const v5, 0x11000002

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1339
    goto/16 :goto_3

    .line 1326
    :pswitch_9
    const v5, 0x1100000b

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1327
    goto/16 :goto_3

    .line 1323
    :pswitch_a
    const v5, 0x11000009

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1324
    goto/16 :goto_3

    .line 1317
    :pswitch_b
    const/high16 v5, 0x1800000

    iget-object v6, v4, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v3, v6, v2}, Lcom/sleepycat/asm/ClassWriter;->addUninitializedType(Ljava/lang/String;I)I

    move-result v6

    or-int/2addr v5, v6

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1318
    goto/16 :goto_3

    .line 1313
    :pswitch_c
    iget-object v5, v4, Lcom/sleepycat/asm/Item;->strVal2:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1314
    iget-object v5, v4, Lcom/sleepycat/asm/Item;->strVal2:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Lcom/sleepycat/asm/Frame;->push(Lcom/sleepycat/asm/ClassWriter;Ljava/lang/String;)V

    .line 1315
    goto/16 :goto_3

    .line 1302
    :pswitch_d
    iget-object v5, v4, Lcom/sleepycat/asm/Item;->strVal3:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1303
    const/16 v5, 0xb8

    if-eq v1, v5, :cond_2

    .line 1304
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v5

    .line 1305
    .local v5, "t1":I
    const/16 v6, 0xb7

    if-ne v1, v6, :cond_2

    iget-object v6, v4, Lcom/sleepycat/asm/Item;->strVal2:Ljava/lang/String;

    .line 1306
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_2

    .line 1307
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->init(I)V

    .line 1310
    .end local v5    # "t1":I
    :cond_2
    iget-object v5, v4, Lcom/sleepycat/asm/Item;->strVal3:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Lcom/sleepycat/asm/Frame;->push(Lcom/sleepycat/asm/ClassWriter;Ljava/lang/String;)V

    .line 1311
    goto/16 :goto_3

    .line 1295
    :pswitch_e
    iget-object v5, v4, Lcom/sleepycat/asm/Item;->strVal3:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1296
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    .line 1297
    goto/16 :goto_3

    .line 1291
    :pswitch_f
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1292
    iget-object v5, v4, Lcom/sleepycat/asm/Item;->strVal3:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Lcom/sleepycat/asm/Frame;->push(Lcom/sleepycat/asm/ClassWriter;Ljava/lang/String;)V

    .line 1293
    goto/16 :goto_3

    .line 1288
    :pswitch_10
    iget-object v5, v4, Lcom/sleepycat/asm/Item;->strVal3:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1289
    goto/16 :goto_3

    .line 1285
    :pswitch_11
    iget-object v5, v4, Lcom/sleepycat/asm/Item;->strVal3:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Lcom/sleepycat/asm/Frame;->push(Lcom/sleepycat/asm/ClassWriter;Ljava/lang/String;)V

    .line 1286
    goto/16 :goto_3

    .line 1282
    :pswitch_12
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "JSR/RET are not supported with computeFrames option"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1277
    :pswitch_13
    invoke-direct {v0, v11}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1278
    invoke-direct {v0, v8}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1279
    goto/16 :goto_3

    .line 1271
    :pswitch_14
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1272
    invoke-direct {v0, v8}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1273
    goto/16 :goto_3

    .line 1264
    :pswitch_15
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1265
    invoke-direct {v0, v15}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1266
    invoke-direct {v0, v14}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1267
    goto/16 :goto_3

    .line 1259
    :pswitch_16
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1260
    invoke-direct {v0, v13}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1261
    goto/16 :goto_3

    .line 1254
    :pswitch_17
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1255
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1256
    invoke-direct {v0, v14}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1257
    goto/16 :goto_3

    .line 1250
    :pswitch_18
    invoke-direct {v0, v2, v8}, Lcom/sleepycat/asm/Frame;->set(II)V

    .line 1251
    goto/16 :goto_3

    .line 1245
    :pswitch_19
    invoke-direct {v0, v7}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1246
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1247
    invoke-direct {v0, v14}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1248
    goto/16 :goto_3

    .line 1238
    :pswitch_1a
    invoke-direct {v0, v11}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1239
    invoke-direct {v0, v15}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1240
    invoke-direct {v0, v14}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1241
    goto/16 :goto_3

    .line 1230
    :pswitch_1b
    const/4 v5, 0x2

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1231
    invoke-direct {v0, v13}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1232
    goto/16 :goto_3

    .line 1219
    :pswitch_1c
    invoke-direct {v0, v11}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1220
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1221
    invoke-direct {v0, v14}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1222
    goto/16 :goto_3

    .line 1208
    :pswitch_1d
    const/4 v5, 0x2

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1209
    invoke-direct {v0, v8}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1210
    goto/16 :goto_3

    .line 1188
    :pswitch_1e
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v5

    .line 1189
    .restart local v5    # "t1":I
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v6

    .line 1190
    .local v6, "t2":I
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1191
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1192
    goto/16 :goto_3

    .line 1176
    .end local v5    # "t1":I
    .end local v6    # "t2":I
    :pswitch_1f
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v5

    .line 1177
    .restart local v5    # "t1":I
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v6

    .line 1178
    .restart local v6    # "t2":I
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v7

    .line 1179
    .local v7, "t3":I
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v8

    .line 1180
    .local v8, "t4":I
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1181
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1182
    invoke-direct {v0, v8}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1183
    invoke-direct {v0, v7}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1184
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1185
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1186
    goto/16 :goto_3

    .line 1166
    .end local v5    # "t1":I
    .end local v6    # "t2":I
    .end local v7    # "t3":I
    .end local v8    # "t4":I
    :pswitch_20
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v5

    .line 1167
    .restart local v5    # "t1":I
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v6

    .line 1168
    .restart local v6    # "t2":I
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v7

    .line 1169
    .restart local v7    # "t3":I
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1170
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1171
    invoke-direct {v0, v7}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1172
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1173
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1174
    goto/16 :goto_3

    .line 1158
    .end local v5    # "t1":I
    .end local v6    # "t2":I
    .end local v7    # "t3":I
    :pswitch_21
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v5

    .line 1159
    .restart local v5    # "t1":I
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v6

    .line 1160
    .restart local v6    # "t2":I
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1161
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1162
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1163
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1164
    goto/16 :goto_3

    .line 1149
    .end local v5    # "t1":I
    .end local v6    # "t2":I
    :pswitch_22
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v5

    .line 1150
    .restart local v5    # "t1":I
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v6

    .line 1151
    .restart local v6    # "t2":I
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v7

    .line 1152
    .restart local v7    # "t3":I
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1153
    invoke-direct {v0, v7}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1154
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1155
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1156
    goto/16 :goto_3

    .line 1142
    .end local v5    # "t1":I
    .end local v6    # "t2":I
    .end local v7    # "t3":I
    :pswitch_23
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v5

    .line 1143
    .restart local v5    # "t1":I
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v6

    .line 1144
    .restart local v6    # "t2":I
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1145
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1146
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1147
    goto/16 :goto_3

    .line 1137
    .end local v5    # "t1":I
    .end local v6    # "t2":I
    :pswitch_24
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v5

    .line 1138
    .restart local v5    # "t1":I
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1139
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1140
    goto/16 :goto_3

    .line 1134
    .end local v5    # "t1":I
    :pswitch_25
    const/4 v5, 0x2

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1135
    goto/16 :goto_3

    .line 1121
    :pswitch_26
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1122
    goto/16 :goto_3

    .line 1102
    :pswitch_27
    invoke-direct {v0, v11}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1103
    goto/16 :goto_3

    .line 1098
    :pswitch_28
    invoke-direct {v0, v7}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1099
    goto/16 :goto_3

    .line 1078
    :pswitch_29
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1079
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v6

    .line 1080
    .local v6, "t1":I
    invoke-direct {v0, v2, v6}, Lcom/sleepycat/asm/Frame;->set(II)V

    .line 1081
    add-int/lit8 v7, v2, 0x1

    invoke-direct {v0, v7, v14}, Lcom/sleepycat/asm/Frame;->set(II)V

    .line 1082
    if-lez v2, :cond_8

    .line 1083
    add-int/lit8 v7, v2, -0x1

    invoke-direct {v0, v7}, Lcom/sleepycat/asm/Frame;->get(I)I

    move-result v7

    .line 1085
    .local v7, "t2":I
    if-eq v7, v5, :cond_4

    if-ne v7, v15, :cond_3

    goto :goto_0

    .line 1087
    :cond_3
    const/high16 v5, 0xf000000

    and-int/2addr v5, v7

    if-eq v5, v14, :cond_8

    .line 1088
    add-int/lit8 v5, v2, -0x1

    const/high16 v8, 0x800000

    or-int/2addr v8, v7

    invoke-direct {v0, v5, v8}, Lcom/sleepycat/asm/Frame;->set(II)V

    goto/16 :goto_3

    .line 1086
    :cond_4
    :goto_0
    add-int/lit8 v5, v2, -0x1

    invoke-direct {v0, v5, v14}, Lcom/sleepycat/asm/Frame;->set(II)V

    goto/16 :goto_3

    .line 1064
    .end local v6    # "t1":I
    .end local v7    # "t2":I
    :pswitch_2a
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v6

    .line 1065
    .restart local v6    # "t1":I
    invoke-direct {v0, v2, v6}, Lcom/sleepycat/asm/Frame;->set(II)V

    .line 1066
    if-lez v2, :cond_8

    .line 1067
    add-int/lit8 v7, v2, -0x1

    invoke-direct {v0, v7}, Lcom/sleepycat/asm/Frame;->get(I)I

    move-result v7

    .line 1069
    .restart local v7    # "t2":I
    if-eq v7, v5, :cond_6

    if-ne v7, v15, :cond_5

    goto :goto_1

    .line 1071
    :cond_5
    const/high16 v5, 0xf000000

    and-int/2addr v5, v7

    if-eq v5, v14, :cond_8

    .line 1072
    add-int/lit8 v5, v2, -0x1

    const/high16 v8, 0x800000

    or-int/2addr v8, v7

    invoke-direct {v0, v5, v8}, Lcom/sleepycat/asm/Frame;->set(II)V

    goto/16 :goto_3

    .line 1070
    :cond_6
    :goto_1
    add-int/lit8 v5, v2, -0x1

    invoke-direct {v0, v5, v14}, Lcom/sleepycat/asm/Frame;->set(II)V

    goto/16 :goto_3

    .line 1057
    .end local v6    # "t1":I
    .end local v7    # "t2":I
    :pswitch_2b
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1058
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/Frame;->pop()I

    move-result v5

    .line 1059
    .restart local v5    # "t1":I
    const v6, 0x1000005

    if-ne v5, v6, :cond_7

    move v6, v5

    goto :goto_2

    :cond_7
    const/high16 v6, -0x10000000

    add-int/2addr v6, v5

    :goto_2
    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1060
    goto/16 :goto_3

    .line 1052
    .end local v5    # "t1":I
    :pswitch_2c
    const/4 v6, 0x2

    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1053
    invoke-direct {v0, v15}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1054
    invoke-direct {v0, v14}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1055
    goto/16 :goto_3

    .line 1047
    :pswitch_2d
    const/4 v6, 0x2

    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1048
    invoke-direct {v0, v13}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1049
    goto/16 :goto_3

    .line 1042
    :pswitch_2e
    const/4 v6, 0x2

    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1043
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1044
    invoke-direct {v0, v14}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1045
    goto/16 :goto_3

    .line 1037
    :pswitch_2f
    const/4 v6, 0x2

    invoke-direct {v0, v6}, Lcom/sleepycat/asm/Frame;->pop(I)V

    .line 1038
    invoke-direct {v0, v8}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1039
    goto/16 :goto_3

    .line 1031
    :pswitch_30
    invoke-direct {v0, v2}, Lcom/sleepycat/asm/Frame;->get(I)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1032
    goto/16 :goto_3

    .line 1001
    :pswitch_31
    iget v6, v4, Lcom/sleepycat/asm/Item;->type:I

    sparse-switch v6, :sswitch_data_0

    .line 1027
    const-string v5, "java/lang/invoke/MethodHandle"

    invoke-virtual {v3, v5}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v5, v12

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1029
    goto :goto_3

    .line 1023
    :sswitch_0
    const-string v5, "java/lang/invoke/MethodType"

    invoke-virtual {v3, v5}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v5, v12

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1024
    goto :goto_3

    .line 1020
    :sswitch_1
    const-string v5, "java/lang/String"

    invoke-virtual {v3, v5}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v5, v12

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1021
    goto :goto_3

    .line 1017
    :sswitch_2
    const-string v5, "java/lang/Class"

    invoke-virtual {v3, v5}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v5, v12

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1018
    goto :goto_3

    .line 1013
    :sswitch_3
    invoke-direct {v0, v15}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1014
    invoke-direct {v0, v14}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1015
    goto :goto_3

    .line 1006
    :sswitch_4
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1007
    invoke-direct {v0, v14}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1008
    goto :goto_3

    .line 1010
    :sswitch_5
    invoke-direct {v0, v13}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1011
    goto :goto_3

    .line 1003
    :sswitch_6
    invoke-direct {v0, v8}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 1004
    goto :goto_3

    .line 997
    :pswitch_32
    invoke-direct {v0, v15}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 998
    invoke-direct {v0, v14}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 999
    goto :goto_3

    .line 992
    :pswitch_33
    invoke-direct {v0, v13}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 993
    goto :goto_3

    .line 985
    :pswitch_34
    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 986
    invoke-direct {v0, v14}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 987
    goto :goto_3

    .line 980
    :pswitch_35
    invoke-direct {v0, v8}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 981
    goto :goto_3

    .line 968
    :pswitch_36
    const v5, 0x1000005

    invoke-direct {v0, v5}, Lcom/sleepycat/asm/Frame;->push(I)V

    .line 969
    goto :goto_3

    .line 966
    :pswitch_37
    nop

    .line 1373
    :cond_8
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_34
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_32
        :pswitch_32
        :pswitch_35
        :pswitch_35
        :pswitch_31
        :pswitch_0
        :pswitch_0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2a
        :pswitch_29
        :pswitch_2a
        :pswitch_29
        :pswitch_2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_27
        :pswitch_28
        :pswitch_27
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_1d
        :pswitch_19
        :pswitch_1d
        :pswitch_19
        :pswitch_1d
        :pswitch_19
        :pswitch_1d
        :pswitch_1c
        :pswitch_1d
        :pswitch_1c
        :pswitch_1d
        :pswitch_1c
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_1d
        :pswitch_1b
        :pswitch_2c
        :pswitch_14
        :pswitch_17
        :pswitch_15
        :pswitch_1d
        :pswitch_2e
        :pswitch_1b
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_13
        :pswitch_1d
        :pswitch_1d
        :pswitch_13
        :pswitch_13
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_37
        :pswitch_12
        :pswitch_12
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_26
        :pswitch_25
        :pswitch_26
        :pswitch_37
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_3
        :pswitch_2
        :pswitch_14
        :pswitch_26
        :pswitch_1
        :pswitch_14
        :pswitch_26
        :pswitch_26
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_26
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_6
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method final initInputFrame(Lcom/sleepycat/asm/ClassWriter;I[Lcom/sleepycat/asm/Type;I)V
    .locals 6
    .param p1, "cw"    # Lcom/sleepycat/asm/ClassWriter;
    .param p2, "access"    # I
    .param p3, "args"    # [Lcom/sleepycat/asm/Type;
    .param p4, "maxLocals"    # I

    .line 918
    new-array v0, p4, [I

    iput-object v0, p0, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    .line 919
    const/4 v1, 0x0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sleepycat/asm/Frame;->inputStack:[I

    .line 920
    const/4 v1, 0x0

    .line 921
    .local v1, "i":I
    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_1

    .line 922
    const/high16 v2, 0x80000

    and-int/2addr v2, p2

    if-nez v2, :cond_0

    .line 923
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    const/high16 v3, 0x1700000

    iget-object v4, p1, Lcom/sleepycat/asm/ClassWriter;->thisName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v3, v4

    aput v3, v0, v1

    move v1, v2

    goto :goto_0

    .line 925
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const v3, 0x1000006

    aput v3, v0, v1

    move v1, v2

    .line 928
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    array-length v2, p3

    const/high16 v3, 0x1000000

    if-ge v0, v2, :cond_4

    .line 929
    aget-object v2, p3, v0

    invoke-virtual {v2}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sleepycat/asm/Frame;->type(Lcom/sleepycat/asm/ClassWriter;Ljava/lang/String;)I

    move-result v2

    .line 930
    .local v2, "t":I
    iget-object v4, p0, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    aput v2, v4, v1

    .line 931
    const v1, 0x1000004

    if-eq v2, v1, :cond_3

    const v1, 0x1000003

    if-ne v2, v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v5

    goto :goto_3

    .line 932
    :cond_3
    :goto_2
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "i":I
    .restart local v1    # "i":I
    aput v3, v4, v5

    .line 928
    .end local v2    # "t":I
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 935
    .end local v0    # "j":I
    :cond_4
    :goto_4
    if-ge v1, p4, :cond_5

    .line 936
    iget-object v0, p0, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput v3, v0, v1

    move v1, v2

    goto :goto_4

    .line 938
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_5
    return-void
.end method

.method final merge(Lcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Frame;I)Z
    .locals 19
    .param p1, "cw"    # Lcom/sleepycat/asm/ClassWriter;
    .param p2, "frame"    # Lcom/sleepycat/asm/Frame;
    .param p3, "edge"    # I

    .line 1391
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    .line 1394
    .local v4, "changed":Z
    iget-object v5, v0, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    array-length v5, v5

    .line 1395
    .local v5, "nLocal":I
    iget-object v6, v0, Lcom/sleepycat/asm/Frame;->inputStack:[I

    array-length v6, v6

    .line 1396
    .local v6, "nStack":I
    iget-object v7, v2, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    if-nez v7, :cond_0

    .line 1397
    new-array v7, v5, [I

    iput-object v7, v2, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    .line 1398
    const/4 v4, 0x1

    .line 1401
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/high16 v10, 0x800000

    const/high16 v11, 0x2000000

    const/high16 v12, 0x1000000

    const/high16 v13, 0xf000000

    const/high16 v14, -0x10000000

    const v15, 0x7fffff

    if-ge v7, v5, :cond_8

    .line 1402
    iget-object v8, v0, Lcom/sleepycat/asm/Frame;->outputLocals:[I

    if-eqz v8, :cond_6

    array-length v9, v8

    if-ge v7, v9, :cond_6

    .line 1403
    aget v8, v8, v7

    .line 1404
    .local v8, "s":I
    if-nez v8, :cond_1

    .line 1405
    iget-object v9, v0, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    aget v9, v9, v7

    .local v9, "t":I
    goto :goto_2

    .line 1407
    .end local v9    # "t":I
    :cond_1
    and-int v9, v8, v14

    .line 1408
    .local v9, "dim":I
    and-int/2addr v13, v8

    .line 1409
    .local v13, "kind":I
    if-ne v13, v12, :cond_2

    .line 1410
    move v10, v8

    move v9, v10

    .local v10, "t":I
    goto :goto_2

    .line 1412
    .end local v10    # "t":I
    :cond_2
    if-ne v13, v11, :cond_3

    .line 1413
    iget-object v11, v0, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    and-int v12, v8, v15

    aget v11, v11, v12

    add-int/2addr v11, v9

    .local v11, "t":I
    goto :goto_1

    .line 1415
    .end local v11    # "t":I
    :cond_3
    iget-object v11, v0, Lcom/sleepycat/asm/Frame;->inputStack:[I

    and-int v12, v8, v15

    sub-int v12, v6, v12

    aget v11, v11, v12

    add-int/2addr v11, v9

    .line 1417
    .restart local v11    # "t":I
    :goto_1
    and-int/2addr v10, v8

    if-eqz v10, :cond_5

    const v10, 0x1000004

    if-eq v11, v10, :cond_4

    const v10, 0x1000003

    if-ne v11, v10, :cond_5

    .line 1419
    :cond_4
    const/high16 v10, 0x1000000

    move v9, v10

    .end local v11    # "t":I
    .restart local v10    # "t":I
    goto :goto_2

    .line 1426
    .end local v8    # "s":I
    .end local v9    # "dim":I
    .end local v10    # "t":I
    .end local v13    # "kind":I
    .restart local v11    # "t":I
    :cond_5
    move v9, v11

    goto :goto_2

    .line 1424
    .end local v11    # "t":I
    :cond_6
    iget-object v8, v0, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    aget v9, v8, v7

    .line 1426
    .local v9, "t":I
    :goto_2
    iget-object v8, v0, Lcom/sleepycat/asm/Frame;->initializations:[I

    if-eqz v8, :cond_7

    .line 1427
    invoke-direct {v0, v1, v9}, Lcom/sleepycat/asm/Frame;->init(Lcom/sleepycat/asm/ClassWriter;I)I

    move-result v9

    .line 1429
    :cond_7
    iget-object v8, v2, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    invoke-static {v1, v9, v8, v7}, Lcom/sleepycat/asm/Frame;->merge(Lcom/sleepycat/asm/ClassWriter;I[II)Z

    move-result v8

    or-int/2addr v4, v8

    .line 1401
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1432
    .end local v9    # "t":I
    :cond_8
    if-lez v3, :cond_b

    .line 1433
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_9

    .line 1434
    iget-object v8, v0, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    aget v8, v8, v7

    .line 1435
    .local v8, "t":I
    iget-object v9, v2, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    invoke-static {v1, v8, v9, v7}, Lcom/sleepycat/asm/Frame;->merge(Lcom/sleepycat/asm/ClassWriter;I[II)Z

    move-result v9

    or-int/2addr v4, v9

    .line 1433
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1437
    .end local v8    # "t":I
    :cond_9
    iget-object v8, v2, Lcom/sleepycat/asm/Frame;->inputStack:[I

    if-nez v8, :cond_a

    .line 1438
    const/4 v8, 0x1

    new-array v8, v8, [I

    iput-object v8, v2, Lcom/sleepycat/asm/Frame;->inputStack:[I

    .line 1439
    const/4 v4, 0x1

    .line 1441
    :cond_a
    iget-object v8, v2, Lcom/sleepycat/asm/Frame;->inputStack:[I

    const/4 v9, 0x0

    invoke-static {v1, v3, v8, v9}, Lcom/sleepycat/asm/Frame;->merge(Lcom/sleepycat/asm/ClassWriter;I[II)Z

    move-result v8

    or-int/2addr v4, v8

    .line 1442
    return v4

    .line 1445
    :cond_b
    iget-object v8, v0, Lcom/sleepycat/asm/Frame;->inputStack:[I

    array-length v8, v8

    iget-object v9, v0, Lcom/sleepycat/asm/Frame;->owner:Lcom/sleepycat/asm/Label;

    iget v9, v9, Lcom/sleepycat/asm/Label;->inputStackTop:I

    add-int/2addr v8, v9

    .line 1446
    .local v8, "nInputStack":I
    iget-object v9, v2, Lcom/sleepycat/asm/Frame;->inputStack:[I

    if-nez v9, :cond_c

    .line 1447
    iget v9, v0, Lcom/sleepycat/asm/Frame;->outputStackTop:I

    add-int/2addr v9, v8

    new-array v9, v9, [I

    iput-object v9, v2, Lcom/sleepycat/asm/Frame;->inputStack:[I

    .line 1448
    const/4 v4, 0x1

    .line 1451
    :cond_c
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v8, :cond_e

    .line 1452
    iget-object v9, v0, Lcom/sleepycat/asm/Frame;->inputStack:[I

    aget v9, v9, v7

    .line 1453
    .restart local v9    # "t":I
    iget-object v10, v0, Lcom/sleepycat/asm/Frame;->initializations:[I

    if-eqz v10, :cond_d

    .line 1454
    invoke-direct {v0, v1, v9}, Lcom/sleepycat/asm/Frame;->init(Lcom/sleepycat/asm/ClassWriter;I)I

    move-result v9

    .line 1456
    :cond_d
    iget-object v10, v2, Lcom/sleepycat/asm/Frame;->inputStack:[I

    invoke-static {v1, v9, v10, v7}, Lcom/sleepycat/asm/Frame;->merge(Lcom/sleepycat/asm/ClassWriter;I[II)Z

    move-result v10

    or-int/2addr v4, v10

    .line 1451
    add-int/lit8 v7, v7, 0x1

    const/high16 v10, 0x800000

    goto :goto_4

    .line 1458
    .end local v9    # "t":I
    :cond_e
    const/4 v7, 0x0

    :goto_5
    iget v9, v0, Lcom/sleepycat/asm/Frame;->outputStackTop:I

    if-ge v7, v9, :cond_15

    .line 1459
    iget-object v9, v0, Lcom/sleepycat/asm/Frame;->outputStack:[I

    aget v9, v9, v7

    .line 1460
    .local v9, "s":I
    and-int v10, v9, v14

    .line 1461
    .local v10, "dim":I
    and-int v14, v9, v13

    .line 1462
    .local v14, "kind":I
    if-ne v14, v12, :cond_f

    .line 1463
    move/from16 v17, v9

    move/from16 v11, v17

    const v12, 0x1000003

    const/high16 v16, 0x800000

    .local v17, "t":I
    goto :goto_8

    .line 1465
    .end local v17    # "t":I
    :cond_f
    if-ne v14, v11, :cond_10

    .line 1466
    iget-object v11, v0, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    and-int v18, v9, v15

    aget v11, v11, v18

    add-int/2addr v11, v10

    .restart local v11    # "t":I
    goto :goto_6

    .line 1468
    .end local v11    # "t":I
    :cond_10
    iget-object v11, v0, Lcom/sleepycat/asm/Frame;->inputStack:[I

    and-int v18, v9, v15

    sub-int v18, v6, v18

    aget v11, v11, v18

    add-int/2addr v11, v10

    .line 1470
    .restart local v11    # "t":I
    :goto_6
    const/high16 v16, 0x800000

    and-int v18, v9, v16

    if-eqz v18, :cond_12

    const v12, 0x1000004

    if-eq v11, v12, :cond_11

    const v12, 0x1000003

    if-ne v11, v12, :cond_13

    goto :goto_7

    :cond_11
    const v12, 0x1000003

    .line 1472
    :goto_7
    const/high16 v11, 0x1000000

    goto :goto_8

    .line 1470
    :cond_12
    const v12, 0x1000003

    .line 1475
    :cond_13
    :goto_8
    iget-object v12, v0, Lcom/sleepycat/asm/Frame;->initializations:[I

    if-eqz v12, :cond_14

    .line 1476
    invoke-direct {v0, v1, v11}, Lcom/sleepycat/asm/Frame;->init(Lcom/sleepycat/asm/ClassWriter;I)I

    move-result v11

    .line 1478
    :cond_14
    iget-object v12, v2, Lcom/sleepycat/asm/Frame;->inputStack:[I

    add-int v13, v8, v7

    invoke-static {v1, v11, v12, v13}, Lcom/sleepycat/asm/Frame;->merge(Lcom/sleepycat/asm/ClassWriter;I[II)Z

    move-result v12

    or-int/2addr v4, v12

    .line 1458
    add-int/lit8 v7, v7, 0x1

    const/high16 v11, 0x2000000

    const/high16 v12, 0x1000000

    const/high16 v13, 0xf000000

    const/high16 v14, -0x10000000

    goto :goto_5

    .line 1480
    .end local v9    # "s":I
    .end local v10    # "dim":I
    .end local v11    # "t":I
    .end local v14    # "kind":I
    :cond_15
    return v4
.end method

.method final set(Lcom/sleepycat/asm/ClassWriter;I[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "cw"    # Lcom/sleepycat/asm/ClassWriter;
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 548
    iget-object v0, p0, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    invoke-static {p1, p2, p3, v0}, Lcom/sleepycat/asm/Frame;->convert(Lcom/sleepycat/asm/ClassWriter;I[Ljava/lang/Object;[I)I

    move-result v0

    .line 549
    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    const/high16 v3, 0x1000000

    aput v3, v1, v0

    move v0, v2

    goto :goto_0

    .line 552
    .end local v2    # "i":I
    .restart local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 553
    .local v1, "nStackTop":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p4, :cond_3

    .line 554
    aget-object v3, p5, v2

    sget-object v4, Lcom/sleepycat/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v3, v4, :cond_1

    aget-object v3, p5, v2

    sget-object v4, Lcom/sleepycat/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v3, v4, :cond_2

    .line 555
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 553
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 558
    .end local v2    # "j":I
    :cond_3
    add-int v2, p4, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sleepycat/asm/Frame;->inputStack:[I

    .line 559
    invoke-static {p1, p4, p5, v2}, Lcom/sleepycat/asm/Frame;->convert(Lcom/sleepycat/asm/ClassWriter;I[Ljava/lang/Object;[I)I

    .line 560
    const/4 v2, 0x0

    iput v2, p0, Lcom/sleepycat/asm/Frame;->outputStackTop:I

    .line 561
    iput v2, p0, Lcom/sleepycat/asm/Frame;->initializationCount:I

    .line 562
    return-void
.end method

.method final set(Lcom/sleepycat/asm/Frame;)V
    .locals 1
    .param p1, "f"    # Lcom/sleepycat/asm/Frame;

    .line 618
    iget-object v0, p1, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    iput-object v0, p0, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    .line 619
    iget-object v0, p1, Lcom/sleepycat/asm/Frame;->inputStack:[I

    iput-object v0, p0, Lcom/sleepycat/asm/Frame;->inputStack:[I

    .line 620
    iget-object v0, p1, Lcom/sleepycat/asm/Frame;->outputLocals:[I

    iput-object v0, p0, Lcom/sleepycat/asm/Frame;->outputLocals:[I

    .line 621
    iget-object v0, p1, Lcom/sleepycat/asm/Frame;->outputStack:[I

    iput-object v0, p0, Lcom/sleepycat/asm/Frame;->outputStack:[I

    .line 622
    iget v0, p1, Lcom/sleepycat/asm/Frame;->outputStackTop:I

    iput v0, p0, Lcom/sleepycat/asm/Frame;->outputStackTop:I

    .line 623
    iget v0, p1, Lcom/sleepycat/asm/Frame;->initializationCount:I

    iput v0, p0, Lcom/sleepycat/asm/Frame;->initializationCount:I

    .line 624
    iget-object v0, p1, Lcom/sleepycat/asm/Frame;->initializations:[I

    iput-object v0, p0, Lcom/sleepycat/asm/Frame;->initializations:[I

    .line 625
    return-void
.end method
