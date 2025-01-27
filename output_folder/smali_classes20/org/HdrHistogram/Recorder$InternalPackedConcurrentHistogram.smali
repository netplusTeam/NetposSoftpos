.class Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;
.super Lorg/HdrHistogram/PackedConcurrentHistogram;
.source "Recorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalPackedConcurrentHistogram"
.end annotation


# instance fields
.field private final containingInstanceId:J


# direct methods
.method private constructor <init>(JI)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 364
    invoke-direct {p0, p3}, Lorg/HdrHistogram/PackedConcurrentHistogram;-><init>(I)V

    .line 365
    iput-wide p1, p0, Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;->containingInstanceId:J

    .line 366
    return-void
.end method

.method synthetic constructor <init>(JILorg/HdrHistogram/Recorder$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # Lorg/HdrHistogram/Recorder$1;

    .line 360
    invoke-direct {p0, p1, p2, p3}, Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;-><init>(JI)V

    return-void
.end method

.method static synthetic access$500(Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;)J
    .locals 2
    .param p0, "x0"    # Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;

    .line 360
    iget-wide v0, p0, Lorg/HdrHistogram/Recorder$InternalPackedConcurrentHistogram;->containingInstanceId:J

    return-wide v0
.end method
