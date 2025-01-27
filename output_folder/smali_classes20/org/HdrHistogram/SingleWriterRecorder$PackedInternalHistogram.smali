.class Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;
.super Lorg/HdrHistogram/PackedHistogram;
.source "SingleWriterRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/SingleWriterRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackedInternalHistogram"
.end annotation


# instance fields
.field private final containingInstanceId:J


# direct methods
.method private constructor <init>(JI)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "numberOfSignificantValueDigits"    # I

    .line 357
    invoke-direct {p0, p3}, Lorg/HdrHistogram/PackedHistogram;-><init>(I)V

    .line 358
    iput-wide p1, p0, Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;->containingInstanceId:J

    .line 359
    return-void
.end method

.method synthetic constructor <init>(JILorg/HdrHistogram/SingleWriterRecorder$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # Lorg/HdrHistogram/SingleWriterRecorder$1;

    .line 353
    invoke-direct {p0, p1, p2, p3}, Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;-><init>(JI)V

    return-void
.end method

.method static synthetic access$500(Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;)J
    .locals 2
    .param p0, "x0"    # Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;

    .line 353
    iget-wide v0, p0, Lorg/HdrHistogram/SingleWriterRecorder$PackedInternalHistogram;->containingInstanceId:J

    return-wide v0
.end method
