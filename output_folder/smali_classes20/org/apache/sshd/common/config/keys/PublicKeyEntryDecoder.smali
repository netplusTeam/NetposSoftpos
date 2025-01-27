.class public interface abstract Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;
.super Ljava/lang/Object;
.source "PublicKeyEntryDecoder.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/KeyEntryResolver;
.implements Lorg/apache/sshd/common/config/keys/PublicKeyRawDataDecoder;
.implements Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;


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
        "Lorg/apache/sshd/common/config/keys/PublicKeyRawDataDecoder<",
        "TPUB;>;",
        "Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;"
    }
.end annotation


# virtual methods
.method public decodePublicKeyByType(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/PublicKey;
    .locals 5
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "keyData"    # Ljava/io/InputStream;
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

    .line 66
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<TPUB;TPRV;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0x100

    invoke-static {p3, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;->getSupportedKeyTypes()Ljava/util/NavigableSet;

    move-result-object v1

    .line 72
    .local v1, "supported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-interface {p0, p1, v0, p3, p4}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;->decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/PublicKey;

    move-result-object v2

    return-object v2

    .line 73
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

    .line 68
    .end local v1    # "supported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    new-instance v1, Ljava/io/StreamCorruptedException;

    const-string v2, "Missing key type string"

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract encodePublicKey(Ljava/io/OutputStream;Ljava/security/PublicKey;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "TPUB;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public resolve(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;[BLjava/util/Map;)Ljava/security/PublicKey;
    .locals 4
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
            ">;)",
            "Ljava/security/PublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<TPUB;TPRV;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "No key type provided"

    invoke-static {p2, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    invoke-interface {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;->getSupportedKeyTypes()Ljava/util/NavigableSet;

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
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;->decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;[BLjava/util/Map;)Ljava/security/PublicKey;

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
