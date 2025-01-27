.class public Lorg/jline/reader/impl/BufferImpl;
.super Ljava/lang/Object;
.source "BufferImpl.java"

# interfaces
.implements Lorg/jline/reader/Buffer;


# instance fields
.field private buffer:[I

.field private cursor:I

.field private cursorCol:I

.field private g0:I

.field private g1:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/BufferImpl;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    .line 25
    const/4 v1, -0x1

    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursorCol:I

    .line 35
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    .line 36
    iput v0, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    .line 37
    array-length v0, v1

    iput v0, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    .line 38
    return-void
.end method

.method private constructor <init>(Lorg/jline/reader/impl/BufferImpl;)V
    .locals 1
    .param p1, "buffer"    # Lorg/jline/reader/impl/BufferImpl;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursorCol:I

    .line 41
    iget v0, p1, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    iput v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    .line 42
    iget v0, p1, Lorg/jline/reader/impl/BufferImpl;->cursorCol:I

    iput v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursorCol:I

    .line 43
    iget-object v0, p1, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    .line 44
    iget v0, p1, Lorg/jline/reader/impl/BufferImpl;->g0:I

    iput v0, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    .line 45
    iget v0, p1, Lorg/jline/reader/impl/BufferImpl;->g1:I

    iput v0, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    .line 46
    return-void
.end method

.method private adjust(I)I
    .locals 2
    .param p1, "i"    # I

    .line 99
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    if-lt p1, v0, :cond_0

    iget v1, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method private getCursorCol()I
    .locals 3

    .line 296
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursorCol:I

    if-gez v0, :cond_1

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursorCol:I

    .line 298
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    add-int/lit8 v0, v0, -0x1

    .line 299
    .local v0, "pnl":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/BufferImpl;->atChar(I)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 300
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 302
    :cond_0
    iget v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursorCol:I

    .line 304
    .end local v0    # "pnl":I
    :cond_1
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursorCol:I

    return v0
.end method

.method private moveGapToCursor()V
    .locals 4

    .line 360
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    iget v1, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    if-ge v0, v1, :cond_0

    .line 361
    sub-int/2addr v1, v0

    .line 362
    .local v1, "l":I
    iget-object v2, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    iget v3, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    sub-int/2addr v3, v1

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    .line 364
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    .end local v1    # "l":I
    goto :goto_0

    .line 365
    :cond_0
    if-le v0, v1, :cond_1

    .line 366
    sub-int/2addr v0, v1

    .line 367
    .local v0, "l":I
    iget-object v2, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    iget v3, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    invoke-static {v2, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    iget v1, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    .line 369
    iget v1, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    goto :goto_1

    .line 365
    .end local v0    # "l":I
    :cond_1
    :goto_0
    nop

    .line 371
    :goto_1
    return-void
.end method

.method private write([I)V
    .locals 8
    .param p1, "ucps"    # [I

    .line 144
    invoke-direct {p0}, Lorg/jline/reader/impl/BufferImpl;->moveGapToCursor()V

    .line 145
    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->length()I

    move-result v0

    array-length v1, p1

    add-int/2addr v0, v1

    .line 146
    .local v0, "len":I
    iget-object v1, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    array-length v1, v1

    .line 147
    .local v1, "sz":I
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    .line 148
    :goto_0
    if-ge v1, v0, :cond_0

    .line 149
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 151
    :cond_0
    new-array v3, v1, [I

    .line 152
    .local v3, "nb":[I
    iget-object v4, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    iget v5, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    invoke-static {v4, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v4, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    iget v5, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    add-int v6, v5, v1

    array-length v7, v4

    sub-int/2addr v6, v7

    array-length v7, v4

    sub-int/2addr v7, v5

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget v4, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    iget-object v5, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    array-length v5, v5

    sub-int v5, v1, v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    .line 155
    iput-object v3, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    .line 157
    .end local v3    # "nb":[I
    :cond_1
    iget-object v3, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    iget v4, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    array-length v5, p1

    invoke-static {p1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget v2, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    array-length v3, p1

    add-int/2addr v2, v3

    iput v2, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    .line 159
    iget v2, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    array-length v3, p1

    add-int/2addr v2, v3

    iput v2, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    .line 160
    const/4 v2, -0x1

    iput v2, p0, Lorg/jline/reader/impl/BufferImpl;->cursorCol:I

    .line 161
    return-void
.end method


# virtual methods
.method public atChar(I)I
    .locals 2
    .param p1, "i"    # I

    .line 92
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    invoke-direct {p0, p1}, Lorg/jline/reader/impl/BufferImpl;->adjust(I)I

    move-result v1

    aget v0, v0, v1

    return v0

    .line 93
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public backspace(I)I
    .locals 2
    .param p1, "num"    # I

    .line 313
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 314
    .local v0, "count":I
    invoke-direct {p0}, Lorg/jline/reader/impl/BufferImpl;->moveGapToCursor()V

    .line 315
    iget v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    .line 316
    iget v1, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    .line 317
    const/4 v1, -0x1

    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursorCol:I

    .line 318
    return v0
.end method

.method public backspace()Z
    .locals 2

    .line 327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/BufferImpl;->backspace(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clear()Z
    .locals 2

    .line 164
    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 165
    return v1

    .line 167
    :cond_0
    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    .line 168
    iget-object v0, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    array-length v0, v0

    iput v0, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    .line 169
    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursorCol:I

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic copy()Lorg/jline/reader/Buffer;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->copy()Lorg/jline/reader/impl/BufferImpl;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/jline/reader/impl/BufferImpl;
    .locals 1

    .line 49
    new-instance v0, Lorg/jline/reader/impl/BufferImpl;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/BufferImpl;-><init>(Lorg/jline/reader/impl/BufferImpl;)V

    return-object v0
.end method

.method public copyFrom(Lorg/jline/reader/Buffer;)V
    .locals 2
    .param p1, "buf"    # Lorg/jline/reader/Buffer;

    .line 348
    instance-of v0, p1, Lorg/jline/reader/impl/BufferImpl;

    if-eqz v0, :cond_0

    .line 351
    move-object v0, p1

    check-cast v0, Lorg/jline/reader/impl/BufferImpl;

    .line 352
    .local v0, "that":Lorg/jline/reader/impl/BufferImpl;
    iget v1, v0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    .line 353
    iget v1, v0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    .line 354
    iget-object v1, v0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    .line 355
    iget v1, v0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    .line 356
    iget v1, v0, Lorg/jline/reader/impl/BufferImpl;->cursorCol:I

    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursorCol:I

    .line 357
    return-void

    .line 349
    .end local v0    # "that":Lorg/jline/reader/impl/BufferImpl;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public currChar()I
    .locals 2

    .line 70
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 71
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/BufferImpl;->atChar(I)I

    move-result v0

    return v0
.end method

.method public currChar(I)Z
    .locals 2
    .param p1, "ch"    # I

    .line 61
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 62
    const/4 v0, 0x0

    return v0

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    iget v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    invoke-direct {p0, v1}, Lorg/jline/reader/impl/BufferImpl;->adjust(I)I

    move-result v1

    aput p1, v0, v1

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public cursor()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    return v0
.end method

.method public cursor(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 201
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 202
    return v1

    .line 204
    :cond_0
    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/BufferImpl;->move(I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public delete(I)I
    .locals 2
    .param p1, "num"    # I

    .line 331
    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->length()I

    move-result v0

    iget v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 332
    .local v0, "count":I
    invoke-direct {p0}, Lorg/jline/reader/impl/BufferImpl;->moveGapToCursor()V

    .line 333
    iget v1, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    .line 334
    const/4 v1, -0x1

    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursorCol:I

    .line 335
    return v0
.end method

.method public delete()Z
    .locals 2

    .line 339
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/BufferImpl;->delete(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public down()Z
    .locals 5

    .line 255
    invoke-direct {p0}, Lorg/jline/reader/impl/BufferImpl;->getCursorCol()I

    move-result v0

    .line 256
    .local v0, "col":I
    iget v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    .line 257
    .local v1, "nnl":I
    :goto_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/BufferImpl;->atChar(I)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 261
    const/4 v2, 0x0

    return v2

    .line 263
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 264
    .local v2, "nnnl":I
    :goto_1
    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Lorg/jline/reader/impl/BufferImpl;->atChar(I)I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 267
    :cond_2
    add-int v3, v1, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    .line 268
    return v4
.end method

.method public length()I
    .locals 3

    .line 57
    iget-object v0, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    array-length v0, v0

    iget v1, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    iget v2, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public move(I)I
    .locals 4
    .param p1, "num"    # I

    .line 214
    move v0, p1

    .line 216
    .local v0, "where":I
    iget v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-gtz v0, :cond_0

    .line 217
    return v2

    .line 220
    :cond_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->length()I

    move-result v3

    if-ne v1, v3, :cond_1

    if-ltz v0, :cond_1

    .line 221
    return v2

    .line 224
    :cond_1
    iget v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    add-int v2, v1, v0

    if-gez v2, :cond_2

    .line 225
    neg-int v0, v1

    goto :goto_0

    .line 227
    :cond_2
    add-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->length()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 228
    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->length()I

    move-result v1

    iget v2, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    sub-int v0, v1, v2

    .line 231
    :cond_3
    :goto_0
    iget v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    .line 232
    const/4 v1, -0x1

    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursorCol:I

    .line 234
    return v0
.end method

.method public moveXY(II)Z
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "col":I
    :goto_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->prevChar()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/BufferImpl;->move(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursorCol:I

    .line 277
    :goto_1
    if-gez p2, :cond_1

    .line 278
    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->up()Z

    .line 279
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 281
    :cond_1
    :goto_2
    if-lez p2, :cond_2

    .line 282
    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->down()Z

    .line 283
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 285
    :cond_2
    add-int v3, v0, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 286
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/4 v3, 0x1

    if-ge v1, v0, :cond_4

    .line 287
    invoke-virtual {p0, v3}, Lorg/jline/reader/impl/BufferImpl;->move(I)I

    move-result v4

    if-ne v4, v3, :cond_4

    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->currChar()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 288
    goto :goto_4

    .line 286
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 291
    .end local v1    # "i":I
    :cond_4
    :goto_4
    iput v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursorCol:I

    .line 292
    return v3
.end method

.method public nextChar()I
    .locals 2

    .line 85
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 86
    const/4 v0, 0x0

    return v0

    .line 88
    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/BufferImpl;->atChar(I)I

    move-result v0

    return v0
.end method

.method public prevChar()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    if-gtz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/BufferImpl;->atChar(I)I

    move-result v0

    return v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I

    .line 175
    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jline/reader/impl/BufferImpl;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 179
    if-ge p1, p2, :cond_3

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->length()I

    move-result v0

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    if-gt p2, v0, :cond_1

    .line 183
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([III)V

    return-object v0

    .line 184
    :cond_1
    if-le p1, v0, :cond_2

    .line 185
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    iget v3, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    sub-int/2addr v3, v0

    add-int/2addr v3, p1

    sub-int v0, p2, p1

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([III)V

    return-object v1

    .line 187
    :cond_2
    iget-object v0, p0, Lorg/jline/reader/impl/BufferImpl;->buffer:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 188
    .local v0, "b":[I
    iget v1, p0, Lorg/jline/reader/impl/BufferImpl;->g1:I

    iget v2, p0, Lorg/jline/reader/impl/BufferImpl;->g0:I

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    new-instance v1, Ljava/lang/String;

    sub-int v2, p2, p1

    invoke-direct {v1, v0, p1, v2}, Ljava/lang/String;-><init>([III)V

    return-object v1

    .line 180
    .end local v0    # "b":[I
    :cond_3
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 344
    invoke-virtual {p0}, Lorg/jline/reader/impl/BufferImpl;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/jline/reader/impl/BufferImpl;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public up()Z
    .locals 6

    .line 238
    invoke-direct {p0}, Lorg/jline/reader/impl/BufferImpl;->getCursorCol()I

    move-result v0

    .line 239
    .local v0, "col":I
    iget v1, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 240
    .local v1, "pnl":I
    :goto_0
    const/16 v3, 0xa

    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/BufferImpl;->atChar(I)I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 241
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 243
    :cond_0
    if-gez v1, :cond_1

    .line 244
    const/4 v2, 0x0

    return v2

    .line 246
    :cond_1
    add-int/lit8 v4, v1, -0x1

    .line 247
    .local v4, "ppnl":I
    :goto_1
    if-ltz v4, :cond_2

    invoke-virtual {p0, v4}, Lorg/jline/reader/impl/BufferImpl;->atChar(I)I

    move-result v5

    if-eq v5, v3, :cond_2

    .line 248
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 250
    :cond_2
    add-int v3, v4, v0

    add-int/2addr v3, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    .line 251
    return v2
.end method

.method public upToCursor()Ljava/lang/String;
    .locals 2

    .line 194
    iget v0, p0, Lorg/jline/reader/impl/BufferImpl;->cursor:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/jline/reader/impl/BufferImpl;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "c"    # I

    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/BufferImpl;->write([I)V

    .line 110
    return-void
.end method

.method public write(IZ)V
    .locals 2
    .param p1, "c"    # I
    .param p2, "overTyping"    # Z

    .line 120
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/BufferImpl;->delete(I)I

    .line 123
    :cond_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/BufferImpl;->write([I)V

    .line 124
    return-void
.end method

.method public write(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 130
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-interface {p1}, Ljava/lang/CharSequence;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/BufferImpl;->write([I)V

    .line 132
    return-void
.end method

.method public write(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "overTyping"    # Z

    .line 135
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-interface {p1}, Ljava/lang/CharSequence;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 137
    .local v0, "ucps":[I
    if-eqz p2, :cond_0

    .line 138
    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/BufferImpl;->delete(I)I

    .line 140
    :cond_0
    invoke-direct {p0, v0}, Lorg/jline/reader/impl/BufferImpl;->write([I)V

    .line 141
    return-void
.end method
