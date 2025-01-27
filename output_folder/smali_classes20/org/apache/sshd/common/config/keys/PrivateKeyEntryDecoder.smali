.class public interface abstract Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;
.super Ljava/lang/Object;
.source "PrivateKeyEntryDecoder.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/KeyEntryResolver;
.implements Lorg/apache/sshd/common/config/keys/PrivateKeyEntryResolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PUB::",
        "Ljava/security/PublicKey;",
        "PRV::",
        "Ljava/security/PrivateKey;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/config/keys/KeyEntryResolver<",
        "TPUB;TPRV;>;",
        "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryResolver;"
    }
.end annotation


# virtual methods
.method public abstract decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/io/InputStream;",
            ")TPRV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/security/PrivateKey;
    .locals 5
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p3, "keyData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/io/InputStream;",
            ")TPRV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<TPUB;TPRV;>;"
    const/16 v0, 0x100

    invoke-static {p3, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;->getSupportedKeyTypes()Ljava/util/NavigableSet;

    move-result-object v1

    .line 101
    .local v1, "supported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-interface {p0, p1, v0, p2, p3}, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;->decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/security/PrivateKey;

    move-result-object v2

    return-object v2

    .line 102
    :cond_0
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reported key type ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") not in supported list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    .end local v1    # "supported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    new-instance v1, Ljava/io/StreamCorruptedException;

    const-string v2, "Missing key type string"

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;[B)Ljava/security/PrivateKey;
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p3, "keyData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "[B)TPRV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<TPUB;TPRV;>;"
    invoke-static {p3}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;->decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;[BII)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;[BII)Ljava/security/PrivateKey;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p3, "keyData"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "[BII)TPRV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<TPUB;TPRV;>;"
    if-gtz p5, :cond_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3, p4, p5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 87
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p0, p1, p2, v0}, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;->decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/security/PrivateKey;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 87
    return-object v1

    .line 86
    :catchall_0
    move-exception v1

    .end local v0    # "stream":Ljava/io/InputStream;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p3    # "keyData":[B
    .end local p4    # "offset":I
    .end local p5    # "length":I
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .restart local v0    # "stream":Ljava/io/InputStream;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p3    # "keyData":[B
    .restart local p4    # "offset":I
    .restart local p5    # "length":I
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

.method public encodePrivateKey(Ljava/io/OutputStream;Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "TPRV;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<TPUB;TPRV;>;"
    .local p2, "key":Ljava/security/PrivateKey;, "TPRV;"
    const-string v0, "No private key provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPublicKeyRecoverySupported()Z
    .locals 1

    .line 141
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<TPUB;TPRV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public recoverPublicKey(Ljava/security/PrivateKey;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPRV;)TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 152
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<TPUB;TPRV;>;"
    .local p1, "prvKey":Ljava/security/PrivateKey;, "TPRV;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public resolve(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;[B)Ljava/security/PrivateKey;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "keyData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder<TPUB;TPRV;>;"
    const-string v0, "No key type provided"

    invoke-static {p2, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;->getSupportedKeyTypes()Ljava/util/NavigableSet;

    move-result-object v0

    .line 54
    .local v0, "supported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;->EMPTY:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    invoke-interface {p0, p1, v1, p3}, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryDecoder;->decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;[B)Ljava/security/PrivateKey;

    move-result-object v1

    return-object v1

    .line 58
    :cond_0
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolve("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not in listed supported types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
