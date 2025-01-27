.class public abstract Lorg/apache/sshd/common/kex/AbstractDH;
.super Ljava/lang/Object;
.source "AbstractDH.java"


# instance fields
.field private e_array:[B

.field private k_array:[B

.field protected myKeyAgree:Ljavax/crypto/KeyAgreement;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static stripLeadingZeroes([B)[B
    .locals 5
    .param p0, "x"    # [B

    .line 133
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    .line 134
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 135
    aget-byte v2, p0, v1

    if-nez v2, :cond_0

    .line 136
    nop

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    if-nez v1, :cond_1

    .line 140
    return-object p0

    .line 143
    :cond_1
    sub-int v2, v0, v1

    new-array v2, v2, [B

    .line 144
    .local v2, "ret":[B
    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {p0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    return-object v2

    .line 149
    .end local v1    # "i":I
    .end local v2    # "ret":[B
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No non-zero values in generated secret"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected abstract calculateE()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract calculateK()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected checkKeyAgreementNecessity()V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/sshd/common/kex/AbstractDH;->e_array:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/sshd/common/kex/AbstractDH;->k_array:[B

    if-nez v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/kex/AbstractDH;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    if-eqz v0, :cond_1

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/sshd/common/kex/AbstractDH;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    .line 109
    :cond_1
    return-void

    .line 103
    :cond_2
    :goto_0
    return-void
.end method

.method public getE()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/apache/sshd/common/kex/AbstractDH;->e_array:[B

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/AbstractDH;->calculateE()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/kex/AbstractDH;->e_array:[B

    .line 61
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/AbstractDH;->checkKeyAgreementNecessity()V

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/kex/AbstractDH;->e_array:[B

    return-object v0
.end method

.method public abstract getHash()Lorg/apache/sshd/common/digest/Digest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getK()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/sshd/common/kex/AbstractDH;->k_array:[B

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/AbstractDH;->calculateK()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/kex/AbstractDH;->k_array:[B

    .line 87
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/AbstractDH;->checkKeyAgreementNecessity()V

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/kex/AbstractDH;->k_array:[B

    return-object v0
.end method

.method public isPublicDataAvailable()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/sshd/common/kex/AbstractDH;->e_array:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSharedSecretAvailable()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/sshd/common/kex/AbstractDH;->k_array:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract setF([B)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[publicDataAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/AbstractDH;->isPublicDataAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sharedSecretAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/AbstractDH;->isSharedSecretAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    return-object v0
.end method
