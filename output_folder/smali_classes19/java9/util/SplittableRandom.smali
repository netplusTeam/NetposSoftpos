.class public final Ljava9/util/SplittableRandom;
.super Ljava/lang/Object;
.source "SplittableRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/SplittableRandom$RandomDoublesSpliterator;,
        Ljava9/util/SplittableRandom$RandomLongsSpliterator;,
        Ljava9/util/SplittableRandom$RandomIntsSpliterator;
    }
.end annotation


# static fields
.field private static final BAD_BOUND:Ljava/lang/String; = "bound must be positive"

.field private static final BAD_RANGE:Ljava/lang/String; = "bound must be greater than origin"

.field private static final BAD_SIZE:Ljava/lang/String; = "size must be non-negative"

.field private static final DOUBLE_UNIT:D = 1.1102230246251565E-16

.field private static final GOLDEN_GAMMA:J = -0x61c8864680b583ebL

.field private static final defaultGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final gamma:J

.field private seed:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 233
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava9/util/SplittableRandom;->mix64(J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava9/util/SplittableRandom;->mix64(J)J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljava9/util/SplittableRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    .line 238
    new-instance v0, Ljava9/util/SplittableRandom$1;

    invoke-direct {v0}, Ljava9/util/SplittableRandom$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v1

    .line 246
    .local v1, "seedBytes":[B
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    .line 247
    .local v2, "s":J
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_0

    .line 248
    shl-long v7, v2, v0

    aget-byte v9, v1, v6

    int-to-long v9, v9

    and-long/2addr v9, v4

    or-long v2, v7, v9

    .line 247
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 250
    .end local v6    # "i":I
    :cond_0
    sget-object v0, Ljava9/util/SplittableRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 252
    .end local v1    # "seedBytes":[B
    .end local v2    # "s":J
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    sget-object v0, Ljava9/util/SplittableRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x3c6ef372fe94f82aL    # 1.3422845051698468E-17

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    .line 384
    .local v0, "s":J
    invoke-static {v0, v1}, Ljava9/util/SplittableRandom;->mix64(J)J

    move-result-wide v2

    iput-wide v2, p0, Ljava9/util/SplittableRandom;->seed:J

    .line 385
    const-wide v2, -0x61c8864680b583ebL

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava9/util/SplittableRandom;->mixGamma(J)J

    move-result-wide v2

    iput-wide v2, p0, Ljava9/util/SplittableRandom;->gamma:J

    .line 386
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "seed"    # J

    .line 373
    const-wide v0, -0x61c8864680b583ebL

    invoke-direct {p0, p1, p2, v0, v1}, Ljava9/util/SplittableRandom;-><init>(JJ)V

    .line 374
    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0
    .param p1, "seed"    # J
    .param p3, "gamma"    # J

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-wide p1, p0, Ljava9/util/SplittableRandom;->seed:J

    .line 187
    iput-wide p3, p0, Ljava9/util/SplittableRandom;->gamma:J

    .line 188
    return-void
.end method

.method private static mix32(J)I
    .locals 4
    .param p0, "z"    # J

    .line 203
    const/16 v0, 0x21

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, 0x62a9d9ed799705f5L    # 1.905503099867627E167

    mul-long/2addr v0, v2

    .line 204
    .end local p0    # "z":J
    .local v0, "z":J
    const/16 p0, 0x1c

    ushr-long p0, v0, p0

    xor-long/2addr p0, v0

    const-wide v2, -0x34db2f5a3773ca4dL    # -9.968418789810265E53

    mul-long/2addr p0, v2

    const/16 v2, 0x20

    ushr-long/2addr p0, v2

    long-to-int p0, p0

    return p0
.end method

.method private static mix64(J)J
    .locals 4
    .param p0, "z"    # J

    .line 194
    const/16 v0, 0x1e

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, -0x40a7b892e31b1a47L    # -0.0014818730883930777

    mul-long/2addr v0, v2

    .line 195
    .end local p0    # "z":J
    .local v0, "z":J
    const/16 p0, 0x1b

    ushr-long p0, v0, p0

    xor-long/2addr p0, v0

    const-wide v2, -0x6b2fb644ecceee15L    # -1.981759996145912E-208

    mul-long/2addr p0, v2

    .line 196
    .end local v0    # "z":J
    .restart local p0    # "z":J
    const/16 v0, 0x1f

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method private static mixGamma(J)J
    .locals 5
    .param p0, "z"    # J

    .line 211
    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr v1, p0

    const-wide v3, -0xae502812aa7333L

    mul-long/2addr v1, v3

    .line 212
    .end local p0    # "z":J
    .local v1, "z":J
    ushr-long p0, v1, v0

    xor-long/2addr p0, v1

    const-wide v3, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p0, v3

    .line 213
    .end local v1    # "z":J
    .restart local p0    # "z":J
    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide/16 v2, 0x1

    or-long p0, v0, v2

    .line 214
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 215
    .local v0, "n":I
    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const-wide v1, -0x5555555555555556L

    xor-long/2addr v1, p0

    goto :goto_0

    :cond_0
    move-wide v1, p0

    :goto_0
    return-wide v1
.end method

.method private nextSeed()J
    .locals 4

    .line 222
    iget-wide v0, p0, Ljava9/util/SplittableRandom;->seed:J

    iget-wide v2, p0, Ljava9/util/SplittableRandom;->gamma:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava9/util/SplittableRandom;->seed:J

    return-wide v0
.end method


# virtual methods
.method public doubles()Ljava9/util/stream/DoubleStream;
    .locals 11

    .line 789
    new-instance v10, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava9/util/SplittableRandom;JJDD)V

    .line 790
    const/4 v0, 0x0

    invoke-static {v10, v0}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public doubles(DD)Ljava9/util/stream/DoubleStream;
    .locals 11
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    .line 838
    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    .line 840
    new-instance v0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;

    const-wide/16 v3, 0x0

    const-wide v5, 0x7fffffffffffffffL

    move-object v1, v0

    move-object v2, p0

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v1 .. v10}, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava9/util/SplittableRandom;JJDD)V

    const/4 v1, 0x0

    .line 841
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    .line 839
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doubles(J)Ljava9/util/stream/DoubleStream;
    .locals 11
    .param p1, "streamSize"    # J

    .line 770
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 772
    new-instance v0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;

    const-wide/16 v3, 0x0

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v10}, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava9/util/SplittableRandom;JJDD)V

    const/4 v1, 0x0

    .line 773
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    .line 771
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doubles(JDD)Ljava9/util/stream/DoubleStream;
    .locals 12
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    .line 812
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 814
    cmpg-double v0, p3, p5

    if-gez v0, :cond_0

    .line 816
    new-instance v0, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;

    const-wide/16 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Ljava9/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava9/util/SplittableRandom;JJDD)V

    const/4 v1, 0x0

    .line 817
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    .line 815
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final internalNextDouble(DD)D
    .locals 6
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    .line 354
    invoke-virtual {p0}, Ljava9/util/SplittableRandom;->nextLong()J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    .line 355
    .local v0, "r":D
    cmpg-double v2, p1, p3

    if-gez v2, :cond_0

    .line 356
    sub-double v2, p3, p1

    mul-double/2addr v2, v0

    add-double v0, v2, p1

    .line 357
    cmpl-double v2, v0, p3

    if-ltz v2, :cond_0

    .line 358
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 360
    :cond_0
    return-wide v0
