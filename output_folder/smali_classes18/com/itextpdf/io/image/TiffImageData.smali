.class public Lcom/itextpdf/io/image/TiffImageData;
.super Lcom/itextpdf/io/image/RawImageData;
.source "TiffImageData.java"


# instance fields
.field private direct:Z

.field private page:I

.field private recoverFromImageError:Z


# direct methods
.method protected constructor <init>(Ljava/net/URL;ZIZ)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "recoverFromImageError"    # Z
    .param p3, "page"    # I
    .param p4, "direct"    # Z

    .line 61
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->TIFF:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/image/RawImageData;-><init>(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 62
    iput-boolean p2, p0, Lcom/itextpdf/io/image/TiffImageData;->recoverFromImageError:Z

    .line 63
    iput p3, p0, Lcom/itextpdf/io/image/TiffImageData;->page:I

    .line 64
    iput-boolean p4, p0, Lcom/itextpdf/io/image/TiffImageData;->direct:Z

    .line 65
    return-void
.end method

.method protected constructor <init>([BZIZ)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "recoverFromImageError"    # Z
    .param p3, "page"    # I
    .param p4, "direct"    # Z

    .line 68
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->TIFF:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/image/RawImageData;-><init>([BLcom/itextpdf/io/image/ImageType;)V

    .line 69
    iput-boolean p2, p0, Lcom/itextpdf/io/image/TiffImageData;->recoverFromImageError:Z

    .line 70
    iput p3, p0, Lcom/itextpdf/io/image/TiffImageData;->page:I

    .line 71
    iput-boolean p4, p0, Lcom/itextpdf/io/image/TiffImageData;->direct:Z

    .line 72
    return-void
.end method

.method private static getImage(Ljava/net/URL;ZIZ)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "recoverFromImageError"    # Z
    .param p2, "page"    # I
    .param p3, "direct"    # Z

    .line 75
    new-instance v0, Lcom/itextpdf/io/image/TiffImageData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/itextpdf/io/image/TiffImageData;-><init>(Ljava/net/URL;ZIZ)V

    return-object v0
.end method

.method private static getImage([BZIZ)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "recoverFromImageError"    # Z
    .param p2, "page"    # I
    .param p3, "direct"    # Z

    .line 79
    new-instance v0, Lcom/itextpdf/io/image/TiffImageData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/itextpdf/io/image/TiffImageData;-><init>([BZIZ)V

    return-object v0
.end method

.method public static getNumberOfPages(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I
    .locals 3
    .param p0, "raf"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 89
    :try_start_0
    invoke-static {p0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getNumDirectories(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "TIFF image exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getNumberOfPages([B)I
    .locals 2
    .param p0, "bytes"    # [B

    .line 100
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v0, p0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0

    .line 101
    .local v0, "ras":Lcom/itextpdf/io/source/IRandomAccessSource;
    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-static {v1}, Lcom/itextpdf/io/image/TiffImageData;->getNumberOfPages(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public getPage()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/itextpdf/io/image/TiffImageData;->page:I

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/itextpdf/io/image/TiffImageData;->direct:Z

    return v0
.end method

.method public isRecoverFromImageError()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/itextpdf/io/image/TiffImageData;->recoverFromImageError:Z

    return v0
.end method

.method public setOriginalType(Lcom/itextpdf/io/image/ImageType;)V
    .locals 0
    .param p1, "originalType"    # Lcom/itextpdf/io/image/ImageType;

    .line 117
    iput-object p1, p0, Lcom/itextpdf/io/image/TiffImageData;->originalType:Lcom/itextpdf/io/image/ImageType;

    .line 118
    return-void
.end method
