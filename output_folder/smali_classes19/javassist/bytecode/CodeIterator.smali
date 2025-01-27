.class public Ljavassist/bytecode/CodeIterator;
.super Ljava/lang/Object;
.source "CodeIterator.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/CodeIterator$Lookup;,
        Ljavassist/bytecode/CodeIterator$Table;,
        Ljavassist/bytecode/CodeIterator$Switcher;,
        Ljavassist/bytecode/CodeIterator$Jump32;,
        Ljavassist/bytecode/CodeIterator$If16;,
        Ljavassist/bytecode/CodeIterator$Jump16;,
        Ljavassist/bytecode/CodeIterator$Branch16;,
        Ljavassist/bytecode/CodeIterator$LdcW;,
        Ljavassist/bytecode/CodeIterator$Branch;,
        Ljavassist/bytecode/CodeIterator$Pointers;,
        Ljavassist/bytecode/CodeIterator$AlignmentException;,
        Ljavassist/bytecode/CodeIterator$Gap;
    }
.end annotation


# static fields
.field private static final opcodeLength:[I


# instance fields
.field protected bytecode:[B

.field protected codeAttr:Ljavassist/bytecode/CodeAttribute;

.field protected currentPos:I

.field protected endPos:I

.field protected mark:I

.field protected mark2:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 765
    const/16 v0, 0xca

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljavassist/bytecode/CodeIterator;->opcodeLength:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x3
        0x2
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x5
        0x5
        0x3
        0x2
        0x3
        0x1
        0x1
        0x3
        0x3
        0x1
        0x1
        0x0
        0x4
        0x3
        0x3
        0x5
        0x5
    .end array-data
.end method

.method protected constructor <init>(Ljavassist/bytecode/CodeAttribute;)V
    .locals 1
    .param p1, "ca"    # Ljavassist/bytecode/CodeAttribute;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    .line 59
    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->getCode()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    .line 60
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->begin()V

    .line 61
    return-void
.end method

.method private static addLdcW(Ljavassist/bytecode/CodeAttribute$LdcEntry;Ljava/util/List;)V
    .locals 5
    .param p0, "ldcs"    # Ljavassist/bytecode/CodeAttribute$LdcEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/CodeAttribute$LdcEntry;",
            "Ljava/util/List<",
            "Ljavassist/bytecode/CodeIterator$Branch;",
            ">;)V"
        }
    .end annotation

    .line 1120
    .local p1, "jumps":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/CodeIterator$Branch;>;"
    iget v0, p0, Ljavassist/bytecode/CodeAttribute$LdcEntry;->where:I

    .line 1121
    .local v0, "where":I
    new-instance v1, Ljavassist/bytecode/CodeIterator$LdcW;

    iget v2, p0, Ljavassist/bytecode/CodeAttribute$LdcEntry;->index:I

    invoke-direct {v1, v0, v2}, Ljavassist/bytecode/CodeIterator$LdcW;-><init>(II)V

    .line 1122
    .local v1, "ldcw":Ljavassist/bytecode/CodeIterator$LdcW;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1123
    .local v2, "s":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1124
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/CodeIterator$Branch;

    iget v4, v4, Ljavassist/bytecode/CodeIterator$Branch;->orgPos:I

    if-ge v0, v4, :cond_0

    .line 1125
    invoke-interface {p1, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1126
    return-void

    .line 1123
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1129
    .end local v3    # "i":I
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    return-void
.end method

.method static changeLdcToLdcW([BLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;Ljavassist/bytecode/CodeAttribute$LdcEntry;)[B
    .locals 14
    .param p0, "code"    # [B
    .param p1, "etable"    # Ljavassist/bytecode/ExceptionTable;
    .param p2, "ca"    # Ljavassist/bytecode/CodeAttribute;
    .param p3, "ldcs"    # Ljavassist/bytecode/CodeAttribute$LdcEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1108
    move-object v6, p0

    new-instance v0, Ljavassist/bytecode/CodeIterator$Pointers;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v0

    move-object v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v7 .. v13}, Ljavassist/bytecode/CodeIterator$Pointers;-><init>(IIIILjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)V

    .line 1109
    .local v7, "pointers":Ljavassist/bytecode/CodeIterator$Pointers;
    array-length v0, v6

    invoke-static {p0, v0, v7}, Ljavassist/bytecode/CodeIterator;->makeJumpList([BILjavassist/bytecode/CodeIterator$Pointers;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v9, p3

    .line 1110
    .end local p3    # "ldcs":Ljavassist/bytecode/CodeAttribute$LdcEntry;
    .local v8, "jumps":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/CodeIterator$Branch;>;"
    .local v9, "ldcs":Ljavassist/bytecode/CodeAttribute$LdcEntry;
    :goto_0
    if-eqz v9, :cond_0

    .line 1111
    invoke-static {v9, v8}, Ljavassist/bytecode/CodeIterator;->addLdcW(Ljavassist/bytecode/CodeAttribute$LdcEntry;Ljava/util/List;)V

    .line 1112
    iget-object v9, v9, Ljavassist/bytecode/CodeAttribute$LdcEntry;->next:Ljavassist/bytecode/CodeAttribute$LdcEntry;

    goto :goto_0

    .line 1115
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, v8

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Ljavassist/bytecode/CodeIterator;->insertGap2w([BIIZLjava/util/List;Ljavassist/bytecode/CodeIterator$Pointers;)[B

    move-result-object v0

    .line 1116
    .local v0, "r":[B
    return-object v0
.end method

.method private static copyGapBytes([BI[BII)I
    .locals 2
    .param p0, "newcode"    # [B
    .param p1, "j"    # I
    .param p2, "code"    # [B
    .param p3, "i"    # I
    .param p4, "iEnd"    # I

    .line 1005
    sub-int v0, p4, p3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1007
    :pswitch_0
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "j":I
    .local v0, "j":I
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "i":I
    .local v1, "i":I
    aget-byte p3, p2, p3

    aput-byte p3, p0, p1

    move p1, v0

    move p3, v1

    .line 1009
    .end local v0    # "j":I
    .end local v1    # "i":I
    .restart local p1    # "j":I
    .restart local p3    # "i":I
    :pswitch_1
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "j":I
    .restart local v0    # "j":I
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "i":I
    .restart local v1    # "i":I
    aget-byte p3, p2, p3

    aput-byte p3, p0, p1

    move p1, v0

    move p3, v1

    .line 1011
    .end local v0    # "j":I
    .end local v1    # "i":I
    .restart local p1    # "j":I
    .restart local p3    # "i":I
    :pswitch_2
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "j":I
    .restart local v0    # "j":I
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "i":I
    .restart local v1    # "i":I
    aget-byte p3, p2, p3

    aput-byte p3, p0, p1

    move p1, v0

    move p3, v1

    .line 1013
    .end local v0    # "j":I
    .end local v1    # "i":I
    .restart local p1    # "j":I
    .restart local p3    # "i":I
    :pswitch_3
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "j":I
    .restart local v0    # "j":I
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "i":I
    .restart local v1    # "i":I
    aget-byte p3, p2, p3

    aput-byte p3, p0, p1

    move p1, v0

    move p3, v1

    .line 1017
    .end local v0    # "j":I
    .end local v1    # "i":I
    .restart local p1    # "j":I
    .restart local p3    # "i":I
    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private insert0(I[BZ)I
    .locals 6
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "exclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 496
    array-length v0, p2

    .line 497
    .local v0, "len":I
    if-gtz v0, :cond_0

    .line 498
    return p1

    .line 501
    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object v1

    iget p1, v1, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 503
    move v1, p1

    .line 504
    .local v1, "p":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 505
    iget-object v3, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .local v4, "p":I
    aget-byte v5, p2, v2

    aput-byte v5, v3, v1

    .line 504
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0

    .line 507
    .end local v2    # "j":I
    .end local v4    # "p":I
    .restart local v1    # "p":I
    :cond_1
    return p1
.end method

.method private static insertGap2([BIII[BZ)V
    .locals 10
    .param p0, "code"    # [B
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "endPos"    # I
    .param p4, "newcode"    # [B
    .param p5, "exclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;,
            Ljavassist/bytecode/CodeIterator$AlignmentException;
        }
    .end annotation

    .line 905
    const/4 v0, 0x0

    .line 906
    .local v0, "i":I
    const/4 v1, 0x0

    .line 907
    .local v1, "j":I
    :goto_0
    if-ge v0, p3, :cond_f

    .line 908
    if-ne v0, p1, :cond_0

    .line 909
    add-int v2, v1, p2

    .line 910
    .local v2, "j2":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 911
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "j":I
    .local v3, "j":I
    const/4 v4, 0x0

    aput-byte v4, p4, v1

    move v1, v3

    goto :goto_1

    .line 914
    .end local v2    # "j2":I
    .end local v3    # "j":I
    .restart local v1    # "j":I
    :cond_0
    invoke-static {p0, v0}, Ljavassist/bytecode/CodeIterator;->nextOpcode([BI)I

    move-result v2

    .line 915
    .local v2, "nextPos":I
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 917
    .local v3, "inst":I
    const/16 v4, 0x99

    if-gt v4, v3, :cond_1

    const/16 v4, 0xa8

    if-le v3, v4, :cond_d

    :cond_1
    const/16 v4, 0xc6

    if-eq v3, v4, :cond_d

    const/16 v4, 0xc7

    if-ne v3, v4, :cond_2

    goto/16 :goto_8

    .line 926
    :cond_2
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_c

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_3

    goto/16 :goto_7

    .line 934
    :cond_3
    const/16 v4, 0xaa

    if-ne v3, v4, :cond_7

    .line 935
    if-eq v0, v1, :cond_5

    and-int/lit8 v4, p2, 0x3

    if-nez v4, :cond_4

    goto :goto_2

    .line 936
    :cond_4
    new-instance v4, Ljavassist/bytecode/CodeIterator$AlignmentException;

    invoke-direct {v4}, Ljavassist/bytecode/CodeIterator$AlignmentException;-><init>()V

    throw v4

    .line 938
    :cond_5
    :goto_2
    and-int/lit8 v4, v0, -0x4

    add-int/lit8 v4, v4, 0x4

    .line 945
    .local v4, "i2":I
    invoke-static {p4, v1, p0, v0, v4}, Ljavassist/bytecode/CodeIterator;->copyGapBytes([BI[BII)I

    move-result v1

    .line 947
    invoke-static {p0, v4}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v5

    invoke-static {v0, v5, p1, p2, p5}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v5

    .line 949
    .local v5, "defaultbyte":I
    invoke-static {v5, p4, v1}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 950
    add-int/lit8 v6, v4, 0x4

    invoke-static {p0, v6}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v6

    .line 951
    .local v6, "lowbyte":I
    add-int/lit8 v7, v1, 0x4

    invoke-static {v6, p4, v7}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 952
    add-int/lit8 v7, v4, 0x8

    invoke-static {p0, v7}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v7

    .line 953
    .local v7, "highbyte":I
    add-int/lit8 v8, v1, 0x8

    invoke-static {v7, p4, v8}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 954
    add-int/lit8 v1, v1, 0xc

    .line 955
    add-int/lit8 v8, v4, 0xc

    .line 956
    .local v8, "i0":I
    sub-int v9, v7, v6

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v9, v8

    .line 957
    .end local v4    # "i2":I
    .local v9, "i2":I
    :goto_3
    if-ge v8, v9, :cond_6

    .line 958
    invoke-static {p0, v8}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v4

    invoke-static {v0, v4, p1, p2, p5}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v4

    .line 960
    .local v4, "offset":I
    invoke-static {v4, p4, v1}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 961
    add-int/lit8 v1, v1, 0x4

    .line 962
    nop

    .end local v4    # "offset":I
    add-int/lit8 v8, v8, 0x4

    .line 963
    goto :goto_3

    .line 964
    .end local v5    # "defaultbyte":I
    .end local v6    # "lowbyte":I
    .end local v7    # "highbyte":I
    .end local v8    # "i0":I
    .end local v9    # "i2":I
    :cond_6
    goto/16 :goto_9

    .line 965
    :cond_7
    const/16 v4, 0xab

    if-ne v3, v4, :cond_b

    .line 966
    if-eq v0, v1, :cond_9

    and-int/lit8 v4, p2, 0x3

    if-nez v4, :cond_8

    goto :goto_4

    .line 967
    :cond_8
    new-instance v4, Ljavassist/bytecode/CodeIterator$AlignmentException;

    invoke-direct {v4}, Ljavassist/bytecode/CodeIterator$AlignmentException;-><init>()V

    throw v4

    .line 969
    :cond_9
    :goto_4
    and-int/lit8 v4, v0, -0x4

    add-int/lit8 v4, v4, 0x4

    .line 977
    .local v4, "i2":I
    invoke-static {p4, v1, p0, v0, v4}, Ljavassist/bytecode/CodeIterator;->copyGapBytes([BI[BII)I

    move-result v1

    .line 979
    invoke-static {p0, v4}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v5

    invoke-static {v0, v5, p1, p2, p5}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v5

    .line 981
    .restart local v5    # "defaultbyte":I
    invoke-static {v5, p4, v1}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 982
    add-int/lit8 v6, v4, 0x4

    invoke-static {p0, v6}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v6

    .line 983
    .local v6, "npairs":I
    add-int/lit8 v7, v1, 0x4

    invoke-static {v6, p4, v7}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 984
    add-int/lit8 v1, v1, 0x8

    .line 985
    add-int/lit8 v7, v4, 0x8

    .line 986
    .local v7, "i0":I
    mul-int/lit8 v8, v6, 0x8

    add-int/2addr v8, v7

    .line 987
    .end local v4    # "i2":I
    .local v8, "i2":I
    :goto_5
    if-ge v7, v8, :cond_a

    .line 988
    invoke-static {p0, v7, p4, v1}, Ljavassist/bytecode/ByteArray;->copy32bit([BI[BI)V

    .line 989
    add-int/lit8 v4, v7, 0x4

    .line 990
    invoke-static {p0, v4}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v4

    .line 989
    invoke-static {v0, v4, p1, p2, p5}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v4

    .line 992
    .local v4, "offset":I
    add-int/lit8 v9, v1, 0x4

    invoke-static {v4, p4, v9}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 993
    add-int/lit8 v1, v1, 0x8

    .line 994
    nop

    .end local v4    # "offset":I
    add-int/lit8 v7, v7, 0x8

    .line 995
    goto :goto_5

    .line 996
    .end local v5    # "defaultbyte":I
    .end local v6    # "npairs":I
    .end local v7    # "i0":I
    .end local v8    # "i2":I
    :cond_a
    goto :goto_9

    .line 998
    :cond_b
    :goto_6
    if-ge v0, v2, :cond_e

    .line 999
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "j":I
    .local v4, "j":I
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .local v5, "i":I
    aget-byte v0, p0, v0

    aput-byte v0, p4, v1

    move v1, v4

    move v0, v5

    goto :goto_6

    .line 928
    .end local v4    # "j":I
    .end local v5    # "i":I
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    :cond_c
    :goto_7
    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v4}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v4

    .line 929
    .local v4, "offset":I
    invoke-static {v0, v4, p1, p2, p5}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v4

    .line 930
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "j":I
    .local v5, "j":I
    aget-byte v6, p0, v0

    aput-byte v6, p4, v1

    .line 931
    invoke-static {v4, p4, v5}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 932
    nop

    .end local v4    # "offset":I
    add-int/lit8 v5, v5, 0x4

    .line 933
    move v1, v5

    goto :goto_9

    .line 920
    .end local v5    # "j":I
    .restart local v1    # "j":I
    :cond_d
    :goto_8
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 921
    .restart local v4    # "offset":I
    invoke-static {v0, v4, p1, p2, p5}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v4

    .line 922
    aget-byte v5, p0, v0

    aput-byte v5, p4, v1

    .line 923
    add-int/lit8 v5, v1, 0x1

    invoke-static {v4, p4, v5}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 924
    nop

    .end local v4    # "offset":I
    add-int/lit8 v1, v1, 0x3

    .line 925
    nop

    .line 907
    .end local v3    # "inst":I
    :cond_e
    :goto_9
    move v0, v2

    goto/16 :goto_0

    .line 1001
    .end local v2    # "nextPos":I
    :cond_f
    return-void
.end method

.method private static insertGap2w([BIIZLjava/util/List;Ljavassist/bytecode/CodeIterator$Pointers;)[B
    .locals 8
    .param p0, "code"    # [B
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "exclusive"    # Z
    .param p5, "ptrs"    # Ljavassist/bytecode/CodeIterator$Pointers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIZ",
            "Ljava/util/List<",
            "Ljavassist/bytecode/CodeIterator$Branch;",
            ">;",
            "Ljavassist/bytecode/CodeIterator$Pointers;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1174
    .local p4, "jumps":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/CodeIterator$Branch;>;"
    if-lez p2, :cond_0

    .line 1175
    invoke-virtual {p5, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Pointers;->shiftPc(IIZ)V

    .line 1176
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1177
    .local v1, "b":Ljavassist/bytecode/CodeIterator$Branch;
    invoke-virtual {v1, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Branch;->shift(IIZ)V

    .end local v1    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    goto :goto_0

    .line 1180
    :cond_0
    const/4 v0, 0x1

    .line 1182
    .local v0, "unstable":Z
    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1183
    const/4 v0, 0x0

    .line 1184
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1185
    .local v3, "b":Ljavassist/bytecode/CodeIterator$Branch;
    invoke-virtual {v3}, Ljavassist/bytecode/CodeIterator$Branch;->expanded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1186
    const/4 v0, 0x1

    .line 1187
    iget v4, v3, Ljavassist/bytecode/CodeIterator$Branch;->pos:I

    .line 1188
    .local v4, "p":I
    invoke-virtual {v3}, Ljavassist/bytecode/CodeIterator$Branch;->deltaSize()I

    move-result v5

    .line 1189
    .local v5, "delta":I
    invoke-virtual {p5, v4, v5, v1}, Ljavassist/bytecode/CodeIterator$Pointers;->shiftPc(IIZ)V

    .line 1190
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1191
    .local v7, "bb":Ljavassist/bytecode/CodeIterator$Branch;
    invoke-virtual {v7, v4, v5, v1}, Ljavassist/bytecode/CodeIterator$Branch;->shift(IIZ)V

    .end local v7    # "bb":Ljavassist/bytecode/CodeIterator$Branch;
    goto :goto_3

    .line 1193
    .end local v3    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    .end local v4    # "p":I
    .end local v5    # "delta":I
    :cond_1
    goto :goto_2

    :cond_2
    goto :goto_1

    .line 1196
    :cond_3
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1197
    .restart local v3    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    invoke-virtual {v3}, Ljavassist/bytecode/CodeIterator$Branch;->gapChanged()I

    move-result v4

    .line 1198
    .local v4, "diff":I
    if-lez v4, :cond_4

    .line 1199
    const/4 v0, 0x1

    .line 1200
    iget v5, v3, Ljavassist/bytecode/CodeIterator$Branch;->pos:I

    .line 1201
    .local v5, "p":I
    invoke-virtual {p5, v5, v4, v1}, Ljavassist/bytecode/CodeIterator$Pointers;->shiftPc(IIZ)V

    .line 1202
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1203
    .restart local v7    # "bb":Ljavassist/bytecode/CodeIterator$Branch;
    invoke-virtual {v7, v5, v4, v1}, Ljavassist/bytecode/CodeIterator$Branch;->shift(IIZ)V

    .end local v7    # "bb":Ljavassist/bytecode/CodeIterator$Branch;
    goto :goto_5

    .line 1205
    .end local v3    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    .end local v4    # "diff":I
    .end local v5    # "p":I
    :cond_4
    goto :goto_4

    .line 1206
    :cond_5
    if-nez v0, :cond_6

    .line 1208
    invoke-static {p0, p4, p1, p2}, Ljavassist/bytecode/CodeIterator;->makeExapndedCode([BLjava/util/List;II)[B

    move-result-object v1

    return-object v1

    .line 1206
    :cond_6
    goto :goto_1
.end method

.method static insertGapCore0([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B
    .locals 8
    .param p0, "code"    # [B
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "exclusive"    # Z
    .param p4, "etable"    # Ljavassist/bytecode/ExceptionTable;
    .param p5, "ca"    # Ljavassist/bytecode/CodeAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 847
    if-gtz p2, :cond_0

    .line 848
    return-object p0

    .line 851
    :cond_0
    :try_start_0
    invoke-static/range {p0 .. p5}, Ljavassist/bytecode/CodeIterator;->insertGapCore1([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B

    move-result-object v0
    :try_end_0
    .catch Ljavassist/bytecode/CodeIterator$AlignmentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 853
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Ljavassist/bytecode/CodeIterator$AlignmentException;
    add-int/lit8 v1, p2, 0x3

    and-int/lit8 v4, v1, -0x4

    move-object v2, p0

    move v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    :try_start_1
    invoke-static/range {v2 .. v7}, Ljavassist/bytecode/CodeIterator;->insertGapCore1([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B

    move-result-object v1
    :try_end_1
    .catch Ljavassist/bytecode/CodeIterator$AlignmentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 858
    :catch_1
    move-exception v1

    .line 859
    .local v1, "e2":Ljavassist/bytecode/CodeIterator$AlignmentException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "fatal error?"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private insertGapCore0w([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;Ljavassist/bytecode/CodeIterator$Gap;)[B
    .locals 17
    .param p1, "code"    # [B
    .param p2, "where"    # I
    .param p3, "gapLength"    # I
    .param p4, "exclusive"    # Z
    .param p5, "etable"    # Ljavassist/bytecode/ExceptionTable;
    .param p6, "ca"    # Ljavassist/bytecode/CodeAttribute;
    .param p7, "newWhere"    # Ljavassist/bytecode/CodeIterator$Gap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1149
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p7

    if-gtz v8, :cond_0

    .line 1150
    return-object v7

    .line 1152
    :cond_0
    new-instance v1, Ljavassist/bytecode/CodeIterator$Pointers;

    iget v11, v0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    iget v12, v0, Ljavassist/bytecode/CodeIterator;->mark:I

    iget v13, v0, Ljavassist/bytecode/CodeIterator;->mark2:I

    move-object v10, v1

    move/from16 v14, p2

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    invoke-direct/range {v10 .. v16}, Ljavassist/bytecode/CodeIterator$Pointers;-><init>(IIIILjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)V

    .line 1153
    .local v10, "pointers":Ljavassist/bytecode/CodeIterator$Pointers;
    array-length v1, v7

    invoke-static {v7, v1, v10}, Ljavassist/bytecode/CodeIterator;->makeJumpList([BILjavassist/bytecode/CodeIterator$Pointers;)Ljava/util/List;

    move-result-object v11

    .line 1154
    .local v11, "jumps":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/CodeIterator$Branch;>;"
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v11

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Ljavassist/bytecode/CodeIterator;->insertGap2w([BIIZLjava/util/List;Ljavassist/bytecode/CodeIterator$Pointers;)[B

    move-result-object v1

    .line 1155
    .local v1, "r":[B
    iget v2, v10, Ljavassist/bytecode/CodeIterator$Pointers;->cursor:I

    iput v2, v0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 1156
    iget v2, v10, Ljavassist/bytecode/CodeIterator$Pointers;->mark:I

    iput v2, v0, Ljavassist/bytecode/CodeIterator;->mark:I

    .line 1157
    iget v2, v10, Ljavassist/bytecode/CodeIterator$Pointers;->mark2:I

    iput v2, v0, Ljavassist/bytecode/CodeIterator;->mark2:I

    .line 1158
    iget v2, v10, Ljavassist/bytecode/CodeIterator$Pointers;->mark0:I

    .line 1159
    .local v2, "where2":I
    iget v3, v0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    if-ne v2, v3, :cond_1

    if-nez p4, :cond_1

    .line 1160
    add-int/2addr v3, v8

    iput v3, v0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 1162
    :cond_1
    if-eqz p4, :cond_2

    .line 1163
    sub-int/2addr v2, v8

    .line 1165
    :cond_2
    iput v2, v9, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 1166
    iput v8, v9, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    .line 1167
    return-object v1
.end method

.method private static insertGapCore1([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B
    .locals 8
    .param p0, "code"    # [B
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "exclusive"    # Z
    .param p4, "etable"    # Ljavassist/bytecode/ExceptionTable;
    .param p5, "ca"    # Ljavassist/bytecode/CodeAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;,
            Ljavassist/bytecode/CodeIterator$AlignmentException;
        }
    .end annotation

    .line 869
    array-length v6, p0

    .line 870
    .local v6, "codeLength":I
    add-int v0, v6, p2

    new-array v7, v0, [B

    .line 871
    .local v7, "newcode":[B
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v6

    move-object v4, v7

    move v5, p3

    invoke-static/range {v0 .. v5}, Ljavassist/bytecode/CodeIterator;->insertGap2([BIII[BZ)V

    .line 872
    invoke-virtual {p4, p1, p2, p3}, Ljavassist/bytecode/ExceptionTable;->shiftPc(IIZ)V

    .line 873
    nop

    .line 874
    const-string v0, "LineNumberTable"

    invoke-virtual {p5, v0}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/LineNumberAttribute;

    .line 875
    .local v0, "na":Ljavassist/bytecode/LineNumberAttribute;
    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/LineNumberAttribute;->shiftPc(IIZ)V

    .line 878
    :cond_0
    const-string v1, "LocalVariableTable"

    invoke-virtual {p5, v1}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/LocalVariableAttribute;

    .line 880
    .local v1, "va":Ljavassist/bytecode/LocalVariableAttribute;
    if-eqz v1, :cond_1

    .line 881
    invoke-virtual {v1, p1, p2, p3}, Ljavassist/bytecode/LocalVariableAttribute;->shiftPc(IIZ)V

    .line 883
    :cond_1
    nop

    .line 884
    const-string v2, "LocalVariableTypeTable"

    invoke-virtual {p5, v2}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/LocalVariableAttribute;

    .line 886
    .local v2, "vta":Ljavassist/bytecode/LocalVariableAttribute;
    if-eqz v2, :cond_2

    .line 887
    invoke-virtual {v2, p1, p2, p3}, Ljavassist/bytecode/LocalVariableAttribute;->shiftPc(IIZ)V

    .line 889
    :cond_2
    const-string v3, "StackMapTable"

    invoke-virtual {p5, v3}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/StackMapTable;

    .line 890
    .local v3, "smt":Ljavassist/bytecode/StackMapTable;
    if-eqz v3, :cond_3

    .line 891
    invoke-virtual {v3, p1, p2, p3}, Ljavassist/bytecode/StackMapTable;->shiftPc(IIZ)V

    .line 893
    :cond_3
    const-string v4, "StackMap"

    invoke-virtual {p5, v4}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/StackMap;

    .line 894
    .local v4, "sm":Ljavassist/bytecode/StackMap;
    if-eqz v4, :cond_4

    .line 895
    invoke-virtual {v4, p1, p2, p3}, Ljavassist/bytecode/StackMap;->shiftPc(IIZ)V

    .line 897
    :cond_4
    return-object v7
.end method

.method private static makeExapndedCode([BLjava/util/List;II)[B
    .locals 12
    .param p0, "code"    # [B
    .param p2, "where"    # I
    .param p3, "gapLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Ljavassist/bytecode/CodeIterator$Branch;",
            ">;II)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1276
    .local p1, "jumps":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/CodeIterator$Branch;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1277
    .local v0, "n":I
    array-length v1, p0

    add-int/2addr v1, p3

    .line 1278
    .local v1, "size":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1279
    .local v3, "b":Ljavassist/bytecode/CodeIterator$Branch;
    invoke-virtual {v3}, Ljavassist/bytecode/CodeIterator$Branch;->deltaSize()I

    move-result v4

    add-int/2addr v1, v4

    .end local v3    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    goto :goto_0

    .line 1281
    :cond_0
    new-array v2, v1, [B

    .line 1282
    .local v2, "newcode":[B
    const/4 v3, 0x0

    .local v3, "src":I
    const/4 v4, 0x0

    .local v4, "dest":I
    const/4 v5, 0x0

    .line 1283
    .local v5, "bindex":I
    array-length v6, p0

    .line 1286
    .local v6, "len":I
    const/4 v7, 0x0

    if-lez v0, :cond_1

    .line 1287
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1288
    .local v8, "b":Ljavassist/bytecode/CodeIterator$Branch;
    iget v9, v8, Ljavassist/bytecode/CodeIterator$Branch;->orgPos:I

    .local v9, "bpos":I
    goto :goto_1

    .line 1291
    .end local v8    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    .end local v9    # "bpos":I
    :cond_1
    const/4 v8, 0x0

    .line 1292
    .restart local v8    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    move v9, v6

    .line 1295
    .restart local v9    # "bpos":I
    :goto_1
    if-ge v3, v6, :cond_5

    .line 1296
    if-ne v3, p2, :cond_2

    .line 1297
    add-int v10, v4, p3

    .line 1298
    .local v10, "pos2":I
    :goto_2
    if-ge v4, v10, :cond_2

    .line 1299
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "dest":I
    .local v11, "dest":I
    aput-byte v7, v2, v4

    move v4, v11

    goto :goto_2

    .line 1302
    .end local v10    # "pos2":I
    .end local v11    # "dest":I
    .restart local v4    # "dest":I
    :cond_2
    if-eq v3, v9, :cond_3

    .line 1303
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "dest":I
    .local v10, "dest":I
    add-int/lit8 v11, v3, 0x1

    .end local v3    # "src":I
    .local v11, "src":I
    aget-byte v3, p0, v3

    aput-byte v3, v2, v4

    move v4, v10

    move v3, v11

    goto :goto_1

    .line 1305
    .end local v10    # "dest":I
    .end local v11    # "src":I
    .restart local v3    # "src":I
    .restart local v4    # "dest":I
    :cond_3
    invoke-virtual {v8, v3, p0, v4, v2}, Ljavassist/bytecode/CodeIterator$Branch;->write(I[BI[B)I

    move-result v10

    .line 1306
    .local v10, "s":I
    add-int/2addr v3, v10

    .line 1307
    invoke-virtual {v8}, Ljavassist/bytecode/CodeIterator$Branch;->deltaSize()I

    move-result v11

    add-int/2addr v11, v10

    add-int/2addr v4, v11

    .line 1308
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v0, :cond_4

    .line 1309
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    check-cast v8, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1310
    iget v9, v8, Ljavassist/bytecode/CodeIterator$Branch;->orgPos:I

    goto :goto_3

    .line 1313
    :cond_4
    const/4 v8, 0x0

    .line 1314
    move v9, v6

    .line 1316
    .end local v10    # "s":I
    :goto_3
    goto :goto_1

    .line 1319
    :cond_5
    return-object v2
.end method

.method private static makeJumpList([BILjavassist/bytecode/CodeIterator$Pointers;)Ljava/util/List;
    .locals 20
    .param p0, "code"    # [B
    .param p1, "endPos"    # I
    .param p2, "ptrs"    # Ljavassist/bytecode/CodeIterator$Pointers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljavassist/bytecode/CodeIterator$Pointers;",
            ")",
            "Ljava/util/List<",
            "Ljavassist/bytecode/CodeIterator$Branch;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1214
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    .local v1, "jumps":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/CodeIterator$Branch;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move/from16 v10, p1

    if-ge v2, v10, :cond_b

    .line 1217
    invoke-static {v0, v2}, Ljavassist/bytecode/CodeIterator;->nextOpcode([BI)I

    move-result v11

    .line 1218
    .local v11, "nextPos":I
    aget-byte v3, v0, v2

    and-int/lit16 v12, v3, 0xff

    .line 1220
    .local v12, "inst":I
    const/16 v3, 0x99

    const/16 v4, 0xa8

    if-gt v3, v12, :cond_0

    if-le v12, v4, :cond_7

    :cond_0
    const/16 v3, 0xc6

    if-eq v12, v3, :cond_7

    const/16 v3, 0xc7

    if-ne v12, v3, :cond_1

    goto/16 :goto_4

    .line 1232
    :cond_1
    const/16 v3, 0xc8

    if-eq v12, v3, :cond_6

    const/16 v3, 0xc9

    if-ne v12, v3, :cond_2

    goto/16 :goto_3

    .line 1237
    :cond_2
    const/16 v3, 0xaa

    if-ne v12, v3, :cond_4

    .line 1238
    and-int/lit8 v3, v2, -0x4

    add-int/lit8 v13, v3, 0x4

    .line 1239
    .local v13, "i2":I
    invoke-static {v0, v13}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v14

    .line 1240
    .local v14, "defaultbyte":I
    add-int/lit8 v3, v13, 0x4

    invoke-static {v0, v3}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v15

    .line 1241
    .local v15, "lowbyte":I
    add-int/lit8 v3, v13, 0x8

    invoke-static {v0, v3}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v16

    .line 1242
    .local v16, "highbyte":I
    add-int/lit8 v3, v13, 0xc

    .line 1243
    .local v3, "i0":I
    sub-int v4, v16, v15

    add-int/lit8 v9, v4, 0x1

    .line 1244
    .local v9, "size":I
    new-array v8, v9, [I

    .line 1245
    .local v8, "offsets":[I
    const/4 v4, 0x0

    move v7, v3

    .end local v3    # "i0":I
    .local v4, "j":I
    .local v7, "i0":I
    :goto_1
    if-ge v4, v9, :cond_3

    .line 1246
    invoke-static {v0, v7}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v3

    aput v3, v8, v4

    .line 1247
    add-int/lit8 v7, v7, 0x4

    .line 1245
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1250
    .end local v4    # "j":I
    :cond_3
    new-instance v6, Ljavassist/bytecode/CodeIterator$Table;

    move-object v3, v6

    move v4, v2

    move v5, v14

    move-object v10, v6

    move v6, v15

    move/from16 v17, v7

    .end local v7    # "i0":I
    .local v17, "i0":I
    move/from16 v7, v16

    move-object/from16 v18, v8

    .end local v8    # "offsets":[I
    .local v18, "offsets":[I
    move/from16 v19, v9

    .end local v9    # "size":I
    .local v19, "size":I
    move-object/from16 v9, p2

    invoke-direct/range {v3 .. v9}, Ljavassist/bytecode/CodeIterator$Table;-><init>(IIII[ILjavassist/bytecode/CodeIterator$Pointers;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    .end local v13    # "i2":I
    .end local v14    # "defaultbyte":I
    .end local v15    # "lowbyte":I
    .end local v16    # "highbyte":I
    .end local v17    # "i0":I
    .end local v18    # "offsets":[I
    .end local v19    # "size":I
    goto/16 :goto_7

    .line 1252
    :cond_4
    const/16 v3, 0xab

    if-ne v12, v3, :cond_a

    .line 1253
    and-int/lit8 v3, v2, -0x4

    add-int/lit8 v9, v3, 0x4

    .line 1254
    .local v9, "i2":I
    invoke-static {v0, v9}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v10

    .line 1255
    .local v10, "defaultbyte":I
    add-int/lit8 v3, v9, 0x4

    invoke-static {v0, v3}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v13

    .line 1256
    .local v13, "npairs":I
    add-int/lit8 v3, v9, 0x8

    .line 1257
    .restart local v3    # "i0":I
    new-array v14, v13, [I

    .line 1258
    .local v14, "matches":[I
    new-array v15, v13, [I

    .line 1259
    .local v15, "offsets":[I
    const/4 v4, 0x0

    move v8, v3

    .end local v3    # "i0":I
    .restart local v4    # "j":I
    .local v8, "i0":I
    :goto_2
    if-ge v4, v13, :cond_5

    .line 1260
    invoke-static {v0, v8}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v3

    aput v3, v14, v4

    .line 1261
    add-int/lit8 v3, v8, 0x4

    invoke-static {v0, v3}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v3

    aput v3, v15, v4

    .line 1262
    add-int/lit8 v8, v8, 0x8

    .line 1259
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1265
    .end local v4    # "j":I
    :cond_5
    new-instance v7, Ljavassist/bytecode/CodeIterator$Lookup;

    move-object v3, v7

    move v4, v2

    move v5, v10

    move-object v6, v14

    move/from16 v16, v9

    move-object v9, v7

    .end local v9    # "i2":I
    .local v16, "i2":I
    move-object v7, v15

    move/from16 v17, v8

    .end local v8    # "i0":I
    .restart local v17    # "i0":I
    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Ljavassist/bytecode/CodeIterator$Lookup;-><init>(II[I[ILjavassist/bytecode/CodeIterator$Pointers;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1234
    .end local v10    # "defaultbyte":I
    .end local v13    # "npairs":I
    .end local v14    # "matches":[I
    .end local v15    # "offsets":[I
    .end local v16    # "i2":I
    .end local v17    # "i0":I
    :cond_6
    :goto_3
    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v3

    .line 1235
    .local v3, "offset":I
    new-instance v4, Ljavassist/bytecode/CodeIterator$Jump32;

    invoke-direct {v4, v2, v3}, Ljavassist/bytecode/CodeIterator$Jump32;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    .end local v3    # "offset":I
    goto :goto_7

    .line 1223
    :cond_7
    :goto_4
    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    .line 1225
    .restart local v3    # "offset":I
    const/16 v5, 0xa7

    if-eq v12, v5, :cond_9

    if-ne v12, v4, :cond_8

    goto :goto_5

    .line 1228
    :cond_8
    new-instance v4, Ljavassist/bytecode/CodeIterator$If16;

    invoke-direct {v4, v2, v3}, Ljavassist/bytecode/CodeIterator$If16;-><init>(II)V

    .local v4, "b":Ljavassist/bytecode/CodeIterator$Branch;
    goto :goto_6

    .line 1226
    .end local v4    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    :cond_9
    :goto_5
    new-instance v4, Ljavassist/bytecode/CodeIterator$Jump16;

    invoke-direct {v4, v2, v3}, Ljavassist/bytecode/CodeIterator$Jump16;-><init>(II)V

    .line 1230
    .restart local v4    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    :goto_6
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    .end local v3    # "offset":I
    .end local v4    # "b":Ljavassist/bytecode/CodeIterator$Branch;
    nop

    .line 1216
    .end local v12    # "inst":I
    :cond_a
    :goto_7
    move v2, v11

    goto/16 :goto_0

    .line 1269
    .end local v2    # "i":I
    .end local v11    # "nextPos":I
    :cond_b
    return-object v1
.end method

.method private static newOffset(IIIIZ)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "offset"    # I
    .param p2, "where"    # I
    .param p3, "gapLength"    # I
    .param p4, "exclusive"    # Z

    .line 1022
    add-int v0, p0, p1

    .line 1023
    .local v0, "target":I
    if-ge p0, p2, :cond_1

    .line 1024
    if-lt p2, v0, :cond_0

    if-eqz p4, :cond_4

    if-ne p2, v0, :cond_4

    .line 1025
    :cond_0
    add-int/2addr p1, p3

    goto :goto_0

    .line 1027
    :cond_1
    if-ne p0, p2, :cond_2

    .line 1030
    if-ge v0, p2, :cond_4

    .line 1031
    sub-int/2addr p1, p3

    goto :goto_0

    .line 1034
    :cond_2
    if-lt v0, p2, :cond_3

    if-nez p4, :cond_4

    if-ne p2, v0, :cond_4

    .line 1035
    :cond_3
    sub-int/2addr p1, p3

    .line 1037
    :cond_4
    :goto_0
    return p1
.end method

.method static nextOpcode([BI)I
    .locals 6
    .param p0, "code"    # [B
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 788
    :try_start_0
    aget-byte v0, p0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit16 v0, v0, 0xff

    .line 792
    .local v0, "opcode":I
    nop

    .line 795
    :try_start_1
    sget-object v1, Ljavassist/bytecode/CodeIterator;->opcodeLength:[I

    aget v1, v1, v0

    .line 796
    .local v1, "len":I
    if-lez v1, :cond_0

    .line 797
    add-int v2, p1, v1

    return v2

    .line 798
    :cond_0
    const/16 v2, 0xc4

    if-ne v0, v2, :cond_2

    .line 799
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    const/16 v3, -0x7c

    if-ne v2, v3, :cond_1

    .line 800
    add-int/lit8 v2, p1, 0x6

    return v2

    .line 802
    :cond_1
    add-int/lit8 v2, p1, 0x4

    return v2

    .line 803
    :cond_2
    and-int/lit8 v2, p1, -0x4

    add-int/lit8 v2, v2, 0x8

    .line 804
    .local v2, "index2":I
    const/16 v3, 0xab

    if-ne v0, v3, :cond_3

    .line 805
    invoke-static {p0, v2}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v3

    .line 806
    .local v3, "npairs":I
    mul-int/lit8 v4, v3, 0x8

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x4

    return v4

    .line 808
    .end local v3    # "npairs":I
    :cond_3
    const/16 v3, 0xaa

    if-ne v0, v3, :cond_4

    .line 809
    invoke-static {p0, v2}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v3

    .line 810
    .local v3, "low":I
    add-int/lit8 v4, v2, 0x4

    invoke-static {p0, v4}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 811
    .local v4, "high":I
    sub-int v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x8

    return v5

    .line 815
    .end local v1    # "len":I
    .end local v2    # "index2":I
    .end local v3    # "low":I
    .end local v4    # "high":I
    :cond_4
    goto :goto_0

    .line 814
    :catch_0
    move-exception v1

    .line 818
    :goto_0
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    invoke-direct {v1, v0}, Ljavassist/bytecode/BadBytecode;-><init>(I)V

    throw v1

    .line 790
    .end local v0    # "opcode":I
    :catch_1
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    const-string v2, "invalid opcode address"

    invoke-direct {v1, v2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private skipSuperConstructor0(I)I
    .locals 9
    .param p1, "skipThis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->begin()V

    .line 315
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 316
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    iget-object v1, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getDeclaringClass()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "thisClassName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 318
    .local v2, "nested":I
    :goto_0
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 319
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v3

    .line 320
    .local v3, "index":I
    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v4

    .line 321
    .local v4, "c":I
    const/16 v5, 0xbb

    if-ne v4, v5, :cond_0

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 323
    :cond_0
    const/16 v5, 0xb7

    if-ne v4, v5, :cond_3

    .line 324
    iget-object v5, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    add-int/lit8 v6, v3, 0x1

    invoke-static {v5, v6}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v5

    .line 325
    .local v5, "mref":I
    invoke-virtual {v0, v5}, Ljavassist/bytecode/ConstPool;->getMethodrefName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "<init>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 326
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_3

    .line 327
    if-gez p1, :cond_1

    .line 328
    return v3

    .line 330
    :cond_1
    invoke-virtual {v0, v5}, Ljavassist/bytecode/ConstPool;->getMethodrefClassName(I)Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, "cname":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-lez p1, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-ne v7, v8, :cond_4

    .line 332
    return v3

    .line 337
    .end local v3    # "index":I
    .end local v4    # "c":I
    .end local v5    # "mref":I
    .end local v6    # "cname":Ljava/lang/String;
    :cond_3
    :goto_2
    goto :goto_0

    .line 339
    :cond_4
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->begin()V

    .line 340
    const/4 v3, -0x1

    return v3
.end method


# virtual methods
.method public append([B)I
    .locals 6
    .param p1, "code"    # [B

    .line 715
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v0

    .line 716
    .local v0, "size":I
    array-length v1, p1

    .line 717
    .local v1, "len":I
    if-gtz v1, :cond_0

    .line 718
    return v0

    .line 720
    :cond_0
    invoke-virtual {p0, v1}, Ljavassist/bytecode/CodeIterator;->appendGap(I)V

    .line 721
    iget-object v2, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    .line 722
    .local v2, "dest":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 723
    add-int v4, v3, v0

    aget-byte v5, p1, v3

    aput-byte v5, v2, v4

    .line 722
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 725
    .end local v3    # "i":I
    :cond_1
    return v0
.end method

.method public append(Ljavassist/bytecode/ExceptionTable;I)V
    .locals 2
    .param p1, "et"    # Ljavassist/bytecode/ExceptionTable;
    .param p2, "offset"    # I

    .line 759
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v0

    .line 760
    .local v0, "table":Ljavassist/bytecode/ExceptionTable;
    invoke-virtual {v0}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Ljavassist/bytecode/ExceptionTable;->add(ILjavassist/bytecode/ExceptionTable;I)V

    .line 761
    return-void
.end method

.method public appendGap(I)V
    .locals 5
    .param p1, "gapLength"    # I

    .line 734
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    .line 735
    .local v0, "code":[B
    array-length v1, v0

    .line 736
    .local v1, "codeLength":I
    add-int v2, v1, p1

    new-array v2, v2, [B

    .line 739
    .local v2, "newcode":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 740
    aget-byte v4, v0, v3

    aput-byte v4, v2, v3

    .line 739
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 742
    :cond_0
    move v3, v1

    :goto_1
    add-int v4, v1, p1

    if-ge v3, v4, :cond_1

    .line 743
    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 742
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 745
    :cond_1
    iget-object v4, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v4, v2}, Ljavassist/bytecode/CodeAttribute;->setCode([B)V

    .line 746
    iput-object v2, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    .line 747
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v4

    iput v4, p0, Ljavassist/bytecode/CodeIterator;->endPos:I

    .line 748
    return-void
.end method

.method public begin()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/CodeIterator;->mark2:I

    iput v0, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    iput v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 68
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/CodeIterator;->endPos:I

    .line 69
    return-void
.end method

.method public byteAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 152
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public get()Ljavassist/bytecode/CodeAttribute;
    .locals 1

    .line 139
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    return-object v0
.end method

.method public getCodeLength()I
    .locals 1

    .line 146
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    array-length v0, v0

    return v0
.end method

.method public getMark()I
    .locals 1

    .line 123
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    return v0
.end method

.method public getMark2()I
    .locals 1

    .line 133
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->mark2:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 215
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    iget v1, p0, Ljavassist/bytecode/CodeIterator;->endPos:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public insert([B)I
    .locals 2
    .param p1, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 364
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    move-result v0

    return v0
.end method

.method public insert(I[B)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    .line 390
    return-void
.end method

.method public insert(Ljavassist/bytecode/ExceptionTable;I)V
    .locals 2
    .param p1, "et"    # Ljavassist/bytecode/ExceptionTable;
    .param p2, "offset"    # I

    .line 705
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Ljavassist/bytecode/ExceptionTable;->add(ILjavassist/bytecode/ExceptionTable;I)V

    .line 706
    return-void
.end method

.method public insertAt(I[B)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    move-result v0

    return v0
.end method

.method public insertEx([B)I
    .locals 2
    .param p1, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 437
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    move-result v0

    return v0
.end method

.method public insertEx(I[B)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 462
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    .line 463
    return-void
.end method

.method public insertExAt(I[B)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 486
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    move-result v0

    return v0
.end method

.method public insertExGap(I)I
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 565
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object v0

    iget v0, v0, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    return v0
.end method

.method public insertExGap(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 585
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object v0

    iget v0, v0, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    return v0
.end method

.method public insertGap(I)I
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 526
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object v0

    iget v0, v0, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    return v0
.end method

.method public insertGap(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object v0

    iget v0, v0, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    return v0
.end method

.method public insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .param p3, "exclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 644
    new-instance v0, Ljavassist/bytecode/CodeIterator$Gap;

    invoke-direct {v0}, Ljavassist/bytecode/CodeIterator$Gap;-><init>()V

    .line 645
    .local v0, "gap":Ljavassist/bytecode/CodeIterator$Gap;
    if-gtz p2, :cond_0

    .line 646
    iput p1, v0, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 647
    const/4 v1, 0x0

    iput v1, v0, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    .line 648
    return-object v0

    .line 653
    :cond_0
    iget-object v2, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    array-length v1, v2

    add-int/2addr v1, p2

    const/16 v3, 0x7fff

    if-le v1, v3, :cond_1

    .line 655
    nop

    .line 656
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v6

    iget-object v7, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    .line 655
    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Ljavassist/bytecode/CodeIterator;->insertGapCore0w([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;Ljavassist/bytecode/CodeIterator$Gap;)[B

    move-result-object v1

    .line 657
    .local v1, "c":[B
    iget p1, v0, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 658
    move v2, p2

    .local v2, "length2":I
    goto :goto_0

    .line 661
    .end local v1    # "c":[B
    .end local v2    # "length2":I
    :cond_1
    iget v1, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 662
    .local v1, "cur":I
    nop

    .line 663
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v6

    iget-object v7, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    .line 662
    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v2 .. v7}, Ljavassist/bytecode/CodeIterator;->insertGapCore0([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B

    move-result-object v2

    .line 665
    .local v2, "c":[B
    array-length v3, v2

    iget-object v4, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    array-length v4, v4

    sub-int/2addr v3, v4

    .line 666
    .local v3, "length2":I
    iput p1, v0, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 667
    iput v3, v0, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    .line 668
    if-lt v1, p1, :cond_2

    .line 669
    add-int v4, v1, v3

    iput v4, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 671
    :cond_2
    iget v4, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    if-gt v4, p1, :cond_3

    if-ne v4, p1, :cond_4

    if-eqz p3, :cond_4

    .line 672
    :cond_3
    add-int/2addr v4, v3

    iput v4, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    .line 674
    :cond_4
    iget v4, p0, Ljavassist/bytecode/CodeIterator;->mark2:I

    if-gt v4, p1, :cond_5

    if-ne v4, p1, :cond_6

    if-eqz p3, :cond_6

    .line 675
    :cond_5
    add-int/2addr v4, v3

    iput v4, p0, Ljavassist/bytecode/CodeIterator;->mark2:I

    .line 678
    .end local v1    # "cur":I
    :cond_6
    move-object v1, v2

    move v2, v3

    .end local v3    # "length2":I
    .local v1, "c":[B
    .local v2, "length2":I
    :goto_0
    iget-object v3, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v3, v1}, Ljavassist/bytecode/CodeAttribute;->setCode([B)V

    .line 679
    iput-object v1, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    .line 680
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v3

    iput v3, p0, Ljavassist/bytecode/CodeIterator;->endPos:I

    .line 681
    invoke-virtual {p0, p1, v2}, Ljavassist/bytecode/CodeIterator;->updateCursors(II)V

    .line 682
    return-object v0
.end method

.method public lookAhead()I
    .locals 1

    .line 242
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    return v0
.end method

.method public move(I)V
    .locals 0
    .param p1, "index"    # I

    .line 84
    iput p1, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 85
    return-void
.end method

.method public next()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 228
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 229
    .local v0, "pos":I
    iget-object v1, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {v1, v0}, Ljavassist/bytecode/CodeIterator;->nextOpcode([BI)I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 230
    return v0
.end method

.method public s16bitAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 177
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readS16bit([BI)I

    move-result v0

    return v0
.end method

.method public s32bitAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 191
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v0

    return v0
.end method

.method public setMark(I)V
    .locals 0
    .param p1, "index"    # I

    .line 98
    iput p1, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    .line 99
    return-void
.end method

.method public setMark2(I)V
    .locals 0
    .param p1, "index"    # I

    .line 112
    iput p1, p0, Ljavassist/bytecode/CodeIterator;->mark2:I

    .line 113
    return-void
.end method

.method public signedByteAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 157
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public skipConstructor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 264
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Ljavassist/bytecode/CodeIterator;->skipSuperConstructor0(I)I

    move-result v0

    return v0
.end method

.method public skipSuperConstructor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/bytecode/CodeIterator;->skipSuperConstructor0(I)I

    move-result v0

    return v0
.end method

.method public skipThisConstructor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 308
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljavassist/bytecode/CodeIterator;->skipSuperConstructor0(I)I

    move-result v0

    return v0
.end method

.method public u16bitAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 170
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method protected updateCursors(II)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "length"    # I

    .line 694
    return-void
.end method

.method public write([BI)V
    .locals 5
    .param p1, "code"    # [B
    .param p2, "index"    # I

    .line 207
    array-length v0, p1

    .line 208
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 209
    iget-object v2, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "index":I
    .local v3, "index":I
    aget-byte v4, p1, v1

    aput-byte v4, v2, p2

    .line 208
    add-int/lit8 v1, v1, 0x1

    move p2, v3

    goto :goto_0

    .line 210
    .end local v1    # "j":I
    .end local v3    # "index":I
    .restart local p2    # "index":I
    :cond_0
    return-void
.end method

.method public write16bit(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "index"    # I

    .line 184
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {p1, v0, p2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 185
    return-void
.end method

.method public write32bit(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "index"    # I

    .line 198
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {p1, v0, p2}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 199
    return-void
.end method

.method public writeByte(II)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "index"    # I

    .line 163
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    int-to-byte v1, p1

    aput-byte v1, v0, p2

    .line 164
    return-void
.end method
