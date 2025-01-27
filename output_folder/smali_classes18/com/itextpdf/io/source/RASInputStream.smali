.class public Lcom/itextpdf/io/source/RASInputStream;
.super Ljava/io/InputStream;
.source "RASInputStream.java"


# instance fields
.field private position:J

.field private final source:Lcom/itextpdf/io/source/IRandomAccessSource;


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 2
    .param p1, "source"    # Lcom/itextpdf/io/source/IRandomAccessSource;

    .line 68
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/io/source/RASInputStream;->position:J

    .line 69
    iput-object p1, p0, Lcom/itextpdf/io/source/RASInputStream;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    .line 70
    return-void
.end method


# virtual methods
.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/itextpdf/io/source/RASInputStream;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    iget-wide v1, p0, Lcom/itextpdf/io/source/RASInputStream;->position:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/itextpdf/io/source/RASInputStream;->position:J

    invoke-interface {v0, v1, v2}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/itextpdf/io/source/RASInputStream;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    iget-wide v1, p0, Lcom/itextpdf/io/source/RASInputStream;->position:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J[BII)I

    move-result v0

    .line 78
    .local v0, "count":I
    iget-wide v1, p0, Lcom/itextpdf/io/source/RASInputStream;->position:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/itextpdf/io/source/RASInputStream;->position:J

    .line 79
    return v0
.end method
