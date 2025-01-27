.class public interface abstract Lorg/apache/sshd/common/config/keys/KeyEntryResolver;
.super Ljava/lang/Object;
.source "KeyEntryResolver.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/IdentityResourceLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PUB::",
        "Ljava/security/PublicKey;",
        "PRV::",
        "Ljava/security/PrivateKey;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/config/keys/IdentityResourceLoader<",
        "TPUB;TPRV;>;"
    }
.end annotation


# direct methods
.method public static decodeBigInt(Ljava/io/InputStream;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "s"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x7fff

    invoke-static {p0, v1}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->readRLEBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public static decodeInt(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "s"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 200
    .local v0, "bytes":[B
    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/io/IoUtils;->readFully(Ljava/io/InputStream;[B)V

    .line 201
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static decodeInt([B)I
    .locals 2
    .param p0, "buf"    # [B

    .line 275
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeInt([BII)I

    move-result v0

    return v0
.end method

.method public static decodeInt([BII)I
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "available"    # I

    .line 279
    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    .line 283
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Available data length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") cannot accommodate integer encoding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeString(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeString(Ljava/io/InputStream;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeString(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeString(Ljava/io/InputStream;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeString(Ljava/io/InputStream;Ljava/nio/charset/Charset;I)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    mul-int/lit8 v0, p2, 0x4

    invoke-static {p0, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->readRLEBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 177
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static decodeString([BI)Ljava/util/Map$Entry;
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "maxChars"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 208
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeString([BIII)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public static decodeString([BIII)Ljava/util/Map$Entry;
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "available"    # I
    .param p3, "maxChars"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 212
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeString([BIILjava/nio/charset/Charset;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public static decodeString([BIILjava/nio/charset/Charset;I)Ljava/util/Map$Entry;
    .locals 5
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "available"    # I
    .param p3, "cs"    # Ljava/nio/charset/Charset;
    .param p4, "maxChars"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/nio/charset/Charset;",
            "I)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 233
    mul-int/lit8 v0, p4, 0x4

    .line 234
    invoke-static {p0, p1, p2, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->readRLEBytes([BIII)Ljava/util/Map$Entry;

    move-result-object v0

    .line 235
    .local v0, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLjava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 236
    .local v1, "bytes":[B
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 237
    .local v2, "nextOffset":Ljava/lang/Integer;
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v3, v4, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public static decodeString([BLjava/nio/charset/Charset;I)Ljava/util/Map$Entry;
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "maxChars"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/nio/charset/Charset;",
            "I)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 216
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeString([BIILjava/nio/charset/Charset;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBigInt(Ljava/io/OutputStream;Ljava/math/BigInteger;)I
    .locals 1
    .param p0, "s"    # Ljava/io/OutputStream;
    .param p1, "v"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->writeRLEBytes(Ljava/io/OutputStream;[B)I

    move-result v0

    return v0
.end method

.method public static encodeInt(Ljava/io/OutputStream;I)[B
    .locals 3
    .param p0, "s"    # Ljava/io/OutputStream;
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 163
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 164
    return-object v0
.end method

.method public static encodeString(Ljava/io/OutputStream;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/io/OutputStream;
    .param p1, "v"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/nio/charset/Charset;)I

    move-result v0

    return v0
.end method

.method public static encodeString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/io/OutputStream;
    .param p1, "v"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/nio/charset/Charset;)I

    move-result v0

    return v0
.end method

.method public static encodeString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/nio/charset/Charset;)I
    .locals 1
    .param p0, "s"    # Ljava/io/OutputStream;
    .param p1, "v"    # Ljava/lang/String;
    .param p2, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->writeRLEBytes(Ljava/io/OutputStream;[B)I

    move-result v0

    return v0
.end method

.method public static readRLEBytes([BI)Ljava/util/Map$Entry;
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "maxAllowed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Map$Entry<",
            "[B",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 241
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->readRLEBytes([BIII)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public static readRLEBytes([BIII)Ljava/util/Map$Entry;
    .locals 5
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "available"    # I
    .param p3, "maxAllowed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII)",
            "Ljava/util/Map$Entry<",
            "[B",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 255
    invoke-static {p0, p1, p2}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeInt([BII)I

    move-result v0

    .line 256
    .local v0, "len":I
    const-string v1, ")"

    const-string v2, "Requested block length ("

    if-gt v0, p3, :cond_2

    .line 259
    if-ltz v0, :cond_1

    .line 263
    add-int/lit8 p2, p2, -0x4

    .line 264
    if-gt v0, p2, :cond_0

    .line 268
    new-array v1, v0, [B

    .line 269
    .local v1, "bytes":[B
    add-int/lit8 p1, p1, 0x4

    .line 270
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    add-int v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 265
    .end local v1    # "bytes":[B
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") exceeds remaing ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 260
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative block length requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") exceeds max. allowed ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static readRLEBytes(Ljava/io/InputStream;I)[B
    .locals 4
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "maxAllowed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-static {p0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeInt(Ljava/io/InputStream;)I

    move-result v0

    .line 186
    .local v0, "len":I
    if-gt v0, p1, :cond_1

    .line 189
    if-ltz v0, :cond_0

    .line 193
    new-array v1, v0, [B

    .line 194
    .local v1, "bytes":[B
    invoke-static {p0, v1}, Lorg/apache/sshd/common/util/io/IoUtils;->readFully(Ljava/io/InputStream;[B)V

    .line 195
    return-object v1

    .line 190
    .end local v1    # "bytes":[B
    :cond_0
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative block length requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_1
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested block length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") exceeds max. allowed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs writeRLEBytes(Ljava/io/OutputStream;[B)I
    .locals 2
    .param p0, "s"    # Ljava/io/OutputStream;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->writeRLEBytes(Ljava/io/OutputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static writeRLEBytes(Ljava/io/OutputStream;[BII)I
    .locals 2
    .param p0, "s"    # Ljava/io/OutputStream;
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-static {p0, p3}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeInt(Ljava/io/OutputStream;I)[B

    move-result-object v0

    .line 152
    .local v0, "lenBytes":[B
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 153
    array-length v1, v0

    add-int/2addr v1, p3

    return v1
.end method


# virtual methods
.method public cloneKeyPair(Ljava/security/KeyPair;)Ljava/security/KeyPair;
    .locals 11
    .param p1, "kp"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/sshd/common/config/keys/KeyEntryResolver;, "Lorg/apache/sshd/common/config/keys/KeyEntryResolver<TPUB;TPRV;>;"
    if-nez p1, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 74
    .local v0, "pubCloned":Ljava/security/PublicKey;, "TPUB;"
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    .line 75
    .local v1, "pubOriginal":Ljava/security/PublicKey;
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->getPublicKeyType()Ljava/lang/Class;

    move-result-object v2

    .line 76
    .local v2, "pubExpected":Ljava/lang/Class;, "Ljava/lang/Class<TPUB;>;"
    const-string v3, ", actual="

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 78
    .local v4, "orgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/PublicKey;

    .line 84
    .local v5, "castPub":Ljava/security/PublicKey;, "TPUB;"
    invoke-interface {p0, v5}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->clonePublicKey(Ljava/security/PublicKey;)Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0

    .line 79
    .end local v5    # "castPub":Ljava/security/PublicKey;, "TPUB;"
    :cond_1
    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mismatched public key types: expected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 80
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 87
    .end local v4    # "orgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_0
    const/4 v4, 0x0

    .line 88
    .local v4, "prvCloned":Ljava/security/PrivateKey;, "TPRV;"
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    .line 89
    .local v5, "prvOriginal":Ljava/security/PrivateKey;
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->getPrivateKeyType()Ljava/lang/Class;

    move-result-object v6

    .line 90
    .local v6, "prvExpected":Ljava/lang/Class;, "Ljava/lang/Class<TPRV;>;"
    if-eqz v5, :cond_4

    .line 91
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 92
    .local v7, "orgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 97
    invoke-virtual {v6, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PrivateKey;

    .line 98
    .local v3, "castPrv":Ljava/security/PrivateKey;, "TPRV;"
    invoke-interface {p0, v3}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->clonePrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object v4

    goto :goto_1

    .line 93
    .end local v3    # "castPrv":Ljava/security/PrivateKey;, "TPRV;"
    :cond_3
    new-instance v8, Ljava/security/InvalidKeyException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Mismatched private key types: expected="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 94
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 101
    .end local v7    # "orgType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :goto_1
    new-instance v3, Ljava/security/KeyPair;

    invoke-direct {v3, v0, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v3
.end method

.method public abstract clonePrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPRV;)TPRV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract clonePublicKey(Ljava/security/PublicKey;)Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPUB;)TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public generateKeyPair(I)Ljava/security/KeyPair;
    .locals 2
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/apache/sshd/common/config/keys/KeyEntryResolver;, "Lorg/apache/sshd/common/config/keys/KeyEntryResolver<TPUB;TPRV;>;"
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->getKeyPairGenerator()Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 56
    .local v0, "gen":Ljava/security/KeyPairGenerator;
    invoke-virtual {v0, p1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 57
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    return-object v1
.end method

.method public abstract getKeyFactoryInstance()Ljava/security/KeyFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract getKeyPairGenerator()Ljava/security/KeyPairGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
