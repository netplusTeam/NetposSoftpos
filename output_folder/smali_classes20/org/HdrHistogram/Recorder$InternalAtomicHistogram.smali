.class Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;
.super Lorg/HdrHistogram/AtomicHistogram;
.source "Recorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalAtomicHistogram"
.end annotation


# instance fields
.field private final containingInstanceId:J


# direct methods
.method private constructor <init>(JJJI)V
    .locals 6
    .param p1, "id"    # J
    .param p3, "lowestDiscernibleValue"    # J
    .param p5, "highestTrackableValue"    # J
    .param p7, "numberOfSignificantValueDigits"    # I

    .line 346
    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p5

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/AtomicHistogram;-><init>(JJI)V

    .line 347
    iput-wide p1, p0, Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;->containingInstanceId:J

    .line 348
    return-void
.end method

.method synthetic constructor <init>(JJJILorg/HdrHistogram/Recorder$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # J
    .param p7, "x3"    # I
    .param p8, "x4"    # Lorg/HdrHistogram/Recorder$1;

    .line 339
    invoke-direct/range {p0 .. p7}, Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;-><init>(JJJI)V

    return-void
.end method

.method static synthetic access$300(Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;)J
    .locals 2
    .param p0, "x0"    # Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;

    .line 339
    iget-wide v0, p0, Lorg/HdrHistogram/Recorder$InternalAtomicHistogram;->containingInstanceId:J

    return-wide v0
.end method
