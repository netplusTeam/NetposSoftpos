.class public abstract Lorg/HdrHistogram/AbstractHistogram;
.super Lorg/HdrHistogram/AbstractHistogramBase;
.source "AbstractHistogram.java"

# interfaces
.implements Lorg/HdrHistogram/ValueRecorder;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/HdrHistogram/AbstractHistogram$AllValues;,
        Lorg/HdrHistogram/AbstractHistogram$RecordedValues;,
        Lorg/HdrHistogram/AbstractHistogram$LogarithmicBucketValues;,
        Lorg/HdrHistogram/AbstractHistogram$LinearBucketValues;,
        Lorg/HdrHistogram/AbstractHistogram$Percentiles;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ENCODING_HEADER_SIZE:I = 0x28

.field private static final V0CompressedEncodingCookieBase:I = 0x1c849309

.field private static final V0EncodingCookieBase:I = 0x1c849308

.field private static final V0_ENCODING_HEADER_SIZE:I = 0x20

.field private static final V1CompressedEncodingCookieBase:I = 0x1c849302

.field private static final V1EncodingCookieBase:I = 0x1c849301

.field private static final V2CompressedEncodingCookieBase:I = 0x1c849304

.field private static final V2EncodingCookieBase:I = 0x1c849303

.field private static final V2maxWordSizeInBytes:I = 0x9

.field private static final compressedEncodingCookieBase:I = 0x1c849304

.field private static final constructorArgsTypes:[Ljava/lang/Class;

.field private static final encodingCookieBase:I = 0x1c849303

.field private static final maxValueUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/HdrHistogram/AbstractHistogram;",
            ">;"
        }
    .end annotation
.end field

.field private static final minNonZeroValueUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/HdrHistogram/AbstractHistogram;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1c849302L


# instance fields
.field leadingZeroCountBase:I

.field volatile maxValue:J

.field volatile minNonZeroValue:J

.field subBucketHalfCount:I

.field subBucketHalfCountMagnitude:I

.field subBucketMask:J

.field unitMagnitude:I

.field unitMagnitudeMask:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 100
    const-class v0, Lorg/HdrHistogram/AbstractHistogram;

    .line 128
    nop

    .line 129
    const-string v1, "maxValue"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lorg/HdrHistogram/AbstractHistogram;->maxValueUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 130
    nop

    .line 131
    const-string v1, "minNonZeroValue"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/HdrHistogram/AbstractHistogram;->minNonZeroValueUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2074
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/HdrHistogram/AbstractHistogram;->constructorArgsTypes:[Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 6
    .param p1, "numberOfSignificantValueDigits"    # I

    .line 251
    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x2

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/AbstractHistogram;-><init>(JJI)V

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/HdrHistogram/AbstractHistogram;->autoResize:Z

    .line 253
    return-void
.end method

.method protected constructor <init>(JJI)V
    .locals 11
    .param p1, "lowestDiscernibleValue"    # J
    .param p3, "highestTrackableValue"    # J
    .param p5, "numberOfSignificantValueDigits"    # I

    .line 272
    move-object v9, p0

    move/from16 v10, p5

    invoke-direct {p0}, Lorg/HdrHistogram/AbstractHistogramBase;-><init>()V

    .line 125
    const-wide/16 v0, 0x0

    iput-wide v0, v9, Lorg/HdrHistogram/AbstractHistogram;->maxValue:J

    .line 126
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, v9, Lorg/HdrHistogram/AbstractHistogram;->minNonZeroValue:J

    .line 274
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 277
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    .line 281
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p1

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    .line 284
    if-ltz v10, :cond_0

    const/4 v0, 0x5

    if-gt v10, v0, :cond_0

    .line 287
    sget-object v0, Lorg/HdrHistogram/AbstractHistogram;->constructionIdentityCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, v9, Lorg/HdrHistogram/AbstractHistogram;->identity:J

    .line 289
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v8}, Lorg/HdrHistogram/AbstractHistogram;->init(JJIDI)V

    .line 290
    return-void

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numberOfSignificantValueDigits must be between 0 and 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "highestTrackableValue must be >= 2 * lowestDiscernibleValue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lowestDiscernibleValue must be <= Long.MAX_VALUE / 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lowestDiscernibleValue must be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 6
    .param p1, "source"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 298
    invoke-virtual {p1}, Lorg/HdrHistogram/AbstractHistogram;->getLowestDiscernibleValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/HdrHistogram/AbstractHistogram;->getHighestTrackableValue()J

    move-result-wide v3

    .line 299
    invoke-virtual {p1}, Lorg/HdrHistogram/AbstractHistogram;->getNumberOfSignificantValueDigits()I

    move-result v5

    .line 298
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/AbstractHistogram;-><init>(JJI)V

    .line 300
    invoke-virtual {p1}, Lorg/HdrHistogram/AbstractHistogram;->getStartTimeStamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->setStartTimeStamp(J)V

    .line 301
    invoke-virtual {p1}, Lorg/HdrHistogram/AbstractHistogram;->getEndTimeStamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->setEndTimeStamp(J)V

    .line 302
    iget-boolean v0, p1, Lorg/HdrHistogram/AbstractHistogram;->autoResize:Z

    iput-boolean v0, p0, Lorg/HdrHistogram/AbstractHistogram;->autoResize:Z

    .line 303
    return-void
.end method

