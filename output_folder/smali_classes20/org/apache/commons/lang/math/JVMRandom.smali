.class public final Lorg/apache/commons/lang/math/JVMRandom;
.super Ljava/util/Random;
.source "JVMRandom.java"


# static fields
.field private static final SHARED_RANDOM:Ljava/util/Random;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private constructed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang/math/JVMRandom;->constructed:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/math/JVMRandom;->constructed:Z

    .line 61
    return-void
.end method

.method private static bitsRequired(J)I
    .locals 6
    .param p0, "num"    # J

    .line 213
    move-wide v0, p0

    .line 214
    .local v0, "y":J
    const/4 v2, 0x0

    .line 217
    .local v2, "n":I
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, p0, v3

    if-gez v5, :cond_0

    .line 218
    rsub-int/lit8 v3, v2, 0x40

    return v3

    .line 220
    :cond_0
    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    .line 221
    return v2

    .line 223
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 224
    const/4 v3, 0x1

    shl-long/2addr p0, v3

    .line 225
    shr-long/2addr v0, v3

    goto :goto_0
.end method

.method private static next63bits()J
    .locals 4

    .line 202
    sget-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static nextLong(J)J
    .locals 13
    .param p0, "n"    # J

    .line 145
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    .line 151
    neg-long v2, p0

    and-long/2addr v2, p0

    cmp-long v2, v2, p0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    .line 153
    invoke-static {}, Lorg/apache/commons/lang/math/JVMRandom;->next63bits()J

    move-result-wide v0

    sub-long v2, p0, v3

    invoke-static {v2, v3}, Lorg/apache/commons/lang/math/JVMRandom;->bitsRequired(J)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x3f

    shr-long/2addr v0, v2

    return-wide v0

    .line 160
    :cond_0
    invoke-static {}, Lorg/apache/commons/lang/math/JVMRandom;->next63bits()J

    move-result-wide v5

    .line 161
    .local v5, "bits":J
    rem-long v7, v5, p0

    .line 162
    .local v7, "val":J
    sub-long v9, v5, v7

    sub-long v11, p0, v3

    add-long/2addr v9, v11

    cmp-long v2, v9, v0

    if-ltz v2, :cond_0

    .line 163
    return-wide v7

    .line 146
    .end local v5    # "bits":J
    .end local v7    # "val":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Upper bound for nextInt must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public nextBoolean()Z
    .locals 1

    .line 173
    sget-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public nextBytes([B)V
    .locals 1
    .param p1, "byteArray"    # [B

    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public nextDouble()D
    .locals 2

    .line 193
    sget-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 1

    .line 184
    sget-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public declared-synchronized nextGaussian()D
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local p0    # "this":Lorg/apache/commons/lang/math/JVMRandom;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public nextInt()I
    .locals 1

    .line 105
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/math/JVMRandom;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 1
    .param p1, "n"    # I

    .line 118
    sget-object v0, Lorg/apache/commons/lang/math/JVMRandom;->SHARED_RANDOM:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 2

    .line 131
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Lorg/apache/commons/lang/math/JVMRandom;->nextLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized setSeed(J)V
    .locals 1
    .param p1, "seed"    # J

    monitor-enter p0

    .line 70
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/lang/math/JVMRandom;->constructed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 73
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .end local p0    # "this":Lorg/apache/commons/lang/math/JVMRandom;
    .end local p1    # "seed":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
