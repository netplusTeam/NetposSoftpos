.class final Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;
.super Lcom/bea/xml/stream/reader/XmlReader$BaseReader;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bea/xml/stream/reader/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Utf8Reader"
.end annotation


# instance fields
.field private nextChar:C


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 615
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;-><init>(Ljava/io/InputStream;)V

    .line 616
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 618
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public read([CII)I
    .locals 10
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .line 624
    .local v1, "c":I
    const/4 v2, 0x0

    if-gtz p3, :cond_0

    .line 625
    return v2

    .line 629
    :cond_0
    add-int v3, p2, p3

    array-length v4, p1

    if-gt v3, v4, :cond_12

    if-ltz p2, :cond_12

    .line 633
    iget-char v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->nextChar:C

    if-eqz v3, :cond_1

    .line 634
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    add-int/2addr v0, p2

    aput-char v3, p1, v0

    .line 635
    iput-char v2, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->nextChar:C

    move v0, v4

    .line 638
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_1
    :goto_0
    if-ge v0, p3, :cond_f

    .line 640
    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    iget v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    if-gt v3, v4, :cond_3

    .line 641
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->instream:Ljava/io/InputStream;

    if-nez v3, :cond_2

    .line 642
    const/4 v1, -0x1

    .line 643
    goto/16 :goto_6

    .line 645
    :cond_2
    iput v2, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    .line 646
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->instream:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget-object v5, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    iput v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    .line 647
    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    if-gtz v3, :cond_3

    .line 648
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->close()V

    .line 649
    const/4 v1, -0x1

    .line 650
    goto/16 :goto_6

    .line 663
    :cond_3
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    aget-byte v3, v3, v4

    and-int/lit16 v1, v3, 0xff

    .line 664
    and-int/lit16 v3, v1, 0x80

    if-nez v3, :cond_4

    .line 666
    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    .line 667
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    add-int/2addr v0, p2

    int-to-char v4, v1

    aput-char v4, p1, v0

    .line 668
    move v0, v3

    goto :goto_0

    .line 675
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_4
    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    .line 679
    .local v3, "off":I
    const/16 v4, 0xc0

    :try_start_0
    iget-object v5, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    aget-byte v5, v5, v3

    const/16 v6, 0xe0

    and-int/2addr v5, v6

    if-ne v5, v4, :cond_5

    .line 680
    iget-object v5, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "off":I
    .local v6, "off":I
    :try_start_1
    aget-byte v3, v5, v3

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v1, v3, 0x6

    .line 681
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "off":I
    .local v5, "off":I
    :try_start_2
    aget-byte v3, v3, v6
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v1, v3

    .line 686
    goto/16 :goto_1

    .line 726
    :catch_0
    move-exception v3

    goto/16 :goto_2

    .end local v5    # "off":I
    .restart local v6    # "off":I
    :catch_1
    move-exception v3

    move v5, v6

    goto/16 :goto_2

    .line 686
    .end local v6    # "off":I
    .restart local v3    # "off":I
    :cond_5
    :try_start_3
    iget-object v5, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    aget-byte v5, v5, v3

    const/16 v7, 0xf0

    and-int/2addr v5, v7

    if-ne v5, v6, :cond_6

    .line 687
    iget-object v5, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "off":I
    .restart local v6    # "off":I
    :try_start_4
    aget-byte v3, v5, v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v1, v3, 0xc

    .line 688
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "off":I
    .restart local v5    # "off":I
    :try_start_5
    aget-byte v3, v3, v6

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    .line 689
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "off":I
    .restart local v6    # "off":I
    :try_start_6
    aget-byte v3, v3, v5
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v1, v3

    .line 694
    move v5, v6

    goto :goto_1

    .end local v6    # "off":I
    .restart local v3    # "off":I
    :cond_6
    :try_start_7
    iget-object v5, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    aget-byte v5, v5, v3

    and-int/lit16 v5, v5, 0xf8

    if-ne v5, v7, :cond_9

    .line 695
    iget-object v5, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "off":I
    .restart local v6    # "off":I
    :try_start_8
    aget-byte v3, v5, v3

    and-int/lit8 v3, v3, 0x7

    shl-int/lit8 v1, v3, 0x12

    .line 696
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "off":I
    .restart local v5    # "off":I
    :try_start_9
    aget-byte v3, v3, v6

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0xc

    add-int/2addr v1, v3

    .line 697
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "off":I
    .restart local v6    # "off":I
    :try_start_a
    aget-byte v3, v3, v5

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    .line 698
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_1

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "off":I
    .restart local v5    # "off":I
    :try_start_b
    aget-byte v3, v3, v6

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v1, v3

    .line 703
    const v3, 0x10ffff

    if-gt v1, v3, :cond_8

    .line 710
    const v3, 0xffff

    if-le v1, v3, :cond_7

    .line 712
    const/high16 v3, 0x10000

    sub-int/2addr v1, v3

    .line 713
    const v3, 0xdc00

    and-int/lit16 v6, v1, 0x3ff

    add-int/2addr v6, v3

    int-to-char v3, v6

    iput-char v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->nextChar:C

    .line 714
    const v3, 0xd800

    shr-int/lit8 v6, v1, 0xa

    add-int v1, v6, v3

    .line 729
    :cond_7
    :goto_1
    goto :goto_3

    .line 704
    :cond_8
    new-instance v3, Ljava/io/CharConversionException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "UTF-8 encoding of character 0x00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " can\'t be converted to Unicode."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "i":I
    .end local v1    # "c":I
    .end local v5    # "off":I
    .end local p1    # "buf":[C
    .end local p2    # "offset":I
    .end local p3    # "len":I
    throw v3
    :try_end_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_0

    .line 719
    .restart local v0    # "i":I
    .restart local v1    # "c":I
    .restart local v3    # "off":I
    .restart local p1    # "buf":[C
    .restart local p2    # "offset":I
    .restart local p3    # "len":I
    :cond_9
    :try_start_c
    new-instance v5, Ljava/io/CharConversionException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unconvertible UTF-8 character beginning with 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v8, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "i":I
    .end local v1    # "c":I
    .end local v3    # "off":I
    .end local p1    # "buf":[C
    .end local p2    # "offset":I
    .end local p3    # "len":I
    throw v5
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_2

    .line 726
    .restart local v0    # "i":I
    .restart local v1    # "c":I
    .restart local v3    # "off":I
    .restart local p1    # "buf":[C
    .restart local p2    # "offset":I
    .restart local p3    # "len":I
    :catch_2
    move-exception v5

    move-object v9, v5

    move v5, v3

    move-object v3, v9

    .line 728
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v5    # "off":I
    :goto_2
    const/4 v1, 0x0

    .line 737
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_3
    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    if-le v5, v3, :cond_b

    .line 738
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    iget-object v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v7, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    iget v8, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 740
    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    iget v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    .line 741
    iput v2, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    .line 742
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->instream:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    iget-object v7, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    array-length v7, v7

    iget v8, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 744
    .end local v5    # "off":I
    .local v3, "off":I
    if-ltz v3, :cond_a

    .line 749
    iget v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->finish:I

    .line 750
    goto/16 :goto_0

    .line 745
    :cond_a
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->close()V

    .line 746
    new-instance v2, Ljava/io/CharConversionException;

    const-string v4, "Partial UTF-8 char"

    invoke-direct {v2, v4}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 756
    .end local v3    # "off":I
    .restart local v5    # "off":I
    :cond_b
    :goto_4
    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    iget v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    if-ge v3, v5, :cond_d

    .line 757
    iget-object v3, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->buffer:[B

    iget v6, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->start:I

    aget-byte v3, v3, v6

    and-int/2addr v3, v4

    const/16 v6, 0x80

    if-ne v3, v6, :cond_c

    .line 756
    goto :goto_4

    .line 758
    :cond_c
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->close()V

    .line 759
    new-instance v2, Ljava/io/CharConversionException;

    const-string v3, "Malformed UTF-8 char -- is an XML encoding declaration missing?"

    invoke-direct {v2, v3}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 769
    :cond_d
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    add-int/2addr v0, p2

    int-to-char v4, v1

    aput-char v4, p1, v0

    .line 770
    iget-char v0, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->nextChar:C

    if-eqz v0, :cond_e

    if-ge v3, p3, :cond_e

    .line 771
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    add-int/2addr v3, p2

    aput-char v0, p1, v3

    .line 772
    iput-char v2, p0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;->nextChar:C

    move v0, v4

    goto :goto_5

    .line 774
    .end local v4    # "i":I
    .end local v5    # "off":I
    .restart local v3    # "i":I
    :cond_e
    move v0, v3

    .end local v3    # "i":I
    .restart local v0    # "i":I
    :goto_5
    goto/16 :goto_0

    .line 775
    :cond_f
    :goto_6
    if-lez v0, :cond_10

    .line 776
    return v0

    .line 777
    :cond_10
    const/4 v3, -0x1

    if-ne v1, v3, :cond_11

    move v2, v3

    :cond_11
    return v2

    .line 630
    :cond_12
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method
