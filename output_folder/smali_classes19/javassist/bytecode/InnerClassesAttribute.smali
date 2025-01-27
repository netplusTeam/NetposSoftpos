.class public Ljavassist/bytecode/InnerClassesAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "InnerClassesAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "InnerClasses"


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [B

    const-string v1, "InnerClasses"

    invoke-direct {p0, p1, v1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 49
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 50
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

    .line 35
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Ljavassist/bytecode/ConstPool;[B)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "info"    # [B

    .line 39
    const-string v0, "InnerClasses"

    invoke-direct {p0, p1, v0, p2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 40
    return-void
.end method


# virtual methods
.method public accessFlags(I)I
    .locals 2
    .param p1, "nth"    # I

    .line 147
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public append(IIII)V
    .locals 6
    .param p1, "inner"    # I
    .param p2, "outer"    # I
    .param p3, "name"    # I
    .param p4, "flags"    # I

    .line 198
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    .line 199
    .local v0, "data":[B
    array-length v1, v0

    .line 200
    .local v1, "len":I
    add-int/lit8 v2, v1, 0x8

    new-array v2, v2, [B

    .line 201
    .local v2, "newData":[B
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 202
    aget-byte v4, v0, v3

    aput-byte v4, v2, v3

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v4

    .line 205
    .local v4, "n":I
    add-int/lit8 v5, v4, 0x1

    invoke-static {v5, v2, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 207
    invoke-static {p1, v2, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 208
    add-int/lit8 v3, v1, 0x2

    invoke-static {p2, v2, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 209
    add-int/lit8 v3, v1, 0x4

    invoke-static {p3, v2, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 210
    add-int/lit8 v3, v1, 0x6

    invoke-static {p4, v2, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 212
    invoke-virtual {p0, v2}, Ljavassist/bytecode/InnerClassesAttribute;->set([B)V

    .line 213
    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "inner"    # Ljava/lang/String;
    .param p2, "outer"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .line 183
    iget-object v0, p0, Ljavassist/bytecode/InnerClassesAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, "i":I
    iget-object v1, p0, Ljavassist/bytecode/InnerClassesAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, p2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v1

    .line 185
    .local v1, "o":I
    iget-object v2, p0, Ljavassist/bytecode/InnerClassesAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v2, p3}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    .line 186
    .local v2, "n":I
    invoke-virtual {p0, v0, v1, v2, p4}, Ljavassist/bytecode/InnerClassesAttribute;->append(IIII)V

    .line 187
    return-void
.end method

.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 12
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

    .line 259
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    .line 260
    .local v0, "src":[B
    array-length v1, v0

    new-array v1, v1, [B

    .line 261
    .local v1, "dest":[B
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    .line 262
    .local v2, "cp":Ljavassist/bytecode/ConstPool;
    new-instance v3, Ljavassist/bytecode/InnerClassesAttribute;

    invoke-direct {v3, p1, v1}, Ljavassist/bytecode/InnerClassesAttribute;-><init>(Ljavassist/bytecode/ConstPool;[B)V

    .line 263
    .local v3, "attr":Ljavassist/bytecode/InnerClassesAttribute;
    const/4 v4, 0x0

    invoke-static {v0, v4}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v5

    .line 264
    .local v5, "n":I
    invoke-static {v5, v1, v4}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 265
    const/4 v4, 0x2

    .line 266
    .local v4, "j":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 267
    invoke-static {v0, v4}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v7

    .line 268
    .local v7, "innerClass":I
    add-int/lit8 v8, v4, 0x2

    invoke-static {v0, v8}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v8

    .line 269
    .local v8, "outerClass":I
    add-int/lit8 v9, v4, 0x4

    invoke-static {v0, v9}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v9

    .line 270
    .local v9, "innerName":I
    add-int/lit8 v10, v4, 0x6

    invoke-static {v0, v10}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v10

    .line 272
    .local v10, "innerAccess":I
    if-eqz v7, :cond_0

    .line 273
    invoke-virtual {v2, v7, p1, p2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v7

    .line 275
    :cond_0
    invoke-static {v7, v1, v4}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 277
    if-eqz v8, :cond_1

    .line 278
    invoke-virtual {v2, v8, p1, p2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v8

    .line 280
    :cond_1
    add-int/lit8 v11, v4, 0x2

    invoke-static {v8, v1, v11}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 282
    if-eqz v9, :cond_2

    .line 283
    invoke-virtual {v2, v9, p1, p2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v9

    .line 285
    :cond_2
    add-int/lit8 v11, v4, 0x4

    invoke-static {v9, v1, v11}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 286
    add-int/lit8 v11, v4, 0x6

    invoke-static {v10, v1, v11}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 287
    nop

    .end local v7    # "innerClass":I
    .end local v8    # "outerClass":I
    .end local v9    # "innerName":I
    .end local v10    # "innerAccess":I
    add-int/lit8 v4, v4, 0x8

    .line 266
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 290
    .end local v6    # "i":I
    :cond_3
    return-object v3
.end method

.method public find(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->tableLength()I

    move-result v0

    .line 167
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 168
    invoke-virtual {p0, v1}, Ljavassist/bytecode/InnerClassesAttribute;->innerClass(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    return v1

    .line 167
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public innerClass(I)Ljava/lang/String;
    .locals 2
    .param p1, "nth"    # I

    .line 73
    invoke-virtual {p0, p1}, Ljavassist/bytecode/InnerClassesAttribute;->innerClassIndex(I)I

    move-result v0

    .line 74
    .local v0, "i":I
    if-nez v0, :cond_0

    .line 75
    const/4 v1, 0x0

    return-object v1

    .line 76
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/InnerClassesAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public innerClassIndex(I)I
    .locals 2
    .param p1, "nth"    # I

    .line 61
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public innerName(I)Ljava/lang/String;
    .locals 2
    .param p1, "nth"    # I

    .line 129
    invoke-virtual {p0, p1}, Ljavassist/bytecode/InnerClassesAttribute;->innerNameIndex(I)I

    move-result v0

    .line 130
    .local v0, "i":I
    if-nez v0, :cond_0

    .line 131
    const/4 v1, 0x0

    return-object v1

    .line 132
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/InnerClassesAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public innerNameIndex(I)I
    .locals 2
    .param p1, "nth"    # I

    .line 119
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x6

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public outerClass(I)Ljava/lang/String;
    .locals 2
    .param p1, "nth"    # I

    .line 101
    invoke-virtual {p0, p1}, Ljavassist/bytecode/InnerClassesAttribute;->outerClassIndex(I)I

    move-result v0

    .line 102
    .local v0, "i":I
    if-nez v0, :cond_0

    .line 103
    const/4 v1, 0x0

    return-object v1

    .line 104
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/InnerClassesAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public outerClassIndex(I)I
    .locals 2
    .param p1, "nth"    # I

    .line 91
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public remove(I)I
    .locals 9
    .param p1, "nth"    # I

    .line 226
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    .line 227
    .local v0, "data":[B
    array-length v1, v0

    .line 228
    .local v1, "len":I
    const/4 v2, 0x0

    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    .line 229
    return v2

    .line 231
    :cond_0
    invoke-static {v0, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v3

    .line 232
    .local v3, "n":I
    mul-int/lit8 v4, p1, 0x8

    add-int/lit8 v4, v4, 0x2

    .line 233
    .local v4, "nthPos":I
    if-gt v3, p1, :cond_1

    .line 234
    return v3

    .line 236
    :cond_1
    add-int/lit8 v5, v1, -0x8

    new-array v5, v5, [B

    .line 237
    .local v5, "newData":[B
    add-int/lit8 v6, v3, -0x1

    invoke-static {v6, v5, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 238
    const/4 v2, 0x2

    .local v2, "i":I
    const/4 v6, 0x2

    .line 239
    .local v6, "j":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 240
    if-ne v2, v4, :cond_2

    .line 241
    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 243
    :cond_2
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .local v7, "j":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "i":I
    .local v8, "i":I
    aget-byte v2, v0, v2

    aput-byte v2, v5, v6

    move v6, v7

    move v2, v8

    goto :goto_0

    .line 245
    .end local v7    # "j":I
    .end local v8    # "i":I
    .restart local v2    # "i":I
    .restart local v6    # "j":I
    :cond_3
    invoke-virtual {p0, v5}, Ljavassist/bytecode/InnerClassesAttribute;->set([B)V

    .line 246
    add-int/lit8 v7, v3, -0x1

    return v7
.end method

.method public setAccessFlags(II)V
    .locals 2
    .param p1, "nth"    # I
    .param p2, "flags"    # I

    .line 155
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x8

    invoke-static {p2, v0, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 156
    return-void
.end method

.method public setInnerClassIndex(II)V
    .locals 2
    .param p1, "nth"    # I
    .param p2, "index"    # I

    .line 84
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x2

    invoke-static {p2, v0, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 85
    return-void
.end method

.method public setInnerNameIndex(II)V
    .locals 2
    .param p1, "nth"    # I
    .param p2, "index"    # I

    .line 140
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x6

    invoke-static {p2, v0, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 141
    return-void
.end method

.method public setOuterClassIndex(II)V
    .locals 2
    .param p1, "nth"    # I
    .param p2, "index"    # I

    .line 112
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x4

    invoke-static {p2, v0, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 113
    return-void
.end method

.method public tableLength()I
    .locals 2

    .line 55
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method
