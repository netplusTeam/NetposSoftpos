.class public Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;
.super Ljava/lang/Object;
.source "DigestRandomGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/RandomGenerator;


# static fields
.field private static CYCLE_COUNT:J = 0xaL


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private seed:[B

.field private seedCounter:J

.field private state:[B

.field private stateCounter:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 4
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    .line 5
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seedCounter:J

    .line 7
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->state:[B

    .line 8
    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->stateCounter:J

    return-void
.end method

.method private cycleSeed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 2
    iget-wide v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seedCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seedCounter:J

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestAddCounter(J)V

    .line 4
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

    return-void
.end method

.method private digestAddCounter(J)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1
    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    long-to-int v3, p1

    int-to-byte v3, v3

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    ushr-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private digestDoFinal([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method private digestUpdate([B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private generateState()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->stateCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->stateCounter:J

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestAddCounter(J)V

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->state:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 5
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->state:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

    .line 7
    iget-wide v0, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->stateCounter:J

    sget-wide v2, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->CYCLE_COUNT:J

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 9
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->cycleSeed()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addSeedMaterial(J)V
    .locals 0

    .line 7
    monitor-enter p0

    .line 9
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestAddCounter(J)V

    .line 10
    iget-object p1, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 12
    iget-object p1, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addSeedMaterial([B)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 4
    iget-object p1, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 5
    iget-object p1, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public nextBytes([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->nextBytes([BII)V

    return-void
.end method

.method public nextBytes([BII)V
    .locals 4

    .line 2
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->generateState()V

    add-int/2addr p3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eq p2, p3, :cond_1

    .line 11
    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->state:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 13
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->generateState()V

    move v1, v0

    .line 16
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->state:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    move v1, v3

    goto :goto_0

    .line 18
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
