.class public final Ljavassist/convert/TransformAccessArrayField;
.super Ljavassist/convert/Transformer;
.source "TransformAccessArrayField.java"


# instance fields
.field private frames:[Ljavassist/bytecode/analysis/Frame;

.field private final methodClassname:Ljava/lang/String;

.field private final names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

.field private offset:I


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;)V
    .locals 0
    .param p1, "next"    # Ljavassist/convert/Transformer;
    .param p2, "methodClassname"    # Ljava/lang/String;
    .param p3, "names"    # Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Ljavassist/convert/Transformer;-><init>(Ljavassist/convert/Transformer;)V

    .line 46
    iput-object p2, p0, Ljavassist/convert/TransformAccessArrayField;->methodClassname:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    .line 49
    return-void
.end method

.method private getFrame(I)Ljavassist/bytecode/analysis/Frame;
    .locals 2
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Ljavassist/convert/TransformAccessArrayField;->frames:[Ljavassist/bytecode/analysis/Frame;

    iget v1, p0, Ljavassist/convert/TransformAccessArrayField;->offset:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getLoadReplacementSignature(I)Ljava/lang/String;
    .locals 1
    .param p1, "opcode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 228
    packed-switch p1, :pswitch_data_0

    .line 247
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    invoke-direct {v0, p1}, Ljavassist/bytecode/BadBytecode;-><init>(I)V

    throw v0

    .line 242
    :pswitch_0
    const-string v0, "(Ljava/lang/Object;I)S"

    return-object v0

    .line 234
    :pswitch_1
    const-string v0, "(Ljava/lang/Object;I)C"

    return-object v0

    .line 232
    :pswitch_2
    const-string v0, "(Ljava/lang/Object;I)B"

    return-object v0

    .line 230
    :pswitch_3
    const-string v0, "(Ljava/lang/Object;I)Ljava/lang/Object;"

    return-object v0

    .line 236
    :pswitch_4
    const-string v0, "(Ljava/lang/Object;I)D"

    return-object v0

    .line 238
    :pswitch_5
    const-string v0, "(Ljava/lang/Object;I)F"

    return-object v0

    .line 244
    :pswitch_6
    const-string v0, "(Ljava/lang/Object;I)J"

    return-object v0

    .line 240
    :pswitch_7
    const-string v0, "(Ljava/lang/Object;I)I"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMethodName(I)Ljava/lang/String;
    .locals 2
    .param p1, "opcode"    # I

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "methodName":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 214
    :sswitch_0
    iget-object v1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {v1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->shortWrite()Ljava/lang/String;

    move-result-object v0

    .line 215
    goto/16 :goto_0

    .line 202
    :sswitch_1
    iget-object v1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {v1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->charWrite()Ljava/lang/String;

    move-result-object v0

    .line 203
    goto :goto_0

    .line 199
    :sswitch_2
    iget-object v1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {v1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->byteOrBooleanWrite()Ljava/lang/String;

    move-result-object v0

    .line 200
    goto :goto_0

    .line 196
    :sswitch_3
    iget-object v1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {v1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->objectWrite()Ljava/lang/String;

    move-result-object v0

    .line 197
    goto :goto_0

    .line 205
    :sswitch_4
    iget-object v1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {v1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->doubleWrite()Ljava/lang/String;

    move-result-object v0

    .line 206
    goto :goto_0

    .line 208
    :sswitch_5
    iget-object v1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {v1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->floatWrite()Ljava/lang/String;

    move-result-object v0

    .line 209
    goto :goto_0

    .line 217
    :sswitch_6
    iget-object v1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {v1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->longWrite()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    :sswitch_7
    iget-object v1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {v1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->intWrite()Ljava/lang/String;

    move-result-object v0

    .line 212
    goto :goto_0

    .line 190
    :sswitch_8
    iget-object v1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {v1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->shortRead()Ljava/lang/String;

    move-result-object v0

    .line 191
    goto :goto_0

    .line 178
    :sswitch_9
    iget-object v1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {v1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->charRead()Ljava/lang/String;

    move-result-object v0

    .line 179
    goto :goto_0

    .line 175
    :sswitch_a
    iget-object v1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {v1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->byteOrBooleanRead()Ljava/lang/String;

    move-result-object v0

    .line 176
    goto :goto_0

    .line 172
    :sswitch_b
    iget-object v1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {v1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->objectRead()Ljava/lang/String;

    move-result-object v0

    .line 173
    goto :goto_0

    .line 181
    :sswitch_c
    iget-object v1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {v1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->doubleRead()Ljava/lang/String;

    move-result-object v0

    .line 182
    goto :goto_0

    .line 184
    :sswitch_d
    iget-object v1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {v1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->floatRead()Ljava/lang/String;

    move-result-object v0

    .line 185
    goto :goto_0

    .line 193
    :sswitch_e
    iget-object v1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {v1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->longRead()Ljava/lang/String;

    move-result-object v0

    .line 194
    goto :goto_0

    .line 187
    :sswitch_f
    iget-object v1, p0, Ljavassist/convert/TransformAccessArrayField;->names:Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;

    invoke-interface {v1}, Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;->intRead()Ljava/lang/String;

    move-result-object v0

    .line 188
    nop

    .line 221
    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 224
    :cond_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_f
        0x2f -> :sswitch_e
        0x30 -> :sswitch_d
        0x31 -> :sswitch_c
        0x32 -> :sswitch_b
        0x33 -> :sswitch_a
        0x34 -> :sswitch_9
        0x35 -> :sswitch_8
        0x4f -> :sswitch_7
        0x50 -> :sswitch_6
        0x51 -> :sswitch_5
        0x52 -> :sswitch_4
        0x53 -> :sswitch_3
        0x54 -> :sswitch_2
        0x55 -> :sswitch_1
        0x56 -> :sswitch_0
    .end sparse-switch
.end method

.method private getStoreReplacementSignature(I)Ljava/lang/String;
    .locals 1
    .param p1, "opcode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 251
    packed-switch p1, :pswitch_data_0

    .line 270
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    invoke-direct {v0, p1}, Ljavassist/bytecode/BadBytecode;-><init>(I)V

    throw v0

    .line 265
    :pswitch_0
    const-string v0, "(Ljava/lang/Object;IS)V"

    return-object v0

    .line 257
    :pswitch_1
    const-string v0, "(Ljava/lang/Object;IC)V"

    return-object v0

    .line 255
    :pswitch_2
    const-string v0, "(Ljava/lang/Object;IB)V"

    return-object v0

    .line 253
    :pswitch_3
    const-string v0, "(Ljava/lang/Object;ILjava/lang/Object;)V"

    return-object v0

    .line 259
    :pswitch_4
    const-string v0, "(Ljava/lang/Object;ID)V"

    return-object v0

    .line 261
    :pswitch_5
    const-string v0, "(Ljava/lang/Object;IF)V"

    return-object v0

    .line 267
    :pswitch_6
    const-string v0, "(Ljava/lang/Object;IJ)V"

    return-object v0

    .line 263
    :pswitch_7
    const-string v0, "(Ljava/lang/Object;II)V"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTopType(I)Ljava/lang/String;
    .locals 3
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1}, Ljavassist/convert/TransformAccessArrayField;->getFrame(I)Ljavassist/bytecode/analysis/Frame;

    move-result-object v0

    .line 121
    .local v0, "frame":Ljavassist/bytecode/analysis/Frame;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 122
    return-object v1

    .line 124
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Frame;->peek()Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v2

    .line 125
    .local v2, "clazz":Ljavassist/CtClass;
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private initFrames(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 1
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Ljavassist/convert/TransformAccessArrayField;->frames:[Ljavassist/bytecode/analysis/Frame;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljavassist/bytecode/analysis/Analyzer;

    invoke-direct {v0}, Ljavassist/bytecode/analysis/Analyzer;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/analysis/Analyzer;->analyze(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Frame;

    move-result-object v0

    iput-object v0, p0, Ljavassist/convert/TransformAccessArrayField;->frames:[Ljavassist/bytecode/analysis/Frame;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/convert/TransformAccessArrayField;->offset:I

    .line 110
    :cond_0
    return-void
.end method

.method private replace(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeIterator;IILjava/lang/String;)I
    .locals 8
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "iterator"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "pos"    # I
    .param p4, "opcode"    # I
    .param p5, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "castType":Ljava/lang/String;
    invoke-direct {p0, p4}, Ljavassist/convert/TransformAccessArrayField;->getMethodName(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "methodName":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 134
    const/16 v2, 0x32

    if-ne p4, v2, :cond_1

    .line 135
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->lookAhead()I

    move-result v2

    invoke-direct {p0, v2}, Ljavassist/convert/TransformAccessArrayField;->getTopType(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    if-nez v0, :cond_0

    .line 140
    return p3

    .line 141
    :cond_0
    const-string v2, "java/lang/Object"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    const/4 v0, 0x0

    .line 147
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p2, v2, p3}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 148
    nop

    .line 149
    if-eqz v0, :cond_2

    const/4 v3, 0x5

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    :goto_0
    invoke-virtual {p2, p3, v3, v2}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object v2

    .line 150
    .local v2, "gap":Ljavassist/bytecode/CodeIterator$Gap;
    iget p3, v2, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 151
    iget-object v3, p0, Ljavassist/convert/TransformAccessArrayField;->methodClassname:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v3

    .line 152
    .local v3, "mi":I
    invoke-virtual {p1, v3, v1, p5}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 153
    .local v4, "methodref":I
    const/16 v5, 0xb8

    invoke-virtual {p2, v5, p3}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 154
    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p2, v4, v5}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 156
    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v5

    .line 158
    .local v5, "index":I
    const/16 v6, 0xc0

    add-int/lit8 v7, p3, 0x3

    invoke-virtual {p2, v6, v7}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 159
    add-int/lit8 v6, p3, 0x4

    invoke-virtual {p2, v5, v6}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 162
    .end local v5    # "index":I
    :cond_3
    iget v5, v2, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    invoke-direct {p0, p3, v5}, Ljavassist/convert/TransformAccessArrayField;->updatePos(II)I

    move-result p3

    .line 165
    .end local v2    # "gap":Ljavassist/bytecode/CodeIterator$Gap;
    .end local v3    # "mi":I
    .end local v4    # "methodref":I
    :cond_4
    return p3
.end method

.method private updatePos(II)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "increment"    # I

    .line 113
    iget v0, p0, Ljavassist/convert/TransformAccessArrayField;->offset:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 114
    add-int/2addr v0, p2

    iput v0, p0, Ljavassist/convert/TransformAccessArrayField;->offset:I

    .line 116
    :cond_0
    add-int v0, p1, p2

    return v0
.end method


# virtual methods
.method public clean()V
    .locals 1

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/convert/TransformAccessArrayField;->frames:[Ljavassist/bytecode/analysis/Frame;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Ljavassist/convert/TransformAccessArrayField;->offset:I

    .line 92
    return-void
.end method

.method public initialize(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 9
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "clazz"    # Ljavassist/CtClass;
    .param p3, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 63
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    .line 64
    .local v0, "iterator":Ljavassist/bytecode/CodeIterator;
    :goto_0
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 66
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v1

    move v7, v1

    .line 67
    .local v7, "pos":I
    invoke-virtual {v0, v7}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v1

    move v8, v1

    .line 69
    .local v8, "c":I
    const/16 v1, 0x32

    if-ne v8, v1, :cond_0

    .line 70
    invoke-direct {p0, p2, p3}, Ljavassist/convert/TransformAccessArrayField;->initFrames(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 72
    :cond_0
    if-eq v8, v1, :cond_3

    const/16 v1, 0x33

    if-eq v8, v1, :cond_3

    const/16 v1, 0x34

    if-eq v8, v1, :cond_3

    const/16 v1, 0x31

    if-eq v8, v1, :cond_3

    const/16 v1, 0x30

    if-eq v8, v1, :cond_3

    const/16 v1, 0x2e

    if-eq v8, v1, :cond_3

    const/16 v1, 0x2f

    if-eq v8, v1, :cond_3

    const/16 v1, 0x35

    if-ne v8, v1, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    const/16 v1, 0x53

    if-eq v8, v1, :cond_2

    const/16 v1, 0x54

    if-eq v8, v1, :cond_2

    const/16 v1, 0x55

    if-eq v8, v1, :cond_2

    const/16 v1, 0x52

    if-eq v8, v1, :cond_2

    const/16 v1, 0x51

    if-eq v8, v1, :cond_2

    const/16 v1, 0x4f

    if-eq v8, v1, :cond_2

    const/16 v1, 0x50

    if-eq v8, v1, :cond_2

    const/16 v1, 0x56

    if-ne v8, v1, :cond_4

    .line 79
    .end local v7    # "pos":I
    :cond_2
    invoke-direct {p0, v8}, Ljavassist/convert/TransformAccessArrayField;->getStoreReplacementSignature(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, v7

    move v5, v8

    invoke-direct/range {v1 .. v6}, Ljavassist/convert/TransformAccessArrayField;->replace(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeIterator;IILjava/lang/String;)I

    goto :goto_2

    .line 75
    .restart local v7    # "pos":I
    :cond_3
    :goto_1
    invoke-direct {p0, v8}, Ljavassist/convert/TransformAccessArrayField;->getLoadReplacementSignature(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, v7

    move v5, v8

    invoke-direct/range {v1 .. v6}, Ljavassist/convert/TransformAccessArrayField;->replace(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeIterator;IILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v7    # "pos":I
    .end local v8    # "c":I
    :cond_4
    :goto_2
    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    return-void
.end method

.method public transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I
    .locals 0
    .param p1, "tclazz"    # Ljavassist/CtClass;
    .param p2, "pos"    # I
    .param p3, "iterator"    # Ljavassist/bytecode/CodeIterator;
    .param p4, "cp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 98
    return p2
.end method
