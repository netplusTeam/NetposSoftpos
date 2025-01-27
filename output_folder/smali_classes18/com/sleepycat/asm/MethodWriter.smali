.class Lcom/sleepycat/asm/MethodWriter;
.super Lcom/sleepycat/asm/MethodVisitor;
.source "MethodWriter.java"


# static fields
.field static final ACC_CONSTRUCTOR:I = 0x80000

.field static final APPEND_FRAME:I = 0xfc

.field static final CHOP_FRAME:I = 0xf8

.field static final FRAMES:I = 0x0

.field static final FULL_FRAME:I = 0xff

.field static final INSERTED_FRAMES:I = 0x1

.field static final MAXS:I = 0x2

.field static final NOTHING:I = 0x3

.field static final RESERVED:I = 0x80

.field static final SAME_FRAME:I = 0x0

.field static final SAME_FRAME_EXTENDED:I = 0xfb

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME:I = 0x40

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME_EXTENDED:I = 0xf7


# instance fields
.field private access:I

.field private annd:Lcom/sleepycat/asm/ByteVector;

.field private anns:Lcom/sleepycat/asm/AnnotationWriter;

.field private attrs:Lcom/sleepycat/asm/Attribute;

.field private cattrs:Lcom/sleepycat/asm/Attribute;

.field classReaderLength:I

.field classReaderOffset:I

.field private code:Lcom/sleepycat/asm/ByteVector;

.field private final compute:I

.field private ctanns:Lcom/sleepycat/asm/AnnotationWriter;

.field private currentBlock:Lcom/sleepycat/asm/Label;

.field private currentLocals:I

.field final cw:Lcom/sleepycat/asm/ClassWriter;

.field private final desc:I

.field private final descriptor:Ljava/lang/String;

.field exceptionCount:I

