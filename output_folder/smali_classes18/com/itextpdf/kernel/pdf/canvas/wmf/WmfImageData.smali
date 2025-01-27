.class public Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;
.super Lcom/itextpdf/io/image/ImageData;
.source "WmfImageData.java"


# static fields
.field private static final wmf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->wmf:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x29t
        -0x33t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 71
    invoke-static {p1}, Lcom/itextpdf/io/util/UrlUtil;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;-><init>(Ljava/net/URL;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    .line 80
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->WMF:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/image/ImageData;-><init>(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 81
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->readImageType(Ljava/net/URL;)[B

    move-result-object v0

    .line 82
    .local v0, "imageType":[B
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->wmf:[B

    invoke-static {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->imageTypeIs([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    return-void

    .line 83
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Not a WMF image."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .line 93
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->WMF:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/image/ImageData;-><init>([BLcom/itextpdf/io/image/ImageType;)V

    .line 94
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->readImageType([B)[B

    move-result-object v0

    .line 95
    .local v0, "imageType":[B
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->wmf:[B

    invoke-static {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->imageTypeIs([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    return-void

    .line 96
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Not a WMF image."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static imageTypeIs([B[B)Z
    .locals 3
    .param p0, "imageType"    # [B
    .param p1, "compareWith"    # [B

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 102
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 103
    const/4 v1, 0x0

    return v1

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static readImageType(Ljava/net/URL;)[B
    .locals 4
    .param p0, "source"    # Ljava/net/URL;

    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 112
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 113
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    nop

    .line 118
    if-eqz v0, :cond_0

    .line 120
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    goto :goto_0

    .line 121
    :catch_0
    move-exception v2

    .line 114
    :cond_0
    :goto_0
    return-object v1

    .line 118
    .end local v1    # "bytes":[B
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 115
    :catch_1
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "I/O exception."

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "is":Ljava/io/InputStream;
    .end local p0    # "source":Ljava/net/URL;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local p0    # "source":Ljava/net/URL;
    :goto_1
    if-eqz v0, :cond_1

    .line 120
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 122
    goto :goto_2

    .line 121
    :catch_2
    move-exception v2

    .line 124
    :cond_1
    :goto_2
    throw v1
.end method

.method private static readImageType([B)[B
    .locals 2
    .param p0, "bytes"    # [B

    .line 129
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method
