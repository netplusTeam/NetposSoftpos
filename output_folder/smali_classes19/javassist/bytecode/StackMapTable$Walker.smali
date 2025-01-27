.class public Ljavassist/bytecode/StackMapTable$Walker;
.super Ljava/lang/Object;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Walker"
.end annotation


# instance fields
.field info:[B

.field numOfEntries:I


# direct methods
.method public constructor <init>(Ljavassist/bytecode/StackMapTable;)V
    .locals 1
    .param p1, "smt"    # Ljavassist/bytecode/StackMapTable;

    .line 159
    invoke-virtual {p1}, Ljavassist/bytecode/StackMapTable;->get()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljavassist/bytecode/StackMapTable$Walker;-><init>([B)V

    .line 160
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    .line 172
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Walker;->numOfEntries:I

    .line 173
    return-void
.end method

.method private appendFrame(II)I
    .locals 9
    .param p1, "pos"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 286
    add-int/lit16 v0, p2, -0xfb

    .line 287
    .local v0, "k":I
    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v1

    .line 288
    .local v1, "offset":I
    new-array v2, v0, [I

    .line 289
    .local v2, "tags":[I
    new-array v3, v0, [I

    .line 290
    .local v3, "data":[I
    add-int/lit8 v4, p1, 0x3

    .line 291
    .local v4, "p":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 292
    iget-object v6, p0, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    aget-byte v7, v6, v4

    and-int/lit16 v7, v7, 0xff

    .line 293
    .local v7, "tag":I
    aput v7, v2, v5

    .line 294
    const/4 v8, 0x7

    if-eq v7, v8, :cond_1

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    goto :goto_1

    .line 300
    :cond_0
    const/4 v6, 0x0

    aput v6, v3, v5

    .line 301
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 295
    :cond_1
    :goto_1
    add-int/lit8 v8, v4, 0x1

    invoke-static {v6, v8}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v6

    aput v6, v3, v5

    .line 296
    aget v6, v3, v5

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v7, v6, v8}, Ljavassist/bytecode/StackMapTable$Walker;->objectOrUninitialized(III)V

    .line 297
    add-int/lit8 v4, v4, 0x3

    .line 291
    .end local v7    # "tag":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 305
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {p0, p1, v1, v2, v3}, Ljavassist/bytecode/StackMapTable$Walker;->appendFrame(II[I[I)V

    .line 306
    return v4
.end method

.method private fullFrame(I)I
    .locals 16
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 322
    move-object/from16 v7, p0

    iget-object v0, v7, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v8

    .line 323
    .local v8, "offset":I
    iget-object v0, v7, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    add-int/lit8 v1, p1, 0x3

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v9

    .line 324
    .local v9, "numOfLocals":I
    new-array v10, v9, [I

    .line 325
    .local v10, "localsTags":[I
    new-array v11, v9, [I

    .line 326
    .local v11, "localsData":[I
    add-int/lit8 v0, p1, 0x5

    invoke-direct {v7, v0, v9, v10, v11}, Ljavassist/bytecode/StackMapTable$Walker;->verifyTypeInfo(II[I[I)I

    move-result v0

    .line 327
    .local v0, "p":I
    iget-object v1, v7, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    invoke-static {v1, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v12

    .line 328
    .local v12, "numOfItems":I
    new-array v13, v12, [I

    .line 329
    .local v13, "itemsTags":[I
    new-array v14, v12, [I

    .line 330
    .local v14, "itemsData":[I
    add-int/lit8 v1, v0, 0x2

    invoke-direct {v7, v1, v12, v13, v14}, Ljavassist/bytecode/StackMapTable$Walker;->verifyTypeInfo(II[I[I)I

    move-result v15

    .line 331
    .end local v0    # "p":I
    .local v15, "p":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    move-object v3, v10

    move-object v4, v11

    move-object v5, v13

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Ljavassist/bytecode/StackMapTable$Walker;->fullFrame(II[I[I[I[I)V

    .line 332
    return v15
.end method

.method private sameLocals(II)I
    .locals 6
    .param p1, "pos"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 240
    move v0, p1

    .line 242
    .local v0, "top":I
    const/16 v1, 0x80

    if-ge p2, v1, :cond_0

    .line 243
    add-int/lit8 v1, p2, -0x40

    .local v1, "offset":I
    goto :goto_0

    .line 245
    .end local v1    # "offset":I
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v1

    .line 246
    .restart local v1    # "offset":I
    add-int/lit8 p1, p1, 0x2

    .line 249
    :goto_0
    iget-object v2, p0, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    .line 250
    .local v3, "tag":I
    const/4 v4, 0x0

    .line 251
    .local v4, "data":I
    const/4 v5, 0x7

    if-eq v3, v5, :cond_1

    const/16 v5, 0x8

    if-ne v3, v5, :cond_2

    .line 252
    :cond_1
    add-int/lit8 v5, p1, 0x2

    invoke-static {v2, v5}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v4

    .line 253
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v3, v4, v2}, Ljavassist/bytecode/StackMapTable$Walker;->objectOrUninitialized(III)V

    .line 254
    add-int/lit8 p1, p1, 0x2

    .line 257
    :cond_2
    invoke-virtual {p0, v0, v1, v3, v4}, Ljavassist/bytecode/StackMapTable$Walker;->sameLocals(IIII)V

    .line 258
    add-int/lit8 v2, p1, 0x2

    return v2
.end method

.method private verifyTypeInfo(II[I[I)I
    .locals 4
    .param p1, "pos"    # I
    .param p2, "n"    # I
    .param p3, "tags"    # [I
    .param p4, "data"    # [I

    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 353
    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "pos":I
    .local v2, "pos":I
    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    .line 354
    .local p1, "tag":I
    aput p1, p3, v0

    .line 355
    const/4 v3, 0x7

    if-eq p1, v3, :cond_1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    move p1, v2

    goto :goto_2

    .line 356
    :cond_1
    :goto_1
    invoke-static {v1, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v1

    aput v1, p4, v0

    .line 357
    aget v1, p4, v0

    invoke-virtual {p0, p1, v1, v2}, Ljavassist/bytecode/StackMapTable$Walker;->objectOrUninitialized(III)V

    .line 358
    add-int/lit8 v2, v2, 0x2

    move p1, v2

    .line 352
    .end local v2    # "pos":I
    .local p1, "pos":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "i":I
    :cond_2
    return p1
.end method


# virtual methods
.method public appendFrame(II[I[I)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "tags"    # [I
    .param p4, "data"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 319
    return-void
.end method

.method public chopFrame(III)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 283
    return-void
.end method

.method public fullFrame(II[I[I[I[I)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "localTags"    # [I
    .param p4, "localData"    # [I
    .param p5, "stackTags"    # [I
    .param p6, "stackData"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 349
    return-void
.end method

.method public objectOrUninitialized(III)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "data"    # I
    .param p3, "pos"    # I

    .line 373
    return-void
.end method

.method public parse()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 184
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Walker;->numOfEntries:I

    .line 185
    .local v0, "n":I
    const/4 v1, 0x2

    .line 186
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 187
    invoke-virtual {p0, v1, v2}, Ljavassist/bytecode/StackMapTable$Walker;->stackMapFrames(II)I

    move-result v1

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public sameFrame(II)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 237
    return-void
.end method

.method public sameLocals(IIII)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "offsetDelta"    # I
    .param p3, "stackTag"    # I
    .param p4, "stackData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 274
    return-void
.end method

.method public final size()I
    .locals 1

    .line 178
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Walker;->numOfEntries:I

    return v0
.end method

.method stackMapFrames(II)I
    .locals 4
    .param p1, "pos"    # I
    .param p2, "nth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    aget-byte v1, v0, p1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    .line 201
    .local v1, "type":I
    const/16 v3, 0x40

    if-ge v1, v3, :cond_0

    .line 202
    invoke-virtual {p0, p1, v1}, Ljavassist/bytecode/StackMapTable$Walker;->sameFrame(II)V

    .line 203
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 205
    :cond_0
    const/16 v3, 0x80

    if-ge v1, v3, :cond_1

    .line 206
    invoke-direct {p0, p1, v1}, Ljavassist/bytecode/StackMapTable$Walker;->sameLocals(II)I

    move-result p1

    goto :goto_0

    .line 207
    :cond_1
    const/16 v3, 0xf7

    if-lt v1, v3, :cond_6

    .line 209
    if-ne v1, v3, :cond_2

    .line 210
    invoke-direct {p0, p1, v1}, Ljavassist/bytecode/StackMapTable$Walker;->sameLocals(II)I

    move-result p1

    goto :goto_0

    .line 211
    :cond_2
    const/16 v3, 0xfb

    if-ge v1, v3, :cond_3

    .line 212
    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 213
    .local v0, "offset":I
    rsub-int v2, v1, 0xfb

    invoke-virtual {p0, p1, v0, v2}, Ljavassist/bytecode/StackMapTable$Walker;->chopFrame(III)V

    .line 214
    nop

    .end local v0    # "offset":I
    add-int/lit8 p1, p1, 0x3

    .line 215
    goto :goto_0

    .line 216
    :cond_3
    if-ne v1, v3, :cond_4

    .line 217
    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 218
    .restart local v0    # "offset":I
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/StackMapTable$Walker;->sameFrame(II)V

    .line 219
    nop

    .end local v0    # "offset":I
    add-int/lit8 p1, p1, 0x3

    .line 220
    goto :goto_0

    .line 221
    :cond_4
    if-ge v1, v2, :cond_5

    .line 222
    invoke-direct {p0, p1, v1}, Ljavassist/bytecode/StackMapTable$Walker;->appendFrame(II)I

    move-result p1

    goto :goto_0

    .line 224
    :cond_5
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Walker;->fullFrame(I)I

    move-result p1

    .line 226
    :goto_0
    return p1

    .line 208
    :cond_6
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    const-string v2, "bad frame_type in StackMapTable"

    invoke-direct {v0, v2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v0
.end method
