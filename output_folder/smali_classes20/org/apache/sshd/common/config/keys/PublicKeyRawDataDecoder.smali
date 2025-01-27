.class public interface abstract Lorg/apache/sshd/common/config/keys/PublicKeyRawDataDecoder;
.super Ljava/lang/Object;
.source "PublicKeyRawDataDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PUB::",
        "Ljava/security/PublicKey;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;[BIILjava/util/Map;)Ljava/security/PublicKey;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "keyData"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/lang/String;",
            "[BII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PublicKeyRawDataDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyRawDataDecoder<TPUB;>;"
    .local p6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-gtz p5, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3, p4, p5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 62
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p0, p1, p2, v0, p6}, Lorg/apache/sshd/common/config/keys/PublicKeyRawDataDecoder;->decodePublicKeyByType(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 62
    return-object v1

    .line 61
    :catchall_0
    move-exception v1

    .end local v0    # "stream":Ljava/io/InputStream;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "keyType":Ljava/lang/String;
    .end local p3    # "keyData":[B
    .end local p4    # "offset":I
    .end local p5    # "length":I
    .end local p6    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    .restart local v0    # "stream":Ljava/io/InputStream;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "keyType":Ljava/lang/String;
    .restart local p3    # "keyData":[B
    .restart local p4    # "offset":I
    .restart local p5    # "length":I
    .restart local p6    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;[BLjava/util/Map;)Ljava/security/PublicKey;
    .locals 7
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "keyData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PublicKeyRawDataDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyRawDataDecoder<TPUB;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p3}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lorg/apache/sshd/common/config/keys/PublicKeyRawDataDecoder;->decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;[BIILjava/util/Map;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public abstract decodePublicKeyByType(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
