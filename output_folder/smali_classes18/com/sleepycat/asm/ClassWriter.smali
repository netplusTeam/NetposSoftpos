.class public Lcom/sleepycat/asm/ClassWriter;
.super Lcom/sleepycat/asm/ClassVisitor;
.source "ClassWriter.java"


# static fields
.field static final ACC_SYNTHETIC_ATTRIBUTE:I = 0x40000

.field static final ASM_LABELW_INSN:I = 0x13

.field static final ASM_LABEL_INSN:I = 0x12

.field static final BSM:I = 0x21

.field static final CLASS:I = 0x7

.field public static final COMPUTE_FRAMES:I = 0x2

.field public static final COMPUTE_MAXS:I = 0x1

.field static final DOUBLE:I = 0x6

.field static final FIELD:I = 0x9

.field static final FIELDORMETH_INSN:I = 0x6

.field static final FLOAT:I = 0x4

.field static final F_INSERT:I = 0x100

.field static final HANDLE:I = 0xf

.field static final HANDLE_BASE:I = 0x14

.field static final IINC_INSN:I = 0xd

.field static final IMETH:I = 0xb

.field static final IMPLVAR_INSN:I = 0x4

.field static final INDY:I = 0x12

.field static final INDYMETH_INSN:I = 0x8

.field static final INT:I = 0x3

.field static final ITFMETH_INSN:I = 0x7

.field static final LABELW_INSN:I = 0xa

.field static final LABEL_INSN:I = 0x9

.field static final LDCW_INSN:I = 0xc

.field static final LDC_INSN:I = 0xb

.field static final LONG:I = 0x5

.field static final LOOK_INSN:I = 0xf

.field static final MANA_INSN:I = 0x10

.field static final METH:I = 0xa

.field static final MODULE:I = 0x13

.field static final MTYPE:I = 0x10

.field static final NAME_TYPE:I = 0xc

.field static final NOARG_INSN:I = 0x0

.field static final PACKAGE:I = 0x14

.field static final SBYTE_INSN:I = 0x1

.field static final SHORT_INSN:I = 0x2

.field static final STR:I = 0x8

.field static final TABL_INSN:I = 0xe

.field static final TO_ACC_SYNTHETIC:I = 0x40

