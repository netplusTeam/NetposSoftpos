.class public Lcom/itextpdf/layout/hyphenation/ByteVector;
.super Ljava/lang/Object;
.source "ByteVector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_BLOCK_SIZE:I = 0x800

.field private static final serialVersionUID:J = 0x1592f3c96e765314L


# instance fields
.field private array:[B

.field private blockSize:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/hyphenation/ByteVector;-><init>(I)V

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
    iput p1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->blockSize:I

    goto :goto_0

    .line 63
    :cond_0
    const/16 v0, 0x800

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->blockSize:I

    .line 65
    :goto_0
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->n:I

    .line 67
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "a"    # [B

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/16 v0, 0x800

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->blockSize:I

    .line 77
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->n:I

    .line 79
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "a"    # [B
    .param p2, "capacity"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-lez p2, :cond_0

    .line 90
    iput p2, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->blockSize:I

    goto :goto_0

    .line 92
    :cond_0
    const/16 v0, 0x800

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->blockSize:I

    .line 94
    :goto_0
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->n:I

    .line 96
    return-void
.end method


# virtual methods
.method public alloc(I)I
    .locals 5
    .param p1, "size"    # I

    .line 146
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->n:I

    .line 147
    .local v0, "index":I
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    array-length v2, v1

    .line 148
    .local v2, "len":I
    iget v3, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->n:I

    add-int/2addr v3, p1

    if-lt v3, v2, :cond_0

    .line 149
    iget v3, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->blockSize:I

    add-int/2addr v3, v2

    new-array v3, v3, [B

    .line 150
    .local v3, "aux":[B
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iput-object v3, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    .line 153
    .end local v3    # "aux":[B
    :cond_0
    iget v1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->n:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->n:I

    .line 154
    return v0
.end method

.method public capacity()I
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    array-length v0, v0

    return v0
.end method

.method public get(I)B
    .locals 1
    .param p1, "index"    # I

    .line 137
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getArray()[B
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->n:I

    return v0
.end method

.method public put(IB)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "val"    # B

    .line 128
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    aput-byte p2, v0, p1

    .line 129
    return-void
.end method

.method public trimToSize()V
    .locals 4

    .line 161
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->n:I

    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 162
    new-array v2, v0, [B

    .line 163
    .local v2, "aux":[B
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iput-object v2, p0, Lcom/itextpdf/layout/hyphenation/ByteVector;->array:[B

    .line 166
    .end local v2    # "aux":[B
    :cond_0
    return-void
.end method