.end method

.method final internalNextInt(II)I
    .locals 6
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .line 326
    invoke-direct {p0}, Ljava9/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/SplittableRandom;->mix32(J)I

    move-result v0

    .line 327
    .local v0, "r":I
    if-ge p1, p2, :cond_4

    .line 328
    sub-int v1, p2, p1

    .local v1, "n":I
    add-int/lit8 v2, v1, -0x1

    .line 329
    .local v2, "m":I
    and-int v3, v1, v2

    if-nez v3, :cond_0

    .line 330
    and-int v3, v0, v2

    add-int v0, v3, p1

    goto :goto_2

    .line 331
    :cond_0
    if-lez v1, :cond_2

    .line 332
    ushr-int/lit8 v3, v0, 0x1

    .line 333
    .local v3, "u":I
    :goto_0
    add-int v4, v3, v2

    rem-int v5, v3, v1

    move v0, v5

    sub-int/2addr v4, v5

    if-gez v4, :cond_1

    .line 334
    invoke-direct {p0}, Ljava9/util/SplittableRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava9/util/SplittableRandom;->mix32(J)I

    move-result v4

    ushr-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 336
    .end local v3    # "u":I
    :cond_1
    add-int/2addr v0, p1

    goto :goto_2

    .line 339
    :cond_2
    :goto_1
    if-lt v0, p1, :cond_3

    if-lt v0, p2, :cond_4

    .line 340
    :cond_3
    invoke-direct {p0}, Ljava9/util/SplittableRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava9/util/SplittableRandom;->mix32(J)I

    move-result v0

    goto :goto_1

    .line 343
    .end local v1    # "n":I
    .end local v2    # "m":I
    :cond_4
    :goto_2
    return v0
