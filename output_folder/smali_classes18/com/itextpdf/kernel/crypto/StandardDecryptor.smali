.class public Lcom/itextpdf/kernel/crypto/StandardDecryptor;
.super Ljava/lang/Object;
.source "StandardDecryptor.java"

# interfaces
.implements Lcom/itextpdf/kernel/crypto/IDecryptor;


# instance fields
.field protected arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;


# direct methods
.method public constructor <init>([BII)V
    .locals 1
    .param p1, "key"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    invoke-direct {v0}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/StandardDecryptor;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    .line 59
    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->prepareARCFOURKey([BII)V

    .line 60
    return-void
.end method


# virtual methods
.method public finish()[B
    .locals 1

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public update([BII)[B
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 63
    new-array v6, p3, [B

    .line 64
    .local v6, "b2":[B
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/StandardDecryptor;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->encryptARCFOUR([BII[BI)V

    .line 65
    return-object v6
.end method
