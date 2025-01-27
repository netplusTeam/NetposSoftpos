.class public abstract Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;
.super Ljava/lang/Object;
.source "AbstractBufferPublicKeyParser.java"

# interfaces
.implements Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PUB::",
        "Ljava/security/PublicKey;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<",
        "TPUB;>;"
    }
.end annotation


# instance fields
.field private final keyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TPUB;>;"
        }
    .end annotation
.end field

.field private final supported:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TPUB;>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser<TPUB;>;"
    .local p1, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TPUB;>;"
    .local p2, "supported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "No key class"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;->keyClass:Ljava/lang/Class;

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "No supported types for %s"

    invoke-static {p2, v1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;->supported:Ljava/util/Collection;

    .line 51
    return-void
.end method

.method protected varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .param p2, "supported"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TPUB;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser<TPUB;>;"
    .local p1, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TPUB;>;"
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected generatePublicKey(Ljava/lang/String;Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/lang/String;",
            "TS;)TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser<TPUB;>;"
    .local p2, "keySpec":Ljava/security/spec/KeySpec;, "TS;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 71
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v0, p2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    .line 72
    .local v1, "key":Ljava/security/PublicKey;
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;->getKeyClass()Ljava/lang/Class;

    move-result-object v2

    .line 73
    .local v2, "kc":Ljava/lang/Class;, "Ljava/lang/Class<TPUB;>;"
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    return-object v3

    .line 74
    :cond_0
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatched generated key types: expected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actual="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final getKeyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TPUB;>;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser<TPUB;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;->keyClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser<TPUB;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedKeyTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser<TPUB;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;->supported:Ljava/util/Collection;

    return-object v0
.end method

.method public isKeyTypeSupported(Ljava/lang/String;)Z
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;

    .line 63
    .local p0, "this":Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser<TPUB;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;->getSupportedKeyTypes()Ljava/util/Collection;

    move-result-object v0

    .line 64
    .local v0, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_0

    .line 65
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v1

    if-lez v1, :cond_0

    .line 66
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 64
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    .local p0, "this":Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser<TPUB;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;->getSupportedKeyTypes()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
