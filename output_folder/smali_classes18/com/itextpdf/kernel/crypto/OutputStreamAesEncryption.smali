.class public Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;
.super Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
.source "OutputStreamAesEncryption.java"


# instance fields
.field protected cipher:Lcom/itextpdf/kernel/crypto/AESCipher;

.field private finished:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "key"    # [B

    .line 79
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;-><init>(Ljava/io/OutputStream;[BII)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[BII)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "key"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;-><init>(Ljava/io/OutputStream;)V

    .line 62
    invoke-static {}, Lcom/itextpdf/kernel/crypto/IVGenerator;->getIV()[B

    move-result-object v0

    .line 63
    .local v0, "iv":[B
    new-array v1, p4, [B

    .line 64
    .local v1, "nkey":[B
    const/4 v2, 0x0

    invoke-static {p2, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    new-instance v2, Lcom/itextpdf/kernel/crypto/AESCipher;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1, v0}, Lcom/itextpdf/kernel/crypto/AESCipher;-><init>(Z[B[B)V

    iput-object v2, p0, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;->cipher:Lcom/itextpdf/kernel/crypto/AESCipher;

    .line 67
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    nop

    .line 71
    return-void

    .line 68
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    const-string v4, "PdfEncryption exception."

    invoke-direct {v3, v4, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 118
    iget-boolean v0, p0, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;->finished:Z

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;->finished:Z

    .line 121
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;->cipher:Lcom/itextpdf/kernel/crypto/AESCipher;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/crypto/AESCipher;->doFinal()[B

    move-result-object v0

    .line 123
    .local v0, "b":[B
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;->out:Ljava/io/OutputStream;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "PdfEncryption exception."

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 128
    .end local v0    # "b":[B
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;->cipher:Lcom/itextpdf/kernel/crypto/AESCipher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/kernel/crypto/AESCipher;->update([BII)[B

    move-result-object v0

    .line 112
    .local v0, "b2":[B
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/OutputStreamAesEncryption;->out:Ljava/io/OutputStream;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 115
    return-void

    .line 113
    :cond_1
    :goto_0
    return-void
.end method
