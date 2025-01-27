.class public final Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;
.super Ljava/lang/Object;
.source "InsecureNonceAesGcmJce.java"


# static fields
.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field public static final IV_SIZE_IN_BYTES:I = 0xc

.field public static final TAG_SIZE_IN_BYTES:I = 0x10

.field private static final localCipher:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final keySpec:Ljavax/crypto/SecretKey;

.field private final prependIv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    .line 44
    new-instance v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->localCipher:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "prependIv"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "key",
            "prependIv"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    array-length v0, p1

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 66
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->keySpec:Ljavax/crypto/SecretKey;

    .line 67
    iput-boolean p2, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->prependIv:Z

    .line 68
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getParams([B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .param p0, "iv"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "iv"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 146
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->getParams([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method private static getParams([BII)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "buf",
            "offset",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 151
    invoke-static {}, Lcom/google/crypto/tink/subtle/SubtleUtil;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/subtle/SubtleUtil;->androidApiLevel()I

    move-result v0

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 157
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p0, p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    return-object v0

    .line 159
    :cond_0
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    invoke-direct {v0, v1, p0, p1, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    return-object v0
.end method


# virtual methods
.method public decrypt([B[B[B)[B
    .locals 8
    .param p1, "iv"    # [B
    .param p2, "ciphertext"    # [B
    .param p3, "associatedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "iv",
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 122
    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    .line 126
    iget-boolean v0, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->prependIv:Z

    if-eqz v0, :cond_0

    const/16 v2, 0x1c

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    .line 127
    .local v2, "minimumCiphertextLength":I
    :goto_0
    array-length v3, p2

    if-lt v3, v2, :cond_6

    .line 130
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 131
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p2, v3, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "iv does not match prepended iv"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->getParams([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 136
    .local v0, "params":Ljava/security/spec/AlgorithmParameterSpec;
    sget-object v4, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->localCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/crypto/Cipher;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->keySpec:Ljavax/crypto/SecretKey;

    invoke-virtual {v5, v6, v7, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 137
    if-eqz p3, :cond_3

    array-length v5, p3

    if-eqz v5, :cond_3

    .line 138
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/crypto/Cipher;

    invoke-virtual {v5, p3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 140
    :cond_3
    iget-boolean v5, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->prependIv:Z

    if-eqz v5, :cond_4

    move v3, v1

    .line 141
    .local v3, "ciphertextInputOffset":I
    :cond_4
    if-eqz v5, :cond_5

    array-length v5, p2

    sub-int/2addr v5, v1

    goto :goto_2

    :cond_5
    array-length v5, p2

    :goto_2
    move v1, v5

    .line 142
    .local v1, "ciphertextLength":I
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/Cipher;

    invoke-virtual {v4, p2, v3, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    return-object v4

    .line 128
    .end local v0    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v1    # "ciphertextLength":I
    .end local v3    # "ciphertextInputOffset":I
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "ciphertext too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    .end local v2    # "minimumCiphertextLength":I
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "iv is wrong size"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encrypt([B[B[B)[B
    .locals 16
    .param p1, "iv"    # [B
    .param p2, "plaintext"    # [B
    .param p3, "associatedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "iv",
            "plaintext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 76
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    array-length v2, v1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_6

    .line 80
    array-length v2, v8

    const v4, 0x7fffffe3

    if-gt v2, v4, :cond_5

    .line 84
    iget-boolean v2, v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->prependIv:Z

    const/16 v10, 0x10

    if-eqz v2, :cond_0

    .line 85
    array-length v4, v8

    add-int/2addr v4, v3

    add-int/2addr v4, v10

    goto :goto_0

    .line 86
    :cond_0
    array-length v4, v8

    add-int/2addr v4, v10

    :goto_0
    move v11, v4

    .line 87
    .local v11, "ciphertextLength":I
    new-array v12, v11, [B

    .line 88
    .local v12, "ciphertext":[B
    const/4 v13, 0x0

    if-eqz v2, :cond_1

    .line 89
    invoke-static {v1, v13, v12, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->getParams([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v14

    .line 93
    .local v14, "params":Ljava/security/spec/AlgorithmParameterSpec;
    sget-object v2, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->localCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/Cipher;

    iget-object v5, v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->keySpec:Ljavax/crypto/SecretKey;

    const/4 v15, 0x1

    invoke-virtual {v4, v15, v5, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 94
    if-eqz v9, :cond_2

    array-length v4, v9

    if-eqz v4, :cond_2

    .line 95
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/Cipher;

    invoke-virtual {v4, v9}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 97
    :cond_2
    iget-boolean v4, v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->prependIv:Z

    if-eqz v4, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    move v7, v13

    .line 98
    .local v7, "ciphertextOutputOffset":I
    :goto_1
    nop

    .line 100
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Cipher;

    const/4 v4, 0x0

    array-length v5, v8

    .line 101
    move-object/from16 v3, p2

    move-object v6, v12

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v2

    .line 105
    .local v2, "written":I
    array-length v3, v8

    add-int/2addr v3, v10

    if-ne v2, v3, :cond_4

    .line 113
    return-object v12

    .line 107
    :cond_4
    array-length v3, v8

    sub-int v3, v2, v3

    .line 108
    .local v3, "actualTagSize":I
    new-instance v4, Ljava/security/GeneralSecurityException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 111
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v15

    .line 109
    const-string v6, "encryption failed; GCM tag must be %s bytes, but got only %s bytes"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    .end local v2    # "written":I
    .end local v3    # "actualTagSize":I
    .end local v7    # "ciphertextOutputOffset":I
    .end local v11    # "ciphertextLength":I
    .end local v12    # "ciphertext":[B
    .end local v14    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_5
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "plaintext too long"

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_6
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "iv is wrong size"

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
