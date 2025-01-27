.class final Lcom/sleepycat/asm/AnnotationWriter;
.super Lcom/sleepycat/asm/AnnotationVisitor;
.source "AnnotationWriter.java"


# instance fields
.field private final bv:Lcom/sleepycat/asm/ByteVector;

.field private final cw:Lcom/sleepycat/asm/ClassWriter;

.field private final named:Z

.field next:Lcom/sleepycat/asm/AnnotationWriter;

.field private final offset:I

.field private final parent:Lcom/sleepycat/asm/ByteVector;

.field prev:Lcom/sleepycat/asm/AnnotationWriter;

.field private size:I


# direct methods
.method constructor <init>(Lcom/sleepycat/asm/ClassWriter;ZLcom/sleepycat/asm/ByteVector;Lcom/sleepycat/asm/ByteVector;I)V
    .locals 1
    .param p1, "cw"    # Lcom/sleepycat/asm/ClassWriter;
    .param p2, "named"    # Z
    .param p3, "bv"    # Lcom/sleepycat/asm/ByteVector;
    .param p4, "parent"    # Lcom/sleepycat/asm/ByteVector;
    .param p5, "offset"    # I

    .line 107
    const/high16 v0, 0x60000

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/AnnotationVisitor;-><init>(I)V

    .line 108
    iput-object p1, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    .line 109
    iput-boolean p2, p0, Lcom/sleepycat/asm/AnnotationWriter;->named:Z

    .line 110
    iput-object p3, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    .line 111
    iput-object p4, p0, Lcom/sleepycat/asm/AnnotationWriter;->parent:Lcom/sleepycat/asm/ByteVector;

    .line 112
    iput p5, p0, Lcom/sleepycat/asm/AnnotationWriter;->offset:I

    .line 113
    return-void
.end method

