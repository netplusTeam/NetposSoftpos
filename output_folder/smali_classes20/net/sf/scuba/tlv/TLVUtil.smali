.class public Lnet/sf/scuba/tlv/TLVUtil;
.super Ljava/lang/Object;
.source "TLVUtil.java"

# interfaces
.implements Lnet/sf/scuba/tlv/ASN1Constants;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "net.sf.scuba"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/sf/scuba/tlv/TLVUtil;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getLengthAsBytes(I)[B
    .locals 5
    .param p0, "length"    # I

    .line 104
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 105
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x80

    if-ge p0, v1, :cond_0

    .line 107
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 109
    :cond_0
    const/16 v1, 0x100

    invoke-static {p0, v1}, Lnet/sf/scuba/tlv/TLVUtil;->log(II)I

    move-result v1

    .line 110
    .local v1, "byteCount":I
    or-int/lit16 v2, v1, 0x80

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 111
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 112
    sub-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    .line 113
    .local v3, "pos":I
    const/16 v4, 0xff

    shl-int/2addr v4, v3

    and-int/2addr v4, p0

    shr-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 111
    .end local v3    # "pos":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "byteCount":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static getLengthLength(I)I
    .locals 1
    .param p0, "length"    # I

    .line 58
    invoke-static {p0}, Lnet/sf/scuba/tlv/TLVUtil;->getLengthAsBytes(I)[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static getTagAsBytes(I)[B
    .locals 5
    .param p0, "tag"    # I

    .line 69
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    int-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4070000000000000L    # 256.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    .line 71
    .local v1, "byteCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 72
    sub-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    .line 73
    .local v3, "pos":I
    const/16 v4, 0xff

    shl-int/2addr v4, v3

    and-int/2addr v4, p0

    shr-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 71
    .end local v3    # "pos":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 76
    .local v2, "tagBytes":[B
    invoke-static {p0}, Lnet/sf/scuba/tlv/TLVUtil;->getTagClass(I)I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 84
    :pswitch_0
    aget-byte v3, v2, v4

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 85
    goto :goto_1

    .line 81
    :pswitch_1
    aget-byte v3, v2, v4

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 82
    goto :goto_1

    .line 78
    :pswitch_2
    aget-byte v3, v2, v4

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 79
    nop

    .line 90
    :goto_1
    invoke-static {p0}, Lnet/sf/scuba/tlv/TLVUtil;->isPrimitive(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    aget-byte v3, v2, v4

    or-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 93
    :cond_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getTagClass(I)I
    .locals 4
    .param p0, "tag"    # I

    .line 194
    const/4 v0, 0x3

    .line 195
    .local v0, "i":I
    :goto_0
    const/16 v1, 0xff

    if-ltz v0, :cond_1

    .line 196
    mul-int/lit8 v2, v0, 0x8

    shl-int v2, v1, v2

    .line 197
    .local v2, "mask":I
    and-int v3, p0, v2

    if-eqz v3, :cond_0

    .line 198
    goto :goto_1

    .line 195
    .end local v2    # "mask":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 201
    :cond_1
    :goto_1
    mul-int/lit8 v2, v0, 0x8

    shl-int v2, v1, v2

    and-int/2addr v2, p0

    mul-int/lit8 v3, v0, 0x8

    shr-int/2addr v2, v3

    and-int/2addr v1, v2

    .line 202
    .local v1, "msByte":I
    and-int/lit16 v2, v1, 0xc0

    sparse-switch v2, :sswitch_data_0

    .line 211
    const/4 v2, 0x3

    return v2

    .line 208
    :sswitch_0
    const/4 v2, 0x2

    return v2

    .line 206
    :sswitch_1
    const/4 v2, 0x1

    return v2

    .line 204
    :sswitch_2
    const/4 v2, 0x0

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getTagLength(I)I
    .locals 1
    .param p0, "tag"    # I

    .line 54
    invoke-static {p0}, Lnet/sf/scuba/tlv/TLVUtil;->getTagAsBytes(I)[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static isPrimitive(I)Z
    .locals 4
    .param p0, "tag"    # I

    .line 42
    const/4 v0, 0x3

    .line 43
    .local v0, "i":I
    :goto_0
    const/16 v1, 0xff

    if-ltz v0, :cond_1

    .line 44
    mul-int/lit8 v2, v0, 0x8

    shl-int v2, v1, v2

    .line 45
    .local v2, "mask":I
    and-int v3, p0, v2

    if-eqz v3, :cond_0

    .line 46
    goto :goto_1

    .line 43
    .end local v2    # "mask":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    mul-int/lit8 v2, v0, 0x8

    shl-int v2, v1, v2

    and-int/2addr v2, p0

    mul-int/lit8 v3, v0, 0x8

    shr-int/2addr v2, v3

    and-int/2addr v1, v2

    .line 50
    .local v1, "msByte":I
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method private static log(II)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "base"    # I

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "result":I
    :goto_0
    if-lez p0, :cond_0

    .line 218
    div-int/2addr p0, p1

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return v0
.end method

.method public static unwrapDO(I[B)[B
    .locals 10
    .param p0, "expectedTag"    # I
    .param p1, "wrappedData"    # [B

    .line 161
    const-string v0, "Error closing stream"

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 165
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 166
    .local v1, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    new-instance v2, Lnet/sf/scuba/tlv/TLVInputStream;

    invoke-direct {v2, v1}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    .line 169
    .local v2, "tlvInputStream":Lnet/sf/scuba/tlv/TLVInputStream;
    :try_start_0
    invoke-virtual {v2}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    move-result v3

    .line 170
    .local v3, "actualTag":I
    if-ne v3, p0, :cond_0

    .line 174
    invoke-virtual {v2}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    move-result v4

    .line 175
    .local v4, "length":I
    invoke-virtual {v2}, Lnet/sf/scuba/tlv/TLVInputStream;->readValue()[B

    move-result-object v5

    .line 176
    .local v5, "value":[B
    new-array v6, v4, [B

    .line 177
    .local v6, "result":[B
    const/4 v7, 0x0

    invoke-static {v5, v7, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    nop

    .line 185
    :try_start_1
    invoke-virtual {v2}, Lnet/sf/scuba/tlv/TLVInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    goto :goto_0

    .line 187
    :catch_0
    move-exception v7

    .line 188
    .local v7, "ioe":Ljava/io/IOException;
    sget-object v8, Lnet/sf/scuba/tlv/TLVUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9, v0, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .end local v7    # "ioe":Ljava/io/IOException;
    :goto_0
    return-object v6

    .line 171
    .end local v4    # "length":I
    .end local v5    # "value":[B
    .end local v6    # "result":[B
    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", found tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v2    # "tlvInputStream":Lnet/sf/scuba/tlv/TLVInputStream;
    .end local p0    # "expectedTag":I
    .end local p1    # "wrappedData":[B
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .end local v3    # "actualTag":I
    .restart local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "tlvInputStream":Lnet/sf/scuba/tlv/TLVInputStream;
    .restart local p0    # "expectedTag":I
    .restart local p1    # "wrappedData":[B
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 179
    :catch_1
    move-exception v3

    .line 181
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Error reading from stream"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v2    # "tlvInputStream":Lnet/sf/scuba/tlv/TLVInputStream;
    .end local p0    # "expectedTag":I
    .end local p1    # "wrappedData":[B
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "tlvInputStream":Lnet/sf/scuba/tlv/TLVInputStream;
    .restart local p0    # "expectedTag":I
    .restart local p1    # "wrappedData":[B
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Lnet/sf/scuba/tlv/TLVInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 189
    goto :goto_2

    .line 187
    :catch_2
    move-exception v4

    .line 188
    .local v4, "ioe":Ljava/io/IOException;
    sget-object v5, Lnet/sf/scuba/tlv/TLVUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6, v0, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    .end local v4    # "ioe":Ljava/io/IOException;
    :goto_2
    throw v3

    .line 162
    .end local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v2    # "tlvInputStream":Lnet/sf/scuba/tlv/TLVInputStream;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrapped data is null or length < 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static wrapDO(I[B)[B
    .locals 7
    .param p0, "tag"    # I
    .param p1, "data"    # [B

    .line 128
    const-string v0, "Error closing stream"

    if-eqz p1, :cond_0

    .line 132
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Lnet/sf/scuba/tlv/TLVOutputStream;

    invoke-direct {v2, v1}, Lnet/sf/scuba/tlv/TLVOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 135
    .local v2, "tlvOutputStream":Lnet/sf/scuba/tlv/TLVOutputStream;
    invoke-virtual {v2, p0}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeTag(I)V

    .line 136
    invoke-virtual {v2, p1}, Lnet/sf/scuba/tlv/TLVOutputStream;->writeValue([B)V

    .line 137
    invoke-virtual {v2}, Lnet/sf/scuba/tlv/TLVOutputStream;->flush()V

    .line 138
    invoke-virtual {v2}, Lnet/sf/scuba/tlv/TLVOutputStream;->close()V

    .line 139
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v4

    .line 147
    .local v4, "ioe":Ljava/io/IOException;
    sget-object v5, Lnet/sf/scuba/tlv/TLVUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6, v0, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .end local v4    # "ioe":Ljava/io/IOException;
    :goto_0
    return-object v3

    .line 144
    .end local v2    # "tlvOutputStream":Lnet/sf/scuba/tlv/TLVOutputStream;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 140
    :catch_1
    move-exception v2

    .line 142
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Error writing stream"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "tag":I
    .end local p1    # "data":[B
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "tag":I
    .restart local p1    # "data":[B
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 148
    goto :goto_2

    .line 146
    :catch_2
    move-exception v3

    .line 147
    .local v3, "ioe":Ljava/io/IOException;
    sget-object v4, Lnet/sf/scuba/tlv/TLVUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_2
    throw v2

    .line 129
    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data to wrap is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
