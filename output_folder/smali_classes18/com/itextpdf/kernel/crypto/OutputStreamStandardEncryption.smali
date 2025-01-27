.class public Lcom/itextpdf/kernel/crypto/OutputStreamStandardEncryption;
.super Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
.source "OutputStreamStandardEncryption.java"


# instance fields
.field protected arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "key"    # [B

    .line 66
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/itextpdf/kernel/crypto/OutputStreamStandardEncryption;-><init>(Ljava/io/OutputStream;[BII)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[BII)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "key"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .line 60
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;-><init>(Ljava/io/OutputStream;)V

    .line 61
    new-instance v0, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    invoke-direct {v0}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/OutputStreamStandardEncryption;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    .line 62
    invoke-virtual {v0, p2, p3, p4}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->prepareARCFOURKey([BII)V

    .line 63
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 108
    return-void
.end method

.method public write([BII)V
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    const/16 v0, 0x1060

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    .line 99
    .local v0, "b2":[B
    :goto_0
    if-lez p3, :cond_0

    .line 100
    array-length v1, v0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 101
    .local v7, "sz":I
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/OutputStreamStandardEncryption;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, v7

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->encryptARCFOUR([BII[BI)V

    .line 102
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/OutputStreamStandardEncryption;->out:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 103
    sub-int/2addr p3, v7

    .line 104
    add-int/2addr p2, v7

    .line 105
    .end local v7    # "sz":I
    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method
