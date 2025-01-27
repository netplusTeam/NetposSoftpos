.class final Lio/netty/handler/ssl/PseudoRandomFunction;
.super Ljava/lang/Object;
.source "PseudoRandomFunction.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static concat([B[B)[B
    .locals 4
    .param p0, "first"    # [B
    .param p1, "second"    # [B

    .line 90
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 91
    .local v0, "result":[B
    array-length v1, p0

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    return-object v0
.end method

.method static hash([B[B[BILjava/lang/String;)[B
    .locals 7
    .param p0, "secret"    # [B
    .param p1, "label"    # [B
    .param p2, "seed"    # [B
    .param p3, "length"    # I
    .param p4, "algo"    # Ljava/lang/String;

    .line 62
    if-ltz p3, :cond_1

    .line 66
    :try_start_0
    invoke-static {p4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 67
    .local v0, "hmac":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p0, p4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 75
    int-to-double v1, p3

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 76
    .local v1, "iterations":I
    sget-object v2, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    .line 77
    .local v2, "expansion":[B
    invoke-static {p1, p2}, Lio/netty/handler/ssl/PseudoRandomFunction;->concat([B[B)[B

    move-result-object v3

    .line 78
    .local v3, "data":[B
    move-object v4, v3

    .line 79
    .local v4, "A":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 80
    invoke-virtual {v0, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v6

    move-object v4, v6

    .line 81
    invoke-static {v4, v3}, Lio/netty/handler/ssl/PseudoRandomFunction;->concat([B[B)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v6

    invoke-static {v2, v6}, Lio/netty/handler/ssl/PseudoRandomFunction;->concat([B[B)[B

    move-result-object v6

    move-object v2, v6

    .line 79
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 83
    .end local v5    # "i":I
    :cond_0
    invoke-static {v2, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 84
    .end local v0    # "hmac":Ljavax/crypto/Mac;
    .end local v1    # "iterations":I
    .end local v2    # "expansion":[B
    .end local v3    # "data":[B
    .end local v4    # "A":[B
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find algo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 63
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must provide a length greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
