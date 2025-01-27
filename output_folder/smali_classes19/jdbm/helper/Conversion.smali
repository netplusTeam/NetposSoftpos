.class public Ljdbm/helper/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToByteArray(B)[B
    .locals 2
    .param p0, "n"    # B

    .line 80
    xor-int/lit8 v0, p0, -0x80

    int-to-byte p0, v0

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static convertToByteArray(I)[B
    .locals 2
    .param p0, "n"    # I

    .line 102
    const/high16 v0, -0x80000000

    xor-int/2addr p0, v0

    .line 103
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 104
    .local v0, "key":[B
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljdbm/helper/Conversion;->pack4([BII)V

    .line 105
    return-object v0
.end method

.method public static convertToByteArray(J)[B
    .locals 2
    .param p0, "n"    # J

    .line 114
    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr p0, v0

    .line 115
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 116
    .local v0, "key":[B
    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Ljdbm/helper/Conversion;->pack8([BIJ)V

    .line 117
    return-object v0
.end method

.method public static convertToByteArray(Ljava/lang/String;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 67
    :try_start_0
    const-string v0, "UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 70
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Platform doesn\'t support UTF8 encoding"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static convertToByteArray(S)[B
    .locals 2
    .param p0, "n"    # S

    .line 90
    xor-int/lit16 v0, p0, -0x8000

    int-to-short p0, v0

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 92
    .local v0, "key":[B
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljdbm/helper/Conversion;->pack2([BII)V

    .line 93
    return-object v0
.end method

.method public static convertToInt([B)I
    .locals 2
    .param p0, "buf"    # [B

    .line 142
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljdbm/helper/Conversion;->unpack4([BI)I

    move-result v0

    .line 143
    .local v0, "value":I
    const/high16 v1, -0x80000000

    xor-int/2addr v0, v1

    .line 144
    return v0
.end method

.method public static convertToLong([B)J
    .locals 6
    .param p0, "buf"    # [B

    .line 153
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljdbm/helper/Conversion;->unpack4([BI)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const/4 v2, 0x4

    invoke-static {p0, v2}, Ljdbm/helper/Conversion;->unpack4([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 155
    .local v0, "value":J
    const-wide/high16 v2, -0x8000000000000000L

    xor-long/2addr v0, v2

    .line 156
    return-wide v0
.end method

.method public static convertToString([B)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [B

    .line 129
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 132
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Platform doesn\'t support UTF8 encoding"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .line 203
    const/4 v0, 0x5

    invoke-static {v0}, Ljdbm/helper/Conversion;->convertToByteArray(I)[B

    move-result-object v0

    .line 204
    .local v0, "buf":[B
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "int value of 5 is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Ljdbm/helper/Conversion;->convertToInt([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    const/4 v1, -0x1

    invoke-static {v1}, Ljdbm/helper/Conversion;->convertToByteArray(I)[B

    move-result-object v0

    .line 207
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "int value of -1 is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Ljdbm/helper/Conversion;->convertToInt([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    const v1, 0x1516318

    invoke-static {v1}, Ljdbm/helper/Conversion;->convertToByteArray(I)[B

    move-result-object v0

    .line 210
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "int value of 22111000 is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Ljdbm/helper/Conversion;->convertToInt([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Ljdbm/helper/Conversion;->convertToByteArray(J)[B

    move-result-object v0

    .line 214
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "long value of 5 is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Ljdbm/helper/Conversion;->convertToLong([B)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljdbm/helper/Conversion;->convertToByteArray(J)[B

    move-result-object v0

    .line 217
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "long value of -1 is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Ljdbm/helper/Conversion;->convertToLong([B)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    const-wide v1, 0xf6f693ad88723bbL    # 2.469766514795014E-234

    invoke-static {v1, v2}, Ljdbm/helper/Conversion;->convertToByteArray(J)[B

    move-result-object v0

    .line 220
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "long value of 1112223334445556667 is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Ljdbm/helper/Conversion;->convertToLong([B)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method static final pack2([BII)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offs"    # I
    .param p2, "val"    # I

    .line 175
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offs":I
    .local v0, "offs":I
    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 176
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offs":I
    .restart local p1    # "offs":I
    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 177
    return-void
.end method

.method static final pack4([BII)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offs"    # I
    .param p2, "val"    # I

    .line 182
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offs":I
    .local v0, "offs":I
    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 183
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offs":I
    .restart local p1    # "offs":I
    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 184
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offs":I
    .restart local v0    # "offs":I
    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 185
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offs":I
    .restart local p1    # "offs":I
    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 186
    return-void
.end method

.method static final pack8([BIJ)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offs"    # I
    .param p2, "val"    # J

    .line 191
    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljdbm/helper/Conversion;->pack4([BII)V

    .line 192
    long-to-int v0, p2

    const/4 v1, 0x4

    invoke-static {p0, v1, v0}, Ljdbm/helper/Conversion;->pack4([BII)V

    .line 193
    return-void
.end method

.method static unpack4([BI)I
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .line 164
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 169
    .local v0, "value":I
    return v0
.end method
