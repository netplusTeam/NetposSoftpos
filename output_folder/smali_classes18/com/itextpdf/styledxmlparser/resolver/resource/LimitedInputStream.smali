.class Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;
.super Ljava/io/InputStream;
.source "LimitedInputStream.java"


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private isLimitViolated:Z

.field private isStreamRead:Z

.field private readingByteLimit:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "readingByteLimit"    # J

    .line 50
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 51
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->isStreamRead:Z

    .line 55
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->isLimitViolated:Z

    .line 56
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->inputStream:Ljava/io/InputStream;

    .line 57
    iput-wide p2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->readingByteLimit:J

    .line 58
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The reading byte limit argument must not be less than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkReadingByteLimit(I)V
    .locals 5
    .param p1, "byteValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/styledxmlparser/resolver/resource/ReadingByteLimitException;
        }
    .end annotation

    .line 164
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 165
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->isStreamRead:Z

    goto :goto_0

    .line 166
    :cond_0
    iget-wide v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->readingByteLimit:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_1
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->isLimitViolated:Z

    .line 168
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/resource/ReadingByteLimitException;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/ReadingByteLimitException;-><init>()V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 136
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 151
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->isStreamRead:Z

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, -0x1

    return v0

    .line 65
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->isLimitViolated:Z

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 70
    .local v0, "nextByte":I
    iget-wide v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->readingByteLimit:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->readingByteLimit:J

    .line 72
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->checkReadingByteLimit(I)V

    .line 73
    return v0

    .line 66
    .end local v0    # "nextByte":I
    :cond_1
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/resource/ReadingByteLimitException;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/ReadingByteLimitException;-><init>()V

    throw v0
.end method

.method public read([B)I
    .locals 6
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->isStreamRead:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 79
    return v1

    .line 81
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->isLimitViolated:Z

    if-nez v0, :cond_4

    .line 86
    array-length v0, p1

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->readingByteLimit:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 88
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [B

    .local v0, "validArray":[B
    goto :goto_0

    .line 93
    .end local v0    # "validArray":[B
    :cond_1
    long-to-int v0, v4

    new-array v0, v0, [B

    .line 95
    .restart local v0    # "validArray":[B
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 96
    .local v2, "numberOfReadingBytes":I
    if-eq v2, v1, :cond_2

    .line 97
    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    .end local v0    # "validArray":[B
    :cond_2
    goto :goto_1

    .line 100
    .end local v2    # "numberOfReadingBytes":I
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 102
    .restart local v2    # "numberOfReadingBytes":I
    :goto_1
    iget-wide v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->readingByteLimit:J

    int-to-long v3, v2

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->readingByteLimit:J

    .line 104
    invoke-direct {p0, v2}, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->checkReadingByteLimit(I)V

    .line 105
    return v2

    .line 82
    .end local v2    # "numberOfReadingBytes":I
    :cond_4
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/resource/ReadingByteLimitException;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/ReadingByteLimitException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->isStreamRead:Z

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, -0x1

    return v0

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->isLimitViolated:Z

    if-nez v0, :cond_3

    .line 117
    int-to-long v0, p3

    iget-wide v2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->readingByteLimit:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 118
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 120
    const/4 p3, 0x1

    goto :goto_0

    .line 123
    :cond_1
    long-to-int p3, v2

    .line 126
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 127
    .local v0, "numberOfReadingBytes":I
    iget-wide v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->readingByteLimit:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->readingByteLimit:J

    .line 129
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->checkReadingByteLimit(I)V

    .line 130
    return v0

    .line 114
    .end local v0    # "numberOfReadingBytes":I
    :cond_3
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/resource/ReadingByteLimitException;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/ReadingByteLimitException;-><init>()V

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 156
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
