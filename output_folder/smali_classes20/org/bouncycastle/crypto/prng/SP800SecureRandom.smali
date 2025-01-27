.class public Lorg/bouncycastle/crypto/prng/SP800SecureRandom;
.super Ljava/security/SecureRandom;
.source "SP800SecureRandom.java"


# instance fields
.field private drbg:Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;

.field private final drbgProvider:Lorg/bouncycastle/crypto/prng/DRBGProvider;

.field private final entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

.field private final predictionResistant:Z

.field private final randomSource:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/EntropySource;Lorg/bouncycastle/crypto/prng/DRBGProvider;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->randomSource:Ljava/security/SecureRandom;

    .line 3
    iput-object p2, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    .line 4
    iput-object p3, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->drbgProvider:Lorg/bouncycastle/crypto/prng/DRBGProvider;

    .line 5
    iput-boolean p4, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->predictionResistant:Z

    return-void
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/prng/EntropyUtil;->generateSeed(Lorg/bouncycastle/crypto/prng/EntropySource;I)[B

    move-result-object p1

    return-object p1
.end method

.method public nextBytes([B)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->drbgProvider:Lorg/bouncycastle/crypto/prng/DRBGProvider;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/prng/DRBGProvider;->get(Lorg/bouncycastle/crypto/prng/EntropySource;)Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->predictionResistant:Z

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;->generate([B[BZ)I

    move-result v0

    if-gez v0, :cond_1

    .line 11
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;->reseed([B)V

    .line 12
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->predictionResistant:Z

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;->generate([B[BZ)I

    .line 14
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reseed([B)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->drbgProvider:Lorg/bouncycastle/crypto/prng/DRBGProvider;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/prng/DRBGProvider;->get(Lorg/bouncycastle/crypto/prng/EntropySource;)Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;->reseed([B)V

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSeed(J)V
    .locals 1

    .line 8
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->randomSource:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/security/SecureRandom;->setSeed(J)V

    .line 15
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSeed([B)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->randomSource:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
