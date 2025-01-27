.class public Ljava9/util/concurrent/ThreadLocalRandom;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;,
        Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;,
        Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
    }
.end annotation


# static fields
.field private static final BAD_BOUND:Ljava/lang/String; = "bound must be positive"

.field private static final BAD_RANGE:Ljava/lang/String; = "bound must be greater than origin"

.field private static final BAD_SIZE:Ljava/lang/String; = "size must be non-negative"

.field private static final DOUBLE_UNIT:D = 1.1102230246251565E-16

.field private static final FLOAT_UNIT:F = 5.9604645E-8f

.field private static final instance:Ljava9/util/concurrent/ThreadLocalRandom;

.field private static final nextLocalGaussian:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x7e9c859e134009b3L


# instance fields
.field private initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 901
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v3, "rnd"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "initialized"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Ljava9/util/concurrent/ThreadLocalRandom;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 943
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ljava9/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    .line 947
    new-instance v0, Ljava9/util/concurrent/ThreadLocalRandom;

    invoke-direct {v0}, Ljava9/util/concurrent/ThreadLocalRandom;-><init>()V

    sput-object v0, Ljava9/util/concurrent/ThreadLocalRandom;->instance:Ljava9/util/concurrent/ThreadLocalRandom;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/concurrent/ThreadLocalRandom;->initialized:Z

    .line 110
    return-void
.end method

.method static synthetic access$000(Ljava9/util/concurrent/ThreadLocalRandom;II)I
    .locals 1
    .param p0, "x0"    # Ljava9/util/concurrent/ThreadLocalRandom;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Ljava9/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava9/util/concurrent/ThreadLocalRandom;JJ)J
    .locals 2
    .param p0, "x0"    # Ljava9/util/concurrent/ThreadLocalRandom;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Ljava9/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Ljava9/util/concurrent/ThreadLocalRandom;DD)D
    .locals 2
    .param p0, "x0"    # Ljava9/util/concurrent/ThreadLocalRandom;
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Ljava9/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static current()Ljava9/util/concurrent/ThreadLocalRandom;
    .locals 1

    .line 118
    invoke-static {}, Ljava9/util/concurrent/TLRandom;->getThreadLocalRandomProbe()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-static {}, Ljava9/util/concurrent/TLRandom;->localInit()V

    .line 121
    :cond_0
    sget-object v0, Ljava9/util/concurrent/ThreadLocalRandom;->instance:Ljava9/util/concurrent/ThreadLocalRandom;

    return-object v0
.end method

