.class public Lcom/itextpdf/io/image/PngImageData;
.super Lcom/itextpdf/io/image/RawImageData;
.source "PngImageData.java"


# instance fields
.field private colorPalette:[B

.field private colorType:I

.field private gamma:F

.field private pngChromaticities:Lcom/itextpdf/io/image/PngChromaticities;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .line 60
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->PNG:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/image/RawImageData;-><init>(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itextpdf/io/image/PngImageData;->gamma:F

    .line 61
    return-void
.end method

.method protected constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .line 56
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->PNG:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/image/RawImageData;-><init>([BLcom/itextpdf/io/image/ImageType;)V

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itextpdf/io/image/PngImageData;->gamma:F

    .line 57
    return-void
.end method


# virtual methods
.method public getColorPalette()[B
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/itextpdf/io/image/PngImageData;->colorPalette:[B

    return-object v0
.end method

.method public getColorType()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/itextpdf/io/image/PngImageData;->colorType:I

    return v0
.end method

.method public getGamma()F
    .locals 1

    .line 72
    iget v0, p0, Lcom/itextpdf/io/image/PngImageData;->gamma:F

    return v0
.end method

.method public getPngChromaticities()Lcom/itextpdf/io/image/PngChromaticities;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/itextpdf/io/image/PngImageData;->pngChromaticities:Lcom/itextpdf/io/image/PngChromaticities;

    return-object v0
.end method

.method public isGrayscaleImage()Z
    .locals 1

    .line 104
    iget v0, p0, Lcom/itextpdf/io/image/PngImageData;->colorType:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHasCHRM()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/itextpdf/io/image/PngImageData;->pngChromaticities:Lcom/itextpdf/io/image/PngChromaticities;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIndexed()Z
    .locals 2

    .line 100
    iget v0, p0, Lcom/itextpdf/io/image/PngImageData;->colorType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setColorPalette([B)V
    .locals 0
    .param p1, "colorPalette"    # [B

    .line 68
    iput-object p1, p0, Lcom/itextpdf/io/image/PngImageData;->colorPalette:[B

    .line 69
    return-void
.end method

.method public setColorType(I)V
    .locals 0
    .param p1, "colorType"    # I

    .line 96
    iput p1, p0, Lcom/itextpdf/io/image/PngImageData;->colorType:I

    .line 97
    return-void
.end method

.method public setGamma(F)V
    .locals 0
    .param p1, "gamma"    # F

    .line 76
    iput p1, p0, Lcom/itextpdf/io/image/PngImageData;->gamma:F

    .line 77
    return-void
.end method

.method public setPngChromaticities(Lcom/itextpdf/io/image/PngChromaticities;)V
    .locals 0
    .param p1, "pngChromaticities"    # Lcom/itextpdf/io/image/PngChromaticities;

    .line 88
    iput-object p1, p0, Lcom/itextpdf/io/image/PngImageData;->pngChromaticities:Lcom/itextpdf/io/image/PngChromaticities;

    .line 89
    return-void
.end method
