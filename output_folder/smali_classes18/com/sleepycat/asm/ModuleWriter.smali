.class final Lcom/sleepycat/asm/ModuleWriter;
.super Lcom/sleepycat/asm/ModuleVisitor;
.source "ModuleWriter.java"


# instance fields
.field private final access:I

.field attributeCount:I

.field attributesSize:I

.field private final cw:Lcom/sleepycat/asm/ClassWriter;

.field private exportCount:I

.field private exports:Lcom/sleepycat/asm/ByteVector;

.field private mainClass:I

.field private final name:I

.field private openCount:I

.field private opens:Lcom/sleepycat/asm/ByteVector;

.field private packageCount:I

.field private packages:Lcom/sleepycat/asm/ByteVector;

.field private provideCount:I

.field private provides:Lcom/sleepycat/asm/ByteVector;

.field private requireCount:I

.field private requires:Lcom/sleepycat/asm/ByteVector;

.field size:I

.field private useCount:I

.field private uses:Lcom/sleepycat/asm/ByteVector;

.field private final version:I


# direct methods
.method constructor <init>(Lcom/sleepycat/asm/ClassWriter;III)V
    .locals 1
    .param p1, "cw"    # Lcom/sleepycat/asm/ClassWriter;
    .param p2, "name"    # I
    .param p3, "access"    # I
    .param p4, "version"    # I

    .line 146
    const/high16 v0, 0x60000

    invoke-direct {p0, v0}, Lcom/sleepycat/asm/ModuleVisitor;-><init>(I)V

    .line 147
    iput-object p1, p0, Lcom/sleepycat/asm/ModuleWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    .line 148
    const/16 v0, 0x10

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->size:I

    .line 149
    iput p2, p0, Lcom/sleepycat/asm/ModuleWriter;->name:I

    .line 150
    iput p3, p0, Lcom/sleepycat/asm/ModuleWriter;->access:I

    .line 151
    iput p4, p0, Lcom/sleepycat/asm/ModuleWriter;->version:I

    .line 152
    return-void
.end method


