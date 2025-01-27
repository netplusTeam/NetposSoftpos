.class public Lcom/itextpdf/kernel/crypto/AesDecryptor;
.super Ljava/lang/Object;
.source "AesDecryptor.java"

# interfaces
.implements Lcom/itextpdf/kernel/crypto/IDecryptor;


# instance fields
.field private cipher:Lcom/itextpdf/kernel/crypto/AESCipher;

.field private initiated:Z

.field private iv:[B

.field private ivptr:I

.field private key:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/AesDecryptor;->iv:[B

    .line 60
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/AesDecryptor;->key:[B

    .line 61
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    return-void
.end method


# virtual methods
.method public finish()[B
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/AesDecryptor;->cipher:Lcom/itextpdf/kernel/crypto/AESCipher;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/itextpdf/kernel/crypto/AESCipher;->doFinal()[B

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public update([BII)[B
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 65
    iget-boolean v0, p0, Lcom/itextpdf/kernel/crypto/AesDecryptor;->initiated:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/AesDecryptor;->cipher:Lcom/itextpdf/kernel/crypto/AESCipher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/kernel/crypto/AESCipher;->update([BII)[B

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/AesDecryptor;->iv:[B

    array-length v0, v0

    iget v1, p0, Lcom/itextpdf/kernel/crypto/AesDecryptor;->ivptr:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 69
    .local v0, "left":I
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/AesDecryptor;->iv:[B

    iget v2, p0, Lcom/itextpdf/kernel/crypto/AesDecryptor;->ivptr:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    add-int/2addr p2, v0

    .line 71
    sub-int/2addr p3, v0

    .line 72
    iget v1, p0, Lcom/itextpdf/kernel/crypto/AesDecryptor;->ivptr:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/itextpdf/kernel/crypto/AesDecryptor;->ivptr:I

    .line 73
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/AesDecryptor;->iv:[B

    array-length v3, v2

    if-ne v1, v3, :cond_1

    .line 74
    new-instance v1, Lcom/itextpdf/kernel/crypto/AESCipher;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/itextpdf/kernel/crypto/AesDecryptor;->key:[B

    invoke-direct {v1, v3, v4, v2}, Lcom/itextpdf/kernel/crypto/AESCipher;-><init>(Z[B[B)V

    iput-object v1, p0, Lcom/itextpdf/kernel/crypto/AesDecryptor;->cipher:Lcom/itextpdf/kernel/crypto/AESCipher;

    .line 75
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itextpdf/kernel/crypto/AesDecryptor;->initiated:Z

    .line 76
    if-lez p3, :cond_1

    .line 77
    invoke-virtual {v1, p1, p2, p3}, Lcom/itextpdf/kernel/crypto/AESCipher;->update([BII)[B

    move-result-object v1

    return-object v1

    .line 79
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
