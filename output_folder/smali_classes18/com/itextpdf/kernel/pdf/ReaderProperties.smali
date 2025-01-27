.class public Lcom/itextpdf/kernel/pdf/ReaderProperties;
.super Ljava/lang/Object;
.source "ReaderProperties.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4d497c0b34d56dacL


# instance fields
.field protected certificate:Ljava/security/cert/Certificate;

.field protected certificateKey:Ljava/security/Key;

.field protected certificateKeyProvider:Ljava/lang/String;

.field protected externalDecryptionProcess:Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;

.field protected memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

.field protected password:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearEncryptionParams()V
    .locals 1

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->password:[B

    .line 123
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificate:Ljava/security/cert/Certificate;

    .line 124
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificateKey:Ljava/security/Key;

    .line 125
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificateKeyProvider:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->externalDecryptionProcess:Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;

    .line 127
    return-void
.end method


# virtual methods
.method public setMemoryLimitsAwareHandler(Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;)Lcom/itextpdf/kernel/pdf/ReaderProperties;
    .locals 0
    .param p1, "memoryLimitsAwareHandler"    # Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    .line 136
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    .line 137
    return-object p0
.end method

.method public setPassword([B)Lcom/itextpdf/kernel/pdf/ReaderProperties;
    .locals 0
    .param p1, "password"    # [B

    .line 77
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/ReaderProperties;->clearEncryptionParams()V

    .line 78
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->password:[B

    .line 79
    return-object p0
.end method

.method public setPublicKeySecurityParams(Ljava/security/cert/Certificate;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;)Lcom/itextpdf/kernel/pdf/ReaderProperties;
    .locals 0
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .param p2, "externalDecryptionProcess"    # Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;

    .line 115
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/ReaderProperties;->clearEncryptionParams()V

    .line 116
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificate:Ljava/security/cert/Certificate;

    .line 117
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->externalDecryptionProcess:Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;

    .line 118
    return-object p0
.end method

.method public setPublicKeySecurityParams(Ljava/security/cert/Certificate;Ljava/security/Key;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;)Lcom/itextpdf/kernel/pdf/ReaderProperties;
    .locals 0
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .param p2, "certificateKey"    # Ljava/security/Key;
    .param p3, "certificateKeyProvider"    # Ljava/lang/String;
    .param p4, "externalDecryptionProcess"    # Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;

    .line 96
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/ReaderProperties;->clearEncryptionParams()V

    .line 97
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificate:Ljava/security/cert/Certificate;

    .line 98
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificateKey:Ljava/security/Key;

    .line 99
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificateKeyProvider:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->externalDecryptionProcess:Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;

    .line 102
    return-object p0
.end method
