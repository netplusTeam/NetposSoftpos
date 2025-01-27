.class public Lcom/itextpdf/io/source/ByteBuffer;
.super Ljava/lang/Object;
.source "ByteBuffer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final bytes:[B

.field private static final serialVersionUID:J = -0x3ccb6ad77b504f4fL


# instance fields
.field private buffer:[B

.field protected count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/io/source/ByteBuffer;->bytes:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 64
    const/16 p1, 0x80

    .line 65
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    .line 66
    return-void
.end method

.method public static getHex(I)I
    .locals 1
    .param p0, "v"    # I

    .line 69
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 70
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 71
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 72
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 73
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 74
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 75
    :cond_2
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public append(B)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 5
    .param p1, "b"    # B

    .line 79
    iget v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 80
    .local v0, "newCount":I
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 81
    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    .line 82
    .local v1, "newBuffer":[B
    iget-object v2, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    iget v3, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iput-object v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    .line 85
    .end local v1    # "newBuffer":[B
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    iget v2, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    aput-byte p1, v1, v2

    .line 86
    iput v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    .line 87
    return-object p0
.end method

.method public append(I)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 1
    .param p1, "b"    # I

    .line 110
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 114
    invoke-static {p1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append([B)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 2
    .param p1, "b"    # [B

    .line 106
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append([BII)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append([BII)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 91
    if-ltz p2, :cond_2

    array-length v0, p1

    if-gt p2, v0, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p2, p3

    if-ltz v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    add-int/2addr v0, p3

    .line 95
    .local v0, "newCount":I
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    array-length v2, v1

    if-le v0, v2, :cond_1

    .line 96
    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    .line 97
    .local v1, "newBuffer":[B
    iget-object v2, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    iget v3, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iput-object v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    .line 100
    .end local v1    # "newBuffer":[B
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    iget v2, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iput v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    .line 102
    return-object p0

    .line 93
    .end local v0    # "newCount":I
    :cond_2
    :goto_0
    return-object p0
.end method

.method public appendHex(B)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 2
    .param p1, "b"    # B

    .line 118
    sget-object v0, Lcom/itextpdf/io/source/ByteBuffer;->bytes:[B

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-byte v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 119
    and-int/lit8 v1, p1, 0xf

    aget-byte v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public get(I)B
    .locals 4
    .param p1, "index"    # I

    .line 123
    iget v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    if-ge p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    aget-byte v0, v0, p1

    return v0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Index: {0}, Size: {1}"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInternalBuffer()[B
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method prepend(B)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 3
    .param p1, "b"    # B

    .line 177
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    array-length v1, v0

    iget v2, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    .line 178
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    .line 179
    return-object p0
.end method

.method prepend([B)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 4
    .param p1, "b"    # [B

    .line 189
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    array-length v1, v0

    iget v2, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    sub-int/2addr v1, v2

    array-length v2, p1

    sub-int/2addr v1, v2

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    iget v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    .line 191
    return-object p0
.end method

.method public reset()Lcom/itextpdf/io/source/ByteBuffer;
    .locals 1

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    .line 147
    return-object p0
.end method

.method public size()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    return v0
.end method

.method public startsWith([B)Z
    .locals 4
    .param p1, "b"    # [B

    .line 161
    invoke-virtual {p0}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 162
    return v2

    .line 163
    :cond_0
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 164
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    aget-byte v1, v1, v0

    aget-byte v3, p1, v0

    if-eq v1, v3, :cond_1

    .line 165
    return v2

    .line 163
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "k":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .line 157
    iget v0, p0, Lcom/itextpdf/io/source/ByteBuffer;->count:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray(II)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(II)[B
    .locals 3
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 151
    new-array v0, p2, [B

    .line 152
    .local v0, "newBuf":[B
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBuffer;->buffer:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    return-object v0
.end method
