.class abstract Lorg/HdrHistogram/AbstractHistogramBase;
.super Lorg/HdrHistogram/EncodableHistogram;
.source "AbstractHistogram.java"


# static fields
.field static constructionIdentityCount:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field volatile autoResize:Z

.field bucketCount:I

.field countsArrayLength:I

.field doubleToIntegerValueConversionRatio:D

.field endTimeStampMsec:J

.field highestTrackableValue:J

.field identity:J

.field integerToDoubleValueConversionRatio:D

.field intermediateUncompressedByteArray:[B

.field intermediateUncompressedByteBuffer:Ljava/nio/ByteBuffer;

.field lowestDiscernibleValue:J

.field numberOfSignificantValueDigits:I

.field percentileIterator:Lorg/HdrHistogram/PercentileIterator;

.field recordedValuesIterator:Lorg/HdrHistogram/RecordedValuesIterator;

.field startTimeStampMsec:J

.field subBucketCount:I

.field tag:Ljava/lang/String;

.field wordSizeInBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/HdrHistogram/AbstractHistogramBase;->constructionIdentityCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Lorg/HdrHistogram/EncodableHistogram;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/HdrHistogram/AbstractHistogramBase;->autoResize:Z

    .line 52
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/HdrHistogram/AbstractHistogramBase;->startTimeStampMsec:J

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/HdrHistogram/AbstractHistogramBase;->endTimeStampMsec:J

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/HdrHistogram/AbstractHistogramBase;->tag:Ljava/lang/String;

    .line 56
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, p0, Lorg/HdrHistogram/AbstractHistogramBase;->integerToDoubleValueConversionRatio:D

    .line 57
    iput-wide v1, p0, Lorg/HdrHistogram/AbstractHistogramBase;->doubleToIntegerValueConversionRatio:D

    .line 62
    iput-object v0, p0, Lorg/HdrHistogram/AbstractHistogramBase;->intermediateUncompressedByteBuffer:Ljava/nio/ByteBuffer;

    .line 63
    iput-object v0, p0, Lorg/HdrHistogram/AbstractHistogramBase;->intermediateUncompressedByteArray:[B

    return-void
.end method


# virtual methods
.method getDoubleToIntegerValueConversionRatio()D
    .locals 2

    .line 70
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogramBase;->doubleToIntegerValueConversionRatio:D

    return-wide v0
.end method

.method getIntegerToDoubleValueConversionRatio()D
    .locals 2

    .line 66
    iget-wide v0, p0, Lorg/HdrHistogram/AbstractHistogramBase;->integerToDoubleValueConversionRatio:D

    return-wide v0
.end method

.method nonConcurrentSetIntegerToDoubleValueConversionRatio(D)V
    .locals 2
    .param p1, "integerToDoubleValueConversionRatio"    # D

    .line 74
    iput-wide p1, p0, Lorg/HdrHistogram/AbstractHistogramBase;->integerToDoubleValueConversionRatio:D

    .line 75
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/HdrHistogram/AbstractHistogramBase;->doubleToIntegerValueConversionRatio:D

    .line 76
    return-void
.end method

.method abstract setIntegerToDoubleValueConversionRatio(D)V
.end method
