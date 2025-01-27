.class public final Lorg/apache/sshd/common/digest/DigestUtils;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkSupported(Ljava/lang/String;)Z
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 51
    const-string v0, "No algorithm"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .local v1, "digest":Ljava/security/MessageDigest;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 55
    .end local v1    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public static findDigestByAlgorithm(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/digest/Digest;
    .locals 4
    .param p0, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lorg/apache/sshd/common/digest/Digest;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "+TD;>;)TD;"
        }
    .end annotation

    .line 69
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/lang/String;>;"
    .local p2, "digests":Ljava/util/Collection;, "Ljava/util/Collection<+TD;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/digest/Digest;

    .line 74
    .local v2, "d":Lorg/apache/sshd/common/digest/Digest;, "TD;"
    invoke-interface {v2}, Lorg/apache/sshd/common/digest/Digest;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_1

    .line 75
    return-object v2

    .line 77
    .end local v2    # "d":Lorg/apache/sshd/common/digest/Digest;, "TD;"
    :cond_1
    goto :goto_0

    .line 79
    :cond_2
    return-object v1

    .line 70
    :cond_3
    :goto_1
    return-object v1
.end method

.method public static findFactoryByAlgorithm(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/digest/DigestFactory;
    .locals 4
    .param p0, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lorg/apache/sshd/common/digest/DigestFactory;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "+TF;>;)TF;"
        }
    .end annotation

    .line 91
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/lang/String;>;"
    .local p2, "factories":Ljava/util/Collection;, "Ljava/util/Collection<+TF;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/digest/DigestFactory;

    .line 96
    .local v2, "f":Lorg/apache/sshd/common/digest/DigestFactory;, "TF;"
    invoke-interface {v2}, Lorg/apache/sshd/common/digest/DigestFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_1

    .line 97
    return-object v2

    .line 99
    .end local v2    # "f":Lorg/apache/sshd/common/digest/DigestFactory;, "TF;"
    :cond_1
    goto :goto_0

    .line 101
    :cond_2
    return-object v1

    .line 92
    :cond_3
    :goto_1
    return-object v1
.end method

.method public static getFingerPrint(Lorg/apache/sshd/common/Factory;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "+",
            "Lorg/apache/sshd/common/digest/Digest;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    .local p0, "f":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/digest/Digest;>;"
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/digest/DigestUtils;->getFingerPrint(Lorg/apache/sshd/common/Factory;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFingerPrint(Lorg/apache/sshd/common/Factory;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "+",
            "Lorg/apache/sshd/common/digest/Digest;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    .local p0, "f":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/digest/Digest;>;"
    const-string v0, "No factory"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/Factory;

    invoke-interface {v0}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/digest/Digest;

    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/digest/DigestUtils;->getFingerPrint(Lorg/apache/sshd/common/digest/Digest;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getFingerPrint(Lorg/apache/sshd/common/Factory;[B)Ljava/lang/String;
    .locals 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "+",
            "Lorg/apache/sshd/common/digest/Digest;",
            ">;[B)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    .local p0, "f":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/digest/Digest;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/sshd/common/digest/DigestUtils;->getFingerPrint(Lorg/apache/sshd/common/Factory;[BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFingerPrint(Lorg/apache/sshd/common/Factory;[BII)Ljava/lang/String;
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "+",
            "Lorg/apache/sshd/common/digest/Digest;",
            ">;[BII)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    .local p0, "f":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/digest/Digest;>;"
    const-string v0, "No factory"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/Factory;

    invoke-interface {v0}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/digest/Digest;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/sshd/common/digest/DigestUtils;->getFingerPrint(Lorg/apache/sshd/common/digest/Digest;[BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFingerPrint(Lorg/apache/sshd/common/digest/Digest;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Lorg/apache/sshd/common/digest/Digest;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/digest/DigestUtils;->getFingerPrint(Lorg/apache/sshd/common/digest/Digest;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFingerPrint(Lorg/apache/sshd/common/digest/Digest;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Lorg/apache/sshd/common/digest/Digest;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 152
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/digest/DigestUtils;->getFingerPrint(Lorg/apache/sshd/common/digest/Digest;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getFingerPrint(Lorg/apache/sshd/common/digest/Digest;[B)Ljava/lang/String;
    .locals 2
    .param p0, "d"    # Lorg/apache/sshd/common/digest/Digest;
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/sshd/common/digest/DigestUtils;->getFingerPrint(Lorg/apache/sshd/common/digest/Digest;[BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFingerPrint(Lorg/apache/sshd/common/digest/Digest;[BII)Ljava/lang/String;
    .locals 7
    .param p0, "d"    # Lorg/apache/sshd/common/digest/Digest;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    if-gtz p3, :cond_0

    .line 201
    const/4 v0, 0x0

    return-object v0

    .line 204
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/apache/sshd/common/digest/DigestUtils;->getRawFingerprint(Lorg/apache/sshd/common/digest/Digest;[BII)[B

    move-result-object v0

    .line 205
    .local v0, "data":[B
    invoke-interface {p0}, Lorg/apache/sshd/common/digest/Digest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "algo":Ljava/lang/String;
    sget-object v2, Lorg/apache/sshd/common/digest/BuiltinDigests;->md5:Lorg/apache/sshd/common/digest/BuiltinDigests;

    invoke-virtual {v2}, Lorg/apache/sshd/common/digest/BuiltinDigests;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ":"

    if-eqz v2, :cond_1

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-static {v3, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex(C[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 210
    :cond_1
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    .line 211
    .local v2, "encoder":Ljava/util/Base64$Encoder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static varargs getRawFingerprint(Lorg/apache/sshd/common/digest/Digest;[B)[B
    .locals 2
    .param p0, "d"    # Lorg/apache/sshd/common/digest/Digest;
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 215
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/sshd/common/digest/DigestUtils;->getRawFingerprint(Lorg/apache/sshd/common/digest/Digest;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getRawFingerprint(Lorg/apache/sshd/common/digest/Digest;[BII)[B
    .locals 1
    .param p0, "d"    # Lorg/apache/sshd/common/digest/Digest;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    if-gtz p3, :cond_0

    .line 220
    const/4 v0, 0x0

    return-object v0

    .line 223
    :cond_0
    const-string v0, "No digest"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/digest/Digest;

    invoke-interface {v0}, Lorg/apache/sshd/common/digest/Digest;->init()V

    .line 224
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/sshd/common/digest/Digest;->update([BII)V

    .line 226
    invoke-interface {p0}, Lorg/apache/sshd/common/digest/Digest;->digest()[B

    move-result-object v0

    return-object v0
.end method
