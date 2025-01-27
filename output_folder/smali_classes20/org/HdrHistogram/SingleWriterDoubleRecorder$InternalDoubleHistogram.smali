.class Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;
.super Lorg/HdrHistogram/DoubleHistogram;
.source "SingleWriterDoubleRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/SingleWriterDoubleRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalDoubleHistogram"
.end annotation


# instance fields
.field private final containingInstanceId:J

.field final synthetic this$0:Lorg/HdrHistogram/SingleWriterDoubleRecorder;


# direct methods
.method private constructor <init>(Lorg/HdrHistogram/SingleWriterDoubleRecorder;JI)V
    .locals 0
    .param p2, "id"    # J
    .param p4, "numberOfSignificantValueDigits"    # I

    .line 307
    iput-object p1, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;->this$0:Lorg/HdrHistogram/SingleWriterDoubleRecorder;

    .line 308
    invoke-direct {p0, p4}, Lorg/HdrHistogram/DoubleHistogram;-><init>(I)V

    .line 309
    iput-wide p2, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;->containingInstanceId:J

    .line 310
    return-void
.end method

.method synthetic constructor <init>(Lorg/HdrHistogram/SingleWriterDoubleRecorder;JILorg/HdrHistogram/SingleWriterDoubleRecorder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/HdrHistogram/SingleWriterDoubleRecorder;
    .param p2, "x1"    # J
    .param p4, "x2"    # I
    .param p5, "x3"    # Lorg/HdrHistogram/SingleWriterDoubleRecorder$1;

    .line 304
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;-><init>(Lorg/HdrHistogram/SingleWriterDoubleRecorder;JI)V

    return-void
.end method

.method private constructor <init>(Lorg/HdrHistogram/SingleWriterDoubleRecorder;JJI)V
    .locals 0
    .param p2, "id"    # J
    .param p4, "highestToLowestValueRatio"    # J
    .param p6, "numberOfSignificantValueDigits"    # I

    .line 314
    iput-object p1, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;->this$0:Lorg/HdrHistogram/SingleWriterDoubleRecorder;

    .line 315
    invoke-direct {p0, p4, p5, p6}, Lorg/HdrHistogram/DoubleHistogram;-><init>(JI)V

    .line 316
    iput-wide p2, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;->containingInstanceId:J

    .line 317
    return-void
.end method

.method synthetic constructor <init>(Lorg/HdrHistogram/SingleWriterDoubleRecorder;JJILorg/HdrHistogram/SingleWriterDoubleRecorder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/HdrHistogram/SingleWriterDoubleRecorder;
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # I
    .param p7, "x4"    # Lorg/HdrHistogram/SingleWriterDoubleRecorder$1;

    .line 304
    invoke-direct/range {p0 .. p6}, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;-><init>(Lorg/HdrHistogram/SingleWriterDoubleRecorder;JJI)V

    return-void
.end method

.method private constructor <init>(Lorg/HdrHistogram/SingleWriterDoubleRecorder;Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;)V
    .locals 2
    .param p2, "source"    # Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;

    .line 319
    iput-object p1, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;->this$0:Lorg/HdrHistogram/SingleWriterDoubleRecorder;

    .line 320
    invoke-direct {p0, p2}, Lorg/HdrHistogram/DoubleHistogram;-><init>(Lorg/HdrHistogram/DoubleHistogram;)V

    .line 321
    iget-wide v0, p2, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;->containingInstanceId:J

    iput-wide v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;->containingInstanceId:J

    .line 322
    return-void
.end method

.method synthetic constructor <init>(Lorg/HdrHistogram/SingleWriterDoubleRecorder;Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;Lorg/HdrHistogram/SingleWriterDoubleRecorder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/HdrHistogram/SingleWriterDoubleRecorder;
    .param p2, "x1"    # Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;
    .param p3, "x2"    # Lorg/HdrHistogram/SingleWriterDoubleRecorder$1;

    .line 304
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;-><init>(Lorg/HdrHistogram/SingleWriterDoubleRecorder;Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;)V

    return-void
.end method

.method static synthetic access$400(Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;)J
    .locals 2
    .param p0, "x0"    # Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;

    .line 304
    iget-wide v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder$InternalDoubleHistogram;->containingInstanceId:J

    return-wide v0
.end method
