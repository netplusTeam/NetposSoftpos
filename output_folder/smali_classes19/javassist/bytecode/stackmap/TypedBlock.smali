.class public Ljavassist/bytecode/stackmap/TypedBlock;
.super Ljavassist/bytecode/stackmap/BasicBlock;
.source "TypedBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/stackmap/TypedBlock$Maker;
    }
.end annotation


# instance fields
.field public localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

.field public numLocals:I

.field public stackTop:I

.field public stackTypes:[Ljavassist/bytecode/stackmap/TypeData;


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "pos"    # I

    .line 57
    invoke-direct {p0, p1}, Ljavassist/bytecode/stackmap/BasicBlock;-><init>(I)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 59
    return-void
.end method

.method private static descToTag(Ljava/lang/String;II[Ljavassist/bytecode/stackmap/TypeData;)I
    .locals 8
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "i"    # I
    .param p2, "n"    # I
    .param p3, "types"    # [Ljavassist/bytecode/stackmap/TypeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 174
    move v0, p1

    .line 175
    .local v0, "i0":I
    const/4 v1, 0x0

    .line 176
    .local v1, "arrayDim":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 177
    .local v2, "c":C
    const/16 v3, 0x29

    if-ne v2, v3, :cond_0

    .line 178
    const/4 v3, 0x0

    return v3

    .line 180
    :cond_0
    :goto_0
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1

    .line 181
    add-int/lit8 v1, v1, 0x1

    .line 182
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 185
    :cond_1
    const/16 v3, 0x4c

    if-ne v2, v3, :cond_3

    .line 186
    const/16 v3, 0x3b

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 187
    .local v3, "i2":I
    if-lez v1, :cond_2

    .line 188
    new-instance v4, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v4, p3, p2

    goto :goto_1

    .line 190
    :cond_2
    new-instance v4, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f

    const/16 v7, 0x2e

    .line 191
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v4, p3, p2

    .line 192
    :goto_1
    return v3

    .line 194
    .end local v3    # "i2":I
    :cond_3
    if-lez v1, :cond_4

    .line 195
    new-instance v3, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v3, p3, p2

    .line 196
    return p1

    .line 199
    :cond_4
    invoke-static {v2}, Ljavassist/bytecode/stackmap/TypedBlock;->toPrimitiveTag(C)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v3

    .line 200
    .local v3, "t":Ljavassist/bytecode/stackmap/TypeData;
    if-eqz v3, :cond_5

    .line 203
    aput-object v3, p3, p2

    .line 204
    add-int/lit8 v4, p1, 0x1

    return v4

    .line 201
    :cond_5
    new-instance v4, Ljavassist/bytecode/BadBytecode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad method descriptor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getRetType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "desc"    # Ljava/lang/String;

    .line 229
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 230
    .local v0, "i":I
    const-string v1, "java.lang.Object"

    if-gez v0, :cond_0

    .line 231
    return-object v1

    .line 233
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 234
    .local v2, "c":C
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1

    .line 235
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 236
    :cond_1
    const/16 v3, 0x4c

    if-ne v2, v3, :cond_2

    .line 237
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 239
    :cond_2
    return-object v1
.end method

.method public static makeBlocks(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/CodeAttribute;Z)[Ljavassist/bytecode/stackmap/TypedBlock;
    .locals 11
    .param p0, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .param p1, "ca"    # Ljavassist/bytecode/CodeAttribute;
    .param p2, "optimize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 43
    new-instance v0, Ljavassist/bytecode/stackmap/TypedBlock$Maker;

    invoke-direct {v0}, Ljavassist/bytecode/stackmap/TypedBlock$Maker;-><init>()V

    invoke-virtual {v0, p0}, Ljavassist/bytecode/stackmap/TypedBlock$Maker;->make(Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v0

    check-cast v0, [Ljavassist/bytecode/stackmap/TypedBlock;

    .line 44
    .local v0, "blocks":[Ljavassist/bytecode/stackmap/TypedBlock;
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 45
    array-length v2, v0

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    iget v2, v2, Ljavassist/bytecode/stackmap/TypedBlock;->incoming:I

    if-nez v2, :cond_1

    .line 46
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 48
    :cond_1
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    .line 49
    .local v2, "pool":Ljavassist/bytecode/ConstPool;
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v9, v3

    goto :goto_0

    :cond_2
    move v9, v1

    .line 50
    .local v9, "isStatic":Z
    :goto_0
    aget-object v4, v0, v1

    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v5

    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v6

    .line 51
    invoke-virtual {v2}, Ljavassist/bytecode/ConstPool;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    .line 52
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->isConstructor()Z

    move-result v10

    .line 50
    invoke-virtual/range {v4 .. v10}, Ljavassist/bytecode/stackmap/TypedBlock;->initFirstBlock(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 53
    return-object v0
.end method

.method private printTypes(Ljava/lang/StringBuffer;I[Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 3
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "size"    # I
    .param p3, "types"    # [Ljavassist/bytecode/stackmap/TypeData;

    .line 73
    if-nez p3, :cond_0

    .line 74
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 77
    if-lez v0, :cond_1

    .line 78
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    :cond_1
    aget-object v1, p3, v0

    .line 81
    .local v1, "td":Ljavassist/bytecode/stackmap/TypeData;
    if-nez v1, :cond_2

    const-string v2, "<>"

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljavassist/bytecode/stackmap/TypeData;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    .end local v1    # "td":Ljavassist/bytecode/stackmap/TypeData;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private static toPrimitiveTag(C)Ljavassist/bytecode/stackmap/TypeData;
    .locals 1
    .param p0, "c"    # C

    .line 209
    sparse-switch p0, :sswitch_data_0

    .line 224
    const/4 v0, 0x0

    return-object v0

    .line 217
    :sswitch_0
    sget-object v0, Ljavassist/bytecode/stackmap/TypeTag;->LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    return-object v0

    .line 219
    :sswitch_1
    sget-object v0, Ljavassist/bytecode/stackmap/TypeTag;->FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    return-object v0

    .line 221
    :sswitch_2
    sget-object v0, Ljavassist/bytecode/stackmap/TypeTag;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    return-object v0

    .line 215
    :sswitch_3
    sget-object v0, Ljavassist/bytecode/stackmap/TypeTag;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_3
        0x44 -> :sswitch_2
        0x46 -> :sswitch_1
        0x49 -> :sswitch_3
        0x4a -> :sswitch_0
        0x53 -> :sswitch_3
        0x5a -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public alreadySet()Z
    .locals 1

    .line 86
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method initFirstBlock(IILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "methodDesc"    # Ljava/lang/String;
    .param p5, "isStatic"    # Z
    .param p6, "isConstructor"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_5

    .line 146
    iput v0, p0, Ljavassist/bytecode/stackmap/TypedBlock;->stackTop:I

    .line 147
    invoke-static {p1}, Ljavassist/bytecode/stackmap/TypeData;->make(I)[Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v1

    iput-object v1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 148
    invoke-static {p2}, Ljavassist/bytecode/stackmap/TypeData;->make(I)[Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v1

    .line 149
    .local v1, "locals":[Ljavassist/bytecode/stackmap/TypeData;
    if-eqz p6, :cond_0

    .line 150
    new-instance v2, Ljavassist/bytecode/stackmap/TypeData$UninitThis;

    invoke-direct {v2, p3}, Ljavassist/bytecode/stackmap/TypeData$UninitThis;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    goto :goto_0

    .line 151
    :cond_0
    if-nez p5, :cond_1

    .line 152
    new-instance v2, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-direct {v2, p3}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 154
    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    const/4 v0, -0x1

    .line 155
    .local v0, "n":I
    :cond_2
    const/4 v2, 0x1

    .line 157
    .local v2, "i":I
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    :try_start_0
    invoke-static {p4, v2, v0, v1}, Ljavassist/bytecode/stackmap/TypedBlock;->descToTag(Ljava/lang/String;II[Ljavassist/bytecode/stackmap/TypeData;)I

    move-result v3

    move v2, v3

    if-lez v3, :cond_4

    .line 158
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 159
    add-int/lit8 v0, v0, 0x1

    sget-object v3, Ljavassist/bytecode/stackmap/TypeTag;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v0
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 164
    :cond_4
    nop

    .line 166
    iput v0, p0, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    .line 167
    iput-object v1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 168
    return-void

    .line 161
    :catch_0
    move-exception v3

    .line 162
    .local v3, "e":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v4, Ljavassist/bytecode/BadBytecode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad method descriptor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v4

    .line 144
    .end local v0    # "n":I
    .end local v1    # "locals":[Ljavassist/bytecode/stackmap/TypeData;
    .end local v2    # "i":I
    .end local v3    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_5
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no method descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetNumLocals()V
    .locals 3

    .line 102
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    if-eqz v0, :cond_2

    .line 103
    array-length v0, v0

    .line 104
    .local v0, "nl":I
    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljavassist/bytecode/stackmap/TypeData;->isBasicType()Ljavassist/bytecode/stackmap/TypeData$BasicType;

    move-result-object v1

    sget-object v2, Ljavassist/bytecode/stackmap/TypeTag;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    if-ne v1, v2, :cond_1

    .line 105
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    goto :goto_1

    .line 110
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 113
    :cond_1
    :goto_1
    iput v0, p0, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    .line 115
    .end local v0    # "nl":I
    :cond_2
    return-void
.end method

.method public setStackMap(I[Ljavassist/bytecode/stackmap/TypeData;I[Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 0
    .param p1, "st"    # I
    .param p2, "stack"    # [Ljavassist/bytecode/stackmap/TypeData;
    .param p3, "nl"    # I
    .param p4, "locals"    # [Ljavassist/bytecode/stackmap/TypeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 92
    iput p1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->stackTop:I

    .line 93
    iput-object p2, p0, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 94
    iput p3, p0, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    .line 95
    iput-object p4, p0, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 96
    return-void
.end method

.method protected toString2(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 63
    invoke-super {p0, p1}, Ljavassist/bytecode/stackmap/BasicBlock;->toString2(Ljava/lang/StringBuffer;)V

    .line 64
    const-string v0, ",\n stack={"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    iget v0, p0, Ljavassist/bytecode/stackmap/TypedBlock;->stackTop:I

    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, v0, v1}, Ljavassist/bytecode/stackmap/TypedBlock;->printTypes(Ljava/lang/StringBuffer;I[Ljavassist/bytecode/stackmap/TypeData;)V

    .line 66
    const-string v0, "}, locals={"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    iget v0, p0, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, v0, v1}, Ljavassist/bytecode/stackmap/TypedBlock;->printTypes(Ljava/lang/StringBuffer;I[Ljavassist/bytecode/stackmap/TypeData;)V

    .line 68
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    return-void
.end method
