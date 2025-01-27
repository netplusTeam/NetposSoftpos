.class final Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;
.super Lcom/bea/xml/stream/reader/XmlReader$BaseReader;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bea/xml/stream/reader/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsciiReader"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .line 791
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 793
    const-string v0, "US-ASCII"

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

    .line 797
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->instream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 798
    return v1

    .line 803
    :cond_0
    add-int v0, p2, p3

    array-length v2, p1

    if-gt v0, v2, :cond_6

    if-ltz p2, :cond_6

    .line 811
    iget v0, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->finish:I

    iget v2, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->start:I

    sub-int/2addr v0, v2

    .line 812
    .local v0, "avail":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    .line 813
    const/4 v2, 0x0

    iput v2, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->start:I

    .line 814
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->instream:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->buffer:[B

    iget-object v5, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->buffer:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    iput v2, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->finish:I

    .line 815
    iget v2, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->finish:I

    if-gtz v2, :cond_1

    .line 816
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->close()V

    .line 817
    return v1

    .line 819
    :cond_1
    iget v1, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->finish:I

    if-le p3, v1, :cond_3

    .line 820
    iget p3, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->finish:I

    .line 821
    goto :goto_0

    .line 823
    :cond_2
    if-le p3, v0, :cond_3

    .line 824
    move p3, v0

    .line 828
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_5

    .line 829
    iget-object v2, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->buffer:[B

    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->start:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;->start:I

    aget-byte v2, v2, v3

    .line 830
    .local v2, "c":I
    if-ltz v2, :cond_4

    .line 834
    add-int v3, p2, v1

    int-to-char v4, v2

    aput-char v4, p1, v3

    .line 828
    .end local v2    # "c":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 831
    .restart local v2    # "c":I
    :cond_4
    new-instance v3, Ljava/io/CharConversionException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Illegal ASCII character, 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    and-int/lit16 v5, v2, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 836
    .end local v1    # "i":I
    .end local v2    # "c":I
    :cond_5
    return p3

    .line 804
    .end local v0    # "avail":I
    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
