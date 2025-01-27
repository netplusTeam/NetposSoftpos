.class Lorg/HdrHistogram/packedarray/PackedArraySingleWriterRecorder$InternalPackedLongArray;
.super Lorg/HdrHistogram/packedarray/PackedLongArray;
.source "PackedArraySingleWriterRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/packedarray/PackedArraySingleWriterRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalPackedLongArray"
.end annotation


# instance fields
.field private final containingInstanceId:J


# direct methods
.method private constructor <init>(JI)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "virtualLength"    # I

    .line 272
    invoke-direct {p0, p3}, Lorg/HdrHistogram/packedarray/PackedLongArray;-><init>(I)V

    .line 273
    iput-wide p1, p0, Lorg/HdrHistogram/packedarray/PackedArraySingleWriterRecorder$InternalPackedLongArray;->containingInstanceId:J

    .line 274
    return-void
.end method

.method private constructor <init>(JII)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "virtualLength"    # I
    .param p4, "initialPhysicalLength"    # I

    .line 267
    invoke-direct {p0, p3, p4}, Lorg/HdrHistogram/packedarray/PackedLongArray;-><init>(II)V

    .line 268
    iput-wide p1, p0, Lorg/HdrHistogram/packedarray/PackedArraySingleWriterRecorder$InternalPackedLongArray;->containingInstanceId:J

    .line 269
    return-void
.end method

.method synthetic constructor <init>(JIILorg/HdrHistogram/packedarray/PackedArraySingleWriterRecorder$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # Lorg/HdrHistogram/packedarray/PackedArraySingleWriterRecorder$1;

    .line 263
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/packedarray/PackedArraySingleWriterRecorder$InternalPackedLongArray;-><init>(JII)V

    return-void
.end method

.method synthetic constructor <init>(JILorg/HdrHistogram/packedarray/PackedArraySingleWriterRecorder$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # Lorg/HdrHistogram/packedarray/PackedArraySingleWriterRecorder$1;

    .line 263
    invoke-direct {p0, p1, p2, p3}, Lorg/HdrHistogram/packedarray/PackedArraySingleWriterRecorder$InternalPackedLongArray;-><init>(JI)V

    return-void
.end method

.method static synthetic access$200(Lorg/HdrHistogram/packedarray/PackedArraySingleWriterRecorder$InternalPackedLongArray;)J
    .locals 2
    .param p0, "x0"    # Lorg/HdrHistogram/packedarray/PackedArraySingleWriterRecorder$InternalPackedLongArray;

    .line 263
    iget-wide v0, p0, Lorg/HdrHistogram/packedarray/PackedArraySingleWriterRecorder$InternalPackedLongArray;->containingInstanceId:J

    return-wide v0
.end method