# virtual methods
.method put(Lcom/sleepycat/asm/ByteVector;)V
    .locals 3
    .param p1, "out"    # Lcom/sleepycat/asm/ByteVector;

    .line 270
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->size:I

    invoke-virtual {p1, v0}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    .line 271
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->name:I

    invoke-virtual {p1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/asm/ModuleWriter;->access:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/asm/ModuleWriter;->version:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 272
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->requireCount:I

    invoke-virtual {p1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 273
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->requires:Lcom/sleepycat/asm/ByteVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, v0, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v2, p0, Lcom/sleepycat/asm/ModuleWriter;->requires:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 276
    :cond_0
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->exportCount:I

    invoke-virtual {p1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 277
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->exports:Lcom/sleepycat/asm/ByteVector;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, v0, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v2, p0, Lcom/sleepycat/asm/ModuleWriter;->exports:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 280
    :cond_1
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->openCount:I

    invoke-virtual {p1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 281
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->opens:Lcom/sleepycat/asm/ByteVector;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, v0, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v2, p0, Lcom/sleepycat/asm/ModuleWriter;->opens:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 284
    :cond_2
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->useCount:I

    invoke-virtual {p1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 285
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->uses:Lcom/sleepycat/asm/ByteVector;

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, v0, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v2, p0, Lcom/sleepycat/asm/ModuleWriter;->uses:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 288
    :cond_3
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->provideCount:I

    invoke-virtual {p1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 289
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->provides:Lcom/sleepycat/asm/ByteVector;

    if-eqz v0, :cond_4

    .line 290
    iget-object v0, v0, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget-object v2, p0, Lcom/sleepycat/asm/ModuleWriter;->provides:Lcom/sleepycat/asm/ByteVector;

    iget v2, v2, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 292
    :cond_4
    return-void
.end method

.method putAttributes(Lcom/sleepycat/asm/ByteVector;)V
    .locals 4
    .param p1, "out"    # Lcom/sleepycat/asm/ByteVector;

    .line 258
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->mainClass:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "ModuleMainClass"

    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lcom/sleepycat/asm/ModuleWriter;->mainClass:I

    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->packages:Lcom/sleepycat/asm/ByteVector;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v2, "ModulePackages"

    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lcom/sleepycat/asm/ModuleWriter;->packageCount:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v1

    .line 263
    invoke-virtual {v0, v2}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/asm/ModuleWriter;->packageCount:I

    .line 264
    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/asm/ModuleWriter;->packages:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, v1, Lcom/sleepycat/asm/ByteVector;->data:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sleepycat/asm/ModuleWriter;->packages:Lcom/sleepycat/asm/ByteVector;

    iget v3, v3, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 265
    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/asm/ByteVector;->putByteArray([BII)Lcom/sleepycat/asm/ByteVector;

    .line 267
    :cond_1
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 255
    return-void
.end method

.method public varargs visitExport(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 5
    .param p1, "packaze"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "modules"    # [Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->exports:Lcom/sleepycat/asm/ByteVector;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->exports:Lcom/sleepycat/asm/ByteVector;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->exports:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, p0, Lcom/sleepycat/asm/ModuleWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/sleepycat/asm/ClassWriter;->newPackage(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 196
    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 197
    iget-object v1, p0, Lcom/sleepycat/asm/ModuleWriter;->exports:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 198
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->size:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->size:I

    goto :goto_1

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/asm/ModuleWriter;->exports:Lcom/sleepycat/asm/ByteVector;

    array-length v2, p3

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 201
    array-length v1, p3

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p3, v0

    .line 202
    .local v2, "module":Ljava/lang/String;
    iget-object v3, p0, Lcom/sleepycat/asm/ModuleWriter;->exports:Lcom/sleepycat/asm/ByteVector;

    iget-object v4, p0, Lcom/sleepycat/asm/ModuleWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v4, v2}, Lcom/sleepycat/asm/ClassWriter;->newModule(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 201
    .end local v2    # "module":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_2
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->size:I

    array-length v1, p3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->size:I

    .line 206
    :goto_1
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->exportCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->exportCount:I

    .line 207
    return-void
.end method

.method public visitMainClass(Ljava/lang/String;)V
    .locals 2
    .param p1, "mainClass"    # Ljava/lang/String;

    .line 156
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->mainClass:I

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v1, "ModuleMainClass"

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 158
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->attributeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->attributeCount:I

    .line 159
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->attributesSize:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->attributesSize:I

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lcom/sleepycat/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->mainClass:I

    .line 162
    return-void
.end method

.method public varargs visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 5
    .param p1, "packaze"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "modules"    # [Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->opens:Lcom/sleepycat/asm/ByteVector;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->opens:Lcom/sleepycat/asm/ByteVector;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->opens:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, p0, Lcom/sleepycat/asm/ModuleWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/sleepycat/asm/ClassWriter;->newPackage(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 215
    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 216
    iget-object v1, p0, Lcom/sleepycat/asm/ModuleWriter;->opens:Lcom/sleepycat/asm/ByteVector;

    invoke-virtual {v1, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 217
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->size:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->size:I

    goto :goto_1

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/asm/ModuleWriter;->opens:Lcom/sleepycat/asm/ByteVector;

    array-length v2, p3

    invoke-virtual {v1, v2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 220
    array-length v1, p3

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p3, v0

    .line 221
    .local v2, "module":Ljava/lang/String;
    iget-object v3, p0, Lcom/sleepycat/asm/ModuleWriter;->opens:Lcom/sleepycat/asm/ByteVector;

    iget-object v4, p0, Lcom/sleepycat/asm/ModuleWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v4, v2}, Lcom/sleepycat/asm/ClassWriter;->newModule(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 220
    .end local v2    # "module":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_2
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->size:I

    array-length v1, p3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->size:I

    .line 225
    :goto_1
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->openCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->openCount:I

    .line 226
    return-void
.end method

.method public visitPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packaze"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->packages:Lcom/sleepycat/asm/ByteVector;

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    const-string v1, "ModulePackages"

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 169
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->packages:Lcom/sleepycat/asm/ByteVector;

    .line 170
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->attributeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->attributeCount:I

    .line 171
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->attributesSize:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->attributesSize:I

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->packages:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, p0, Lcom/sleepycat/asm/ModuleWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/sleepycat/asm/ClassWriter;->newPackage(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 174
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->packageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->packageCount:I

    .line 175
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->attributesSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->attributesSize:I

    .line 176
    return-void
.end method

.method public varargs visitProvide(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "providers"    # [Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->provides:Lcom/sleepycat/asm/ByteVector;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->provides:Lcom/sleepycat/asm/ByteVector;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->provides:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, p0, Lcom/sleepycat/asm/ModuleWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/sleepycat/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 244
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->provides:Lcom/sleepycat/asm/ByteVector;

    array-length v1, p2

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 245
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 246
    .local v2, "provider":Ljava/lang/String;
    iget-object v3, p0, Lcom/sleepycat/asm/ModuleWriter;->provides:Lcom/sleepycat/asm/ByteVector;

    iget-object v4, p0, Lcom/sleepycat/asm/ModuleWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v4, v2}, Lcom/sleepycat/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 245
    .end local v2    # "provider":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_1
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->provideCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->provideCount:I

    .line 249
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->size:I

    array-length v1, p2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->size:I

    .line 250
    return-void
.end method

.method public visitRequire(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "version"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->requires:Lcom/sleepycat/asm/ByteVector;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->requires:Lcom/sleepycat/asm/ByteVector;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->requires:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, p0, Lcom/sleepycat/asm/ModuleWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/sleepycat/asm/ClassWriter;->newModule(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    .line 184
    invoke-virtual {v0, p2}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    move-result-object v0

    if-nez p3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sleepycat/asm/ModuleWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    .line 185
    invoke-virtual {v1, p3}, Lcom/sleepycat/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 186
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->requireCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->requireCount:I

    .line 187
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->size:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->size:I

    .line 188
    return-void
.end method

.method public visitUse(Ljava/lang/String;)V
    .locals 2
    .param p1, "service"    # Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->uses:Lcom/sleepycat/asm/ByteVector;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/sleepycat/asm/ByteVector;

    invoke-direct {v0}, Lcom/sleepycat/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->uses:Lcom/sleepycat/asm/ByteVector;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/ModuleWriter;->uses:Lcom/sleepycat/asm/ByteVector;

    iget-object v1, p0, Lcom/sleepycat/asm/ModuleWriter;->cw:Lcom/sleepycat/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/sleepycat/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 234
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->useCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->useCount:I

    .line 235
    iget v0, p0, Lcom/sleepycat/asm/ModuleWriter;->size:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sleepycat/asm/ModuleWriter;->size:I

    .line 236
    return-void
.end method