.method private final internalNextDouble(DD)D
    .locals 6
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    .line 210
    invoke-virtual {p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextLong()J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    .line 211
    .local v0, "r":D
    cmpg-double v2, p1, p3

    if-gez v2, :cond_0

    .line 212
    sub-double v2, p3, p1

    mul-double/2addr v2, v0

    add-double v0, v2, p1

    .line 213
    cmpl-double v2, v0, p3

    if-ltz v2, :cond_0

    .line 214
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 216
    :cond_0
    return-wide v0
.end method

.method private final internalNextInt(II)I
    .locals 6
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .line 182
    invoke-direct {p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/concurrent/TLRandom;->mix32(J)I

    move-result v0

    .line 183
    .local v0, "r":I
    if-ge p1, p2, :cond_4

    .line 184
    sub-int v1, p2, p1

    .local v1, "n":I
    add-int/lit8 v2, v1, -0x1

    .line 185
    .local v2, "m":I
    and-int v3, v1, v2

    if-nez v3, :cond_0

    .line 186
    and-int v3, v0, v2

    add-int v0, v3, p1

    goto :goto_2

    .line 187
    :cond_0
    if-lez v1, :cond_2

    .line 188
    ushr-int/lit8 v3, v0, 0x1

    .line 189
    .local v3, "u":I
    :goto_0
    add-int v4, v3, v2

    rem-int v5, v3, v1

    move v0, v5

    sub-int/2addr v4, v5

    if-gez v4, :cond_1

    .line 190
    invoke-direct {p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava9/util/concurrent/TLRandom;->mix32(J)I

    move-result v4

    ushr-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 192
    .end local v3    # "u":I
    :cond_1
    add-int/2addr v0, p1

    goto :goto_2

    .line 195
    :cond_2
    :goto_1
    if-lt v0, p1, :cond_3

    if-lt v0, p2, :cond_4

    .line 196
    :cond_3
    invoke-direct {p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava9/util/concurrent/TLRandom;->mix32(J)I

    move-result v0

    goto :goto_1

    .line 199
    .end local v1    # "n":I
    .end local v2    # "m":I
    :cond_4
    :goto_2
    return v0
.end method

.method private final internalNextLong(JJ)J
    .locals 16
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    .line 153
    invoke-direct/range {p0 .. p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/concurrent/TLRandom;->mix64(J)J

    move-result-wide v0

    .line 154
    .local v0, "r":J
    cmp-long v2, p1, p3

    if-gez v2, :cond_4

    .line 155
    sub-long v2, p3, p1

    .local v2, "n":J
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    .line 156
    .local v4, "m":J
    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 157
    and-long v6, v0, v4

    add-long v0, v6, p1

    goto :goto_2

    .line 158
    :cond_0
    cmp-long v6, v2, v8

    if-lez v6, :cond_2

    .line 159
    const/4 v6, 0x1

    ushr-long v10, v0, v6

    .line 160
    .local v10, "u":J
    :goto_0
    add-long v12, v10, v4

    rem-long v14, v10, v2

    move-wide v0, v14

    sub-long/2addr v12, v14

    cmp-long v7, v12, v8

    if-gez v7, :cond_1

    .line 161
    invoke-direct/range {p0 .. p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava9/util/concurrent/TLRandom;->mix64(J)J

    move-result-wide v12

    ushr-long v10, v12, v6

    goto :goto_0

    .line 163
    .end local v10    # "u":J
    :cond_1
    add-long v0, v0, p1

    goto :goto_2

    .line 166
    :cond_2
    :goto_1
    cmp-long v6, v0, p1

    if-ltz v6, :cond_3

    cmp-long v6, v0, p3

    if-ltz v6, :cond_4

    .line 167
    :cond_3
    invoke-direct/range {p0 .. p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava9/util/concurrent/TLRandom;->mix64(J)J

    move-result-wide v0

    goto :goto_1

    .line 170
    .end local v2    # "n":J
    .end local v4    # "m":J
    :cond_4
    :goto_2
    return-wide v0
.end method

.method private final nextSeed()J
    .locals 2

    .line 140
    invoke-static {}, Ljava9/util/concurrent/TLRandom;->nextSeed()J

    move-result-wide v0

    return-wide v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 925
    invoke-static {}, Ljava9/util/concurrent/ThreadLocalRandom;->current()Ljava9/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 914
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 915
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    invoke-static {}, Ljava9/util/concurrent/TLRandom;->getThreadLocalRandomSeed()J

    move-result-wide v1

    const-string v3, "rnd"

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    .line 916
    const-string v1, "initialized"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 917
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 918
    return-void
.end method


# virtual methods
.method public doubles()Ljava9/util/stream/DoubleStream;
    .locals 10

    .line 666
    new-instance v9, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    .line 667
    const/4 v0, 0x0

    invoke-static {v9, v0}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public doubles(DD)Ljava9/util/stream/DoubleStream;
    .locals 10
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    .line 717
    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    .line 719
    new-instance v0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, v0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    const/4 v1, 0x0

    .line 720
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    .line 718
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doubles(J)Ljava9/util/stream/DoubleStream;
    .locals 10
    .param p1, "streamSize"    # J

    .line 645
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 647
    new-instance v0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v8, 0x0

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v9}, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    const/4 v1, 0x0

    .line 648
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    .line 646
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doubles(JDD)Ljava9/util/stream/DoubleStream;
    .locals 11
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    .line 689
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 691
    cmpg-double v0, p3, p5

    if-gez v0, :cond_0

    .line 693
    new-instance v0, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v3, 0x0

    move-object v2, v0

    move-wide v5, p1

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Ljava9/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    const/4 v1, 0x0

    .line 694
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    .line 692
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ints()Ljava9/util/stream/IntStream;
    .locals 8

    .line 484
    new-instance v7, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const v5, 0x7fffffff

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    .line 485
    const/4 v0, 0x0

    invoke-static {v7, v0}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public ints(II)Ljava9/util/stream/IntStream;
    .locals 8
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .line 535
    if-ge p1, p2, :cond_0

    .line 537
    new-instance v7, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move-object v0, v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    const/4 v0, 0x0

    .line 538
    invoke-static {v7, v0}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 536
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ints(J)Ljava9/util/stream/IntStream;
    .locals 8
    .param p1, "streamSize"    # J

    .line 464
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 466
    new-instance v0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    const/4 v1, 0x0

    .line 467
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ints(JII)Ljava9/util/stream/IntStream;
    .locals 8
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    .line 507
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 509
    if-ge p3, p4, :cond_0

    .line 511
    new-instance v0, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    move-object v1, v0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Ljava9/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    const/4 v1, 0x0

    .line 512
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longs()Ljava9/util/stream/LongStream;
    .locals 10

    .line 574
    new-instance v9, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const-wide v5, 0x7fffffffffffffffL

    const-wide/16 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    .line 575
    const/4 v0, 0x0

    invoke-static {v9, v0}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public longs(J)Ljava9/util/stream/LongStream;
    .locals 10
    .param p1, "streamSize"    # J

    .line 554
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 556
    new-instance v0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v9}, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 v1, 0x0

    .line 557
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 555
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longs(JJ)Ljava9/util/stream/LongStream;
    .locals 10
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    .line 625
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 627
    new-instance v0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, v0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 v1, 0x0

    .line 628
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 626
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longs(JJJ)Ljava9/util/stream/LongStream;
    .locals 11
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    .line 597
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 599
    cmp-long v0, p3, p5

    if-gez v0, :cond_0

    .line 601
    new-instance v0, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v3, 0x0

    move-object v2, v0

    move-wide v5, p1

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Ljava9/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 v1, 0x0

    .line 602
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 600
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextBoolean()Z
    .locals 2

    .line 372
    invoke-direct {p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/concurrent/TLRandom;->mix32(J)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextDouble()D
    .locals 4

    .line 329
    invoke-direct {p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/concurrent/TLRandom;->mix64(J)J

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

    .line 342
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 344
    invoke-direct {p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/concurrent/TLRandom;->mix64(J)J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    .line 345
    .local v0, "result":D
    cmpg-double v2, v0, p1

    if-gez v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    .line 346
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    :goto_0
    return-wide v2

    .line 343
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

    .line 361
    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    .line 363
    invoke-direct {p0, p1, p2, p3, p4}, Ljava9/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    move-result-wide v0

    return-wide v0

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextFloat()F
    .locals 2

    .line 383
    invoke-direct {p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/concurrent/TLRandom;->mix32(J)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x33800000

    mul-float/2addr v0, v1

    return v0
.end method

.method public nextGaussian()D
    .locals 12

    .line 434
    sget-object v0, Ljava9/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 435
    .local v1, "d":Ljava/lang/Double;
    if-eqz v1, :cond_0

    .line 436
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 437
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2

    .line 441
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v6

    .line 442
    .local v2, "v1":D
    invoke-virtual {p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v8

    mul-double/2addr v8, v4

    sub-double/2addr v8, v6

    .line 443
    .local v8, "v2":D
    mul-double v4, v2, v2

    mul-double v10, v8, v8

    add-double/2addr v4, v10

    .line 444
    .local v4, "s":D
    cmpl-double v0, v4, v6

    if-gez v0, :cond_1

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_1

    .line 445
    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    invoke-static {v4, v5}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    div-double/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v6

    .line 446
    .local v6, "multiplier":D
    sget-object v0, Ljava9/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    mul-double v10, v8, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 447
    mul-double v10, v2, v6

    return-wide v10

    .line 444
    .end local v6    # "multiplier":D
    :cond_1
    goto :goto_0
.end method

.method public nextInt()I
    .locals 2

    .line 225
    invoke-direct {p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/concurrent/TLRandom;->mix32(J)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 5
    .param p1, "bound"    # I

    .line 238
    if-lez p1, :cond_2

    .line 240
    invoke-direct {p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/concurrent/TLRandom;->mix32(J)I

    move-result v0

    .line 241
    .local v0, "r":I
    add-int/lit8 v1, p1, -0x1

    .line 242
    .local v1, "m":I
    and-int v2, p1, v1

    if-nez v2, :cond_0

    .line 243
    and-int/2addr v0, v1

    goto :goto_1

    .line 245
    :cond_0
    ushr-int/lit8 v2, v0, 0x1

    .line 246
    .local v2, "u":I
    :goto_0
    add-int v3, v2, v1

    rem-int v4, v2, p1

    move v0, v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_1

    .line 247
    invoke-direct {p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava9/util/concurrent/TLRandom;->mix32(J)I

    move-result v3

    ushr-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 250
    .end local v2    # "u":I
    :cond_1
    :goto_1
    return v0

    .line 239
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

    .line 265
    if-ge p1, p2, :cond_0

    .line 267
    invoke-direct {p0, p1, p2}, Ljava9/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result v0

    return v0

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextLong()J
    .locals 2

    .line 276
    invoke-direct {p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/concurrent/TLRandom;->mix64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(J)J
    .locals 13
    .param p1, "bound"    # J

    .line 289
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 291
    invoke-direct {p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava9/util/concurrent/TLRandom;->mix64(J)J

    move-result-wide v2

    .line 292
    .local v2, "r":J
    const-wide/16 v4, 0x1

    sub-long v4, p1, v4

    .line 293
    .local v4, "m":J
    and-long v6, p1, v4

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    .line 294
    and-long v0, v2, v4

    .end local v2    # "r":J
    .local v0, "r":J
    goto :goto_1

    .line 296
    .end local v0    # "r":J
    .restart local v2    # "r":J
    :cond_0
    const/4 v6, 0x1

    ushr-long v7, v2, v6

    .line 297
    .local v7, "u":J
    :goto_0
    add-long v9, v7, v4

    rem-long v11, v7, p1

    move-wide v2, v11

    sub-long/2addr v9, v11

    cmp-long v9, v9, v0

    if-gez v9, :cond_1

    .line 298
    invoke-direct {p0}, Ljava9/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava9/util/concurrent/TLRandom;->mix64(J)J

    move-result-wide v9

    ushr-long v7, v9, v6

    goto :goto_0

    .line 297
    :cond_1
    move-wide v0, v2

    .line 301
    .end local v2    # "r":J
    .end local v7    # "u":J
    .restart local v0    # "r":J
    :goto_1
    return-wide v0

    .line 290
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

    .line 316
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 318
    invoke-direct {p0, p1, p2, p3, p4}, Ljava9/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    move-result-wide v0

    return-wide v0

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSeed(J)V
    .locals 1
    .param p1, "seed"    # J

    .line 134
    iget-boolean v0, p0, Ljava9/util/concurrent/ThreadLocalRandom;->initialized:Z

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
