.class final Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser$2;
.super Ljava/lang/Object;
.source "BufferPublicKeyParser.java"

# interfaces
.implements Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;->aggregate(Ljava/util/Collection;)Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<",
        "Ljava/security/PublicKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$parsers:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser$2;->val$parsers:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawPublicKey(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/security/PublicKey;
    .locals 3
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser$2;->val$parsers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;

    .line 97
    .local v1, "p":Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<+Ljava/security/PublicKey;>;"
    invoke-interface {v1, p1}, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;->isKeyTypeSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-interface {v1, p1, p2}, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;->getRawPublicKey(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    .line 100
    .end local v1    # "p":Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<+Ljava/security/PublicKey;>;"
    :cond_0
    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No aggregate matcher for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isKeyTypeSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "keyType"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser$2;->val$parsers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;

    .line 86
    .local v1, "p":Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<+Ljava/security/PublicKey;>;"
    invoke-interface {v1, p1}, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;->isKeyTypeSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const/4 v0, 0x1

    return v0

    .line 89
    .end local v1    # "p":Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<+Ljava/security/PublicKey;>;"
    :cond_0
    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser$2;->val$parsers:Ljava/util/Collection;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
