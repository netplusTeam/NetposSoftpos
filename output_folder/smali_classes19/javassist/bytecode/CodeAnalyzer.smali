.class Ljavassist/bytecode/CodeAnalyzer;
.super Ljava/lang/Object;
.source "CodeAnalyzer.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# instance fields
.field private codeAttr:Ljavassist/bytecode/CodeAttribute;

.field private constPool:Ljavassist/bytecode/ConstPool;


# direct methods
.method public constructor <init>(Ljavassist/bytecode/CodeAttribute;)V
    .locals 1
    .param p1, "ca"    # Ljavassist/bytecode/CodeAttribute;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Ljavassist/bytecode/CodeAnalyzer;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    .line 28
    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/CodeAnalyzer;->constPool:Ljavassist/bytecode/ConstPool;

    .line 29
    return-void
.end method

.method private checkTarget(III[II)V
    .locals 4
    .param p1, "opIndex"    # I
    .param p2, "target"    # I
    .param p3, "codeLength"    # I
    .param p4, "stack"    # [I
    .param p5, "stackDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 194
    if-ltz p2, :cond_3

    if-le p3, p2, :cond_3

    .line 197
    aget v0, p4, p2

    .line 198
    .local v0, "d":I
    if-nez v0, :cond_0

    .line 199
    neg-int v1, p5

    aput v1, p4, p2

    goto :goto_0

    .line 200
    :cond_0
    if-eq v0, p5, :cond_2

    neg-int v1, p5

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 201
    :cond_1
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verification error ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_2
    :goto_0
    return-void

    .line 195
    .end local v0    # "d":I
    :cond_3
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad branch offset at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFieldSize(Ljavassist/bytecode/CodeIterator;I)I
    .locals 2
    .param p1, "ci"    # Ljavassist/bytecode/CodeIterator;
    .param p2, "index"    # I

    .line 264
    iget-object v0, p0, Ljavassist/bytecode/CodeAnalyzer;->constPool:Ljavassist/bytecode/ConstPool;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private initStack([ILjavassist/bytecode/CodeAttribute;)V
    .locals 5
    .param p1, "stack"    # [I
    .param p2, "ca"    # Ljavassist/bytecode/CodeAttribute;

    .line 63
    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, p1, v0

    .line 64
    invoke-virtual {p2}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v0

    .line 65
    .local v0, "et":Ljavassist/bytecode/ExceptionTable;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v1

    .line 67
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 68
    invoke-virtual {v0, v2}, Ljavassist/bytecode/ExceptionTable;->handlerPc(I)I

    move-result v3

    const/4 v4, -0x2

    aput v4, p1, v3

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private static isEnd(I)Z
    .locals 1
    .param p0, "opcode"    # I

    .line 206
    const/16 v0, 0xac

    if-gt v0, p0, :cond_0

    const/16 v0, 0xb1

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xbf

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processBranch(ILjavassist/bytecode/CodeIterator;II[II[I)Z
    .locals 17
    .param p1, "opcode"    # I
    .param p2, "ci"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "index"    # I
    .param p4, "codeLength"    # I
    .param p5, "stack"    # [I
    .param p6, "stackDepth"    # I
    .param p7, "jsrDepth"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 103
    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v8, p6

    const/4 v9, 0x0

    const/16 v2, 0x99

    if-gt v2, v0, :cond_0

    const/16 v2, 0xa6

    if-le v0, v2, :cond_a

    :cond_0
    const/16 v2, 0xc6

    if-eq v0, v2, :cond_a

    const/16 v2, 0xc7

    if-ne v0, v2, :cond_1

    goto/16 :goto_4

    .line 110
    :cond_1
    const-string v10, ","

    const/4 v11, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_5

    .line 116
    :sswitch_0
    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v2

    add-int v9, p3, v2

    .line 117
    .local v9, "target":I
    move-object/from16 v2, p0

    move/from16 v3, p3

    move v4, v9

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Ljavassist/bytecode/CodeAnalyzer;->checkTarget(III[II)V

    .line 118
    return v11

    .line 157
    .end local v9    # "target":I
    :sswitch_1
    and-int/lit8 v2, p3, -0x4

    add-int/lit8 v9, v2, 0x4

    .line 158
    .local v9, "index2":I
    invoke-virtual {v1, v9}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v2

    add-int v10, p3, v2

    .line 159
    .local v10, "target":I
    move-object/from16 v2, p0

    move/from16 v3, p3

    move v4, v10

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Ljavassist/bytecode/CodeAnalyzer;->checkTarget(III[II)V

    .line 160
    const/16 v2, 0xab

    if-ne v0, v2, :cond_3

    .line 161
    add-int/lit8 v2, v9, 0x4

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v12

    .line 162
    .local v12, "npairs":I
    add-int/lit8 v9, v9, 0xc

    .line 163
    const/4 v2, 0x0

    move/from16 v16, v9

    move v9, v2

    move v2, v10

    move/from16 v10, v16

    .local v2, "target":I
    .local v9, "i":I
    .local v10, "index2":I
    :goto_0
    if-ge v9, v12, :cond_2

    .line 164
    invoke-virtual {v1, v10}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v3

    add-int v13, p3, v3

    .line 165
    .end local v2    # "target":I
    .local v13, "target":I
    move-object/from16 v2, p0

    move/from16 v3, p3

    move v4, v13

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Ljavassist/bytecode/CodeAnalyzer;->checkTarget(III[II)V

    .line 167
    add-int/lit8 v10, v10, 0x8

    .line 163
    add-int/lit8 v9, v9, 0x1

    move v2, v13

    goto :goto_0

    .line 169
    .end local v9    # "i":I
    .end local v12    # "npairs":I
    .end local v13    # "target":I
    .restart local v2    # "target":I
    :cond_2
    goto :goto_2

    .line 171
    .end local v2    # "target":I
    .local v9, "index2":I
    .local v10, "target":I
    :cond_3
    add-int/lit8 v2, v9, 0x4

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v12

    .line 172
    .local v12, "low":I
    add-int/lit8 v2, v9, 0x8

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v13

    .line 173
    .local v13, "high":I
    sub-int v2, v13, v12

    add-int/lit8 v14, v2, 0x1

    .line 174
    .local v14, "n":I
    add-int/lit8 v9, v9, 0xc

    .line 175
    const/4 v2, 0x0

    move/from16 v16, v9

    move v9, v2

    move v2, v10

    move/from16 v10, v16

    .restart local v2    # "target":I
    .local v9, "i":I
    .local v10, "index2":I
    :goto_1
    if-ge v9, v14, :cond_4

    .line 176
    invoke-virtual {v1, v10}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v3

    add-int v15, p3, v3

    .line 177
    .end local v2    # "target":I
    .local v15, "target":I
    move-object/from16 v2, p0

    move/from16 v3, p3

    move v4, v15

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Ljavassist/bytecode/CodeAnalyzer;->checkTarget(III[II)V

    .line 179
    add-int/lit8 v10, v10, 0x4

    .line 175
    add-int/lit8 v9, v9, 0x1

    move v2, v15

    goto :goto_1

    .line 183
    .end local v9    # "i":I
    .end local v12    # "low":I
    .end local v13    # "high":I
    .end local v14    # "n":I
    .end local v15    # "target":I
    .restart local v2    # "target":I
    :cond_4
    :goto_2
    return v11

    .line 145
    .end local v2    # "target":I
    .end local v10    # "index2":I
    :sswitch_2
    aget v2, p7, v9

    if-gez v2, :cond_5

    .line 146
    add-int/lit8 v2, v8, 0x1

    aput v2, p7, v9

    .line 147
    return v9

    .line 149
    :cond_5
    add-int/lit8 v2, v8, 0x1

    aget v3, p7, v9

    if-ne v2, v3, :cond_6

    .line 150
    return v11

    .line 152
    :cond_6
    new-instance v2, Ljavassist/bytecode/BadBytecode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sorry, cannot compute this data flow due to RET: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p7, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :sswitch_3
    const/16 v2, 0xa8

    if-ne v0, v2, :cond_7

    .line 122
    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeIterator;->s16bitAt(I)I

    move-result v2

    add-int v2, p3, v2

    move v11, v2

    .restart local v2    # "target":I
    goto :goto_3

    .line 124
    .end local v2    # "target":I
    :cond_7
    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v2

    add-int v2, p3, v2

    move v11, v2

    .line 126
    .local v11, "target":I
    :goto_3
    move-object/from16 v2, p0

    move/from16 v3, p3

    move v4, v11

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Ljavassist/bytecode/CodeAnalyzer;->checkTarget(III[II)V

    .line 134
    aget v2, p7, v9

    if-gez v2, :cond_8

    .line 135
    aput v8, p7, v9

    .line 136
    return v9

    .line 138
    :cond_8
    aget v2, p7, v9

    if-ne v8, v2, :cond_9

    .line 139
    return v9

    .line 141
    :cond_9
    new-instance v2, Ljavassist/bytecode/BadBytecode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sorry, cannot compute this data flow due to JSR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p7, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    .end local v11    # "target":I
    :sswitch_4
    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeIterator;->s16bitAt(I)I

    move-result v2

    add-int v9, p3, v2

    .line 113
    .local v9, "target":I
    move-object/from16 v2, p0

    move/from16 v3, p3

    move v4, v9

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Ljavassist/bytecode/CodeAnalyzer;->checkTarget(III[II)V

    .line 114
    return v11

    .line 105
    .end local v9    # "target":I
    :cond_a
    :goto_4
    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeIterator;->s16bitAt(I)I

    move-result v2

    add-int v10, p3, v2

    .line 106
    .local v10, "target":I
    move-object/from16 v2, p0

    move/from16 v3, p3

    move v4, v10

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Ljavassist/bytecode/CodeAnalyzer;->checkTarget(III[II)V

    .line 107
    .end local v10    # "target":I
    nop

    .line 187
    :goto_5
    return v9

    :sswitch_data_0
    .sparse-switch
        0xa7 -> :sswitch_4
        0xa8 -> :sswitch_3
        0xa9 -> :sswitch_2
        0xaa -> :sswitch_1
        0xab -> :sswitch_1
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_3
    .end sparse-switch
.end method

.method private visitBytecode(Ljavassist/bytecode/CodeIterator;[II)V
    .locals 17
    .param p1, "ci"    # Ljavassist/bytecode/CodeIterator;
    .param p2, "stack"    # [I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 75
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v0, p3

    array-length v10, v9

    .line 76
    .local v10, "codeLength":I
    invoke-virtual {v8, v0}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 77
    aget v1, v9, v0

    neg-int v1, v1

    .line 78
    .local v1, "stackDepth":I
    const/4 v11, 0x1

    new-array v12, v11, [I

    .line 79
    .local v12, "jsrDepth":[I
    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v12, v2

    .line 80
    .end local p3    # "index":I
    .local v0, "index":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 81
    invoke-virtual/range {p1 .. p1}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v13

    .line 82
    .end local v0    # "index":I
    .local v13, "index":I
    aput v1, v9, v13

    .line 83
    invoke-virtual {v8, v13}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v14

    .line 84
    .local v14, "op":I
    move-object/from16 v15, p0

    invoke-direct {v15, v14, v8, v13, v1}, Ljavassist/bytecode/CodeAnalyzer;->visitInst(ILjavassist/bytecode/CodeIterator;II)I

    move-result v7

    .line 85
    .end local v1    # "stackDepth":I
    .local v7, "stackDepth":I
    if-lt v7, v11, :cond_4

    .line 88
    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, p1

    move v3, v13

    move v4, v10

    move-object/from16 v5, p2

    move v6, v7

    move/from16 v16, v7

    .end local v7    # "stackDepth":I
    .local v16, "stackDepth":I
    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Ljavassist/bytecode/CodeAnalyzer;->processBranch(ILjavassist/bytecode/CodeIterator;II[II[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    goto :goto_1

    .line 91
    :cond_0
    invoke-static {v14}, Ljavassist/bytecode/CodeAnalyzer;->isEnd(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    nop

    .line 97
    .end local v14    # "op":I
    :goto_1
    move v0, v13

    move/from16 v1, v16

    goto :goto_4

    .line 94
    .restart local v14    # "op":I
    :cond_1
    const/16 v0, 0xa8

    if-eq v14, v0, :cond_3

    const/16 v0, 0xc9

    if-ne v14, v0, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v1, v16

    goto :goto_3

    .line 95
    :cond_3
    :goto_2
    add-int/lit8 v7, v16, -0x1

    move v1, v7

    .line 96
    .end local v14    # "op":I
    .end local v16    # "stackDepth":I
    .restart local v1    # "stackDepth":I
    :goto_3
    move v0, v13

    goto :goto_0

    .line 86
    .end local v1    # "stackDepth":I
    .restart local v7    # "stackDepth":I
    .restart local v14    # "op":I
    :cond_4
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stack underflow at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    .end local v7    # "stackDepth":I
    .end local v13    # "index":I
    .end local v14    # "op":I
    .restart local v0    # "index":I
    .restart local v1    # "stackDepth":I
    :cond_5
    move-object/from16 v15, p0

    .line 97
    :goto_4
    return-void
.end method

.method private visitInst(ILjavassist/bytecode/CodeIterator;II)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "ci"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "index"    # I
    .param p4, "stack"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 216
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 251
    :pswitch_1
    add-int/lit8 v0, p3, 0x3

    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    add-int/2addr p4, v0

    .line 252
    goto/16 :goto_1

    .line 254
    :pswitch_2
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p1

    goto :goto_0

    .line 248
    :pswitch_3
    const/4 p4, 0x1

    .line 249
    goto/16 :goto_1

    .line 244
    :pswitch_4
    iget-object v0, p0, Ljavassist/bytecode/CodeAnalyzer;->constPool:Ljavassist/bytecode/ConstPool;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p2, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getInvokeDynamicType(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr p4, v1

    .line 246
    goto :goto_1

    .line 239
    .end local v0    # "desc":Ljava/lang/String;
    :pswitch_5
    iget-object v0, p0, Ljavassist/bytecode/CodeAnalyzer;->constPool:Ljavassist/bytecode/ConstPool;

    add-int/lit8 v1, p3, 0x1

    .line 240
    invoke-virtual {p2, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    .line 239
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefType(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .restart local v0    # "desc":Ljava/lang/String;
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr p4, v1

    .line 242
    goto :goto_1

    .line 235
    .end local v0    # "desc":Ljava/lang/String;
    :pswitch_6
    iget-object v0, p0, Ljavassist/bytecode/CodeAnalyzer;->constPool:Ljavassist/bytecode/ConstPool;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p2, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    .restart local v0    # "desc":Ljava/lang/String;
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr p4, v1

    .line 237
    goto :goto_1

    .line 231
    .end local v0    # "desc":Ljava/lang/String;
    :pswitch_7
    iget-object v0, p0, Ljavassist/bytecode/CodeAnalyzer;->constPool:Ljavassist/bytecode/ConstPool;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p2, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    .restart local v0    # "desc":Ljava/lang/String;
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr p4, v1

    .line 233
    goto :goto_1

    .line 221
    .end local v0    # "desc":Ljava/lang/String;
    :pswitch_8
    invoke-direct {p0, p2, p3}, Ljavassist/bytecode/CodeAnalyzer;->getFieldSize(Ljavassist/bytecode/CodeIterator;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p4, v0

    .line 222
    goto :goto_1

    .line 218
    :pswitch_9
    invoke-direct {p0, p2, p3}, Ljavassist/bytecode/CodeAnalyzer;->getFieldSize(Ljavassist/bytecode/CodeIterator;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p4, v0

    .line 219
    goto :goto_1

    .line 227
    :pswitch_a
    invoke-direct {p0, p2, p3}, Ljavassist/bytecode/CodeAnalyzer;->getFieldSize(Ljavassist/bytecode/CodeIterator;I)I

    move-result v0

    sub-int/2addr p4, v0

    .line 228
    goto :goto_1

    .line 224
    :pswitch_b
    invoke-direct {p0, p2, p3}, Ljavassist/bytecode/CodeAnalyzer;->getFieldSize(Ljavassist/bytecode/CodeIterator;I)I

    move-result v0

    add-int/2addr p4, v0

    .line 225
    goto :goto_1

    .line 257
    :goto_0
    sget-object v0, Ljavassist/bytecode/CodeAnalyzer;->STACK_GROW:[I

    aget v0, v0, p1

    add-int/2addr p4, v0

    .line 260
    :goto_1
    return p4

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public computeMaxStack()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Ljavassist/bytecode/CodeAnalyzer;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    .line 40
    .local v0, "ci":Ljavassist/bytecode/CodeIterator;
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v1

    .line 41
    .local v1, "length":I
    new-array v2, v1, [I

    .line 42
    .local v2, "stack":[I
    iget-object v3, p0, Ljavassist/bytecode/CodeAnalyzer;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v3}, Ljavassist/bytecode/CodeAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    iput-object v3, p0, Ljavassist/bytecode/CodeAnalyzer;->constPool:Ljavassist/bytecode/ConstPool;

    .line 43
    iget-object v3, p0, Ljavassist/bytecode/CodeAnalyzer;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-direct {p0, v2, v3}, Ljavassist/bytecode/CodeAnalyzer;->initStack([ILjavassist/bytecode/CodeAttribute;)V

    .line 46
    :goto_0
    const/4 v3, 0x0

    .line 47
    .local v3, "repeat":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 48
    aget v5, v2, v4

    if-gez v5, :cond_0

    .line 49
    const/4 v3, 0x1

    .line 50
    invoke-direct {p0, v0, v2, v4}, Ljavassist/bytecode/CodeAnalyzer;->visitBytecode(Ljavassist/bytecode/CodeIterator;[II)V

    .line 47
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 52
    .end local v4    # "i":I
    :cond_1
    if-nez v3, :cond_4

    .line 54
    const/4 v4, 0x1

    .line 55
    .local v4, "maxStack":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v1, :cond_3

    .line 56
    aget v6, v2, v5

    if-le v6, v4, :cond_2

    .line 57
    aget v4, v2, v5

    .line 55
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 59
    .end local v5    # "i":I
    :cond_3
    add-int/lit8 v5, v4, -0x1

    return v5

    .line 52
    .end local v4    # "maxStack":I
    :cond_4
    goto :goto_0
.end method