.method private countsArrayIndex(II)I
    .locals 3
    .param p1, "bucketIndex"    # I
    .param p2, "subBucketIndex"    # I

    .line 2412
    iget v0, p0, Lorg/HdrHistogram/AbstractHistogram;->subBucketCount:I

    if-ge p2, v0, :cond_2

    .line 2413
    if-eqz p1, :cond_1

    iget v0, p0, Lorg/HdrHistogram/AbstractHistogram;->subBucketHalfCount:I

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2416
    :cond_1
    :goto_0
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/HdrHistogram/AbstractHistogram;->subBucketHalfCountMagnitude:I

    shl-int/2addr v0, v1

    .line 2420
    .local v0, "bucketBaseIndex":I
    iget v1, p0, Lorg/HdrHistogram/AbstractHistogram;->subBucketHalfCount:I

    sub-int v1, p2, v1

    .line 2422
    .local v1, "offsetInBucket":I
    add-int v2, v0, v1

    return v2

    .line 2412
    .end local v0    # "bucketBaseIndex":I
    .end local v1    # "offsetInBucket":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static decodeFromByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "minBarForHighestTrackableValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/HdrHistogram/AbstractHistogram;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    .line 2081
    .local p1, "histogramClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Lorg/HdrHistogram/AbstractHistogram;->decodeFromByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;JLjava/util/zip/Inflater;)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2082
    :catch_0
    move-exception v0

    .line 2083
    .local v0, "ex":Ljava/util/zip/DataFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static decodeFromByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;JLjava/util/zip/Inflater;)Lorg/HdrHistogram/AbstractHistogram;
    .locals 19
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "minBarForHighestTrackableValue"    # J
    .param p4, "decompressor"    # Ljava/util/zip/Inflater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/HdrHistogram/AbstractHistogram;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;J",
            "Ljava/util/zip/Inflater;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 2093
    .local p1, "histogramClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v1, p4

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 2101
    .local v2, "cookie":I
    invoke-static {v2}, Lorg/HdrHistogram/AbstractHistogram;->getCookieBase(I)I

    move-result v0

    const-string v3, "The buffer does not contain a Histogram (no valid cookie found)"

    const v4, 0x1c849303

    if-eq v0, v4, :cond_2

    .line 2102
    invoke-static {v2}, Lorg/HdrHistogram/AbstractHistogram;->getCookieBase(I)I

    move-result v0

    const v5, 0x1c849301

    if-ne v0, v5, :cond_0

    goto :goto_0

    .line 2115
    :cond_0
    invoke-static {v2}, Lorg/HdrHistogram/AbstractHistogram;->getCookieBase(I)I

    move-result v0

    const v4, 0x1c849308

    if-ne v0, v4, :cond_1

    .line 2116
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 2117
    .local v0, "numberOfSignificantValueDigits":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 2118
    .local v3, "lowestTrackableUnitValue":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    .line 2119
    .local v5, "highestTrackableValue":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 2120
    const v7, 0x7fffffff

    .line 2121
    .local v7, "payloadLengthInBytes":I
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 2122
    .local v8, "integerToDoubleValueConversionRatio":D
    const/4 v10, 0x0

    move v11, v10

    move-wide v9, v8

    move v8, v7

    move-wide v6, v5

    move-wide v4, v3

    move v3, v0

    .local v10, "normalizingIndexOffset":I
    goto :goto_2

    .line 2124
    .end local v0    # "numberOfSignificantValueDigits":I
    .end local v3    # "lowestTrackableUnitValue":J
    .end local v5    # "highestTrackableValue":J
    .end local v7    # "payloadLengthInBytes":I
    .end local v8    # "integerToDoubleValueConversionRatio":D
    .end local v10    # "normalizingIndexOffset":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2103
    :cond_2
    :goto_0
    invoke-static {v2}, Lorg/HdrHistogram/AbstractHistogram;->getCookieBase(I)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 2104
    invoke-static {v2}, Lorg/HdrHistogram/AbstractHistogram;->getWordSizeInBytesFromCookie(I)I

    move-result v0

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    goto :goto_1

    .line 2105
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2109
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 2110
    .restart local v7    # "payloadLengthInBytes":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 2111
    .restart local v10    # "normalizingIndexOffset":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 2112
    .restart local v0    # "numberOfSignificantValueDigits":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 2113
    .restart local v3    # "lowestTrackableUnitValue":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    .line 2114
    .restart local v5    # "highestTrackableValue":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v8

    move v11, v10

    move-wide v9, v8

    move v8, v7

    move-wide v6, v5

    move-wide v4, v3

    move v3, v0

    .line 2126
    .end local v0    # "numberOfSignificantValueDigits":I
    .end local v5    # "highestTrackableValue":J
    .end local v7    # "payloadLengthInBytes":I
    .end local v10    # "normalizingIndexOffset":I
    .local v3, "numberOfSignificantValueDigits":I
    .local v4, "lowestTrackableUnitValue":J
    .local v6, "highestTrackableValue":J
    .local v8, "payloadLengthInBytes":I
    .local v9, "integerToDoubleValueConversionRatio":D
    .local v11, "normalizingIndexOffset":I
    :goto_2
    move-wide/from16 v12, p2

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 2132
    :try_start_0
    sget-object v0, Lorg/HdrHistogram/AbstractHistogram;->constructorArgsTypes:[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_d

    move-object/from16 v14, p1

    :try_start_1
    invoke-virtual {v14, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    move-object v15, v0

    .line 2133
    .local v15, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v0, v16

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_9

    move-wide/from16 v17, v4

    .end local v4    # "lowestTrackableUnitValue":J
    .local v17, "lowestTrackableUnitValue":J
    const/4 v4, 0x1

    :try_start_2
    aput-object v16, v0, v4

    const/4 v5, 0x2

    .line 2134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v5

    .line 2133
    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/AbstractHistogram;

    move-object v5, v0

    .line 2135
    .local v5, "histogram":Lorg/HdrHistogram/AbstractHistogram;, "TT;"
    invoke-virtual {v5, v9, v10}, Lorg/HdrHistogram/AbstractHistogram;->setIntegerToDoubleValueConversionRatio(D)V

    .line 2136
    invoke-virtual {v5, v11}, Lorg/HdrHistogram/AbstractHistogram;->setNormalizingIndexOffset(I)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5

    .line 2138
    :try_start_3
    invoke-virtual {v5, v4}, Lorg/HdrHistogram/AbstractHistogram;->setAutoResize(Z)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2141
    goto :goto_4

    .line 2142
    .end local v5    # "histogram":Lorg/HdrHistogram/AbstractHistogram;, "TT;"
    .end local v15    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    move/from16 v16, v3

    goto/16 :goto_9

    .line 2139
    .restart local v5    # "histogram":Lorg/HdrHistogram/AbstractHistogram;, "TT;"
    .restart local v15    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_4
    move-exception v0

    .line 2145
    .end local v15    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :goto_4
    nop

    .line 2149
    iget v0, v5, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    .line 2151
    invoke-virtual {v5, v0}, Lorg/HdrHistogram/AbstractHistogram;->getNeededV0PayloadByteBufferCapacity(I)I

    move-result v0

    .line 2150
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2155
    .local v0, "expectedCapacity":I
    if-nez v1, :cond_6

    .line 2157
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-gt v0, v4, :cond_5

    .line 2160
    move-object/from16 v4, p0

    move/from16 v16, v3

    .local v4, "payLoadSourceBuffer":Ljava/nio/ByteBuffer;
    goto :goto_5

    .line 2158
    .end local v4    # "payLoadSourceBuffer":Ljava/nio/ByteBuffer;
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v15, "The buffer does not contain the full Histogram payload"

    invoke-direct {v4, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2163
    :cond_6
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v15, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2164
    .restart local v4    # "payLoadSourceBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v15

    .line 2165
    .local v15, "decompressedByteCount":I
    const v1, 0x7fffffff

    if-eq v8, v1, :cond_8

    if-lt v15, v8, :cond_7

    move/from16 v16, v3

    goto :goto_5

    .line 2166
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move/from16 v16, v3

    .end local v3    # "numberOfSignificantValueDigits":I
    .local v16, "numberOfSignificantValueDigits":I
    const-string v3, "The buffer does not contain the indicated payload amount"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2165
    .end local v16    # "numberOfSignificantValueDigits":I
    .restart local v3    # "numberOfSignificantValueDigits":I
    :cond_8
    move/from16 v16, v3

    .line 2170
    .end local v3    # "numberOfSignificantValueDigits":I
    .end local v15    # "decompressedByteCount":I
    .restart local v16    # "numberOfSignificantValueDigits":I
    :goto_5
    nop

    .line 2173
    invoke-static {v2}, Lorg/HdrHistogram/AbstractHistogram;->getWordSizeInBytesFromCookie(I)I

    move-result v1

    .line 2170
    invoke-direct {v5, v4, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->fillCountsArrayFromSourceBuffer(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 2176
    .local v1, "filledLength":I
    invoke-virtual {v5, v1}, Lorg/HdrHistogram/AbstractHistogram;->establishInternalTackingValues(I)V

    .line 2178
    return-object v5

    .line 2142
    .end local v0    # "expectedCapacity":I
    .end local v1    # "filledLength":I
    .end local v4    # "payLoadSourceBuffer":Ljava/nio/ByteBuffer;
    .end local v5    # "histogram":Lorg/HdrHistogram/AbstractHistogram;, "TT;"
    .end local v16    # "numberOfSignificantValueDigits":I
    .restart local v3    # "numberOfSignificantValueDigits":I
    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    :goto_6
    move/from16 v16, v3

    .end local v3    # "numberOfSignificantValueDigits":I
    .restart local v16    # "numberOfSignificantValueDigits":I
    goto :goto_9

    .end local v16    # "numberOfSignificantValueDigits":I
    .end local v17    # "lowestTrackableUnitValue":J
    .restart local v3    # "numberOfSignificantValueDigits":I
    .local v4, "lowestTrackableUnitValue":J
    :catch_9
    move-exception v0

    goto :goto_8

    :catch_a
    move-exception v0

    goto :goto_8

    :catch_b
    move-exception v0

    goto :goto_8

    :catch_c
    move-exception v0

    goto :goto_8

    :catch_d
    move-exception v0

    goto :goto_7

    :catch_e
    move-exception v0

    goto :goto_7

    :catch_f
    move-exception v0

    goto :goto_7

    :catch_10
    move-exception v0

    :goto_7
    move-object/from16 v14, p1

    :goto_8
    move/from16 v16, v3

    move-wide/from16 v17, v4

    .line 2144
    .end local v3    # "numberOfSignificantValueDigits":I
    .end local v4    # "lowestTrackableUnitValue":J
    .local v0, "ex":Ljava/lang/ReflectiveOperationException;
    .restart local v16    # "numberOfSignificantValueDigits":I
    .restart local v17    # "lowestTrackableUnitValue":J
    :goto_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;J)Lorg/HdrHistogram/AbstractHistogram;
    .locals 7
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "minBarForHighestTrackableValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/HdrHistogram/AbstractHistogram;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 2268
    .local p1, "histogramClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2269
    .local v0, "initialTargetPosition":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 2271
    .local v1, "cookie":I
    invoke-static {v1}, Lorg/HdrHistogram/AbstractHistogram;->getCookieBase(I)I

    move-result v2

    const v3, 0x1c849304

    if-eq v2, v3, :cond_2

    .line 2272
    invoke-static {v1}, Lorg/HdrHistogram/AbstractHistogram;->getCookieBase(I)I

    move-result v2

    const v3, 0x1c849302

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 2274
    :cond_0
    invoke-static {v1}, Lorg/HdrHistogram/AbstractHistogram;->getCookieBase(I)I

    move-result v2

    const v3, 0x1c849309

    if-ne v2, v3, :cond_1

    .line 2275
    const/16 v2, 0x20

    .local v2, "headerSize":I
    goto :goto_1

    .line 2277
    .end local v2    # "headerSize":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The buffer does not contain a compressed Histogram"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2273
    :cond_2
    :goto_0
    const/16 v2, 0x28

    .line 2280
    .restart local v2    # "headerSize":I
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 2281
    .local v3, "lengthOfCompressedContents":I
    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4}, Ljava/util/zip/Inflater;-><init>()V

    .line 2283
    .local v4, "decompressor":Ljava/util/zip/Inflater;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2284
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    add-int/lit8 v6, v0, 0x8

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_2

    .line 2286
    :cond_3
    new-array v5, v3, [B

    .line 2287
    .local v5, "compressedContents":[B
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2288
    invoke-virtual {v4, v5}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 2291
    .end local v5    # "compressedContents":[B
    :goto_2
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 2292
    .local v5, "headerBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/zip/Inflater;->inflate([B)I

    .line 2293
    invoke-static {v5, p1, p2, p3, v4}, Lorg/HdrHistogram/AbstractHistogram;->decodeFromByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Class;JLjava/util/zip/Inflater;)Lorg/HdrHistogram/AbstractHistogram;

    move-result-object v6

    .line 2296
    .local v6, "histogram":Lorg/HdrHistogram/AbstractHistogram;, "TT;"
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 2298
    return-object v6
.end method

.method private fillCountsArrayFromSourceBuffer(Ljava/nio/ByteBuffer;II)I
    .locals 17
    .param p1, "sourceBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "lengthInBytes"    # I
    .param p3, "wordSizeInBytes"    # I

    .line 2182
    move-object/from16 v0, p0

    move/from16 v1, p3

    const/16 v2, 0x9

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    const/16 v5, 0x8

    if-eq v1, v5, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2184
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "word size must be 2, 4, 8, or V2maxWordSizeInBytes (9) bytes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2187
    :cond_1
    :goto_0
    iget v5, v0, Lorg/HdrHistogram/AbstractHistogram;->wordSizeInBytes:I

    const-wide/32 v6, 0x7fffffff

    if-ne v5, v4, :cond_2

    const-wide/16 v8, 0x7fff

    goto :goto_1

    :cond_2
    iget v5, v0, Lorg/HdrHistogram/AbstractHistogram;->wordSizeInBytes:I

    if-ne v5, v3, :cond_3

    move-wide v8, v6

    goto :goto_1

    :cond_3
    const-wide v8, 0x7fffffffffffffffL

    .line 2192
    .local v8, "maxAllowableCountInHistigram":J
    :goto_1
    const/4 v5, 0x0

    .line 2193
    .local v5, "dstIndex":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int v10, v10, p2

    .line 2194
    .local v10, "endPosition":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    if-ge v11, v10, :cond_b

    .line 2196
    const/4 v11, 0x0

    .line 2197
    .local v11, "zerosCount":I
    if-ne v1, v2, :cond_5

    .line 2199
    invoke-static/range {p1 .. p1}, Lorg/HdrHistogram/ZigZagEncoding;->getLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    .line 2200
    .local v12, "count":J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-gez v14, :cond_8

    .line 2201
    neg-long v14, v12

    .line 2202
    .local v14, "zc":J
    cmp-long v16, v14, v6

    if-gtz v16, :cond_4

    .line 2206
    long-to-int v11, v14

    .line 2207
    .end local v14    # "zc":J
    goto :goto_4

    .line 2203
    .restart local v14    # "zc":J
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "An encoded zero count of > Integer.MAX_VALUE was encountered in the source"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2210
    .end local v12    # "count":J
    .end local v14    # "zc":J
    :cond_5
    if-ne v1, v4, :cond_6

    .line 2211
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    int-to-long v12, v12

    goto :goto_3

    :cond_6
    if-ne v1, v3, :cond_7

    .line 2212
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    int-to-long v12, v12

    goto :goto_3

    .line 2213
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    :goto_3
    nop

    .line 2217
    .restart local v12    # "count":J
    :cond_8
    :goto_4
    cmp-long v14, v12, v8

    if-gtz v14, :cond_a

    .line 2223
    if-lez v11, :cond_9

    .line 2224
    add-int/2addr v5, v11

    goto :goto_5

    .line 2226
    :cond_9
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "dstIndex":I
    .local v14, "dstIndex":I
    invoke-virtual {v0, v5, v12, v13}, Lorg/HdrHistogram/AbstractHistogram;->setCountAtIndex(IJ)V

    move v5, v14

    .line 2228
    .end local v11    # "zerosCount":I
    .end local v12    # "count":J
    .end local v14    # "dstIndex":I
    .restart local v5    # "dstIndex":I
    :goto_5
    goto :goto_2

    .line 2218
    .restart local v11    # "zerosCount":I
    .restart local v12    # "count":J
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An encoded count ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") does not fit in the Histogram\'s ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lorg/HdrHistogram/AbstractHistogram;->wordSizeInBytes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes) was encountered in the source"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2229
    .end local v11    # "zerosCount":I
    .end local v12    # "count":J
    :cond_b
    return v5
.end method

.method private getCompressedEncodingCookie()I
    .locals 1

    .line 1963
    const v0, 0x1c849314

    return v0
.end method

.method private static getCookieBase(I)I
    .locals 1
    .param p0, "cookie"    # I

    .line 1967
    and-int/lit16 v0, p0, -0xf1

    return v0
.end method

.method private getEncodingCookie()I
    .locals 1

    .line 1959
    const v0, 0x1c849313

    return v0
.end method

.method private static getWordSizeInBytesFromCookie(I)I
    .locals 2
    .param p0, "cookie"    # I

    .line 1971
    invoke-static {p0}, Lorg/HdrHistogram/AbstractHistogram;->getCookieBase(I)I

    move-result v0

    const v1, 0x1c849303

    if-eq v0, v1, :cond_1

    .line 1972
    invoke-static {p0}, Lorg/HdrHistogram/AbstractHistogram;->getCookieBase(I)I

    move-result v0

    const v1, 0x1c849304

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1975
    :cond_0
    and-int/lit16 v0, p0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    .line 1976
    .local v0, "sizeByte":I
    and-int/lit8 v1, v0, 0xe

    return v1

    .line 1973
    .end local v0    # "sizeByte":I
    :cond_1
    :goto_0
    const/16 v0, 0x9

    return v0
.end method

.method private handleRecordException(JJLjava/lang/Exception;)V
    .locals 3
    .param p1, "count"    # J
    .param p3, "value"    # J
    .param p5, "ex"    # Ljava/lang/Exception;

    .line 570
    iget-boolean v0, p0, Lorg/HdrHistogram/AbstractHistogram;->autoResize:Z

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0, p3, p4}, Lorg/HdrHistogram/AbstractHistogram;->resize(J)V

    .line 574
    invoke-virtual {p0, p3, p4}, Lorg/HdrHistogram/AbstractHistogram;->countsArrayIndex(J)I

    move-result v0

    .line 575
    .local v0, "countsIndex":I
    invoke-virtual {p0, v0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->addToCountAtIndex(IJ)V

    .line 576
    iget v1, p0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->highestEquivalentValue(J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/HdrHistogram/AbstractHistogram;->highestTrackableValue:J

    .line 577
    return-void

    .line 571
    .end local v0    # "countsIndex":I
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " outside of histogram covered range. Caused by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init(JJIDI)V
    .locals 17
    .param p1, "lowestDiscernibleValue"    # J
    .param p3, "highestTrackableValue"    # J
    .param p5, "numberOfSignificantValueDigits"    # I
    .param p6, "integerToDoubleValueConversionRatio"    # D
    .param p8, "normalizingIndexOffset"    # I

    .line 310
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p8

    iput-wide v1, v0, Lorg/HdrHistogram/AbstractHistogram;->lowestDiscernibleValue:J

    .line 311
    iput-wide v3, v0, Lorg/HdrHistogram/AbstractHistogram;->highestTrackableValue:J

    .line 312
    iput v5, v0, Lorg/HdrHistogram/AbstractHistogram;->numberOfSignificantValueDigits:I

    .line 313
    move-wide/from16 v7, p6

    iput-wide v7, v0, Lorg/HdrHistogram/AbstractHistogram;->integerToDoubleValueConversionRatio:D

    .line 314
    if-eqz v6, :cond_0

    .line 315
    invoke-virtual {v0, v6}, Lorg/HdrHistogram/AbstractHistogram;->setNormalizingIndexOffset(I)V

    .line 323
    :cond_0
    const-wide/16 v9, 0x2

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    int-to-double v13, v5

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-long v11, v11

    mul-long/2addr v11, v9

    .line 325
    .local v11, "largestValueWithSingleUnitResolution":J
    long-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v15

    div-double/2addr v9, v15

    double-to-int v9, v9

    iput v9, v0, Lorg/HdrHistogram/AbstractHistogram;->unitMagnitude:I

    .line 326
    const/4 v10, 0x1

    shl-int v9, v10, v9

    sub-int/2addr v9, v10

    int-to-long v13, v9

    iput-wide v13, v0, Lorg/HdrHistogram/AbstractHistogram;->unitMagnitudeMask:J

    .line 331
    long-to-double v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->log(D)D

    move-result-wide v15

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v9, v13

    .line 332
    .local v9, "subBucketCountMagnitude":I
    add-int/lit8 v13, v9, -0x1

    iput v13, v0, Lorg/HdrHistogram/AbstractHistogram;->subBucketHalfCountMagnitude:I

    .line 333
    shl-int v13, v10, v9

    iput v13, v0, Lorg/HdrHistogram/AbstractHistogram;->subBucketCount:I

    .line 334
    iget v13, v0, Lorg/HdrHistogram/AbstractHistogram;->subBucketCount:I

    div-int/lit8 v13, v13, 0x2

    iput v13, v0, Lorg/HdrHistogram/AbstractHistogram;->subBucketHalfCount:I

    .line 335
    iget v13, v0, Lorg/HdrHistogram/AbstractHistogram;->subBucketCount:I

    int-to-long v13, v13

    const-wide/16 v15, 0x1

    sub-long/2addr v13, v15

    iget v15, v0, Lorg/HdrHistogram/AbstractHistogram;->unitMagnitude:I

    shl-long/2addr v13, v15

    iput-wide v13, v0, Lorg/HdrHistogram/AbstractHistogram;->subBucketMask:J

    .line 337
    add-int/2addr v15, v9

    const/16 v13, 0x3e

    if-gt v15, v13, :cond_1

    .line 348
    invoke-virtual {v0, v3, v4}, Lorg/HdrHistogram/AbstractHistogram;->establishSize(J)V

    .line 352
    iget v13, v0, Lorg/HdrHistogram/AbstractHistogram;->unitMagnitude:I

    rsub-int/lit8 v13, v13, 0x40

    sub-int/2addr v13, v9

    iput v13, v0, Lorg/HdrHistogram/AbstractHistogram;->leadingZeroCountBase:I

    .line 354
    new-instance v13, Lorg/HdrHistogram/PercentileIterator;

    invoke-direct {v13, v0, v10}, Lorg/HdrHistogram/PercentileIterator;-><init>(Lorg/HdrHistogram/AbstractHistogram;I)V

    iput-object v13, v0, Lorg/HdrHistogram/AbstractHistogram;->percentileIterator:Lorg/HdrHistogram/PercentileIterator;

    .line 355
    new-instance v10, Lorg/HdrHistogram/RecordedValuesIterator;

    invoke-direct {v10, v0}, Lorg/HdrHistogram/RecordedValuesIterator;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    iput-object v10, v0, Lorg/HdrHistogram/AbstractHistogram;->recordedValuesIterator:Lorg/HdrHistogram/RecordedValuesIterator;

    .line 356
    return-void

    .line 343
    :cond_1
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v13, "Cannot represent numberOfSignificantValueDigits worth of values beyond lowestDiscernibleValue"

    invoke-direct {v10, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method static numberOfSubbuckets(I)I
    .locals 8
    .param p0, "numberOfSignificantValueDigits"    # I

    .line 2485
    int-to-double v0, p0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    .line 2490
    .local v0, "largestValueWithSingleUnitResolution":J
    long-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 2491
    .local v2, "subBucketCountMagnitude":I
    int-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    .line 2492
    .local v3, "subBucketCount":I
    return v3
.end method

.method private oneAtATimeHashStep(II)I
    .locals 1
    .param p1, "h"    # I
    .param p2, "v"    # I

    .line 1117
    add-int/2addr p1, p2

    .line 1118
    shl-int/lit8 v0, p1, 0xa

    add-int/2addr p1, v0

    .line 1119
    shr-int/lit8 v0, p1, 0x6

    xor-int/2addr p1, v0

    .line 1120
    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 32
    .param p1, "o"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1876
    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v10

    .line 1877
    .local v10, "lowestDiscernibleValue":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v12

    .line 1878
    .local v12, "highestTrackableValue":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v14

    .line 1879
    .local v14, "numberOfSignificantValueDigits":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v15

    .line 1880
    .local v15, "normalizingIndexOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v16

    .line 1881
    .local v16, "integerToDoubleValueConversionRatio":D
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v6

    .line 1882
    .local v6, "indicatedTotalCount":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v3

    .line 1883
    .local v3, "indicatedMaxValue":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v1

    .line 1884
    .local v1, "indicatedMinNonZeroValue":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v8

    .line 1885
    .local v8, "indicatedStartTimeStampMsec":J
    move-wide/from16 v18, v8

    .end local v8    # "indicatedStartTimeStampMsec":J
    .local v18, "indicatedStartTimeStampMsec":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v8

    .line 1886
    .local v8, "indicatedEndTimeStampMsec":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    .line 1887
    .local v5, "indicatedAutoResize":Z
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1889
    .local v0, "indicatedwordSizeInBytes":I
    move-wide/from16 v20, v8

    move v9, v0

    .end local v0    # "indicatedwordSizeInBytes":I
    .end local v8    # "indicatedEndTimeStampMsec":J
    .local v9, "indicatedwordSizeInBytes":I
    .local v20, "indicatedEndTimeStampMsec":J
    move-object/from16 v0, p0

    move-wide/from16 v22, v1

    .end local v1    # "indicatedMinNonZeroValue":J
    .local v22, "indicatedMinNonZeroValue":J
    move-wide v1, v10

    move-wide/from16 v24, v10

    move-wide v10, v3

    .end local v3    # "indicatedMaxValue":J
    .local v10, "indicatedMaxValue":J
    .local v24, "lowestDiscernibleValue":J
    move-wide v3, v12

    move v8, v5

    .end local v5    # "indicatedAutoResize":Z
    .local v8, "indicatedAutoResize":Z
    move v5, v14

    move-wide/from16 v26, v12

    move-wide v12, v6

    .end local v6    # "indicatedTotalCount":J
    .local v12, "indicatedTotalCount":J
    .local v26, "highestTrackableValue":J
    move-wide/from16 v6, v16

    move-wide/from16 v28, v18

    move-wide/from16 v30, v20

    move/from16 v18, v14

    move v14, v8

    .end local v8    # "indicatedAutoResize":Z
    .end local v20    # "indicatedEndTimeStampMsec":J
    .local v14, "indicatedAutoResize":Z
    .local v18, "numberOfSignificantValueDigits":I
    .local v28, "indicatedStartTimeStampMsec":J
    .local v30, "indicatedEndTimeStampMsec":J
    move v8, v15

    invoke-direct/range {v0 .. v8}, Lorg/HdrHistogram/AbstractHistogram;->init(JJIDI)V

    .line 1892
    invoke-virtual {v0, v12, v13}, Lorg/HdrHistogram/AbstractHistogram;->setTotalCount(J)V

    .line 1893
    iput-wide v10, v0, Lorg/HdrHistogram/AbstractHistogram;->maxValue:J

    .line 1894
    move-wide/from16 v1, v22

    .end local v22    # "indicatedMinNonZeroValue":J
    .restart local v1    # "indicatedMinNonZeroValue":J
    iput-wide v1, v0, Lorg/HdrHistogram/AbstractHistogram;->minNonZeroValue:J

    .line 1895
    move-wide/from16 v3, v28

    .end local v28    # "indicatedStartTimeStampMsec":J
    .local v3, "indicatedStartTimeStampMsec":J
    iput-wide v3, v0, Lorg/HdrHistogram/AbstractHistogram;->startTimeStampMsec:J

    .line 1896
    move-wide/from16 v5, v30

    .end local v30    # "indicatedEndTimeStampMsec":J
    .local v5, "indicatedEndTimeStampMsec":J
    iput-wide v5, v0, Lorg/HdrHistogram/AbstractHistogram;->endTimeStampMsec:J

    .line 1897
    iput-boolean v14, v0, Lorg/HdrHistogram/AbstractHistogram;->autoResize:Z

    .line 1898
    iput v9, v0, Lorg/HdrHistogram/AbstractHistogram;->wordSizeInBytes:I

    .line 1899
    return-void
.end method

.method private recordCountAtValue(JJ)V
    .locals 7
    .param p1, "count"    # J
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 548
    invoke-virtual {p0, p3, p4}, Lorg/HdrHistogram/AbstractHistogram;->countsArrayIndex(J)I

    move-result v0

    .line 550
    .local v0, "countsIndex":I
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->addToCountAtIndex(IJ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    goto :goto_0

    .line 551
    :catch_0
    move-exception v6

    .line 552
    .local v6, "ex":Ljava/lang/IndexOutOfBoundsException;
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/HdrHistogram/AbstractHistogram;->handleRecordException(JJLjava/lang/Exception;)V

    .line 554
    .end local v6    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    invoke-virtual {p0, p3, p4}, Lorg/HdrHistogram/AbstractHistogram;->updateMinAndMax(J)V

    .line 555
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->addToTotalCount(J)V

    .line 556
    return-void
.end method

.method private recordSingleValue(J)V
    .locals 7
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 559
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->countsArrayIndex(J)I

    move-result v0

    .line 561
    .local v0, "countsIndex":I
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/HdrHistogram/AbstractHistogram;->incrementCountAtIndex(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    goto :goto_0

    .line 562
    :catch_0
    move-exception v6

    .line 563
    .local v6, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-wide/16 v2, 0x1

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/HdrHistogram/AbstractHistogram;->handleRecordException(JJLjava/lang/Exception;)V

    .line 565
    .end local v6    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->updateMinAndMax(J)V

    .line 566
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->incrementTotalCount()V

    .line 567
    return-void
.end method

.method private recordSingleValueWithExpectedInterval(JJ)V
    .locals 3
    .param p1, "value"    # J
    .param p3, "expectedIntervalBetweenValueSamples"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 595
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->recordSingleValue(J)V

    .line 596
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 597
    return-void

    .line 598
    :cond_0
    sub-long v0, p1, p3

    .line 599
    .local v0, "missingValue":J
    :goto_0
    cmp-long v2, v0, p3

    if-ltz v2, :cond_1

    .line 601
    invoke-direct {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->recordSingleValue(J)V

    .line 600
    sub-long/2addr v0, p3

    goto :goto_0

    .line 603
    .end local v0    # "missingValue":J
    :cond_1
    return-void
.end method

.method private recordValueWithCountAndExpectedInterval(JJJ)V
    .locals 3
    .param p1, "value"    # J
    .param p3, "count"    # J
    .param p5, "expectedIntervalBetweenValueSamples"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 582
    invoke-direct {p0, p3, p4, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->recordCountAtValue(JJ)V

    .line 583
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_0

    .line 584
    return-void

    .line 585
    :cond_0
    sub-long v0, p1, p5

    .line 586
    .local v0, "missingValue":J
    :goto_0
    cmp-long v2, v0, p5

    if-ltz v2, :cond_1

    .line 588
    invoke-direct {p0, p3, p4, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->recordCountAtValue(JJ)V

    .line 587
    sub-long/2addr v0, p5

    goto :goto_0

    .line 590
    .end local v0    # "missingValue":J
    :cond_1
    return-void
.end method

.method private recordedValuesToString()Ljava/lang/String;
    .locals 7

    .line 2321
    const-string v0, ""

    .line 2323
    .local v0, "output":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    if-ge v1, v2, :cond_1

    .line 2324
    invoke-virtual {p0, v1}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[%d] : %d\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v1}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 2323
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2328
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 2329
    :catch_0
    move-exception v1

    .line 2330
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!!! Exception thown in value iteration...\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2332
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0
.end method

.method private resetMaxValue(J)V
    .locals 2
    .param p1, "maxValue"    # J

    .line 206
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->unitMagnitudeMask:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->maxValue:J

    .line 207
    return-void
.end method

.method private resetMinNonZeroValue(J)V
    .locals 4
    .param p1, "minNonZeroValue"    # J

    .line 226
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->unitMagnitudeMask:J

    not-long v0, v0

    and-long/2addr v0, p1

    .line 227
    .local v0, "internalValue":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    move-wide v2, p1

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    iput-wide v2, p0, Lorg/HdrHistogram/AbstractHistogram;->minNonZeroValue:J

    .line 229
    return-void
.end method

.method private shiftLowestHalfBucketContentsLeft(II)V
    .locals 10
    .param p1, "shiftAmount"    # I
    .param p2, "preShiftZeroIndex"    # I

    .line 928
    iget v0, p0, Lorg/HdrHistogram/AbstractHistogram;->subBucketHalfCountMagnitude:I

    shr-int v0, p1, v0

    .line 945
    .local v0, "numberOfBinaryOrdersOfMagnitude":I
    const/4 v1, 0x1

    .local v1, "fromIndex":I
    :goto_0
    iget v2, p0, Lorg/HdrHistogram/AbstractHistogram;->subBucketHalfCount:I

    if-ge v1, v2, :cond_0

    .line 946
    invoke-virtual {p0, v1}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(I)J

    move-result-wide v2

    shl-long/2addr v2, v0

    .line 947
    .local v2, "toValue":J
    invoke-virtual {p0, v2, v3}, Lorg/HdrHistogram/AbstractHistogram;->countsArrayIndex(J)I

    move-result v4

    .line 948
    .local v4, "toIndex":I
    add-int v5, v1, p2

    invoke-virtual {p0, v5}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtNormalizedIndex(I)J

    move-result-wide v5

    .line 949
    .local v5, "countAtFromIndex":J
    invoke-virtual {p0, v4, v5, v6}, Lorg/HdrHistogram/AbstractHistogram;->setCountAtIndex(IJ)V

    .line 950
    add-int v7, v1, p2

    const-wide/16 v8, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lorg/HdrHistogram/AbstractHistogram;->setCountAtNormalizedIndex(IJ)V

    .line 945
    .end local v2    # "toValue":J
    .end local v4    # "toIndex":I
    .end local v5    # "countAtFromIndex":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 957
    .end local v1    # "fromIndex":I
    :cond_0
    return-void
.end method

.method private updateMinNonZeroValue(J)V
    .locals 8
    .param p1, "value"    # J

    .line 215
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->unitMagnitudeMask:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 216
    return-void

    .line 218
    :cond_0
    not-long v0, v0

    and-long/2addr v0, p1

    .line 220
    .local v0, "internalValue":J
    :goto_0
    iget-wide v2, p0, Lorg/HdrHistogram/AbstractHistogram;->minNonZeroValue:J

    move-wide v4, v2

    .local v4, "sampledMinNonZeroValue":J
    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 221
    sget-object v2, Lorg/HdrHistogram/AbstractHistogram;->minNonZeroValueUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v3, p0

    move-wide v6, v0

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    goto :goto_0

    .line 223
    :cond_1
    return-void
.end method

.method private updatedMaxValue(J)V
    .locals 8
    .param p1, "value"    # J

    .line 198
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->unitMagnitudeMask:J

    or-long/2addr v0, p1

    .line 200
    .local v0, "internalValue":J
    :goto_0
    iget-wide v2, p0, Lorg/HdrHistogram/AbstractHistogram;->maxValue:J

    move-wide v4, v2

    .local v4, "sampledMaxValue":J
    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 201
    sget-object v2, Lorg/HdrHistogram/AbstractHistogram;->maxValueUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v3, p0

    move-wide v6, v0

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method private valueFromIndex(II)J
    .locals 3
    .param p1, "bucketIndex"    # I
    .param p2, "subBucketIndex"    # I

    .line 2471
    int-to-long v0, p2

    iget v2, p0, Lorg/HdrHistogram/AbstractHistogram;->unitMagnitude:I

    add-int/2addr v2, p1

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "o"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1857
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->lowestDiscernibleValue:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1858
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->highestTrackableValue:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1859
    iget v0, p0, Lorg/HdrHistogram/AbstractHistogram;->numberOfSignificantValueDigits:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1860
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getNormalizingIndexOffset()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1861
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->integerToDoubleValueConversionRatio:D

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 1862
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1866
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->maxValue:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1867
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->minNonZeroValue:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1868
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->startTimeStampMsec:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1869
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->endTimeStampMsec:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1870
    iget-boolean v0, p0, Lorg/HdrHistogram/AbstractHistogram;->autoResize:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1871
    iget v0, p0, Lorg/HdrHistogram/AbstractHistogram;->wordSizeInBytes:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1872
    return-void
.end method


# virtual methods
.method abstract _getEstimatedFootprintInBytes()I
.end method

.method public add(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 10
    .param p1, "otherHistogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 726
    iget v0, p0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->highestEquivalentValue(J)J

    move-result-wide v0

    .line 727
    .local v0, "highestRecordableValue":J
    invoke-virtual {p1}, Lorg/HdrHistogram/AbstractHistogram;->getMaxValue()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 728
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->isAutoResize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 732
    invoke-virtual {p1}, Lorg/HdrHistogram/AbstractHistogram;->getMaxValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/HdrHistogram/AbstractHistogram;->resize(J)V

    goto :goto_0

    .line 729
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v3, "The other histogram includes values that do not fit in this histogram\'s range."

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 734
    :cond_1
    :goto_0
    iget v2, p0, Lorg/HdrHistogram/AbstractHistogram;->bucketCount:I

    iget v3, p1, Lorg/HdrHistogram/AbstractHistogram;->bucketCount:I

    const-wide/16 v4, 0x0

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/HdrHistogram/AbstractHistogram;->subBucketCount:I

    iget v3, p1, Lorg/HdrHistogram/AbstractHistogram;->subBucketCount:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/HdrHistogram/AbstractHistogram;->unitMagnitude:I

    iget v3, p1, Lorg/HdrHistogram/AbstractHistogram;->unitMagnitude:I

    if-ne v2, v3, :cond_4

    .line 737
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getNormalizingIndexOffset()I

    move-result v2

    invoke-virtual {p1}, Lorg/HdrHistogram/AbstractHistogram;->getNormalizingIndexOffset()I

    move-result v3

    if-ne v2, v3, :cond_4

    instance-of v2, p1, Lorg/HdrHistogram/ConcurrentHistogram;

    if-nez v2, :cond_4

    .line 740
    const-wide/16 v2, 0x0

    .line 741
    .local v2, "observedOtherTotalCount":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget v7, p1, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    if-ge v6, v7, :cond_3

    .line 742
    invoke-virtual {p1, v6}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v7

    .line 743
    .local v7, "otherCount":J
    cmp-long v9, v7, v4

    if-lez v9, :cond_2

    .line 744
    invoke-virtual {p0, v6, v7, v8}, Lorg/HdrHistogram/AbstractHistogram;->addToCountAtIndex(IJ)V

    .line 745
    add-long/2addr v2, v7

    .line 741
    .end local v7    # "otherCount":J
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 748
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lorg/HdrHistogram/AbstractHistogram;->setTotalCount(J)V

    .line 749
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getMaxValue()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/HdrHistogram/AbstractHistogram;->getMaxValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lorg/HdrHistogram/AbstractHistogram;->updatedMaxValue(J)V

    .line 750
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getMinNonZeroValue()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/HdrHistogram/AbstractHistogram;->getMinNonZeroValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lorg/HdrHistogram/AbstractHistogram;->updateMinNonZeroValue(J)V

    .line 751
    .end local v2    # "observedOtherTotalCount":J
    goto :goto_3

    .line 757
    :cond_4
    invoke-virtual {p1}, Lorg/HdrHistogram/AbstractHistogram;->getMaxValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/HdrHistogram/AbstractHistogram;->countsArrayIndex(J)I

    move-result v2

    .line 758
    .local v2, "otherMaxIndex":I
    invoke-virtual {p1, v2}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v6

    .line 759
    .local v6, "otherCount":J
    invoke-virtual {p1, v2}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(I)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9, v6, v7}, Lorg/HdrHistogram/AbstractHistogram;->recordValueWithCount(JJ)V

    .line 762
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_6

    .line 763
    invoke-virtual {p1, v3}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v6

    .line 764
    cmp-long v8, v6, v4

    if-lez v8, :cond_5

    .line 765
    invoke-virtual {p1, v3}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(I)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9, v6, v7}, Lorg/HdrHistogram/AbstractHistogram;->recordValueWithCount(JJ)V

    .line 762
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 769
    .end local v2    # "otherMaxIndex":I
    .end local v3    # "i":I
    .end local v6    # "otherCount":J
    :cond_6
    :goto_3
    iget-wide v2, p0, Lorg/HdrHistogram/AbstractHistogram;->startTimeStampMsec:J

    iget-wide v4, p1, Lorg/HdrHistogram/AbstractHistogram;->startTimeStampMsec:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/HdrHistogram/AbstractHistogram;->setStartTimeStamp(J)V

    .line 770
    iget-wide v2, p0, Lorg/HdrHistogram/AbstractHistogram;->endTimeStampMsec:J

    iget-wide v4, p1, Lorg/HdrHistogram/AbstractHistogram;->endTimeStampMsec:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/HdrHistogram/AbstractHistogram;->setEndTimeStamp(J)V

    .line 771
    return-void
.end method

.method abstract addToCountAtIndex(IJ)V
.end method

.method abstract addToTotalCount(J)V
.end method

.method public addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/AbstractHistogram;J)V
    .locals 9
    .param p1, "otherHistogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "expectedIntervalBetweenValueSamples"    # J

    .line 831
    move-object v0, p0

    .line 833
    .local v0, "toHistogram":Lorg/HdrHistogram/AbstractHistogram;
    invoke-virtual {p1}, Lorg/HdrHistogram/AbstractHistogram;->recordedValues()Lorg/HdrHistogram/AbstractHistogram$RecordedValues;

    move-result-object v1

    invoke-virtual {v1}, Lorg/HdrHistogram/AbstractHistogram$RecordedValues;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/HdrHistogram/HistogramIterationValue;

    .line 834
    .local v8, "v":Lorg/HdrHistogram/HistogramIterationValue;
    invoke-virtual {v8}, Lorg/HdrHistogram/HistogramIterationValue;->getValueIteratedTo()J

    move-result-wide v1

    .line 835
    invoke-virtual {v8}, Lorg/HdrHistogram/HistogramIterationValue;->getCountAtValueIteratedTo()J

    move-result-wide v3

    .line 834
    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/HdrHistogram/AbstractHistogram;->recordValueWithCountAndExpectedInterval(JJJ)V

    .line 836
    .end local v8    # "v":Lorg/HdrHistogram/HistogramIterationValue;
    goto :goto_0

    .line 837
    :cond_0
    return-void
.end method

.method public allValues()Lorg/HdrHistogram/AbstractHistogram$AllValues;
    .locals 2

    .line 1591
    new-instance v0, Lorg/HdrHistogram/AbstractHistogram$AllValues;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lorg/HdrHistogram/AbstractHistogram$AllValues;-><init>(Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram$1;)V

    return-object v0
.end method

.method abstract clearCounts()V
.end method

.method public abstract copy()Lorg/HdrHistogram/AbstractHistogram;
.end method

.method public abstract copyCorrectedForCoordinatedOmission(J)Lorg/HdrHistogram/AbstractHistogram;
.end method

.method public copyInto(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 2
    .param p1, "targetHistogram"    # Lorg/HdrHistogram/AbstractHistogram;

    .line 680
    invoke-virtual {p1}, Lorg/HdrHistogram/AbstractHistogram;->reset()V

    .line 681
    invoke-virtual {p1, p0}, Lorg/HdrHistogram/AbstractHistogram;->add(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 682
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->startTimeStampMsec:J

    invoke-virtual {p1, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->setStartTimeStamp(J)V

    .line 683
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->endTimeStampMsec:J

    invoke-virtual {p1, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->setEndTimeStamp(J)V

    .line 684
    return-void
.end method

.method public copyIntoCorrectedForCoordinatedOmission(Lorg/HdrHistogram/AbstractHistogram;J)V
    .locals 2
    .param p1, "targetHistogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .param p2, "expectedIntervalBetweenValueSamples"    # J

    .line 697
    invoke-virtual {p1}, Lorg/HdrHistogram/AbstractHistogram;->reset()V

    .line 698
    invoke-virtual {p1, p0, p2, p3}, Lorg/HdrHistogram/AbstractHistogram;->addWhileCorrectingForCoordinatedOmission(Lorg/HdrHistogram/AbstractHistogram;J)V

    .line 699
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->startTimeStampMsec:J

    invoke-virtual {p1, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->setStartTimeStamp(J)V

    .line 700
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->endTimeStampMsec:J

    invoke-virtual {p1, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->setEndTimeStamp(J)V

    .line 701
    return-void
.end method

.method countsArrayIndex(J)I
    .locals 3
    .param p1, "value"    # J

    .line 2403
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2406
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->getBucketIndex(J)I

    move-result v0

    .line 2407
    .local v0, "bucketIndex":I
    invoke-virtual {p0, p1, p2, v0}, Lorg/HdrHistogram/AbstractHistogram;->getSubBucketIndex(JI)I

    move-result v1

    .line 2408
    .local v1, "subBucketIndex":I
    invoke-direct {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->countsArrayIndex(II)I

    move-result v2

    return v2

    .line 2404
    .end local v0    # "bucketIndex":I
    .end local v1    # "subBucketIndex":I
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Histogram recorded value cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final determineArrayLengthNeeded(J)I
    .locals 4
    .param p1, "highestTrackableValue"    # J

    .line 384
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->lowestDiscernibleValue:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 389
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->getBucketsNeededToCoverValue(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/AbstractHistogram;->getLengthForNumberOfBuckets(I)I

    move-result v0

    .line 390
    .local v0, "countsArrayLength":I
    return v0

    .line 385
    .end local v0    # "countsArrayLength":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "highestTrackableValue ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") cannot be < (2 * lowestDiscernibleValue)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized encodeIntoByteBuffer(Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    monitor-enter p0

    .line 1985
    :try_start_0
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getMaxValue()J

    move-result-wide v0

    .line 1986
    .local v0, "maxValue":J
    invoke-virtual {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->countsArrayIndex(J)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1987
    .local v2, "relevantLength":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v2}, Lorg/HdrHistogram/AbstractHistogram;->getNeededByteBufferCapacity(I)I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 1991
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 1992
    .local v3, "initialPosition":I
    invoke-direct {p0}, Lorg/HdrHistogram/AbstractHistogram;->getEncodingCookie()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1993
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1994
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getNormalizingIndexOffset()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1995
    iget v4, p0, Lorg/HdrHistogram/AbstractHistogram;->numberOfSignificantValueDigits:I

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1996
    iget-wide v4, p0, Lorg/HdrHistogram/AbstractHistogram;->lowestDiscernibleValue:J

    invoke-virtual {p1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1997
    iget-wide v4, p0, Lorg/HdrHistogram/AbstractHistogram;->highestTrackableValue:J

    invoke-virtual {p1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1998
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getIntegerToDoubleValueConversionRatio()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 2000
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 2001
    .local v4, "payloadStartPosition":I
    invoke-virtual {p0, p1}, Lorg/HdrHistogram/AbstractHistogram;->fillBufferFromCountsArray(Ljava/nio/ByteBuffer;)V

    .line 2002
    add-int/lit8 v5, v3, 0x4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2005
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v5, v3

    monitor-exit p0

    return v5

    .line 1988
    .end local v3    # "initialPosition":I
    .end local v4    # "payloadStartPosition":I
    .end local p0    # "this":Lorg/HdrHistogram/AbstractHistogram;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buffer does not have capacity for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1989
    invoke-virtual {p0, v2}, Lorg/HdrHistogram/AbstractHistogram;->getNeededByteBufferCapacity(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1984
    .end local v0    # "maxValue":J
    .end local v2    # "relevantLength":I
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public encodeIntoCompressedByteBuffer(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "targetBuffer"    # Ljava/nio/ByteBuffer;

    .line 2071
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/HdrHistogram/AbstractHistogram;->encodeIntoCompressedByteBuffer(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized encodeIntoCompressedByteBuffer(Ljava/nio/ByteBuffer;I)I
    .locals 9
    .param p1, "targetBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "compressionLevel"    # I

    monitor-enter p0

    .line 2018
    :try_start_0
    iget v0, p0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/AbstractHistogram;->getNeededByteBufferCapacity(I)I

    move-result v0

    .line 2019
    .local v0, "neededCapacity":I
    iget-object v1, p0, Lorg/HdrHistogram/AbstractHistogram;->intermediateUncompressedByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/HdrHistogram/AbstractHistogram;->intermediateUncompressedByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 2020
    .end local p0    # "this":Lorg/HdrHistogram/AbstractHistogram;
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/HdrHistogram/AbstractHistogram;->intermediateUncompressedByteBuffer:Ljava/nio/ByteBuffer;

    .line 2022
    :cond_1
    iget-object v1, p0, Lorg/HdrHistogram/AbstractHistogram;->intermediateUncompressedByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2023
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 2025
    .local v1, "initialTargetPosition":I
    iget-object v2, p0, Lorg/HdrHistogram/AbstractHistogram;->intermediateUncompressedByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2}, Lorg/HdrHistogram/AbstractHistogram;->encodeIntoByteBuffer(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 2026
    .local v2, "uncompressedLength":I
    invoke-direct {p0}, Lorg/HdrHistogram/AbstractHistogram;->getCompressedEncodingCookie()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2028
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2030
    new-instance v4, Ljava/util/zip/Deflater;

    invoke-direct {v4, p2}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 2031
    .local v4, "compressor":Ljava/util/zip/Deflater;
    iget-object v5, p0, Lorg/HdrHistogram/AbstractHistogram;->intermediateUncompressedByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v3, v2}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 2032
    invoke-virtual {v4}, Ljava/util/zip/Deflater;->finish()V

    .line 2036
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2037
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .local v3, "targetArray":[B
    goto :goto_0

    .line 2039
    .end local v3    # "targetArray":[B
    :cond_2
    iget-object v3, p0, Lorg/HdrHistogram/AbstractHistogram;->intermediateUncompressedByteArray:[B

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/HdrHistogram/AbstractHistogram;->intermediateUncompressedByteArray:[B

    array-length v3, v3

    .line 2040
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 2041
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/HdrHistogram/AbstractHistogram;->intermediateUncompressedByteArray:[B

    .line 2043
    :cond_4
    iget-object v3, p0, Lorg/HdrHistogram/AbstractHistogram;->intermediateUncompressedByteArray:[B

    .line 2046
    .restart local v3    # "targetArray":[B
    :goto_0
    add-int/lit8 v5, v1, 0x8

    .line 2047
    .local v5, "compressedTargetOffset":I
    array-length v6, v3

    sub-int/2addr v6, v5

    .line 2048
    invoke-virtual {v4, v3, v5, v6}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v6

    .line 2053
    .local v6, "compressedDataLength":I
    invoke-virtual {v4}, Ljava/util/zip/Deflater;->end()V

    .line 2055
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2056
    invoke-virtual {p1, v3, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 2059
    :cond_5
    add-int/lit8 v7, v1, 0x4

    invoke-virtual {p1, v7, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2060
    add-int/lit8 v7, v6, 0x8

    .line 2061
    .local v7, "bytesWritten":I
    add-int v8, v1, v7

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2062
    monitor-exit p0

    return v7

    .line 2017
    .end local v0    # "neededCapacity":I
    .end local v1    # "initialTargetPosition":I
    .end local v2    # "uncompressedLength":I
    .end local v3    # "targetArray":[B
    .end local v4    # "compressor":Ljava/util/zip/Deflater;
    .end local v5    # "compressedTargetOffset":I
    .end local v6    # "compressedDataLength":I
    .end local v7    # "bytesWritten":I
    .end local p1    # "targetBuffer":Ljava/nio/ByteBuffer;
    .end local p2    # "compressionLevel":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "other"    # Ljava/lang/Object;

    .line 1057
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1058
    return v0

    .line 1060
    :cond_0
    instance-of v1, p1, Lorg/HdrHistogram/AbstractHistogram;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1061
    return v2

    .line 1063
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/HdrHistogram/AbstractHistogram;

    .line 1064
    .local v1, "that":Lorg/HdrHistogram/AbstractHistogram;
    iget-wide v3, p0, Lorg/HdrHistogram/AbstractHistogram;->lowestDiscernibleValue:J

    iget-wide v5, v1, Lorg/HdrHistogram/AbstractHistogram;->lowestDiscernibleValue:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    iget v3, p0, Lorg/HdrHistogram/AbstractHistogram;->numberOfSignificantValueDigits:I

    iget v4, v1, Lorg/HdrHistogram/AbstractHistogram;->numberOfSignificantValueDigits:I

    if-ne v3, v4, :cond_b

    iget-wide v3, p0, Lorg/HdrHistogram/AbstractHistogram;->integerToDoubleValueConversionRatio:D

    iget-wide v5, v1, Lorg/HdrHistogram/AbstractHistogram;->integerToDoubleValueConversionRatio:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_2

    goto :goto_3

    .line 1069
    :cond_2
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v3

    invoke-virtual {v1}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 1070
    return v2

    .line 1072
    :cond_3
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getMaxValue()J

    move-result-wide v3

    invoke-virtual {v1}, Lorg/HdrHistogram/AbstractHistogram;->getMaxValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 1073
    return v2

    .line 1075
    :cond_4
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getMinNonZeroValue()J

    move-result-wide v3

    invoke-virtual {v1}, Lorg/HdrHistogram/AbstractHistogram;->getMinNonZeroValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 1076
    return v2

    .line 1080
    :cond_5
    iget v3, p0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    iget v4, v1, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    if-ne v3, v4, :cond_8

    .line 1081
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    if-ge v3, v4, :cond_7

    .line 1082
    invoke-virtual {p0, v3}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v4

    invoke-virtual {v1, v3}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    .line 1083
    return v2

    .line 1081
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_7
    goto :goto_2

    .line 1091
    :cond_8
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->recordedValues()Lorg/HdrHistogram/AbstractHistogram$RecordedValues;

    move-result-object v3

    invoke-virtual {v3}, Lorg/HdrHistogram/AbstractHistogram$RecordedValues;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/HdrHistogram/HistogramIterationValue;

    .line 1092
    .local v4, "value":Lorg/HdrHistogram/HistogramIterationValue;
    invoke-virtual {v4}, Lorg/HdrHistogram/HistogramIterationValue;->getCountAtValueIteratedTo()J

    move-result-wide v5

    .line 1093
    .local v5, "countAtValueIteratedTo":J
    invoke-virtual {v4}, Lorg/HdrHistogram/HistogramIterationValue;->getValueIteratedTo()J

    move-result-wide v7

    .line 1094
    .local v7, "valueIteratedTo":J
    invoke-virtual {v1, v7, v8}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtValue(J)J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-eqz v9, :cond_9

    .line 1095
    return v2

    .line 1097
    .end local v4    # "value":Lorg/HdrHistogram/HistogramIterationValue;
    .end local v5    # "countAtValueIteratedTo":J
    .end local v7    # "valueIteratedTo":J
    :cond_9
    goto :goto_1

    .line 1099
    :cond_a
    :goto_2
    return v0

    .line 1067
    :cond_b
    :goto_3
    return v2
.end method

.method establishInternalTackingValues()V
    .locals 1

    .line 2344
    iget v0, p0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/AbstractHistogram;->establishInternalTackingValues(I)V

    .line 2345
    return-void
.end method

.method establishInternalTackingValues(I)V
    .locals 11
    .param p1, "lengthToCover"    # I

    .line 2348
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->resetMaxValue(J)V

    .line 2349
    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {p0, v2, v3}, Lorg/HdrHistogram/AbstractHistogram;->resetMinNonZeroValue(J)V

    .line 2350
    const/4 v2, -0x1

    .line 2351
    .local v2, "maxIndex":I
    const/4 v3, -0x1

    .line 2352
    .local v3, "minNonZeroIndex":I
    const-wide/16 v4, 0x0

    .line 2353
    .local v4, "observedTotalCount":J
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 2355
    invoke-virtual {p0, v6}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v7

    move-wide v9, v7

    .local v9, "countAtIndex":J
    cmp-long v7, v7, v0

    if-lez v7, :cond_0

    .line 2356
    add-long/2addr v4, v9

    .line 2357
    move v2, v6

    .line 2358
    const/4 v7, -0x1

    if-ne v3, v7, :cond_0

    if-eqz v6, :cond_0

    .line 2359
    move v3, v6

    .line 2353
    .end local v9    # "countAtIndex":J
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2363
    .end local v6    # "index":I
    :cond_1
    if-ltz v2, :cond_2

    .line 2364
    invoke-virtual {p0, v2}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->highestEquivalentValue(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->updatedMaxValue(J)V

    .line 2366
    :cond_2
    if-ltz v3, :cond_3

    .line 2367
    invoke-virtual {p0, v3}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->updateMinNonZeroValue(J)V

    .line 2369
    :cond_3
    invoke-virtual {p0, v4, v5}, Lorg/HdrHistogram/AbstractHistogram;->setTotalCount(J)V

    .line 2370
    return-void
.end method

.method final establishSize(J)V
    .locals 1
    .param p1, "newHighestTrackableValue"    # J

    .line 376
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->determineArrayLengthNeeded(J)I

    move-result v0

    iput v0, p0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    .line 378
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->getBucketsNeededToCoverValue(J)I

    move-result v0

    iput v0, p0, Lorg/HdrHistogram/AbstractHistogram;->bucketCount:I

    .line 380
    iput-wide p1, p0, Lorg/HdrHistogram/AbstractHistogram;->highestTrackableValue:J

    .line 381
    return-void
.end method

.method declared-synchronized fillBufferFromCountsArray(Ljava/nio/ByteBuffer;)V
    .locals 13
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    monitor-enter p0

    .line 2233
    :try_start_0
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->maxValue:J

    invoke-virtual {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->countsArrayIndex(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2234
    .local v0, "countsLimit":I
    const/4 v1, 0x0

    .line 2236
    .local v1, "srcIndex":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 2239
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "srcIndex":I
    .local v2, "srcIndex":I
    invoke-virtual {p0, v1}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v3

    .line 2240
    .local v3, "count":J
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_3

    .line 2247
    const-wide/16 v7, 0x0

    .line 2248
    .local v7, "zerosCount":J
    cmp-long v1, v3, v5

    const-wide/16 v9, 0x1

    if-nez v1, :cond_1

    .line 2249
    const-wide/16 v7, 0x1

    .line 2250
    :goto_1
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v11

    cmp-long v1, v11, v5

    if-nez v1, :cond_0

    .line 2251
    add-long/2addr v7, v9

    .line 2252
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2255
    .end local p0    # "this":Lorg/HdrHistogram/AbstractHistogram;
    :cond_0
    move v1, v2

    goto :goto_2

    .line 2248
    :cond_1
    move v1, v2

    .line 2255
    .end local v2    # "srcIndex":I
    .restart local v1    # "srcIndex":I
    :goto_2
    cmp-long v2, v7, v9

    if-lez v2, :cond_2

    .line 2256
    neg-long v5, v7

    invoke-static {p1, v5, v6}, Lorg/HdrHistogram/ZigZagEncoding;->putLong(Ljava/nio/ByteBuffer;J)V

    goto :goto_3

    .line 2258
    :cond_2
    invoke-static {p1, v3, v4}, Lorg/HdrHistogram/ZigZagEncoding;->putLong(Ljava/nio/ByteBuffer;J)V

    .line 2260
    .end local v3    # "count":J
    .end local v7    # "zerosCount":J
    :goto_3
    goto :goto_0

    .line 2241
    .end local v1    # "srcIndex":I
    .restart local v2    # "srcIndex":I
    .restart local v3    # "count":J
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot encode histogram containing negative counts ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", corresponding the value range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2243
    invoke-virtual {p0, v2}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(I)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lorg/HdrHistogram/AbstractHistogram;->lowestEquivalentValue(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2244
    invoke-virtual {p0, v2}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(I)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lorg/HdrHistogram/AbstractHistogram;->nextNonEquivalentValue(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2261
    .end local v2    # "srcIndex":I
    .end local v3    # "count":J
    .restart local v1    # "srcIndex":I
    :cond_4
    monitor-exit p0

    return-void

    .line 2232
    .end local v0    # "countsLimit":I
    .end local v1    # "srcIndex":I
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getBucketIndex(J)I
    .locals 3
    .param p1, "value"    # J

    .line 2432
    iget v0, p0, Lorg/HdrHistogram/AbstractHistogram;->leadingZeroCountBase:I

    iget-wide v1, p0, Lorg/HdrHistogram/AbstractHistogram;->subBucketMask:J

    or-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getBucketsNeededToCoverValue(J)I
    .locals 5
    .param p1, "value"    # J

    .line 2375
    iget v0, p0, Lorg/HdrHistogram/AbstractHistogram;->subBucketCount:I

    int-to-long v0, v0

    iget v2, p0, Lorg/HdrHistogram/AbstractHistogram;->unitMagnitude:I

    shl-long/2addr v0, v2

    .line 2378
    .local v0, "smallestUntrackableValue":J
    const/4 v2, 0x1

    .line 2379
    .local v2, "bucketsNeeded":I
    :goto_0
    cmp-long v3, v0, p1

    if-gtz v3, :cond_1

    .line 2380
    const-wide v3, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 2383
    add-int/lit8 v3, v2, 0x1

    return v3

    .line 2385
    :cond_0
    const/4 v3, 0x1

    shl-long/2addr v0, v3

    .line 2386
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2388
    :cond_1
    return v2
.end method

.method abstract getCountAtIndex(I)J
.end method

.method abstract getCountAtNormalizedIndex(I)J
.end method

.method public getCountAtValue(J)J
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 1509
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->countsArrayIndex(J)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1510
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getCountBetweenValues(JJ)J
    .locals 7
    .param p1, "lowValue"    # J
    .param p3, "highValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 1492
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->countsArrayIndex(J)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1493
    .local v0, "lowIndex":I
    invoke-virtual {p0, p3, p4}, Lorg/HdrHistogram/AbstractHistogram;->countsArrayIndex(J)I

    move-result v1

    iget v2, p0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1494
    .local v1, "highIndex":I
    const-wide/16 v2, 0x0

    .line 1495
    .local v2, "count":J
    move v4, v0

    .local v4, "i":I
    :goto_0
    if-gt v4, v1, :cond_0

    .line 1496
    invoke-virtual {p0, v4}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v5

    add-long/2addr v2, v5

    .line 1495
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1498
    .end local v4    # "i":I
    :cond_0
    return-wide v2
.end method

.method public getEndTimeStamp()J
    .locals 2

    .line 1296
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->endTimeStampMsec:J

    return-wide v0
.end method

.method public getEstimatedFootprintInBytes()I
    .locals 1

    .line 1250
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->_getEstimatedFootprintInBytes()I

    move-result v0

    return v0
.end method

.method public getHighestTrackableValue()J
    .locals 2

    .line 1155
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->highestTrackableValue:J

    return-wide v0
.end method

.method getLengthForNumberOfBuckets(I)I
    .locals 2
    .param p1, "numberOfBuckets"    # I

    .line 2398
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/HdrHistogram/AbstractHistogram;->subBucketHalfCount:I

    mul-int/2addr v0, v1

    .line 2399
    .local v0, "lengthNeeded":I
    return v0
.end method

.method public getLowestDiscernibleValue()J
    .locals 2

    .line 1147
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->lowestDiscernibleValue:J

    return-wide v0
.end method

.method public getMaxValue()J
    .locals 4

    .line 1356
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->maxValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->maxValue:J

    invoke-virtual {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->highestEquivalentValue(J)J

    move-result-wide v2

    :goto_0
    return-wide v2
.end method

.method public getMaxValueAsDouble()D
    .locals 2

    .line 1377
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getMaxValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public getMean()D
    .locals 7

    .line 1386
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1387
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1389
    :cond_0
    iget-object v0, p0, Lorg/HdrHistogram/AbstractHistogram;->recordedValuesIterator:Lorg/HdrHistogram/RecordedValuesIterator;

    invoke-virtual {v0}, Lorg/HdrHistogram/RecordedValuesIterator;->reset()V

    .line 1390
    const-wide/16 v0, 0x0

    .line 1391
    .local v0, "totalValue":D
    :goto_0
    iget-object v2, p0, Lorg/HdrHistogram/AbstractHistogram;->recordedValuesIterator:Lorg/HdrHistogram/RecordedValuesIterator;

    invoke-virtual {v2}, Lorg/HdrHistogram/RecordedValuesIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1392
    iget-object v2, p0, Lorg/HdrHistogram/AbstractHistogram;->recordedValuesIterator:Lorg/HdrHistogram/RecordedValuesIterator;

    invoke-virtual {v2}, Lorg/HdrHistogram/RecordedValuesIterator;->next()Lorg/HdrHistogram/HistogramIterationValue;

    move-result-object v2

    .line 1393
    .local v2, "iterationValue":Lorg/HdrHistogram/HistogramIterationValue;
    invoke-virtual {v2}, Lorg/HdrHistogram/HistogramIterationValue;->getValueIteratedTo()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/HdrHistogram/AbstractHistogram;->medianEquivalentValue(J)J

    move-result-wide v3

    long-to-double v3, v3

    .line 1394
    invoke-virtual {v2}, Lorg/HdrHistogram/HistogramIterationValue;->getCountAtValueIteratedTo()J

    move-result-wide v5

    long-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    .line 1395
    .end local v2    # "iterationValue":Lorg/HdrHistogram/HistogramIterationValue;
    goto :goto_0

    .line 1396
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v0

    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public getMinNonZeroValue()J
    .locals 4

    .line 1366
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->minNonZeroValue:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->minNonZeroValue:J

    .line 1367
    invoke-virtual {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->lowestEquivalentValue(J)J

    move-result-wide v2

    .line 1366
    :goto_0
    return-wide v2
.end method

.method public getMinValue()J
    .locals 4

    .line 1343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1346
    :cond_0
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getMinNonZeroValue()J

    move-result-wide v0

    return-wide v0

    .line 1344
    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getNeededByteBufferCapacity()I
    .locals 1

    .line 1926
    iget v0, p0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/AbstractHistogram;->getNeededByteBufferCapacity(I)I

    move-result v0

    return v0
.end method

.method getNeededByteBufferCapacity(I)I
    .locals 1
    .param p1, "relevantLength"    # I

    .line 1933
    invoke-virtual {p0, p1}, Lorg/HdrHistogram/AbstractHistogram;->getNeededPayloadByteBufferCapacity(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    return v0
.end method

.method getNeededPayloadByteBufferCapacity(I)I
    .locals 1
    .param p1, "relevantLength"    # I

    .line 1937
    mul-int/lit8 v0, p1, 0x9

    return v0
.end method

.method getNeededV0PayloadByteBufferCapacity(I)I
    .locals 1
    .param p1, "relevantLength"    # I

    .line 1941
    iget v0, p0, Lorg/HdrHistogram/AbstractHistogram;->wordSizeInBytes:I

    mul-int/2addr v0, p1

    return v0
.end method

.method abstract getNormalizingIndexOffset()I
.end method

.method public getNumberOfSignificantValueDigits()I
    .locals 1

    .line 1163
    iget v0, p0, Lorg/HdrHistogram/AbstractHistogram;->numberOfSignificantValueDigits:I

    return v0
.end method

.method public getPercentileAtOrBelowValue(J)D
    .locals 8
    .param p1, "value"    # J

    .line 1469
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    if-nez v0, :cond_0

    .line 1470
    return-wide v1

    .line 1472
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->countsArrayIndex(J)I

    move-result v0

    iget v3, p0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1473
    .local v0, "targetIndex":I
    const-wide/16 v3, 0x0

    .line 1474
    .local v3, "totalToCurrentIndex":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-gt v5, v0, :cond_1

    .line 1475
    invoke-virtual {p0, v5}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v6

    add-long/2addr v3, v6

    .line 1474
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1477
    .end local v5    # "i":I
    :cond_1
    long-to-double v5, v3

    mul-double/2addr v5, v1

    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v5, v1

    return-wide v5
.end method

.method public getStartTimeStamp()J
    .locals 2

    .line 1278
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->startTimeStampMsec:J

    return-wide v0
.end method

.method public getStdDeviation()D
    .locals 11

    .line 1405
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1406
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1408
    :cond_0
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getMean()D

    move-result-wide v0

    .line 1409
    .local v0, "mean":D
    const-wide/16 v2, 0x0

    .line 1410
    .local v2, "geometric_deviation_total":D
    iget-object v4, p0, Lorg/HdrHistogram/AbstractHistogram;->recordedValuesIterator:Lorg/HdrHistogram/RecordedValuesIterator;

    invoke-virtual {v4}, Lorg/HdrHistogram/RecordedValuesIterator;->reset()V

    .line 1411
    :goto_0
    iget-object v4, p0, Lorg/HdrHistogram/AbstractHistogram;->recordedValuesIterator:Lorg/HdrHistogram/RecordedValuesIterator;

    invoke-virtual {v4}, Lorg/HdrHistogram/RecordedValuesIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1412
    iget-object v4, p0, Lorg/HdrHistogram/AbstractHistogram;->recordedValuesIterator:Lorg/HdrHistogram/RecordedValuesIterator;

    invoke-virtual {v4}, Lorg/HdrHistogram/RecordedValuesIterator;->next()Lorg/HdrHistogram/HistogramIterationValue;

    move-result-object v4

    .line 1413
    .local v4, "iterationValue":Lorg/HdrHistogram/HistogramIterationValue;
    invoke-virtual {v4}, Lorg/HdrHistogram/HistogramIterationValue;->getValueIteratedTo()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lorg/HdrHistogram/AbstractHistogram;->medianEquivalentValue(J)J

    move-result-wide v5

    long-to-double v5, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v5, v7

    sub-double/2addr v5, v0

    .line 1414
    .local v5, "deviation":D
    mul-double v7, v5, v5

    invoke-virtual {v4}, Lorg/HdrHistogram/HistogramIterationValue;->getCountAddedInThisIterationStep()J

    move-result-wide v9

    long-to-double v9, v9

    mul-double/2addr v7, v9

    add-double/2addr v2, v7

    .line 1415
    .end local v4    # "iterationValue":Lorg/HdrHistogram/HistogramIterationValue;
    .end local v5    # "deviation":D
    goto :goto_0

    .line 1416
    :cond_1
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v4

    long-to-double v4, v4

    div-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 1417
    .local v4, "std_deviation":D
    return-wide v4
.end method

.method getSubBucketIndex(JI)I
    .locals 2
    .param p1, "value"    # J
    .param p3, "bucketIndex"    # I

    .line 2442
    iget v0, p0, Lorg/HdrHistogram/AbstractHistogram;->unitMagnitude:I

    add-int/2addr v0, p3

    ushr-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1313
    iget-object v0, p0, Lorg/HdrHistogram/AbstractHistogram;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getTotalCount()J
.end method

.method public getValueAtPercentile(D)J
    .locals 13
    .param p1, "percentile"    # D

    .line 1435
    nop

    .line 1436
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->nextAfter(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 1439
    .local v0, "requestedPercentile":D
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v6, v0

    div-double/2addr v6, v4

    .line 1440
    .local v6, "fpCountAtPercentile":D
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-long v4, v4

    .line 1442
    .local v4, "countAtPercentile":J
    const-wide/16 v8, 0x1

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1443
    const-wide/16 v8, 0x0

    .line 1444
    .local v8, "totalToCurrentIndex":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget v11, p0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    if-ge v10, v11, :cond_2

    .line 1445
    invoke-virtual {p0, v10}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v11

    add-long/2addr v8, v11

    .line 1446
    cmp-long v11, v8, v4

    if-ltz v11, :cond_1

    .line 1447
    invoke-virtual {p0, v10}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(I)J

    move-result-wide v11

    .line 1448
    .local v11, "valueAtIndex":J
    cmpl-double v2, p1, v2

    if-nez v2, :cond_0

    .line 1449
    invoke-virtual {p0, v11, v12}, Lorg/HdrHistogram/AbstractHistogram;->lowestEquivalentValue(J)J

    move-result-wide v2

    goto :goto_1

    .line 1450
    :cond_0
    invoke-virtual {p0, v11, v12}, Lorg/HdrHistogram/AbstractHistogram;->highestEquivalentValue(J)J

    move-result-wide v2

    .line 1448
    :goto_1
    return-wide v2

    .line 1444
    .end local v11    # "valueAtIndex":J
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1453
    .end local v10    # "i":I
    :cond_2
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public hashCode()I
    .locals 3

    .line 1104
    const/4 v0, 0x0

    .line 1105
    .local v0, "h":I
    iget v1, p0, Lorg/HdrHistogram/AbstractHistogram;->unitMagnitude:I

    invoke-direct {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->oneAtATimeHashStep(II)I

    move-result v0

    .line 1106
    iget v1, p0, Lorg/HdrHistogram/AbstractHistogram;->numberOfSignificantValueDigits:I

    invoke-direct {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->oneAtATimeHashStep(II)I

    move-result v0

    .line 1107
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->oneAtATimeHashStep(II)I

    move-result v0

    .line 1108
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getMaxValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->oneAtATimeHashStep(II)I

    move-result v0

    .line 1109
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getMinNonZeroValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->oneAtATimeHashStep(II)I

    move-result v0

    .line 1110
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 1111
    shr-int/lit8 v1, v0, 0xb

    xor-int/2addr v0, v1

    .line 1112
    shl-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 1113
    return v0
.end method

.method public highestEquivalentValue(J)J
    .locals 4
    .param p1, "value"    # J

    .line 1204
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->nextNonEquivalentValue(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method abstract incrementCountAtIndex(I)V
.end method

.method abstract incrementTotalCount()V
.end method

.method public isAutoResize()Z
    .locals 1

    .line 418
    iget-boolean v0, p0, Lorg/HdrHistogram/AbstractHistogram;->autoResize:Z

    return v0
.end method

.method public linearBucketValues(J)Lorg/HdrHistogram/AbstractHistogram$LinearBucketValues;
    .locals 7
    .param p1, "valueUnitsPerBucket"    # J

    .line 1549
    new-instance v6, Lorg/HdrHistogram/AbstractHistogram$LinearBucketValues;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/AbstractHistogram$LinearBucketValues;-><init>(Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram;JLorg/HdrHistogram/AbstractHistogram$1;)V

    return-object v6
.end method

.method public logarithmicBucketValues(JD)Lorg/HdrHistogram/AbstractHistogram$LogarithmicBucketValues;
    .locals 9
    .param p1, "valueUnitsInFirstBucket"    # J
    .param p3, "logBase"    # D

    .line 1564
    new-instance v8, Lorg/HdrHistogram/AbstractHistogram$LogarithmicBucketValues;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v7}, Lorg/HdrHistogram/AbstractHistogram$LogarithmicBucketValues;-><init>(Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram;JDLorg/HdrHistogram/AbstractHistogram$1;)V

    return-object v8
.end method

.method public lowestEquivalentValue(J)J
    .locals 4
    .param p1, "value"    # J

    .line 1189
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->getBucketIndex(J)I

    move-result v0

    .line 1190
    .local v0, "bucketIndex":I
    invoke-virtual {p0, p1, p2, v0}, Lorg/HdrHistogram/AbstractHistogram;->getSubBucketIndex(JI)I

    move-result v1

    .line 1191
    .local v1, "subBucketIndex":I
    invoke-direct {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(II)J

    move-result-wide v2

    .line 1192
    .local v2, "thisValueBaseLevel":J
    return-wide v2
.end method

.method public medianEquivalentValue(J)J
    .locals 5
    .param p1, "value"    # J

    .line 1216
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->lowestEquivalentValue(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->sizeOfEquivalentValueRange(J)J

    move-result-wide v2

    const/4 v4, 0x1

    shr-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public nextNonEquivalentValue(J)J
    .locals 4
    .param p1, "value"    # J

    .line 1228
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->lowestEquivalentValue(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->sizeOfEquivalentValueRange(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method nonConcurrentNormalizingIndexShift(IZ)V
    .locals 5
    .param p1, "shiftAmount"    # I
    .param p2, "lowestHalfBucketPopulated"    # Z

    .line 905
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v1

    .line 906
    .local v1, "zeroValueCount":J
    const-wide/16 v3, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lorg/HdrHistogram/AbstractHistogram;->setCountAtIndex(IJ)V

    .line 907
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getNormalizingIndexOffset()I

    move-result v3

    iget v4, p0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    invoke-virtual {p0, v0, v3, v4}, Lorg/HdrHistogram/AbstractHistogram;->normalizeIndex(III)I

    move-result v3

    .line 909
    .local v3, "preShiftZeroIndex":I
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getNormalizingIndexOffset()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {p0, v4}, Lorg/HdrHistogram/AbstractHistogram;->setNormalizingIndexOffset(I)V

    .line 912
    if-eqz p2, :cond_1

    .line 913
    if-lez p1, :cond_0

    .line 920
    invoke-direct {p0, p1, v3}, Lorg/HdrHistogram/AbstractHistogram;->shiftLowestHalfBucketContentsLeft(II)V

    goto :goto_0

    .line 917
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "Attempt to right-shift with already-recorded value counts that would underflow and lose precision"

    invoke-direct {v0, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->setCountAtIndex(IJ)V

    .line 925
    return-void
.end method

.method normalizeIndex(III)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "normalizingIndexOffset"    # I
    .param p3, "arrayLength"    # I

    .line 2449
    if-nez p2, :cond_0

    .line 2452
    return p1

    .line 2454
    :cond_0
    if-gt p1, p3, :cond_3

    if-ltz p1, :cond_3

    .line 2457
    sub-int v0, p1, p2

    .line 2462
    .local v0, "normalizedIndex":I
    if-gez v0, :cond_1

    .line 2463
    add-int/2addr v0, p3

    goto :goto_0

    .line 2464
    :cond_1
    if-lt v0, p3, :cond_2

    .line 2465
    sub-int/2addr v0, p3

    .line 2467
    :cond_2
    :goto_0
    return v0

    .line 2455
    .end local v0    # "normalizedIndex":I
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "index out of covered value range"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public outputPercentileDistribution(Ljava/io/PrintStream;ILjava/lang/Double;)V
    .locals 1
    .param p1, "printStream"    # Ljava/io/PrintStream;
    .param p2, "percentileTicksPerHalfDistance"    # I
    .param p3, "outputValueUnitScalingRatio"    # Ljava/lang/Double;

    .line 1758
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/HdrHistogram/AbstractHistogram;->outputPercentileDistribution(Ljava/io/PrintStream;ILjava/lang/Double;Z)V

    .line 1759
    return-void
.end method

.method public outputPercentileDistribution(Ljava/io/PrintStream;ILjava/lang/Double;Z)V
    .locals 19
    .param p1, "printStream"    # Ljava/io/PrintStream;
    .param p2, "percentileTicksPerHalfDistance"    # I
    .param p3, "outputValueUnitScalingRatio"    # Ljava/lang/Double;
    .param p4, "useCsvFormat"    # Z

    .line 1779
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p4, :cond_0

    .line 1780
    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "\"Value\",\"Percentile\",\"TotalCount\",\"1/(1-Percentile)\"\n"

    invoke-virtual {v1, v8, v7}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0

    .line 1782
    :cond_0
    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "Value"

    aput-object v8, v7, v6

    const-string v8, "Percentile"

    aput-object v8, v7, v5

    const-string v8, "TotalCount"

    aput-object v8, v7, v4

    const-string v8, "1/(1-Percentile)"

    aput-object v8, v7, v3

    const-string v8, "%12s %14s %10s %14s\n\n"

    invoke-virtual {v1, v8, v7}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1785
    :goto_0
    iget-object v7, v0, Lorg/HdrHistogram/AbstractHistogram;->percentileIterator:Lorg/HdrHistogram/PercentileIterator;

    .line 1786
    .local v7, "iterator":Lorg/HdrHistogram/PercentileIterator;
    move/from16 v8, p2

    invoke-virtual {v7, v8}, Lorg/HdrHistogram/PercentileIterator;->reset(I)V

    .line 1790
    if-eqz p4, :cond_1

    .line 1791
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "%."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v0, Lorg/HdrHistogram/AbstractHistogram;->numberOfSignificantValueDigits:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "f,%.12f,%d,%.2f\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1792
    .local v9, "percentileFormatString":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lorg/HdrHistogram/AbstractHistogram;->numberOfSignificantValueDigits:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "f,%.12f,%d,Infinity\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "lastLinePercentileFormatString":Ljava/lang/String;
    goto :goto_1

    .line 1794
    .end local v9    # "percentileFormatString":Ljava/lang/String;
    .end local v10    # "lastLinePercentileFormatString":Ljava/lang/String;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "%12."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v0, Lorg/HdrHistogram/AbstractHistogram;->numberOfSignificantValueDigits:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "f %2.12f %10d %14.2f\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1795
    .restart local v9    # "percentileFormatString":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lorg/HdrHistogram/AbstractHistogram;->numberOfSignificantValueDigits:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "f %2.12f %10d\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1798
    .restart local v10    # "lastLinePercentileFormatString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7}, Lorg/HdrHistogram/PercentileIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1799
    invoke-virtual {v7}, Lorg/HdrHistogram/PercentileIterator;->next()Lorg/HdrHistogram/HistogramIterationValue;

    move-result-object v11

    .line 1800
    .local v11, "iterationValue":Lorg/HdrHistogram/HistogramIterationValue;
    invoke-virtual {v11}, Lorg/HdrHistogram/HistogramIterationValue;->getPercentileLevelIteratedTo()D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_2

    .line 1801
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v13, v2, [Ljava/lang/Object;

    .line 1802
    invoke-virtual {v11}, Lorg/HdrHistogram/HistogramIterationValue;->getValueIteratedTo()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    div-double v2, v2, v17

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v13, v6

    .line 1803
    invoke-virtual {v11}, Lorg/HdrHistogram/HistogramIterationValue;->getPercentileLevelIteratedTo()D

    move-result-wide v2

    div-double/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v13, v5

    .line 1804
    invoke-virtual {v11}, Lorg/HdrHistogram/HistogramIterationValue;->getTotalCountToThisValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v13, v4

    .line 1805
    invoke-virtual {v11}, Lorg/HdrHistogram/HistogramIterationValue;->getPercentileLevelIteratedTo()D

    move-result-wide v2

    div-double/2addr v2, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v2, v14, v2

    div-double/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v13, v3

    .line 1801
    invoke-virtual {v1, v12, v9, v13}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_2

    .line 1807
    :cond_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v12, v3, [Ljava/lang/Object;

    .line 1808
    invoke-virtual {v11}, Lorg/HdrHistogram/HistogramIterationValue;->getValueIteratedTo()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    div-double v3, v3, v17

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v12, v6

    .line 1809
    invoke-virtual {v11}, Lorg/HdrHistogram/HistogramIterationValue;->getPercentileLevelIteratedTo()D

    move-result-wide v3

    div-double/2addr v3, v14

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v12, v5

    .line 1810
    invoke-virtual {v11}, Lorg/HdrHistogram/HistogramIterationValue;->getTotalCountToThisValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v12, v4

    .line 1807
    invoke-virtual {v1, v2, v10, v12}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1812
    .end local v11    # "iterationValue":Lorg/HdrHistogram/HistogramIterationValue;
    :goto_2
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1814
    :cond_3
    if-nez p4, :cond_4

    .line 1827
    invoke-virtual/range {p0 .. p0}, Lorg/HdrHistogram/AbstractHistogram;->getMean()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    div-double/2addr v2, v11

    .line 1828
    .local v2, "mean":D
    invoke-virtual/range {p0 .. p0}, Lorg/HdrHistogram/AbstractHistogram;->getStdDeviation()D

    move-result-wide v11

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    div-double/2addr v11, v14

    .line 1829
    .local v11, "std_deviation":D
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#[Mean    = %12."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v0, Lorg/HdrHistogram/AbstractHistogram;->numberOfSignificantValueDigits:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "f, StdDeviation   = %12."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v0, Lorg/HdrHistogram/AbstractHistogram;->numberOfSignificantValueDigits:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "f]\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x2

    new-array v15, v13, [Ljava/lang/Object;

    .line 1832
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v15, v6

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v15, v5

    .line 1829
    invoke-virtual {v1, v4, v14, v15}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1833
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#[Max     = %12."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v0, Lorg/HdrHistogram/AbstractHistogram;->numberOfSignificantValueDigits:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "f, Total count    = %12d]\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x2

    new-array v15, v13, [Ljava/lang/Object;

    .line 1835
    move-object/from16 v16, v14

    invoke-virtual/range {p0 .. p0}, Lorg/HdrHistogram/AbstractHistogram;->getMaxValue()J

    move-result-wide v13

    long-to-double v13, v13

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    div-double v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v15, v6

    invoke-virtual/range {p0 .. p0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v15, v5

    .line 1833
    move-object/from16 v13, v16

    invoke-virtual {v1, v4, v13, v15}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1836
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    iget v14, v0, Lorg/HdrHistogram/AbstractHistogram;->bucketCount:I

    .line 1837
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v6

    iget v6, v0, Lorg/HdrHistogram/AbstractHistogram;->subBucketCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v13, v5

    .line 1836
    const-string v5, "#[Buckets = %12d, SubBuckets     = %12d]\n"

    invoke-virtual {v1, v4, v5, v13}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1839
    .end local v2    # "mean":D
    .end local v11    # "std_deviation":D
    :cond_4
    return-void
.end method

.method public outputPercentileDistribution(Ljava/io/PrintStream;Ljava/lang/Double;)V
    .locals 1
    .param p1, "printStream"    # Ljava/io/PrintStream;
    .param p2, "outputValueUnitScalingRatio"    # Ljava/lang/Double;

    .line 1740
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0, p2}, Lorg/HdrHistogram/AbstractHistogram;->outputPercentileDistribution(Ljava/io/PrintStream;ILjava/lang/Double;)V

    .line 1741
    return-void
.end method

.method public percentiles(I)Lorg/HdrHistogram/AbstractHistogram$Percentiles;
    .locals 2
    .param p1, "percentileTicksPerHalfDistance"    # I

    .line 1535
    new-instance v0, Lorg/HdrHistogram/AbstractHistogram$Percentiles;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, p1, v1}, Lorg/HdrHistogram/AbstractHistogram$Percentiles;-><init>(Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram;ILorg/HdrHistogram/AbstractHistogram$1;)V

    return-object v0
.end method

.method recordConvertedDoubleValue(D)V
    .locals 2
    .param p1, "value"    # D

    .line 511
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->doubleToIntegerValueConversionRatio:D

    mul-double/2addr v0, p1

    double-to-long v0, v0

    .line 512
    .local v0, "integerValue":J
    invoke-virtual {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->recordValue(J)V

    .line 513
    return-void
.end method

.method public recordConvertedDoubleValueWithCount(DJ)V
    .locals 2
    .param p1, "value"    # D
    .param p3, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 516
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->doubleToIntegerValueConversionRatio:D

    mul-double/2addr v0, p1

    double-to-long v0, v0

    .line 517
    .local v0, "integerValue":J
    invoke-direct {p0, p3, p4, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->recordCountAtValue(JJ)V

    .line 518
    return-void
.end method

.method public recordValue(J)V
    .locals 0
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 467
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->recordSingleValue(J)V

    .line 468
    return-void
.end method

.method public recordValue(JJ)V
    .locals 0
    .param p1, "value"    # J
    .param p3, "expectedIntervalBetweenValueSamples"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 534
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/AbstractHistogram;->recordValueWithExpectedInterval(JJ)V

    .line 535
    return-void
.end method

.method public recordValueWithCount(JJ)V
    .locals 0
    .param p1, "value"    # J
    .param p3, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 479
    invoke-direct {p0, p3, p4, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->recordCountAtValue(JJ)V

    .line 480
    return-void
.end method

.method public recordValueWithExpectedInterval(JJ)V
    .locals 0
    .param p1, "value"    # J
    .param p3, "expectedIntervalBetweenValueSamples"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 506
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/AbstractHistogram;->recordSingleValueWithExpectedInterval(JJ)V

    .line 507
    return-void
.end method

.method public recordedValues()Lorg/HdrHistogram/AbstractHistogram$RecordedValues;
    .locals 2

    .line 1577
    new-instance v0, Lorg/HdrHistogram/AbstractHistogram$RecordedValues;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lorg/HdrHistogram/AbstractHistogram$RecordedValues;-><init>(Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram;Lorg/HdrHistogram/AbstractHistogram$1;)V

    return-object v0
.end method

.method public reset()V
    .locals 5

    .line 622
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->clearCounts()V

    .line 623
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->resetMaxValue(J)V

    .line 624
    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {p0, v2, v3}, Lorg/HdrHistogram/AbstractHistogram;->resetMinNonZeroValue(J)V

    .line 625
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/HdrHistogram/AbstractHistogram;->setNormalizingIndexOffset(I)V

    .line 626
    iput-wide v2, p0, Lorg/HdrHistogram/AbstractHistogram;->startTimeStampMsec:J

    .line 627
    iput-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->endTimeStampMsec:J

    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/HdrHistogram/AbstractHistogram;->tag:Ljava/lang/String;

    .line 629
    return-void
.end method

.method abstract resize(J)V
.end method

.method public setAutoResize(Z)V
    .locals 0
    .param p1, "autoResize"    # Z

    .line 436
    iput-boolean p1, p0, Lorg/HdrHistogram/AbstractHistogram;->autoResize:Z

    .line 437
    return-void
.end method

.method abstract setCountAtIndex(IJ)V
.end method

.method abstract setCountAtNormalizedIndex(IJ)V
.end method

.method public setEndTimeStamp(J)V
    .locals 0
    .param p1, "timeStampMsec"    # J

    .line 1305
    iput-wide p1, p0, Lorg/HdrHistogram/AbstractHistogram;->endTimeStampMsec:J

    .line 1306
    return-void
.end method

.method abstract setNormalizingIndexOffset(I)V
.end method

.method public setStartTimeStamp(J)V
    .locals 0
    .param p1, "timeStampMsec"    # J

    .line 1287
    iput-wide p1, p0, Lorg/HdrHistogram/AbstractHistogram;->startTimeStampMsec:J

    .line 1288
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 1321
    iput-object p1, p0, Lorg/HdrHistogram/AbstractHistogram;->tag:Ljava/lang/String;

    .line 1322
    return-void
.end method

.method abstract setTotalCount(J)V
.end method

.method abstract shiftNormalizingIndexByOffset(IZD)V
.end method

.method public shiftValuesLeft(I)V
    .locals 2
    .param p1, "numberOfBinaryOrdersOfMagnitude"    # I

    .line 864
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->integerToDoubleValueConversionRatio:D

    invoke-virtual {p0, p1, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->shiftValuesLeft(ID)V

    .line 865
    return-void
.end method

.method shiftValuesLeft(ID)V
    .locals 12
    .param p1, "numberOfBinaryOrdersOfMagnitude"    # I
    .param p2, "newIntegerToDoubleValueConversionRatio"    # D

    .line 868
    if-ltz p1, :cond_5

    .line 871
    if-nez p1, :cond_0

    .line 872
    return-void

    .line 874
    :cond_0
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    .line 876
    return-void

    .line 879
    :cond_1
    iget v0, p0, Lorg/HdrHistogram/AbstractHistogram;->subBucketHalfCountMagnitude:I

    shl-int v0, p1, v0

    .line 880
    .local v0, "shiftAmount":I
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getMaxValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/HdrHistogram/AbstractHistogram;->countsArrayIndex(J)I

    move-result v1

    .line 882
    .local v1, "maxValueIndex":I
    iget v3, p0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_4

    .line 887
    sget-object v3, Lorg/HdrHistogram/AbstractHistogram;->maxValueUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndSet(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 888
    .local v3, "maxValueBeforeShift":J
    sget-object v5, Lorg/HdrHistogram/AbstractHistogram;->minNonZeroValueUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v5, p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndSet(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 890
    .local v8, "minNonZeroValueBeforeShift":J
    iget v5, p0, Lorg/HdrHistogram/AbstractHistogram;->subBucketHalfCount:I

    iget v10, p0, Lorg/HdrHistogram/AbstractHistogram;->unitMagnitude:I

    shl-int/2addr v5, v10

    int-to-long v10, v5

    cmp-long v5, v8, v10

    if-gez v5, :cond_2

    const/4 v2, 0x1

    .line 893
    .local v2, "lowestHalfBucketPopulated":Z
    :cond_2
    invoke-virtual {p0, v0, v2, p2, p3}, Lorg/HdrHistogram/AbstractHistogram;->shiftNormalizingIndexByOffset(IZD)V

    .line 896
    shl-long v10, v3, p1

    invoke-virtual {p0, v10, v11}, Lorg/HdrHistogram/AbstractHistogram;->updateMinAndMax(J)V

    .line 897
    cmp-long v5, v8, v6

    if-gez v5, :cond_3

    .line 898
    shl-long v5, v8, p1

    invoke-virtual {p0, v5, v6}, Lorg/HdrHistogram/AbstractHistogram;->updateMinAndMax(J)V

    .line 900
    :cond_3
    return-void

    .line 883
    .end local v2    # "lowestHalfBucketPopulated":Z
    .end local v3    # "maxValueBeforeShift":J
    .end local v8    # "minNonZeroValueBeforeShift":J
    :cond_4
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v3, "Operation would overflow, would discard recorded value counts"

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 869
    .end local v0    # "shiftAmount":I
    .end local v1    # "maxValueIndex":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot shift by a negative number of magnitudes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shiftValuesRight(I)V
    .locals 2
    .param p1, "numberOfBinaryOrdersOfMagnitude"    # I

    .line 974
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->integerToDoubleValueConversionRatio:D

    invoke-virtual {p0, p1, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->shiftValuesRight(ID)V

    .line 975
    return-void
.end method

.method shiftValuesRight(ID)V
    .locals 12
    .param p1, "numberOfBinaryOrdersOfMagnitude"    # I
    .param p2, "newIntegerToDoubleValueConversionRatio"    # D

    .line 978
    if-ltz p1, :cond_4

    .line 981
    if-nez p1, :cond_0

    .line 982
    return-void

    .line 984
    :cond_0
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getTotalCount()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    .line 986
    return-void

    .line 989
    :cond_1
    iget v0, p0, Lorg/HdrHistogram/AbstractHistogram;->subBucketHalfCount:I

    mul-int/2addr v0, p1

    .line 992
    .local v0, "shiftAmount":I
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getMinNonZeroValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/HdrHistogram/AbstractHistogram;->countsArrayIndex(J)I

    move-result v1

    .line 1018
    .local v1, "minNonZeroValueIndex":I
    iget v3, p0, Lorg/HdrHistogram/AbstractHistogram;->subBucketHalfCount:I

    add-int/2addr v3, v0

    if-lt v1, v3, :cond_3

    .line 1025
    sget-object v3, Lorg/HdrHistogram/AbstractHistogram;->maxValueUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndSet(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 1026
    .local v3, "maxValueBeforeShift":J
    sget-object v5, Lorg/HdrHistogram/AbstractHistogram;->minNonZeroValueUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v5, p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndSet(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1029
    .local v8, "minNonZeroValueBeforeShift":J
    neg-int v5, v0

    invoke-virtual {p0, v5, v2, p2, p3}, Lorg/HdrHistogram/AbstractHistogram;->shiftNormalizingIndexByOffset(IZD)V

    .line 1032
    shr-long v10, v3, p1

    invoke-virtual {p0, v10, v11}, Lorg/HdrHistogram/AbstractHistogram;->updateMinAndMax(J)V

    .line 1033
    cmp-long v2, v8, v6

    if-gez v2, :cond_2

    .line 1034
    shr-long v5, v8, p1

    invoke-virtual {p0, v5, v6}, Lorg/HdrHistogram/AbstractHistogram;->updateMinAndMax(J)V

    .line 1036
    :cond_2
    return-void

    .line 1019
    .end local v3    # "maxValueBeforeShift":J
    .end local v8    # "minNonZeroValueBeforeShift":J
    :cond_3
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v3, "Operation would underflow and lose precision of already recorded value counts"

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 979
    .end local v0    # "shiftAmount":I
    .end local v1    # "minNonZeroValueIndex":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot shift by a negative number of magnitudes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sizeOfEquivalentValueRange(J)J
    .locals 4
    .param p1, "value"    # J

    .line 1175
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->getBucketIndex(J)I

    move-result v0

    .line 1176
    .local v0, "bucketIndex":I
    iget v1, p0, Lorg/HdrHistogram/AbstractHistogram;->unitMagnitude:I

    add-int/2addr v1, v0

    const-wide/16 v2, 0x1

    shl-long v1, v2, v1

    .line 1177
    .local v1, "distanceToNextValue":J
    return-wide v1
.end method

.method public subtract(Lorg/HdrHistogram/AbstractHistogram;)V
    .locals 9
    .param p1, "otherHistogram"    # Lorg/HdrHistogram/AbstractHistogram;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 784
    invoke-virtual {p1}, Lorg/HdrHistogram/AbstractHistogram;->getMaxValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->highestEquivalentValue(J)J

    move-result-wide v0

    iget v2, p0, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    add-int/lit8 v2, v2, -0x1

    .line 785
    invoke-virtual {p0, v2}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/HdrHistogram/AbstractHistogram;->highestEquivalentValue(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_5

    .line 789
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p1, Lorg/HdrHistogram/AbstractHistogram;->countsArrayLength:I

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 790
    invoke-virtual {p1, v0}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtIndex(I)J

    move-result-wide v4

    .line 791
    .local v4, "otherCount":J
    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    .line 792
    invoke-virtual {p1, v0}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(I)J

    move-result-wide v1

    .line 793
    .local v1, "otherValue":J
    invoke-virtual {p0, v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtValue(J)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-ltz v3, :cond_0

    .line 797
    neg-long v6, v4

    invoke-virtual {p0, v1, v2, v6, v7}, Lorg/HdrHistogram/AbstractHistogram;->recordValueWithCount(JJ)V

    goto :goto_1

    .line 794
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "otherHistogram count ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") at value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is larger than this one\'s ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 795
    invoke-virtual {p0, v1, v2}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtValue(J)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 789
    .end local v1    # "otherValue":J
    .end local v4    # "otherCount":J
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 801
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getMaxValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtValue(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->getMinNonZeroValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/HdrHistogram/AbstractHistogram;->getCountAtValue(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 802
    :cond_3
    invoke-virtual {p0}, Lorg/HdrHistogram/AbstractHistogram;->establishInternalTackingValues()V

    .line 804
    :cond_4
    return-void

    .line 786
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The other histogram includes values that do not fit in this histogram\'s range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsAutoResize()Z
    .locals 1

    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2337
    const-string v0, "AbstractHistogram:\n"

    .line 2338
    .local v0, "output":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/HdrHistogram/AbstractHistogram;->recordedValuesToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2340
    return-object v0
.end method

.method updateMinAndMax(J)V
    .locals 2
    .param p1, "value"    # J

    .line 538
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->maxValue:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 539
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->updatedMaxValue(J)V

    .line 541
    :cond_0
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogram;->minNonZeroValue:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 542
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->updateMinNonZeroValue(J)V

    .line 544
    :cond_1
    return-void
.end method

.method final valueFromIndex(I)J
    .locals 5
    .param p1, "index"    # I

    .line 2475
    iget v0, p0, Lorg/HdrHistogram/AbstractHistogram;->subBucketHalfCountMagnitude:I

    shr-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    .line 2476
    .local v0, "bucketIndex":I
    iget v1, p0, Lorg/HdrHistogram/AbstractHistogram;->subBucketHalfCount:I

    add-int/lit8 v2, v1, -0x1

    and-int/2addr v2, p1

    add-int/2addr v2, v1

    .line 2477
    .local v2, "subBucketIndex":I
    if-gez v0, :cond_0

    .line 2478
    sub-int/2addr v2, v1

    .line 2479
    const/4 v0, 0x0

    .line 2481
    :cond_0
    invoke-direct {p0, v0, v2}, Lorg/HdrHistogram/AbstractHistogram;->valueFromIndex(II)J

    move-result-wide v3

    return-wide v3
.end method

.method public valuesAreEquivalent(JJ)Z
    .locals 4
    .param p1, "value1"    # J
    .param p3, "value2"    # J

    .line 1241
    invoke-virtual {p0, p1, p2}, Lorg/HdrHistogram/AbstractHistogram;->lowestEquivalentValue(J)J

    move-result-wide v0

    invoke-virtual {p0, p3, p4}, Lorg/HdrHistogram/AbstractHistogram;->lowestEquivalentValue(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
