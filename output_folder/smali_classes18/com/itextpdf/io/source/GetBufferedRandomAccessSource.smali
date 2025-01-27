.class public Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;
.super Ljava/lang/Object;
.source "GetBufferedRandomAccessSource.java"

# interfaces
.implements Lcom/itextpdf/io/source/IRandomAccessSource;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7bd388d5d64b6d26L


# instance fields
.field private final getBuffer:[B

.field private getBufferEnd:J

.field private getBufferStart:J

.field private final source:Lcom/itextpdf/io/source/IRandomAccessSource;


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 6
    .param p1, "source"    # Lcom/itextpdf/io/source/IRandomAccessSource;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferStart:J

    .line 55
    iput-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferEnd:J

    .line 62
    iput-object p1, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    .line 63
    invoke-interface {p1}, Lcom/itextpdf/io/source/IRandomAccessSource;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x1000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBuffer:[B

    .line 64
    iput-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferStart:J

    .line 65
    iput-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferEnd:J

    .line 66
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-interface {v0}, Lcom/itextpdf/io/source/IRandomAccessSource;->close()V

    .line 102
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferStart:J

    .line 103
    iput-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferEnd:J

    .line 104
    return-void
.end method

.method public get(J)I
    .locals 7
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferStart:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferEnd:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    iget-object v4, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBuffer:[B

    const/4 v5, 0x0

    array-length v6, v4

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J[BII)I

    move-result v0

    .line 74
    .local v0, "count":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 75
    return v1

    .line 76
    :cond_1
    iput-wide p1, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferStart:J

    .line 77
    int-to-long v1, v0

    add-long/2addr v1, p1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferEnd:J

    .line 79
    .end local v0    # "count":I
    :cond_2
    iget-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferStart:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 80
    .local v0, "bufPos":I
    iget-object v1, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBuffer:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public get(J[BII)I
    .locals 6
    .param p1, "position"    # J
    .param p3, "bytes"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J[BII)I

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-interface {v0}, Lcom/itextpdf/io/source/IRandomAccessSource;->length()J

    move-result-wide v0

    return-wide v0
.end method
