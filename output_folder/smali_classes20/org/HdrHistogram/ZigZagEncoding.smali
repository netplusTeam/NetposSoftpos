.class Lorg/HdrHistogram/ZigZagEncoding;
.super Ljava/lang/Object;
.source "ZigZagEncoding.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInt(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 160
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 161
    .local v0, "v":I
    and-int/lit8 v1, v0, 0x7f

    .line 162
    .local v1, "value":I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 164
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    .line 165
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 167
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v1, v2

    .line 168
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 170
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v1, v2

    .line 171
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 173
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x1c

    or-int/2addr v1, v2

    .line 178
    :cond_0
    ushr-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    xor-int v1, v2, v3

    .line 179
    return v1
.end method

.method static getLong(Ljava/nio/ByteBuffer;)J
    .locals 13
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-long v0, v0

    .line 117
    .local v0, "v":J
    const-wide/16 v2, 0x7f

    and-long v4, v0, v2

    .line 118
    .local v4, "value":J
    const-wide/16 v6, 0x80

    and-long v8, v0, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 119
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    int-to-long v0, v8

    .line 120
    and-long v8, v0, v2

    const/4 v12, 0x7

    shl-long/2addr v8, v12

    or-long/2addr v4, v8

    .line 121
    and-long v8, v0, v6

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 122
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    int-to-long v0, v8

    .line 123
    and-long v8, v0, v2

    const/16 v12, 0xe

    shl-long/2addr v8, v12

    or-long/2addr v4, v8

    .line 124
    and-long v8, v0, v6

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 125
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    int-to-long v0, v8

    .line 126
    and-long v8, v0, v2

    const/16 v12, 0x15

    shl-long/2addr v8, v12

    or-long/2addr v4, v8

    .line 127
    and-long v8, v0, v6

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 128
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    int-to-long v0, v8

    .line 129
    and-long v8, v0, v2

    const/16 v12, 0x1c

    shl-long/2addr v8, v12

    or-long/2addr v4, v8

    .line 130
    and-long v8, v0, v6

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 131
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    int-to-long v0, v8

    .line 132
    and-long v8, v0, v2

    const/16 v12, 0x23

    shl-long/2addr v8, v12

    or-long/2addr v4, v8

    .line 133
    and-long v8, v0, v6

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 134
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    int-to-long v0, v8

    .line 135
    and-long v8, v0, v2

    const/16 v12, 0x2a

    shl-long/2addr v8, v12

    or-long/2addr v4, v8

    .line 136
    and-long v8, v0, v6

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 137
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    int-to-long v0, v8

    .line 138
    and-long/2addr v2, v0

    const/16 v8, 0x31

    shl-long/2addr v2, v8

    or-long/2addr v4, v2

    .line 139
    and-long v2, v0, v6

    cmp-long v2, v2, v10

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-long v0, v2

    .line 141
    const/16 v2, 0x38

    shl-long v2, v0, v2

    or-long/2addr v4, v2

    .line 150
    :cond_0
    const/4 v2, 0x1

    ushr-long v2, v4, v2

    const-wide/16 v6, 0x1

    and-long/2addr v6, v4

    neg-long v6, v6

    xor-long/2addr v2, v6

    .line 151
    .end local v4    # "value":J
    .local v2, "value":J
    return-wide v2
.end method

.method static putInt(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "value"    # I

    .line 86
    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p1, 0x1f

    xor-int p1, v0, v1

    .line 87
    ushr-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 88
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 90
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 91
    ushr-int/lit8 v0, p1, 0xe

    if-nez v0, :cond_1

    .line 92
    ushr-int/lit8 v0, p1, 0x7

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 94
    :cond_1
    ushr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 95
    ushr-int/lit8 v0, p1, 0x15

    if-nez v0, :cond_2

    .line 96
    ushr-int/lit8 v0, p1, 0xe

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 98
    :cond_2
    ushr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 99
    ushr-int/lit8 v0, p1, 0x1c

    if-nez v0, :cond_3

    .line 100
    ushr-int/lit8 v0, p1, 0x15

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 102
    :cond_3
    ushr-int/lit8 v0, p1, 0x15

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 103
    ushr-int/lit8 v0, p1, 0x1c

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 108
    :goto_0
    return-void
.end method

.method static putLong(Ljava/nio/ByteBuffer;J)V
    .locals 9
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "value"    # J

    .line 36
    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long v2, p1, v2

    xor-long p1, v0, v2

    .line 37
    const/4 v0, 0x7

    ushr-long v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 38
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 40
    :cond_0
    const-wide/16 v1, 0x7f

    and-long/2addr v1, p1

    const-wide/16 v5, 0x80

    or-long/2addr v1, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 41
    const/16 v1, 0xe

    ushr-long v7, p1, v1

    cmp-long v2, v7, v3

    if-nez v2, :cond_1

    .line 42
    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 44
    :cond_1
    ushr-long v7, p1, v0

    or-long/2addr v7, v5

    long-to-int v0, v7

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 45
    const/16 v0, 0x15

    ushr-long v7, p1, v0

    cmp-long v2, v7, v3

    if-nez v2, :cond_2

    .line 46
    ushr-long v0, p1, v1

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 48
    :cond_2
    ushr-long v1, p1, v1

    or-long/2addr v1, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 49
    const/16 v1, 0x1c

    ushr-long v7, p1, v1

    cmp-long v2, v7, v3

    if-nez v2, :cond_3

    .line 50
    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 52
    :cond_3
    ushr-long v7, p1, v0

    or-long/2addr v7, v5

    long-to-int v0, v7

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 53
    const/16 v0, 0x23

    ushr-long v7, p1, v0

    cmp-long v2, v7, v3

    if-nez v2, :cond_4

    .line 54
    ushr-long v0, p1, v1

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 56
    :cond_4
    ushr-long v1, p1, v1

    or-long/2addr v1, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 57
    const/16 v1, 0x2a

    ushr-long v7, p1, v1

    cmp-long v2, v7, v3

    if-nez v2, :cond_5

    .line 58
    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 60
    :cond_5
    ushr-long v7, p1, v0

    or-long/2addr v7, v5

    long-to-int v0, v7

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 61
    const/16 v0, 0x31

    ushr-long v7, p1, v0

    cmp-long v2, v7, v3

    if-nez v2, :cond_6

    .line 62
    ushr-long v0, p1, v1

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 64
    :cond_6
    ushr-long v1, p1, v1

    or-long/2addr v1, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 65
    const/16 v1, 0x38

    ushr-long v7, p1, v1

    cmp-long v2, v7, v3

    if-nez v2, :cond_7

    .line 66
    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 68
    :cond_7
    ushr-long v2, p1, v0

    or-long/2addr v2, v5

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 69
    ushr-long v0, p1, v1

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 78
    :goto_0
    return-void
.end method
