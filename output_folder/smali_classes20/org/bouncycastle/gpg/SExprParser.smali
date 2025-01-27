.class public Lorg/bouncycastle/gpg/SExprParser;
.super Ljava/lang/Object;


# instance fields
.field private final digestProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/gpg/SExprParser;->digestProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    return-void
.end method

.method private static extractData(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;)[[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "protected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-static {p0}, Lorg/bouncycastle/gpg/SXprUtils;->parseS2K(Ljava/io/InputStream;)Lorg/bouncycastle/bcpg/S2K;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-static {p0, v3}, Lorg/bouncycastle/gpg/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v7

    invoke-static {p0}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-static {p0, v3}, Lorg/bouncycastle/gpg/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v8

    invoke-static {p0}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-interface {p1, v0}, Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;->createDecryptor(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object v4

    const/4 p1, 0x7

    invoke-virtual {v4, p1, v1}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->makeKeyFromPassPhrase(ILorg/bouncycastle/bcpg/S2K;)[B

    move-result-object v6

    const/4 v5, 0x7

    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual/range {v4 .. v10}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->recoverKeyData(I[B[B[BII)[B

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0x29

    if-ltz v1, :cond_0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "unexpected end to SExpr"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-static {p0}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-static {p0}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    const/4 p0, 0x2

    new-array p0, p0, [[B

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    aput-object v2, p0, p1

    return-object p0

    :cond_3
    const-string p0, "d"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move-object p0, v2

    check-cast p0, [[B

    return-object v2

    :cond_4
    new-instance p0, Lorg/bouncycastle/openpgp/PGPException;

    const-string p1, "protected block not found"

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processDSASecretKey(Ljava/io/InputStream;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;)Ljava/math/BigInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-static {p1, p6}, Lorg/bouncycastle/gpg/SExprParser;->extractData(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;)[[B

    move-result-object p1

    const/4 p6, 0x0

    aget-object p6, p1, p6

    const/4 v0, 0x1

    aget-object p1, p1, v0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    const-string/jumbo p6, "x"

    invoke-direct {p0, p6, v0}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-static {v0, v2}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "hash keyword expected"

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-static {v0, v2}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "sha1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-static {v0, v2}, Lorg/bouncycastle/gpg/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-static {v0}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/gpg/SExprParser;->digestProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "(3:dsa"

    invoke-static {v4}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    const-string v4, "p"

    invoke-direct {p0, v3, v4, p2}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;)V

    const-string p2, "q"

    invoke-direct {p0, v3, p2, p3}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;)V

    const-string p2, "g"

    invoke-direct {p0, v3, p2, p4}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;)V

    const-string/jumbo p2, "y"

    invoke-direct {p0, v3, p2, p5}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;)V

    invoke-direct {p0, v3, p6, v1}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;)V

    if-eqz p1, :cond_0

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    const-string p1, ")"

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object p1

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "checksum on protected data failed in SExpr"

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    invoke-direct {p1, v3}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    invoke-direct {p1, v3}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processECSecretKey(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;[BLorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;)Ljava/math/BigInteger;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-static {p1, p5}, Lorg/bouncycastle/gpg/SExprParser;->extractData(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;)[[B

    move-result-object p1

    const/4 p5, 0x0

    aget-object p5, p1, p5

    const/4 v0, 0x1

    aget-object p1, p1, v0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    const-string p5, "d"

    invoke-direct {p0, p5, v0}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-static {v0, v2}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "hash keyword expected"

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-static {v0, v2}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "sha1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-static {v0, v2}, Lorg/bouncycastle/gpg/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-static {v0}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/gpg/SExprParser;->digestProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "(3:ecc"

    invoke-static {v4}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    const-string p2, "q"

    invoke-direct {p0, v3, p2, p4}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;[B)V

    invoke-direct {p0, v3, p5, v1}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;)V

    if-eqz p1, :cond_0

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    invoke-static {p3}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object p1

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "checksum on protected data failed in SExpr"

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    invoke-direct {p1, v3}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    invoke-direct {p1, v3}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processElGamalSecretKey(Ljava/io/InputStream;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;)Ljava/math/BigInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-static {p1, p5}, Lorg/bouncycastle/gpg/SExprParser;->extractData(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;)[[B

    move-result-object p1

    const/4 p5, 0x0

    aget-object p5, p1, p5

    const/4 v0, 0x1

    aget-object p1, p1, v0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    const-string/jumbo p5, "x"

    invoke-direct {p0, p5, v0}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-static {v0, v2}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "hash keyword expected"

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-static {v0, v2}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "sha1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-static {v0, v2}, Lorg/bouncycastle/gpg/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-static {v0}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/gpg/SExprParser;->digestProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "(3:elg"

    invoke-static {v4}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    const-string v4, "p"

    invoke-direct {p0, v3, v4, p2}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;)V

    const-string p2, "g"

    invoke-direct {p0, v3, p2, p3}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;)V

    const-string/jumbo p2, "y"

    invoke-direct {p0, v3, p2, p4}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;)V

    invoke-direct {p0, v3, p5, v1}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;)V

    if-eqz p1, :cond_0

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    const-string p1, ")"

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object p1

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "checksum on protected data failed in SExpr"

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    invoke-direct {p1, v3}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    invoke-direct {p1, v3}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processRSASecretKey(Ljava/io/InputStream;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;)[Ljava/math/BigInteger;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v1, v2}, Lorg/bouncycastle/gpg/SExprParser;->extractData(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;)[[B

    move-result-object v2

    const-string v3, "d"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v6

    invoke-static {v1, v6}, Lorg/bouncycastle/gpg/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v5, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    aget-object v1, v2, v4

    aget-object v6, v2, v5

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v7}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-static {v7}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-direct {v0, v3, v7}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v1

    move-object/from16 v16, v7

    move-object v7, v1

    move-object/from16 v1, v16

    :goto_0
    const-string v8, "p"

    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v9

    const-string v10, "q"

    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v11

    const-string/jumbo v12, "u"

    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v13

    const/4 v15, 0x4

    const/4 v14, 0x2

    if-nez v2, :cond_1

    new-array v1, v15, [Ljava/math/BigInteger;

    aput-object v7, v1, v4

    aput-object v9, v1, v5

    aput-object v11, v1, v14

    const/4 v2, 0x3

    aput-object v13, v1, v2

    return-object v1

    :cond_1
    invoke-static {v1}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-static {v1, v2}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "hash"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "hash keyword expected"

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-static {v1, v2}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "sha1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-static {v1, v2}, Lorg/bouncycastle/gpg/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-static {v1}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    iget-object v1, v0, Lorg/bouncycastle/gpg/SExprParser;->digestProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    if-eqz v1, :cond_4

    invoke-interface {v1, v14}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const-string v5, "(3:rsa"

    invoke-static {v5}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    const-string v5, "n"

    move-object/from16 v14, p2

    invoke-direct {v0, v4, v5, v14}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;)V

    const-string v5, "e"

    move-object/from16 v14, p3

    invoke-direct {v0, v4, v5, v14}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;)V

    invoke-direct {v0, v4, v3, v7}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;)V

    invoke-direct {v0, v4, v8, v9}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;)V

    invoke-direct {v0, v4, v10, v11}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;)V

    invoke-direct {v0, v4, v12, v13}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;)V

    if-eqz v6, :cond_2

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    const-string v3, ")"

    invoke-static {v3}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {v1}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object v1

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v2, "checksum on protected data failed in SExpr"

    invoke-direct {v1, v2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    new-array v1, v15, [Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    const/4 v2, 0x2

    aput-object v11, v1, v2

    const/4 v2, 0x3

    aput-object v13, v1, v2

    return-object v1

    :cond_5
    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    invoke-direct {v1, v5}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    invoke-direct {v1, v5}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p2, v0}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p1

    invoke-static {p2, p1}, Lorg/bouncycastle/gpg/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object p1

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-static {p2}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value expected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/gpg/SExprParser;->writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;[B)V

    return-void
.end method

.method private writeCanonical(Ljava/io/OutputStream;Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length v0, p3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    const-string p2, ")"

    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public parseSecretKey(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSecretKey;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p3

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v1, v0}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "protected-private-key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "private-key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string/jumbo v1, "unknown key type found"

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v1, v0}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ecc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    const-string v3, "q"

    const-string v9, "passed in public key does not match secret key"

    if-eqz v2, :cond_5

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v1, v0}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v1, v0}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v1, v0}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v1, v0}, Lorg/bouncycastle/gpg/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/gpg/SExprParser;->processECSecretKey(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;[BLorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "NIST "

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :cond_2
    new-instance v1, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;

    invoke-static {v10}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v6, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;)V

    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->getEncodedPoint()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->getEncodedPoint()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lorg/bouncycastle/openpgp/PGPSecretKey;

    new-instance v2, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v3, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    invoke-direct {v3, v0}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;->getEncoded()[B

    move-result-object v14

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    invoke-direct {v1, v2, v8}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v1

    :cond_3
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    invoke-direct {v0, v9}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "no q value found"

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v2, "dsa"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v4, "y"

    const-string v5, "g"

    const-string v10, "p"

    if-eqz v2, :cond_7

    invoke-direct {p0, v10, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct {p0, v3, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {p0, v5, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-direct {p0, v4, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v13

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/gpg/SExprParser;->processDSASecretKey(Ljava/io/InputStream;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;

    invoke-direct {v1, v10, v11, v12, v13}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lorg/bouncycastle/openpgp/PGPSecretKey;

    new-instance v2, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v3, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;

    invoke-direct {v3, v0}, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;->getEncoded()[B

    move-result-object v14

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    invoke-direct {v1, v2, v8}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v1

    :cond_6
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    invoke-direct {v0, v9}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v2, "elg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, v10, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {p0, v5, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct {p0, v4, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v11

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/gpg/SExprParser;->processElGamalSecretKey(Ljava/io/InputStream;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;

    invoke-direct {v1, v6, v10, v11}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lorg/bouncycastle/openpgp/PGPSecretKey;

    new-instance v2, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v3, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;

    invoke-direct {v3, v0}, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;->getEncoded()[B

    move-result-object v14

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    invoke-direct {v1, v2, v8}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v1

    :cond_8
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    invoke-direct {v0, v9}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v2, "rsa"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, "n"

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v2, "e"

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/bouncycastle/gpg/SExprParser;->processRSASecretKey(Ljava/io/InputStream;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;)[Ljava/math/BigInteger;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    invoke-direct {v3, v0, v2}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lorg/bouncycastle/openpgp/PGPSecretKey;

    new-instance v2, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v3, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    aget-object v5, v1, v6

    const/4 v6, 0x2

    aget-object v1, v1, v6

    invoke-direct {v3, v4, v5, v1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getEncoded()[B

    move-result-object v14

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    invoke-direct {v0, v2, v8}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v0

    :cond_a
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    invoke-direct {v0, v9}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseSecretKey(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)Lorg/bouncycastle/openpgp/PGPSecretKey;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p3

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v1, v0}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "protected-private-key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "private-key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string/jumbo v1, "unknown key type found"

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v1, v0}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ecc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "q"

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v1, v0}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v1, v0}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "NIST "

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v5, v0

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/gpg/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v1, v0}, Lorg/bouncycastle/gpg/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v1, v0}, Lorg/bouncycastle/gpg/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v6

    new-instance v15, Lorg/bouncycastle/bcpg/PublicKeyPacket;

    const/16 v0, 0x13

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    new-instance v9, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;

    invoke-static {v5}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v4, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;)V

    invoke-direct {v15, v0, v3, v9}, Lorg/bouncycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/bouncycastle/bcpg/BCPGKey;)V

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/gpg/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v5

    move-object v4, v6

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/gpg/SExprParser;->processECSecretKey(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;[BLorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/openpgp/PGPSecretKey;

    new-instance v2, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v3, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    invoke-direct {v3, v0}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;->getEncoded()[B

    move-result-object v14

    move-object v9, v2

    move-object v10, v15

    invoke-direct/range {v9 .. v14}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    new-instance v0, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-direct {v0, v15, v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v1

    :cond_3
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "no q value found"

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v2, "dsa"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v5, "y"

    const-string v6, "g"

    const-string v9, "p"

    if-eqz v2, :cond_5

    invoke-direct {v7, v9, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v7, v3, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct {v7, v6, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v7, v5, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/gpg/SExprParser;->processDSASecretKey(Ljava/io/InputStream;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v13, Lorg/bouncycastle/bcpg/PublicKeyPacket;

    const/16 v1, 0x11

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;

    invoke-direct {v3, v9, v10, v11, v12}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v13, v1, v2, v3}, Lorg/bouncycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/bouncycastle/bcpg/BCPGKey;)V

    new-instance v9, Lorg/bouncycastle/openpgp/PGPSecretKey;

    new-instance v10, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v1, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;

    invoke-direct {v1, v0}, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;->getEncoded()[B

    move-result-object v6

    move-object v1, v10

    move-object v2, v13

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    new-instance v0, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-direct {v0, v13, v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-direct {v9, v10, v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v9

    :cond_5
    const-string v2, "elg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {v7, v9, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v7, v6, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v7, v5, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v6

    move-object v4, v10

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/gpg/SExprParser;->processElGamalSecretKey(Ljava/io/InputStream;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/bcpg/PublicKeyPacket;

    const/16 v2, 0x10

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    new-instance v4, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;

    invoke-direct {v4, v9, v6, v10}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/bouncycastle/bcpg/BCPGKey;)V

    new-instance v2, Lorg/bouncycastle/openpgp/PGPSecretKey;

    new-instance v3, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-instance v4, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;

    invoke-direct {v4, v0}, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v4}, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;->getEncoded()[B

    move-result-object v16

    move-object v11, v3

    move-object v12, v1

    invoke-direct/range {v11 .. v16}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    new-instance v0, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-direct {v0, v1, v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v2

    :cond_6
    const-string v2, "rsa"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "n"

    invoke-direct {v7, v0, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v2, "e"

    invoke-direct {v7, v2, v1}, Lorg/bouncycastle/gpg/SExprParser;->readBigInteger(Ljava/lang/String;Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-direct {v7, v1, v0, v2, v3}, Lorg/bouncycastle/gpg/SExprParser;->processRSASecretKey(Ljava/io/InputStream;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;)[Ljava/math/BigInteger;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/bcpg/PublicKeyPacket;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    new-instance v6, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    invoke-direct {v6, v0, v2}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v3, v4, v5, v6}, Lorg/bouncycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/bouncycastle/bcpg/BCPGKey;)V

    new-instance v0, Lorg/bouncycastle/openpgp/PGPSecretKey;

    new-instance v2, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v5, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    aget-object v4, v1, v4

    const/4 v9, 0x2

    aget-object v1, v1, v9

    invoke-direct {v5, v6, v4, v1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v5}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getEncoded()[B

    move-result-object v14

    move-object v9, v2

    move-object v10, v3

    invoke-direct/range {v9 .. v14}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    new-instance v1, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-direct {v1, v3, v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v0

    :cond_7
    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
