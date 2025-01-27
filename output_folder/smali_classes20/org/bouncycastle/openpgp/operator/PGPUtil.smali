.class Lorg/bouncycastle/openpgp/operator/PGPUtil;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/bcpg/HashAlgorithmTags;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeKeyFromPassPhrase(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ILorg/bouncycastle/bcpg/S2K;[C)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/16 v0, 0x100

    const/16 v1, 0xc0

    const/16 v2, 0x80

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lorg/bouncycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown symmetric algorithm: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 v0, 0x40

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v2

    :goto_0
    :pswitch_3
    invoke-static {p3}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array p3, v0, [B

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/bouncycastle/bcpg/S2K;->getHashAlgorithm()I

    move-result v1

    invoke-interface {p0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Lorg/bouncycastle/openpgp/PGPException;

    const-string p1, "s2k/digestCalculator mismatch"

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {p0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    :goto_1
    invoke-interface {p0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_2
    if-ge v3, v0, :cond_9

    move v5, v2

    if-eqz p2, :cond_5

    :goto_3
    if-eq v5, v4, :cond_2

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Lorg/bouncycastle/bcpg/S2K;->getIV()[B

    move-result-object v5

    invoke-virtual {p2}, Lorg/bouncycastle/bcpg/S2K;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :pswitch_4
    new-instance p0, Lorg/bouncycastle/openpgp/PGPException;

    goto :goto_5

    :pswitch_5
    invoke-virtual {p2}, Lorg/bouncycastle/bcpg/S2K;->getIterationCount()J

    move-result-wide v6

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    array-length v8, v5

    array-length v9, p1

    add-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    :goto_4
    cmp-long v10, v6, v8

    if-lez v10, :cond_7

    array-length v10, v5

    int-to-long v10, v10

    cmp-long v10, v6, v10

    if-gez v10, :cond_3

    long-to-int v6, v6

    invoke-virtual {v1, v5, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_8

    :cond_3
    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V

    array-length v10, v5

    int-to-long v10, v10

    sub-long/2addr v6, v10

    array-length v10, p1

    int-to-long v10, v10

    cmp-long v10, v6, v10

    if-gez v10, :cond_4

    long-to-int v6, v6

    invoke-virtual {v1, p1, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    move-wide v6, v8

    goto :goto_4

    :cond_4
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    array-length v10, p1

    int-to-long v10, v10

    sub-long/2addr v6, v10

    goto :goto_4

    :pswitch_6
    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V

    goto :goto_7

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown S2K type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/bcpg/S2K;->getType()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_6
    if-eq v5, v4, :cond_6

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    :goto_7
    :pswitch_7
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_7
    :goto_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-interface {p0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object v5

    array-length v6, v5

    sub-int v7, v0, v3

    if-le v6, v7, :cond_8

    invoke-static {v5, v2, p3, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    :cond_8
    array-length v6, v5

    invoke-static {v5, v2, p3, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_9
    array-length v5, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception calculating digest: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_9
    move p0, v2

    :goto_a
    array-length p2, p1

    if-eq p0, p2, :cond_a

    aput-byte v2, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_a

    :cond_a
    return-object p3

    :cond_b
    new-instance p0, Lorg/bouncycastle/openpgp/PGPException;

    const-string p1, "digestCalculator not for MD5"

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static makeKeyFromPassPhrase(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;ILorg/bouncycastle/bcpg/S2K;[C)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/bcpg/S2K;->getHashAlgorithm()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0, v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/PGPUtil;->makeKeyFromPassPhrase(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ILorg/bouncycastle/bcpg/S2K;[C)[B

    move-result-object p0

    return-object p0
.end method
