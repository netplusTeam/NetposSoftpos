.class public Lorg/jpos/security/SensitiveString;
.super Ljava/lang/Object;
.source "SensitiveString.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final AES:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static rnd:Ljava/util/Random;


# instance fields
.field private encoded:[B

.field private key:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/jpos/security/SensitiveString;->rnd:Ljava/util/Random;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0}, Lorg/jpos/security/SensitiveString;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/security/SensitiveString;->key:Ljavax/crypto/SecretKey;

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jpos/security/SensitiveString;->encrypt([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/security/SensitiveString;->encoded:[B

    .line 46
    return-void
.end method

.method private decrypt([B)[B
    .locals 7
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 77
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 78
    .local v0, "iv":[B
    array-length v1, p1

    array-length v2, v0

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 79
    .local v1, "cryptogram":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    array-length v2, v0

    array-length v4, v1

    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 82
    .local v2, "cipher":Ljavax/crypto/Cipher;
    iget-object v3, p0, Lorg/jpos/security/SensitiveString;->key:Ljavax/crypto/SecretKey;

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    array-length v5, v0

    array-length v6, v0

    invoke-static {v5, v6}, Lorg/jpos/security/SystemSeed;->getSeed(II)[B

    move-result-object v5

    invoke-static {v0, v5}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 83
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    return-object v3
.end method

.method private encrypt([B)[B
    .locals 6
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 64
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 65
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-direct {p0}, Lorg/jpos/security/SensitiveString;->randomIV()[B

    move-result-object v1

    .line 66
    .local v1, "iv":[B
    iget-object v2, p0, Lorg/jpos/security/SensitiveString;->key:Ljavax/crypto/SecretKey;

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 67
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 68
    .local v2, "enc":[B
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 69
    .local v3, "buf":Ljava/nio/ByteBuffer;
    array-length v4, v1

    array-length v5, v1

    invoke-static {v4, v5}, Lorg/jpos/security/SystemSeed;->getSeed(II)[B

    move-result-object v4

    invoke-static {v1, v4}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4
.end method

.method private generateKey()Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 57
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 58
    .local v0, "keyGen":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v1

    .line 59
    .local v1, "maxKeyLength":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v2, 0x100

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 60
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    return-object v2
.end method

.method private randomIV()[B
    .locals 2

    .line 87
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 88
    .local v0, "b":[B
    sget-object v1, Lorg/jpos/security/SensitiveString;->rnd:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 89
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 50
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 51
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/jpos/security/SensitiveString;

    .line 53
    .local v0, "that":Lorg/jpos/security/SensitiveString;
    invoke-virtual {p0}, Lorg/jpos/security/SensitiveString;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jpos/security/SensitiveString;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 51
    .end local v0    # "that":Lorg/jpos/security/SensitiveString;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/jpos/security/SensitiveString;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 3

    .line 95
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jpos/security/SensitiveString;->encoded:[B

    invoke-direct {p0, v1}, Lorg/jpos/security/SensitiveString;->decrypt([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0

    :catch_6
    move-exception v0

    .line 97
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
