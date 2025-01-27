.class Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;
.super Lorg/HdrHistogram/Histogram;
.source "SingleWriterRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/SingleWriterRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHistogram"
.end annotation


# instance fields
.field private final containingInstanceId:J


# direct methods
.method private constructor <init>(JI)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 335
    invoke-direct {p0, p3}, Lorg/HdrHistogram/Histogram;-><init>(I)V

    .line 336
    iput-wide p1, p0, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;->containingInstanceId:J

    .line 337
    return-void
.end method

.method synthetic constructor <init>(JILorg/HdrHistogram/SingleWriterRecorder$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # Lorg/HdrHistogram/SingleWriterRecorder$1;

    .line 331
    invoke-direct {p0, p1, p2, p3}, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;-><init>(JI)V

    return-void
.end method

.method private constructor <init>(JJJI)V
    .locals 6
    .param p1, "id"    # J
    .param p3, "lowestDiscernibleValue"    # J
    .param p5, "highestTrackableValue"    # J
    .param p7, "numberOfSignificantValueDigits"    # I

    .line 343
    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p5

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/Histogram;-><init>(JJI)V

    .line 344
    iput-wide p1, p0, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;->containingInstanceId:J

    .line 345
    return-void
.end method

.method synthetic constructor <init>(JJJILorg/HdrHistogram/SingleWriterRecorder$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # J
    .param p7, "x3"    # I
    .param p8, "x4"    # Lorg/HdrHistogram/SingleWriterRecorder$1;

    .line 331
    invoke-direct/range {p0 .. p7}, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;-><init>(JJJI)V

    return-void
.end method

.method private constructor <init>(Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;)V
    .locals 2
    .param p1, "source"    # Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;

    .line 348
    invoke-direct {p0, p1}, Lorg/HdrHistogram/Histogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 349
    iget-wide v0, p1, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;->containingInstanceId:J

    iput-wide v0, p0, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;->containingInstanceId:J

    .line 350
    return-void
.end method

.method synthetic constructor <init>(Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;Lorg/HdrHistogram/SingleWriterRecorder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;
    .param p2, "x1"    # Lorg/HdrHistogram/SingleWriterRecorder$1;

    .line 331
    invoke-direct {p0, p1}, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;-><init>(Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;)V

    return-void
.end method

.method static synthetic access$400(Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;)J
    .locals 2
    .param p0, "x0"    # Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;

    .line 331
    iget-wide v0, p0, Lorg/HdrHistogram/SingleWriterRecorder$InternalHistogram;->containingInstanceId:J

    return-wide v0
.end method
