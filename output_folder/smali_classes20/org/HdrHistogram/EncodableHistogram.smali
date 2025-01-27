.class public abstract Lorg/HdrHistogram/EncodableHistogram;
.super Ljava/lang/Object;
.source "EncodableHistogram.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/EncodableHistogram;
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "minBarForHighestTrackableValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 56
    .local v0, "cookie":I
    invoke-static {v0}, Lorg/HdrHistogram/DoubleHistogram;->isDoubleHistogramCookie(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {p0, p1, p2}, Lorg/HdrHistogram/DoubleHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/DoubleHistogram;

    move-result-object v1

    return-object v1

    .line 59
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/HdrHistogram/Histogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/Histogram;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract encodeIntoCompressedByteBuffer(Ljava/nio/ByteBuffer;I)I
.end method

.method public abstract getEndTimeStamp()J
.end method

.method public abstract getMaxValueAsDouble()D
.end method

.method public abstract getNeededByteBufferCapacity()I
.end method

.method public abstract getStartTimeStamp()J
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract setEndTimeStamp(J)V
.end method

.method public abstract setStartTimeStamp(J)V
.end method

.method public abstract setTag(Ljava/lang/String;)V
.end method
