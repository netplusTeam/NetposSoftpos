.class Lcom/itextpdf/io/source/RAFRandomAccessSource;
.super Ljava/lang/Object;
.source "RAFRandomAccessSource.java"

# interfaces
.implements Lcom/itextpdf/io/source/IRandomAccessSource;


# instance fields
.field private final length:J

.field private final raf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 2
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/itextpdf/io/source/RAFRandomAccessSource;->raf:Ljava/io/RandomAccessFile;

    .line 71
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/io/source/RAFRandomAccessSource;->length:J

    .line 72
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/itextpdf/io/source/RAFRandomAccessSource;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 118
    return-void
.end method

.method public get(J)I
    .locals 2
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-wide v0, p0, Lcom/itextpdf/io/source/RAFRandomAccessSource;->length:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 79
    const/4 v0, -0x1

    return v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/source/RAFRandomAccessSource;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/itextpdf/io/source/RAFRandomAccessSource;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/source/RAFRandomAccessSource;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0
.end method

.method public get(J[BII)I
    .locals 2
    .param p1, "position"    # J
    .param p3, "bytes"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-wide v0, p0, Lcom/itextpdf/io/source/RAFRandomAccessSource;->length:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 94
    const/4 v0, -0x1

    return v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/source/RAFRandomAccessSource;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/itextpdf/io/source/RAFRandomAccessSource;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/source/RAFRandomAccessSource;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p3, p4, p5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/itextpdf/io/source/RAFRandomAccessSource;->length:J

    return-wide v0
.end method
