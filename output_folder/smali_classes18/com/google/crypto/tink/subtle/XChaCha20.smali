.class Lcom/google/crypto/tink/subtle/XChaCha20;
.super Ljava/lang/Object;
.source "XChaCha20.java"

# interfaces
.implements Lcom/google/crypto/tink/subtle/IndCpaCipher;


# static fields
.field static final NONCE_LENGTH_IN_BYTES:I = 0x18


# instance fields
.field private final cipher:Lcom/google/crypto/tink/aead/internal/InsecureNonceXChaCha20;


# direct methods
.method constructor <init>([BI)V
    .locals 1
    .param p1, "key"    # [B
    .param p2, "initialCounter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "initialCounter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceXChaCha20;

    invoke-direct {v0, p1, p2}, Lcom/google/crypto/tink/aead/internal/InsecureNonceXChaCha20;-><init>([BI)V

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/XChaCha20;->cipher:Lcom/google/crypto/tink/aead/internal/InsecureNonceXChaCha20;

    .line 45
    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 3
    .param p1, "ciphertext"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ciphertext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 58
    array-length v0, p1

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 61
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 62
    .local v0, "nonce":[B
    array-length v2, p1

    sub-int/2addr v2, v1

    .line 63
    invoke-static {p1, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 65
    .local v1, "rawCiphertext":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/XChaCha20;->cipher:Lcom/google/crypto/tink/aead/internal/InsecureNonceXChaCha20;

    invoke-virtual {v2, v0, v1}, Lcom/google/crypto/tink/aead/internal/InsecureNonceXChaCha20;->decrypt([BLjava/nio/ByteBuffer;)[B

    move-result-object v2

    return-object v2

    .line 59
    .end local v0    # "nonce":[B
    .end local v1    # "rawCiphertext":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "ciphertext too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encrypt([B)[B
    .locals 3
    .param p1, "plaintext"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "plaintext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 49
    array-length v0, p1

    const/16 v1, 0x18

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 50
    .local v0, "output":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v1

    .line 51
    .local v1, "nonce":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 52
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/XChaCha20;->cipher:Lcom/google/crypto/tink/aead/internal/InsecureNonceXChaCha20;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/crypto/tink/aead/internal/InsecureNonceXChaCha20;->encrypt(Ljava/nio/ByteBuffer;[B[B)V

    .line 53
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method
