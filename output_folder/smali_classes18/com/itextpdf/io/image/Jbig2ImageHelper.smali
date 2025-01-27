.class Lcom/itextpdf/io/image/Jbig2ImageHelper;
.super Ljava/lang/Object;
.source "Jbig2ImageHelper.java"


# instance fields
.field private globals:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGlobalSegment(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)[B
    .locals 2
    .param p0, "ra"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 67
    :try_start_0
    new-instance v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 68
    .local v0, "sr":Lcom/itextpdf/io/codec/Jbig2SegmentReader;
    invoke-virtual {v0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->read()V

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->getGlobal(Z)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 70
    .end local v0    # "sr":Lcom/itextpdf/io/codec/Jbig2SegmentReader;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static processImage(Lcom/itextpdf/io/image/ImageData;)V
    .locals 9
    .param p0, "jbig2"    # Lcom/itextpdf/io/image/ImageData;

    .line 76
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->JBIG2:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_2

    .line 78
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/io/image/Jbig2ImageData;

    .line 81
    .local v0, "image":Lcom/itextpdf/io/image/Jbig2ImageData;
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/io/image/Jbig2ImageData;->getData()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/itextpdf/io/image/Jbig2ImageData;->loadData()V

    .line 84
    :cond_0
    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v0}, Lcom/itextpdf/io/image/Jbig2ImageData;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    .line 85
    .local v1, "ras":Lcom/itextpdf/io/source/IRandomAccessSource;
    new-instance v2, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-direct {v2, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 86
    .local v2, "raf":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    new-instance v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader;

    invoke-direct {v3, v2}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 87
    .local v3, "sr":Lcom/itextpdf/io/codec/Jbig2SegmentReader;
    invoke-virtual {v3}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->read()V

    .line 88
    invoke-virtual {v0}, Lcom/itextpdf/io/image/Jbig2ImageData;->getPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->getPage(I)Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;

    move-result-object v4

    .line 89
    .local v4, "p":Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;
    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V

    .line 91
    iget v5, v4, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->pageBitmapHeight:I

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/io/image/Jbig2ImageData;->setHeight(F)V

    .line 92
    iget v5, v4, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->pageBitmapWidth:I

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/io/image/Jbig2ImageData;->setWidth(F)V

    .line 93
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/itextpdf/io/image/Jbig2ImageData;->setBpc(I)V

    .line 94
    invoke-virtual {v0, v5}, Lcom/itextpdf/io/image/Jbig2ImageData;->setColorSpace(I)V

    .line 96
    invoke-virtual {v3, v5}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->getGlobal(Z)[B

    move-result-object v6

    .line 102
    .local v6, "globals":[B
    if-eqz v6, :cond_1

    .line 103
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v7, "decodeParms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "JBIG2Globals"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iput-object v7, v0, Lcom/itextpdf/io/image/Jbig2ImageData;->decodeParms:Ljava/util/Map;

    .line 110
    .end local v7    # "decodeParms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-string v7, "JBIG2Decode"

    invoke-virtual {v0, v7}, Lcom/itextpdf/io/image/Jbig2ImageData;->setFilter(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v5}, Lcom/itextpdf/io/image/Jbig2ImageData;->setColorSpace(I)V

    .line 112
    invoke-virtual {v0, v5}, Lcom/itextpdf/io/image/Jbig2ImageData;->setBpc(I)V

    .line 113
    invoke-virtual {v4, v5}, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->getData(Z)[B

    move-result-object v5

    iput-object v5, v0, Lcom/itextpdf/io/image/Jbig2ImageData;->data:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "ras":Lcom/itextpdf/io/source/IRandomAccessSource;
    .end local v2    # "raf":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .end local v3    # "sr":Lcom/itextpdf/io/codec/Jbig2SegmentReader;
    .end local v4    # "p":Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;
    .end local v6    # "globals":[B
    nop

    .line 117
    return-void

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "JBIG2 image exception."

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 77
    .end local v0    # "image":Lcom/itextpdf/io/image/Jbig2ImageData;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JBIG2 image expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