.field exceptions:[I

.field private firstHandler:Lcom/sleepycat/asm/Handler;

.field private frame:[I

.field frameCount:I

.field private handlerCount:I

.field private ianns:Lcom/sleepycat/asm/AnnotationWriter;

.field private ictanns:Lcom/sleepycat/asm/AnnotationWriter;

.field private ipanns:[Lcom/sleepycat/asm/AnnotationWriter;

.field private itanns:Lcom/sleepycat/asm/AnnotationWriter;

.field private labels:Lcom/sleepycat/asm/Label;

.field private lastCodeOffset:I

.field private lastHandler:Lcom/sleepycat/asm/Handler;

.field private lineNumber:Lcom/sleepycat/asm/ByteVector;

.field private lineNumberCount:I

.field private localVar:Lcom/sleepycat/asm/ByteVector;

.field private localVarCount:I

.field private localVarType:Lcom/sleepycat/asm/ByteVector;

.field private localVarTypeCount:I

.field private maxLocals:I

.field private maxStack:I

.field private maxStackSize:I

.field private methodParameters:Lcom/sleepycat/asm/ByteVector;

.field private methodParametersCount:I

.field private final name:I

.field private panns:[Lcom/sleepycat/asm/AnnotationWriter;

.field private previousBlock:Lcom/sleepycat/asm/Label;

.field private previousFrame:[I

.field private previousFrameOffset:I

.field signature:Ljava/lang/String;

.field private stackMap:Lcom/sleepycat/asm/ByteVector;

.field private stackSize:I

.field private subroutines:I

.field private synthetics:I

.field private tanns:Lcom/sleepycat/asm/AnnotationWriter;


# direct methods
.method constructor <init>(Lcom/sleepycat/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 3
    .param p1, "cw"    # Lcom/sleepycat/asm/ClassWriter;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "exceptions"    # [Ljava/lang/String;
    .param p7, "compute"    # I

    .line 459
    const/high16 v0, 0x60000

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/MethodVisitor;-><init>(I)V

    .line 243
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    .line 460
    iget-object v0, p1, Lcom/sleepycat/asm/ClassWriter;->firstMethod:Lcom/sleepycat/asm/MethodWriter;

    if-nez v0, :cond_0

    .line 461
    iput-object p0, p1, Lcom/sleepycat/asm/ClassWriter;->firstMethod:Lcom/sleepycat/asm/MethodWriter;

    goto :goto_0

    .line 463
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/asm/ClassWriter;->lastMethod:Lcom/sleepycat/asm/MethodWriter;

    iput-object p0, v0, Lcom/sleepycat/asm/MethodWriter;->mv:Lcom/sleepycat/asm/MethodVisitor;

    .line 465
    :goto_0
    iput-object p0, p1, Lcom/sleepycat/asm/ClassWriter;->lastMethod:Lcom/sleepycat/asm/MethodWriter;

    .line 466
    iput-object p1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    .line 467
    iput p2, p0, Lcom/sleepycat/asm/MethodWriter;->access:I

    .line 468
    const-string v0, "<init>"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->access:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->access:I

    .line 471
    :cond_1
    invoke-virtual {p1, p3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->name:I

    .line 472
    invoke-virtual {p1, p4}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->desc:I

    .line 473
    iput-object p4, p0, Lcom/sleepycat/asm/MethodWriter;->descriptor:Ljava/lang/String;

    .line 474
    iput-object p5, p0, Lcom/sleepycat/asm/MethodWriter;->signature:Ljava/lang/String;

    .line 475
    if-eqz p6, :cond_2

    array-length v0, p6

    if-lez v0, :cond_2

    .line 476
    array-length v0, p6

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->exceptionCount:I

    .line 477
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->exceptions:[I

    .line 478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->exceptionCount:I

    if-ge v0, v1, :cond_2

    .line 479
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->exceptions:[I

    aget-object v2, p6, v0

    invoke-virtual {p1, v2}, Lcom/sleepycat/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 482
    .end local v0    # "i":I
    :cond_2
    iput p7, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    .line 483
    const/4 v0, 0x3

    if-eq p7, v0, :cond_4

    .line 485
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v0}, Lcom/sleepycat/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    .line 486
    .local v0, "size":I
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_3

    .line 487
    add-int/lit8 v0, v0, -0x1

    .line 489
    :cond_3
    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->maxLocals:I

    .line 490
    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentLocals:I

    .line 492
    new-instance v1, Lcom/sleepycat/asm/Label;

    invoke-direct {v1}, Lcom/sleepycat/asm/Label;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->labels:Lcom/sleepycat/asm/Label;

    .line 493
    iget v2, v1, Lcom/sleepycat/asm/Label;->status:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lcom/sleepycat/asm/Label;->status:I

    .line 494
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->labels:Lcom/sleepycat/asm/Label;

    invoke-virtual {p0, v1}, Lcom/sleepycat/asm/MethodWriter;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 496
    .end local v0    # "size":I
    :cond_4
    return-void
.end method

.method private addSuccessor(ILcom/sleepycat/asm/Label;)V
    .locals 2
    .param p1, "info"    # I
    .param p2, "successor"    # Lcom/sleepycat/asm/Label;

    .line 1690
    new-instance v0, Lcom/sleepycat/asm/Edge;

    invoke-direct {v0}, Lcom/sleepycat/asm/Edge;-><init>()V

    .line 1691
    .local v0, "b":Lcom/sleepycat/asm/Edge;
    iput p1, v0, Lcom/sleepycat/asm/Edge;->info:I

    .line 1692
    iput-object p2, v0, Lcom/sleepycat/asm/Edge;->successor:Lcom/sleepycat/asm/Label;

    .line 1694
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    iget-object v1, v1, Lcom/sleepycat/asm/Label;->successors:Lcom/sleepycat/asm/Edge;

    iput-object v1, v0, Lcom/sleepycat/asm/Edge;->next:Lcom/sleepycat/asm/Edge;

    .line 1695
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    iput-object v0, v1, Lcom/sleepycat/asm/Label;->successors:Lcom/sleepycat/asm/Edge;

    .line 1696
    return-void
.end method

.method private endFrame()V
    .locals 1

    .line 1864
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->previousFrame:[I

    if-eqz v0, :cond_1

    .line 1865
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    if-nez v0, :cond_0

    .line 1866
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    .line 1868
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/asm/MethodWriter;->writeFrame()V

    .line 1869
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->frameCount:I

    .line 1871
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    iput-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->previousFrame:[I

    .line 1872
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    .line 1873
    return-void
.end method

.method private noSuccessor()V
    .locals 3

    .line 1703
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    if-nez v0, :cond_0

    .line 1704
    new-instance v0, Lcom/sleepycat/asm/Label;

    invoke-direct {v0}, Lcom/sleepycat/asm/Label;-><init>()V

    .line 1705
    .local v0, "l":Lcom/sleepycat/asm/Label;
    new-instance v1, Lcom/sleepycat/asm/Frame;

    invoke-direct {v1}, Lcom/sleepycat/asm/Frame;-><init>()V

    iput-object v1, v0, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    .line 1706
    iget-object v1, v0, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    iput-object v0, v1, Lcom/sleepycat/asm/Frame;->owner:Lcom/sleepycat/asm/Label;

    .line 1707
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v1, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget-object v2, v2, Lcom/sleepycat/asm/ByteVector;->data:[B

    invoke-virtual {v0, p0, v1, v2}, Lcom/sleepycat/asm/Label;->resolve(Lcom/sleepycat/asm/MethodWriter;I[B)Z

    .line 1708
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->previousBlock:Lcom/sleepycat/asm/Label;

    iput-object v0, v1, Lcom/sleepycat/asm/Label;->successor:Lcom/sleepycat/asm/Label;

    .line 1709
    iput-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->previousBlock:Lcom/sleepycat/asm/Label;

    .line 1710
    .end local v0    # "l":Lcom/sleepycat/asm/Label;
    goto :goto_0

    .line 1711
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    iput v1, v0, Lcom/sleepycat/asm/Label;->outputStackMax:I

    .line 1713
    :goto_0
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1714
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    .line 1716
    :cond_1
    return-void
.end method

.method private startFrame(III)I
    .locals 3
    .param p1, "offset"    # I
    .param p2, "nLocal"    # I
    .param p3, "nStack"    # I

    .line 1849
    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    .line 1850
    .local v0, "n":I
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 1851
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    .line 1853
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 1854
    const/4 v2, 0x1

    aput p2, v1, v2

    .line 1855
    const/4 v2, 0x2

    aput p3, v1, v2

    .line 1856
    const/4 v1, 0x3

    return v1
.end method

.method private visitFrame(Lcom/sleepycat/asm/Frame;)V
    .locals 12
    .param p1, "f"    # Lcom/sleepycat/asm/Frame;

    .line 1730
    const/4 v0, 0x0

    .line 1731
    .local v0, "nTop":I
    const/4 v1, 0x0

    .line 1732
    .local v1, "nLocal":I
    const/4 v2, 0x0

    .line 1733
    .local v2, "nStack":I
    iget-object v3, p1, Lcom/sleepycat/asm/Frame;->inputLocals:[I

    .line 1734
    .local v3, "locals":[I
    iget-object v4, p1, Lcom/sleepycat/asm/Frame;->inputStack:[I

    .line 1737
    .local v4, "stacks":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    const v7, 0x1000003

    const v8, 0x1000004

    if-ge v5, v6, :cond_3

    .line 1738
    aget v6, v3, v5

    .line 1739
    .local v6, "t":I
    const/high16 v9, 0x1000000

    if-ne v6, v9, :cond_0

    .line 1740
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1742
    :cond_0
    add-int/lit8 v9, v0, 0x1

    add-int/2addr v1, v9

    .line 1743
    const/4 v0, 0x0

    .line 1745
    :goto_1
    if-eq v6, v8, :cond_1

    if-ne v6, v7, :cond_2

    .line 1746
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 1737
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1751
    .end local v6    # "t":I
    :cond_3
    const/4 v5, 0x0

    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_6

    .line 1752
    aget v6, v4, v5

    .line 1753
    .restart local v6    # "t":I
    add-int/lit8 v2, v2, 0x1

    .line 1754
    if-eq v6, v8, :cond_4

    if-ne v6, v7, :cond_5

    .line 1755
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 1751
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1759
    .end local v6    # "t":I
    :cond_6
    iget-object v6, p1, Lcom/sleepycat/asm/Frame;->owner:Lcom/sleepycat/asm/Label;

    iget v6, v6, Lcom/sleepycat/asm/Label;->position:I

    invoke-direct {p0, v6, v1, v2}, Lcom/sleepycat/asm/MethodWriter;->startFrame(III)I

    move-result v6

    .line 1760
    .local v6, "frameIndex":I
    const/4 v5, 0x0

    :goto_3
    if-lez v1, :cond_9

    .line 1761
    aget v9, v3, v5

    .line 1762
    .local v9, "t":I
    iget-object v10, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    add-int/lit8 v11, v6, 0x1

    .end local v6    # "frameIndex":I
    .local v11, "frameIndex":I
    aput v9, v10, v6

    .line 1763
    if-eq v9, v8, :cond_7

    if-ne v9, v7, :cond_8

    .line 1764
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 1760
    :cond_8
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, -0x1

    move v6, v11

    goto :goto_3

    .line 1767
    .end local v9    # "t":I
    .end local v11    # "frameIndex":I
    .restart local v6    # "frameIndex":I
    :cond_9
    const/4 v5, 0x0

    :goto_4
    array-length v9, v4

    if-ge v5, v9, :cond_c

    .line 1768
    aget v9, v4, v5

    .line 1769
    .restart local v9    # "t":I
    iget-object v10, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    add-int/lit8 v11, v6, 0x1

    .end local v6    # "frameIndex":I
    .restart local v11    # "frameIndex":I
    aput v9, v10, v6

    .line 1770
    if-eq v9, v8, :cond_a

    if-ne v9, v7, :cond_b

    .line 1771
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 1767
    :cond_b
    add-int/lit8 v5, v5, 0x1

    move v6, v11

    goto :goto_4

    .line 1774
    .end local v9    # "t":I
    .end local v11    # "frameIndex":I
    .restart local v6    # "frameIndex":I
    :cond_c
    invoke-direct {p0}, Lcom/sleepycat/asm/MethodWriter;->endFrame()V

    .line 1775
    return-void
.end method

.method private visitImplicitFirstFrame()V
    .locals 11

    .line 1782
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v2}, Lcom/sleepycat/asm/MethodWriter;->startFrame(III)I

    move-result v0

    .line 1783
    .local v0, "frameIndex":I
    iget v2, p0, Lcom/sleepycat/asm/MethodWriter;->access:I

    and-int/lit8 v3, v2, 0x8

    const/high16 v4, 0x1700000

    if-nez v3, :cond_1

    .line 1784
    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 1785
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "frameIndex":I
    .local v3, "frameIndex":I
    iget-object v5, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget-object v6, v5, Lcom/sleepycat/asm/ClassWriter;->thisName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v5, v4

    aput v5, v2, v0

    move v0, v3

    goto :goto_0

    .line 1787
    .end local v3    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v3    # "frameIndex":I
    const v5, 0x1000006

    aput v5, v2, v0

    move v0, v3

    .line 1790
    .end local v3    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 1792
    .local v2, "i":I
    :goto_1
    move v3, v2

    .line 1793
    .local v3, "j":I
    iget-object v5, p0, Lcom/sleepycat/asm/MethodWriter;->descriptor:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x3b

    sparse-switch v2, :sswitch_data_0

    .line 1830
    goto/16 :goto_6

    .line 1811
    :goto_2
    :sswitch_0
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x5b

    if-ne v2, v7, :cond_2

    .line 1812
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1814
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x4c

    if-ne v2, v7, :cond_3

    .line 1815
    add-int/lit8 v6, v6, 0x1

    .line 1816
    :goto_3
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_3

    .line 1817
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1820
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "frameIndex":I
    .local v5, "frameIndex":I
    iget-object v7, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget-object v8, p0, Lcom/sleepycat/asm/MethodWriter;->descriptor:Ljava/lang/String;

    add-int/2addr v6, v1

    invoke-virtual {v8, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sleepycat/asm/Frame;->type(Lcom/sleepycat/asm/ClassWriter;Ljava/lang/String;)I

    move-result v7

    aput v7, v2, v0

    .line 1821
    move v0, v5

    move v2, v6

    goto :goto_5

    .line 1823
    .end local v5    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :goto_4
    :sswitch_1
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_4

    .line 1824
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1826
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v5    # "frameIndex":I
    iget-object v7, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget-object v8, p0, Lcom/sleepycat/asm/MethodWriter;->descriptor:Ljava/lang/String;

    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v10, v6, 0x1

    .line 1827
    .end local v6    # "i":I
    .local v10, "i":I
    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v6, v4

    aput v6, v2, v0

    .line 1828
    move v0, v5

    move v2, v10

    goto :goto_5

    .line 1805
    .end local v5    # "frameIndex":I
    .end local v10    # "i":I
    .restart local v0    # "frameIndex":I
    .restart local v6    # "i":I
    :sswitch_2
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v5    # "frameIndex":I
    const v7, 0x1000004

    aput v7, v2, v0

    .line 1806
    move v0, v5

    move v2, v6

    goto :goto_5

    .line 1802
    .end local v5    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :sswitch_3
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v5    # "frameIndex":I
    const v7, 0x1000002

    aput v7, v2, v0

    .line 1803
    move v0, v5

    move v2, v6

    goto :goto_5

    .line 1808
    .end local v5    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :sswitch_4
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v5    # "frameIndex":I
    const v7, 0x1000003

    aput v7, v2, v0

    .line 1809
    move v0, v5

    move v2, v6

    goto :goto_5

    .line 1799
    .end local v5    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :sswitch_5
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v5    # "frameIndex":I
    const v7, 0x1000001

    aput v7, v2, v0

    .line 1800
    move v0, v5

    move v2, v6

    .line 1832
    .end local v3    # "j":I
    .end local v5    # "frameIndex":I
    .end local v6    # "i":I
    .restart local v0    # "frameIndex":I
    .restart local v2    # "i":I
    :goto_5
    goto/16 :goto_1

    .line 1833
    .end local v2    # "i":I
    .restart local v6    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    add-int/lit8 v3, v0, -0x3

    aput v3, v2, v1

    .line 1834
    invoke-direct {p0}, Lcom/sleepycat/asm/MethodWriter;->endFrame()V

    .line 1835
    return-void

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
        0x5a -> :sswitch_5
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private visitSwitchInsn(Lcom/sleepycat/asm/Label;[Lcom/sleepycat/asm/Label;)V
    .locals 4
    .param p1, "dflt"    # Lcom/sleepycat/asm/Label;
    .param p2, "labels"    # [Lcom/sleepycat/asm/Label;

    .line 1257
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    if-eqz v0, :cond_3

    .line 1258
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    if-nez v1, :cond_1

    .line 1259
    iget-object v0, v0, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    const/16 v1, 0xab

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/sleepycat/asm/Frame;->execute(IILcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Item;)V

    .line 1261
    invoke-direct {p0, v2, p1}, Lcom/sleepycat/asm/MethodWriter;->addSuccessor(ILcom/sleepycat/asm/Label;)V

    .line 1262
    invoke-virtual {p1}, Lcom/sleepycat/asm/Label;->getFirst()Lcom/sleepycat/asm/Label;

    move-result-object v0

    iget v1, v0, Lcom/sleepycat/asm/Label;->status:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/sleepycat/asm/Label;->status:I

    .line 1263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1264
    aget-object v1, p2, v0

    invoke-direct {p0, v2, v1}, Lcom/sleepycat/asm/MethodWriter;->addSuccessor(ILcom/sleepycat/asm/Label;)V

    .line 1265
    aget-object v1, p2, v0

    invoke-virtual {v1}, Lcom/sleepycat/asm/Label;->getFirst()Lcom/sleepycat/asm/Label;

    move-result-object v1

    iget v3, v1, Lcom/sleepycat/asm/Label;->status:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lcom/sleepycat/asm/Label;->status:I

    .line 1263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 1269
    :cond_1
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    .line 1271
    invoke-direct {p0, v0, p1}, Lcom/sleepycat/asm/MethodWriter;->addSuccessor(ILcom/sleepycat/asm/Label;)V

    .line 1272
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 1273
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    aget-object v2, p2, v0

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/asm/MethodWriter;->addSuccessor(ILcom/sleepycat/asm/Label;)V

    .line 1272
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1277
    .end local v0    # "i":I
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/sleepycat/asm/MethodWriter;->noSuccessor()V

    .line 1279
    :cond_3
    return-void
.end method

.method private writeFrame()V
    .locals 14

    .line 1880
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    .line 1881
    .local v2, "clocalsSize":I
    const/4 v3, 0x2

    aget v0, v0, v3

    .line 1882
    .local v0, "cstackSize":I
    iget-object v3, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget v3, v3, Lcom/sleepycat/asm/ClassWriter;->version:I

    const v4, 0xffff

    and-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/16 v6, 0x32

    if-ge v3, v6, :cond_0

    .line 1883
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    iget-object v3, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1884
    add-int/lit8 v1, v2, 0x3

    invoke-direct {p0, v5, v1}, Lcom/sleepycat/asm/MethodWriter;->writeFrameTypes(II)V

    .line 1885
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1886
    add-int/lit8 v1, v2, 0x3

    add-int/lit8 v3, v2, 0x3

    add-int/2addr v3, v0

    invoke-direct {p0, v1, v3}, Lcom/sleepycat/asm/MethodWriter;->writeFrameTypes(II)V

    .line 1887
    return-void

    .line 1889
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/asm/MethodWriter;->previousFrame:[I

    aget v6, v3, v1

    .line 1890
    .local v6, "localsSize":I
    const/16 v7, 0xff

    .line 1891
    .local v7, "type":I
    const/4 v8, 0x0

    .line 1893
    .local v8, "k":I
    iget v9, p0, Lcom/sleepycat/asm/MethodWriter;->frameCount:I

    if-nez v9, :cond_1

    .line 1894
    iget-object v3, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    aget v3, v3, v4

    .local v3, "delta":I
    goto :goto_0

    .line 1896
    .end local v3    # "delta":I
    :cond_1
    iget-object v9, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    aget v9, v9, v4

    aget v3, v3, v4

    sub-int/2addr v9, v3

    add-int/lit8 v3, v9, -0x1

    .line 1898
    .restart local v3    # "delta":I
    :goto_0
    const/16 v9, 0xf7

    const/16 v10, 0x40

    const/16 v11, 0xfb

    if-nez v0, :cond_3

    .line 1899
    sub-int v8, v2, v6

    .line 1900
    packed-switch v8, :pswitch_data_0

    goto :goto_2

    .line 1913
    :pswitch_0
    const/16 v7, 0xfc

    goto :goto_2

    .line 1908
    :pswitch_1
    if-ge v3, v10, :cond_2

    goto :goto_1

    :cond_2
    move v4, v11

    :goto_1
    move v7, v4

    .line 1909
    goto :goto_2

    .line 1904
    :pswitch_2
    const/16 v7, 0xf8

    .line 1905
    move v6, v2

    .line 1906
    nop

    .line 1914
    :goto_2
    goto :goto_4

    .line 1916
    :cond_3
    if-ne v2, v6, :cond_5

    if-ne v0, v1, :cond_5

    .line 1917
    const/16 v1, 0x3f

    if-ge v3, v1, :cond_4

    goto :goto_3

    :cond_4
    move v10, v9

    :goto_3
    move v7, v10

    .line 1920
    :cond_5
    :goto_4
    const/16 v1, 0xff

    if-eq v7, v1, :cond_7

    .line 1922
    const/4 v4, 0x3

    .line 1923
    .local v4, "l":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_5
    if-ge v10, v6, :cond_7

    .line 1924
    iget-object v12, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    aget v12, v12, v4

    iget-object v13, p0, Lcom/sleepycat/asm/MethodWriter;->previousFrame:[I

    aget v13, v13, v4

    if-eq v12, v13, :cond_6

    .line 1925
    const/16 v7, 0xff

    .line 1926
    goto :goto_6

    .line 1928
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 1923
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1931
    .end local v4    # "l":I
    .end local v10    # "j":I
    :cond_7
    :goto_6
    sparse-switch v7, :sswitch_data_0

    .line 1956
    iget-object v4, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v4, v1}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1957
    add-int/lit8 v1, v2, 0x3

    invoke-direct {p0, v5, v1}, Lcom/sleepycat/asm/MethodWriter;->writeFrameTypes(II)V

    .line 1958
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1959
    add-int/lit8 v1, v2, 0x3

    add-int/lit8 v4, v2, 0x3

    add-int/2addr v4, v0

    invoke-direct {p0, v1, v4}, Lcom/sleepycat/asm/MethodWriter;->writeFrameTypes(II)V

    goto :goto_7

    .line 1951
    :sswitch_0
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    add-int/lit16 v4, v8, 0xfb

    invoke-virtual {v1, v4}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1952
    add-int/lit8 v1, v6, 0x3

    add-int/lit8 v4, v2, 0x3

    invoke-direct {p0, v1, v4}, Lcom/sleepycat/asm/MethodWriter;->writeFrameTypes(II)V

    .line 1953
    goto :goto_7

    .line 1945
    :sswitch_1
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v1, v11}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1946
    goto :goto_7

    .line 1948
    :sswitch_2
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    add-int/lit16 v4, v8, 0xfb

    invoke-virtual {v1, v4}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1949
    goto :goto_7

    .line 1940
    :sswitch_3
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v1, v9}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1942
    add-int/lit8 v1, v2, 0x3

    add-int/lit8 v4, v2, 0x4

    invoke-direct {p0, v1, v4}, Lcom/sleepycat/asm/MethodWriter;->writeFrameTypes(II)V

    .line 1943
    goto :goto_7

    .line 1936
    :sswitch_4
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    add-int/lit8 v4, v3, 0x40

    invoke-virtual {v1, v4}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    .line 1937
    add-int/lit8 v1, v2, 0x3

    add-int/lit8 v4, v2, 0x4

    invoke-direct {p0, v1, v4}, Lcom/sleepycat/asm/MethodWriter;->writeFrameTypes(II)V

    .line 1938
    goto :goto_7

    .line 1933
    :sswitch_5
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    .line 1934
    nop

    .line 1961
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x40 -> :sswitch_4
        0xf7 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfb -> :sswitch_1
        0xfc -> :sswitch_0
    .end sparse-switch
.end method

.method private writeFrameType(Ljava/lang/Object;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/Object;

    .line 2034
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2035
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    goto :goto_0

    .line 2036
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2037
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    goto :goto_0

    .line 2039
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/sleepycat/asm/Label;

    iget v1, v1, Lcom/sleepycat/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2041
    :goto_0
    return-void
.end method

.method private writeFrameTypes(II)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1975
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 1976
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    aget v1, v1, v0

    .line 1977
    .local v1, "t":I
    const/high16 v2, -0x10000000

    and-int/2addr v2, v1

    .line 1978
    .local v2, "d":I
    const/4 v3, 0x7

    const/high16 v4, 0xff00000

    const v5, 0xfffff

    if-nez v2, :cond_0

    .line 1979
    and-int/2addr v5, v1

    .line 1980
    .local v5, "v":I
    and-int/2addr v4, v1

    sparse-switch v4, :sswitch_data_0

    .line 1989
    iget-object v3, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v3, v5}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    goto :goto_1

    .line 1986
    :sswitch_0
    iget-object v3, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget-object v4, v4, Lcom/sleepycat/asm/ClassWriter;->typeTable:[Lcom/sleepycat/asm/Item;

    aget-object v4, v4, v5

    iget v4, v4, Lcom/sleepycat/asm/Item;->intVal:I

    invoke-virtual {v3, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1987
    goto :goto_1

    .line 1982
    :sswitch_1
    iget-object v4, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v4, v3}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget-object v6, v4, Lcom/sleepycat/asm/ClassWriter;->typeTable:[Lcom/sleepycat/asm/Item;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    .line 1983
    invoke-virtual {v4, v6}, Lcom/sleepycat/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v4

    .line 1982
    invoke-virtual {v3, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1984
    nop

    .line 1991
    .end local v5    # "v":I
    :goto_1
    goto/16 :goto_4

    .line 1992
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1993
    .local v6, "sb":Ljava/lang/StringBuilder;
    shr-int/lit8 v2, v2, 0x1c

    .line 1994
    :goto_2
    add-int/lit8 v7, v2, -0x1

    .end local v2    # "d":I
    .local v7, "d":I
    if-lez v2, :cond_1

    .line 1995
    const/16 v2, 0x5b

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v7

    goto :goto_2

    .line 1997
    :cond_1
    and-int v2, v1, v4

    const/high16 v4, 0x1700000

    if-ne v2, v4, :cond_2

    .line 1998
    const/16 v2, 0x4c

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1999
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget-object v2, v2, Lcom/sleepycat/asm/ClassWriter;->typeTable:[Lcom/sleepycat/asm/Item;

    and-int v4, v1, v5

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    const/16 v2, 0x3b

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2002
    :cond_2
    and-int/lit8 v2, v1, 0xf

    packed-switch v2, :pswitch_data_0

    .line 2025
    :pswitch_0
    const/16 v2, 0x4a

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2022
    :pswitch_1
    const/16 v2, 0x53

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2023
    goto :goto_3

    .line 2019
    :pswitch_2
    const/16 v2, 0x43

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2020
    goto :goto_3

    .line 2016
    :pswitch_3
    const/16 v2, 0x42

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2017
    goto :goto_3

    .line 2013
    :pswitch_4
    const/16 v2, 0x5a

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2014
    goto :goto_3

    .line 2010
    :pswitch_5
    const/16 v2, 0x44

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2011
    goto :goto_3

    .line 2007
    :pswitch_6
    const/16 v2, 0x46

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2008
    goto :goto_3

    .line 2004
    :pswitch_7
    const/16 v2, 0x49

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2005
    nop

    .line 2028
    :goto_3
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v2, v3}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1975
    .end local v1    # "t":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "d":I
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2031
    .end local v0    # "i":I
    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1700000 -> :sswitch_1
        0x1800000 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method final getSize()I
    .locals 13

    .line 2053
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->classReaderOffset:I

    if-eqz v0, :cond_0

    .line 2054
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->classReaderLength:I

    add-int/lit8 v0, v0, 0x6

    return v0

    .line 2056
    :cond_0
    const/16 v0, 0x8

    .line 2057
    .local v0, "size":I
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v1, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    const-string v2, "RuntimeInvisibleTypeAnnotations"

    const-string v3, "RuntimeVisibleTypeAnnotations"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xffff

    if-lez v1, :cond_a

    .line 2058
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v1, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    if-gt v1, v6, :cond_9

    .line 2061
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v7, "Code"

    invoke-virtual {v1, v7}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2062
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v1, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x12

    iget v7, p0, Lcom/sleepycat/asm/MethodWriter;->handlerCount:I

    mul-int/lit8 v7, v7, 0x8

    add-int/2addr v1, v7

    add-int/2addr v0, v1

    .line 2063
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->localVar:Lcom/sleepycat/asm/ByteVector;

    if-eqz v1, :cond_1

    .line 2064
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v7, "LocalVariableTable"

    invoke-virtual {v1, v7}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2065
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->localVar:Lcom/sleepycat/asm/ByteVector;

    iget v1, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2067
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->localVarType:Lcom/sleepycat/asm/ByteVector;

    if-eqz v1, :cond_2

    .line 2068
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v7, "LocalVariableTypeTable"

    invoke-virtual {v1, v7}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2069
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->localVarType:Lcom/sleepycat/asm/ByteVector;

    iget v1, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2071
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->lineNumber:Lcom/sleepycat/asm/ByteVector;

    if-eqz v1, :cond_3

    .line 2072
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v7, "LineNumberTable"

    invoke-virtual {v1, v7}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2073
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->lineNumber:Lcom/sleepycat/asm/ByteVector;

    iget v1, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2075
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    if-eqz v1, :cond_6

    .line 2076
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget v1, v1, Lcom/sleepycat/asm/ClassWriter;->version:I

    and-int/2addr v1, v6

    const/16 v7, 0x32

    if-lt v1, v7, :cond_4

    move v1, v4

    goto :goto_0

    :cond_4
    move v1, v5

    .line 2077
    .local v1, "zip":Z
    :goto_0
    iget-object v7, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    if-eqz v1, :cond_5

    const-string v8, "StackMapTable"

    goto :goto_1

    :cond_5
    const-string v8, "StackMap"

    :goto_1
    invoke-virtual {v7, v8}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2078
    iget-object v7, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    iget v7, v7, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v7, v7, 0x8

    add-int/2addr v0, v7

    .line 2080
    .end local v1    # "zip":Z
    :cond_6
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->ctanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_7

    .line 2081
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2082
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->ctanns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v1}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2084
    :cond_7
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->ictanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_8

    .line 2085
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2086
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->ictanns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v1}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2088
    :cond_8
    iget-object v7, p0, Lcom/sleepycat/asm/MethodWriter;->cattrs:Lcom/sleepycat/asm/Attribute;

    if-eqz v7, :cond_a

    .line 2089
    iget-object v8, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget-object v9, v1, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v10, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    iget v11, p0, Lcom/sleepycat/asm/MethodWriter;->maxStack:I

    iget v12, p0, Lcom/sleepycat/asm/MethodWriter;->maxLocals:I

    invoke-virtual/range {v7 .. v12}, Lcom/sleepycat/asm/Attribute;->getSize(Lcom/sleepycat/asm/ClassWriter;[BIII)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    .line 2059
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Method code too large!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2093
    :cond_a
    :goto_2
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->exceptionCount:I

    if-lez v1, :cond_b

    .line 2094
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v7, "Exceptions"

    invoke-virtual {v1, v7}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2095
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->exceptionCount:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2097
    :cond_b
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->access:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_d

    .line 2098
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget v1, v1, Lcom/sleepycat/asm/ClassWriter;->version:I

    and-int/2addr v1, v6

    const/16 v6, 0x31

    if-lt v1, v6, :cond_c

    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->access:I

    const/high16 v6, 0x40000

    and-int/2addr v1, v6

    if-eqz v1, :cond_d

    .line 2100
    :cond_c
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v6, "Synthetic"

    invoke-virtual {v1, v6}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2101
    add-int/lit8 v0, v0, 0x6

    .line 2104
    :cond_d
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->access:I

    const/high16 v6, 0x20000

    and-int/2addr v1, v6

    if-eqz v1, :cond_e

    .line 2105
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v6, "Deprecated"

    invoke-virtual {v1, v6}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2106
    add-int/lit8 v0, v0, 0x6

    .line 2108
    :cond_e
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->signature:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2109
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v6, "Signature"

    invoke-virtual {v1, v6}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2110
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget-object v6, p0, Lcom/sleepycat/asm/MethodWriter;->signature:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2111
    add-int/lit8 v0, v0, 0x8

    .line 2113
    :cond_f
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->methodParameters:Lcom/sleepycat/asm/ByteVector;

    if-eqz v1, :cond_10

    .line 2114
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v6, "MethodParameters"

    invoke-virtual {v1, v6}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2115
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->methodParameters:Lcom/sleepycat/asm/ByteVector;

    iget v1, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 2117
    :cond_10
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->annd:Lcom/sleepycat/asm/ByteVector;

    if-eqz v1, :cond_11

    .line 2118
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v6, "AnnotationDefault"

    invoke-virtual {v1, v6}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2119
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->annd:Lcom/sleepycat/asm/ByteVector;

    iget v1, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    .line 2121
    :cond_11
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_12

    .line 2122
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v6, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v6}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2123
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v1}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2125
    :cond_12
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_13

    .line 2126
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v6, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v6}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2127
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v1}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2129
    :cond_13
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_14

    .line 2130
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2131
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v1}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2133
    :cond_14
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_15

    .line 2134
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2135
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v1}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2137
    :cond_15
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->panns:[Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_17

    .line 2138
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2139
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->panns:[Lcom/sleepycat/asm/AnnotationWriter;

    array-length v2, v1

    iget v3, p0, Lcom/sleepycat/asm/MethodWriter;->synthetics:I

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x7

    add-int/2addr v0, v2

    .line 2140
    array-length v1, v1

    sub-int/2addr v1, v4

    .local v1, "i":I
    :goto_3
    iget v2, p0, Lcom/sleepycat/asm/MethodWriter;->synthetics:I

    if-lt v1, v2, :cond_17

    .line 2141
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->panns:[Lcom/sleepycat/asm/AnnotationWriter;

    aget-object v2, v2, v1

    if-nez v2, :cond_16

    move v2, v5

    goto :goto_4

    :cond_16
    invoke-virtual {v2}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    .line 2140
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2144
    .end local v1    # "i":I
    :cond_17
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->ipanns:[Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_19

    .line 2145
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2146
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->ipanns:[Lcom/sleepycat/asm/AnnotationWriter;

    array-length v2, v1

    iget v3, p0, Lcom/sleepycat/asm/MethodWriter;->synthetics:I

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x7

    add-int/2addr v0, v2

    .line 2147
    array-length v1, v1

    sub-int/2addr v1, v4

    .restart local v1    # "i":I
    :goto_5
    iget v2, p0, Lcom/sleepycat/asm/MethodWriter;->synthetics:I

    if-lt v1, v2, :cond_19

    .line 2148
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->ipanns:[Lcom/sleepycat/asm/AnnotationWriter;

    aget-object v2, v2, v1

    if-nez v2, :cond_18

    move v2, v5

    goto :goto_6

    :cond_18
    invoke-virtual {v2}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    .line 2147
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 2151
    .end local v1    # "i":I
    :cond_19
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->attrs:Lcom/sleepycat/asm/Attribute;

    if-eqz v1, :cond_1a

    .line 2152
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/asm/Attribute;->getSize(Lcom/sleepycat/asm/ClassWriter;[BIII)I

    move-result v1

    add-int/2addr v0, v1

    .line 2154
    :cond_1a
    return v0
.end method

.method final put(Lcom/sleepycat/asm/ByteVector;)V
    .locals 23
    .param p1, "out"    # Lcom/sleepycat/asm/ByteVector;

    .line 2165
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const/16 v9, 0x40

    .line 2166
    .local v9, "FACTOR":I
    iget v1, v0, Lcom/sleepycat/asm/MethodWriter;->access:I

    const/high16 v10, 0x40000

    and-int v2, v1, v10

    div-int/lit8 v2, v2, 0x40

    const/high16 v3, 0xe0000

    or-int v11, v2, v3

    .line 2169
    .local v11, "mask":I
    not-int v2, v11

    and-int/2addr v1, v2

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->name:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->desc:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2170
    iget v1, v0, Lcom/sleepycat/asm/MethodWriter;->classReaderOffset:I

    if-eqz v1, :cond_0

    .line 2171
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget-object v1, v1, Lcom/sleepycat/asm/ClassWriter;->cr:Lcom/sleepycat/asm/ClassReader;

    iget-object v1, v1, Lcom/sleepycat/asm/ClassReader;->b:[B

    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->classReaderOffset:I

    iget v3, v0, Lcom/sleepycat/asm/MethodWriter;->classReaderLength:I

    invoke-virtual {v8, v1, v2, v3}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 2172
    return-void

    .line 2174
    :cond_0
    const/4 v1, 0x0

    .line 2175
    .local v1, "attributeCount":I
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    if-lez v2, :cond_1

    .line 2176
    add-int/lit8 v1, v1, 0x1

    .line 2178
    :cond_1
    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->exceptionCount:I

    if-lez v2, :cond_2

    .line 2179
    add-int/lit8 v1, v1, 0x1

    .line 2181
    :cond_2
    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->access:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v12, 0x31

    const v13, 0xffff

    if-eqz v2, :cond_4

    .line 2182
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget v2, v2, Lcom/sleepycat/asm/ClassWriter;->version:I

    and-int/2addr v2, v13

    if-lt v2, v12, :cond_3

    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->access:I

    and-int/2addr v2, v10

    if-eqz v2, :cond_4

    .line 2184
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 2187
    :cond_4
    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->access:I

    const/high16 v14, 0x20000

    and-int/2addr v2, v14

    if-eqz v2, :cond_5

    .line 2188
    add-int/lit8 v1, v1, 0x1

    .line 2190
    :cond_5
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->signature:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 2191
    add-int/lit8 v1, v1, 0x1

    .line 2193
    :cond_6
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->methodParameters:Lcom/sleepycat/asm/ByteVector;

    if-eqz v2, :cond_7

    .line 2194
    add-int/lit8 v1, v1, 0x1

    .line 2196
    :cond_7
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->annd:Lcom/sleepycat/asm/ByteVector;

    if-eqz v2, :cond_8

    .line 2197
    add-int/lit8 v1, v1, 0x1

    .line 2199
    :cond_8
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v2, :cond_9

    .line 2200
    add-int/lit8 v1, v1, 0x1

    .line 2202
    :cond_9
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v2, :cond_a

    .line 2203
    add-int/lit8 v1, v1, 0x1

    .line 2205
    :cond_a
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v2, :cond_b

    .line 2206
    add-int/lit8 v1, v1, 0x1

    .line 2208
    :cond_b
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v2, :cond_c

    .line 2209
    add-int/lit8 v1, v1, 0x1

    .line 2211
    :cond_c
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->panns:[Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v2, :cond_d

    .line 2212
    add-int/lit8 v1, v1, 0x1

    .line 2214
    :cond_d
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->ipanns:[Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v2, :cond_e

    .line 2215
    add-int/lit8 v1, v1, 0x1

    .line 2217
    :cond_e
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->attrs:Lcom/sleepycat/asm/Attribute;

    if-eqz v2, :cond_f

    .line 2218
    invoke-virtual {v2}, Lcom/sleepycat/asm/Attribute;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 2220
    :cond_f
    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2221
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    const-string v15, "RuntimeInvisibleTypeAnnotations"

    const-string v7, "RuntimeVisibleTypeAnnotations"

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v16, 0x1

    if-lez v2, :cond_28

    .line 2222
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0xc

    iget v3, v0, Lcom/sleepycat/asm/MethodWriter;->handlerCount:I

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 2223
    .local v2, "size":I
    iget-object v3, v0, Lcom/sleepycat/asm/MethodWriter;->localVar:Lcom/sleepycat/asm/ByteVector;

    if-eqz v3, :cond_10

    .line 2224
    iget v3, v3, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 2226
    :cond_10
    iget-object v3, v0, Lcom/sleepycat/asm/MethodWriter;->localVarType:Lcom/sleepycat/asm/ByteVector;

    if-eqz v3, :cond_11

    .line 2227
    iget v3, v3, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 2229
    :cond_11
    iget-object v3, v0, Lcom/sleepycat/asm/MethodWriter;->lineNumber:Lcom/sleepycat/asm/ByteVector;

    if-eqz v3, :cond_12

    .line 2230
    iget v3, v3, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 2232
    :cond_12
    iget-object v3, v0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    if-eqz v3, :cond_13

    .line 2233
    iget v3, v3, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 2235
    :cond_13
    iget-object v3, v0, Lcom/sleepycat/asm/MethodWriter;->ctanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v3, :cond_14

    .line 2236
    invoke-virtual {v3}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 2238
    :cond_14
    iget-object v3, v0, Lcom/sleepycat/asm/MethodWriter;->ictanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v3, :cond_15

    .line 2239
    invoke-virtual {v3}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 2241
    :cond_15
    iget-object v3, v0, Lcom/sleepycat/asm/MethodWriter;->cattrs:Lcom/sleepycat/asm/Attribute;

    if-eqz v3, :cond_16

    .line 2242
    iget-object v4, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget-object v14, v0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget-object v14, v14, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v10, v0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v10, v10, Lcom/sleepycat/asm/ByteVector;->length:I

    iget v12, v0, Lcom/sleepycat/asm/MethodWriter;->maxStack:I

    iget v13, v0, Lcom/sleepycat/asm/MethodWriter;->maxLocals:I

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v14

    move/from16 v20, v10

    move/from16 v21, v12

    move/from16 v22, v13

    invoke-virtual/range {v17 .. v22}, Lcom/sleepycat/asm/Attribute;->getSize(Lcom/sleepycat/asm/ClassWriter;[BIII)I

    move-result v3

    add-int/2addr v2, v3

    move v10, v2

    goto :goto_0

    .line 2241
    :cond_16
    move v10, v2

    .line 2245
    .end local v2    # "size":I
    .local v10, "size":I
    :goto_0
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v3, "Code"

    invoke-virtual {v2, v3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 2246
    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->maxStack:I

    invoke-virtual {v8, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v2

    iget v3, v0, Lcom/sleepycat/asm/MethodWriter;->maxLocals:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2247
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-virtual {v8, v2}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v2

    iget-object v3, v0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget-object v3, v3, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v4, v0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v4, v4, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-virtual {v2, v3, v5, v4}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 2248
    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->handlerCount:I

    invoke-virtual {v8, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2249
    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->handlerCount:I

    if-lez v2, :cond_17

    .line 2250
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->firstHandler:Lcom/sleepycat/asm/Handler;

    .line 2251
    .local v2, "h":Lcom/sleepycat/asm/Handler;
    :goto_1
    if-eqz v2, :cond_17

    .line 2252
    iget-object v3, v2, Lcom/sleepycat/asm/Handler;->start:Lcom/sleepycat/asm/Label;

    iget v3, v3, Lcom/sleepycat/asm/Label;->position:I

    invoke-virtual {v8, v3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v3

    iget-object v4, v2, Lcom/sleepycat/asm/Handler;->end:Lcom/sleepycat/asm/Label;

    iget v4, v4, Lcom/sleepycat/asm/Label;->position:I

    invoke-virtual {v3, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v3

    iget-object v4, v2, Lcom/sleepycat/asm/Handler;->handler:Lcom/sleepycat/asm/Label;

    iget v4, v4, Lcom/sleepycat/asm/Label;->position:I

    .line 2253
    invoke-virtual {v3, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v3

    iget v4, v2, Lcom/sleepycat/asm/Handler;->type:I

    invoke-virtual {v3, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2254
    iget-object v2, v2, Lcom/sleepycat/asm/Handler;->next:Lcom/sleepycat/asm/Handler;

    goto :goto_1

    .line 2257
    .end local v2    # "h":Lcom/sleepycat/asm/Handler;
    :cond_17
    const/4 v1, 0x0

    .line 2258
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->localVar:Lcom/sleepycat/asm/ByteVector;

    if-eqz v2, :cond_18

    .line 2259
    add-int/lit8 v1, v1, 0x1

    .line 2261
    :cond_18
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->localVarType:Lcom/sleepycat/asm/ByteVector;

    if-eqz v2, :cond_19

    .line 2262
    add-int/lit8 v1, v1, 0x1

    .line 2264
    :cond_19
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->lineNumber:Lcom/sleepycat/asm/ByteVector;

    if-eqz v2, :cond_1a

    .line 2265
    add-int/lit8 v1, v1, 0x1

    .line 2267
    :cond_1a
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    if-eqz v2, :cond_1b

    .line 2268
    add-int/lit8 v1, v1, 0x1

    .line 2270
    :cond_1b
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->ctanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v2, :cond_1c

    .line 2271
    add-int/lit8 v1, v1, 0x1

    .line 2273
    :cond_1c
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->ictanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v2, :cond_1d

    .line 2274
    add-int/lit8 v1, v1, 0x1

    .line 2276
    :cond_1d
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->cattrs:Lcom/sleepycat/asm/Attribute;

    if-eqz v2, :cond_1e

    .line 2277
    invoke-virtual {v2}, Lcom/sleepycat/asm/Attribute;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    move v12, v1

    goto :goto_2

    .line 2276
    :cond_1e
    move v12, v1

    .line 2279
    .end local v1    # "attributeCount":I
    .local v12, "attributeCount":I
    :goto_2
    invoke-virtual {v8, v12}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2280
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->localVar:Lcom/sleepycat/asm/ByteVector;

    if-eqz v1, :cond_1f

    .line 2281
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "LocalVariableTable"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2282
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->localVar:Lcom/sleepycat/asm/ByteVector;

    iget v1, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->localVarCount:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2283
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->localVar:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, v1, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->localVar:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-virtual {v8, v1, v5, v2}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 2285
    :cond_1f
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->localVarType:Lcom/sleepycat/asm/ByteVector;

    if-eqz v1, :cond_20

    .line 2286
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "LocalVariableTypeTable"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2287
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->localVarType:Lcom/sleepycat/asm/ByteVector;

    iget v1, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->localVarTypeCount:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2288
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->localVarType:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, v1, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->localVarType:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-virtual {v8, v1, v5, v2}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 2290
    :cond_20
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->lineNumber:Lcom/sleepycat/asm/ByteVector;

    if-eqz v1, :cond_21

    .line 2291
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "LineNumberTable"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2292
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->lineNumber:Lcom/sleepycat/asm/ByteVector;

    iget v1, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->lineNumberCount:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2293
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->lineNumber:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, v1, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->lineNumber:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-virtual {v8, v1, v5, v2}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 2295
    :cond_21
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    if-eqz v1, :cond_24

    .line 2296
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget v1, v1, Lcom/sleepycat/asm/ClassWriter;->version:I

    const v2, 0xffff

    and-int/2addr v1, v2

    const/16 v2, 0x32

    if-lt v1, v2, :cond_22

    move/from16 v1, v16

    goto :goto_3

    :cond_22
    move v1, v5

    .line 2297
    .local v1, "zip":Z
    :goto_3
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    if-eqz v1, :cond_23

    const-string v3, "StackMapTable"

    goto :goto_4

    :cond_23
    const-string v3, "StackMap"

    :goto_4
    invoke-virtual {v2, v3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2298
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/2addr v2, v6

    invoke-virtual {v8, v2}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v2

    iget v3, v0, Lcom/sleepycat/asm/MethodWriter;->frameCount:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2299
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    iget-object v2, v2, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v3, v0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    iget v3, v3, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-virtual {v8, v2, v5, v3}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 2301
    .end local v1    # "zip":Z
    :cond_24
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->ctanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_25

    .line 2302
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, v7}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2303
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->ctanns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lcom/sleepycat/asm/AnnotationWriter;->put(Lcom/sleepycat/asm/ByteVector;)V

    .line 2305
    :cond_25
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->ictanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_26

    .line 2306
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, v15}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2307
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->ictanns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lcom/sleepycat/asm/AnnotationWriter;->put(Lcom/sleepycat/asm/ByteVector;)V

    .line 2309
    :cond_26
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cattrs:Lcom/sleepycat/asm/Attribute;

    if-eqz v1, :cond_27

    .line 2310
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget-object v3, v0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget-object v3, v3, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v4, v0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v4, v4, Lcom/sleepycat/asm/ByteVector;->length:I

    iget v13, v0, Lcom/sleepycat/asm/MethodWriter;->maxLocals:I

    iget v14, v0, Lcom/sleepycat/asm/MethodWriter;->maxStack:I

    move/from16 v17, v9

    move v9, v5

    .end local v9    # "FACTOR":I
    .local v17, "FACTOR":I
    move v5, v13

    move v13, v6

    move v6, v14

    move-object v14, v7

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/asm/Attribute;->put(Lcom/sleepycat/asm/ClassWriter;[BIIILcom/sleepycat/asm/ByteVector;)V

    goto :goto_5

    .line 2309
    .end local v17    # "FACTOR":I
    .restart local v9    # "FACTOR":I
    :cond_27
    move v13, v6

    move-object v14, v7

    move/from16 v17, v9

    move v9, v5

    .end local v9    # "FACTOR":I
    .restart local v17    # "FACTOR":I
    goto :goto_5

    .line 2221
    .end local v10    # "size":I
    .end local v12    # "attributeCount":I
    .end local v17    # "FACTOR":I
    .local v1, "attributeCount":I
    .restart local v9    # "FACTOR":I
    :cond_28
    move v13, v6

    move-object v14, v7

    move/from16 v17, v9

    move v9, v5

    .end local v9    # "FACTOR":I
    .restart local v17    # "FACTOR":I
    move v12, v1

    .line 2313
    .end local v1    # "attributeCount":I
    .restart local v12    # "attributeCount":I
    :goto_5
    iget v1, v0, Lcom/sleepycat/asm/MethodWriter;->exceptionCount:I

    if-lez v1, :cond_29

    .line 2314
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "Exceptions"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->exceptionCount:I

    mul-int/2addr v2, v13

    add-int/2addr v2, v13

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 2316
    iget v1, v0, Lcom/sleepycat/asm/MethodWriter;->exceptionCount:I

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2317
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->exceptionCount:I

    if-ge v1, v2, :cond_29

    .line 2318
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->exceptions:[I

    aget v2, v2, v1

    invoke-virtual {v8, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2317
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2321
    .end local v1    # "i":I
    :cond_29
    iget v1, v0, Lcom/sleepycat/asm/MethodWriter;->access:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2b

    .line 2322
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget v1, v1, Lcom/sleepycat/asm/ClassWriter;->version:I

    const v2, 0xffff

    and-int/2addr v1, v2

    const/16 v2, 0x31

    if-lt v1, v2, :cond_2a

    iget v1, v0, Lcom/sleepycat/asm/MethodWriter;->access:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2b

    .line 2324
    :cond_2a
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 2327
    :cond_2b
    iget v1, v0, Lcom/sleepycat/asm/MethodWriter;->access:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2c

    .line 2328
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "Deprecated"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 2330
    :cond_2c
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->signature:Ljava/lang/String;

    if-eqz v1, :cond_2d

    .line 2331
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "Signature"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget-object v3, v0, Lcom/sleepycat/asm/MethodWriter;->signature:Ljava/lang/String;

    .line 2332
    invoke-virtual {v2, v3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2334
    :cond_2d
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->methodParameters:Lcom/sleepycat/asm/ByteVector;

    if-eqz v1, :cond_2e

    .line 2335
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "MethodParameters"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2336
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->methodParameters:Lcom/sleepycat/asm/ByteVector;

    iget v1, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->methodParametersCount:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    .line 2338
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->methodParameters:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, v1, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->methodParameters:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-virtual {v8, v1, v9, v2}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 2340
    :cond_2e
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->annd:Lcom/sleepycat/asm/ByteVector;

    if-eqz v1, :cond_2f

    .line 2341
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "AnnotationDefault"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2342
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->annd:Lcom/sleepycat/asm/ByteVector;

    iget v1, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 2343
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->annd:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, v1, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->annd:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-virtual {v8, v1, v9, v2}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 2345
    :cond_2f
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_30

    .line 2346
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2347
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lcom/sleepycat/asm/AnnotationWriter;->put(Lcom/sleepycat/asm/ByteVector;)V

    .line 2349
    :cond_30
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_31

    .line 2350
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2351
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lcom/sleepycat/asm/AnnotationWriter;->put(Lcom/sleepycat/asm/ByteVector;)V

    .line 2353
    :cond_31
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_32

    .line 2354
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, v14}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2355
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lcom/sleepycat/asm/AnnotationWriter;->put(Lcom/sleepycat/asm/ByteVector;)V

    .line 2357
    :cond_32
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_33

    .line 2358
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, v15}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2359
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lcom/sleepycat/asm/AnnotationWriter;->put(Lcom/sleepycat/asm/ByteVector;)V

    .line 2361
    :cond_33
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->panns:[Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_34

    .line 2362
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2363
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->panns:[Lcom/sleepycat/asm/AnnotationWriter;

    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->synthetics:I

    invoke-static {v1, v2, v8}, Lcom/sleepycat/asm/AnnotationWriter;->put([Lcom/sleepycat/asm/AnnotationWriter;ILcom/sleepycat/asm/ByteVector;)V

    .line 2365
    :cond_34
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->ipanns:[Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_35

    .line 2366
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 2367
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->ipanns:[Lcom/sleepycat/asm/AnnotationWriter;

    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->synthetics:I

    invoke-static {v1, v2, v8}, Lcom/sleepycat/asm/AnnotationWriter;->put([Lcom/sleepycat/asm/AnnotationWriter;ILcom/sleepycat/asm/ByteVector;)V

    .line 2369
    :cond_35
    iget-object v1, v0, Lcom/sleepycat/asm/MethodWriter;->attrs:Lcom/sleepycat/asm/Attribute;

    if-eqz v1, :cond_36

    .line 2370
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/asm/Attribute;->put(Lcom/sleepycat/asm/ClassWriter;[BIIILcom/sleepycat/asm/ByteVector;)V

    .line 2372
    :cond_36
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 8
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 521
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    .line 523
    .local v0, "bv":Lcom/sleepycat/asm/ByteVector;
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 524
    new-instance v7, Lcom/sleepycat/asm/AnnotationWriter;

    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const/4 v3, 0x1

    const/4 v6, 0x2

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/asm/AnnotationWriter;-><init>(Lcom/sleepycat/asm/ClassWriter;ZLcom/sleepycat/asm/ByteVector;Lcom/sleepycat/asm/ByteVector;I)V

    .line 525
    .local v1, "aw":Lcom/sleepycat/asm/AnnotationWriter;
    if-eqz p2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 527
    iput-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    goto :goto_0

    .line 529
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 530
    iput-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    .line 532
    :goto_0
    return-object v1
.end method

.method public visitAnnotationDefault()Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 7

    .line 514
    new-instance v3, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v3}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    iput-object v3, p0, Lcom/sleepycat/asm/MethodWriter;->annd:Lcom/sleepycat/asm/ByteVector;

    .line 515
    new-instance v6, Lcom/sleepycat/asm/AnnotationWriter;

    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/asm/AnnotationWriter;-><init>(Lcom/sleepycat/asm/ClassWriter;ZLcom/sleepycat/asm/ByteVector;Lcom/sleepycat/asm/ByteVector;I)V

    return-object v6
.end method

.method public visitAttribute(Lcom/sleepycat/asm/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lcom/sleepycat/asm/Attribute;

    .line 586
    invoke-virtual {p1}, Lcom/sleepycat/asm/Attribute;->isCodeAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->cattrs:Lcom/sleepycat/asm/Attribute;

    iput-object v0, p1, Lcom/sleepycat/asm/Attribute;->next:Lcom/sleepycat/asm/Attribute;

    .line 588
    iput-object p1, p0, Lcom/sleepycat/asm/MethodWriter;->cattrs:Lcom/sleepycat/asm/Attribute;

    goto :goto_0

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->attrs:Lcom/sleepycat/asm/Attribute;

    iput-object v0, p1, Lcom/sleepycat/asm/Attribute;->next:Lcom/sleepycat/asm/Attribute;

    .line 591
    iput-object p1, p0, Lcom/sleepycat/asm/MethodWriter;->attrs:Lcom/sleepycat/asm/Attribute;

    .line 593
    :goto_0
    return-void
.end method

.method public visitCode()V
    .locals 0

    .line 597
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 1674
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 859
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->lastCodeOffset:I

    .line 860
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4}, Lcom/sleepycat/asm/ClassWriter;->newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 862
    .local v0, "i":Lcom/sleepycat/asm/Item;
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    if-eqz v1, :cond_b

    .line 863
    iget v2, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_3

    .line 868
    :cond_0
    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 869
    .local v1, "c":C
    const/4 v2, -0x2

    const/16 v5, 0x4a

    const/16 v6, 0x44

    packed-switch p1, :pswitch_data_0

    .line 881
    iget v3, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    if-eq v1, v6, :cond_7

    if-ne v1, v5, :cond_8

    goto :goto_1

    .line 877
    :pswitch_0
    iget v2, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    add-int/2addr v2, v3

    .line 878
    .local v2, "size":I
    goto :goto_2

    .line 874
    .end local v2    # "size":I
    :pswitch_1
    iget v3, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    if-eq v1, v6, :cond_4

    if-ne v1, v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :cond_4
    :goto_0
    add-int/2addr v2, v3

    .line 875
    .restart local v2    # "size":I
    goto :goto_2

    .line 871
    .end local v2    # "size":I
    :pswitch_2
    iget v2, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    if-eq v1, v6, :cond_5

    if-ne v1, v5, :cond_6

    :cond_5
    const/4 v4, 0x2

    :cond_6
    add-int/2addr v2, v4

    .line 872
    .restart local v2    # "size":I
    goto :goto_2

    .line 881
    .end local v2    # "size":I
    :cond_7
    :goto_1
    const/4 v2, -0x3

    :cond_8
    add-int/2addr v2, v3

    .line 885
    .restart local v2    # "size":I
    :goto_2
    iget v3, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    if-le v2, v3, :cond_9

    .line 886
    iput v2, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    .line 888
    :cond_9
    iput v2, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    goto :goto_4

    .line 864
    .end local v1    # "c":C
    .end local v2    # "size":I
    :cond_a
    :goto_3
    iget-object v1, v1, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p1, v3, v2, v0}, Lcom/sleepycat/asm/Frame;->execute(IILcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Item;)V

    .line 892
    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v2, v0, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v1, p1, v2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 893
    return-void

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 602
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    if-nez v0, :cond_0

    .line 603
    return-void

    .line 606
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 607
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    iget-object v0, v0, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    if-nez v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    new-instance v1, Lcom/sleepycat/asm/CurrentFrame;

    invoke-direct {v1}, Lcom/sleepycat/asm/CurrentFrame;-><init>()V

    iput-object v1, v0, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    .line 612
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    iget-object v0, v0, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    iput-object v1, v0, Lcom/sleepycat/asm/Frame;->owner:Lcom/sleepycat/asm/Label;

    .line 613
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    iget-object v0, v0, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget v2, p0, Lcom/sleepycat/asm/MethodWriter;->access:I

    iget-object v3, p0, Lcom/sleepycat/asm/MethodWriter;->descriptor:Ljava/lang/String;

    .line 614
    invoke-static {v3}, Lcom/sleepycat/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/sleepycat/asm/Type;

    move-result-object v3

    .line 613
    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/sleepycat/asm/Frame;->initInputFrame(Lcom/sleepycat/asm/ClassWriter;I[Lcom/sleepycat/asm/Type;I)V

    .line 615
    invoke-direct {p0}, Lcom/sleepycat/asm/MethodWriter;->visitImplicitFirstFrame()V

    goto/16 :goto_a

    .line 617
    :cond_1
    if-ne p1, v1, :cond_2

    .line 618
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    iget-object v1, v0, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/asm/Frame;->set(Lcom/sleepycat/asm/ClassWriter;I[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 626
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    iget-object v0, v0, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/MethodWriter;->visitFrame(Lcom/sleepycat/asm/Frame;)V

    goto/16 :goto_a

    .line 628
    :cond_3
    if-ne p1, v1, :cond_b

    .line 629
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->previousFrame:[I

    if-nez v0, :cond_4

    .line 630
    invoke-direct {p0}, Lcom/sleepycat/asm/MethodWriter;->visitImplicitFirstFrame()V

    .line 632
    :cond_4
    iput p2, p0, Lcom/sleepycat/asm/MethodWriter;->currentLocals:I

    .line 633
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-direct {p0, v0, p2, p4}, Lcom/sleepycat/asm/MethodWriter;->startFrame(III)I

    move-result v0

    .line 634
    .local v0, "frameIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/high16 v2, 0x1000000

    const-string v3, ""

    const/high16 v4, 0x1800000

    if-ge v1, p2, :cond_7

    .line 635
    aget-object v5, p3, v1

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 636
    aget-object v2, p3, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/sleepycat/asm/Type;->getObjectType(Ljava/lang/String;)Lcom/sleepycat/asm/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, "desc":Ljava/lang/String;
    iget-object v3, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "frameIndex":I
    .local v4, "frameIndex":I
    iget-object v5, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-static {v5, v2}, Lcom/sleepycat/asm/Frame;->type(Lcom/sleepycat/asm/ClassWriter;Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v0

    .line 638
    .end local v2    # "desc":Ljava/lang/String;
    move v0, v4

    goto :goto_1

    .end local v4    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :cond_5
    aget-object v5, p3, v1

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_6

    .line 639
    iget-object v3, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v4    # "frameIndex":I
    aget-object v5, p3, v1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    or-int/2addr v2, v5

    aput v2, v3, v0

    move v0, v4

    goto :goto_1

    .line 641
    .end local v4    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :cond_6
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "frameIndex":I
    .local v5, "frameIndex":I
    iget-object v6, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    aget-object v7, p3, v1

    check-cast v7, Lcom/sleepycat/asm/Label;

    iget v7, v7, Lcom/sleepycat/asm/Label;->position:I

    .line 642
    invoke-virtual {v6, v3, v7}, Lcom/sleepycat/asm/ClassWriter;->addUninitializedType(Ljava/lang/String;I)I

    move-result v3

    or-int/2addr v3, v4

    aput v3, v2, v0

    move v0, v5

    .line 634
    .end local v5    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    .end local v1    # "i":I
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, p4, :cond_a

    .line 647
    aget-object v5, p5, v1

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 648
    aget-object v5, p5, v1

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/sleepycat/asm/Type;->getObjectType(Ljava/lang/String;)Lcom/sleepycat/asm/Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 649
    .local v5, "desc":Ljava/lang/String;
    iget-object v6, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    add-int/lit8 v7, v0, 0x1

    .end local v0    # "frameIndex":I
    .local v7, "frameIndex":I
    iget-object v8, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-static {v8, v5}, Lcom/sleepycat/asm/Frame;->type(Lcom/sleepycat/asm/ClassWriter;Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v0

    .line 650
    .end local v5    # "desc":Ljava/lang/String;
    move v0, v7

    goto :goto_3

    .end local v7    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :cond_8
    aget-object v5, p5, v1

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_9

    .line 651
    iget-object v5, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "frameIndex":I
    .local v6, "frameIndex":I
    aget-object v7, p5, v1

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    or-int/2addr v7, v2

    aput v7, v5, v0

    move v0, v6

    goto :goto_3

    .line 653
    .end local v6    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :cond_9
    iget-object v5, p0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v6    # "frameIndex":I
    iget-object v7, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    aget-object v8, p5, v1

    check-cast v8, Lcom/sleepycat/asm/Label;

    iget v8, v8, Lcom/sleepycat/asm/Label;->position:I

    .line 654
    invoke-virtual {v7, v3, v8}, Lcom/sleepycat/asm/ClassWriter;->addUninitializedType(Ljava/lang/String;I)I

    move-result v7

    or-int/2addr v7, v4

    aput v7, v5, v0

    move v0, v6

    .line 646
    .end local v6    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 658
    .end local v1    # "i":I
    :cond_a
    invoke-direct {p0}, Lcom/sleepycat/asm/MethodWriter;->endFrame()V

    .line 659
    .end local v0    # "frameIndex":I
    goto/16 :goto_a

    .line 661
    :cond_b
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    if-nez v0, :cond_c

    .line 662
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    .line 663
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    .local v0, "delta":I
    goto :goto_4

    .line 665
    .end local v0    # "delta":I
    :cond_c
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->previousFrameOffset:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 666
    .restart local v0    # "delta":I
    if-gez v0, :cond_e

    .line 667
    const/4 v1, 0x3

    if-ne p1, v1, :cond_d

    .line 668
    return-void

    .line 670
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 675
    :cond_e
    :goto_4
    const/16 v1, 0x40

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_9

    .line 706
    :pswitch_0
    if-ge v0, v1, :cond_f

    .line 707
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    add-int/lit8 v3, v0, 0x40

    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    goto :goto_5

    .line 709
    :cond_f
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    const/16 v3, 0xf7

    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    .line 710
    invoke-virtual {v1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 712
    :goto_5
    const/4 v1, 0x0

    aget-object v1, p5, v1

    invoke-direct {p0, v1}, Lcom/sleepycat/asm/MethodWriter;->writeFrameType(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 699
    :pswitch_1
    if-ge v0, v1, :cond_10

    .line 700
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v1, v0}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    goto :goto_9

    .line 702
    :cond_10
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    const/16 v3, 0xfb

    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 704
    goto :goto_9

    .line 695
    :pswitch_2
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->currentLocals:I

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/sleepycat/asm/MethodWriter;->currentLocals:I

    .line 696
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    rsub-int v3, p2, 0xfb

    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 697
    goto :goto_9

    .line 688
    :pswitch_3
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->currentLocals:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/sleepycat/asm/MethodWriter;->currentLocals:I

    .line 689
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    add-int/lit16 v3, p2, 0xfb

    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 690
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, p2, :cond_11

    .line 691
    aget-object v3, p3, v1

    invoke-direct {p0, v3}, Lcom/sleepycat/asm/MethodWriter;->writeFrameType(Ljava/lang/Object;)V

    .line 690
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 693
    .end local v1    # "i":I
    :cond_11
    goto :goto_9

    .line 677
    :pswitch_4
    iput p2, p0, Lcom/sleepycat/asm/MethodWriter;->currentLocals:I

    .line 678
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 679
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, p2, :cond_12

    .line 680
    aget-object v3, p3, v1

    invoke-direct {p0, v3}, Lcom/sleepycat/asm/MethodWriter;->writeFrameType(Ljava/lang/Object;)V

    .line 679
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 682
    .end local v1    # "i":I
    :cond_12
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackMap:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v1, p4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 683
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-ge v1, p4, :cond_13

    .line 684
    aget-object v3, p5, v1

    invoke-direct {p0, v3}, Lcom/sleepycat/asm/MethodWriter;->writeFrameType(Ljava/lang/Object;)V

    .line 683
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 686
    .end local v1    # "i":I
    :cond_13
    nop

    .line 716
    :goto_9
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v1, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    iput v1, p0, Lcom/sleepycat/asm/MethodWriter;->previousFrameOffset:I

    .line 717
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->frameCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sleepycat/asm/MethodWriter;->frameCount:I

    .line 720
    .end local v0    # "delta":I
    :goto_a
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->maxStack:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->maxStack:I

    .line 721
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->maxLocals:I

    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->currentLocals:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->maxLocals:I

    .line 722
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitIincInsn(II)V
    .locals 4
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 1198
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->lastCodeOffset:I

    .line 1199
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    const/16 v1, 0x84

    if-eqz v0, :cond_1

    .line 1200
    iget v2, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1201
    :cond_0
    iget-object v0, v0, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/sleepycat/asm/Frame;->execute(IILcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Item;)V

    .line 1204
    :cond_1
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 1206
    add-int/lit8 v0, p1, 0x1

    .line 1207
    .local v0, "n":I
    iget v2, p0, Lcom/sleepycat/asm/MethodWriter;->maxLocals:I

    if-le v0, v2, :cond_2

    .line 1208
    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->maxLocals:I

    .line 1212
    .end local v0    # "n":I
    :cond_2
    const/16 v0, 0xff

    if-gt p1, v0, :cond_4

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_4

    const/16 v0, -0x80

    if-ge p2, v0, :cond_3

    goto :goto_0

    .line 1216
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/ByteVector;->put11(II)Lcom/sleepycat/asm/ByteVector;

    goto :goto_1

    .line 1213
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    const/16 v2, 0xc4

    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    .line 1214
    invoke-virtual {v0, p2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1218
    :goto_1
    return-void
.end method

.method public visitInsn(I)V
    .locals 3
    .param p1, "opcode"    # I

    .line 726
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->lastCodeOffset:I

    .line 728
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    .line 731
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    if-eqz v0, :cond_5

    .line 732
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 736
    :cond_0
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    sget-object v1, Lcom/sleepycat/asm/Frame;->SIZE:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    .line 737
    .local v0, "size":I
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    if-le v0, v1, :cond_1

    .line 738
    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    .line 740
    :cond_1
    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    goto :goto_1

    .line 733
    .end local v0    # "size":I
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/sleepycat/asm/Frame;->execute(IILcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Item;)V

    .line 743
    :goto_1
    const/16 v0, 0xac

    if-lt p1, v0, :cond_3

    const/16 v0, 0xb1

    if-le p1, v0, :cond_4

    :cond_3
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_5

    .line 745
    :cond_4
    invoke-direct {p0}, Lcom/sleepycat/asm/MethodWriter;->noSuccessor()V

    .line 748
    :cond_5
    return-void
.end method

.method public visitInsnAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lcom/sleepycat/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 1302
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    .line 1304
    .local v0, "bv":Lcom/sleepycat/asm/ByteVector;
    const v1, -0xffff01

    and-int/2addr v1, p1

    iget v2, p0, Lcom/sleepycat/asm/MethodWriter;->lastCodeOffset:I

    shl-int/lit8 v2, v2, 0x8

    or-int p1, v1, v2

    .line 1305
    invoke-static {p1, p2, v0}, Lcom/sleepycat/asm/AnnotationWriter;->putTarget(ILcom/sleepycat/asm/TypePath;Lcom/sleepycat/asm/ByteVector;)V

    .line 1307
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1308
    new-instance v7, Lcom/sleepycat/asm/AnnotationWriter;

    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget v1, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v6, v1, -0x2

    const/4 v3, 0x1

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/asm/AnnotationWriter;-><init>(Lcom/sleepycat/asm/ClassWriter;ZLcom/sleepycat/asm/ByteVector;Lcom/sleepycat/asm/ByteVector;I)V

    .line 1310
    .local v1, "aw":Lcom/sleepycat/asm/AnnotationWriter;
    if-eqz p4, :cond_0

    .line 1311
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->ctanns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 1312
    iput-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->ctanns:Lcom/sleepycat/asm/AnnotationWriter;

    goto :goto_0

    .line 1314
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->ictanns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 1315
    iput-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->ictanns:Lcom/sleepycat/asm/AnnotationWriter;

    .line 1317
    :goto_0
    return-object v1
.end method

.method public visitIntInsn(II)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 752
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->lastCodeOffset:I

    .line 754
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    if-eqz v0, :cond_3

    .line 755
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 757
    :cond_0
    const/16 v0, 0xbc

    if-eq p1, v0, :cond_3

    .line 760
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    add-int/2addr v0, v2

    .line 761
    .local v0, "size":I
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    if-le v0, v1, :cond_1

    .line 762
    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    .line 764
    :cond_1
    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    goto :goto_1

    .line 756
    .end local v0    # "size":I
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/sleepycat/asm/Frame;->execute(IILcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Item;)V

    .line 768
    :cond_3
    :goto_1
    const/16 v0, 0x11

    if-ne p1, v0, :cond_4

    .line 769
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    goto :goto_2

    .line 771
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/ByteVector;->put11(II)Lcom/sleepycat/asm/ByteVector;

    .line 773
    :goto_2
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/asm/Handle;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lcom/sleepycat/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 950
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->lastCodeOffset:I

    .line 951
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/asm/ClassWriter;->newInvokeDynamicItem(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/asm/Handle;[Ljava/lang/Object;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 952
    .local v0, "i":Lcom/sleepycat/asm/Item;
    iget v1, v0, Lcom/sleepycat/asm/Item;->intVal:I

    .line 954
    .local v1, "argSize":I
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    const/4 v3, 0x0

    const/16 v4, 0xba

    if-eqz v2, :cond_4

    .line 955
    iget v5, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    if-eqz v5, :cond_3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 966
    :cond_0
    if-nez v1, :cond_1

    .line 969
    invoke-static {p2}, Lcom/sleepycat/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v1

    .line 972
    iput v1, v0, Lcom/sleepycat/asm/Item;->intVal:I

    .line 974
    :cond_1
    iget v2, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    shr-int/lit8 v5, v1, 0x2

    sub-int/2addr v2, v5

    and-int/lit8 v5, v1, 0x3

    add-int/2addr v2, v5

    add-int/2addr v2, v6

    .line 977
    .local v2, "size":I
    iget v5, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    if-le v2, v5, :cond_2

    .line 978
    iput v2, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    .line 980
    :cond_2
    iput v2, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    goto :goto_1

    .line 956
    .end local v2    # "size":I
    :cond_3
    :goto_0
    iget-object v2, v2, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    iget-object v5, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v2, v4, v3, v5, v0}, Lcom/sleepycat/asm/Frame;->execute(IILcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Item;)V

    .line 984
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v5, v0, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 985
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v2, v3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 986
    return-void
.end method

.method public visitJumpInsn(ILcom/sleepycat/asm/Label;)V
    .locals 10
    .param p1, "opcode"    # I
    .param p2, "label"    # Lcom/sleepycat/asm/Label;

    .line 990
    const/16 v0, 0xc8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 991
    .local v3, "isWide":Z
    :goto_0
    if-eqz v3, :cond_1

    add-int/lit8 v4, p1, -0x21

    goto :goto_1

    :cond_1
    move v4, p1

    :goto_1
    move p1, v4

    .line 992
    iget-object v4, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v4, v4, Lcom/sleepycat/asm/ByteVector;->length:I

    iput v4, p0, Lcom/sleepycat/asm/MethodWriter;->lastCodeOffset:I

    .line 993
    const/4 v4, 0x0

    .line 995
    .local v4, "nextInsn":Lcom/sleepycat/asm/Label;
    iget-object v5, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    const/16 v6, 0xa8

    const/16 v7, 0xa7

    if-eqz v5, :cond_6

    .line 996
    iget v8, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    const/4 v9, 0x0

    if-nez v8, :cond_2

    .line 997
    iget-object v5, v5, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    invoke-virtual {v5, p1, v1, v9, v9}, Lcom/sleepycat/asm/Frame;->execute(IILcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Item;)V

    .line 999
    invoke-virtual {p2}, Lcom/sleepycat/asm/Label;->getFirst()Lcom/sleepycat/asm/Label;

    move-result-object v5

    iget v8, v5, Lcom/sleepycat/asm/Label;->status:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v5, Lcom/sleepycat/asm/Label;->status:I

    .line 1001
    invoke-direct {p0, v1, p2}, Lcom/sleepycat/asm/MethodWriter;->addSuccessor(ILcom/sleepycat/asm/Label;)V

    .line 1002
    if-eq p1, v7, :cond_6

    .line 1004
    new-instance v5, Lcom/sleepycat/asm/Label;

    invoke-direct {v5}, Lcom/sleepycat/asm/Label;-><init>()V

    move-object v4, v5

    goto :goto_2

    .line 1006
    :cond_2
    if-ne v8, v2, :cond_3

    .line 1007
    iget-object v5, v5, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    invoke-virtual {v5, p1, v1, v9, v9}, Lcom/sleepycat/asm/Frame;->execute(IILcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Item;)V

    goto :goto_2

    .line 1009
    :cond_3
    if-ne p1, v6, :cond_5

    .line 1010
    iget v5, p2, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_4

    .line 1011
    iget v5, p2, Lcom/sleepycat/asm/Label;->status:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p2, Lcom/sleepycat/asm/Label;->status:I

    .line 1012
    iget v5, p0, Lcom/sleepycat/asm/MethodWriter;->subroutines:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/sleepycat/asm/MethodWriter;->subroutines:I

    .line 1014
    :cond_4
    iget-object v5, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    iget v8, v5, Lcom/sleepycat/asm/Label;->status:I

    or-int/lit16 v8, v8, 0x80

    iput v8, v5, Lcom/sleepycat/asm/Label;->status:I

    .line 1015
    iget v5, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    add-int/2addr v5, v2

    invoke-direct {p0, v5, p2}, Lcom/sleepycat/asm/MethodWriter;->addSuccessor(ILcom/sleepycat/asm/Label;)V

    .line 1017
    new-instance v5, Lcom/sleepycat/asm/Label;

    invoke-direct {v5}, Lcom/sleepycat/asm/Label;-><init>()V

    move-object v4, v5

    goto :goto_2

    .line 1028
    :cond_5
    iget v5, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    sget-object v8, Lcom/sleepycat/asm/Frame;->SIZE:[I

    aget v8, v8, p1

    add-int/2addr v5, v8

    iput v5, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    .line 1029
    invoke-direct {p0, v5, p2}, Lcom/sleepycat/asm/MethodWriter;->addSuccessor(ILcom/sleepycat/asm/Label;)V

    .line 1034
    :cond_6
    :goto_2
    iget v5, p2, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_b

    iget v5, p2, Lcom/sleepycat/asm/Label;->position:I

    iget-object v8, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v8, v8, Lcom/sleepycat/asm/ByteVector;->length:I

    sub-int/2addr v5, v8

    const/16 v8, -0x8000

    if-ge v5, v8, :cond_b

    .line 1043
    if-ne p1, v7, :cond_7

    .line 1044
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v1, v0}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    goto :goto_4

    .line 1045
    :cond_7
    if-ne p1, v6, :cond_8

    .line 1046
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    goto :goto_4

    .line 1050
    :cond_8
    if-eqz v4, :cond_9

    .line 1051
    iget v0, v4, Lcom/sleepycat/asm/Label;->status:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v4, Lcom/sleepycat/asm/Label;->status:I

    .line 1053
    :cond_9
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    const/16 v1, 0xa6

    if-gt p1, v1, :cond_a

    add-int/lit8 v1, p1, 0x1

    xor-int/2addr v1, v2

    sub-int/2addr v1, v2

    goto :goto_3

    :cond_a
    xor-int/lit8 v1, p1, 0x1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    .line 1055
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1059
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    const/16 v1, 0xdc

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    .line 1060
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iput-boolean v2, v0, Lcom/sleepycat/asm/ClassWriter;->hasAsmInsns:Z

    .line 1062
    :goto_4
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v1, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, p0, v0, v1, v2}, Lcom/sleepycat/asm/Label;->put(Lcom/sleepycat/asm/MethodWriter;Lcom/sleepycat/asm/ByteVector;IZ)V

    goto :goto_5

    .line 1063
    :cond_b
    if-eqz v3, :cond_c

    .line 1069
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    add-int/lit8 v1, p1, 0x21

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    .line 1070
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v1, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, p0, v0, v1, v2}, Lcom/sleepycat/asm/Label;->put(Lcom/sleepycat/asm/MethodWriter;Lcom/sleepycat/asm/ByteVector;IZ)V

    goto :goto_5

    .line 1078
    :cond_c
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    .line 1079
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v5, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    sub-int/2addr v5, v2

    invoke-virtual {p2, p0, v0, v5, v1}, Lcom/sleepycat/asm/Label;->put(Lcom/sleepycat/asm/MethodWriter;Lcom/sleepycat/asm/ByteVector;IZ)V

    .line 1081
    :goto_5
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    if-eqz v0, :cond_e

    .line 1082
    if-eqz v4, :cond_d

    .line 1087
    invoke-virtual {p0, v4}, Lcom/sleepycat/asm/MethodWriter;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 1089
    :cond_d
    if-ne p1, v7, :cond_e

    .line 1090
    invoke-direct {p0}, Lcom/sleepycat/asm/MethodWriter;->noSuccessor()V

    .line 1093
    :cond_e
    return-void
.end method

.method public visitLabel(Lcom/sleepycat/asm/Label;)V
    .locals 4
    .param p1, "label"    # Lcom/sleepycat/asm/Label;

    .line 1098
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget-boolean v1, v0, Lcom/sleepycat/asm/ClassWriter;->hasAsmInsns:Z

    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    iget-object v3, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget-object v3, v3, Lcom/sleepycat/asm/ByteVector;->data:[B

    invoke-virtual {p1, p0, v2, v3}, Lcom/sleepycat/asm/Label;->resolve(Lcom/sleepycat/asm/MethodWriter;I[B)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/sleepycat/asm/ClassWriter;->hasAsmInsns:Z

    .line 1100
    iget v0, p1, Lcom/sleepycat/asm/Label;->status:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1101
    return-void

    .line 1103
    :cond_0
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 1104
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    if-eqz v0, :cond_2

    .line 1105
    iget v0, p1, Lcom/sleepycat/asm/Label;->position:I

    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    iget v1, v1, Lcom/sleepycat/asm/Label;->position:I

    if-ne v0, v1, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    iget v1, v0, Lcom/sleepycat/asm/Label;->status:I

    iget v2, p1, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lcom/sleepycat/asm/Label;->status:I

    .line 1108
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    iget-object v0, v0, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    iput-object v0, p1, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    .line 1109
    return-void

    .line 1112
    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/sleepycat/asm/MethodWriter;->addSuccessor(ILcom/sleepycat/asm/Label;)V

    .line 1115
    :cond_2
    iput-object p1, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    .line 1116
    iget-object v0, p1, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    if-nez v0, :cond_3

    .line 1117
    new-instance v0, Lcom/sleepycat/asm/Frame;

    invoke-direct {v0}, Lcom/sleepycat/asm/Frame;-><init>()V

    iput-object v0, p1, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    .line 1118
    iget-object v0, p1, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    iput-object p1, v0, Lcom/sleepycat/asm/Frame;->owner:Lcom/sleepycat/asm/Label;

    .line 1121
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->previousBlock:Lcom/sleepycat/asm/Label;

    if-eqz v0, :cond_5

    .line 1122
    iget v0, p1, Lcom/sleepycat/asm/Label;->position:I

    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->previousBlock:Lcom/sleepycat/asm/Label;

    iget v1, v1, Lcom/sleepycat/asm/Label;->position:I

    if-ne v0, v1, :cond_4

    .line 1123
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->previousBlock:Lcom/sleepycat/asm/Label;

    iget v1, v0, Lcom/sleepycat/asm/Label;->status:I

    iget v2, p1, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lcom/sleepycat/asm/Label;->status:I

    .line 1124
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->previousBlock:Lcom/sleepycat/asm/Label;

    iget-object v0, v0, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    iput-object v0, p1, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    .line 1125
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->previousBlock:Lcom/sleepycat/asm/Label;

    iput-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    .line 1126
    return-void

    .line 1128
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->previousBlock:Lcom/sleepycat/asm/Label;

    iput-object p1, v0, Lcom/sleepycat/asm/Label;->successor:Lcom/sleepycat/asm/Label;

    .line 1130
    :cond_5
    iput-object p1, p0, Lcom/sleepycat/asm/MethodWriter;->previousBlock:Lcom/sleepycat/asm/Label;

    goto :goto_0

    .line 1131
    :cond_6
    if-ne v0, v1, :cond_8

    .line 1132
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    if-nez v0, :cond_7

    .line 1137
    iput-object p1, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    goto :goto_0

    .line 1141
    :cond_7
    iget-object v0, v0, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    iput-object p1, v0, Lcom/sleepycat/asm/Frame;->owner:Lcom/sleepycat/asm/Label;

    goto :goto_0

    .line 1143
    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 1144
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    if-eqz v0, :cond_9

    .line 1146
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    iput v1, v0, Lcom/sleepycat/asm/Label;->outputStackMax:I

    .line 1147
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/asm/MethodWriter;->addSuccessor(ILcom/sleepycat/asm/Label;)V

    .line 1150
    :cond_9
    iput-object p1, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    .line 1152
    iput v2, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    .line 1153
    iput v2, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    .line 1155
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->previousBlock:Lcom/sleepycat/asm/Label;

    if-eqz v0, :cond_a

    .line 1156
    iput-object p1, v0, Lcom/sleepycat/asm/Label;->successor:Lcom/sleepycat/asm/Label;

    .line 1158
    :cond_a
    iput-object p1, p0, Lcom/sleepycat/asm/MethodWriter;->previousBlock:Lcom/sleepycat/asm/Label;

    .line 1160
    :cond_b
    :goto_0
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 7
    .param p1, "cst"    # Ljava/lang/Object;

    .line 1164
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->lastCodeOffset:I

    .line 1165
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/ClassWriter;->newConstItem(Ljava/lang/Object;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 1167
    .local v0, "i":Lcom/sleepycat/asm/Item;
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    const/16 v2, 0x12

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-eqz v1, :cond_5

    .line 1168
    iget v5, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    if-eqz v5, :cond_4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_2

    .line 1173
    :cond_0
    iget v1, v0, Lcom/sleepycat/asm/Item;->type:I

    if-eq v1, v4, :cond_2

    iget v1, v0, Lcom/sleepycat/asm/Item;->type:I

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 1176
    :cond_1
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    add-int/2addr v1, v6

    .local v1, "size":I
    goto :goto_1

    .line 1174
    .end local v1    # "size":I
    :cond_2
    :goto_0
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    add-int/lit8 v1, v1, 0x2

    .line 1179
    .restart local v1    # "size":I
    :goto_1
    iget v5, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    if-le v1, v5, :cond_3

    .line 1180
    iput v1, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    .line 1182
    :cond_3
    iput v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    goto :goto_3

    .line 1169
    .end local v1    # "size":I
    :cond_4
    :goto_2
    iget-object v1, v1, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, v2, v5, v6, v0}, Lcom/sleepycat/asm/Frame;->execute(IILcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Item;)V

    .line 1186
    :cond_5
    :goto_3
    iget v1, v0, Lcom/sleepycat/asm/Item;->index:I

    .line 1187
    .local v1, "index":I
    iget v5, v0, Lcom/sleepycat/asm/Item;->type:I

    if-eq v5, v4, :cond_8

    iget v4, v0, Lcom/sleepycat/asm/Item;->type:I

    if-ne v4, v3, :cond_6

    goto :goto_4

    .line 1189
    :cond_6
    const/16 v3, 0x100

    if-lt v1, v3, :cond_7

    .line 1190
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    const/16 v3, 0x13

    invoke-virtual {v2, v3, v1}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    goto :goto_5

    .line 1192
    :cond_7
    iget-object v3, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v3, v2, v1}, Lcom/sleepycat/asm/ByteVector;->put11(II)Lcom/sleepycat/asm/ByteVector;

    goto :goto_5

    .line 1188
    :cond_8
    :goto_4
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v1}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 1194
    :goto_5
    return-void
.end method

.method public visitLineNumber(ILcom/sleepycat/asm/Label;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "start"    # Lcom/sleepycat/asm/Label;

    .line 1424
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->lineNumber:Lcom/sleepycat/asm/ByteVector;

    if-nez v0, :cond_0

    .line 1425
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->lineNumber:Lcom/sleepycat/asm/ByteVector;

    .line 1427
    :cond_0
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->lineNumberCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->lineNumberCount:I

    .line 1428
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->lineNumber:Lcom/sleepycat/asm/ByteVector;

    iget v1, p2, Lcom/sleepycat/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1429
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->lineNumber:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1430
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/asm/Label;Lcom/sleepycat/asm/Label;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lcom/sleepycat/asm/Label;
    .param p5, "end"    # Lcom/sleepycat/asm/Label;
    .param p6, "index"    # I

    .line 1362
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 1363
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->localVarType:Lcom/sleepycat/asm/ByteVector;

    if-nez v1, :cond_0

    .line 1364
    new-instance v1, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v1}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->localVarType:Lcom/sleepycat/asm/ByteVector;

    .line 1366
    :cond_0
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->localVarTypeCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sleepycat/asm/MethodWriter;->localVarTypeCount:I

    .line 1367
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->localVarType:Lcom/sleepycat/asm/ByteVector;

    iget v2, p4, Lcom/sleepycat/asm/Label;->position:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget v2, p5, Lcom/sleepycat/asm/Label;->position:I

    iget v3, p4, Lcom/sleepycat/asm/Label;->position:I

    sub-int/2addr v2, v3

    .line 1368
    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    .line 1369
    invoke-virtual {v2, p1}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v2, p3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    .line 1370
    invoke-virtual {v1, p6}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1372
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->localVar:Lcom/sleepycat/asm/ByteVector;

    if-nez v1, :cond_2

    .line 1373
    new-instance v1, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v1}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->localVar:Lcom/sleepycat/asm/ByteVector;

    .line 1375
    :cond_2
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->localVarCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sleepycat/asm/MethodWriter;->localVarCount:I

    .line 1376
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->localVar:Lcom/sleepycat/asm/ByteVector;

    iget v2, p4, Lcom/sleepycat/asm/Label;->position:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget v2, p5, Lcom/sleepycat/asm/Label;->position:I

    iget v3, p4, Lcom/sleepycat/asm/Label;->position:I

    sub-int/2addr v2, v3

    .line 1377
    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    .line 1378
    invoke-virtual {v2, p1}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v2, p2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    .line 1379
    invoke-virtual {v1, p6}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1380
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 1382
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1383
    .local v1, "c":C
    const/16 v2, 0x4a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x44

    if-ne v1, v2, :cond_4

    :cond_3
    const/4 v0, 0x2

    :cond_4
    add-int/2addr v0, p6

    .line 1384
    .local v0, "n":I
    iget v2, p0, Lcom/sleepycat/asm/MethodWriter;->maxLocals:I

    if-le v0, v2, :cond_5

    .line 1385
    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->maxLocals:I

    .line 1388
    .end local v0    # "n":I
    .end local v1    # "c":C
    :cond_5
    return-void
.end method

.method public visitLocalVariableAnnotation(ILcom/sleepycat/asm/TypePath;[Lcom/sleepycat/asm/Label;[Lcom/sleepycat/asm/Label;[ILjava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lcom/sleepycat/asm/TypePath;
    .param p3, "start"    # [Lcom/sleepycat/asm/Label;
    .param p4, "end"    # [Lcom/sleepycat/asm/Label;
    .param p5, "index"    # [I
    .param p6, "desc"    # Ljava/lang/String;
    .param p7, "visible"    # Z

    .line 1394
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    .line 1396
    .local v0, "bv":Lcom/sleepycat/asm/ByteVector;
    ushr-int/lit8 v1, p1, 0x18

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1397
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 1398
    aget-object v2, p3, v1

    iget v2, v2, Lcom/sleepycat/asm/Label;->position:I

    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v2

    aget-object v3, p4, v1

    iget v3, v3, Lcom/sleepycat/asm/Label;->position:I

    aget-object v4, p3, v1

    iget v4, v4, Lcom/sleepycat/asm/Label;->position:I

    sub-int/2addr v3, v4

    .line 1399
    invoke-virtual {v2, v3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v2

    aget v3, p5, v1

    .line 1400
    invoke-virtual {v2, v3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1402
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 1403
    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    goto :goto_1

    .line 1405
    :cond_1
    iget-object v2, p2, Lcom/sleepycat/asm/TypePath;->b:[B

    iget v3, p2, Lcom/sleepycat/asm/TypePath;->offset:I

    aget-byte v2, v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 1406
    .local v2, "length":I
    iget-object v3, p2, Lcom/sleepycat/asm/TypePath;->b:[B

    iget v4, p2, Lcom/sleepycat/asm/TypePath;->offset:I

    invoke-virtual {v0, v3, v4, v2}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 1409
    .end local v2    # "length":I
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v2, p6}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1410
    new-instance v7, Lcom/sleepycat/asm/AnnotationWriter;

    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const/4 v3, 0x1

    iget v1, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v6, v1, -0x2

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/asm/AnnotationWriter;-><init>(Lcom/sleepycat/asm/ClassWriter;ZLcom/sleepycat/asm/ByteVector;Lcom/sleepycat/asm/ByteVector;I)V

    .line 1412
    .local v1, "aw":Lcom/sleepycat/asm/AnnotationWriter;
    if-eqz p7, :cond_2

    .line 1413
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->ctanns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 1414
    iput-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->ctanns:Lcom/sleepycat/asm/AnnotationWriter;

    goto :goto_2

    .line 1416
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->ictanns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 1417
    iput-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->ictanns:Lcom/sleepycat/asm/AnnotationWriter;

    .line 1419
    :goto_2
    return-object v1
.end method

.method public visitLookupSwitchInsn(Lcom/sleepycat/asm/Label;[I[Lcom/sleepycat/asm/Label;)V
    .locals 5
    .param p1, "dflt"    # Lcom/sleepycat/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lcom/sleepycat/asm/Label;

    .line 1240
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->lastCodeOffset:I

    .line 1242
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 1243
    .local v0, "source":I
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    const/16 v2, 0xab

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    .line 1244
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v2, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 1245
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    const/4 v2, 0x1

    invoke-virtual {p1, p0, v1, v0, v2}, Lcom/sleepycat/asm/Label;->put(Lcom/sleepycat/asm/MethodWriter;Lcom/sleepycat/asm/ByteVector;IZ)V

    .line 1246
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    array-length v3, p3

    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 1247
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_0

    .line 1248
    iget-object v3, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    aget v4, p2, v1

    invoke-virtual {v3, v4}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 1249
    aget-object v3, p3, v1

    iget-object v4, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v3, p0, v4, v0, v2}, Lcom/sleepycat/asm/Label;->put(Lcom/sleepycat/asm/MethodWriter;Lcom/sleepycat/asm/ByteVector;IZ)V

    .line 1247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1252
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/sleepycat/asm/MethodWriter;->visitSwitchInsn(Lcom/sleepycat/asm/Label;[Lcom/sleepycat/asm/Label;)V

    .line 1253
    return-void
.end method

.method public visitMaxs(II)V
    .locals 17
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 1434
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-nez v2, :cond_f

    .line 1436
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->firstHandler:Lcom/sleepycat/asm/Handler;

    .line 1437
    .local v2, "handler":Lcom/sleepycat/asm/Handler;
    :goto_0
    const/high16 v6, 0x1700000

    const-string v7, "java/lang/Throwable"

    if-eqz v2, :cond_2

    .line 1438
    iget-object v8, v2, Lcom/sleepycat/asm/Handler;->start:Lcom/sleepycat/asm/Label;

    invoke-virtual {v8}, Lcom/sleepycat/asm/Label;->getFirst()Lcom/sleepycat/asm/Label;

    move-result-object v8

    .line 1439
    .local v8, "l":Lcom/sleepycat/asm/Label;
    iget-object v9, v2, Lcom/sleepycat/asm/Handler;->handler:Lcom/sleepycat/asm/Label;

    invoke-virtual {v9}, Lcom/sleepycat/asm/Label;->getFirst()Lcom/sleepycat/asm/Label;

    move-result-object v9

    .line 1440
    .local v9, "h":Lcom/sleepycat/asm/Label;
    iget-object v10, v2, Lcom/sleepycat/asm/Handler;->end:Lcom/sleepycat/asm/Label;

    invoke-virtual {v10}, Lcom/sleepycat/asm/Label;->getFirst()Lcom/sleepycat/asm/Label;

    move-result-object v10

    .line 1442
    .local v10, "e":Lcom/sleepycat/asm/Label;
    iget-object v11, v2, Lcom/sleepycat/asm/Handler;->desc:Ljava/lang/String;

    if-nez v11, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, v2, Lcom/sleepycat/asm/Handler;->desc:Ljava/lang/String;

    .line 1444
    .local v7, "t":Ljava/lang/String;
    :goto_1
    iget-object v11, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v11, v7}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v11

    or-int/2addr v6, v11

    .line 1446
    .local v6, "kind":I
    iget v11, v9, Lcom/sleepycat/asm/Label;->status:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v9, Lcom/sleepycat/asm/Label;->status:I

    .line 1448
    :goto_2
    if-eq v8, v10, :cond_1

    .line 1450
    new-instance v11, Lcom/sleepycat/asm/Edge;

    invoke-direct {v11}, Lcom/sleepycat/asm/Edge;-><init>()V

    .line 1451
    .local v11, "b":Lcom/sleepycat/asm/Edge;
    iput v6, v11, Lcom/sleepycat/asm/Edge;->info:I

    .line 1452
    iput-object v9, v11, Lcom/sleepycat/asm/Edge;->successor:Lcom/sleepycat/asm/Label;

    .line 1454
    iget-object v12, v8, Lcom/sleepycat/asm/Label;->successors:Lcom/sleepycat/asm/Edge;

    iput-object v12, v11, Lcom/sleepycat/asm/Edge;->next:Lcom/sleepycat/asm/Edge;

    .line 1455
    iput-object v11, v8, Lcom/sleepycat/asm/Label;->successors:Lcom/sleepycat/asm/Edge;

    .line 1457
    iget-object v8, v8, Lcom/sleepycat/asm/Label;->successor:Lcom/sleepycat/asm/Label;

    .line 1458
    .end local v11    # "b":Lcom/sleepycat/asm/Edge;
    goto :goto_2

    .line 1459
    :cond_1
    iget-object v2, v2, Lcom/sleepycat/asm/Handler;->next:Lcom/sleepycat/asm/Handler;

    .line 1460
    .end local v6    # "kind":I
    .end local v7    # "t":Ljava/lang/String;
    .end local v8    # "l":Lcom/sleepycat/asm/Label;
    .end local v9    # "h":Lcom/sleepycat/asm/Label;
    .end local v10    # "e":Lcom/sleepycat/asm/Label;
    goto :goto_0

    .line 1463
    :cond_2
    iget-object v8, v0, Lcom/sleepycat/asm/MethodWriter;->labels:Lcom/sleepycat/asm/Label;

    iget-object v8, v8, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    .line 1464
    .local v8, "f":Lcom/sleepycat/asm/Frame;
    iget-object v9, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget v10, v0, Lcom/sleepycat/asm/MethodWriter;->access:I

    iget-object v11, v0, Lcom/sleepycat/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v11}, Lcom/sleepycat/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/sleepycat/asm/Type;

    move-result-object v11

    iget v12, v0, Lcom/sleepycat/asm/MethodWriter;->maxLocals:I

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sleepycat/asm/Frame;->initInputFrame(Lcom/sleepycat/asm/ClassWriter;I[Lcom/sleepycat/asm/Type;I)V

    .line 1466
    invoke-direct {v0, v8}, Lcom/sleepycat/asm/MethodWriter;->visitFrame(Lcom/sleepycat/asm/Frame;)V

    .line 1474
    const/4 v9, 0x0

    .line 1475
    .local v9, "max":I
    iget-object v10, v0, Lcom/sleepycat/asm/MethodWriter;->labels:Lcom/sleepycat/asm/Label;

    .line 1476
    .local v10, "changed":Lcom/sleepycat/asm/Label;
    :goto_3
    if-eqz v10, :cond_7

    .line 1478
    move-object v11, v10

    .line 1479
    .local v11, "l":Lcom/sleepycat/asm/Label;
    iget-object v10, v10, Lcom/sleepycat/asm/Label;->next:Lcom/sleepycat/asm/Label;

    .line 1480
    iput-object v3, v11, Lcom/sleepycat/asm/Label;->next:Lcom/sleepycat/asm/Label;

    .line 1481
    iget-object v8, v11, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    .line 1483
    iget v12, v11, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_3

    .line 1484
    iget v12, v11, Lcom/sleepycat/asm/Label;->status:I

    or-int/2addr v12, v4

    iput v12, v11, Lcom/sleepycat/asm/Label;->status:I

    .line 1487
    :cond_3
    iget v12, v11, Lcom/sleepycat/asm/Label;->status:I

    or-int/lit8 v12, v12, 0x40

    iput v12, v11, Lcom/sleepycat/asm/Label;->status:I

    .line 1489
    iget-object v12, v8, Lcom/sleepycat/asm/Frame;->inputStack:[I

    array-length v12, v12

    iget v13, v11, Lcom/sleepycat/asm/Label;->outputStackMax:I

    add-int/2addr v12, v13

    .line 1490
    .local v12, "blockMax":I
    if-le v12, v9, :cond_4

    .line 1491
    move v9, v12

    .line 1494
    :cond_4
    iget-object v13, v11, Lcom/sleepycat/asm/Label;->successors:Lcom/sleepycat/asm/Edge;

    .line 1495
    .local v13, "e":Lcom/sleepycat/asm/Edge;
    :goto_4
    if-eqz v13, :cond_6

    .line 1496
    iget-object v14, v13, Lcom/sleepycat/asm/Edge;->successor:Lcom/sleepycat/asm/Label;

    invoke-virtual {v14}, Lcom/sleepycat/asm/Label;->getFirst()Lcom/sleepycat/asm/Label;

    move-result-object v14

    .line 1497
    .local v14, "n":Lcom/sleepycat/asm/Label;
    iget-object v15, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget-object v3, v14, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    iget v6, v13, Lcom/sleepycat/asm/Edge;->info:I

    invoke-virtual {v8, v15, v3, v6}, Lcom/sleepycat/asm/Frame;->merge(Lcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Frame;I)Z

    move-result v3

    .line 1498
    .local v3, "change":Z
    if-eqz v3, :cond_5

    iget-object v6, v14, Lcom/sleepycat/asm/Label;->next:Lcom/sleepycat/asm/Label;

    if-nez v6, :cond_5

    .line 1501
    iput-object v10, v14, Lcom/sleepycat/asm/Label;->next:Lcom/sleepycat/asm/Label;

    .line 1502
    move-object v10, v14

    .line 1504
    :cond_5
    iget-object v13, v13, Lcom/sleepycat/asm/Edge;->next:Lcom/sleepycat/asm/Edge;

    .line 1505
    .end local v3    # "change":Z
    .end local v14    # "n":Lcom/sleepycat/asm/Label;
    const/4 v3, 0x0

    const/high16 v6, 0x1700000

    goto :goto_4

    .line 1506
    .end local v11    # "l":Lcom/sleepycat/asm/Label;
    .end local v12    # "blockMax":I
    .end local v13    # "e":Lcom/sleepycat/asm/Edge;
    :cond_6
    const/4 v3, 0x0

    const/high16 v6, 0x1700000

    goto :goto_3

    .line 1509
    :cond_7
    iget-object v3, v0, Lcom/sleepycat/asm/MethodWriter;->labels:Lcom/sleepycat/asm/Label;

    .line 1510
    .local v3, "l":Lcom/sleepycat/asm/Label;
    :goto_5
    const/4 v6, 0x0

    if-eqz v3, :cond_d

    .line 1511
    iget-object v8, v3, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    .line 1512
    iget v11, v3, Lcom/sleepycat/asm/Label;->status:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_8

    .line 1513
    invoke-direct {v0, v8}, Lcom/sleepycat/asm/MethodWriter;->visitFrame(Lcom/sleepycat/asm/Frame;)V

    .line 1515
    :cond_8
    iget v11, v3, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit8 v11, v11, 0x40

    if-nez v11, :cond_c

    .line 1517
    iget-object v11, v3, Lcom/sleepycat/asm/Label;->successor:Lcom/sleepycat/asm/Label;

    .line 1518
    .local v11, "k":Lcom/sleepycat/asm/Label;
    iget v12, v3, Lcom/sleepycat/asm/Label;->position:I

    .line 1519
    .local v12, "start":I
    if-nez v11, :cond_9

    iget-object v13, v0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v13, v13, Lcom/sleepycat/asm/ByteVector;->length:I

    goto :goto_6

    :cond_9
    iget v13, v11, Lcom/sleepycat/asm/Label;->position:I

    :goto_6
    sub-int/2addr v13, v5

    .line 1521
    .local v13, "end":I
    if-lt v13, v12, :cond_b

    .line 1522
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1524
    move v14, v12

    .local v14, "i":I
    :goto_7
    if-ge v14, v13, :cond_a

    .line 1525
    iget-object v15, v0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget-object v15, v15, Lcom/sleepycat/asm/ByteVector;->data:[B

    aput-byte v6, v15, v14

    .line 1524
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 1527
    .end local v14    # "i":I
    :cond_a
    iget-object v14, v0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget-object v14, v14, Lcom/sleepycat/asm/ByteVector;->data:[B

    const/16 v15, -0x41

    aput-byte v15, v14, v13

    .line 1529
    invoke-direct {v0, v12, v6, v5}, Lcom/sleepycat/asm/MethodWriter;->startFrame(III)I

    move-result v6

    .line 1530
    .local v6, "frameIndex":I
    iget-object v14, v0, Lcom/sleepycat/asm/MethodWriter;->frame:[I

    iget-object v15, v0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    .line 1531
    invoke-virtual {v15, v7}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v15

    const/high16 v16, 0x1700000

    or-int v15, v15, v16

    aput v15, v14, v6

    .line 1532
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/asm/MethodWriter;->endFrame()V

    .line 1535
    iget-object v14, v0, Lcom/sleepycat/asm/MethodWriter;->firstHandler:Lcom/sleepycat/asm/Handler;

    invoke-static {v14, v3, v11}, Lcom/sleepycat/asm/Handler;->remove(Lcom/sleepycat/asm/Handler;Lcom/sleepycat/asm/Label;Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Handler;

    move-result-object v14

    iput-object v14, v0, Lcom/sleepycat/asm/MethodWriter;->firstHandler:Lcom/sleepycat/asm/Handler;

    goto :goto_8

    .line 1521
    .end local v6    # "frameIndex":I
    :cond_b
    const/high16 v16, 0x1700000

    goto :goto_8

    .line 1515
    .end local v11    # "k":Lcom/sleepycat/asm/Label;
    .end local v12    # "start":I
    .end local v13    # "end":I
    :cond_c
    const/high16 v16, 0x1700000

    .line 1538
    :goto_8
    iget-object v3, v3, Lcom/sleepycat/asm/Label;->successor:Lcom/sleepycat/asm/Label;

    goto :goto_5

    .line 1541
    :cond_d
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->firstHandler:Lcom/sleepycat/asm/Handler;

    .line 1542
    iput v6, v0, Lcom/sleepycat/asm/MethodWriter;->handlerCount:I

    .line 1543
    :goto_9
    if-eqz v2, :cond_e

    .line 1544
    iget v4, v0, Lcom/sleepycat/asm/MethodWriter;->handlerCount:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/sleepycat/asm/MethodWriter;->handlerCount:I

    .line 1545
    iget-object v2, v2, Lcom/sleepycat/asm/Handler;->next:Lcom/sleepycat/asm/Handler;

    goto :goto_9

    .line 1548
    :cond_e
    iput v9, v0, Lcom/sleepycat/asm/MethodWriter;->maxStack:I

    .line 1549
    .end local v2    # "handler":Lcom/sleepycat/asm/Handler;
    .end local v3    # "l":Lcom/sleepycat/asm/Label;
    .end local v8    # "f":Lcom/sleepycat/asm/Frame;
    .end local v9    # "max":I
    .end local v10    # "changed":Lcom/sleepycat/asm/Label;
    move/from16 v2, p2

    goto/16 :goto_14

    :cond_f
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1f

    .line 1551
    iget-object v2, v0, Lcom/sleepycat/asm/MethodWriter;->firstHandler:Lcom/sleepycat/asm/Handler;

    .line 1552
    .restart local v2    # "handler":Lcom/sleepycat/asm/Handler;
    :goto_a
    const v3, 0x7fffffff

    if-eqz v2, :cond_12

    .line 1553
    iget-object v6, v2, Lcom/sleepycat/asm/Handler;->start:Lcom/sleepycat/asm/Label;

    .line 1554
    .local v6, "l":Lcom/sleepycat/asm/Label;
    iget-object v7, v2, Lcom/sleepycat/asm/Handler;->handler:Lcom/sleepycat/asm/Label;

    .line 1555
    .local v7, "h":Lcom/sleepycat/asm/Label;
    iget-object v8, v2, Lcom/sleepycat/asm/Handler;->end:Lcom/sleepycat/asm/Label;

    .line 1557
    .local v8, "e":Lcom/sleepycat/asm/Label;
    :goto_b
    if-eq v6, v8, :cond_11

    .line 1559
    new-instance v9, Lcom/sleepycat/asm/Edge;

    invoke-direct {v9}, Lcom/sleepycat/asm/Edge;-><init>()V

    .line 1560
    .local v9, "b":Lcom/sleepycat/asm/Edge;
    iput v3, v9, Lcom/sleepycat/asm/Edge;->info:I

    .line 1561
    iput-object v7, v9, Lcom/sleepycat/asm/Edge;->successor:Lcom/sleepycat/asm/Label;

    .line 1563
    iget v10, v6, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit16 v10, v10, 0x80

    if-nez v10, :cond_10

    .line 1564
    iget-object v10, v6, Lcom/sleepycat/asm/Label;->successors:Lcom/sleepycat/asm/Edge;

    iput-object v10, v9, Lcom/sleepycat/asm/Edge;->next:Lcom/sleepycat/asm/Edge;

    .line 1565
    iput-object v9, v6, Lcom/sleepycat/asm/Label;->successors:Lcom/sleepycat/asm/Edge;

    goto :goto_c

    .line 1570
    :cond_10
    iget-object v10, v6, Lcom/sleepycat/asm/Label;->successors:Lcom/sleepycat/asm/Edge;

    iget-object v10, v10, Lcom/sleepycat/asm/Edge;->next:Lcom/sleepycat/asm/Edge;

    iget-object v10, v10, Lcom/sleepycat/asm/Edge;->next:Lcom/sleepycat/asm/Edge;

    iput-object v10, v9, Lcom/sleepycat/asm/Edge;->next:Lcom/sleepycat/asm/Edge;

    .line 1571
    iget-object v10, v6, Lcom/sleepycat/asm/Label;->successors:Lcom/sleepycat/asm/Edge;

    iget-object v10, v10, Lcom/sleepycat/asm/Edge;->next:Lcom/sleepycat/asm/Edge;

    iput-object v9, v10, Lcom/sleepycat/asm/Edge;->next:Lcom/sleepycat/asm/Edge;

    .line 1574
    :goto_c
    iget-object v6, v6, Lcom/sleepycat/asm/Label;->successor:Lcom/sleepycat/asm/Label;

    .line 1575
    .end local v9    # "b":Lcom/sleepycat/asm/Edge;
    goto :goto_b

    .line 1576
    :cond_11
    iget-object v2, v2, Lcom/sleepycat/asm/Handler;->next:Lcom/sleepycat/asm/Handler;

    .line 1577
    .end local v6    # "l":Lcom/sleepycat/asm/Label;
    .end local v7    # "h":Lcom/sleepycat/asm/Label;
    .end local v8    # "e":Lcom/sleepycat/asm/Label;
    goto :goto_a

    .line 1579
    :cond_12
    iget v6, v0, Lcom/sleepycat/asm/MethodWriter;->subroutines:I

    if-lez v6, :cond_18

    .line 1586
    const/4 v7, 0x0

    .line 1587
    .local v7, "id":I
    iget-object v8, v0, Lcom/sleepycat/asm/MethodWriter;->labels:Lcom/sleepycat/asm/Label;

    const-wide/16 v9, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v9, v10, v6}, Lcom/sleepycat/asm/Label;->visitSubroutine(Lcom/sleepycat/asm/Label;JI)V

    .line 1589
    iget-object v6, v0, Lcom/sleepycat/asm/MethodWriter;->labels:Lcom/sleepycat/asm/Label;

    .line 1590
    .restart local v6    # "l":Lcom/sleepycat/asm/Label;
    :goto_d
    if-eqz v6, :cond_15

    .line 1591
    iget v8, v6, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_14

    .line 1593
    iget-object v8, v6, Lcom/sleepycat/asm/Label;->successors:Lcom/sleepycat/asm/Edge;

    iget-object v8, v8, Lcom/sleepycat/asm/Edge;->next:Lcom/sleepycat/asm/Edge;

    iget-object v8, v8, Lcom/sleepycat/asm/Edge;->successor:Lcom/sleepycat/asm/Label;

    .line 1595
    .local v8, "subroutine":Lcom/sleepycat/asm/Label;
    iget v11, v8, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit16 v11, v11, 0x400

    if-nez v11, :cond_13

    .line 1597
    add-int/lit8 v7, v7, 0x1

    .line 1598
    int-to-long v11, v7

    const-wide/16 v13, 0x20

    div-long/2addr v11, v13

    shl-long/2addr v11, v4

    rem-int/lit8 v13, v7, 0x20

    shl-long v13, v9, v13

    or-long/2addr v11, v13

    iget v13, v0, Lcom/sleepycat/asm/MethodWriter;->subroutines:I

    const/4 v14, 0x0

    invoke-virtual {v8, v14, v11, v12, v13}, Lcom/sleepycat/asm/Label;->visitSubroutine(Lcom/sleepycat/asm/Label;JI)V

    goto :goto_e

    .line 1595
    :cond_13
    const/4 v14, 0x0

    goto :goto_e

    .line 1591
    .end local v8    # "subroutine":Lcom/sleepycat/asm/Label;
    :cond_14
    const/4 v14, 0x0

    .line 1602
    :goto_e
    iget-object v6, v6, Lcom/sleepycat/asm/Label;->successor:Lcom/sleepycat/asm/Label;

    goto :goto_d

    .line 1605
    :cond_15
    iget-object v4, v0, Lcom/sleepycat/asm/MethodWriter;->labels:Lcom/sleepycat/asm/Label;

    .line 1606
    .end local v6    # "l":Lcom/sleepycat/asm/Label;
    .local v4, "l":Lcom/sleepycat/asm/Label;
    :goto_f
    if-eqz v4, :cond_18

    .line 1607
    iget v6, v4, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_17

    .line 1608
    iget-object v6, v0, Lcom/sleepycat/asm/MethodWriter;->labels:Lcom/sleepycat/asm/Label;

    .line 1609
    .local v6, "L":Lcom/sleepycat/asm/Label;
    :goto_10
    if-eqz v6, :cond_16

    .line 1610
    iget v8, v6, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit16 v8, v8, -0x801

    iput v8, v6, Lcom/sleepycat/asm/Label;->status:I

    .line 1611
    iget-object v6, v6, Lcom/sleepycat/asm/Label;->successor:Lcom/sleepycat/asm/Label;

    goto :goto_10

    .line 1614
    :cond_16
    iget-object v8, v4, Lcom/sleepycat/asm/Label;->successors:Lcom/sleepycat/asm/Edge;

    iget-object v8, v8, Lcom/sleepycat/asm/Edge;->next:Lcom/sleepycat/asm/Edge;

    iget-object v8, v8, Lcom/sleepycat/asm/Edge;->successor:Lcom/sleepycat/asm/Label;

    .line 1615
    .restart local v8    # "subroutine":Lcom/sleepycat/asm/Label;
    const-wide/16 v9, 0x0

    iget v11, v0, Lcom/sleepycat/asm/MethodWriter;->subroutines:I

    invoke-virtual {v8, v4, v9, v10, v11}, Lcom/sleepycat/asm/Label;->visitSubroutine(Lcom/sleepycat/asm/Label;JI)V

    .line 1617
    .end local v6    # "L":Lcom/sleepycat/asm/Label;
    .end local v8    # "subroutine":Lcom/sleepycat/asm/Label;
    :cond_17
    iget-object v4, v4, Lcom/sleepycat/asm/Label;->successor:Lcom/sleepycat/asm/Label;

    goto :goto_f

    .line 1631
    .end local v4    # "l":Lcom/sleepycat/asm/Label;
    .end local v7    # "id":I
    :cond_18
    const/4 v4, 0x0

    .line 1632
    .local v4, "max":I
    iget-object v6, v0, Lcom/sleepycat/asm/MethodWriter;->labels:Lcom/sleepycat/asm/Label;

    .line 1633
    .local v6, "stack":Lcom/sleepycat/asm/Label;
    :goto_11
    if-eqz v6, :cond_1e

    .line 1635
    move-object v7, v6

    .line 1636
    .local v7, "l":Lcom/sleepycat/asm/Label;
    iget-object v6, v6, Lcom/sleepycat/asm/Label;->next:Lcom/sleepycat/asm/Label;

    .line 1638
    iget v8, v7, Lcom/sleepycat/asm/Label;->inputStackTop:I

    .line 1639
    .local v8, "start":I
    iget v9, v7, Lcom/sleepycat/asm/Label;->outputStackMax:I

    add-int/2addr v9, v8

    .line 1641
    .local v9, "blockMax":I
    if-le v9, v4, :cond_19

    .line 1642
    move v4, v9

    .line 1645
    :cond_19
    iget-object v10, v7, Lcom/sleepycat/asm/Label;->successors:Lcom/sleepycat/asm/Edge;

    .line 1646
    .local v10, "b":Lcom/sleepycat/asm/Edge;
    iget v11, v7, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_1a

    .line 1648
    iget-object v10, v10, Lcom/sleepycat/asm/Edge;->next:Lcom/sleepycat/asm/Edge;

    .line 1650
    :cond_1a
    :goto_12
    if-eqz v10, :cond_1d

    .line 1651
    iget-object v7, v10, Lcom/sleepycat/asm/Edge;->successor:Lcom/sleepycat/asm/Label;

    .line 1653
    iget v11, v7, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit8 v11, v11, 0x8

    if-nez v11, :cond_1c

    .line 1655
    iget v11, v10, Lcom/sleepycat/asm/Edge;->info:I

    if-ne v11, v3, :cond_1b

    move v11, v5

    goto :goto_13

    :cond_1b
    iget v11, v10, Lcom/sleepycat/asm/Edge;->info:I

    add-int/2addr v11, v8

    :goto_13
    iput v11, v7, Lcom/sleepycat/asm/Label;->inputStackTop:I

    .line 1658
    iget v11, v7, Lcom/sleepycat/asm/Label;->status:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v7, Lcom/sleepycat/asm/Label;->status:I

    .line 1659
    iput-object v6, v7, Lcom/sleepycat/asm/Label;->next:Lcom/sleepycat/asm/Label;

    .line 1660
    move-object v6, v7

    .line 1662
    :cond_1c
    iget-object v10, v10, Lcom/sleepycat/asm/Edge;->next:Lcom/sleepycat/asm/Edge;

    goto :goto_12

    .line 1664
    .end local v7    # "l":Lcom/sleepycat/asm/Label;
    .end local v8    # "start":I
    .end local v9    # "blockMax":I
    .end local v10    # "b":Lcom/sleepycat/asm/Edge;
    :cond_1d
    goto :goto_11

    .line 1665
    :cond_1e
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/sleepycat/asm/MethodWriter;->maxStack:I

    .line 1666
    .end local v2    # "handler":Lcom/sleepycat/asm/Handler;
    .end local v4    # "max":I
    .end local v6    # "stack":Lcom/sleepycat/asm/Label;
    move/from16 v2, p2

    goto :goto_14

    .line 1667
    :cond_1f
    iput v1, v0, Lcom/sleepycat/asm/MethodWriter;->maxStack:I

    .line 1668
    move/from16 v2, p2

    iput v2, v0, Lcom/sleepycat/asm/MethodWriter;->maxLocals:I

    .line 1670
    :goto_14
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .line 898
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->lastCodeOffset:I

    .line 899
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/sleepycat/asm/ClassWriter;->newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 900
    .local v0, "i":Lcom/sleepycat/asm/Item;
    iget v1, v0, Lcom/sleepycat/asm/Item;->intVal:I

    .line 902
    .local v1, "argSize":I
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 903
    iget v4, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 914
    :cond_0
    if-nez v1, :cond_1

    .line 917
    invoke-static {p4}, Lcom/sleepycat/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v1

    .line 920
    iput v1, v0, Lcom/sleepycat/asm/Item;->intVal:I

    .line 923
    :cond_1
    const/16 v2, 0xb8

    if-ne p1, v2, :cond_2

    .line 924
    iget v2, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    shr-int/lit8 v4, v1, 0x2

    sub-int/2addr v2, v4

    and-int/lit8 v4, v1, 0x3

    add-int/2addr v2, v4

    add-int/2addr v2, v5

    .local v2, "size":I
    goto :goto_0

    .line 926
    .end local v2    # "size":I
    :cond_2
    iget v2, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    shr-int/lit8 v4, v1, 0x2

    sub-int/2addr v2, v4

    and-int/lit8 v4, v1, 0x3

    add-int/2addr v2, v4

    .line 929
    .restart local v2    # "size":I
    :goto_0
    iget v4, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    if-le v2, v4, :cond_3

    .line 930
    iput v2, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    .line 932
    :cond_3
    iput v2, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    goto :goto_2

    .line 904
    .end local v2    # "size":I
    :cond_4
    :goto_1
    iget-object v2, v2, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    iget-object v4, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v2, p1, v3, v4, v0}, Lcom/sleepycat/asm/Frame;->execute(IILcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Item;)V

    .line 936
    :cond_5
    :goto_2
    const/16 v2, 0xb9

    if-ne p1, v2, :cond_7

    .line 937
    if-nez v1, :cond_6

    .line 938
    invoke-static {p4}, Lcom/sleepycat/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v1

    .line 939
    iput v1, v0, Lcom/sleepycat/asm/Item;->intVal:I

    .line 941
    :cond_6
    iget-object v4, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v5, v0, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v4, v2, v5}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    move-result-object v2

    shr-int/lit8 v4, v1, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/sleepycat/asm/ByteVector;->put11(II)Lcom/sleepycat/asm/ByteVector;

    goto :goto_3

    .line 943
    :cond_7
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v3, v0, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v2, p1, v3}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 945
    :goto_3
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 1283
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->lastCodeOffset:I

    .line 1284
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/sleepycat/asm/ClassWriter;->newStringishItem(ILjava/lang/String;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 1286
    .local v0, "i":Lcom/sleepycat/asm/Item;
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    const/16 v2, 0xc5

    if-eqz v1, :cond_2

    .line 1287
    iget v3, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 1292
    :cond_0
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    rsub-int/lit8 v3, p2, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    goto :goto_1

    .line 1288
    :cond_1
    :goto_0
    iget-object v1, v1, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    iget-object v3, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, v2, p2, v3, v0}, Lcom/sleepycat/asm/Frame;->execute(IILcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Item;)V

    .line 1296
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v3, v0, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    .line 1297
    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "access"    # I

    .line 504
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->methodParameters:Lcom/sleepycat/asm/ByteVector;

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->methodParameters:Lcom/sleepycat/asm/ByteVector;

    .line 507
    :cond_0
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->methodParametersCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->methodParametersCount:I

    .line 508
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->methodParameters:Lcom/sleepycat/asm/ByteVector;

    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    .line 509
    invoke-virtual {v0, p2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 510
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 8
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 558
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    .line 559
    .local v0, "bv":Lcom/sleepycat/asm/ByteVector;
    const-string v1, "Ljava/lang/Synthetic;"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->synthetics:I

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/asm/MethodWriter;->synthetics:I

    .line 563
    new-instance v7, Lcom/sleepycat/asm/AnnotationWriter;

    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/asm/AnnotationWriter;-><init>(Lcom/sleepycat/asm/ClassWriter;ZLcom/sleepycat/asm/ByteVector;Lcom/sleepycat/asm/ByteVector;I)V

    return-object v7

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 567
    new-instance v7, Lcom/sleepycat/asm/AnnotationWriter;

    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const/4 v3, 0x1

    const/4 v6, 0x2

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/asm/AnnotationWriter;-><init>(Lcom/sleepycat/asm/ClassWriter;ZLcom/sleepycat/asm/ByteVector;Lcom/sleepycat/asm/ByteVector;I)V

    .line 568
    .local v1, "aw":Lcom/sleepycat/asm/AnnotationWriter;
    if-eqz p3, :cond_2

    .line 569
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->panns:[Lcom/sleepycat/asm/AnnotationWriter;

    if-nez v2, :cond_1

    .line 570
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v2}, Lcom/sleepycat/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/sleepycat/asm/Type;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->panns:[Lcom/sleepycat/asm/AnnotationWriter;

    .line 572
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->panns:[Lcom/sleepycat/asm/AnnotationWriter;

    aget-object v2, v2, p1

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 573
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->panns:[Lcom/sleepycat/asm/AnnotationWriter;

    aput-object v1, v2, p1

    goto :goto_0

    .line 575
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->ipanns:[Lcom/sleepycat/asm/AnnotationWriter;

    if-nez v2, :cond_3

    .line 576
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v2}, Lcom/sleepycat/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/sleepycat/asm/Type;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->ipanns:[Lcom/sleepycat/asm/AnnotationWriter;

    .line 578
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->ipanns:[Lcom/sleepycat/asm/AnnotationWriter;

    aget-object v2, v2, p1

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 579
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->ipanns:[Lcom/sleepycat/asm/AnnotationWriter;

    aput-object v1, v2, p1

    .line 581
    :goto_0
    return-object v1
.end method

.method public varargs visitTableSwitchInsn(IILcom/sleepycat/asm/Label;[Lcom/sleepycat/asm/Label;)V
    .locals 5
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lcom/sleepycat/asm/Label;
    .param p4, "labels"    # [Lcom/sleepycat/asm/Label;

    .line 1223
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->lastCodeOffset:I

    .line 1225
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 1226
    .local v0, "source":I
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    const/16 v2, 0xaa

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    .line 1227
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v2, v1, Lcom/sleepycat/asm/ByteVector;->length:I

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 1228
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    const/4 v2, 0x1

    invoke-virtual {p3, p0, v1, v0, v2}, Lcom/sleepycat/asm/Label;->put(Lcom/sleepycat/asm/MethodWriter;Lcom/sleepycat/asm/ByteVector;IZ)V

    .line 1229
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v1, p1}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 1230
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p4

    if-ge v1, v3, :cond_0

    .line 1231
    aget-object v3, p4, v1

    iget-object v4, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v3, p0, v4, v0, v2}, Lcom/sleepycat/asm/Label;->put(Lcom/sleepycat/asm/MethodWriter;Lcom/sleepycat/asm/ByteVector;IZ)V

    .line 1230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1234
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/sleepycat/asm/MethodWriter;->visitSwitchInsn(Lcom/sleepycat/asm/Label;[Lcom/sleepycat/asm/Label;)V

    .line 1235
    return-void
.end method

.method public visitTryCatchAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lcom/sleepycat/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 1341
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    .line 1343
    .local v0, "bv":Lcom/sleepycat/asm/ByteVector;
    invoke-static {p1, p2, v0}, Lcom/sleepycat/asm/AnnotationWriter;->putTarget(ILcom/sleepycat/asm/TypePath;Lcom/sleepycat/asm/ByteVector;)V

    .line 1345
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1346
    new-instance v7, Lcom/sleepycat/asm/AnnotationWriter;

    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget v1, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v6, v1, -0x2

    const/4 v3, 0x1

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/asm/AnnotationWriter;-><init>(Lcom/sleepycat/asm/ClassWriter;ZLcom/sleepycat/asm/ByteVector;Lcom/sleepycat/asm/ByteVector;I)V

    .line 1348
    .local v1, "aw":Lcom/sleepycat/asm/AnnotationWriter;
    if-eqz p4, :cond_0

    .line 1349
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->ctanns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 1350
    iput-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->ctanns:Lcom/sleepycat/asm/AnnotationWriter;

    goto :goto_0

    .line 1352
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->ictanns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 1353
    iput-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->ictanns:Lcom/sleepycat/asm/AnnotationWriter;

    .line 1355
    :goto_0
    return-object v1
.end method

.method public visitTryCatchBlock(Lcom/sleepycat/asm/Label;Lcom/sleepycat/asm/Label;Lcom/sleepycat/asm/Label;Ljava/lang/String;)V
    .locals 2
    .param p1, "start"    # Lcom/sleepycat/asm/Label;
    .param p2, "end"    # Lcom/sleepycat/asm/Label;
    .param p3, "handler"    # Lcom/sleepycat/asm/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 1323
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->handlerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->handlerCount:I

    .line 1324
    new-instance v0, Lcom/sleepycat/asm/Handler;

    invoke-direct {v0}, Lcom/sleepycat/asm/Handler;-><init>()V

    .line 1325
    .local v0, "h":Lcom/sleepycat/asm/Handler;
    iput-object p1, v0, Lcom/sleepycat/asm/Handler;->start:Lcom/sleepycat/asm/Label;

    .line 1326
    iput-object p2, v0, Lcom/sleepycat/asm/Handler;->end:Lcom/sleepycat/asm/Label;

    .line 1327
    iput-object p3, v0, Lcom/sleepycat/asm/Handler;->handler:Lcom/sleepycat/asm/Label;

    .line 1328
    iput-object p4, v0, Lcom/sleepycat/asm/Handler;->desc:Ljava/lang/String;

    .line 1329
    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p4}, Lcom/sleepycat/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lcom/sleepycat/asm/Handler;->type:I

    .line 1330
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->lastHandler:Lcom/sleepycat/asm/Handler;

    if-nez v1, :cond_1

    .line 1331
    iput-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->firstHandler:Lcom/sleepycat/asm/Handler;

    goto :goto_1

    .line 1333
    :cond_1
    iput-object v0, v1, Lcom/sleepycat/asm/Handler;->next:Lcom/sleepycat/asm/Handler;

    .line 1335
    :goto_1
    iput-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->lastHandler:Lcom/sleepycat/asm/Handler;

    .line 1336
    return-void
.end method

.method public visitTypeAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lcom/sleepycat/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 538
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    .line 540
    .local v0, "bv":Lcom/sleepycat/asm/ByteVector;
    invoke-static {p1, p2, v0}, Lcom/sleepycat/asm/AnnotationWriter;->putTarget(ILcom/sleepycat/asm/TypePath;Lcom/sleepycat/asm/ByteVector;)V

    .line 542
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 543
    new-instance v7, Lcom/sleepycat/asm/AnnotationWriter;

    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget v1, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v6, v1, -0x2

    const/4 v3, 0x1

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/asm/AnnotationWriter;-><init>(Lcom/sleepycat/asm/ClassWriter;ZLcom/sleepycat/asm/ByteVector;Lcom/sleepycat/asm/ByteVector;I)V

    .line 545
    .local v1, "aw":Lcom/sleepycat/asm/AnnotationWriter;
    if-eqz p4, :cond_0

    .line 546
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 547
    iput-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    goto :goto_0

    .line 549
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 550
    iput-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    .line 552
    :goto_0
    return-object v1
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 836
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->lastCodeOffset:I

    .line 837
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p2}, Lcom/sleepycat/asm/ClassWriter;->newStringishItem(ILjava/lang/String;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 839
    .local v0, "i":Lcom/sleepycat/asm/Item;
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    if-eqz v1, :cond_3

    .line 840
    iget v2, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 842
    :cond_0
    const/16 v1, 0xbb

    if-ne p1, v1, :cond_3

    .line 845
    iget v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    add-int/2addr v1, v3

    .line 846
    .local v1, "size":I
    iget v2, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    if-le v1, v2, :cond_1

    .line 847
    iput v1, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    .line 849
    :cond_1
    iput v1, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    goto :goto_1

    .line 841
    .end local v1    # "size":I
    :cond_2
    :goto_0
    iget-object v1, v1, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    iget-object v2, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    iget-object v3, p0, Lcom/sleepycat/asm/MethodWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/sleepycat/asm/Frame;->execute(IILcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Item;)V

    .line 853
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v2, v0, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v1, p1, v2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 854
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 777
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->lastCodeOffset:I

    .line 779
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    const/16 v1, 0xa9

    const/16 v2, 0x100

    if-eqz v0, :cond_4

    .line 780
    iget v3, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 784
    :cond_0
    if-ne p1, v1, :cond_1

    .line 786
    iget v3, v0, Lcom/sleepycat/asm/Label;->status:I

    or-int/2addr v3, v2

    iput v3, v0, Lcom/sleepycat/asm/Label;->status:I

    .line 789
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->currentBlock:Lcom/sleepycat/asm/Label;

    iget v3, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    iput v3, v0, Lcom/sleepycat/asm/Label;->inputStackTop:I

    .line 790
    invoke-direct {p0}, Lcom/sleepycat/asm/MethodWriter;->noSuccessor()V

    goto :goto_1

    .line 792
    :cond_1
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    sget-object v3, Lcom/sleepycat/asm/Frame;->SIZE:[I

    aget v3, v3, p1

    add-int/2addr v0, v3

    .line 793
    .local v0, "size":I
    iget v3, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    if-le v0, v3, :cond_2

    .line 794
    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->maxStackSize:I

    .line 796
    :cond_2
    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->stackSize:I

    goto :goto_1

    .line 781
    .end local v0    # "size":I
    :cond_3
    :goto_0
    iget-object v0, v0, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v3, v3}, Lcom/sleepycat/asm/Frame;->execute(IILcom/sleepycat/asm/ClassWriter;Lcom/sleepycat/asm/Item;)V

    .line 800
    :cond_4
    :goto_1
    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    .line 803
    const/16 v0, 0x16

    if-eq p1, v0, :cond_6

    const/16 v0, 0x18

    if-eq p1, v0, :cond_6

    const/16 v0, 0x37

    if-eq p1, v0, :cond_6

    const/16 v0, 0x39

    if-ne p1, v0, :cond_5

    goto :goto_2

    .line 807
    :cond_5
    add-int/lit8 v0, p2, 0x1

    .local v0, "n":I
    goto :goto_3

    .line 805
    .end local v0    # "n":I
    :cond_6
    :goto_2
    add-int/lit8 v0, p2, 0x2

    .line 809
    .restart local v0    # "n":I
    :goto_3
    iget v3, p0, Lcom/sleepycat/asm/MethodWriter;->maxLocals:I

    if-le v0, v3, :cond_7

    .line 810
    iput v0, p0, Lcom/sleepycat/asm/MethodWriter;->maxLocals:I

    .line 814
    .end local v0    # "n":I
    :cond_7
    const/4 v0, 0x4

    const/16 v3, 0x36

    if-ge p2, v0, :cond_9

    if-eq p1, v1, :cond_9

    .line 816
    if-ge p1, v3, :cond_8

    .line 818
    add-int/lit8 v0, p1, -0x15

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1a

    add-int/2addr v0, p2

    .local v0, "opt":I
    goto :goto_4

    .line 821
    .end local v0    # "opt":I
    :cond_8
    add-int/lit8 v0, p1, -0x36

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3b

    add-int/2addr v0, p2

    .line 823
    .restart local v0    # "opt":I
    :goto_4
    iget-object v1, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v1, v0}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    .line 824
    .end local v0    # "opt":I
    goto :goto_5

    :cond_9
    if-lt p2, v2, :cond_a

    .line 825
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    goto :goto_5

    .line 827
    :cond_a
    iget-object v0, p0, Lcom/sleepycat/asm/MethodWriter;->code:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/ByteVector;->put11(II)Lcom/sleepycat/asm/ByteVector;

    .line 829
    :goto_5
    if-lt p1, v3, :cond_b

    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->compute:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/sleepycat/asm/MethodWriter;->handlerCount:I

    if-lez v0, :cond_b

    .line 830
    new-instance v0, Lcom/sleepycat/asm/Label;

    invoke-direct {v0}, Lcom/sleepycat/asm/Label;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/MethodWriter;->visitLabel(Lcom/sleepycat/asm/Label;)V

    .line 832
    :cond_b
    return-void
.end method
