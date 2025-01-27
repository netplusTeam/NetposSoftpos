.class public Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;
.super Ljava/lang/Object;
.source "RawKdfOptions.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;


# instance fields
.field private name:Ljava/lang/String;

.field private options:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public decodePrivateKeyBytes(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 3
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "cipherName"    # Ljava/lang/String;
    .param p4, "privateDataBytes"    # [B
    .param p5, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported KDF algorithm ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 89
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 90
    return v0

    .line 92
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 93
    return v1

    .line 95
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 96
    return v0

    .line 99
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;

    .line 100
    .local v2, "other":Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/sshd/common/util/GenericUtils;->safeCompare(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    if-nez v3, :cond_3

    .line 101
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->getOptions()[B

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->getOptions()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    nop

    .line 100
    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()[B
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->options:[B

    invoke-static {v0}, Lorg/apache/sshd/common/util/NumberUtils;->emptyIfNull([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 84
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->hashCode(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->getOptions()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public initialize(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "kdfOptions"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->setName(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->options:[B

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->setOptions([B)V

    .line 51
    return-void
.end method

.method public isEncrypted()Z
    .locals 2

    .line 72
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->IS_NONE_KDF:Ljava/util/function/Predicate;

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->name:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setOptions([B)V
    .locals 1
    .param p1, "options"    # [B

    .line 67
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->emptyIfNull([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->options:[B

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/RawKdfOptions;->getOptions()[B

    move-result-object v1

    const/16 v2, 0x3a

    invoke-static {v2, v1}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex(C[B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
