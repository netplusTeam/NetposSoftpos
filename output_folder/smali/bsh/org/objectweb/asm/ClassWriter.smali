.class public Lbsh/org/objectweb/asm/ClassWriter;
.super Ljava/lang/Object;
.source "ClassWriter.java"

# interfaces
.implements Lbsh/org/objectweb/asm/ClassVisitor;


# static fields
.field static final CLASS:I = 0x7

.field static final DOUBLE:I = 0x6

.field static final FIELD:I = 0x9

.field static final FIELDORMETH_INSN:I = 0x6

.field static final FLOAT:I = 0x4

.field static final IINC_INSN:I = 0xc

.field static final IMETH:I = 0xb

.field static final IMPLVAR_INSN:I = 0x4

.field static final INT:I = 0x3

.field static final ITFMETH_INSN:I = 0x7

.field static final LABELW_INSN:I = 0x9

.field static final LABEL_INSN:I = 0x8

.field static final LDCW_INSN:I = 0xb

.field static final LDC_INSN:I = 0xa

.field static final LONG:I = 0x5

.field static final LOOK_INSN:I = 0xe

.field static final MANA_INSN:I = 0xf

.field static final METH:I = 0xa

.field static final NAME_TYPE:I = 0xc

.field static final NOARG_INSN:I = 0x0

.field static final SBYTE_INSN:I = 0x1

.field static final SHORT_INSN:I = 0x2

.field static final STR:I = 0x8

.field static final TABL_INSN:I = 0xd

