.class Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;
.super Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;
.source "DoubleRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/DoubleRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackedInternalConcurrentDoubleHistogram"
.end annotation


# instance fields
.field private final containingInstanceId:J


# direct methods
.method private constructor <init>(JI)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 331
    invoke-direct {p0, p3}, Lorg/HdrHistogram/PackedConcurrentDoubleHistogram;-><init>(I)V

    .line 332
    iput-wide p1, p0, Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;->containingInstanceId:J

    .line 333
    return-void
.end method

.method synthetic constructor <init>(JILorg/HdrHistogram/DoubleRecorder$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # Lorg/HdrHistogram/DoubleRecorder$1;

    .line 327
    invoke-direct {p0, p1, p2, p3}, Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;-><init>(JI)V

    return-void
.end method

.method static synthetic access$500(Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;)J
    .locals 2
    .param p0, "x0"    # Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;

    .line 327
    iget-wide v0, p0, Lorg/HdrHistogram/DoubleRecorder$PackedInternalConcurrentDoubleHistogram;->containingInstanceId:J

    return-wide v0
.end method
