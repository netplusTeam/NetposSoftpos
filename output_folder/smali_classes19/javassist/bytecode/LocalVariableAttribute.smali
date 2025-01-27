.class public Ljavassist/bytecode/LocalVariableAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "LocalVariableAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "LocalVariableTable"

.field public static final typeTag:Ljava/lang/String; = "LocalVariableTypeTable"


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [B

    const-string v1, "LocalVariableTable"

    invoke-direct {p0, p1, v1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 42
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 43
    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "n"    # I
    .param p3, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [B

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 59
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 60
    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "i"    # [B

    .line 69
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 70
    return-void
.end method


# virtual methods
.method public addEntry(IIIII)V
    .locals 4
    .param p1, "startPc"    # I
    .param p2, "length"    # I
    .param p3, "nameIndex"    # I
    .param p4, "descriptorIndex"    # I
    .param p5, "index"    # I

    .line 83
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    array-length v0, v0

    .line 84
    .local v0, "size":I
    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [B

    .line 85
    .local v1, "newInfo":[B
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->tableLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 86
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 87
    iget-object v3, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    aget-byte v3, v3, v2

    aput-byte v3, v1, v2

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "i":I
    :cond_0
    invoke-static {p1, v1, v0}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 90
    add-int/lit8 v2, v0, 0x2

    invoke-static {p2, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 91
    add-int/lit8 v2, v0, 0x4

    invoke-static {p3, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 92
    add-int/lit8 v2, v0, 0x6

    invoke-static {p4, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 93
    add-int/lit8 v2, v0, 0x8

    invoke-static {p5, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 94
    iput-object v1, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    .line 95
    return-void
.end method

.method public codeLength(I)I
    .locals 2
    .param p1, "i"    # I

    .line 178
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    mul-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 13
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

    .line 299
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->get()[B

    move-result-object v0

    .line 300
    .local v0, "src":[B
    array-length v1, v0

    new-array v1, v1, [B

    .line 301
    .local v1, "dest":[B
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    .line 302
    .local v2, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {p0, p1, v1}, Ljavassist/bytecode/LocalVariableAttribute;->makeThisAttr(Ljavassist/bytecode/ConstPool;[B)Ljavassist/bytecode/LocalVariableAttribute;

    move-result-object v3

    .line 303
    .local v3, "attr":Ljavassist/bytecode/LocalVariableAttribute;
    const/4 v4, 0x0

    invoke-static {v0, v4}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v5

    .line 304
    .local v5, "n":I
    invoke-static {v5, v1, v4}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 305
    const/4 v4, 0x2

    .line 306
    .local v4, "j":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 307
    invoke-static {v0, v4}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v7

    .line 308
    .local v7, "start":I
    add-int/lit8 v8, v4, 0x2

    invoke-static {v0, v8}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v8

    .line 309
    .local v8, "len":I
    add-int/lit8 v9, v4, 0x4

    invoke-static {v0, v9}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v9

    .line 310
    .local v9, "name":I
    add-int/lit8 v10, v4, 0x6

    invoke-static {v0, v10}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v10

    .line 311
    .local v10, "type":I
    add-int/lit8 v11, v4, 0x8

    invoke-static {v0, v11}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v11

    .line 313
    .local v11, "index":I
    invoke-static {v7, v1, v4}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 314
    add-int/lit8 v12, v4, 0x2

    invoke-static {v8, v1, v12}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 315
    if-eqz v9, :cond_0

    .line 316
    const/4 v12, 0x0

    invoke-virtual {v2, v9, p1, v12}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v9

    .line 318
    :cond_0
    add-int/lit8 v12, v4, 0x4

    invoke-static {v9, v1, v12}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 320
    if-eqz v10, :cond_1

    .line 321
    invoke-virtual {v2, v10}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v12

    .line 322
    .local v12, "sig":Ljava/lang/String;
    invoke-static {v12, p2}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 323
    invoke-virtual {p1, v12}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v10

    .line 326
    .end local v12    # "sig":Ljava/lang/String;
    :cond_1
    add-int/lit8 v12, v4, 0x6

    invoke-static {v10, v1, v12}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 327
    add-int/lit8 v12, v4, 0x8

    invoke-static {v11, v1, v12}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 328
    nop

    .end local v7    # "start":I
    .end local v8    # "len":I
    .end local v9    # "name":I
    .end local v10    # "type":I
    .end local v11    # "index":I
    add-int/lit8 v4, v4, 0xa

    .line 306
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 331
    .end local v6    # "i":I
    :cond_2
    return-object v3
.end method

.method public descriptor(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .line 261
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljavassist/bytecode/LocalVariableAttribute;->descriptorIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public descriptorIndex(I)I
    .locals 2
    .param p1, "i"    # I

    .line 233
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    mul-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public index(I)I
    .locals 2
    .param p1, "i"    # I

    .line 288
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    mul-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method makeThisAttr(Ljavassist/bytecode/ConstPool;[B)Ljavassist/bytecode/LocalVariableAttribute;
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "dest"    # [B

    .line 336
    new-instance v0, Ljavassist/bytecode/LocalVariableAttribute;

    const-string v1, "LocalVariableTable"

    invoke-direct {v0, p1, v1, p2}, Ljavassist/bytecode/LocalVariableAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public nameIndex(I)I
    .locals 2
    .param p1, "i"    # I

    .line 207
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    mul-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0x6

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 100
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->tableLength()I

    move-result v1

    .line 101
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 102
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x2

    .line 103
    .local v3, "pos":I
    iget-object v4, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    add-int/lit8 v5, v3, 0x6

    invoke-static {v4, v5}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v4

    .line 104
    .local v4, "index":I
    if-eqz v4, :cond_0

    .line 105
    invoke-virtual {v0, v4}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "desc":Ljava/lang/String;
    invoke-virtual {p0, v5, p1, p2}, Ljavassist/bytecode/LocalVariableAttribute;->renameEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-virtual {v0, v5}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    add-int/lit8 v8, v3, 0x6

    invoke-static {v6, v7, v8}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 101
    .end local v3    # "pos":I
    .end local v4    # "index":I
    .end local v5    # "desc":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method renameClass(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 119
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->tableLength()I

    move-result v1

    .line 120
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 121
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x2

    .line 122
    .local v3, "pos":I
    iget-object v4, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    add-int/lit8 v5, v3, 0x6

    invoke-static {v4, v5}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v4

    .line 123
    .local v4, "index":I
    if-eqz v4, :cond_0

    .line 124
    invoke-virtual {v0, v4}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "desc":Ljava/lang/String;
    invoke-virtual {p0, v5, p1}, Ljavassist/bytecode/LocalVariableAttribute;->renameEntry(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-virtual {v0, v5}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    add-int/lit8 v8, v3, 0x6

    invoke-static {v6, v7, v8}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 120
    .end local v3    # "pos":I
    .end local v4    # "index":I
    .end local v5    # "desc":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method renameEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "oldname"    # Ljava/lang/String;
    .param p3, "newname"    # Ljava/lang/String;

    .line 113
    invoke-static {p1, p2, p3}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method renameEntry(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 132
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shiftIndex(II)V
    .locals 6
    .param p1, "lessThan"    # I
    .param p2, "delta"    # I

    .line 143
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    array-length v0, v0

    .line 144
    .local v0, "size":I
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 145
    iget-object v2, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    add-int/lit8 v3, v1, 0x8

    invoke-static {v2, v3}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v2

    .line 146
    .local v2, "org":I
    if-lt v2, p1, :cond_0

    .line 147
    add-int v3, v2, p2

    iget-object v4, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    add-int/lit8 v5, v1, 0x8

    invoke-static {v3, v4, v5}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 144
    .end local v2    # "org":I
    :cond_0
    add-int/lit8 v1, v1, 0xa

    goto :goto_0

    .line 149
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method shiftPc(IIZ)V
    .locals 8
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "exclusive"    # Z

    .line 185
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->tableLength()I

    move-result v0

    .line 186
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 187
    mul-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x2

    .line 188
    .local v2, "pos":I
    iget-object v3, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    invoke-static {v3, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v3

    .line 189
    .local v3, "pc":I
    iget-object v4, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    add-int/lit8 v5, v2, 0x2

    invoke-static {v4, v5}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v4

    .line 193
    .local v4, "len":I
    if-gt v3, p1, :cond_2

    if-eqz p3, :cond_0

    if-ne v3, p1, :cond_0

    if-eqz v3, :cond_0

    goto :goto_1

    .line 195
    :cond_0
    add-int v5, v3, v4

    if-gt v5, p1, :cond_1

    if-eqz p3, :cond_3

    add-int v5, v3, v4

    if-ne v5, p1, :cond_3

    .line 196
    :cond_1
    add-int v5, v4, p2

    iget-object v6, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    add-int/lit8 v7, v2, 0x2

    invoke-static {v5, v6, v7}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    goto :goto_2

    .line 194
    :cond_2
    :goto_1
    add-int v5, v3, p2

    iget-object v6, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    invoke-static {v5, v6, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 186
    .end local v2    # "pos":I
    .end local v3    # "pc":I
    .end local v4    # "len":I
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public signature(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .line 278
    invoke-virtual {p0, p1}, Ljavassist/bytecode/LocalVariableAttribute;->descriptor(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public signatureIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .line 247
    invoke-virtual {p0, p1}, Ljavassist/bytecode/LocalVariableAttribute;->descriptorIndex(I)I

    move-result v0

    return v0
.end method

.method public startPc(I)I
    .locals 2
    .param p1, "i"    # I

    .line 167
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    mul-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public tableLength()I
    .locals 2

    .line 156
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public variableName(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .line 217
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljavassist/bytecode/LocalVariableAttribute;->nameIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