.field static TYPE:[B = null

.field static final TYPE_INSN:I = 0x5

.field static final UTF8:I = 0x1

.field static final VAR_INSN:I = 0x3

.field static final WIDE_INSN:I = 0x10


# instance fields
.field private access:I

.field private computeMaxs:Z

.field private fieldCount:I

.field private fields:Lbsh/org/objectweb/asm/ByteVector;

.field firstMethod:Lbsh/org/objectweb/asm/CodeWriter;

.field private index:S

.field private innerClasses:Lbsh/org/objectweb/asm/ByteVector;

.field private innerClassesCount:I

.field private interfaceCount:I

.field private interfaces:[I

.field key:Lbsh/org/objectweb/asm/Item;

.field key2:Lbsh/org/objectweb/asm/Item;

.field key3:Lbsh/org/objectweb/asm/Item;

.field lastMethod:Lbsh/org/objectweb/asm/CodeWriter;

.field private name:I

.field private pool:Lbsh/org/objectweb/asm/ByteVector;

.field private sourceFile:Lbsh/org/objectweb/asm/Item;

.field private superName:I

.field private table:[Lbsh/org/objectweb/asm/Item;

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 360
    const/16 v0, 0xdc

    new-array v0, v0, [B

    .line 361
    .local v0, "b":[B
    const-string v1, "AAAAAAAAAAAAAAAABCKLLDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAIIIIIIIIIIIIIIIIDNOAAAAAAGGGGGGGHAFBFAAFFAAQPIIJJIIIIIIIIIIIIIIIIII"

    .line 366
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 367
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x41

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 369
    :cond_0
    sput-object v0, Lbsh/org/objectweb/asm/ClassWriter;->TYPE:[B

    .line 437
    .end local v0    # "b":[B
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "i":I
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "computeMaxs"    # Z

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    const/4 v0, 0x1

    iput-short v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    .line 457
    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    .line 458
    const/16 v0, 0x40

    new-array v0, v0, [Lbsh/org/objectweb/asm/Item;

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->table:[Lbsh/org/objectweb/asm/Item;

    .line 459
    array-length v0, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->threshold:I

    .line 460
    new-instance v0, Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    .line 461
    new-instance v0, Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    .line 462
    new-instance v0, Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    .line 463
    iput-boolean p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->computeMaxs:Z

    .line 464
    return-void
.end method

.method private get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;
    .locals 5
    .param p1, "key"    # Lbsh/org/objectweb/asm/Item;

    .line 908
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->table:[Lbsh/org/objectweb/asm/Item;

    .line 909
    .local v0, "tab":[Lbsh/org/objectweb/asm/Item;
    iget v1, p1, Lbsh/org/objectweb/asm/Item;->hashCode:I

    .line 910
    .local v1, "hashCode":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 911
    .local v2, "index":I
    aget-object v3, v0, v2

    .local v3, "i":Lbsh/org/objectweb/asm/Item;
    :goto_0
    if-eqz v3, :cond_1

    .line 912
    iget v4, v3, Lbsh/org/objectweb/asm/Item;->hashCode:I

    if-ne v4, v1, :cond_0

    invoke-virtual {p1, v3}, Lbsh/org/objectweb/asm/Item;->isEqualTo(Lbsh/org/objectweb/asm/Item;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 913
    return-object v3

    .line 911
    :cond_0
    iget-object v3, v3, Lbsh/org/objectweb/asm/Item;->next:Lbsh/org/objectweb/asm/Item;

    goto :goto_0

    .line 916
    .end local v3    # "i":Lbsh/org/objectweb/asm/Item;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private newDouble(D)Lbsh/org/objectweb/asm/Item;
    .locals 4
    .param p1, "value"    # D

    .line 848
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/Item;->set(D)V

    .line 849
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    .line 850
    .local v0, "result":Lbsh/org/objectweb/asm/Item;
    if-nez v0, :cond_0

    .line 851
    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lbsh/org/objectweb/asm/ByteVector;->put8(J)Lbsh/org/objectweb/asm/ByteVector;

    .line 852
    new-instance v1, Lbsh/org/objectweb/asm/Item;

    iget-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v1, v2, v3}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    move-object v0, v1

    .line 853
    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    .line 854
    iget-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    .line 856
    :cond_0
    return-object v0
.end method

.method private newFloat(F)Lbsh/org/objectweb/asm/Item;
    .locals 4
    .param p1, "value"    # F

    .line 809
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/Item;->set(F)V

    .line 810
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    .line 811
    .local v0, "result":Lbsh/org/objectweb/asm/Item;
    if-nez v0, :cond_0

    .line 812
    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 813
    new-instance v1, Lbsh/org/objectweb/asm/Item;

    iget-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v3, v2, 0x1

    int-to-short v3, v3

    iput-short v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v1, v2, v3}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    move-object v0, v1

    .line 814
    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    .line 816
    :cond_0
    return-object v0
.end method

.method private newInteger(I)Lbsh/org/objectweb/asm/Item;
    .locals 4
    .param p1, "value"    # I

    .line 790
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/Item;->set(I)V

    .line 791
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    .line 792
    .local v0, "result":Lbsh/org/objectweb/asm/Item;
    if-nez v0, :cond_0

    .line 793
    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 794
    new-instance v1, Lbsh/org/objectweb/asm/Item;

    iget-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v3, v2, 0x1

    int-to-short v3, v3

    iput-short v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v1, v2, v3}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    move-object v0, v1

    .line 795
    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    .line 797
    :cond_0
    return-object v0
.end method

.method private newLong(J)Lbsh/org/objectweb/asm/Item;
    .locals 4
    .param p1, "value"    # J

    .line 828
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/Item;->set(J)V

    .line 829
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    .line 830
    .local v0, "result":Lbsh/org/objectweb/asm/Item;
    if-nez v0, :cond_0

    .line 831
    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put8(J)Lbsh/org/objectweb/asm/ByteVector;

    .line 832
    new-instance v1, Lbsh/org/objectweb/asm/Item;

    iget-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v1, v2, v3}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    move-object v0, v1

    .line 833
    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    .line 834
    iget-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    .line 836
    :cond_0
    return-object v0
.end method

.method private newNameType(Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 888
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lbsh/org/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    .line 890
    .local v0, "result":Lbsh/org/objectweb/asm/Item;
    if-nez v0, :cond_0

    .line 891
    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {p0, p2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v3

    iget-short v3, v3, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-direct {p0, v1, v2, v3}, Lbsh/org/objectweb/asm/ClassWriter;->put122(III)V

    .line 892
    new-instance v1, Lbsh/org/objectweb/asm/Item;

    iget-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v3, v2, 0x1

    int-to-short v3, v3

    iput-short v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v1, v2, v3}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    move-object v0, v1

    .line 893
    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    .line 895
    :cond_0
    return-object v0
.end method

.method private newString(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 868
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lbsh/org/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    .line 870
    .local v0, "result":Lbsh/org/objectweb/asm/Item;
    if-nez v0, :cond_0

    .line 871
    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v3

    iget-short v3, v3, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v2, v1, v3}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    .line 872
    new-instance v1, Lbsh/org/objectweb/asm/Item;

    iget-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v3, v2, 0x1

    int-to-short v3, v3

    iput-short v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v1, v2, v3}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    move-object v0, v1

    .line 873
    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    .line 875
    :cond_0
    return-object v0
.end method

.method private put(Lbsh/org/objectweb/asm/Item;)V
    .locals 10
    .param p1, "i"    # Lbsh/org/objectweb/asm/Item;

    .line 927
    iget-short v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->threshold:I

    const v2, 0x7fffffff

    if-le v0, v1, :cond_1

    .line 928
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->table:[Lbsh/org/objectweb/asm/Item;

    array-length v0, v0

    .line 929
    .local v0, "oldCapacity":I
    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->table:[Lbsh/org/objectweb/asm/Item;

    .line 930
    .local v1, "oldMap":[Lbsh/org/objectweb/asm/Item;
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    .line 931
    .local v3, "newCapacity":I
    new-array v4, v3, [Lbsh/org/objectweb/asm/Item;

    .line 932
    .local v4, "newMap":[Lbsh/org/objectweb/asm/Item;
    int-to-double v5, v3

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Lbsh/org/objectweb/asm/ClassWriter;->threshold:I

    .line 933
    iput-object v4, p0, Lbsh/org/objectweb/asm/ClassWriter;->table:[Lbsh/org/objectweb/asm/Item;

    .line 934
    move v5, v0

    .local v5, "j":I
    :goto_0
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "j":I
    .local v6, "j":I
    if-lez v5, :cond_1

    .line 935
    aget-object v5, v1, v6

    .local v5, "old":Lbsh/org/objectweb/asm/Item;
    :goto_1
    if-eqz v5, :cond_0

    .line 936
    move-object v7, v5

    .line 937
    .local v7, "e":Lbsh/org/objectweb/asm/Item;
    iget-object v5, v5, Lbsh/org/objectweb/asm/Item;->next:Lbsh/org/objectweb/asm/Item;

    .line 938
    iget v8, v7, Lbsh/org/objectweb/asm/Item;->hashCode:I

    and-int/2addr v8, v2

    rem-int/2addr v8, v3

    .line 939
    .local v8, "index":I
    aget-object v9, v4, v8

    iput-object v9, v7, Lbsh/org/objectweb/asm/Item;->next:Lbsh/org/objectweb/asm/Item;

    .line 940
    aput-object v7, v4, v8

    .line 941
    .end local v7    # "e":Lbsh/org/objectweb/asm/Item;
    .end local v8    # "index":I
    goto :goto_1

    .end local v5    # "old":Lbsh/org/objectweb/asm/Item;
    :cond_0
    move v5, v6

    goto :goto_0

    .line 944
    .end local v0    # "oldCapacity":I
    .end local v1    # "oldMap":[Lbsh/org/objectweb/asm/Item;
    .end local v3    # "newCapacity":I
    .end local v4    # "newMap":[Lbsh/org/objectweb/asm/Item;
    .end local v6    # "j":I
    :cond_1
    iget v0, p1, Lbsh/org/objectweb/asm/Item;->hashCode:I

    and-int/2addr v0, v2

    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->table:[Lbsh/org/objectweb/asm/Item;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 945
    .local v0, "index":I
    aget-object v1, v1, v0

    iput-object v1, p1, Lbsh/org/objectweb/asm/Item;->next:Lbsh/org/objectweb/asm/Item;

    .line 946
    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->table:[Lbsh/org/objectweb/asm/Item;

    aput-object p1, v1, v0

    .line 947
    return-void
.end method

.method private put122(III)V
    .locals 1
    .param p1, "b"    # I
    .param p2, "s1"    # I
    .param p3, "s2"    # I

    .line 958
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 959
    return-void
.end method


# virtual methods
.method newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 696
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lbsh/org/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    .line 698
    .local v0, "result":Lbsh/org/objectweb/asm/Item;
    if-nez v0, :cond_0

    .line 699
    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v3

    iget-short v3, v3, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v2, v1, v3}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    .line 700
    new-instance v1, Lbsh/org/objectweb/asm/Item;

    iget-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v3, v2, 0x1

    int-to-short v3, v3

    iput-short v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v1, v2, v3}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    move-object v0, v1

    .line 701
    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    .line 703
    :cond_0
    return-object v0
.end method

.method newCst(Ljava/lang/Object;)Lbsh/org/objectweb/asm/Item;
    .locals 3
    .param p1, "cst"    # Ljava/lang/Object;

    .line 649
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 650
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 651
    .local v0, "val":I
    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->newInteger(I)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    return-object v1

    .line 652
    .end local v0    # "val":I
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 653
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 654
    .local v0, "val":F
    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->newFloat(F)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    return-object v1

    .line 655
    .end local v0    # "val":F
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 656
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 657
    .local v0, "val":J
    invoke-direct {p0, v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->newLong(J)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    return-object v2

    .line 658
    .end local v0    # "val":J
    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 659
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 660
    .local v0, "val":D
    invoke-direct {p0, v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->newDouble(D)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    return-object v2

    .line 661
    .end local v0    # "val":D
    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 662
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->newString(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    return-object v0

    .line 664
    :cond_4
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

.method newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .locals 4
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 721
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2, p3}, Lbsh/org/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    .line 723
    .local v0, "result":Lbsh/org/objectweb/asm/Item;
    if-nez v0, :cond_0

    .line 724
    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-direct {p0, p2, p3}, Lbsh/org/objectweb/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v3

    iget-short v3, v3, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-direct {p0, v1, v2, v3}, Lbsh/org/objectweb/asm/ClassWriter;->put122(III)V

    .line 725
    new-instance v1, Lbsh/org/objectweb/asm/Item;

    iget-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v3, v2, 0x1

    int-to-short v3, v3

    iput-short v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v1, v2, v3}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    move-object v0, v1

    .line 726
    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    .line 728
    :cond_0
    return-object v0
.end method

.method newItfMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .locals 4
    .param p1, "ownerItf"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 771
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1, p2, p3}, Lbsh/org/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    .line 773
    .local v0, "result":Lbsh/org/objectweb/asm/Item;
    if-nez v0, :cond_0

    .line 774
    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-direct {p0, p2, p3}, Lbsh/org/objectweb/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v3

    iget-short v3, v3, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-direct {p0, v1, v2, v3}, Lbsh/org/objectweb/asm/ClassWriter;->put122(III)V

    .line 775
    new-instance v1, Lbsh/org/objectweb/asm/Item;

    iget-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v3, v2, 0x1

    int-to-short v3, v3

    iput-short v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v1, v2, v3}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    move-object v0, v1

    .line 776
    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    .line 778
    :cond_0
    return-object v0
.end method

.method newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .locals 4
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 746
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1, p2, p3}, Lbsh/org/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    .line 748
    .local v0, "result":Lbsh/org/objectweb/asm/Item;
    if-nez v0, :cond_0

    .line 749
    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-direct {p0, p2, p3}, Lbsh/org/objectweb/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v3

    iget-short v3, v3, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-direct {p0, v1, v2, v3}, Lbsh/org/objectweb/asm/ClassWriter;->put122(III)V

    .line 750
    new-instance v1, Lbsh/org/objectweb/asm/Item;

    iget-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v3, v2, 0x1

    int-to-short v3, v3

    iput-short v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v1, v2, v3}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    move-object v0, v1

    .line 751
    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    .line 753
    :cond_0
    return-object v0
.end method

.method newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lbsh/org/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    .line 679
    .local v0, "result":Lbsh/org/objectweb/asm/Item;
    if-nez v0, :cond_0

    .line 680
    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v2, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lbsh/org/objectweb/asm/ByteVector;->putUTF(Ljava/lang/String;)Lbsh/org/objectweb/asm/ByteVector;

    .line 681
    new-instance v1, Lbsh/org/objectweb/asm/Item;

    iget-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v3, v2, 0x1

    int-to-short v3, v3

    iput-short v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v1, v2, v3}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    move-object v0, v1

    .line 682
    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    .line 684
    :cond_0
    return-object v0
.end method

.method public toByteArray()[B
    .locals 11

    .line 573
    iget v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->interfaceCount:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x18

    .line 574
    .local v0, "size":I
    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_0

    .line 575
    iget v2, v2, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, v2

    .line 577
    :cond_0
    const/4 v2, 0x0

    .line 578
    .local v2, "nbMethods":I
    iget-object v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->firstMethod:Lbsh/org/objectweb/asm/CodeWriter;

    .line 579
    .local v3, "cb":Lbsh/org/objectweb/asm/CodeWriter;
    :goto_0
    if-eqz v3, :cond_1

    .line 580
    add-int/lit8 v2, v2, 0x1

    .line 581
    invoke-virtual {v3}, Lbsh/org/objectweb/asm/CodeWriter;->getSize()I

    move-result v4

    add-int/2addr v0, v4

    .line 582
    iget-object v3, v3, Lbsh/org/objectweb/asm/CodeWriter;->next:Lbsh/org/objectweb/asm/CodeWriter;

    goto :goto_0

    .line 584
    :cond_1
    iget-object v4, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    iget v4, v4, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, v4

    .line 585
    const/4 v4, 0x0

    .line 586
    .local v4, "attributeCount":I
    iget-object v5, p0, Lbsh/org/objectweb/asm/ClassWriter;->sourceFile:Lbsh/org/objectweb/asm/Item;

    if-eqz v5, :cond_2

    .line 587
    add-int/lit8 v4, v4, 0x1

    .line 588
    add-int/lit8 v0, v0, 0x8

    .line 590
    :cond_2
    iget v5, p0, Lbsh/org/objectweb/asm/ClassWriter;->access:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    .line 591
    add-int/lit8 v4, v4, 0x1

    .line 592
    add-int/lit8 v0, v0, 0x6

    .line 594
    :cond_3
    iget-object v5, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v5, :cond_4

    .line 595
    add-int/lit8 v4, v4, 0x1

    .line 596
    iget v5, v5, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v0, v5

    .line 600
    :cond_4
    new-instance v5, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v5, v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>(I)V

    .line 601
    .local v5, "out":Lbsh/org/objectweb/asm/ByteVector;
    const v7, -0x35014542    # -8346975.0f

    invoke-virtual {v5, v7}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v7

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 602
    iget-short v7, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    invoke-virtual {v5, v7}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v7

    iget-object v8, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v8, v8, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    iget-object v9, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    iget v9, v9, Lbsh/org/objectweb/asm/ByteVector;->length:I

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10, v9}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    .line 603
    iget v7, p0, Lbsh/org/objectweb/asm/ClassWriter;->access:I

    invoke-virtual {v5, v7}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v7

    iget v8, p0, Lbsh/org/objectweb/asm/ClassWriter;->name:I

    invoke-virtual {v7, v8}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v7

    iget v8, p0, Lbsh/org/objectweb/asm/ClassWriter;->superName:I

    invoke-virtual {v7, v8}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 604
    iget v7, p0, Lbsh/org/objectweb/asm/ClassWriter;->interfaceCount:I

    invoke-virtual {v5, v7}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 605
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v8, p0, Lbsh/org/objectweb/asm/ClassWriter;->interfaceCount:I

    if-ge v7, v8, :cond_5

    .line 606
    iget-object v8, p0, Lbsh/org/objectweb/asm/ClassWriter;->interfaces:[I

    aget v8, v8, v7

    invoke-virtual {v5, v8}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 605
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 608
    .end local v7    # "i":I
    :cond_5
    iget v7, p0, Lbsh/org/objectweb/asm/ClassWriter;->fieldCount:I

    invoke-virtual {v5, v7}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 609
    iget-object v7, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v7, :cond_6

    .line 610
    iget-object v7, v7, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    iget-object v8, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    iget v8, v8, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v5, v7, v10, v8}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    .line 612
    :cond_6
    invoke-virtual {v5, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 613
    iget-object v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->firstMethod:Lbsh/org/objectweb/asm/CodeWriter;

    .line 614
    :goto_2
    if-eqz v3, :cond_7

    .line 615
    invoke-virtual {v3, v5}, Lbsh/org/objectweb/asm/CodeWriter;->put(Lbsh/org/objectweb/asm/ByteVector;)V

    .line 616
    iget-object v3, v3, Lbsh/org/objectweb/asm/CodeWriter;->next:Lbsh/org/objectweb/asm/CodeWriter;

    goto :goto_2

    .line 618
    :cond_7
    invoke-virtual {v5, v4}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 619
    iget-object v7, p0, Lbsh/org/objectweb/asm/ClassWriter;->sourceFile:Lbsh/org/objectweb/asm/Item;

    if-eqz v7, :cond_8

    .line 620
    const-string v7, "SourceFile"

    invoke-virtual {p0, v7}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v7

    iget-short v7, v7, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v5, v7}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v7

    invoke-virtual {v7, v1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v7

    iget-object v8, p0, Lbsh/org/objectweb/asm/ClassWriter;->sourceFile:Lbsh/org/objectweb/asm/Item;

    iget-short v8, v8, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v7, v8}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 622
    :cond_8
    iget v7, p0, Lbsh/org/objectweb/asm/ClassWriter;->access:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_9

    .line 623
    const-string v6, "Deprecated"

    invoke-virtual {p0, v6}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v6

    iget-short v6, v6, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v5, v6}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v6

    invoke-virtual {v6, v10}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 625
    :cond_9
    iget-object v6, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v6, :cond_a

    .line 626
    const-string v6, "InnerClasses"

    invoke-virtual {p0, v6}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v6

    iget-short v6, v6, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v5, v6}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 627
    iget-object v6, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    iget v6, v6, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v6, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClassesCount:I

    invoke-virtual {v1, v6}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 628
    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    iget-object v6, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    iget v6, v6, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v5, v1, v10, v6}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    .line 630
    :cond_a
    iget-object v1, v5, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    return-object v1
.end method

.method public visit(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "superName"    # Ljava/lang/String;
    .param p4, "interfaces"    # [Ljava/lang/String;
    .param p5, "sourceFile"    # Ljava/lang/String;

    .line 477
    iput p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->access:I

    .line 478
    invoke-virtual {p0, p2}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    iput v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->name:I

    .line 479
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    :goto_0
    iput v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->superName:I

    .line 480
    if-eqz p4, :cond_1

    array-length v0, p4

    if-lez v0, :cond_1

    .line 481
    array-length v0, p4

    iput v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->interfaceCount:I

    .line 482
    new-array v0, v0, [I

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->interfaces:[I

    .line 483
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->interfaceCount:I

    if-ge v0, v1, :cond_1

    .line 484
    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->interfaces:[I

    aget-object v2, p4, v0

    invoke-virtual {p0, v2}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    aput v2, v1, v0

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 487
    .end local v0    # "i":I
    :cond_1
    if-eqz p5, :cond_2

    .line 488
    const-string v0, "SourceFile"

    invoke-virtual {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    .line 489
    invoke-virtual {p0, p5}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->sourceFile:Lbsh/org/objectweb/asm/Item;

    .line 491
    :cond_2
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    .line 492
    const-string v0, "Deprecated"

    invoke-virtual {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    .line 494
    :cond_3
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 559
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;

    .line 519
    iget v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->fieldCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->fieldCount:I

    .line 520
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    .line 523
    :cond_0
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {p0, p2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {p0, p3}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "attributeCount":I
    if-eqz p4, :cond_1

    .line 526
    add-int/lit8 v0, v0, 0x1

    .line 528
    :cond_1
    const/high16 v1, 0x10000

    and-int v2, p1, v1

    if-eqz v2, :cond_2

    .line 529
    add-int/lit8 v0, v0, 0x1

    .line 531
    :cond_2
    const/high16 v2, 0x20000

    and-int v3, p1, v2

    if-eqz v3, :cond_3

    .line 532
    add-int/lit8 v0, v0, 0x1

    .line 534
    :cond_3
    iget-object v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v3, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 535
    if-eqz p4, :cond_4

    .line 536
    iget-object v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    const-string v4, "ConstantValue"

    invoke-virtual {p0, v4}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v4

    iget-short v4, v4, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v3, v4}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 537
    iget-object v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v3

    invoke-virtual {p0, p4}, Lbsh/org/objectweb/asm/ClassWriter;->newCst(Ljava/lang/Object;)Lbsh/org/objectweb/asm/Item;

    move-result-object v4

    iget-short v4, v4, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v3, v4}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 539
    :cond_4
    and-int/2addr v1, p1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 540
    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    const-string v4, "Synthetic"

    invoke-virtual {p0, v4}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v4

    iget-short v4, v4, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v1, v4}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 542
    :cond_5
    and-int v1, p1, v2

    if-eqz v1, :cond_6

    .line 543
    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    const-string v2, "Deprecated"

    invoke-virtual {p0, v2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 545
    :cond_6
    return-void
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 502
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    .line 503
    const-string v0, "InnerClasses"

    invoke-virtual {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    .line 504
    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    .line 506
    :cond_0
    iget v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClassesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClassesCount:I

    .line 507
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    :goto_0
    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 508
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    if-nez p2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    :goto_1
    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 509
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p3}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    :goto_2
    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 510
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p4}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 511
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbsh/org/objectweb/asm/CodeVisitor;
    .locals 2
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "exceptions"    # [Ljava/lang/String;

    .line 553
    new-instance v0, Lbsh/org/objectweb/asm/CodeWriter;

    iget-boolean v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->computeMaxs:Z

    invoke-direct {v0, p0, v1}, Lbsh/org/objectweb/asm/CodeWriter;-><init>(Lbsh/org/objectweb/asm/ClassWriter;Z)V

    .line 554
    .local v0, "cw":Lbsh/org/objectweb/asm/CodeWriter;
    invoke-virtual {v0, p1, p2, p3, p4}, Lbsh/org/objectweb/asm/CodeWriter;->init(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 555
    return-object v0
.end method
