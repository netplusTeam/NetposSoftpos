.class Ljavassist/bytecode/ByteVector;
.super Ljava/lang/Object;
.source "Bytecode.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private buffer:[B

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/ByteVector;->size:I

    .line 29
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3
    .param p1, "code"    # I

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteVector;->addGap(I)V

    .line 62
    iget-object v1, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    iget v2, p0, Ljavassist/bytecode/ByteVector;->size:I

    sub-int/2addr v2, v0

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    .line 63
    return-void
.end method

.method public add(II)V
    .locals 4
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .line 66
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteVector;->addGap(I)V

    .line 67
    iget-object v0, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    iget v1, p0, Ljavassist/bytecode/ByteVector;->size:I

    add-int/lit8 v2, v1, -0x2

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 68
    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 69
    return-void
.end method

.method public add(IIII)V
    .locals 4
    .param p1, "b1"    # I
    .param p2, "b2"    # I
    .param p3, "b3"    # I
    .param p4, "b4"    # I

    .line 72
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteVector;->addGap(I)V

    .line 73
    iget-object v0, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    iget v1, p0, Ljavassist/bytecode/ByteVector;->size:I

    add-int/lit8 v2, v1, -0x4

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 74
    add-int/lit8 v2, v1, -0x3

    int-to-byte v3, p2

    aput-byte v3, v0, v2

    .line 75
    add-int/lit8 v2, v1, -0x2

    int-to-byte v3, p3

    aput-byte v3, v0, v2

    .line 76
    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, p4

    aput-byte v2, v0, v1

    .line 77
    return-void
.end method

.method public addGap(I)V
    .locals 5
    .param p1, "length"    # I

    .line 80
    iget v0, p0, Ljavassist/bytecode/ByteVector;->size:I

    add-int v1, v0, p1

    iget-object v2, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    array-length v3, v2

    if-le v1, v3, :cond_1

    .line 81
    shl-int/lit8 v1, v0, 0x1

    .line 82
    .local v1, "newSize":I
    add-int v3, v0, p1

    if-ge v1, v3, :cond_0

    .line 83
    add-int v1, v0, p1

    .line 85
    :cond_0
    new-array v3, v1, [B

    .line 86
    .local v3, "newBuf":[B
    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iput-object v3, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    .line 90
    .end local v1    # "newSize":I
    .end local v3    # "newBuf":[B
    :cond_1
    iget v0, p0, Ljavassist/bytecode/ByteVector;->size:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavassist/bytecode/ByteVector;->size:I

    .line 91
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ByteVector;

    .line 34
    .local v0, "bv":Ljavassist/bytecode/ByteVector;
    iget-object v1, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Ljavassist/bytecode/ByteVector;->buffer:[B

    .line 35
    return-object v0
.end method

.method public final copy()[B
    .locals 4

    .line 41
    iget v0, p0, Ljavassist/bytecode/ByteVector;->size:I

    new-array v1, v0, [B

    .line 42
    .local v1, "b":[B
    iget-object v2, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    return-object v1
.end method

.method public final getSize()I
    .locals 1

    .line 38
    iget v0, p0, Ljavassist/bytecode/ByteVector;->size:I

    return v0
.end method

.method public read(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 47
    if-ltz p1, :cond_0

    iget v0, p0, Ljavassist/bytecode/ByteVector;->size:I

    if-le v0, p1, :cond_0

    .line 50
    iget-object v0, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    aget-byte v0, v0, p1

    return v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public write(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 54
    if-ltz p1, :cond_0

    iget v0, p0, Ljavassist/bytecode/ByteVector;->size:I

    if-le v0, p1, :cond_0

    .line 57
    iget-object v0, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    .line 58
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method