.field static final TYPE:[B

.field static final TYPE_INSN:I = 0x5

.field static final TYPE_MERGED:I = 0x20

.field static final TYPE_NORMAL:I = 0x1e

.field static final TYPE_UNINIT:I = 0x1f

.field static final UTF8:I = 0x1

.field static final VAR_INSN:I = 0x3

.field static final WIDE_INSN:I = 0x11


# instance fields
.field private access:I

.field private anns:Lcom/sleepycat/asm/AnnotationWriter;

.field private attrs:Lcom/sleepycat/asm/Attribute;

.field bootstrapMethods:Lcom/sleepycat/asm/ByteVector;

.field bootstrapMethodsCount:I

.field private compute:I

.field cr:Lcom/sleepycat/asm/ClassReader;

.field private enclosingMethod:I

.field private enclosingMethodOwner:I

.field firstField:Lcom/sleepycat/asm/FieldWriter;

.field firstMethod:Lcom/sleepycat/asm/MethodWriter;

.field hasAsmInsns:Z

.field private ianns:Lcom/sleepycat/asm/AnnotationWriter;

.field index:I

.field private innerClasses:Lcom/sleepycat/asm/ByteVector;

.field private innerClassesCount:I

.field private interfaceCount:I

.field private interfaces:[I

.field private itanns:Lcom/sleepycat/asm/AnnotationWriter;

.field items:[Lcom/sleepycat/asm/Item;

.field final key:Lcom/sleepycat/asm/Item;

.field final key2:Lcom/sleepycat/asm/Item;

.field final key3:Lcom/sleepycat/asm/Item;

.field final key4:Lcom/sleepycat/asm/Item;

.field lastField:Lcom/sleepycat/asm/FieldWriter;

.field lastMethod:Lcom/sleepycat/asm/MethodWriter;

.field private moduleWriter:Lcom/sleepycat/asm/ModuleWriter;

.field private name:I

.field final pool:Lcom/sleepycat/asm/ByteVector;

.field private signature:I

.field private sourceDebug:Lcom/sleepycat/asm/ByteVector;

.field private sourceFile:I

.field private superName:I

.field private tanns:Lcom/sleepycat/asm/AnnotationWriter;

.field thisName:Ljava/lang/String;

.field threshold:I

.field private typeCount:S

.field typeTable:[Lcom/sleepycat/asm/Item;

.field version:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 546
    const/16 v0, 0xdd

    new-array v0, v0, [B

    .line 547
    .local v0, "b":[B
    const-string v1, "AAAAAAAAAAAAAAAABCLMMDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAAAAAAAAAAJJJJJJJJJJJJJJJJDOPAAAAAAGGGGGGGHIFBFAAFFAARQJJKKSSSSSSSSSSSSSSSSSST"

    .line 551
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x41

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    :cond_0
    sput-object v0, Lcom/sleepycat/asm/ClassWriter;->TYPE:[B

    .line 624
    .end local v0    # "b":[B
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "i":I
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "flags"    # I

    .line 639
    const/high16 v0, 0x60000

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassVisitor;-><init>(I)V

    .line 640
    const/4 v0, 0x1

    iput v0, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    .line 641
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->pool:Lcom/sleepycat/asm/ByteVector;

    .line 642
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/sleepycat/asm/Item;

    iput-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->items:[Lcom/sleepycat/asm/Item;

    .line 643
    array-length v0, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/sleepycat/asm/ClassWriter;->threshold:I

    .line 644
    new-instance v0, Lcom/sleepycat/asm/Item;

    invoke-direct {v0}, Lcom/sleepycat/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    .line 645
    new-instance v0, Lcom/sleepycat/asm/Item;

    invoke-direct {v0}, Lcom/sleepycat/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key2:Lcom/sleepycat/asm/Item;

    .line 646
    new-instance v0, Lcom/sleepycat/asm/Item;

    invoke-direct {v0}, Lcom/sleepycat/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key3:Lcom/sleepycat/asm/Item;

    .line 647
    new-instance v0, Lcom/sleepycat/asm/Item;

    invoke-direct {v0}, Lcom/sleepycat/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key4:Lcom/sleepycat/asm/Item;

    .line 648
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/sleepycat/asm/ClassWriter;->compute:I

    .line 651
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/asm/ClassReader;I)V
    .locals 0
    .param p1, "classReader"    # Lcom/sleepycat/asm/ClassReader;
    .param p2, "flags"    # I

    .line 686
    invoke-direct {p0, p2}, Lcom/sleepycat/asm/ClassWriter;-><init>(I)V

    .line 687
    invoke-virtual {p1, p0}, Lcom/sleepycat/asm/ClassReader;->copyPool(Lcom/sleepycat/asm/ClassWriter;)V

    .line 688
    iput-object p1, p0, Lcom/sleepycat/asm/ClassWriter;->cr:Lcom/sleepycat/asm/ClassReader;

    .line 689
    return-void
.end method

.method private addType(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;
    .locals 5
    .param p1, "item"    # Lcom/sleepycat/asm/Item;

    .line 1694
    iget-short v0, p0, Lcom/sleepycat/asm/ClassWriter;->typeCount:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sleepycat/asm/ClassWriter;->typeCount:S

    .line 1695
    new-instance v1, Lcom/sleepycat/asm/Item;

    iget-object v2, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/asm/Item;-><init>(ILcom/sleepycat/asm/Item;)V

    move-object v0, v1

    .line 1696
    .local v0, "result":Lcom/sleepycat/asm/Item;
    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->put(Lcom/sleepycat/asm/Item;)V

    .line 1697
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->typeTable:[Lcom/sleepycat/asm/Item;

    if-nez v1, :cond_0

    .line 1698
    const/16 v1, 0x10

    new-array v1, v1, [Lcom/sleepycat/asm/Item;

    iput-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->typeTable:[Lcom/sleepycat/asm/Item;

    .line 1700
    :cond_0
    iget-short v1, p0, Lcom/sleepycat/asm/ClassWriter;->typeCount:S

    iget-object v2, p0, Lcom/sleepycat/asm/ClassWriter;->typeTable:[Lcom/sleepycat/asm/Item;

    array-length v3, v2

    if-ne v1, v3, :cond_1

    .line 1701
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/sleepycat/asm/Item;

    .line 1702
    .local v1, "newTable":[Lcom/sleepycat/asm/Item;
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1703
    iput-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->typeTable:[Lcom/sleepycat/asm/Item;

    .line 1705
    .end local v1    # "newTable":[Lcom/sleepycat/asm/Item;
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->typeTable:[Lcom/sleepycat/asm/Item;

    iget-short v2, p0, Lcom/sleepycat/asm/ClassWriter;->typeCount:S

    aput-object v0, v1, v2

    .line 1706
    return-object v0
.end method

.method private get(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/asm/Item;

    .line 1787
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->items:[Lcom/sleepycat/asm/Item;

    iget v1, p1, Lcom/sleepycat/asm/Item;->hashCode:I

    iget-object v2, p0, Lcom/sleepycat/asm/ClassWriter;->items:[Lcom/sleepycat/asm/Item;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 1788
    .local v0, "i":Lcom/sleepycat/asm/Item;
    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/sleepycat/asm/Item;->type:I

    iget v2, p1, Lcom/sleepycat/asm/Item;->type:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/sleepycat/asm/Item;->isEqualTo(Lcom/sleepycat/asm/Item;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1789
    :cond_0
    iget-object v0, v0, Lcom/sleepycat/asm/Item;->next:Lcom/sleepycat/asm/Item;

    goto :goto_0

    .line 1791
    :cond_1
    return-object v0
.end method

.method private put(Lcom/sleepycat/asm/Item;)V
    .locals 8
    .param p1, "i"    # Lcom/sleepycat/asm/Item;

    .line 1802
    iget v0, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    iget-short v1, p0, Lcom/sleepycat/asm/ClassWriter;->typeCount:S

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/asm/ClassWriter;->threshold:I

    if-le v0, v1, :cond_2

    .line 1803
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->items:[Lcom/sleepycat/asm/Item;

    array-length v0, v0

    .line 1804
    .local v0, "ll":I
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 1805
    .local v1, "nl":I
    new-array v2, v1, [Lcom/sleepycat/asm/Item;

    .line 1806
    .local v2, "newItems":[Lcom/sleepycat/asm/Item;
    add-int/lit8 v3, v0, -0x1

    .local v3, "l":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1807
    iget-object v4, p0, Lcom/sleepycat/asm/ClassWriter;->items:[Lcom/sleepycat/asm/Item;

    aget-object v4, v4, v3

    .line 1808
    .local v4, "j":Lcom/sleepycat/asm/Item;
    :goto_1
    if-eqz v4, :cond_0

    .line 1809
    iget v5, v4, Lcom/sleepycat/asm/Item;->hashCode:I

    array-length v6, v2

    rem-int/2addr v5, v6

    .line 1810
    .local v5, "index":I
    iget-object v6, v4, Lcom/sleepycat/asm/Item;->next:Lcom/sleepycat/asm/Item;

    .line 1811
    .local v6, "k":Lcom/sleepycat/asm/Item;
    aget-object v7, v2, v5

    iput-object v7, v4, Lcom/sleepycat/asm/Item;->next:Lcom/sleepycat/asm/Item;

    .line 1812
    aput-object v4, v2, v5

    .line 1813
    move-object v4, v6

    .line 1814
    .end local v5    # "index":I
    .end local v6    # "k":Lcom/sleepycat/asm/Item;
    goto :goto_1

    .line 1806
    .end local v4    # "j":Lcom/sleepycat/asm/Item;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1816
    .end local v3    # "l":I
    :cond_1
    iput-object v2, p0, Lcom/sleepycat/asm/ClassWriter;->items:[Lcom/sleepycat/asm/Item;

    .line 1817
    int-to-double v3, v1

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/sleepycat/asm/ClassWriter;->threshold:I

    .line 1819
    .end local v0    # "ll":I
    .end local v1    # "nl":I
    .end local v2    # "newItems":[Lcom/sleepycat/asm/Item;
    :cond_2
    iget v0, p1, Lcom/sleepycat/asm/Item;->hashCode:I

    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->items:[Lcom/sleepycat/asm/Item;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 1820
    .local v0, "index":I
    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/sleepycat/asm/Item;->next:Lcom/sleepycat/asm/Item;

    .line 1821
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->items:[Lcom/sleepycat/asm/Item;

    aput-object p1, v1, v0

    .line 1822
    return-void
.end method

.method private put112(III)V
    .locals 1
    .param p1, "b1"    # I
    .param p2, "b2"    # I
    .param p3, "s"    # I

    .line 1849
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->pool:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/ByteVector;->put11(II)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1850
    return-void
.end method

.method private put122(III)V
    .locals 1
    .param p1, "b"    # I
    .param p2, "s1"    # I
    .param p3, "s2"    # I

    .line 1835
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->pool:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1836
    return-void
.end method


# virtual methods
.method addType(Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .line 1653
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/sleepycat/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->get(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 1655
    .local v0, "result":Lcom/sleepycat/asm/Item;
    if-nez v0, :cond_0

    .line 1656
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-direct {p0, v1}, Lcom/sleepycat/asm/ClassWriter;->addType(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 1658
    :cond_0
    iget v1, v0, Lcom/sleepycat/asm/Item;->index:I

    return v1
.end method

.method addUninitializedType(Ljava/lang/String;I)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .line 1674
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    const/16 v1, 0x1f

    iput v1, v0, Lcom/sleepycat/asm/Item;->type:I

    .line 1675
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    iput p2, v0, Lcom/sleepycat/asm/Item;->intVal:I

    .line 1676
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    iput-object p1, v0, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    .line 1677
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, p2

    const v1, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/sleepycat/asm/Item;->hashCode:I

    .line 1678
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->get(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 1679
    .local v0, "result":Lcom/sleepycat/asm/Item;
    if-nez v0, :cond_0

    .line 1680
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-direct {p0, v1}, Lcom/sleepycat/asm/ClassWriter;->addType(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 1682
    :cond_0
    iget v1, v0, Lcom/sleepycat/asm/Item;->index:I

    return v1
.end method

.method protected getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "type1"    # Ljava/lang/String;
    .param p2, "type2"    # Ljava/lang/String;

    .line 1754
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1756
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    :try_start_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 1757
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1760
    .local v4, "d":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 1761
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1762
    return-object p1

    .line 1764
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1765
    return-object p2

    .line 1767
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 1771
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 1772
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1773
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1768
    :cond_3
    :goto_0
    const-string v1, "java/lang/Object"

    return-object v1

    .line 1758
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "d":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 1759
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getMergedType(II)I
    .locals 6
    .param p1, "type1"    # I
    .param p2, "type2"    # I

    .line 1722
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key2:Lcom/sleepycat/asm/Item;

    const/16 v1, 0x20

    iput v1, v0, Lcom/sleepycat/asm/Item;->type:I

    .line 1723
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key2:Lcom/sleepycat/asm/Item;

    int-to-long v2, p1

    int-to-long v4, p2

    shl-long/2addr v4, v1

    or-long v1, v2, v4

    iput-wide v1, v0, Lcom/sleepycat/asm/Item;->longVal:J

    .line 1724
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key2:Lcom/sleepycat/asm/Item;

    add-int/lit8 v1, p1, 0x20

    add-int/2addr v1, p2

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/sleepycat/asm/Item;->hashCode:I

    .line 1725
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key2:Lcom/sleepycat/asm/Item;

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->get(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 1726
    .local v0, "result":Lcom/sleepycat/asm/Item;
    if-nez v0, :cond_0

    .line 1727
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->typeTable:[Lcom/sleepycat/asm/Item;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    .line 1728
    .local v1, "t":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/asm/ClassWriter;->typeTable:[Lcom/sleepycat/asm/Item;

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/sleepycat/asm/Item;->strVal1:Ljava/lang/String;

    .line 1729
    .local v2, "u":Ljava/lang/String;
    iget-object v3, p0, Lcom/sleepycat/asm/ClassWriter;->key2:Lcom/sleepycat/asm/Item;

    invoke-virtual {p0, v1, v2}, Lcom/sleepycat/asm/ClassWriter;->getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sleepycat/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/sleepycat/asm/Item;->intVal:I

    .line 1730
    new-instance v3, Lcom/sleepycat/asm/Item;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sleepycat/asm/ClassWriter;->key2:Lcom/sleepycat/asm/Item;

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/asm/Item;-><init>(ILcom/sleepycat/asm/Item;)V

    move-object v0, v3

    .line 1731
    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->put(Lcom/sleepycat/asm/Item;)V

    .line 1733
    .end local v1    # "t":Ljava/lang/String;
    .end local v2    # "u":Ljava/lang/String;
    :cond_0
    iget v1, v0, Lcom/sleepycat/asm/Item;->intVal:I

    return v1
.end method

.method public newClass(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1181
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/asm/ClassWriter;->newStringishItem(ILjava/lang/String;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/sleepycat/asm/Item;->index:I

    return v0
.end method

.method public newConst(Ljava/lang/Object;)I
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .line 1124
    invoke-virtual {p0, p1}, Lcom/sleepycat/asm/ClassWriter;->newConstItem(Ljava/lang/Object;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/sleepycat/asm/Item;->index:I

    return v0
.end method

.method newConstItem(Ljava/lang/Object;)Lcom/sleepycat/asm/Item;
    .locals 7
    .param p1, "cst"    # Ljava/lang/Object;

    .line 1066
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1067
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1068
    .local v0, "val":I
    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->newInteger(I)Lcom/sleepycat/asm/Item;

    move-result-object v1

    return-object v1

    .line 1069
    .end local v0    # "val":I
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 1070
    move-object v0, p1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    .line 1071
    .restart local v0    # "val":I
    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->newInteger(I)Lcom/sleepycat/asm/Item;

    move-result-object v1

    return-object v1

    .line 1072
    .end local v0    # "val":I
    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    .line 1073
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 1074
    .restart local v0    # "val":I
    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->newInteger(I)Lcom/sleepycat/asm/Item;

    move-result-object v1

    return-object v1

    .line 1075
    .end local v0    # "val":I
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 1076
    move-object v0, p1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->intValue()I

    move-result v0

    .line 1077
    .restart local v0    # "val":I
    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->newInteger(I)Lcom/sleepycat/asm/Item;

    move-result-object v1

    return-object v1

    .line 1078
    .end local v0    # "val":I
    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 1079
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1080
    .restart local v0    # "val":I
    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->newInteger(I)Lcom/sleepycat/asm/Item;

    move-result-object v1

    return-object v1

    .line 1081
    .end local v0    # "val":I
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 1082
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1083
    .local v0, "val":F
    invoke-virtual {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->newFloat(F)Lcom/sleepycat/asm/Item;

    move-result-object v1

    return-object v1

    .line 1084
    .end local v0    # "val":F
    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 1085
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1086
    .local v0, "val":J
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/asm/ClassWriter;->newLong(J)Lcom/sleepycat/asm/Item;

    move-result-object v2

    return-object v2

    .line 1087
    .end local v0    # "val":J
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 1088
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 1089
    .local v0, "val":D
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/asm/ClassWriter;->newDouble(D)Lcom/sleepycat/asm/Item;

    move-result-object v2

    return-object v2

    .line 1090
    .end local v0    # "val":D
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1091
    const/16 v0, 0x8

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/asm/ClassWriter;->newStringishItem(ILjava/lang/String;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    return-object v0

    .line 1092
    :cond_8
    instance-of v0, p1, Lcom/sleepycat/asm/Type;

    if-eqz v0, :cond_b

    .line 1093
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/asm/Type;

    .line 1094
    .local v0, "t":Lcom/sleepycat/asm/Type;
    invoke-virtual {v0}, Lcom/sleepycat/asm/Type;->getSort()I

    move-result v1

    .line 1095
    .local v1, "s":I
    const/16 v2, 0xa

    const/4 v3, 0x7

    if-ne v1, v2, :cond_9

    .line 1096
    invoke-virtual {v0}, Lcom/sleepycat/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/sleepycat/asm/ClassWriter;->newStringishItem(ILjava/lang/String;)Lcom/sleepycat/asm/Item;

    move-result-object v2

    return-object v2

    .line 1097
    :cond_9
    const/16 v2, 0xb

    if-ne v1, v2, :cond_a

    .line 1098
    const/16 v2, 0x10

    invoke-virtual {v0}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sleepycat/asm/ClassWriter;->newStringishItem(ILjava/lang/String;)Lcom/sleepycat/asm/Item;

    move-result-object v2

    return-object v2

    .line 1100
    :cond_a
    invoke-virtual {v0}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/sleepycat/asm/ClassWriter;->newStringishItem(ILjava/lang/String;)Lcom/sleepycat/asm/Item;

    move-result-object v2

    return-object v2

    .line 1102
    .end local v0    # "t":Lcom/sleepycat/asm/Type;
    .end local v1    # "s":I
    :cond_b
    instance-of v0, p1, Lcom/sleepycat/asm/Handle;

    if-eqz v0, :cond_c

    .line 1103
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/asm/Handle;

    .line 1104
    .local v0, "h":Lcom/sleepycat/asm/Handle;
    iget v2, v0, Lcom/sleepycat/asm/Handle;->tag:I

    iget-object v3, v0, Lcom/sleepycat/asm/Handle;->owner:Ljava/lang/String;

    iget-object v4, v0, Lcom/sleepycat/asm/Handle;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/sleepycat/asm/Handle;->desc:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/sleepycat/asm/Handle;->itf:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/asm/ClassWriter;->newHandleItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sleepycat/asm/Item;

    move-result-object v1

    return-object v1

    .line 1106
    .end local v0    # "h":Lcom/sleepycat/asm/Handle;
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method newDouble(D)Lcom/sleepycat/asm/Item;
    .locals 4
    .param p1, "value"    # D

    .line 1596
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/Item;->set(D)V

    .line 1597
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->get(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 1598
    .local v0, "result":Lcom/sleepycat/asm/Item;
    if-nez v0, :cond_0

    .line 1599
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->pool:Lcom/sleepycat/asm/ByteVector;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    iget-wide v2, v2, Lcom/sleepycat/asm/Item;->longVal:J

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/asm/ByteVector;->putLong(J)Lcom/sleepycat/asm/ByteVector;

    .line 1600
    new-instance v1, Lcom/sleepycat/asm/Item;

    iget v2, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    iget-object v3, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/asm/Item;-><init>(ILcom/sleepycat/asm/Item;)V

    move-object v0, v1

    .line 1601
    iget v1, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    .line 1602
    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->put(Lcom/sleepycat/asm/Item;)V

    .line 1604
    :cond_0
    return-object v0
.end method

.method public newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 1478
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/asm/ClassWriter;->newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/sleepycat/asm/Item;->index:I

    return v0
.end method

.method newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/asm/Item;
    .locals 4
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 1453
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key3:Lcom/sleepycat/asm/Item;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sleepycat/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key3:Lcom/sleepycat/asm/Item;

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->get(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 1455
    .local v0, "result":Lcom/sleepycat/asm/Item;
    if-nez v0, :cond_0

    .line 1456
    invoke-virtual {p0, p1}, Lcom/sleepycat/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2, p3}, Lcom/sleepycat/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sleepycat/asm/ClassWriter;->put122(III)V

    .line 1457
    new-instance v1, Lcom/sleepycat/asm/Item;

    iget v2, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    iget-object v3, p0, Lcom/sleepycat/asm/ClassWriter;->key3:Lcom/sleepycat/asm/Item;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/asm/Item;-><init>(ILcom/sleepycat/asm/Item;)V

    move-object v0, v1

    .line 1458
    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->put(Lcom/sleepycat/asm/Item;)V

    .line 1460
    :cond_0
    return-object v0
.end method

.method newFloat(F)Lcom/sleepycat/asm/Item;
    .locals 4
    .param p1, "value"    # F

    .line 1557
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/Item;->set(F)V

    .line 1558
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->get(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 1559
    .local v0, "result":Lcom/sleepycat/asm/Item;
    if-nez v0, :cond_0

    .line 1560
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->pool:Lcom/sleepycat/asm/ByteVector;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    iget v2, v2, Lcom/sleepycat/asm/Item;->intVal:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 1561
    new-instance v1, Lcom/sleepycat/asm/Item;

    iget v2, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    iget-object v3, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/asm/Item;-><init>(ILcom/sleepycat/asm/Item;)V

    move-object v0, v1

    .line 1562
    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->put(Lcom/sleepycat/asm/Item;)V

    .line 1564
    :cond_0
    return-object v0
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1300
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/asm/ClassWriter;->newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .line 1330
    invoke-virtual/range {p0 .. p5}, Lcom/sleepycat/asm/ClassWriter;->newHandleItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sleepycat/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/sleepycat/asm/Item;->index:I

    return v0
.end method

.method newHandleItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sleepycat/asm/Item;
    .locals 4
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .line 1255
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key4:Lcom/sleepycat/asm/Item;

    add-int/lit8 v1, p1, 0x14

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/sleepycat/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key4:Lcom/sleepycat/asm/Item;

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->get(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 1257
    .local v0, "result":Lcom/sleepycat/asm/Item;
    if-nez v0, :cond_1

    .line 1258
    const/4 v1, 0x4

    const/16 v2, 0xf

    if-gt p1, v1, :cond_0

    .line 1259
    invoke-virtual {p0, p2, p3, p4}, Lcom/sleepycat/asm/ClassWriter;->newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v2, p1, v1}, Lcom/sleepycat/asm/ClassWriter;->put112(III)V

    goto :goto_0

    .line 1261
    :cond_0
    nop

    .line 1263
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sleepycat/asm/ClassWriter;->newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    .line 1261
    invoke-direct {p0, v2, p1, v1}, Lcom/sleepycat/asm/ClassWriter;->put112(III)V

    .line 1265
    :goto_0
    new-instance v1, Lcom/sleepycat/asm/Item;

    iget v2, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    iget-object v3, p0, Lcom/sleepycat/asm/ClassWriter;->key4:Lcom/sleepycat/asm/Item;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/asm/Item;-><init>(ILcom/sleepycat/asm/Item;)V

    move-object v0, v1

    .line 1266
    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->put(Lcom/sleepycat/asm/Item;)V

    .line 1268
    :cond_1
    return-object v0
.end method

.method newInteger(I)Lcom/sleepycat/asm/Item;
    .locals 4
    .param p1, "value"    # I

    .line 1538
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/Item;->set(I)V

    .line 1539
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->get(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 1540
    .local v0, "result":Lcom/sleepycat/asm/Item;
    if-nez v0, :cond_0

    .line 1541
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->pool:Lcom/sleepycat/asm/ByteVector;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 1542
    new-instance v1, Lcom/sleepycat/asm/Item;

    iget v2, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    iget-object v3, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/asm/Item;-><init>(ILcom/sleepycat/asm/Item;)V

    move-object v0, v1

    .line 1543
    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->put(Lcom/sleepycat/asm/Item;)V

    .line 1545
    :cond_0
    return-object v0
.end method

.method public varargs newInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/asm/Handle;[Ljava/lang/Object;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lcom/sleepycat/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 1437
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/asm/ClassWriter;->newInvokeDynamicItem(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/asm/Handle;[Ljava/lang/Object;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/sleepycat/asm/Item;->index:I

    return v0
.end method

.method varargs newInvokeDynamicItem(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/asm/Handle;[Ljava/lang/Object;)Lcom/sleepycat/asm/Item;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lcom/sleepycat/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 1353
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->bootstrapMethods:Lcom/sleepycat/asm/ByteVector;

    .line 1354
    .local v0, "bootstrapMethods":Lcom/sleepycat/asm/ByteVector;
    if-nez v0, :cond_0

    .line 1355
    new-instance v1, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v1}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->bootstrapMethods:Lcom/sleepycat/asm/ByteVector;

    move-object v0, v1

    .line 1358
    :cond_0
    iget v1, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 1360
    .local v1, "position":I
    invoke-virtual {p3}, Lcom/sleepycat/asm/Handle;->hashCode()I

    move-result v2

    .line 1361
    .local v2, "hashCode":I
    iget v4, p3, Lcom/sleepycat/asm/Handle;->tag:I

    iget-object v5, p3, Lcom/sleepycat/asm/Handle;->owner:Ljava/lang/String;

    iget-object v6, p3, Lcom/sleepycat/asm/Handle;->name:Ljava/lang/String;

    iget-object v7, p3, Lcom/sleepycat/asm/Handle;->desc:Ljava/lang/String;

    .line 1362
    invoke-virtual {p3}, Lcom/sleepycat/asm/Handle;->isInterface()Z

    move-result v8

    .line 1361
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/asm/ClassWriter;->newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1364
    array-length v3, p4

    .line 1365
    .local v3, "argsLength":I
    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1367
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1368
    aget-object v5, p4, v4

    .line 1369
    .local v5, "bsmArg":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    xor-int/2addr v2, v6

    .line 1370
    invoke-virtual {p0, v5}, Lcom/sleepycat/asm/ClassWriter;->newConst(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1367
    .end local v5    # "bsmArg":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1373
    .end local v4    # "i":I
    :cond_1
    iget-object v4, v0, Lcom/sleepycat/asm/ByteVector;->data:[B

    .line 1374
    .local v4, "data":[B
    add-int/lit8 v5, v3, 0x2

    shl-int/lit8 v5, v5, 0x1

    .line 1375
    .local v5, "length":I
    const v6, 0x7fffffff

    and-int/2addr v2, v6

    .line 1376
    iget-object v6, p0, Lcom/sleepycat/asm/ClassWriter;->items:[Lcom/sleepycat/asm/Item;

    array-length v7, v6

    rem-int v7, v2, v7

    aget-object v6, v6, v7

    .line 1377
    .local v6, "result":Lcom/sleepycat/asm/Item;
    :goto_1
    if-eqz v6, :cond_6

    .line 1378
    iget v7, v6, Lcom/sleepycat/asm/Item;->type:I

    const/16 v8, 0x21

    if-ne v7, v8, :cond_5

    iget v7, v6, Lcom/sleepycat/asm/Item;->hashCode:I

    if-eq v7, v2, :cond_2

    goto :goto_3

    .line 1385
    :cond_2
    iget v7, v6, Lcom/sleepycat/asm/Item;->intVal:I

    .line 1386
    .local v7, "resultPosition":I
    const/4 v8, 0x0

    .local v8, "p":I
    :goto_2
    if-ge v8, v5, :cond_4

    .line 1387
    add-int v9, v1, v8

    aget-byte v9, v4, v9

    add-int v10, v7, v8

    aget-byte v10, v4, v10

    if-eq v9, v10, :cond_3

    .line 1388
    iget-object v6, v6, Lcom/sleepycat/asm/Item;->next:Lcom/sleepycat/asm/Item;

    .line 1389
    goto :goto_1

    .line 1386
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1392
    .end local v8    # "p":I
    :cond_4
    goto :goto_4

    .line 1379
    .end local v7    # "resultPosition":I
    :cond_5
    :goto_3
    iget-object v6, v6, Lcom/sleepycat/asm/Item;->next:Lcom/sleepycat/asm/Item;

    .line 1380
    goto :goto_1

    .line 1396
    :cond_6
    :goto_4
    if-eqz v6, :cond_7

    .line 1397
    iget v7, v6, Lcom/sleepycat/asm/Item;->index:I

    .line 1398
    .local v7, "bootstrapMethodIndex":I
    iput v1, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    goto :goto_5

    .line 1400
    .end local v7    # "bootstrapMethodIndex":I
    :cond_7
    iget v7, p0, Lcom/sleepycat/asm/ClassWriter;->bootstrapMethodsCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/sleepycat/asm/ClassWriter;->bootstrapMethodsCount:I

    .line 1401
    .restart local v7    # "bootstrapMethodIndex":I
    new-instance v8, Lcom/sleepycat/asm/Item;

    invoke-direct {v8, v7}, Lcom/sleepycat/asm/Item;-><init>(I)V

    move-object v6, v8

    .line 1402
    invoke-virtual {v6, v1, v2}, Lcom/sleepycat/asm/Item;->set(II)V

    .line 1403
    invoke-direct {p0, v6}, Lcom/sleepycat/asm/ClassWriter;->put(Lcom/sleepycat/asm/Item;)V

    .line 1407
    :goto_5
    iget-object v8, p0, Lcom/sleepycat/asm/ClassWriter;->key3:Lcom/sleepycat/asm/Item;

    invoke-virtual {v8, p1, p2, v7}, Lcom/sleepycat/asm/Item;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1408
    iget-object v8, p0, Lcom/sleepycat/asm/ClassWriter;->key3:Lcom/sleepycat/asm/Item;

    invoke-direct {p0, v8}, Lcom/sleepycat/asm/ClassWriter;->get(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;

    move-result-object v6

    .line 1409
    if-nez v6, :cond_8

    .line 1410
    const/16 v8, 0x12

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, v8, v7, v9}, Lcom/sleepycat/asm/ClassWriter;->put122(III)V

    .line 1411
    new-instance v8, Lcom/sleepycat/asm/Item;

    iget v9, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    iget-object v10, p0, Lcom/sleepycat/asm/ClassWriter;->key3:Lcom/sleepycat/asm/Item;

    invoke-direct {v8, v9, v10}, Lcom/sleepycat/asm/Item;-><init>(ILcom/sleepycat/asm/Item;)V

    move-object v6, v8

    .line 1412
    invoke-direct {p0, v6}, Lcom/sleepycat/asm/ClassWriter;->put(Lcom/sleepycat/asm/Item;)V

    .line 1414
    :cond_8
    return-object v6
.end method

.method newLong(J)Lcom/sleepycat/asm/Item;
    .locals 4
    .param p1, "value"    # J

    .line 1576
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/asm/Item;->set(J)V

    .line 1577
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->get(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 1578
    .local v0, "result":Lcom/sleepycat/asm/Item;
    if-nez v0, :cond_0

    .line 1579
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->pool:Lcom/sleepycat/asm/ByteVector;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/asm/ByteVector;->putLong(J)Lcom/sleepycat/asm/ByteVector;

    .line 1580
    new-instance v1, Lcom/sleepycat/asm/Item;

    iget v2, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    iget-object v3, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/asm/Item;-><init>(ILcom/sleepycat/asm/Item;)V

    move-object v0, v1

    .line 1581
    iget v1, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    .line 1582
    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->put(Lcom/sleepycat/asm/Item;)V

    .line 1584
    :cond_0
    return-object v0
.end method

.method public newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "itf"    # Z

    .line 1526
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/asm/ClassWriter;->newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sleepycat/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/sleepycat/asm/Item;->index:I

    return v0
.end method

.method newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sleepycat/asm/Item;
    .locals 5
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "itf"    # Z

    .line 1497
    if-eqz p4, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 1498
    .local v0, "type":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->key3:Lcom/sleepycat/asm/Item;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/sleepycat/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->key3:Lcom/sleepycat/asm/Item;

    invoke-direct {p0, v1}, Lcom/sleepycat/asm/ClassWriter;->get(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;

    move-result-object v1

    .line 1500
    .local v1, "result":Lcom/sleepycat/asm/Item;
    if-nez v1, :cond_1

    .line 1501
    invoke-virtual {p0, p1}, Lcom/sleepycat/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2, p3}, Lcom/sleepycat/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/sleepycat/asm/ClassWriter;->put122(III)V

    .line 1502
    new-instance v2, Lcom/sleepycat/asm/Item;

    iget v3, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    iget-object v4, p0, Lcom/sleepycat/asm/ClassWriter;->key3:Lcom/sleepycat/asm/Item;

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/asm/Item;-><init>(ILcom/sleepycat/asm/Item;)V

    move-object v1, v2

    .line 1503
    invoke-direct {p0, v1}, Lcom/sleepycat/asm/ClassWriter;->put(Lcom/sleepycat/asm/Item;)V

    .line 1505
    :cond_1
    return-object v1
.end method

.method public newMethodType(Ljava/lang/String;)I
    .locals 1
    .param p1, "methodDesc"    # Ljava/lang/String;

    .line 1196
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/asm/ClassWriter;->newStringishItem(ILjava/lang/String;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/sleepycat/asm/Item;->index:I

    return v0
.end method

.method public newModule(Ljava/lang/String;)I
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 1211
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/asm/ClassWriter;->newStringishItem(ILjava/lang/String;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/sleepycat/asm/Item;->index:I

    return v0
.end method

.method public newNameType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 1620
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/asm/ClassWriter;->newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/sleepycat/asm/Item;->index:I

    return v0
.end method

.method newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/asm/Item;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 1634
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key2:Lcom/sleepycat/asm/Item;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sleepycat/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key2:Lcom/sleepycat/asm/Item;

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->get(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 1636
    .local v0, "result":Lcom/sleepycat/asm/Item;
    if-nez v0, :cond_0

    .line 1637
    invoke-virtual {p0, p1}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sleepycat/asm/ClassWriter;->put122(III)V

    .line 1638
    new-instance v1, Lcom/sleepycat/asm/Item;

    iget v2, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    iget-object v3, p0, Lcom/sleepycat/asm/ClassWriter;->key2:Lcom/sleepycat/asm/Item;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/asm/Item;-><init>(ILcom/sleepycat/asm/Item;)V

    move-object v0, v1

    .line 1639
    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->put(Lcom/sleepycat/asm/Item;)V

    .line 1641
    :cond_0
    return-object v0
.end method

.method public newPackage(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1226
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/asm/ClassWriter;->newStringishItem(ILjava/lang/String;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/sleepycat/asm/Item;->index:I

    return v0
.end method

.method newStringishItem(ILjava/lang/String;)Lcom/sleepycat/asm/Item;
    .locals 4
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1160
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key2:Lcom/sleepycat/asm/Item;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/sleepycat/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key2:Lcom/sleepycat/asm/Item;

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->get(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 1162
    .local v0, "result":Lcom/sleepycat/asm/Item;
    if-nez v0, :cond_0

    .line 1163
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->pool:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {p0, p2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 1164
    new-instance v1, Lcom/sleepycat/asm/Item;

    iget v2, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    iget-object v3, p0, Lcom/sleepycat/asm/ClassWriter;->key2:Lcom/sleepycat/asm/Item;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/asm/Item;-><init>(ILcom/sleepycat/asm/Item;)V

    move-object v0, v1

    .line 1165
    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->put(Lcom/sleepycat/asm/Item;)V

    .line 1167
    :cond_0
    return-object v0
.end method

.method public newUTF8(Ljava/lang/String;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1138
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/sleepycat/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->get(Lcom/sleepycat/asm/Item;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 1140
    .local v0, "result":Lcom/sleepycat/asm/Item;
    if-nez v0, :cond_0

    .line 1141
    iget-object v2, p0, Lcom/sleepycat/asm/ClassWriter;->pool:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v2, v1}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sleepycat/asm/ByteVector;->putUTF8(Ljava/lang/String;)Lcom/sleepycat/asm/ByteVector;

    .line 1142
    new-instance v1, Lcom/sleepycat/asm/Item;

    iget v2, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sleepycat/asm/ClassWriter;->index:I

    iget-object v3, p0, Lcom/sleepycat/asm/ClassWriter;->key:Lcom/sleepycat/asm/Item;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/asm/Item;-><init>(ILcom/sleepycat/asm/Item;)V

    move-object v0, v1

    .line 1143
    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ClassWriter;->put(Lcom/sleepycat/asm/Item;)V

    .line 1145
    :cond_0
    iget v1, v0, Lcom/sleepycat/asm/Item;->index:I

    return v1
.end method

.method public toByteArray()[B
    .locals 32

    .line 845
    move-object/from16 v7, p0

    iget v0, v7, Lcom/sleepycat/asm/ClassWriter;->index:I

    const v6, 0xffff

    if-gt v0, v6, :cond_28

    .line 849
    iget v0, v7, Lcom/sleepycat/asm/ClassWriter;->interfaceCount:I

    const/4 v8, 0x2

    mul-int/2addr v0, v8

    add-int/lit8 v0, v0, 0x18

    .line 850
    .local v0, "size":I
    const/4 v1, 0x0

    .line 851
    .local v1, "nbFields":I
    iget-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->firstField:Lcom/sleepycat/asm/FieldWriter;

    move v9, v1

    move-object v10, v2

    .line 852
    .end local v1    # "nbFields":I
    .local v9, "nbFields":I
    .local v10, "fb":Lcom/sleepycat/asm/FieldWriter;
    :goto_0
    if-eqz v10, :cond_0

    .line 853
    add-int/lit8 v9, v9, 0x1

    .line 854
    invoke-virtual {v10}, Lcom/sleepycat/asm/FieldWriter;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 855
    iget-object v1, v10, Lcom/sleepycat/asm/FieldWriter;->fv:Lcom/sleepycat/asm/FieldVisitor;

    move-object v10, v1

    check-cast v10, Lcom/sleepycat/asm/FieldWriter;

    goto :goto_0

    .line 857
    :cond_0
    const/4 v1, 0x0

    .line 858
    .local v1, "nbMethods":I
    iget-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->firstMethod:Lcom/sleepycat/asm/MethodWriter;

    move v11, v1

    move-object v12, v2

    .line 859
    .end local v1    # "nbMethods":I
    .local v11, "nbMethods":I
    .local v12, "mb":Lcom/sleepycat/asm/MethodWriter;
    :goto_1
    if-eqz v12, :cond_1

    .line 860
    add-int/lit8 v11, v11, 0x1

    .line 861
    invoke-virtual {v12}, Lcom/sleepycat/asm/MethodWriter;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 862
    iget-object v1, v12, Lcom/sleepycat/asm/MethodWriter;->mv:Lcom/sleepycat/asm/MethodVisitor;

    move-object v12, v1

    check-cast v12, Lcom/sleepycat/asm/MethodWriter;

    goto :goto_1

    .line 864
    :cond_1
    const/4 v1, 0x0

    .line 865
    .local v1, "attributeCount":I
    iget-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->bootstrapMethods:Lcom/sleepycat/asm/ByteVector;

    const-string v13, "BootstrapMethods"

    const/16 v14, 0x8

    if-eqz v2, :cond_2

    .line 868
    add-int/lit8 v1, v1, 0x1

    .line 869
    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/2addr v2, v14

    add-int/2addr v0, v2

    .line 870
    invoke-virtual {v7, v13}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 872
    :cond_2
    iget v2, v7, Lcom/sleepycat/asm/ClassWriter;->signature:I

    const-string v15, "Signature"

    if-eqz v2, :cond_3

    .line 873
    add-int/lit8 v1, v1, 0x1

    .line 874
    add-int/lit8 v0, v0, 0x8

    .line 875
    invoke-virtual {v7, v15}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 877
    :cond_3
    iget v2, v7, Lcom/sleepycat/asm/ClassWriter;->sourceFile:I

    const-string v5, "SourceFile"

    if-eqz v2, :cond_4

    .line 878
    add-int/lit8 v1, v1, 0x1

    .line 879
    add-int/lit8 v0, v0, 0x8

    .line 880
    invoke-virtual {v7, v5}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 882
    :cond_4
    iget-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->sourceDebug:Lcom/sleepycat/asm/ByteVector;

    const-string v4, "SourceDebugExtension"

    if-eqz v2, :cond_5

    .line 883
    add-int/lit8 v1, v1, 0x1

    .line 884
    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    .line 885
    invoke-virtual {v7, v4}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 887
    :cond_5
    iget v2, v7, Lcom/sleepycat/asm/ClassWriter;->enclosingMethodOwner:I

    const-string v3, "EnclosingMethod"

    if-eqz v2, :cond_6

    .line 888
    add-int/lit8 v1, v1, 0x1

    .line 889
    add-int/lit8 v0, v0, 0xa

    .line 890
    invoke-virtual {v7, v3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 892
    :cond_6
    iget v2, v7, Lcom/sleepycat/asm/ClassWriter;->access:I

    const/high16 v16, 0x20000

    and-int v2, v2, v16

    const-string v8, "Deprecated"

    if-eqz v2, :cond_7

    .line 893
    add-int/lit8 v1, v1, 0x1

    .line 894
    add-int/lit8 v0, v0, 0x6

    .line 895
    invoke-virtual {v7, v8}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 897
    :cond_7
    iget v2, v7, Lcom/sleepycat/asm/ClassWriter;->access:I

    and-int/lit16 v14, v2, 0x1000

    move-object/from16 v18, v5

    const-string v5, "Synthetic"

    move-object/from16 v19, v4

    const/16 v4, 0x31

    const/high16 v20, 0x40000

    if-eqz v14, :cond_9

    .line 898
    iget v14, v7, Lcom/sleepycat/asm/ClassWriter;->version:I

    and-int/2addr v14, v6

    if-lt v14, v4, :cond_8

    and-int v2, v2, v20

    if-eqz v2, :cond_9

    .line 900
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 901
    add-int/lit8 v0, v0, 0x6

    .line 902
    invoke-virtual {v7, v5}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 905
    :cond_9
    iget-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->innerClasses:Lcom/sleepycat/asm/ByteVector;

    const-string v14, "InnerClasses"

    if-eqz v2, :cond_a

    .line 906
    add-int/lit8 v1, v1, 0x1

    .line 907
    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    const/16 v17, 0x8

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 908
    invoke-virtual {v7, v14}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 910
    :cond_a
    iget-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    const-string v6, "RuntimeVisibleAnnotations"

    if-eqz v2, :cond_b

    .line 911
    add-int/lit8 v1, v1, 0x1

    .line 912
    invoke-virtual {v2}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v2

    const/16 v17, 0x8

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 913
    invoke-virtual {v7, v6}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 915
    :cond_b
    iget-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    move-object/from16 v21, v5

    const-string v5, "RuntimeInvisibleAnnotations"

    if-eqz v2, :cond_c

    .line 916
    add-int/lit8 v1, v1, 0x1

    .line 917
    invoke-virtual {v2}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v2

    const/16 v17, 0x8

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 918
    invoke-virtual {v7, v5}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 920
    :cond_c
    iget-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    move-object/from16 v22, v5

    const-string v5, "RuntimeVisibleTypeAnnotations"

    if-eqz v2, :cond_d

    .line 921
    add-int/lit8 v1, v1, 0x1

    .line 922
    invoke-virtual {v2}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v2

    const/16 v17, 0x8

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 923
    invoke-virtual {v7, v5}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 925
    :cond_d
    iget-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v2, :cond_e

    .line 926
    add-int/lit8 v1, v1, 0x1

    .line 927
    invoke-virtual {v2}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v2

    const/16 v17, 0x8

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 928
    const-string v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v7, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    goto :goto_2

    .line 925
    :cond_e
    const/16 v17, 0x8

    .line 930
    :goto_2
    iget-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->moduleWriter:Lcom/sleepycat/asm/ModuleWriter;

    const/16 v23, 0x1

    if-eqz v2, :cond_f

    .line 931
    iget v2, v2, Lcom/sleepycat/asm/ModuleWriter;->attributeCount:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 932
    iget-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->moduleWriter:Lcom/sleepycat/asm/ModuleWriter;

    iget v2, v2, Lcom/sleepycat/asm/ModuleWriter;->size:I

    add-int/lit8 v2, v2, 0x6

    iget-object v4, v7, Lcom/sleepycat/asm/ClassWriter;->moduleWriter:Lcom/sleepycat/asm/ModuleWriter;

    iget v4, v4, Lcom/sleepycat/asm/ModuleWriter;->attributesSize:I

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 933
    const-string v2, "Module"

    invoke-virtual {v7, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move/from16 v25, v0

    goto :goto_3

    .line 930
    :cond_f
    move/from16 v25, v0

    .line 935
    .end local v0    # "size":I
    .local v25, "size":I
    :goto_3
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->attrs:Lcom/sleepycat/asm/Attribute;

    if-eqz v0, :cond_10

    .line 936
    invoke-virtual {v0}, Lcom/sleepycat/asm/Attribute;->getCount()I

    move-result v0

    add-int v26, v1, v0

    .line 937
    .end local v1    # "attributeCount":I
    .local v26, "attributeCount":I
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->attrs:Lcom/sleepycat/asm/Attribute;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v27, -0x1

    const/16 v28, -0x1

    move-object/from16 v1, p0

    move-object/from16 v29, v3

    move v3, v4

    move-object/from16 v30, v19

    move/from16 v4, v27

    move-object/from16 v19, v10

    move-object/from16 v10, v21

    move-object/from16 v21, v5

    move-object/from16 v31, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v31

    .end local v10    # "fb":Lcom/sleepycat/asm/FieldWriter;
    .end local v12    # "mb":Lcom/sleepycat/asm/MethodWriter;
    .local v18, "mb":Lcom/sleepycat/asm/MethodWriter;
    .local v19, "fb":Lcom/sleepycat/asm/FieldWriter;
    move/from16 v5, v28

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/asm/Attribute;->getSize(Lcom/sleepycat/asm/ClassWriter;[BIII)I

    move-result v0

    add-int v25, v25, v0

    move/from16 v5, v26

    goto :goto_4

    .line 935
    .end local v18    # "mb":Lcom/sleepycat/asm/MethodWriter;
    .end local v19    # "fb":Lcom/sleepycat/asm/FieldWriter;
    .end local v26    # "attributeCount":I
    .restart local v1    # "attributeCount":I
    .restart local v10    # "fb":Lcom/sleepycat/asm/FieldWriter;
    .restart local v12    # "mb":Lcom/sleepycat/asm/MethodWriter;
    :cond_10
    move-object/from16 v29, v3

    move-object/from16 v30, v19

    move-object/from16 v19, v10

    move-object/from16 v10, v21

    move-object/from16 v21, v5

    move-object/from16 v31, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v31

    .end local v10    # "fb":Lcom/sleepycat/asm/FieldWriter;
    .end local v12    # "mb":Lcom/sleepycat/asm/MethodWriter;
    .restart local v18    # "mb":Lcom/sleepycat/asm/MethodWriter;
    .restart local v19    # "fb":Lcom/sleepycat/asm/FieldWriter;
    move v5, v1

    .line 939
    .end local v1    # "attributeCount":I
    .local v5, "attributeCount":I
    :goto_4
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->pool:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int v4, v25, v0

    .line 942
    .end local v25    # "size":I
    .local v4, "size":I
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0, v4}, Lcom/sleepycat/asm/ByteVector;-><init>(I)V

    move-object v3, v0

    .line 943
    .local v3, "out":Lcom/sleepycat/asm/ByteVector;
    const v0, -0x35014542    # -8346975.0f

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    iget v1, v7, Lcom/sleepycat/asm/ClassWriter;->version:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 944
    iget v0, v7, Lcom/sleepycat/asm/ClassWriter;->index:I

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    iget-object v1, v7, Lcom/sleepycat/asm/ClassWriter;->pool:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, v1, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->pool:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    move/from16 v24, v4

    .end local v4    # "size":I
    .local v24, "size":I
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 945
    const/high16 v0, 0x60000

    iget v1, v7, Lcom/sleepycat/asm/ClassWriter;->access:I

    and-int v2, v1, v20

    div-int/lit8 v2, v2, 0x40

    or-int/2addr v2, v0

    .line 947
    .local v2, "mask":I
    not-int v0, v2

    and-int/2addr v0, v1

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    iget v1, v7, Lcom/sleepycat/asm/ClassWriter;->name:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    iget v1, v7, Lcom/sleepycat/asm/ClassWriter;->superName:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 948
    iget v0, v7, Lcom/sleepycat/asm/ClassWriter;->interfaceCount:I

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 949
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v1, v7, Lcom/sleepycat/asm/ClassWriter;->interfaceCount:I

    if-ge v0, v1, :cond_11

    .line 950
    iget-object v1, v7, Lcom/sleepycat/asm/ClassWriter;->interfaces:[I

    aget v1, v1, v0

    invoke-virtual {v3, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 949
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 952
    .end local v0    # "i":I
    :cond_11
    invoke-virtual {v3, v9}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 953
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->firstField:Lcom/sleepycat/asm/FieldWriter;

    move-object v1, v0

    .line 954
    .end local v19    # "fb":Lcom/sleepycat/asm/FieldWriter;
    .local v1, "fb":Lcom/sleepycat/asm/FieldWriter;
    :goto_6
    if-eqz v1, :cond_12

    .line 955
    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/FieldWriter;->put(Lcom/sleepycat/asm/ByteVector;)V

    .line 956
    iget-object v0, v1, Lcom/sleepycat/asm/FieldWriter;->fv:Lcom/sleepycat/asm/FieldVisitor;

    move-object v1, v0

    check-cast v1, Lcom/sleepycat/asm/FieldWriter;

    goto :goto_6

    .line 958
    :cond_12
    invoke-virtual {v3, v11}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 959
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->firstMethod:Lcom/sleepycat/asm/MethodWriter;

    .line 960
    .end local v18    # "mb":Lcom/sleepycat/asm/MethodWriter;
    .local v0, "mb":Lcom/sleepycat/asm/MethodWriter;
    :goto_7
    if-eqz v0, :cond_13

    .line 961
    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/MethodWriter;->put(Lcom/sleepycat/asm/ByteVector;)V

    .line 962
    iget-object v4, v0, Lcom/sleepycat/asm/MethodWriter;->mv:Lcom/sleepycat/asm/MethodVisitor;

    move-object v0, v4

    check-cast v0, Lcom/sleepycat/asm/MethodWriter;

    const/4 v4, 0x0

    goto :goto_7

    .line 964
    :cond_13
    invoke-virtual {v3, v5}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 965
    iget-object v4, v7, Lcom/sleepycat/asm/ClassWriter;->bootstrapMethods:Lcom/sleepycat/asm/ByteVector;

    if-eqz v4, :cond_14

    .line 966
    invoke-virtual {v7, v13}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 967
    iget-object v4, v7, Lcom/sleepycat/asm/ClassWriter;->bootstrapMethods:Lcom/sleepycat/asm/ByteVector;

    iget v4, v4, Lcom/sleepycat/asm/ByteVector;->length:I

    const/4 v13, 0x2

    add-int/2addr v4, v13

    invoke-virtual {v3, v4}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v4

    iget v13, v7, Lcom/sleepycat/asm/ClassWriter;->bootstrapMethodsCount:I

    invoke-virtual {v4, v13}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 969
    iget-object v4, v7, Lcom/sleepycat/asm/ClassWriter;->bootstrapMethods:Lcom/sleepycat/asm/ByteVector;

    iget-object v4, v4, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v13, v7, Lcom/sleepycat/asm/ClassWriter;->bootstrapMethods:Lcom/sleepycat/asm/ByteVector;

    iget v13, v13, Lcom/sleepycat/asm/ByteVector;->length:I

    move-object/from16 v19, v0

    const/4 v0, 0x0

    .end local v0    # "mb":Lcom/sleepycat/asm/MethodWriter;
    .local v19, "mb":Lcom/sleepycat/asm/MethodWriter;
    invoke-virtual {v3, v4, v0, v13}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    goto :goto_8

    .line 965
    .end local v19    # "mb":Lcom/sleepycat/asm/MethodWriter;
    .restart local v0    # "mb":Lcom/sleepycat/asm/MethodWriter;
    :cond_14
    move-object/from16 v19, v0

    .line 971
    .end local v0    # "mb":Lcom/sleepycat/asm/MethodWriter;
    .restart local v19    # "mb":Lcom/sleepycat/asm/MethodWriter;
    :goto_8
    iget v0, v7, Lcom/sleepycat/asm/ClassWriter;->signature:I

    if-eqz v0, :cond_15

    .line 972
    invoke-virtual {v7, v15}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    iget v4, v7, Lcom/sleepycat/asm/ClassWriter;->signature:I

    invoke-virtual {v0, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 974
    :cond_15
    iget v0, v7, Lcom/sleepycat/asm/ClassWriter;->sourceFile:I

    if-eqz v0, :cond_16

    .line 975
    invoke-virtual {v7, v12}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    iget v4, v7, Lcom/sleepycat/asm/ClassWriter;->sourceFile:I

    invoke-virtual {v0, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 977
    :cond_16
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->sourceDebug:Lcom/sleepycat/asm/ByteVector;

    if-eqz v0, :cond_17

    .line 978
    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 979
    .local v0, "len":I
    move-object/from16 v4, v30

    invoke-virtual {v7, v4}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 980
    iget-object v4, v7, Lcom/sleepycat/asm/ClassWriter;->sourceDebug:Lcom/sleepycat/asm/ByteVector;

    iget-object v4, v4, Lcom/sleepycat/asm/ByteVector;->data:[B

    const/4 v12, 0x0

    invoke-virtual {v3, v4, v12, v0}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 982
    .end local v0    # "len":I
    :cond_17
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->moduleWriter:Lcom/sleepycat/asm/ModuleWriter;

    if-eqz v0, :cond_18

    .line 983
    const-string v0, "Module"

    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 984
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->moduleWriter:Lcom/sleepycat/asm/ModuleWriter;

    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/ModuleWriter;->put(Lcom/sleepycat/asm/ByteVector;)V

    .line 985
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->moduleWriter:Lcom/sleepycat/asm/ModuleWriter;

    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/ModuleWriter;->putAttributes(Lcom/sleepycat/asm/ByteVector;)V

    .line 987
    :cond_18
    iget v0, v7, Lcom/sleepycat/asm/ClassWriter;->enclosingMethodOwner:I

    if-eqz v0, :cond_19

    .line 988
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 989
    iget v0, v7, Lcom/sleepycat/asm/ClassWriter;->enclosingMethodOwner:I

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    iget v4, v7, Lcom/sleepycat/asm/ClassWriter;->enclosingMethod:I

    invoke-virtual {v0, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 991
    :cond_19
    iget v0, v7, Lcom/sleepycat/asm/ClassWriter;->access:I

    and-int v0, v0, v16

    if-eqz v0, :cond_1a

    .line 992
    invoke-virtual {v7, v8}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 994
    :cond_1a
    iget v0, v7, Lcom/sleepycat/asm/ClassWriter;->access:I

    and-int/lit16 v4, v0, 0x1000

    if-eqz v4, :cond_1c

    .line 995
    iget v4, v7, Lcom/sleepycat/asm/ClassWriter;->version:I

    const v8, 0xffff

    and-int/2addr v4, v8

    const/16 v8, 0x31

    if-lt v4, v8, :cond_1b

    and-int v0, v0, v20

    if-eqz v0, :cond_1c

    .line 997
    :cond_1b
    invoke-virtual {v7, v10}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 1000
    :cond_1c
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->innerClasses:Lcom/sleepycat/asm/ByteVector;

    if-eqz v0, :cond_1d

    .line 1001
    invoke-virtual {v7, v14}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1002
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->innerClasses:Lcom/sleepycat/asm/ByteVector;

    iget v0, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    const/4 v4, 0x2

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    iget v4, v7, Lcom/sleepycat/asm/ClassWriter;->innerClassesCount:I

    invoke-virtual {v0, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1003
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->innerClasses:Lcom/sleepycat/asm/ByteVector;

    iget-object v0, v0, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v4, v7, Lcom/sleepycat/asm/ClassWriter;->innerClasses:Lcom/sleepycat/asm/ByteVector;

    iget v4, v4, Lcom/sleepycat/asm/ByteVector;->length:I

    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v4}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    goto :goto_9

    .line 1000
    :cond_1d
    const/4 v8, 0x0

    .line 1005
    :goto_9
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v0, :cond_1e

    .line 1006
    invoke-virtual {v7, v6}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1007
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/AnnotationWriter;->put(Lcom/sleepycat/asm/ByteVector;)V

    .line 1009
    :cond_1e
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v0, :cond_1f

    .line 1010
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1011
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/AnnotationWriter;->put(Lcom/sleepycat/asm/ByteVector;)V

    .line 1013
    :cond_1f
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v0, :cond_20

    .line 1014
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1015
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/AnnotationWriter;->put(Lcom/sleepycat/asm/ByteVector;)V

    .line 1017
    :cond_20
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v0, :cond_21

    .line 1018
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v7, v0}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 1019
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v0, v3}, Lcom/sleepycat/asm/AnnotationWriter;->put(Lcom/sleepycat/asm/ByteVector;)V

    .line 1021
    :cond_21
    iget-object v0, v7, Lcom/sleepycat/asm/ClassWriter;->attrs:Lcom/sleepycat/asm/Attribute;

    if-eqz v0, :cond_22

    .line 1022
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v12, -0x1

    move-object/from16 v13, v19

    .end local v19    # "mb":Lcom/sleepycat/asm/MethodWriter;
    .local v13, "mb":Lcom/sleepycat/asm/MethodWriter;
    move-object v14, v1

    .end local v1    # "fb":Lcom/sleepycat/asm/FieldWriter;
    .local v14, "fb":Lcom/sleepycat/asm/FieldWriter;
    move-object/from16 v1, p0

    move v15, v2

    .end local v2    # "mask":I
    .local v15, "mask":I
    move-object v2, v4

    move-object v4, v3

    .end local v3    # "out":Lcom/sleepycat/asm/ByteVector;
    .local v4, "out":Lcom/sleepycat/asm/ByteVector;
    move v3, v6

    move-object/from16 v16, v4

    move/from16 v25, v24

    .end local v4    # "out":Lcom/sleepycat/asm/ByteVector;
    .end local v24    # "size":I
    .local v16, "out":Lcom/sleepycat/asm/ByteVector;
    .restart local v25    # "size":I
    move v4, v10

    move/from16 v26, v5

    .end local v5    # "attributeCount":I
    .restart local v26    # "attributeCount":I
    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/asm/Attribute;->put(Lcom/sleepycat/asm/ClassWriter;[BIIILcom/sleepycat/asm/ByteVector;)V

    goto :goto_a

    .line 1021
    .end local v13    # "mb":Lcom/sleepycat/asm/MethodWriter;
    .end local v14    # "fb":Lcom/sleepycat/asm/FieldWriter;
    .end local v15    # "mask":I
    .end local v16    # "out":Lcom/sleepycat/asm/ByteVector;
    .end local v25    # "size":I
    .end local v26    # "attributeCount":I
    .restart local v1    # "fb":Lcom/sleepycat/asm/FieldWriter;
    .restart local v2    # "mask":I
    .restart local v3    # "out":Lcom/sleepycat/asm/ByteVector;
    .restart local v5    # "attributeCount":I
    .restart local v19    # "mb":Lcom/sleepycat/asm/MethodWriter;
    .restart local v24    # "size":I
    :cond_22
    move-object v14, v1

    move v15, v2

    move-object/from16 v16, v3

    move/from16 v26, v5

    move-object/from16 v13, v19

    move/from16 v25, v24

    .line 1024
    .end local v1    # "fb":Lcom/sleepycat/asm/FieldWriter;
    .end local v2    # "mask":I
    .end local v3    # "out":Lcom/sleepycat/asm/ByteVector;
    .end local v5    # "attributeCount":I
    .end local v19    # "mb":Lcom/sleepycat/asm/MethodWriter;
    .end local v24    # "size":I
    .restart local v13    # "mb":Lcom/sleepycat/asm/MethodWriter;
    .restart local v14    # "fb":Lcom/sleepycat/asm/FieldWriter;
    .restart local v15    # "mask":I
    .restart local v16    # "out":Lcom/sleepycat/asm/ByteVector;
    .restart local v25    # "size":I
    .restart local v26    # "attributeCount":I
    :goto_a
    iget-boolean v0, v7, Lcom/sleepycat/asm/ClassWriter;->hasAsmInsns:Z

    if-eqz v0, :cond_27

    .line 1025
    const/4 v0, 0x0

    .line 1026
    .local v0, "hasFrames":Z
    iget-object v1, v7, Lcom/sleepycat/asm/ClassWriter;->firstMethod:Lcom/sleepycat/asm/MethodWriter;

    .line 1027
    .end local v13    # "mb":Lcom/sleepycat/asm/MethodWriter;
    .local v1, "mb":Lcom/sleepycat/asm/MethodWriter;
    :goto_b
    if-eqz v1, :cond_24

    .line 1028
    iget v2, v1, Lcom/sleepycat/asm/MethodWriter;->frameCount:I

    if-lez v2, :cond_23

    move/from16 v4, v23

    goto :goto_c

    :cond_23
    move v4, v8

    :goto_c
    or-int/2addr v0, v4

    .line 1029
    iget-object v2, v1, Lcom/sleepycat/asm/MethodWriter;->mv:Lcom/sleepycat/asm/MethodVisitor;

    move-object v1, v2

    check-cast v1, Lcom/sleepycat/asm/MethodWriter;

    goto :goto_b

    .line 1031
    :cond_24
    const/4 v2, 0x0

    iput-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    .line 1032
    iput-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    .line 1033
    iput-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->attrs:Lcom/sleepycat/asm/Attribute;

    .line 1034
    iput-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->moduleWriter:Lcom/sleepycat/asm/ModuleWriter;

    .line 1035
    iput-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->firstField:Lcom/sleepycat/asm/FieldWriter;

    .line 1036
    iput-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->lastField:Lcom/sleepycat/asm/FieldWriter;

    .line 1037
    iput-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->firstMethod:Lcom/sleepycat/asm/MethodWriter;

    .line 1038
    iput-object v2, v7, Lcom/sleepycat/asm/ClassWriter;->lastMethod:Lcom/sleepycat/asm/MethodWriter;

    .line 1039
    if-eqz v0, :cond_25

    goto :goto_d

    :cond_25
    const/16 v23, 0x3

    :goto_d
    move/from16 v2, v23

    iput v2, v7, Lcom/sleepycat/asm/ClassWriter;->compute:I

    .line 1041
    iput-boolean v8, v7, Lcom/sleepycat/asm/ClassWriter;->hasAsmInsns:Z

    .line 1042
    new-instance v2, Lcom/sleepycat/asm/ClassReader;

    move-object/from16 v3, v16

    .end local v16    # "out":Lcom/sleepycat/asm/ByteVector;
    .restart local v3    # "out":Lcom/sleepycat/asm/ByteVector;
    iget-object v4, v3, Lcom/sleepycat/asm/ByteVector;->data:[B

    invoke-direct {v2, v4}, Lcom/sleepycat/asm/ClassReader;-><init>([B)V

    if-eqz v0, :cond_26

    move/from16 v8, v17

    :cond_26
    or-int/lit16 v4, v8, 0x100

    invoke-virtual {v2, v7, v4}, Lcom/sleepycat/asm/ClassReader;->accept(Lcom/sleepycat/asm/ClassVisitor;I)V

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/asm/ClassWriter;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 1047
    .end local v0    # "hasFrames":Z
    .end local v1    # "mb":Lcom/sleepycat/asm/MethodWriter;
    .end local v3    # "out":Lcom/sleepycat/asm/ByteVector;
    .restart local v13    # "mb":Lcom/sleepycat/asm/MethodWriter;
    .restart local v16    # "out":Lcom/sleepycat/asm/ByteVector;
    :cond_27
    move-object/from16 v3, v16

    .end local v16    # "out":Lcom/sleepycat/asm/ByteVector;
    .restart local v3    # "out":Lcom/sleepycat/asm/ByteVector;
    iget-object v0, v3, Lcom/sleepycat/asm/ByteVector;->data:[B

    return-object v0

    .line 846
    .end local v3    # "out":Lcom/sleepycat/asm/ByteVector;
    .end local v9    # "nbFields":I
    .end local v11    # "nbMethods":I
    .end local v13    # "mb":Lcom/sleepycat/asm/MethodWriter;
    .end local v14    # "fb":Lcom/sleepycat/asm/FieldWriter;
    .end local v15    # "mask":I
    .end local v25    # "size":I
    .end local v26    # "attributeCount":I
    :cond_28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Class file too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 699
    iput p1, p0, Lcom/sleepycat/asm/ClassWriter;->version:I

    .line 700
    iput p2, p0, Lcom/sleepycat/asm/ClassWriter;->access:I

    .line 701
    invoke-virtual {p0, p3}, Lcom/sleepycat/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/asm/ClassWriter;->name:I

    .line 702
    iput-object p3, p0, Lcom/sleepycat/asm/ClassWriter;->thisName:Ljava/lang/String;

    .line 703
    if-eqz p4, :cond_0

    .line 704
    invoke-virtual {p0, p4}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/asm/ClassWriter;->signature:I

    .line 706
    :cond_0
    if-nez p5, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p5}, Lcom/sleepycat/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sleepycat/asm/ClassWriter;->superName:I

    .line 707
    if-eqz p6, :cond_2

    array-length v0, p6

    if-lez v0, :cond_2

    .line 708
    array-length v0, p6

    iput v0, p0, Lcom/sleepycat/asm/ClassWriter;->interfaceCount:I

    .line 709
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->interfaces:[I

    .line 710
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/sleepycat/asm/ClassWriter;->interfaceCount:I

    if-ge v0, v1, :cond_2

    .line 711
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->interfaces:[I

    aget-object v2, p6, v0

    invoke-virtual {p0, v2}, Lcom/sleepycat/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 710
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 714
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public final visitAnnotation(Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 8
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 747
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    .line 749
    .local v0, "bv":Lcom/sleepycat/asm/ByteVector;
    invoke-virtual {p0, p1}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 750
    new-instance v7, Lcom/sleepycat/asm/AnnotationWriter;

    const/4 v3, 0x1

    const/4 v6, 0x2

    move-object v1, v7

    move-object v2, p0

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/asm/AnnotationWriter;-><init>(Lcom/sleepycat/asm/ClassWriter;ZLcom/sleepycat/asm/ByteVector;Lcom/sleepycat/asm/ByteVector;I)V

    .line 751
    .local v1, "aw":Lcom/sleepycat/asm/AnnotationWriter;
    if-eqz p2, :cond_0

    .line 752
    iget-object v2, p0, Lcom/sleepycat/asm/ClassWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 753
    iput-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    goto :goto_0

    .line 755
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/asm/ClassWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 756
    iput-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    .line 758
    :goto_0
    return-object v1
.end method

.method public final visitAttribute(Lcom/sleepycat/asm/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lcom/sleepycat/asm/Attribute;

    .line 783
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->attrs:Lcom/sleepycat/asm/Attribute;

    iput-object v0, p1, Lcom/sleepycat/asm/Attribute;->next:Lcom/sleepycat/asm/Attribute;

    .line 784
    iput-object p1, p0, Lcom/sleepycat/asm/ClassWriter;->attrs:Lcom/sleepycat/asm/Attribute;

    .line 785
    return-void
.end method

.method public final visitEnd()V
    .locals 0

    .line 833
    return-void
.end method

.method public final visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/sleepycat/asm/FieldVisitor;
    .locals 8
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 821
    new-instance v7, Lcom/sleepycat/asm/FieldWriter;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/asm/FieldWriter;-><init>(Lcom/sleepycat/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v7
.end method

.method public final visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 790
    iget-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->innerClasses:Lcom/sleepycat/asm/ByteVector;

    if-nez v0, :cond_0

    .line 791
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->innerClasses:Lcom/sleepycat/asm/ByteVector;

    .line 803
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/asm/ClassWriter;->newStringishItem(ILjava/lang/String;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 804
    .local v0, "nameItem":Lcom/sleepycat/asm/Item;
    iget v1, v0, Lcom/sleepycat/asm/Item;->intVal:I

    if-nez v1, :cond_3

    .line 805
    iget v1, p0, Lcom/sleepycat/asm/ClassWriter;->innerClassesCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/asm/ClassWriter;->innerClassesCount:I

    .line 806
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->innerClasses:Lcom/sleepycat/asm/ByteVector;

    iget v2, v0, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 807
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->innerClasses:Lcom/sleepycat/asm/ByteVector;

    const/4 v2, 0x0

    if-nez p2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/sleepycat/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v3

    :goto_0
    invoke-virtual {v1, v3}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 808
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->innerClasses:Lcom/sleepycat/asm/ByteVector;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 809
    iget-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->innerClasses:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v1, p4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 810
    iget v1, p0, Lcom/sleepycat/asm/ClassWriter;->innerClassesCount:I

    iput v1, v0, Lcom/sleepycat/asm/Item;->intVal:I

    .line 816
    :cond_3
    return-void
.end method

.method public final visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sleepycat/asm/MethodVisitor;
    .locals 9
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 827
    new-instance v8, Lcom/sleepycat/asm/MethodWriter;

    iget v7, p0, Lcom/sleepycat/asm/ClassWriter;->compute:I

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/asm/MethodWriter;-><init>(Lcom/sleepycat/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v8
.end method

.method public final visitModule(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/asm/ModuleVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "version"    # Ljava/lang/String;

    .line 730
    new-instance v0, Lcom/sleepycat/asm/ModuleWriter;

    .line 731
    invoke-virtual {p0, p1}, Lcom/sleepycat/asm/ClassWriter;->newModule(Ljava/lang/String;)I

    move-result v1

    if-nez p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 732
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    :goto_0
    invoke-direct {v0, p0, v1, p2, v2}, Lcom/sleepycat/asm/ModuleWriter;-><init>(Lcom/sleepycat/asm/ClassWriter;III)V

    iput-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->moduleWriter:Lcom/sleepycat/asm/ModuleWriter;

    .line 730
    return-object v0
.end method

.method public final visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 738
    invoke-virtual {p0, p1}, Lcom/sleepycat/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/asm/ClassWriter;->enclosingMethodOwner:I

    .line 739
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 740
    invoke-virtual {p0, p2, p3}, Lcom/sleepycat/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/asm/ClassWriter;->enclosingMethod:I

    .line 742
    :cond_0
    return-void
.end method

.method public final visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 718
    if-eqz p1, :cond_0

    .line 719
    invoke-virtual {p0, p1}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/asm/ClassWriter;->sourceFile:I

    .line 721
    :cond_0
    if-eqz p2, :cond_1

    .line 722
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, p2, v1, v2}, Lcom/sleepycat/asm/ByteVector;->encodeUTF8(Ljava/lang/String;II)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/asm/ClassWriter;->sourceDebug:Lcom/sleepycat/asm/ByteVector;

    .line 725
    :cond_1
    return-void
.end method

.method public final visitTypeAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lcom/sleepycat/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 764
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    .line 766
    .local v0, "bv":Lcom/sleepycat/asm/ByteVector;
    invoke-static {p1, p2, v0}, Lcom/sleepycat/asm/AnnotationWriter;->putTarget(ILcom/sleepycat/asm/TypePath;Lcom/sleepycat/asm/ByteVector;)V

    .line 768
    invoke-virtual {p0, p3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 769
    new-instance v7, Lcom/sleepycat/asm/AnnotationWriter;

    iget v1, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v6, v1, -0x2

    const/4 v3, 0x1

    move-object v1, v7

    move-object v2, p0

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/asm/AnnotationWriter;-><init>(Lcom/sleepycat/asm/ClassWriter;ZLcom/sleepycat/asm/ByteVector;Lcom/sleepycat/asm/ByteVector;I)V

    .line 771
    .local v1, "aw":Lcom/sleepycat/asm/AnnotationWriter;
    if-eqz p4, :cond_0

    .line 772
    iget-object v2, p0, Lcom/sleepycat/asm/ClassWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 773
    iput-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    goto :goto_0

    .line 775
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/asm/ClassWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 776
    iput-object v1, p0, Lcom/sleepycat/asm/ClassWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    .line 778
    :goto_0
    return-object v1
.end method
