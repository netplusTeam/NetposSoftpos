.class Lcom/google/crypto/tink/subtle/ChaCha20;
.super Ljava/lang/Object;
.source "ChaCha20.java"

# interfaces
.implements Lcom/google/crypto/tink/subtle/IndCpaCipher;


# static fields
.field static final NONCE_LENGTH_IN_BYTES:I = 0xc


# instance fields
.field private final cipher:Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20;


# direct methods
.method constructor <init>([BI)V
    .locals 1
    .param p1, "key"    # [B
    .param p2, "initialCounter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20;

    invoke-direct {v0, p1, p2}, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20;-><init>([BI)V

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/ChaCha20;->cipher:Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20;

    .line 37
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

    .line 50
    array-length v0, p1

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 53
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 54
    .local v0, "nonce":[B
    array-length v2, p1

    sub-int/2addr v2, v1

    .line 55
    invoke-static {p1, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 57
    .local v1, "rawCiphertext":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/ChaCha20;->cipher:Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20;

    invoke-virtual {v2, v0, v1}, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20;->decrypt([BLjava/nio/ByteBuffer;)[B

    move-result-object v2

    return-object v2

    .line 51
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

    .line 41
    array-length v0, p1

    const/16 v1, 0xc

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 42
    .local v0, "output":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v1

    .line 43
    .local v1, "nonce":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 44
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/ChaCha20;->cipher:Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20;->encrypt(Ljava/nio/ByteBuffer;[B[B)V

    .line 45
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method
