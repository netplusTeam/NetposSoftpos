.class final Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;
.super Lcom/bea/xml/stream/reader/XmlReader$BaseReader;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bea/xml/stream/reader/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Iso8859_1Reader"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .line 842
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 844
    const-string v0, "ISO-8859-1"

    return-object v0
.end method

.method public read([CII)I
    .locals 6
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->instream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 849
    return v1

    .line 853
    :cond_0
    add-int v0, p2, p3

    array-length v2, p1

    if-gt v0, v2, :cond_5

    if-ltz p2, :cond_5

    .line 861
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->finish:I

    iget v2, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->start:I

    sub-int/2addr v0, v2

    .line 862
    .local v0, "avail":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    .line 863
    const/4 v2, 0x0

    iput v2, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->start:I

    .line 864
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->instream:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->buffer:[B

    iget-object v5, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->buffer:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    iput v2, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->finish:I

    .line 865
    iget v2, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->finish:I

    if-gtz v2, :cond_1

    .line 866
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->close()V

    .line 867
    return v1

    .line 869
    :cond_1
    iget v1, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->finish:I

    if-le p3, v1, :cond_3

    .line 870
    iget p3, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->finish:I

    .line 871
    goto :goto_0

    .line 873
    :cond_2
    if-le p3, v0, :cond_3

    .line 874
    move p3, v0

    .line 878
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_4

    .line 879
    add-int v2, p2, v1

    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->buffer:[B

    iget v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->start:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;->start:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, p1, v2

    .line 878
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 881
    .end local v1    # "i":I
    :cond_4
    return p3

    .line 854
    .end local v0    # "avail":I
    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