.end method

.method final internalNextLong(JJ)J
    .locals 16
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    .line 297
    invoke-direct/range {p0 .. p0}, Ljava9/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    .line 298
    .local v0, "r":J
    cmp-long v2, p1, p3

    if-gez v2, :cond_4

    .line 299
    sub-long v2, p3, p1

    .local v2, "n":J
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    .line 300
    .local v4, "m":J
    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 301
    and-long v6, v0, v4

    add-long v0, v6, p1

    goto :goto_2

    .line 302
    :cond_0
    cmp-long v6, v2, v8

    if-lez v6, :cond_2

    .line 303
    const/4 v6, 0x1

    ushr-long v10, v0, v6

    .line 304
    .local v10, "u":J
    :goto_0
    add-long v12, v10, v4

    rem-long v14, v10, v2

    move-wide v0, v14

    sub-long/2addr v12, v14

    cmp-long v7, v12, v8

    if-gez v7, :cond_1

    .line 305
    invoke-direct/range {p0 .. p0}, Ljava9/util/SplittableRandom;->nextSeed()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava9/util/SplittableRandom;->mix64(J)J

    move-result-wide v12

    ushr-long v10, v12, v6

    goto :goto_0

    .line 307
    .end local v10    # "u":J
    :cond_1
    add-long v0, v0, p1

    goto :goto_2

    .line 310
    :cond_2
    :goto_1
    cmp-long v6, v0, p1

    if-ltz v6, :cond_3

    cmp-long v6, v0, p3

    if-ltz v6, :cond_4

    .line 311
    :cond_3
    invoke-direct/range {p0 .. p0}, Ljava9/util/SplittableRandom;->nextSeed()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava9/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    goto :goto_1

    .line 314
    .end local v2    # "n":J
    .end local v4    # "m":J
    :cond_4
    :goto_2
    return-wide v0
.end method

