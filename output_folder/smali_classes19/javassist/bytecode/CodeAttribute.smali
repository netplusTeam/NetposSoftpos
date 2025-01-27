.class public Ljavassist/bytecode/CodeAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "CodeAttribute.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/CodeAttribute$LdcEntry;,
        Ljavassist/bytecode/CodeAttribute$RuntimeCopyException;
    }
.end annotation


# static fields
.field public static final tag:Ljava/lang/String; = "Code"


# instance fields
.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private exceptions:Ljavassist/bytecode/ExceptionTable;

.field private maxLocals:I

.field private maxStack:I


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;II[BLjavassist/bytecode/ExceptionTable;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "stack"    # I
    .param p3, "locals"    # I
    .param p4, "code"    # [B
    .param p5, "etable"    # Ljavassist/bytecode/ExceptionTable;

    .line 61
    const-string v0, "Code"

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 62
    iput p2, p0, Ljavassist/bytecode/CodeAttribute;->maxStack:I

    .line 63
    iput p3, p0, Ljavassist/bytecode/CodeAttribute;->maxLocals:I

    .line 64
    iput-object p4, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    .line 65
    iput-object p5, p0, Ljavassist/bytecode/CodeAttribute;->exceptions:Ljavassist/bytecode/ExceptionTable;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    .line 67
    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 6
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "name_id"    # I
    .param p3, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [B

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;I[B)V

    .line 102
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 104
    .local v0, "attr_len":I
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/CodeAttribute;->maxStack:I

    .line 105
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/CodeAttribute;->maxLocals:I

    .line 107
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 108
    .local v1, "code_len":I
    new-array v2, v1, [B

    iput-object v2, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    .line 109
    iget-object v2, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    invoke-virtual {p3, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 111
    new-instance v2, Ljavassist/bytecode/ExceptionTable;

    invoke-direct {v2, p1, p3}, Ljavassist/bytecode/ExceptionTable;-><init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V

    iput-object v2, p0, Ljavassist/bytecode/CodeAttribute;->exceptions:Ljavassist/bytecode/ExceptionTable;

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    .line 114
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 115
    .local v2, "num":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 116
    iget-object v4, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    invoke-static {p1, p3}, Ljavassist/bytecode/AttributeInfo;->read(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;Ljava/util/Map;)V
    .locals 6
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "src"    # Ljavassist/bytecode/CodeAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "Ljavassist/bytecode/CodeAttribute;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 81
    .local p3, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Code"

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/CodeAttribute;->maxStack:I

    .line 84
    invoke-virtual {p2}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/CodeAttribute;->maxLocals:I

    .line 85
    invoke-virtual {p2}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljavassist/bytecode/ExceptionTable;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/ExceptionTable;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/CodeAttribute;->exceptions:Ljavassist/bytecode/ExceptionTable;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    .line 87
    invoke-virtual {p2}, Ljavassist/bytecode/CodeAttribute;->getAttributes()Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "src_attr":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/AttributeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 89
    .local v1, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 90
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/AttributeInfo;

    .line 91
    .local v3, "ai":Ljavassist/bytecode/AttributeInfo;
    iget-object v4, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    invoke-virtual {v3, p1, p3}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v3    # "ai":Ljavassist/bytecode/AttributeInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Ljavassist/bytecode/CodeAttribute;->exceptions:Ljavassist/bytecode/ExceptionTable;

    invoke-direct {p2, p1, p3, v2, p0}, Ljavassist/bytecode/CodeAttribute;->copyCode(Ljavassist/bytecode/ConstPool;Ljava/util/Map;Ljavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B

    move-result-object v2

    iput-object v2, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    .line 95
    return-void
.end method

.method private static copyCode([BIILjavassist/bytecode/ConstPool;[BLjavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/CodeAttribute$LdcEntry;
    .locals 13
    .param p0, "code"    # [B
    .param p1, "beginPos"    # I
    .param p2, "endPos"    # I
    .param p3, "srcCp"    # Ljavassist/bytecode/ConstPool;
    .param p4, "newcode"    # [B
    .param p5, "destCp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljavassist/bytecode/ConstPool;",
            "[B",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljavassist/bytecode/CodeAttribute$LdcEntry;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 371
    .local p6, "classnameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v6, p0

    const/4 v0, 0x0

    .line 373
    .local v0, "ldcEntry":Ljavassist/bytecode/CodeAttribute$LdcEntry;
    move v1, p1

    move-object v7, v0

    move v8, v1

    .end local v0    # "ldcEntry":Ljavassist/bytecode/CodeAttribute$LdcEntry;
    .local v7, "ldcEntry":Ljavassist/bytecode/CodeAttribute$LdcEntry;
    .local v8, "i":I
    :goto_0
    move v9, p2

    if-ge v8, v9, :cond_2

    .line 374
    invoke-static {p0, v8}, Ljavassist/bytecode/CodeIterator;->nextOpcode([BI)I

    move-result v10

    .line 375
    .local v10, "i2":I
    aget-byte v11, v6, v8

    .line 376
    .local v11, "c":B
    aput-byte v11, p4, v8

    .line 377
    and-int/lit16 v0, v11, 0xff

    const/4 v12, 0x0

    sparse-switch v0, :sswitch_data_0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    goto/16 :goto_1

    .line 422
    :sswitch_0
    add-int/lit8 v0, v8, 0x1

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Ljavassist/bytecode/CodeAttribute;->copyConstPoolInfo(I[BLjavassist/bytecode/ConstPool;[BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 424
    add-int/lit8 v0, v8, 0x3

    add-int/lit8 v1, v8, 0x3

    aget-byte v1, v6, v1

    aput-byte v1, p4, v0

    .line 425
    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    goto/16 :goto_2

    .line 416
    :sswitch_1
    add-int/lit8 v0, v8, 0x1

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Ljavassist/bytecode/CodeAttribute;->copyConstPoolInfo(I[BLjavassist/bytecode/ConstPool;[BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 418
    add-int/lit8 v0, v8, 0x3

    aput-byte v12, p4, v0

    .line 419
    add-int/lit8 v0, v8, 0x4

    aput-byte v12, p4, v0

    .line 420
    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    goto/16 :goto_2

    .line 410
    :sswitch_2
    add-int/lit8 v0, v8, 0x1

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Ljavassist/bytecode/CodeAttribute;->copyConstPoolInfo(I[BLjavassist/bytecode/ConstPool;[BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 412
    add-int/lit8 v0, v8, 0x3

    add-int/lit8 v1, v8, 0x3

    aget-byte v1, v6, v1

    aput-byte v1, p4, v0

    .line 413
    add-int/lit8 v0, v8, 0x4

    add-int/lit8 v1, v8, 0x4

    aget-byte v1, v6, v1

    aput-byte v1, p4, v0

    .line 414
    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    goto :goto_2

    .line 391
    :sswitch_3
    add-int/lit8 v0, v8, 0x1

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Ljavassist/bytecode/CodeAttribute;->copyConstPoolInfo(I[BLjavassist/bytecode/ConstPool;[BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V

    .line 393
    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    goto :goto_2

    .line 395
    :sswitch_4
    add-int/lit8 v0, v8, 0x1

    aget-byte v0, v6, v0

    and-int/lit16 v0, v0, 0xff

    .line 396
    .local v0, "index":I
    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v1, v0, v2, v3}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v0

    .line 397
    const/16 v4, 0x100

    if-ge v0, v4, :cond_0

    .line 398
    add-int/lit8 v4, v8, 0x1

    int-to-byte v5, v0

    aput-byte v5, p4, v4

    goto :goto_2

    .line 400
    :cond_0
    aput-byte v12, p4, v8

    .line 401
    add-int/lit8 v4, v8, 0x1

    aput-byte v12, p4, v4

    .line 402
    new-instance v4, Ljavassist/bytecode/CodeAttribute$LdcEntry;

    invoke-direct {v4}, Ljavassist/bytecode/CodeAttribute$LdcEntry;-><init>()V

    .line 403
    .local v4, "ldc":Ljavassist/bytecode/CodeAttribute$LdcEntry;
    iput v8, v4, Ljavassist/bytecode/CodeAttribute$LdcEntry;->where:I

    .line 404
    iput v0, v4, Ljavassist/bytecode/CodeAttribute$LdcEntry;->index:I

    .line 405
    iput-object v7, v4, Ljavassist/bytecode/CodeAttribute$LdcEntry;->next:Ljavassist/bytecode/CodeAttribute$LdcEntry;

    .line 406
    nop

    .line 408
    .end local v7    # "ldcEntry":Ljavassist/bytecode/CodeAttribute$LdcEntry;
    .local v4, "ldcEntry":Ljavassist/bytecode/CodeAttribute$LdcEntry;
    move-object v7, v4

    goto :goto_2

    .line 427
    .end local v0    # "index":I
    .end local v4    # "ldcEntry":Ljavassist/bytecode/CodeAttribute$LdcEntry;
    .restart local v7    # "ldcEntry":Ljavassist/bytecode/CodeAttribute$LdcEntry;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v10, :cond_1

    .line 428
    aget-byte v0, v6, v8

    aput-byte v0, p4, v8

    goto :goto_1

    .line 373
    .end local v11    # "c":B
    :cond_1
    :goto_2
    move v8, v10

    goto/16 :goto_0

    .end local v10    # "i2":I
    :cond_2
    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 434
    .end local v8    # "i":I
    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_4
        0x13 -> :sswitch_3
        0x14 -> :sswitch_3
        0xb2 -> :sswitch_3
        0xb3 -> :sswitch_3
        0xb4 -> :sswitch_3
        0xb5 -> :sswitch_3
        0xb6 -> :sswitch_3
        0xb7 -> :sswitch_3
        0xb8 -> :sswitch_3
        0xb9 -> :sswitch_2
        0xba -> :sswitch_1
        0xbb -> :sswitch_3
        0xbd -> :sswitch_3
        0xc0 -> :sswitch_3
        0xc1 -> :sswitch_3
        0xc5 -> :sswitch_0
    .end sparse-switch
.end method

.method private copyCode(Ljavassist/bytecode/ConstPool;Ljava/util/Map;Ljavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B
    .locals 9
    .param p1, "destCp"    # Ljavassist/bytecode/ConstPool;
    .param p3, "etable"    # Ljavassist/bytecode/ExceptionTable;
    .param p4, "destCa"    # Ljavassist/bytecode/CodeAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljavassist/bytecode/ExceptionTable;",
            "Ljavassist/bytecode/CodeAttribute;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 357
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->getCodeLength()I

    move-result v7

    .line 358
    .local v7, "len":I
    new-array v8, v7, [B

    .line 359
    .local v8, "newCode":[B
    iput-object v8, p4, Ljavassist/bytecode/CodeAttribute;->info:[B

    .line 360
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    const/4 v1, 0x0

    move v2, v7

    move-object v4, v8

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Ljavassist/bytecode/CodeAttribute;->copyCode([BIILjavassist/bytecode/ConstPool;[BLjavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/CodeAttribute$LdcEntry;

    move-result-object v0

    .line 362
    .local v0, "ldc":Ljavassist/bytecode/CodeAttribute$LdcEntry;
    invoke-static {v8, v0, p3, p4}, Ljavassist/bytecode/CodeAttribute$LdcEntry;->doit([BLjavassist/bytecode/CodeAttribute$LdcEntry;Ljavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B

    move-result-object v1

    return-object v1
.end method

.method private static copyConstPoolInfo(I[BLjavassist/bytecode/ConstPool;[BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V
    .locals 3
    .param p0, "i"    # I
    .param p1, "code"    # [B
    .param p2, "srcCp"    # Ljavassist/bytecode/ConstPool;
    .param p3, "newcode"    # [B
    .param p4, "destCp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljavassist/bytecode/ConstPool;",
            "[B",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 440
    .local p5, "classnameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p0, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 441
    .local v0, "index":I
    invoke-virtual {p2, v0, p4, p5}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v0

    .line 442
    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p3, p0

    .line 443
    add-int/lit8 v1, p0, 0x1

    int-to-byte v2, v0

    aput-byte v2, p3, v1

    .line 444
    return-void
.end method

.method private static shiftIndex(Ljavassist/bytecode/CodeIterator;II)V
    .locals 9
    .param p0, "ci"    # Ljavassist/bytecode/CodeIterator;
    .param p1, "lessThan"    # I
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 507
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v7

    .line 508
    .local v7, "index":I
    invoke-virtual {p0, v7}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v8

    .line 509
    .local v8, "opcode":I
    const/16 v0, 0x15

    if-ge v8, v0, :cond_0

    .line 510
    return-void

    .line 511
    :cond_0
    const/16 v0, 0x4f

    if-ge v8, v0, :cond_5

    .line 512
    const/16 v0, 0x1a

    if-ge v8, v0, :cond_1

    .line 514
    invoke-static {p0, v7, v8, p1, p2}, Ljavassist/bytecode/CodeAttribute;->shiftIndex8(Ljavassist/bytecode/CodeIterator;IIII)V

    goto/16 :goto_1

    .line 516
    :cond_1
    const/16 v0, 0x2e

    if-ge v8, v0, :cond_2

    .line 518
    const/16 v5, 0x1a

    const/16 v6, 0x15

    move-object v0, p0

    move v1, v7

    move v2, v8

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Ljavassist/bytecode/CodeAttribute;->shiftIndex0(Ljavassist/bytecode/CodeIterator;IIIIII)V

    goto/16 :goto_1

    .line 520
    :cond_2
    const/16 v0, 0x36

    if-ge v8, v0, :cond_3

    .line 521
    return-void

    .line 522
    :cond_3
    const/16 v0, 0x3b

    if-ge v8, v0, :cond_4

    .line 524
    invoke-static {p0, v7, v8, p1, p2}, Ljavassist/bytecode/CodeAttribute;->shiftIndex8(Ljavassist/bytecode/CodeIterator;IIII)V

    goto :goto_1

    .line 528
    :cond_4
    const/16 v5, 0x3b

    const/16 v6, 0x36

    move-object v0, p0

    move v1, v7

    move v2, v8

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Ljavassist/bytecode/CodeAttribute;->shiftIndex0(Ljavassist/bytecode/CodeIterator;IIIIII)V

    goto :goto_1

    .line 531
    :cond_5
    const/16 v0, 0xc4

    const/16 v1, 0x84

    if-ne v8, v1, :cond_8

    .line 532
    add-int/lit8 v2, v7, 0x1

    invoke-virtual {p0, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    .line 533
    .local v2, "var":I
    if-ge v2, p1, :cond_6

    .line 534
    return-void

    .line 536
    :cond_6
    add-int/2addr v2, p2

    .line 537
    const/16 v3, 0x100

    if-ge v2, v3, :cond_7

    .line 538
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p0, v2, v0}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    goto :goto_0

    .line 540
    :cond_7
    add-int/lit8 v3, v7, 0x2

    invoke-virtual {p0, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v3

    int-to-byte v3, v3

    .line 541
    .local v3, "plus":I
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Ljavassist/bytecode/CodeIterator;->insertExGap(I)I

    move-result v4

    .line 542
    .local v4, "pos":I
    add-int/lit8 v5, v4, -0x3

    invoke-virtual {p0, v0, v5}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 543
    add-int/lit8 v0, v4, -0x2

    invoke-virtual {p0, v1, v0}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 544
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v2, v0}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 545
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v3, v0}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 547
    .end local v2    # "var":I
    .end local v3    # "plus":I
    .end local v4    # "pos":I
    :goto_0
    goto :goto_1

    .line 548
    :cond_8
    const/16 v1, 0xa9

    if-ne v8, v1, :cond_9

    .line 549
    invoke-static {p0, v7, v8, p1, p2}, Ljavassist/bytecode/CodeAttribute;->shiftIndex8(Ljavassist/bytecode/CodeIterator;IIII)V

    goto :goto_1

    .line 550
    :cond_9
    if-ne v8, v0, :cond_b

    .line 551
    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p0, v0}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 552
    .local v0, "var":I
    if-ge v0, p1, :cond_a

    .line 553
    return-void

    .line 555
    :cond_a
    add-int/2addr v0, p2

    .line 556
    add-int/lit8 v1, v7, 0x2

    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 558
    .end local v0    # "var":I
    :cond_b
    :goto_1
    return-void
.end method

.method private static shiftIndex0(Ljavassist/bytecode/CodeIterator;IIIIII)V
    .locals 4
    .param p0, "ci"    # Ljavassist/bytecode/CodeIterator;
    .param p1, "index"    # I
    .param p2, "opcode"    # I
    .param p3, "lessThan"    # I
    .param p4, "delta"    # I
    .param p5, "opcode_i_0"    # I
    .param p6, "opcode_i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 584
    sub-int v0, p2, p5

    const/4 v1, 0x4

    rem-int/2addr v0, v1

    .line 585
    .local v0, "var":I
    if-ge v0, p3, :cond_0

    .line 586
    return-void

    .line 588
    :cond_0
    add-int/2addr v0, p4

    .line 589
    if-ge v0, v1, :cond_1

    .line 590
    add-int v1, p2, p4

    invoke-virtual {p0, v1, p1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    goto :goto_0

    .line 592
    :cond_1
    sub-int v2, p2, p5

    div-int/2addr v2, v1

    add-int p2, v2, p6

    .line 593
    const/16 v1, 0x100

    if-ge v0, v1, :cond_2

    .line 594
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/CodeIterator;->insertExGap(I)I

    move-result v1

    .line 595
    .local v1, "pos":I
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, p2, v2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 596
    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 597
    .end local v1    # "pos":I
    goto :goto_0

    .line 599
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljavassist/bytecode/CodeIterator;->insertExGap(I)I

    move-result v1

    .line 600
    .restart local v1    # "pos":I
    const/16 v2, 0xc4

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v2, v3}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 601
    invoke-virtual {p0, p2, v1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 602
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v0, v2}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 605
    .end local v1    # "pos":I
    :goto_0
    return-void
.end method

.method private static shiftIndex8(Ljavassist/bytecode/CodeIterator;IIII)V
    .locals 4
    .param p0, "ci"    # Ljavassist/bytecode/CodeIterator;
    .param p1, "index"    # I
    .param p2, "opcode"    # I
    .param p3, "lessThan"    # I
    .param p4, "delta"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 564
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    .line 565
    .local v0, "var":I
    if-ge v0, p3, :cond_0

    .line 566
    return-void

    .line 568
    :cond_0
    add-int/2addr v0, p4

    .line 569
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    .line 570
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    goto :goto_0

    .line 572
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljavassist/bytecode/CodeIterator;->insertExGap(I)I

    move-result v1

    .line 573
    .local v1, "pos":I
    const/16 v2, 0xc4

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p0, v2, v3}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 574
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, p2, v2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 575
    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 577
    .end local v1    # "pos":I
    :goto_0
    return-void
.end method


# virtual methods
.method public computeMaxStack()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 251
    new-instance v0, Ljavassist/bytecode/CodeAnalyzer;

    invoke-direct {v0, p0}, Ljavassist/bytecode/CodeAnalyzer;-><init>(Ljavassist/bytecode/CodeAttribute;)V

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAnalyzer;->computeMaxStack()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/CodeAttribute;->maxStack:I

    .line 252
    return v0
.end method

.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 3
    .param p1, "newCp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljavassist/bytecode/AttributeInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/CodeAttribute$RuntimeCopyException;
        }
    .end annotation

    .line 138
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Ljavassist/bytecode/CodeAttribute;

    invoke-direct {v0, p1, p0, p2}, Ljavassist/bytecode/CodeAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;Ljava/util/Map;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v1, Ljavassist/bytecode/CodeAttribute$RuntimeCopyException;

    const-string v2, "bad bytecode. fatal?"

    invoke-direct {v1, v2}, Ljavassist/bytecode/CodeAttribute$RuntimeCopyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get()[B
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CodeAttribute.get()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 318
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->lookup(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getCode()[B
    .locals 1

    .line 280
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    return-object v0
.end method

.method public getCodeLength()I
    .locals 1

    .line 273
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    array-length v0, v0

    return v0
.end method

.method public getDeclaringClass()Ljava/lang/String;
    .locals 2

    .line 225
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 226
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {v0}, Ljavassist/bytecode/ConstPool;->getClassName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getExceptionTable()Ljavassist/bytecode/ExceptionTable;
    .locals 1

    .line 298
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->exceptions:Ljavassist/bytecode/ExceptionTable;

    return-object v0
.end method

.method public getMaxLocals()I
    .locals 1

    .line 259
    iget v0, p0, Ljavassist/bytecode/CodeAttribute;->maxLocals:I

    return v0
.end method

.method public getMaxStack()I
    .locals 1

    .line 233
    iget v0, p0, Ljavassist/bytecode/CodeAttribute;->maxStack:I

    return v0
.end method

.method getRefClasses(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 217
    .local p1, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->getRefClasses(Ljava/util/List;Ljava/util/Map;)V

    .line 218
    return-void
.end method

.method public insertLocalVar(II)V
    .locals 2
    .param p1, "where"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    .line 493
    .local v0, "ci":Ljavassist/bytecode/CodeIterator;
    :goto_0
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-static {v0, p1, p2}, Ljavassist/bytecode/CodeAttribute;->shiftIndex(Ljavassist/bytecode/CodeIterator;II)V

    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 497
    return-void
.end method

.method public iterator()Ljavassist/bytecode/CodeIterator;
    .locals 1

    .line 292
    new-instance v0, Ljavassist/bytecode/CodeIterator;

    invoke-direct {v0, p0}, Ljavassist/bytecode/CodeIterator;-><init>(Ljavassist/bytecode/CodeAttribute;)V

    return-object v0
.end method

.method public length()I
    .locals 2

    .line 168
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x12

    iget-object v1, p0, Ljavassist/bytecode/CodeAttribute;->exceptions:Ljavassist/bytecode/ExceptionTable;

    invoke-virtual {v1}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    .line 169
    invoke-static {v1}, Ljavassist/bytecode/AttributeInfo;->getLength(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    return v0
.end method

.method renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .line 207
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method renameClass(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 212
    .local p1, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/util/Map;)V

    .line 213
    return-void
.end method

.method public set([B)V
    .locals 2
    .param p1, "newinfo"    # [B

    .line 202
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CodeAttribute.set()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttribute(Ljavassist/bytecode/StackMap;)V
    .locals 2
    .param p1, "sm"    # Ljavassist/bytecode/StackMap;

    .line 345
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    const-string v1, "StackMap"

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    .line 346
    if-eqz p1, :cond_0

    .line 347
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_0
    return-void
.end method

.method public setAttribute(Ljavassist/bytecode/StackMapTable;)V
    .locals 2
    .param p1, "smt"    # Ljavassist/bytecode/StackMapTable;

    .line 330
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    const-string v1, "StackMapTable"

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    .line 331
    if-eqz p1, :cond_0

    .line 332
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_0
    return-void
.end method

.method setCode([B)V
    .locals 0
    .param p1, "newinfo"    # [B

    .line 286
    invoke-super {p0, p1}, Ljavassist/bytecode/AttributeInfo;->set([B)V

    return-void
.end method

.method public setMaxLocals(I)V
    .locals 0
    .param p1, "value"    # I

    .line 266
    iput p1, p0, Ljavassist/bytecode/CodeAttribute;->maxLocals:I

    .line 267
    return-void
.end method

.method public setMaxStack(I)V
    .locals 0
    .param p1, "value"    # I

    .line 240
    iput p1, p0, Ljavassist/bytecode/CodeAttribute;->maxStack:I

    .line 241
    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget v0, p0, Ljavassist/bytecode/CodeAttribute;->name:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 175
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 176
    iget v0, p0, Ljavassist/bytecode/CodeAttribute;->maxStack:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 177
    iget v0, p0, Ljavassist/bytecode/CodeAttribute;->maxLocals:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 178
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 179
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 180
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->exceptions:Ljavassist/bytecode/ExceptionTable;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ExceptionTable;->write(Ljava/io/DataOutputStream;)V

    .line 181
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 182
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->writeAll(Ljava/util/List;Ljava/io/DataOutputStream;)V

    .line 183
    return-void
.end method
