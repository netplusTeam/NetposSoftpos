.class public final Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacImpl;
.super Ljava/lang/Object;
.source "ChunkedAesCmacImpl.java"

# interfaces
.implements Lcom/google/crypto/tink/mac/ChunkedMac;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;


# instance fields
.field private final key:Lcom/google/crypto/tink/mac/AesCmacKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacImpl;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/mac/AesCmacKey;)V
    .locals 2
    .param p1, "key"    # Lcom/google/crypto/tink/mac/AesCmacKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacImpl;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iput-object p1, p0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacImpl;->key:Lcom/google/crypto/tink/mac/AesCmacKey;

    .line 42
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Can not use AES-CMAC in FIPS-mode."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createComputation()Lcom/google/crypto/tink/mac/ChunkedMacComputation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacComputation;

    iget-object v1, p0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacImpl;->key:Lcom/google/crypto/tink/mac/AesCmacKey;

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacComputation;-><init>(Lcom/google/crypto/tink/mac/AesCmacKey;)V

    return-object v0
.end method

.method public createVerification([B)Lcom/google/crypto/tink/mac/ChunkedMacVerification;
    .locals 3
    .param p1, "tag"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    array-length v0, p1

    iget-object v1, p0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacImpl;->key:Lcom/google/crypto/tink/mac/AesCmacKey;

    invoke-virtual {v1}, Lcom/google/crypto/tink/mac/AesCmacKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/util/Bytes;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacImpl;->key:Lcom/google/crypto/tink/mac/AesCmacKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/AesCmacKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacImpl;->key:Lcom/google/crypto/tink/mac/AesCmacKey;

    invoke-virtual {v2}, Lcom/google/crypto/tink/mac/AesCmacKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/util/Bytes;->size()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([BII)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/util/Bytes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacVerification;

    iget-object v1, p0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacImpl;->key:Lcom/google/crypto/tink/mac/AesCmacKey;

    invoke-direct {v0, v1, p1}, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacVerification;-><init>(Lcom/google/crypto/tink/mac/AesCmacKey;[B)V

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Wrong tag prefix"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Tag too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
