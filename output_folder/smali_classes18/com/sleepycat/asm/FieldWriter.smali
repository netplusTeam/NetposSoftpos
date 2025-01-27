.class final Lcom/sleepycat/asm/FieldWriter;
.super Lcom/sleepycat/asm/FieldVisitor;
.source "FieldWriter.java"


# instance fields
.field private final access:I

.field private anns:Lcom/sleepycat/asm/AnnotationWriter;

.field private attrs:Lcom/sleepycat/asm/Attribute;

.field private final cw:Lcom/sleepycat/asm/ClassWriter;

.field private final desc:I

.field private ianns:Lcom/sleepycat/asm/AnnotationWriter;

.field private itanns:Lcom/sleepycat/asm/AnnotationWriter;

.field private final name:I

.field private signature:I

.field private tanns:Lcom/sleepycat/asm/AnnotationWriter;

.field private value:I


# direct methods
.method constructor <init>(Lcom/sleepycat/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cw"    # Lcom/sleepycat/asm/ClassWriter;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "value"    # Ljava/lang/Object;

    .line 121
    const/high16 v0, 0x60000

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/FieldVisitor;-><init>(I)V

    .line 122
    iget-object v0, p1, Lcom/sleepycat/asm/ClassWriter;->firstField:Lcom/sleepycat/asm/FieldWriter;

    if-nez v0, :cond_0

    .line 123
    iput-object p0, p1, Lcom/sleepycat/asm/ClassWriter;->firstField:Lcom/sleepycat/asm/FieldWriter;

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/asm/ClassWriter;->lastField:Lcom/sleepycat/asm/FieldWriter;

    iput-object p0, v0, Lcom/sleepycat/asm/FieldWriter;->fv:Lcom/sleepycat/asm/FieldVisitor;

    .line 127
    :goto_0
    iput-object p0, p1, Lcom/sleepycat/asm/ClassWriter;->lastField:Lcom/sleepycat/asm/FieldWriter;

    .line 128
    iput-object p1, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    .line 129
    iput p2, p0, Lcom/sleepycat/asm/FieldWriter;->access:I

    .line 130
    invoke-virtual {p1, p3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/asm/FieldWriter;->name:I

    .line 131
    invoke-virtual {p1, p4}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/asm/FieldWriter;->desc:I

    .line 132
    if-eqz p5, :cond_1

    .line 133
    invoke-virtual {p1, p5}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/asm/FieldWriter;->signature:I

    .line 135
    :cond_1
    if-eqz p6, :cond_2

    .line 136
    invoke-virtual {p1, p6}, Lcom/sleepycat/asm/ClassWriter;->newConstItem(Ljava/lang/Object;)Lcom/sleepycat/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/sleepycat/asm/Item;->index:I

    iput v0, p0, Lcom/sleepycat/asm/FieldWriter;->value:I

    .line 138
    :cond_2
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 7

    .line 201
    const/16 v0, 0x8

    .line 202
    .local v0, "size":I
    iget v1, p0, Lcom/sleepycat/asm/FieldWriter;->value:I

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "ConstantValue"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 204
    add-int/lit8 v0, v0, 0x8

    .line 206
    :cond_0
    iget v1, p0, Lcom/sleepycat/asm/FieldWriter;->access:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget v1, v1, Lcom/sleepycat/asm/ClassWriter;->version:I

    const v2, 0xffff

    and-int/2addr v1, v2

    const/16 v2, 0x31

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/sleepycat/asm/FieldWriter;->access:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 210
    add-int/lit8 v0, v0, 0x6

    .line 213
    :cond_2
    iget v1, p0, Lcom/sleepycat/asm/FieldWriter;->access:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "Deprecated"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 215
    add-int/lit8 v0, v0, 0x6

    .line 217
    :cond_3
    iget v1, p0, Lcom/sleepycat/asm/FieldWriter;->signature:I

    if-eqz v1, :cond_4

    .line 218
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "Signature"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 219
    add-int/lit8 v0, v0, 0x8

    .line 221
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_5

    .line 222
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v1}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 225
    :cond_5
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_6

    .line 226
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v1}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 229
    :cond_6
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_7

    .line 230
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v1}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 233
    :cond_7
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v1, :cond_8

    .line 234
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v1}, Lcom/sleepycat/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 237
    :cond_8
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->attrs:Lcom/sleepycat/asm/Attribute;

    if-eqz v1, :cond_9

    .line 238
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/asm/Attribute;->getSize(Lcom/sleepycat/asm/ClassWriter;[BIII)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_9
    return v0
.end method

.method put(Lcom/sleepycat/asm/ByteVector;)V
    .locals 11
    .param p1, "out"    # Lcom/sleepycat/asm/ByteVector;

    .line 250
    const/16 v0, 0x40

    .line 251
    .local v0, "FACTOR":I
    iget v1, p0, Lcom/sleepycat/asm/FieldWriter;->access:I

    const/high16 v2, 0x40000

    and-int v3, v1, v2

    div-int/lit8 v3, v3, 0x40

    const/high16 v4, 0x60000

    or-int/2addr v3, v4

    .line 253
    .local v3, "mask":I
    not-int v4, v3

    and-int/2addr v1, v4

    invoke-virtual {p1, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget v4, p0, Lcom/sleepycat/asm/FieldWriter;->name:I

    invoke-virtual {v1, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    iget v4, p0, Lcom/sleepycat/asm/FieldWriter;->desc:I

    invoke-virtual {v1, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, "attributeCount":I
    iget v4, p0, Lcom/sleepycat/asm/FieldWriter;->value:I

    if-eqz v4, :cond_0

    .line 256
    add-int/lit8 v1, v1, 0x1

    .line 258
    :cond_0
    iget v4, p0, Lcom/sleepycat/asm/FieldWriter;->access:I

    and-int/lit16 v4, v4, 0x1000

    const/16 v5, 0x31

    const v6, 0xffff

    if-eqz v4, :cond_2

    .line 259
    iget-object v4, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget v4, v4, Lcom/sleepycat/asm/ClassWriter;->version:I

    and-int/2addr v4, v6

    if-lt v4, v5, :cond_1

    iget v4, p0, Lcom/sleepycat/asm/FieldWriter;->access:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_2

    .line 261
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 264
    :cond_2
    iget v4, p0, Lcom/sleepycat/asm/FieldWriter;->access:I

    const/high16 v7, 0x20000

    and-int/2addr v4, v7

    if-eqz v4, :cond_3

    .line 265
    add-int/lit8 v1, v1, 0x1

    .line 267
    :cond_3
    iget v4, p0, Lcom/sleepycat/asm/FieldWriter;->signature:I

    if-eqz v4, :cond_4

    .line 268
    add-int/lit8 v1, v1, 0x1

    .line 270
    :cond_4
    iget-object v4, p0, Lcom/sleepycat/asm/FieldWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v4, :cond_5

    .line 271
    add-int/lit8 v1, v1, 0x1

    .line 273
    :cond_5
    iget-object v4, p0, Lcom/sleepycat/asm/FieldWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v4, :cond_6

    .line 274
    add-int/lit8 v1, v1, 0x1

    .line 276
    :cond_6
    iget-object v4, p0, Lcom/sleepycat/asm/FieldWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v4, :cond_7

    .line 277
    add-int/lit8 v1, v1, 0x1

    .line 279
    :cond_7
    iget-object v4, p0, Lcom/sleepycat/asm/FieldWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v4, :cond_8

    .line 280
    add-int/lit8 v1, v1, 0x1

    .line 282
    :cond_8
    iget-object v4, p0, Lcom/sleepycat/asm/FieldWriter;->attrs:Lcom/sleepycat/asm/Attribute;

    if-eqz v4, :cond_9

    .line 283
    invoke-virtual {v4}, Lcom/sleepycat/asm/Attribute;->getCount()I

    move-result v4

    add-int/2addr v1, v4

    .line 285
    :cond_9
    invoke-virtual {p1, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 286
    iget v4, p0, Lcom/sleepycat/asm/FieldWriter;->value:I

    const/4 v8, 0x2

    if-eqz v4, :cond_a

    .line 287
    iget-object v4, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v9, "ConstantValue"

    invoke-virtual {v4, v9}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 288
    invoke-virtual {p1, v8}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v4

    iget v9, p0, Lcom/sleepycat/asm/FieldWriter;->value:I

    invoke-virtual {v4, v9}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 290
    :cond_a
    iget v4, p0, Lcom/sleepycat/asm/FieldWriter;->access:I

    and-int/lit16 v4, v4, 0x1000

    const/4 v9, 0x0

    if-eqz v4, :cond_c

    .line 291
    iget-object v4, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget v4, v4, Lcom/sleepycat/asm/ClassWriter;->version:I

    and-int/2addr v4, v6

    if-lt v4, v5, :cond_b

    iget v4, p0, Lcom/sleepycat/asm/FieldWriter;->access:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_c

    .line 293
    :cond_b
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v4, "Synthetic"

    invoke-virtual {v2, v4}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 296
    :cond_c
    iget v2, p0, Lcom/sleepycat/asm/FieldWriter;->access:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_d

    .line 297
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v4, "Deprecated"

    invoke-virtual {v2, v4}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 299
    :cond_d
    iget v2, p0, Lcom/sleepycat/asm/FieldWriter;->signature:I

    if-eqz v2, :cond_e

    .line 300
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v4, "Signature"

    invoke-virtual {v2, v4}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 301
    invoke-virtual {p1, v8}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v2

    iget v4, p0, Lcom/sleepycat/asm/FieldWriter;->signature:I

    invoke-virtual {v2, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 303
    :cond_e
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v2, :cond_f

    .line 304
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v4, "RuntimeVisibleAnnotations"

    invoke-virtual {v2, v4}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 305
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v2, p1}, Lcom/sleepycat/asm/AnnotationWriter;->put(Lcom/sleepycat/asm/ByteVector;)V

    .line 307
    :cond_f
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v2, :cond_10

    .line 308
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v4, "RuntimeInvisibleAnnotations"

    invoke-virtual {v2, v4}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 309
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v2, p1}, Lcom/sleepycat/asm/AnnotationWriter;->put(Lcom/sleepycat/asm/ByteVector;)V

    .line 311
    :cond_10
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v2, :cond_11

    .line 312
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v4, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v2, v4}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 313
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v2, p1}, Lcom/sleepycat/asm/AnnotationWriter;->put(Lcom/sleepycat/asm/ByteVector;)V

    .line 315
    :cond_11
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    if-eqz v2, :cond_12

    .line 316
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v4, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v2, v4}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 317
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    invoke-virtual {v2, p1}, Lcom/sleepycat/asm/AnnotationWriter;->put(Lcom/sleepycat/asm/ByteVector;)V

    .line 319
    :cond_12
    iget-object v4, p0, Lcom/sleepycat/asm/FieldWriter;->attrs:Lcom/sleepycat/asm/Attribute;

    if-eqz v4, :cond_13

    .line 320
    iget-object v5, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v10, p1

    invoke-virtual/range {v4 .. v10}, Lcom/sleepycat/asm/Attribute;->put(Lcom/sleepycat/asm/ClassWriter;[BIIILcom/sleepycat/asm/ByteVector;)V

    .line 322
    :cond_13
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 8
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 147
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    .line 149
    .local v0, "bv":Lcom/sleepycat/asm/ByteVector;
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 150
    new-instance v7, Lcom/sleepycat/asm/AnnotationWriter;

    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const/4 v3, 0x1

    const/4 v6, 0x2

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/asm/AnnotationWriter;-><init>(Lcom/sleepycat/asm/ClassWriter;ZLcom/sleepycat/asm/ByteVector;Lcom/sleepycat/asm/ByteVector;I)V

    .line 151
    .local v1, "aw":Lcom/sleepycat/asm/AnnotationWriter;
    if-eqz p2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 153
    iput-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->anns:Lcom/sleepycat/asm/AnnotationWriter;

    goto :goto_0

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 156
    iput-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->ianns:Lcom/sleepycat/asm/AnnotationWriter;

    .line 158
    :goto_0
    return-object v1
.end method

.method public visitAttribute(Lcom/sleepycat/asm/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lcom/sleepycat/asm/Attribute;

    .line 183
    iget-object v0, p0, Lcom/sleepycat/asm/FieldWriter;->attrs:Lcom/sleepycat/asm/Attribute;

    iput-object v0, p1, Lcom/sleepycat/asm/Attribute;->next:Lcom/sleepycat/asm/Attribute;

    .line 184
    iput-object p1, p0, Lcom/sleepycat/asm/FieldWriter;->attrs:Lcom/sleepycat/asm/Attribute;

    .line 185
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 189
    return-void
.end method

.method public visitTypeAnnotation(ILcom/sleepycat/asm/TypePath;Ljava/lang/String;Z)Lcom/sleepycat/asm/AnnotationVisitor;
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lcom/sleepycat/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 164
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    .line 166
    .local v0, "bv":Lcom/sleepycat/asm/ByteVector;
    invoke-static {p1, p2, v0}, Lcom/sleepycat/asm/AnnotationWriter;->putTarget(ILcom/sleepycat/asm/TypePath;Lcom/sleepycat/asm/ByteVector;)V

    .line 168
    iget-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 169
    new-instance v7, Lcom/sleepycat/asm/AnnotationWriter;

    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    iget v1, v0, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/lit8 v6, v1, -0x2

    const/4 v3, 0x1

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/asm/AnnotationWriter;-><init>(Lcom/sleepycat/asm/ClassWriter;ZLcom/sleepycat/asm/ByteVector;Lcom/sleepycat/asm/ByteVector;I)V

    .line 171
    .local v1, "aw":Lcom/sleepycat/asm/AnnotationWriter;
    if-eqz p4, :cond_0

    .line 172
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 173
    iput-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->tanns:Lcom/sleepycat/asm/AnnotationWriter;

    goto :goto_0

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/asm/FieldWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    iput-object v2, v1, Lcom/sleepycat/asm/AnnotationWriter;->next:Lcom/sleepycat/asm/AnnotationWriter;

    .line 176
    iput-object v1, p0, Lcom/sleepycat/asm/FieldWriter;->itanns:Lcom/sleepycat/asm/AnnotationWriter;

    .line 178
    :goto_0
    return-object v1
.end method