.method public ints()Ljava9/util/stream/IntStream;
    .locals 9

    .line 616
    new-instance v8, Ljava9/util/SplittableRandom$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const v6, 0x7fffffff

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljava9/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava9/util/SplittableRandom;JJII)V

    .line 617
    const/4 v0, 0x0

    invoke-static {v8, v0}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public ints(II)Ljava9/util/stream/IntStream;
    .locals 9
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .line 665
    if-ge p1, p2, :cond_0

    .line 667
    new-instance v8, Ljava9/util/SplittableRandom$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, v8

    move-object v1, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava9/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava9/util/SplittableRandom;JJII)V

    const/4 v0, 0x0

    .line 668
    invoke-static {v8, v0}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 666
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ints(J)Ljava9/util/stream/IntStream;
    .locals 9
    .param p1, "streamSize"    # J

    .line 598
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 600
    new-instance v0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;

    const-wide/16 v3, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v8}, Ljava9/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava9/util/SplittableRandom;JJII)V

    const/4 v1, 0x0

    .line 601
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 599
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ints(JII)Ljava9/util/stream/IntStream;
    .locals 9
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    .line 639
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 641
    if-ge p3, p4, :cond_0

    .line 643
    new-instance v0, Ljava9/util/SplittableRandom$RandomIntsSpliterator;

    const-wide/16 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Ljava9/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava9/util/SplittableRandom;JJII)V

    const/4 v1, 0x0

    .line 644
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 642
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longs()Ljava9/util/stream/LongStream;
    .locals 11

    .line 702
    new-instance v10, Ljava9/util/SplittableRandom$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Ljava9/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava9/util/SplittableRandom;JJJJ)V

    .line 703
    const/4 v0, 0x0

    invoke-static {v10, v0}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public longs(J)Ljava9/util/stream/LongStream;
    .locals 11
    .param p1, "streamSize"    # J

    .line 684
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 686
    new-instance v0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;

    const-wide/16 v3, 0x0

    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v10}, Ljava9/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava9/util/SplittableRandom;JJJJ)V

    const/4 v1, 0x0

    .line 687
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 685
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longs(JJ)Ljava9/util/stream/LongStream;
    .locals 11
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    .line 751
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 753
    new-instance v0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;

    const-wide/16 v3, 0x0

    const-wide v5, 0x7fffffffffffffffL

    move-object v1, v0

    move-object v2, p0

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v1 .. v10}, Ljava9/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava9/util/SplittableRandom;JJJJ)V

    const/4 v1, 0x0

    .line 754
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 752
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longs(JJJ)Ljava9/util/stream/LongStream;
    .locals 12
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    .line 725
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 727
    cmp-long v0, p3, p5

    if-gez v0, :cond_0

    .line 729
    new-instance v0, Ljava9/util/SplittableRandom$RandomLongsSpliterator;

    const-wide/16 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Ljava9/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava9/util/SplittableRandom;JJJJ)V

    const/4 v1, 0x0

    .line 730
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 728
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextBoolean()Z
    .locals 2

    .line 581
    invoke-direct {p0}, Ljava9/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/SplittableRandom;->mix32(J)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextBytes([B)V
    .locals 9
    .param p1, "bytes"    # [B

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "i":I
    array-length v1, p1

    .line 416
    .local v1, "len":I
    shr-int/lit8 v2, v1, 0x3

    .local v2, "words":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "words":I
    .local v3, "words":I
    const/16 v4, 0x8

    if-lez v2, :cond_1

    .line 417
    invoke-virtual {p0}, Ljava9/util/SplittableRandom;->nextLong()J

    move-result-wide v5

    .line 418
    .local v5, "rnd":J
    const/16 v2, 0x8

    .local v2, "n":I
    :goto_1
    add-int/lit8 v7, v2, -0x1

    .end local v2    # "n":I
    .local v7, "n":I
    if-lez v2, :cond_0

    .line 419
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    long-to-int v8, v5

    int-to-byte v8, v8

    aput-byte v8, p1, v0

    .line 418
    ushr-long/2addr v5, v4

    move v0, v2

    move v2, v7

    goto :goto_1

    .line 420
    .end local v2    # "i":I
    .end local v5    # "rnd":J
    .end local v7    # "n":I
    .restart local v0    # "i":I
    :cond_0
    move v2, v3

    goto :goto_0

    .line 421
    .end local v3    # "words":I
    :cond_1
    if-ge v0, v1, :cond_2

    .line 422
    invoke-virtual {p0}, Ljava9/util/SplittableRandom;->nextLong()J

    move-result-wide v2

    .local v2, "rnd":J
    :goto_2
    if-ge v0, v1, :cond_2

    .line 423
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .local v5, "i":I
    long-to-int v6, v2

    int-to-byte v6, v6

    aput-byte v6, p1, v0

    .line 422
    ushr-long/2addr v2, v4

    move v0, v5

    goto :goto_2

    .line 424
    .end local v2    # "rnd":J
    .end local v5    # "i":I
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method

.method public nextDouble()D
    .locals 4

    .line 538
    invoke-direct {p0}, Ljava9/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public nextDouble(D)D
    .locals 6
    .param p1, "bound"    # D

    .line 551
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 553
    invoke-direct {p0}, Ljava9/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    .line 554
    .local v0, "result":D
    cmpg-double v2, v0, p1

    if-gez v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    .line 555
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    :goto_0
    return-wide v2

    .line 552
    .end local v0    # "result":D
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble(DD)D
    .locals 2
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    .line 570
    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    .line 572
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava9/util/SplittableRandom;->internalNextDouble(DD)D

    move-result-wide v0

    return-wide v0

    .line 571
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextInt()I
    .locals 2

    .line 432
    invoke-direct {p0}, Ljava9/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/SplittableRandom;->mix32(J)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 5
    .param p1, "bound"    # I

    .line 445
    if-lez p1, :cond_2

    .line 448
    invoke-direct {p0}, Ljava9/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/SplittableRandom;->mix32(J)I

    move-result v0

    .line 449
    .local v0, "r":I
    add-int/lit8 v1, p1, -0x1

    .line 450
    .local v1, "m":I
    and-int v2, p1, v1

    if-nez v2, :cond_0

    .line 451
    and-int/2addr v0, v1

    goto :goto_1

    .line 453
    :cond_0
    ushr-int/lit8 v2, v0, 0x1

    .line 454
    .local v2, "u":I
    :goto_0
    add-int v3, v2, v1

    rem-int v4, v2, p1

    move v0, v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_1

    .line 455
    invoke-direct {p0}, Ljava9/util/SplittableRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava9/util/SplittableRandom;->mix32(J)I

    move-result v3

    ushr-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 458
    .end local v2    # "u":I
    :cond_1
    :goto_1
    return v0

    .line 446
    .end local v0    # "r":I
    .end local v1    # "m":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextInt(II)I
    .locals 2
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .line 473
    if-ge p1, p2, :cond_0

    .line 475
    invoke-virtual {p0, p1, p2}, Ljava9/util/SplittableRandom;->internalNextInt(II)I

    move-result v0

    return v0

    .line 474
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextLong()J
    .locals 2

    .line 484
    invoke-direct {p0}, Ljava9/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(J)J
    .locals 13
    .param p1, "bound"    # J

    .line 497
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 500
    invoke-direct {p0}, Ljava9/util/SplittableRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava9/util/SplittableRandom;->mix64(J)J

    move-result-wide v2

    .line 501
    .local v2, "r":J
    const-wide/16 v4, 0x1

    sub-long v4, p1, v4

    .line 502
    .local v4, "m":J
    and-long v6, p1, v4

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    .line 503
    and-long v0, v2, v4

    .end local v2    # "r":J
    .local v0, "r":J
    goto :goto_1

    .line 505
    .end local v0    # "r":J
    .restart local v2    # "r":J
    :cond_0
    const/4 v6, 0x1

    ushr-long v7, v2, v6

    .line 506
    .local v7, "u":J
    :goto_0
    add-long v9, v7, v4

    rem-long v11, v7, p1

    move-wide v2, v11

    sub-long/2addr v9, v11

    cmp-long v9, v9, v0

    if-gez v9, :cond_1

    .line 507
    invoke-direct {p0}, Ljava9/util/SplittableRandom;->nextSeed()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava9/util/SplittableRandom;->mix64(J)J

    move-result-wide v9

    ushr-long v7, v9, v6

    goto :goto_0

    .line 506
    :cond_1
    move-wide v0, v2

    .line 510
    .end local v2    # "r":J
    .end local v7    # "u":J
    .restart local v0    # "r":J
    :goto_1
    return-wide v0

    .line 498
    .end local v0    # "r":J
    .end local v4    # "m":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextLong(JJ)J
    .locals 2
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    .line 525
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 527
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava9/util/SplittableRandom;->internalNextLong(JJ)J

    move-result-wide v0

    return-wide v0

    .line 526
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public split()Ljava9/util/SplittableRandom;
    .locals 5

    .line 403
    new-instance v0, Ljava9/util/SplittableRandom;

    invoke-virtual {p0}, Ljava9/util/SplittableRandom;->nextLong()J

    move-result-wide v1

    invoke-direct {p0}, Ljava9/util/SplittableRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava9/util/SplittableRandom;->mixGamma(J)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava9/util/SplittableRandom;-><init>(JJ)V

    return-object v0
.end method
