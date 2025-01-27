.class Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;
.super Lorg/HdrHistogram/ConcurrentDoubleHistogram;
.source "DoubleRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/DoubleRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalConcurrentDoubleHistogram"
.end annotation


# instance fields
.field private final containingInstanceId:J


# direct methods
.method private constructor <init>(JI)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 310
    invoke-direct {p0, p3}, Lorg/HdrHistogram/ConcurrentDoubleHistogram;-><init>(I)V

    .line 311
    iput-wide p1, p0, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;->containingInstanceId:J

    .line 312
    return-void
.end method

.method synthetic constructor <init>(JILorg/HdrHistogram/DoubleRecorder$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # Lorg/HdrHistogram/DoubleRecorder$1;

    .line 306
    invoke-direct {p0, p1, p2, p3}, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;-><init>(JI)V

    return-void
.end method

.method private constructor <init>(JJI)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "highestToLowestValueRatio"    # J
    .param p5, "numberOfSignificantValueDigits"    # I

    .line 317
    invoke-direct {p0, p3, p4, p5}, Lorg/HdrHistogram/ConcurrentDoubleHistogram;-><init>(JI)V

    .line 318
    iput-wide p1, p0, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;->containingInstanceId:J

    .line 319
    return-void
.end method

.method synthetic constructor <init>(JJILorg/HdrHistogram/DoubleRecorder$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # I
    .param p6, "x3"    # Lorg/HdrHistogram/DoubleRecorder$1;

    .line 306
    invoke-direct/range {p0 .. p5}, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;-><init>(JJI)V

    return-void
.end method

.method private constructor <init>(Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;)V
    .locals 2
    .param p1, "source"    # Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;

    .line 322
    invoke-direct {p0, p1}, Lorg/HdrHistogram/ConcurrentDoubleHistogram;-><init>(Lorg/HdrHistogram/DoubleHistogram;)V

    .line 323
    iget-wide v0, p1, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;->containingInstanceId:J

    iput-wide v0, p0, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;->containingInstanceId:J

    .line 324
    return-void
.end method

.method synthetic constructor <init>(Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;Lorg/HdrHistogram/DoubleRecorder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;
    .param p2, "x1"    # Lorg/HdrHistogram/DoubleRecorder$1;

    .line 306
    invoke-direct {p0, p1}, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;-><init>(Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;)V

    return-void
.end method

.method static synthetic access$400(Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;)J
    .locals 2
    .param p0, "x0"    # Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;

    .line 306
    iget-wide v0, p0, Lorg/HdrHistogram/DoubleRecorder$InternalConcurrentDoubleHistogram;->containingInstanceId:J

    return-wide v0
.end method
