.class final Ljavassist/bytecode/ByteStream;
.super Ljava/io/OutputStream;
.source "ByteStream.java"


# instance fields
.field private buf:[B

.field private count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljavassist/bytecode/ByteStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 28
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 29
    new-array v0, p1, [B

    iput-object v0, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 31
    return-void
.end method

.method private writeUTF2(Ljava/lang/String;II)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "sLen"    # I
    .param p3, "offset"    # I

    .line 123
    move v0, p2

    .line 124
    .local v0, "size":I
    move v1, p3

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x7f

    const/16 v3, 0x7ff

    if-ge v1, p2, :cond_3

    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 126
    .local v4, "c":I
    if-le v4, v3, :cond_0

    .line 127
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 128
    :cond_0
    if-eqz v4, :cond_1

    if-le v4, v2, :cond_2

    .line 129
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 124
    .end local v4    # "c":I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "i":I
    :cond_3
    const v1, 0xffff

    if-gt v0, v1, :cond_7

    .line 136
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 137
    iget v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 138
    .local v1, "pos":I
    iget-object v4, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    .line 139
    .local v4, "buffer":[B
    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 140
    add-int/lit8 v5, v1, 0x1

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    .line 141
    add-int/lit8 v5, p3, 0x2

    add-int/2addr v1, v5

    .line 142
    move v5, p3

    .local v5, "j":I
    :goto_2
    if-ge v5, p2, :cond_6

    .line 143
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 144
    .local v6, "c":I
    const/4 v7, 0x1

    if-gt v7, v6, :cond_4

    if-gt v6, v2, :cond_4

    .line 145
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "pos":I
    .local v7, "pos":I
    int-to-byte v8, v6

    aput-byte v8, v4, v1

    move v1, v7

    goto :goto_3

    .line 146
    .end local v7    # "pos":I
    .restart local v1    # "pos":I
    :cond_4
    if-le v6, v3, :cond_5

    .line 147
    shr-int/lit8 v7, v6, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v4, v1

    .line 148
    add-int/lit8 v7, v1, 0x1

    shr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 149
    add-int/lit8 v7, v1, 0x2

    and-int/lit8 v8, v6, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 150
    add-int/lit8 v1, v1, 0x3

    goto :goto_3

    .line 153
    :cond_5
    shr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v4, v1

    .line 154
    add-int/lit8 v7, v1, 0x1

    and-int/lit8 v8, v6, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 155
    add-int/lit8 v1, v1, 0x2

    .line 142
    .end local v6    # "c":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 159
    .end local v5    # "j":I
    :cond_6
    iput v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 160
    return-void

    .line 133
    .end local v1    # "pos":I
    .end local v4    # "buffer":[B
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoded string too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public enlarge(I)V
    .locals 6
    .param p1, "delta"    # I

    .line 189
    iget v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    add-int v1, v0, p1

    .line 190
    .local v1, "newCount":I
    iget-object v2, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    array-length v3, v2

    if-le v1, v3, :cond_1

    .line 191
    array-length v3, v2

    shl-int/lit8 v3, v3, 0x1

    .line 192
    .local v3, "newLen":I
    if-le v3, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    new-array v4, v4, [B

    .line 193
    .local v4, "newBuf":[B
    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iput-object v4, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    .line 196
    .end local v3    # "newLen":I
    .end local v4    # "newBuf":[B
    :cond_1
    return-void
.end method

.method public getPos()I
    .locals 1

    .line 33
    iget v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    return v0
.end method

.method public size()I
    .locals 1

    .line 34
    iget v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 179
    iget v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    new-array v1, v0, [B

    .line 180
    .local v1, "buf2":[B
    iget-object v2, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    return-object v1
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 56
    iget v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 57
    .local v0, "oldCount":I
    iget-object v1, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    .line 58
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 59
    return-void
.end method

.method public write(II)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "value"    # I

    .line 163
    iget-object v0, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    .line 164
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 43
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljavassist/bytecode/ByteStream;->write([BII)V

    .line 44
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 48
    invoke-virtual {p0, p3}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 49
    iget-object v0, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    iget v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 51
    return-void
.end method

.method public writeBlank(I)V
    .locals 1
    .param p1, "len"    # I

    .line 37
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 38
    iget v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 39
    return-void
.end method

.method public writeDouble(D)V
    .locals 2
    .param p1, "v"    # D

    .line 98
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/ByteStream;->writeLong(J)V

    .line 99
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .param p1, "v"    # F

    .line 94
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteStream;->writeInt(I)V

    .line 95
    return-void
.end method

.method public writeInt(I)V
    .locals 4
    .param p1, "i"    # I

    .line 70
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 71
    iget v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 72
    .local v0, "oldCount":I
    iget-object v1, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 73
    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 74
    add-int/lit8 v2, v0, 0x2

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 75
    add-int/lit8 v2, v0, 0x3

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 76
    add-int/lit8 v1, v0, 0x4

    iput v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 77
    return-void
.end method

.method public writeInt(II)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "value"    # I

    .line 172
    iget-object v0, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 173
    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 174
    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 175
    add-int/lit8 v1, p1, 0x3

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 176
    return-void
.end method

.method public writeLong(J)V
    .locals 6
    .param p1, "i"    # J

    .line 80
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 81
    iget v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 82
    .local v1, "oldCount":I
    iget-object v2, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    const/16 v3, 0x38

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 83
    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x30

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 84
    add-int/lit8 v3, v1, 0x2

    const/16 v4, 0x28

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 85
    add-int/lit8 v3, v1, 0x3

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 86
    add-int/lit8 v3, v1, 0x4

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 87
    add-int/lit8 v3, v1, 0x5

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 88
    add-int/lit8 v3, v1, 0x6

    ushr-long v4, p1, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 89
    add-int/lit8 v0, v1, 0x7

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 90
    add-int/lit8 v0, v1, 0x8

    iput v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 91
    return-void
.end method

.method public writeShort(I)V
    .locals 4
    .param p1, "s"    # I

    .line 62
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 63
    iget v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 64
    .local v0, "oldCount":I
    iget-object v1, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 65
    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 66
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 67
    return-void
.end method

.method public writeShort(II)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "value"    # I

    .line 167
    iget-object v0, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 168
    add-int/lit8 v1, p1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 169
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    iget v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 186
    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 103
    .local v0, "sLen":I
    iget v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 104
    .local v1, "pos":I
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 106
    iget-object v2, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    .line 107
    .local v2, "buffer":[B
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .local v3, "pos":I
    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 108
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "pos":I
    .restart local v1    # "pos":I
    int-to-byte v4, v0

    aput-byte v4, v2, v3

    .line 109
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 110
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 111
    .local v4, "c":C
    const/4 v5, 0x1

    if-gt v5, v4, :cond_0

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_0

    .line 112
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "pos":I
    .local v5, "pos":I
    int-to-byte v6, v4

    aput-byte v6, v2, v1

    .line 109
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    .line 114
    .end local v5    # "pos":I
    .restart local v1    # "pos":I
    .restart local v4    # "c":C
    :cond_0
    invoke-direct {p0, p1, v0, v3}, Ljavassist/bytecode/ByteStream;->writeUTF2(Ljava/lang/String;II)V

    .line 115
    return-void

    .line 119
    .end local v3    # "i":I
    .end local v4    # "c":C
    :cond_1
    iput v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 120
    return-void
.end method
