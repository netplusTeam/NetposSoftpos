.class Lio/netty/handler/codec/marshalling/LimitingByteInput;
.super Ljava/lang/Object;
.source "LimitingByteInput.java"

# interfaces
.implements Lorg/jboss/marshalling/ByteInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;
    }
.end annotation


# static fields
.field private static final EXCEPTION:Lio/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;


# instance fields
.field private final input:Lorg/jboss/marshalling/ByteInput;

.field private final limit:J

.field private read:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lio/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;

    invoke-direct {v0}, Lio/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;-><init>()V

    sput-object v0, Lio/netty/handler/codec/marshalling/LimitingByteInput;->EXCEPTION:Lio/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;

    return-void
.end method

.method constructor <init>(Lorg/jboss/marshalling/ByteInput;J)V
    .locals 2
    .param p1, "input"    # Lorg/jboss/marshalling/ByteInput;
    .param p2, "limit"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 39
    iput-object p1, p0, Lio/netty/handler/codec/marshalling/LimitingByteInput;->input:Lorg/jboss/marshalling/ByteInput;

    .line 40
    iput-wide p2, p0, Lio/netty/handler/codec/marshalling/LimitingByteInput;->limit:J

    .line 41
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The limit MUST be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readable(I)I
    .locals 6
    .param p1, "length"    # I

    .line 95
    int-to-long v0, p1

    iget-wide v2, p0, Lio/netty/handler/codec/marshalling/LimitingByteInput;->limit:J

    iget-wide v4, p0, Lio/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lio/netty/handler/codec/marshalling/LimitingByteInput;->input:Lorg/jboss/marshalling/ByteInput;

    invoke-interface {v0}, Lorg/jboss/marshalling/ByteInput;->available()I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/marshalling/LimitingByteInput;->readable(I)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/marshalling/LimitingByteInput;->readable(I)I

    move-result v0

    .line 56
    .local v0, "readable":I
    if-lez v0, :cond_0

    .line 57
    iget-object v1, p0, Lio/netty/handler/codec/marshalling/LimitingByteInput;->input:Lorg/jboss/marshalling/ByteInput;

    invoke-interface {v1}, Lorg/jboss/marshalling/ByteInput;->read()I

    move-result v1

    .line 58
    .local v1, "b":I
    iget-wide v2, p0, Lio/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    .line 59
    return v1

    .line 61
    .end local v1    # "b":I
    :cond_0
    sget-object v1, Lio/netty/handler/codec/marshalling/LimitingByteInput;->EXCEPTION:Lio/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;

    throw v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/netty/handler/codec/marshalling/LimitingByteInput;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p3}, Lio/netty/handler/codec/marshalling/LimitingByteInput;->readable(I)I

    move-result v0

    .line 73
    .local v0, "readable":I
    if-lez v0, :cond_0

    .line 74
    iget-object v1, p0, Lio/netty/handler/codec/marshalling/LimitingByteInput;->input:Lorg/jboss/marshalling/ByteInput;

    invoke-interface {v1, p1, p2, v0}, Lorg/jboss/marshalling/ByteInput;->read([BII)I

    move-result v1

    .line 75
    .local v1, "i":I
    iget-wide v2, p0, Lio/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    .line 76
    return v1

    .line 78
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lio/netty/handler/codec/marshalling/LimitingByteInput;->EXCEPTION:Lio/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;

    throw v1
.end method

.method public skip(J)J
    .locals 5
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/marshalling/LimitingByteInput;->readable(I)I

    move-result v0

    .line 85
    .local v0, "readable":I
    if-lez v0, :cond_0

    .line 86
    iget-object v1, p0, Lio/netty/handler/codec/marshalling/LimitingByteInput;->input:Lorg/jboss/marshalling/ByteInput;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lorg/jboss/marshalling/ByteInput;->skip(J)J

    move-result-wide v1

    .line 87
    .local v1, "i":J
    iget-wide v3, p0, Lio/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lio/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    .line 88
    return-wide v1

    .line 90
    .end local v1    # "i":J
    :cond_0
    sget-object v1, Lio/netty/handler/codec/marshalling/LimitingByteInput;->EXCEPTION:Lio/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;

    throw v1
.end method
