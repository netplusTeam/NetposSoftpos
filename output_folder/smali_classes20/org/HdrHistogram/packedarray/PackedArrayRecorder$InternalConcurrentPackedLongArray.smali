.class Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;
.super Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;
.source "PackedArrayRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/packedarray/PackedArrayRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalConcurrentPackedLongArray"
.end annotation


# instance fields
.field private final containingInstanceId:J


# direct methods
.method private constructor <init>(JI)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "virtualLength"    # I

    .line 270
    invoke-direct {p0, p3}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;-><init>(I)V

    .line 271
    iput-wide p1, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;->containingInstanceId:J

    .line 272
    return-void
.end method

.method private constructor <init>(JII)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "virtualLength"    # I
    .param p4, "initialPhysicalLength"    # I

    .line 265
    invoke-direct {p0, p3, p4}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;-><init>(II)V

    .line 266
    iput-wide p1, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;->containingInstanceId:J

    .line 267
    return-void
.end method

.method synthetic constructor <init>(JIILorg/HdrHistogram/packedarray/PackedArrayRecorder$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # Lorg/HdrHistogram/packedarray/PackedArrayRecorder$1;

    .line 261
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;-><init>(JII)V

    return-void
.end method

.method synthetic constructor <init>(JILorg/HdrHistogram/packedarray/PackedArrayRecorder$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # Lorg/HdrHistogram/packedarray/PackedArrayRecorder$1;

    .line 261
    invoke-direct {p0, p1, p2, p3}, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;-><init>(JI)V

    return-void
.end method

.method static synthetic access$200(Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;)J
    .locals 2
    .param p0, "x0"    # Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;

    .line 261
    iget-wide v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayRecorder$InternalConcurrentPackedLongArray;->containingInstanceId:J

    return-wide v0
.end method