.method static put([Lcom/sleepycat/asm/AnnotationWriter;ILcom/sleepycat/asm/ByteVector;)V
    .locals 8
    .param p0, "panns"    # [Lcom/sleepycat/asm/AnnotationWriter;
    .param p1, "off"    # I
    .param p2, "out"    # Lcom/sleepycat/asm/ByteVector;

    .line 294
    array-length v0, p0

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 295
    .local v0, "size":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 296
    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p2, v0}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    .line 299
    move v1, p1

    .restart local v1    # "i":I
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 300
    aget-object v2, p0, v1

    .line 301
    .local v2, "aw":Lcom/sleepycat/asm/AnnotationWriter;
    const/4 v4, 0x0

    .line 302
    .local v4, "last":Lcom/sleepycat/asm/AnnotationWriter;
    const/4 v5, 0x0

    .line 303
    .local v5, "n":I
    :goto_3
    if-eqz v2, :cond_2

    .line 304
    add-int/lit8 v5, v5, 0x1

    .line 305
    invoke-virtual {v2}, Lcom/sleepycat/asm/AnnotationWriter;->visitEnd()V

    .line 306
    iput-object v4, v2, Lcom/sleepycat/asm/AnnotationWriter;->prev:Lcom/sleepycat/asm/AnnotationWriter;

    .line 307
    move-object v4, v2

    .line 308
    iget-object v2, v2, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    goto :goto_3

    .line 310
    :cond_2
    invoke-virtual {p2, v5}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 311
    move-object v2, v4

    .line 312
    :goto_4
    if-eqz v2, :cond_3

    .line 313
    iget-object v6, v2, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget-object v6, v6, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v7, v2, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget v7, v7, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-virtual {p2, v6, v3, v7}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 314
    iget-object v2, v2, Lcom/sleepycat/asm/AnnotationWriter;->prev:Lcom/sleepycat/asm/AnnotationWriter;

    goto :goto_4

    .line 299
    .end local v2    # "aw":Lcom/sleepycat/asm/AnnotationWriter;
    .end local v4    # "last":Lcom/sleepycat/asm/AnnotationWriter;
    .end local v5    # "n":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 317
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method static putTarget(ILcom/sleepycat/asm/TypePath;Lcom/sleepycat/asm/ByteVector;)V
    .locals 3
    .param p0, "typeRef"    # I
    .param p1, "typePath"    # Lcom/sleepycat/asm/TypePath;
    .param p2, "out"    # Lcom/sleepycat/asm/ByteVector;

    .line 333
    ushr-int/lit8 v0, p0, 0x18

    sparse-switch v0, :sswitch_data_0

    .line 361
    ushr-int/lit8 v0, p0, 0x18

    const v1, 0xffff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    goto :goto_0

    .line 349
    :sswitch_0
    invoke-virtual {p2, p0}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 350
    goto :goto_0

    .line 342
    :sswitch_1
    ushr-int/lit8 v0, p0, 0x18

    invoke-virtual {p2, v0}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    .line 343
    goto :goto_0

    .line 337
    :sswitch_2
    ushr-int/lit8 v0, p0, 0x10

    invoke-virtual {p2, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 338
    nop

    .line 364
    :goto_0
    if-nez p1, :cond_0

    .line 365
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sleepycat/asm/ByteVector;->putByte(I)Lcom/sleepycat/asm/ByteVector;

    goto :goto_1

    .line 367
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/asm/TypePath;->b:[B

    iget v1, p1, Lcom/sleepycat/asm/TypePath;->offset:I

    aget-byte v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 368
    .local v0, "length":I
    iget-object v1, p1, Lcom/sleepycat/asm/TypePath;->b:[B

    iget v2, p1, Lcom/sleepycat/asm/TypePath;->offset:I

    invoke-virtual {p2, v1, v2, v0}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 370
    .end local v0    # "length":I
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x47 -> :sswitch_0
        0x48 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x4b -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method getSize()I
    .locals 3

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "size":I
    move-object v1, p0

    .line 246
    .local v1, "aw":Lcom/sleepycat/asm/AnnotationWriter;
    :goto_0
    if-eqz v1, :cond_0

    .line 247
    iget-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/2addr v0, v2

    .line 248
    iget-object v1, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    goto :goto_0

    .line 250
    :cond_0
    return v0
.end method

.method put(Lcom/sleepycat/asm/ByteVector;)V
    .locals 7
    .param p1, "out"    # Lcom/sleepycat/asm/ByteVector;

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "n":I
    const/4 v1, 0x2

    .line 263
    .local v1, "size":I
    move-object v2, p0

    .line 264
    .local v2, "aw":Lcom/sleepycat/asm/AnnotationWriter;
    const/4 v3, 0x0

    .line 265
    .local v3, "last":Lcom/sleepycat/asm/AnnotationWriter;
    :goto_0
    if-eqz v2, :cond_0

    .line 266
    add-int/lit8 v0, v0, 0x1

    .line 267
    iget-object v4, v2, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget v4, v4, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/2addr v1, v4

    .line 268
    invoke-virtual {v2}, Lcom/sleepycat/asm/AnnotationWriter;->visitEnd()V

    .line 269
    iput-object v3, v2, Lcom/sleepycat/asm/AnnotationWriter;->prev:Lcom/sleepycat/asm/AnnotationWriter;

    .line 270
    move-object v3, v2

    .line 271
    iget-object v2, v2, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {p1, v1}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 274
    invoke-virtual {p1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 275
    move-object v2, v3

    .line 276
    :goto_1
    if-eqz v2, :cond_1

    .line 277
    iget-object v4, v2, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget-object v4, v4, Lcom/sleepycat/asm/ByteVector;->data:[B

    const/4 v5, 0x0

    iget-object v6, v2, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget v6, v6, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-virtual {p1, v4, v5, v6}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 278
    iget-object v2, v2, Lcom/sleepycat/asm/AnnotationWriter;->prev:Lcom/sleepycat/asm/AnnotationWriter;

    goto :goto_1

    .line 280
    :cond_1
    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 121
    iget v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->size:I

    .line 122
    iget-boolean v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->named:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 125
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    const/16 v1, 0x73

    iget-object v2, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    goto/16 :goto_8

    .line 127
    :cond_1
    instance-of v0, p2, Ljava/lang/Byte;

    const/16 v1, 0x42

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget-object v2, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    move-object v3, p2

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/asm/ClassWriter;->newInteger(I)Lcom/sleepycat/asm/Item;

    move-result-object v2

    iget v2, v2, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    goto/16 :goto_8

    .line 129
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    const/16 v2, 0x5a

    if-eqz v0, :cond_3

    .line 130
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 131
    .local v0, "v":I
    iget-object v1, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget-object v3, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v3, v0}, Lcom/sleepycat/asm/ClassWriter;->newInteger(I)Lcom/sleepycat/asm/Item;

    move-result-object v3

    iget v3, v3, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 132
    .end local v0    # "v":I
    goto/16 :goto_8

    :cond_3
    instance-of v0, p2, Ljava/lang/Character;

    const/16 v3, 0x43

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    move-object v2, p2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newInteger(I)Lcom/sleepycat/asm/Item;

    move-result-object v1

    iget v1, v1, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v0, v3, v1}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    goto/16 :goto_8

    .line 134
    :cond_4
    instance-of v0, p2, Ljava/lang/Short;

    const/16 v4, 0x53

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    move-object v2, p2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newInteger(I)Lcom/sleepycat/asm/Item;

    move-result-object v1

    iget v1, v1, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v0, v4, v1}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    goto/16 :goto_8

    .line 136
    :cond_5
    instance-of v0, p2, Lcom/sleepycat/asm/Type;

    if-eqz v0, :cond_6

    .line 137
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    const/16 v1, 0x63

    iget-object v2, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    move-object v3, p2

    check-cast v3, Lcom/sleepycat/asm/Type;

    invoke-virtual {v3}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    goto/16 :goto_8

    .line 138
    :cond_6
    instance-of v0, p2, [B

    const/16 v5, 0x5b

    if-eqz v0, :cond_8

    .line 139
    move-object v0, p2

    check-cast v0, [B

    check-cast v0, [B

    .line 140
    .local v0, "v":[B
    iget-object v2, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    array-length v3, v0

    invoke-virtual {v2, v5, v3}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 141
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_7

    .line 142
    iget-object v3, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget-object v4, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    aget-byte v5, v0, v2

    invoke-virtual {v4, v5}, Lcom/sleepycat/asm/ClassWriter;->newInteger(I)Lcom/sleepycat/asm/Item;

    move-result-object v4

    iget v4, v4, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v3, v1, v4}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "v":[B
    .end local v2    # "i":I
    :cond_7
    goto/16 :goto_8

    :cond_8
    instance-of v0, p2, [Z

    if-eqz v0, :cond_a

    .line 145
    move-object v0, p2

    check-cast v0, [Z

    check-cast v0, [Z

    .line 146
    .local v0, "v":[Z
    iget-object v1, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    array-length v3, v0

    invoke-virtual {v1, v5, v3}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_9

    .line 148
    iget-object v3, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget-object v4, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    aget-boolean v5, v0, v1

    invoke-virtual {v4, v5}, Lcom/sleepycat/asm/ClassWriter;->newInteger(I)Lcom/sleepycat/asm/Item;

    move-result-object v4

    iget v4, v4, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v3, v2, v4}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    .end local v0    # "v":[Z
    .end local v1    # "i":I
    :cond_9
    goto/16 :goto_8

    :cond_a
    instance-of v0, p2, [S

    if-eqz v0, :cond_c

    .line 151
    move-object v0, p2

    check-cast v0, [S

    check-cast v0, [S

    .line 152
    .local v0, "v":[S
    iget-object v1, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 153
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_b

    .line 154
    iget-object v2, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget-object v3, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    aget-short v5, v0, v1

    invoke-virtual {v3, v5}, Lcom/sleepycat/asm/ClassWriter;->newInteger(I)Lcom/sleepycat/asm/Item;

    move-result-object v3

    iget v3, v3, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v2, v4, v3}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 156
    .end local v0    # "v":[S
    .end local v1    # "i":I
    :cond_b
    goto/16 :goto_8

    :cond_c
    instance-of v0, p2, [C

    if-eqz v0, :cond_e

    .line 157
    move-object v0, p2

    check-cast v0, [C

    check-cast v0, [C

    .line 158
    .local v0, "v":[C
    iget-object v1, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 159
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_d

    .line 160
    iget-object v2, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget-object v4, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    aget-char v5, v0, v1

    invoke-virtual {v4, v5}, Lcom/sleepycat/asm/ClassWriter;->newInteger(I)Lcom/sleepycat/asm/Item;

    move-result-object v4

    iget v4, v4, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 162
    .end local v0    # "v":[C
    .end local v1    # "i":I
    :cond_d
    goto/16 :goto_8

    :cond_e
    instance-of v0, p2, [I

    if-eqz v0, :cond_10

    .line 163
    move-object v0, p2

    check-cast v0, [I

    check-cast v0, [I

    .line 164
    .local v0, "v":[I
    iget-object v1, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 165
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_f

    .line 166
    iget-object v2, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    const/16 v3, 0x49

    iget-object v4, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Lcom/sleepycat/asm/ClassWriter;->newInteger(I)Lcom/sleepycat/asm/Item;

    move-result-object v4

    iget v4, v4, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 168
    .end local v0    # "v":[I
    .end local v1    # "i":I
    :cond_f
    goto/16 :goto_8

    :cond_10
    instance-of v0, p2, [J

    if-eqz v0, :cond_12

    .line 169
    move-object v0, p2

    check-cast v0, [J

    check-cast v0, [J

    .line 170
    .local v0, "v":[J
    iget-object v1, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 171
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_11

    .line 172
    iget-object v2, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    const/16 v3, 0x4a

    iget-object v4, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    aget-wide v5, v0, v1

    invoke-virtual {v4, v5, v6}, Lcom/sleepycat/asm/ClassWriter;->newLong(J)Lcom/sleepycat/asm/Item;

    move-result-object v4

    iget v4, v4, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 174
    .end local v0    # "v":[J
    .end local v1    # "i":I
    :cond_11
    goto :goto_8

    :cond_12
    instance-of v0, p2, [F

    if-eqz v0, :cond_14

    .line 175
    move-object v0, p2

    check-cast v0, [F

    check-cast v0, [F

    .line 176
    .local v0, "v":[F
    iget-object v1, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 177
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_13

    .line 178
    iget-object v2, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    const/16 v3, 0x46

    iget-object v4, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Lcom/sleepycat/asm/ClassWriter;->newFloat(F)Lcom/sleepycat/asm/Item;

    move-result-object v4

    iget v4, v4, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 180
    .end local v0    # "v":[F
    .end local v1    # "i":I
    :cond_13
    goto :goto_8

    :cond_14
    instance-of v0, p2, [D

    if-eqz v0, :cond_16

    .line 181
    move-object v0, p2

    check-cast v0, [D

    check-cast v0, [D

    .line 182
    .local v0, "v":[D
    iget-object v1, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    array-length v2, v0

    invoke-virtual {v1, v5, v2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 183
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 184
    iget-object v2, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    const/16 v3, 0x44

    iget-object v4, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    aget-wide v5, v0, v1

    invoke-virtual {v4, v5, v6}, Lcom/sleepycat/asm/ClassWriter;->newDouble(D)Lcom/sleepycat/asm/Item;

    move-result-object v4

    iget v4, v4, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 186
    .end local v0    # "v":[D
    .end local v1    # "i":I
    :cond_15
    goto :goto_8

    .line 187
    :cond_16
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lcom/sleepycat/asm/ClassWriter;->newConstItem(Ljava/lang/Object;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    .line 188
    .local v0, "i":Lcom/sleepycat/asm/Item;
    iget-object v1, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget v2, v0, Lcom/sleepycat/asm/Item;->type:I

    const-string v3, ".s.IFJDCS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget v3, v0, Lcom/sleepycat/asm/Item;->index:I

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 190
    .end local v0    # "i":Lcom/sleepycat/asm/Item;
    :goto_8
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 205
    iget v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->size:I

    .line 206
    iget-boolean v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->named:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    const/16 v1, 0x40

    iget-object v2, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v2, p2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 211
    new-instance v0, Lcom/sleepycat/asm/AnnotationWriter;

    iget-object v3, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget v1, v6, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v7, v1, -0x2

    move-object v2, v0

    move-object v5, v6

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/asm/AnnotationWriter;-><init>(Lcom/sleepycat/asm/ClassWriter;ZLcom/sleepycat/asm/ByteVector;Lcom/sleepycat/asm/ByteVector;I)V

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .line 216
    iget v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->size:I

    .line 217
    iget-boolean v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->named:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    const/16 v1, 0x5b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    .line 222
    new-instance v0, Lcom/sleepycat/asm/AnnotationWriter;

    iget-object v4, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget v1, v7, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v8, v1, -0x2

    move-object v3, v0

    move-object v6, v7

    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/asm/AnnotationWriter;-><init>(Lcom/sleepycat/asm/ClassWriter;ZLcom/sleepycat/asm/ByteVector;Lcom/sleepycat/asm/ByteVector;I)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->parent:Lcom/sleepycat/asm/ByteVector;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, v0, Lcom/sleepycat/asm/ByteVector;->data:[B

    .line 229
    .local v0, "data":[B
    iget v1, p0, Lcom/sleepycat/asm/AnnotationWriter;->offset:I

    iget v2, p0, Lcom/sleepycat/asm/AnnotationWriter;->size:I

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 230
    add-int/lit8 v1, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 232
    .end local v0    # "data":[B
    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 195
    iget v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->size:I

    .line 196
    iget-boolean v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->named:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/AnnotationWriter;->bv:Lcom/sleepycat/asm/ByteVector;

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v2, p2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/asm/ByteVector;->put12(II)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/asm/AnnotationWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 200
    return-void
.end method
