.class public Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;
.super Ljava/lang/Object;
.source "ARCFOUREncryption.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x14206d1632c8a14cL


# instance fields
.field private state:[B

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->state:[B

    .line 60
    return-void
.end method


# virtual methods
.method public encryptARCFOUR([B)V
    .locals 6
    .param p1, "data"    # [B

    .line 106
    array-length v3, p1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->encryptARCFOUR([BII[BI)V

    .line 107
    return-void
.end method

.method public encryptARCFOUR([BII)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 98
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->encryptARCFOUR([BII[BI)V

    .line 99
    return-void
.end method

.method public encryptARCFOUR([BII[BI)V
    .locals 7
    .param p1, "dataIn"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "dataOut"    # [B
    .param p5, "offOut"    # I

    .line 85
    add-int v0, p3, p2

    .line 87
    .local v0, "length":I
    move v1, p2

    .local v1, "k":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 88
    iget v2, p0, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->x:I

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->x:I

    .line 89
    iget-object v3, p0, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->state:[B

    aget-byte v4, v3, v2

    iget v5, p0, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->y:I

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->y:I

    .line 90
    aget-byte v5, v3, v2

    .line 91
    .local v5, "tmp":B
    aget-byte v6, v3, v4

    aput-byte v6, v3, v2

    .line 92
    aput-byte v5, v3, v4

    .line 93
    sub-int v4, v1, p2

    add-int/2addr v4, p5

    aget-byte v6, p1, v1

    aget-byte v2, v3, v2

    add-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v3, v2

    xor-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, p4, v4

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "k":I
    .end local v5    # "tmp":B
    :cond_0
    return-void
.end method

.method public encryptARCFOUR([B[B)V
    .locals 6
    .param p1, "dataIn"    # [B
    .param p2, "dataOut"    # [B

    .line 102
    array-length v3, p1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->encryptARCFOUR([BII[BI)V

    .line 103
    return-void
.end method

.method public prepareARCFOURKey([B)V
    .locals 2
    .param p1, "key"    # [B

    .line 63
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->prepareARCFOURKey([BII)V

    .line 64
    return-void
.end method

.method public prepareARCFOURKey([BII)V
    .locals 7
    .param p1, "key"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "index1":I
    const/4 v1, 0x0

    .line 69
    .local v1, "index2":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->state:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "k":I
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->x:I

    .line 73
    iput v2, p0, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->y:I

    .line 75
    const/4 v2, 0x0

    .restart local v2    # "k":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 76
    add-int v4, v0, p2

    aget-byte v4, p1, v4

    iget-object v5, p0, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->state:[B

    aget-byte v6, v5, v2

    add-int/2addr v4, v6

    add-int/2addr v4, v1

    and-int/lit16 v1, v4, 0xff

    .line 77
    aget-byte v4, v5, v2

    .line 78
    .local v4, "tmp":B
    aget-byte v6, v5, v1

    aput-byte v6, v5, v2

    .line 79
    aput-byte v4, v5, v1

    .line 80
    add-int/lit8 v5, v0, 0x1

    rem-int v0, v5, p3

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 82
    .end local v2    # "k":I
    .end local v4    # "tmp":B
    :cond_1
    return-void
.end method
