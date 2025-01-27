.class public Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;
.super Ljava/lang/Object;
.source "TerminalTransactionQualifiers.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    .line 35
    return-void
.end method


# virtual methods
.method public consumerDeviceCVMsupported()Z
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lfr/devnied/bitlib/BytesUtils;->matchBitByBitIndex(II)Z

    move-result v0

    return v0
.end method

.method public contactChipOfflinePINsupported()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lfr/devnied/bitlib/BytesUtils;->matchBitByBitIndex(II)Z

    move-result v0

    return v0
.end method

.method public contactEMVsupported()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lfr/devnied/bitlib/BytesUtils;->matchBitByBitIndex(II)Z

    move-result v0

    return v0
.end method

.method public contactlessEMVmodeSupported()Z
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lfr/devnied/bitlib/BytesUtils;->matchBitByBitIndex(II)Z

    move-result v0

    return v0
.end method

.method public contactlessMagneticStripeSupported()Z
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lfr/devnied/bitlib/BytesUtils;->matchBitByBitIndex(II)Z

    move-result v0

    return v0
.end method

.method public contactlessVSDCsupported()Z
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lfr/devnied/bitlib/BytesUtils;->matchBitByBitIndex(II)Z

    move-result v0

    return v0
.end method

.method public cvmRequired()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lfr/devnied/bitlib/BytesUtils;->matchBitByBitIndex(II)Z

    move-result v0

    return v0
.end method

.method public getBytes()[B
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public issuerUpdateProcessingSupported()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lfr/devnied/bitlib/BytesUtils;->matchBitByBitIndex(II)Z

    move-result v0

    return v0
.end method

.method public onlineCryptogramRequired()Z
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lfr/devnied/bitlib/BytesUtils;->matchBitByBitIndex(II)Z

    move-result v0

    return v0
.end method

.method public onlinePINsupported()Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lfr/devnied/bitlib/BytesUtils;->matchBitByBitIndex(II)Z

    move-result v0

    return v0
.end method

.method public readerIsOfflineOnly()Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lfr/devnied/bitlib/BytesUtils;->matchBitByBitIndex(II)Z

    move-result v0

    return v0
.end method

.method public setConsumerDeviceCVMsupported(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 137
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x2

    aget-byte v2, v0, v1

    const/4 v3, 0x6

    invoke-static {v2, v3, p1}, Lfr/devnied/bitlib/BytesUtils;->setBit(BIZ)B

    move-result v2

    aput-byte v2, v0, v1

    .line 138
    return-void
.end method

.method public setContactChipOfflinePINsupported(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 129
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    const/4 v3, 0x5

    invoke-static {v2, v3, p1}, Lfr/devnied/bitlib/BytesUtils;->setBit(BIZ)B

    move-result v2

    aput-byte v2, v0, v1

    .line 130
    return-void
.end method

.method public setContactEMVsupported(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 105
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x4

    invoke-static {v2, v3, p1}, Lfr/devnied/bitlib/BytesUtils;->setBit(BIZ)B

    move-result v2

    aput-byte v2, v0, v1

    .line 106
    return-void
.end method

.method public setContactlessEMVmodeSupported(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 101
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x5

    invoke-static {v2, v3, p1}, Lfr/devnied/bitlib/BytesUtils;->setBit(BIZ)B

    move-result v2

    aput-byte v2, v0, v1

    .line 102
    return-void
.end method

.method public setContactlessVSDCsupported(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 90
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x6

    invoke-static {v2, v3, p1}, Lfr/devnied/bitlib/BytesUtils;->setBit(BIZ)B

    move-result v2

    aput-byte v2, v0, v1

    .line 91
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0, v1}, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->setContactlessEMVmodeSupported(Z)V

    .line 98
    :cond_0
    return-void
.end method

.method public setCvmRequired(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 125
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    const/4 v3, 0x6

    invoke-static {v2, v3, p1}, Lfr/devnied/bitlib/BytesUtils;->setBit(BIZ)B

    move-result v2

    aput-byte v2, v0, v1

    .line 126
    return-void
.end method

.method public setIssuerUpdateProcessingSupported(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 133
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x2

    aget-byte v2, v0, v1

    const/4 v3, 0x7

    invoke-static {v2, v3, p1}, Lfr/devnied/bitlib/BytesUtils;->setBit(BIZ)B

    move-result v2

    aput-byte v2, v0, v1

    .line 134
    return-void
.end method

.method public setMagneticStripeSupported(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 86
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x7

    invoke-static {v2, v3, p1}, Lfr/devnied/bitlib/BytesUtils;->setBit(BIZ)B

    move-result v2

    aput-byte v2, v0, v1

    .line 87
    return-void
.end method

.method public setOnlineCryptogramRequired(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 121
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    const/4 v3, 0x7

    invoke-static {v2, v3, p1}, Lfr/devnied/bitlib/BytesUtils;->setBit(BIZ)B

    move-result v2

    aput-byte v2, v0, v1

    .line 122
    return-void
.end method

.method public setOnlinePINsupported(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 113
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x2

    invoke-static {v2, v3, p1}, Lfr/devnied/bitlib/BytesUtils;->setBit(BIZ)B

    move-result v2

    aput-byte v2, v0, v1

    .line 114
    return-void
.end method

.method public setReaderIsOfflineOnly(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 109
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x3

    invoke-static {v2, v3, p1}, Lfr/devnied/bitlib/BytesUtils;->setBit(BIZ)B

    move-result v2

    aput-byte v2, v0, v1

    .line 110
    return-void
.end method

.method public setSignatureSupported(Z)V
    .locals 4
    .param p1, "value"    # Z

    .line 117
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    invoke-static {v2, v3, p1}, Lfr/devnied/bitlib/BytesUtils;->setBit(BIZ)B

    move-result v2

    aput-byte v2, v0, v1

    .line 118
    return-void
.end method

.method public signatureSupported()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfr/devnied/bitlib/BytesUtils;->matchBitByBitIndex(II)Z

    move-result v0

    return v0
.end method
