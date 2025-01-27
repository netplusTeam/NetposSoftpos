.class Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;
.super Lorg/HdrHistogram/PackedDoubleHistogram;
.source "SingleWriterDoubleRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/SingleWriterDoubleRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackedInternalDoubleHistogram"
.end annotation


# instance fields
.field private final containingInstanceId:J

.field final synthetic this$0:Lorg/HdrHistogram/SingleWriterDoubleRecorder;


# direct methods
.method private constructor <init>(Lorg/HdrHistogram/SingleWriterDoubleRecorder;JI)V
    .locals 0
    .param p2, "id"    # J
    .param p4, "numberOfSignificantValueDigits"    # I

    .line 328
    iput-object p1, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;->this$0:Lorg/HdrHistogram/SingleWriterDoubleRecorder;

    .line 329
    invoke-direct {p0, p4}, Lorg/HdrHistogram/PackedDoubleHistogram;-><init>(I)V

    .line 330
    iput-wide p2, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;->containingInstanceId:J

    .line 331
    return-void
.end method

.method synthetic constructor <init>(Lorg/HdrHistogram/SingleWriterDoubleRecorder;JILorg/HdrHistogram/SingleWriterDoubleRecorder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/HdrHistogram/SingleWriterDoubleRecorder;
    .param p2, "x1"    # J
    .param p4, "x2"    # I
    .param p5, "x3"    # Lorg/HdrHistogram/SingleWriterDoubleRecorder$1;

    .line 325
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;-><init>(Lorg/HdrHistogram/SingleWriterDoubleRecorder;JI)V

    return-void
.end method

.method static synthetic access$500(Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;)J
    .locals 2
    .param p0, "x0"    # Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;

    .line 325
    iget-wide v0, p0, Lorg/HdrHistogram/SingleWriterDoubleRecorder$PackedInternalDoubleHistogram;->containingInstanceId:J

    return-wide v0
.end method
