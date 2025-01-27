.class public Lcom/itextpdf/layout/hyphenation/CharVector;
.super Ljava/lang/Object;
.source "CharVector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_BLOCK_SIZE:I = 0x800

.field private static final serialVersionUID:J = 0x3b2ae616a3a8a810L


# instance fields
.field private array:[C

.field private blockSize:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/hyphenation/CharVector;-><init>(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-lez p1, :cond_0

    .line 61
    iput p1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    goto :goto_0

    .line 63
    :cond_0
    const/16 v0, 0x800

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    .line 65
    :goto_0
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/hyphenation/CharVector;)V
    .locals 1
    .param p1, "cv"    # Lcom/itextpdf/layout/hyphenation/CharVector;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iget-object v0, p1, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    .line 100
    iget v0, p1, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    .line 101
    iget v0, p1, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    .line 102
    return-void
.end method

.method public constructor <init>([C)V
    .locals 1
    .param p1, "a"    # [C

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/16 v0, 0x800

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    .line 75
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    .line 76
    array-length v0, p1

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    .line 77
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1
    .param p1, "a"    # [C
    .param p2, "capacity"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-lez p2, :cond_0

    .line 86
    iput p2, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    goto :goto_0

    .line 88
    :cond_0
    const/16 v0, 0x800

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    .line 90
    :goto_0
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    .line 91
    array-length v0, p1

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    .line 92
    return-void
.end method


# virtual methods
.method public alloc(I)I
    .locals 5
    .param p1, "size"    # I

    .line 159
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    .line 160
    .local v0, "index":I
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    array-length v2, v1

    .line 161
    .local v2, "len":I
    iget v3, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    add-int/2addr v3, p1

    if-lt v3, v2, :cond_0

    .line 162
    iget v3, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->blockSize:I

    add-int/2addr v3, v2

    new-array v3, v3, [C

    .line 163
    .local v3, "aux":[C
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iput-object v3, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    .line 166
    .end local v3    # "aux":[C
    :cond_0
    iget v1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    .line 167
    return v0
.end method

.method public capacity()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    .line 109
    return-void
.end method

.method public get(I)C
    .locals 1
    .param p1, "index"    # I

    .line 150
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public getArray()[C
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    return v0
.end method

.method public put(IC)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "val"    # C

    .line 141
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    aput-char p2, v0, p1

    .line 142
    return-void
.end method

.method public trimToSize()V
    .locals 4

    .line 174
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->n:I

    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 175
    new-array v2, v0, [C

    .line 176
    .local v2, "aux":[C
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iput-object v2, p0, Lcom/itextpdf/layout/hyphenation/CharVector;->array:[C

    .line 179
    .end local v2    # "aux":[C
    :cond_0
    return-void
.end method
