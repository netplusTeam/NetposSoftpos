.class public final Lcom/itextpdf/io/image/ImageDataFactory;
.super Ljava/lang/Object;
.source "ImageDataFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static create(IIII[B[I)Lcom/itextpdf/io/image/ImageData;
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "components"    # I
    .param p3, "bpc"    # I
    .param p4, "data"    # [B
    .param p5, "transparency"    # [I

    .line 164
    if-eqz p5, :cond_1

    array-length v0, p5

    mul-int/lit8 v1, p2, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Transparency length must be equal to 2 with CCITT images"

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    if-ne p3, v0, :cond_2

    .line 167
    invoke-static {p4, p0, p1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->compress([BII)[B

    move-result-object v0

    .line 168
    .local v0, "g4":[B
    const/4 v3, 0x0

    const/16 v4, 0x100

    const/4 v5, 0x1

    move v1, p0

    move v2, p1

    move-object v6, v0

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/itextpdf/io/image/ImageDataFactory;->create(IIZII[B[I)Lcom/itextpdf/io/image/ImageData;

    move-result-object v1

    return-object v1

    .line 170
    .end local v0    # "g4":[B
    :cond_2
    new-instance v1, Lcom/itextpdf/io/image/RawImageData;

    sget-object v2, Lcom/itextpdf/io/image/ImageType;->RAW:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {v1, p4, v2}, Lcom/itextpdf/io/image/RawImageData;-><init>([BLcom/itextpdf/io/image/ImageType;)V

    .line 171
    .local v1, "image":Lcom/itextpdf/io/image/RawImageData;
    int-to-float v2, p1

    iput v2, v1, Lcom/itextpdf/io/image/RawImageData;->height:F

    .line 172
    int-to-float v2, p0

    iput v2, v1, Lcom/itextpdf/io/image/RawImageData;->width:F

    .line 173
    const/4 v2, 0x4

    if-eq p2, v0, :cond_4

    const/4 v3, 0x3

    if-eq p2, v3, :cond_4

    if-ne p2, v2, :cond_3

    goto :goto_1

    .line 174
    :cond_3
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v2, "Components must be 1, 3 or 4."

    invoke-direct {v0, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_4
    :goto_1
    if-eq p3, v0, :cond_6

    const/4 v0, 0x2

    if-eq p3, v0, :cond_6

    if-eq p3, v2, :cond_6

    const/16 v0, 0x8

    if-ne p3, v0, :cond_5

    goto :goto_2

    .line 176
    :cond_5
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v2, "Bits per component must be 1, 2, 4 or 8."

    invoke-direct {v0, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_6
    :goto_2
    iput p2, v1, Lcom/itextpdf/io/image/RawImageData;->colorSpace:I

    .line 178
    iput p3, v1, Lcom/itextpdf/io/image/RawImageData;->bpc:I

    .line 179
    iput-object p4, v1, Lcom/itextpdf/io/image/RawImageData;->data:[B

    .line 180
    iput-object p5, v1, Lcom/itextpdf/io/image/RawImageData;->transparency:[I

    .line 181
    return-object v1
.end method

.method public static create(IIZII[B[I)Lcom/itextpdf/io/image/ImageData;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "reverseBits"    # Z
    .param p3, "typeCCITT"    # I
    .param p4, "parameters"    # I
    .param p5, "data"    # [B
    .param p6, "transparency"    # [I

    .line 136
    if-eqz p6, :cond_1

    array-length v0, p6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Transparency length must be equal to 2 with CCITT images"

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    :goto_0
    const/16 v0, 0x100

    if-eq p3, v0, :cond_3

    const/16 v0, 0x101

    if-eq p3, v0, :cond_3

    const/16 v0, 0x102

    if-ne p3, v0, :cond_2

    goto :goto_1

    .line 139
    :cond_2
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "CCITT compression type must be CCITTG4, CCITTG3_1D or CCITTG3_2D."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 141
    invoke-static {p5}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->reverseBits([B)V

    .line 142
    :cond_4
    new-instance v0, Lcom/itextpdf/io/image/RawImageData;

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->RAW:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {v0, p5, v1}, Lcom/itextpdf/io/image/RawImageData;-><init>([BLcom/itextpdf/io/image/ImageType;)V

    .line 143
    .local v0, "image":Lcom/itextpdf/io/image/RawImageData;
    invoke-virtual {v0, p3}, Lcom/itextpdf/io/image/RawImageData;->setTypeCcitt(I)V

    .line 144
    int-to-float v1, p1

    iput v1, v0, Lcom/itextpdf/io/image/RawImageData;->height:F

    .line 145
    int-to-float v1, p0

    iput v1, v0, Lcom/itextpdf/io/image/RawImageData;->width:F

    .line 146
    iput p4, v0, Lcom/itextpdf/io/image/RawImageData;->colorSpace:I

    .line 147
    iput-object p6, v0, Lcom/itextpdf/io/image/RawImageData;->transparency:[I

    .line 148
    return-object v0
.end method

.method public static create(Ljava/awt/Image;Ljava/awt/Color;)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "image"    # Ljava/awt/Image;
    .param p1, "color"    # Ljava/awt/Color;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->create(Ljava/awt/Image;Ljava/awt/Color;Z)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/awt/Image;Ljava/awt/Color;Z)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "image"    # Ljava/awt/Image;
    .param p1, "color"    # Ljava/awt/Color;
    .param p2, "forceBW"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-static {p0, p1, p2}, Lcom/itextpdf/io/image/AwtImageDataFactory;->create(Ljava/awt/Image;Ljava/awt/Color;Z)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->create(Ljava/lang/String;Z)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Z)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "recoverImage"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 108
    invoke-static {p0}, Lcom/itextpdf/io/util/UrlUtil;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/itextpdf/io/image/ImageDataFactory;->create(Ljava/net/URL;Z)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/net/URL;)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;

    .line 97
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->create(Ljava/net/URL;Z)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/net/URL;Z)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "recoverImage"    # Z

    .line 88
    invoke-static {p0, p1}, Lcom/itextpdf/io/image/ImageDataFactory;->createImageInstance(Ljava/net/URL;Z)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static create([B)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "bytes"    # [B

    .line 78
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->create([BZ)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static create([BZ)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "recoverImage"    # Z

    .line 69
    invoke-static {p0, p1}, Lcom/itextpdf/io/image/ImageDataFactory;->createImageInstance([BZ)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static createBmp(Ljava/net/URL;Z)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "noHeader"    # Z

    .line 217
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->createBmp(Ljava/net/URL;ZI)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static createBmp(Ljava/net/URL;ZI)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "noHeader"    # Z
    .param p2, "size"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->BMP:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 232
    new-instance v0, Lcom/itextpdf/io/image/BmpImageData;

    invoke-direct {v0, p0, p1, p2}, Lcom/itextpdf/io/image/BmpImageData;-><init>(Ljava/net/URL;ZI)V

    .line 233
    .local v0, "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v0}, Lcom/itextpdf/io/image/BmpImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 234
    return-object v0
.end method

.method public static createBmp([BZ)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "noHeader"    # Z

    .line 245
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->createBmp([BZI)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static createBmp([BZI)Lcom/itextpdf/io/image/ImageData;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "noHeader"    # Z
    .param p2, "size"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->detectImageType([B)Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->BMP:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BMP image expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    :goto_0
    new-instance v0, Lcom/itextpdf/io/image/BmpImageData;

    invoke-direct {v0, p0, p1, p2}, Lcom/itextpdf/io/image/BmpImageData;-><init>([BZI)V

    .line 261
    .local v0, "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v0}, Lcom/itextpdf/io/image/BmpImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 262
    return-object v0
.end method

.method public static createGif([B)Lcom/itextpdf/io/image/GifImageData;
    .locals 1
    .param p0, "bytes"    # [B

    .line 274
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->GIF:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType([BLcom/itextpdf/io/image/ImageType;)V

    .line 275
    new-instance v0, Lcom/itextpdf/io/image/GifImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/GifImageData;-><init>([B)V

    .line 276
    .local v0, "image":Lcom/itextpdf/io/image/GifImageData;
    invoke-static {v0}, Lcom/itextpdf/io/image/GifImageHelper;->processImage(Lcom/itextpdf/io/image/GifImageData;)V

    .line 277
    return-object v0
.end method

.method public static createGifFrame(Ljava/net/URL;I)Lcom/itextpdf/io/image/ImageData;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "frame"    # I

    .line 288
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->createGifFrames(Ljava/net/URL;[I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/image/ImageData;

    return-object v0
.end method

.method public static createGifFrame([BI)Lcom/itextpdf/io/image/ImageData;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "frame"    # I

    .line 299
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->createGifFrames([B[I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/image/ImageData;

    return-object v0
.end method

.method public static createGifFrames(Ljava/net/URL;)Ljava/util/List;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/image/ImageData;",
            ">;"
        }
    .end annotation

    .line 348
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->GIF:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 349
    new-instance v0, Lcom/itextpdf/io/image/GifImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/GifImageData;-><init>(Ljava/net/URL;)V

    .line 350
    .local v0, "image":Lcom/itextpdf/io/image/GifImageData;
    invoke-static {v0}, Lcom/itextpdf/io/image/GifImageHelper;->processImage(Lcom/itextpdf/io/image/GifImageData;)V

    .line 351
    invoke-virtual {v0}, Lcom/itextpdf/io/image/GifImageData;->getFrames()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static createGifFrames(Ljava/net/URL;[I)Ljava/util/List;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "frameNumbers"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "[I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/image/ImageData;",
            ">;"
        }
    .end annotation

    .line 323
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->GIF:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 324
    new-instance v0, Lcom/itextpdf/io/image/GifImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/GifImageData;-><init>(Ljava/net/URL;)V

    .line 325
    .local v0, "image":Lcom/itextpdf/io/image/GifImageData;
    invoke-static {p1, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->processGifImageAndExtractFrames([ILcom/itextpdf/io/image/GifImageData;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static createGifFrames([B)Ljava/util/List;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/image/ImageData;",
            ">;"
        }
    .end annotation

    .line 335
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->GIF:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType([BLcom/itextpdf/io/image/ImageType;)V

    .line 336
    new-instance v0, Lcom/itextpdf/io/image/GifImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/GifImageData;-><init>([B)V

    .line 337
    .local v0, "image":Lcom/itextpdf/io/image/GifImageData;
    invoke-static {v0}, Lcom/itextpdf/io/image/GifImageHelper;->processImage(Lcom/itextpdf/io/image/GifImageData;)V

    .line 338
    invoke-virtual {v0}, Lcom/itextpdf/io/image/GifImageData;->getFrames()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static createGifFrames([B[I)Ljava/util/List;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "frameNumbers"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/image/ImageData;",
            ">;"
        }
    .end annotation

    .line 310
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->GIF:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType([BLcom/itextpdf/io/image/ImageType;)V

    .line 311
    new-instance v0, Lcom/itextpdf/io/image/GifImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/GifImageData;-><init>([B)V

    .line 312
    .local v0, "image":Lcom/itextpdf/io/image/GifImageData;
    invoke-static {p1, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->processGifImageAndExtractFrames([ILcom/itextpdf/io/image/GifImageData;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static createImageInstance(Ljava/net/URL;Z)Lcom/itextpdf/io/image/ImageData;
    .locals 4
    .param p0, "source"    # Ljava/net/URL;
    .param p1, "recoverImage"    # Z

    .line 486
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->detectImageType(Ljava/net/URL;)Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    .line 487
    .local v0, "imageType":Lcom/itextpdf/io/image/ImageType;
    sget-object v1, Lcom/itextpdf/io/image/ImageDataFactory$1;->$SwitchMap$com$itextpdf$io$image$ImageType:[I

    invoke-virtual {v0}, Lcom/itextpdf/io/image/ImageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 524
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Image format cannot be recognized."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 519
    :pswitch_0
    new-instance v1, Lcom/itextpdf/io/image/Jbig2ImageData;

    invoke-direct {v1, p0, v2}, Lcom/itextpdf/io/image/Jbig2ImageData;-><init>(Ljava/net/URL;I)V

    .line 520
    .local v1, "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v1}, Lcom/itextpdf/io/image/Jbig2ImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 521
    return-object v1

    .line 514
    .end local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    :pswitch_1
    new-instance v1, Lcom/itextpdf/io/image/TiffImageData;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/itextpdf/io/image/TiffImageData;-><init>(Ljava/net/URL;ZIZ)V

    .line 515
    .restart local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v1}, Lcom/itextpdf/io/image/TiffImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 516
    return-object v1

    .line 509
    .end local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    :pswitch_2
    new-instance v1, Lcom/itextpdf/io/image/BmpImageData;

    invoke-direct {v1, p0, v3}, Lcom/itextpdf/io/image/BmpImageData;-><init>(Ljava/net/URL;Z)V

    .line 510
    .restart local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 511
    return-object v1

    .line 504
    .end local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    :pswitch_3
    new-instance v1, Lcom/itextpdf/io/image/PngImageData;

    invoke-direct {v1, p0}, Lcom/itextpdf/io/image/PngImageData;-><init>(Ljava/net/URL;)V

    .line 505
    .restart local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v1}, Lcom/itextpdf/io/image/PngImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 506
    return-object v1

    .line 499
    .end local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    :pswitch_4
    new-instance v1, Lcom/itextpdf/io/image/Jpeg2000ImageData;

    invoke-direct {v1, p0}, Lcom/itextpdf/io/image/Jpeg2000ImageData;-><init>(Ljava/net/URL;)V

    .line 500
    .restart local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 501
    return-object v1

    .line 494
    .end local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    :pswitch_5
    new-instance v1, Lcom/itextpdf/io/image/JpegImageData;

    invoke-direct {v1, p0}, Lcom/itextpdf/io/image/JpegImageData;-><init>(Ljava/net/URL;)V

    .line 495
    .restart local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v1}, Lcom/itextpdf/io/image/JpegImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 496
    return-object v1

    .line 489
    .end local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    :pswitch_6
    new-instance v1, Lcom/itextpdf/io/image/GifImageData;

    invoke-direct {v1, p0}, Lcom/itextpdf/io/image/GifImageData;-><init>(Ljava/net/URL;)V

    .line 490
    .local v1, "image":Lcom/itextpdf/io/image/GifImageData;
    invoke-static {v1, v3}, Lcom/itextpdf/io/image/GifImageHelper;->processImage(Lcom/itextpdf/io/image/GifImageData;I)V

    .line 491
    invoke-virtual {v1}, Lcom/itextpdf/io/image/GifImageData;->getFrames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/image/ImageData;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createImageInstance([BZ)Lcom/itextpdf/io/image/ImageData;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "recoverImage"    # Z

    .line 529
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->detectImageType([B)Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    .line 530
    .local v0, "imageType":Lcom/itextpdf/io/image/ImageType;
    sget-object v1, Lcom/itextpdf/io/image/ImageDataFactory$1;->$SwitchMap$com$itextpdf$io$image$ImageType:[I

    invoke-virtual {v0}, Lcom/itextpdf/io/image/ImageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 567
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Image format cannot be recognized."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 562
    :pswitch_0
    new-instance v1, Lcom/itextpdf/io/image/Jbig2ImageData;

    invoke-direct {v1, p0, v2}, Lcom/itextpdf/io/image/Jbig2ImageData;-><init>([BI)V

    .line 563
    .local v1, "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v1}, Lcom/itextpdf/io/image/Jbig2ImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 564
    return-object v1

    .line 557
    .end local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    :pswitch_1
    new-instance v1, Lcom/itextpdf/io/image/TiffImageData;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/itextpdf/io/image/TiffImageData;-><init>([BZIZ)V

    .line 558
    .restart local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v1}, Lcom/itextpdf/io/image/TiffImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 559
    return-object v1

    .line 552
    .end local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    :pswitch_2
    new-instance v1, Lcom/itextpdf/io/image/BmpImageData;

    invoke-direct {v1, p0, v3}, Lcom/itextpdf/io/image/BmpImageData;-><init>([BZ)V

    .line 553
    .restart local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 554
    return-object v1

    .line 547
    .end local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    :pswitch_3
    new-instance v1, Lcom/itextpdf/io/image/PngImageData;

    invoke-direct {v1, p0}, Lcom/itextpdf/io/image/PngImageData;-><init>([B)V

    .line 548
    .restart local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v1}, Lcom/itextpdf/io/image/PngImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 549
    return-object v1

    .line 542
    .end local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    :pswitch_4
    new-instance v1, Lcom/itextpdf/io/image/Jpeg2000ImageData;

    invoke-direct {v1, p0}, Lcom/itextpdf/io/image/Jpeg2000ImageData;-><init>([B)V

    .line 543
    .restart local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 544
    return-object v1

    .line 537
    .end local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    :pswitch_5
    new-instance v1, Lcom/itextpdf/io/image/JpegImageData;

    invoke-direct {v1, p0}, Lcom/itextpdf/io/image/JpegImageData;-><init>([B)V

    .line 538
    .restart local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v1}, Lcom/itextpdf/io/image/JpegImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 539
    return-object v1

    .line 532
    .end local v1    # "image":Lcom/itextpdf/io/image/ImageData;
    :pswitch_6
    new-instance v1, Lcom/itextpdf/io/image/GifImageData;

    invoke-direct {v1, p0}, Lcom/itextpdf/io/image/GifImageData;-><init>([B)V

    .line 533
    .local v1, "image":Lcom/itextpdf/io/image/GifImageData;
    invoke-static {v1, v3}, Lcom/itextpdf/io/image/GifImageHelper;->processImage(Lcom/itextpdf/io/image/GifImageData;I)V

    .line 534
    invoke-virtual {v1}, Lcom/itextpdf/io/image/GifImageData;->getFrames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/image/ImageData;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createJbig2(Ljava/net/URL;I)Lcom/itextpdf/io/image/ImageData;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "page"    # I

    .line 355
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 357
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JBIG2:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 358
    new-instance v0, Lcom/itextpdf/io/image/Jbig2ImageData;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/io/image/Jbig2ImageData;-><init>(Ljava/net/URL;I)V

    .line 359
    .local v0, "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v0}, Lcom/itextpdf/io/image/Jbig2ImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 360
    return-object v0

    .line 356
    .end local v0    # "image":Lcom/itextpdf/io/image/ImageData;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The page number must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createJbig2([BI)Lcom/itextpdf/io/image/ImageData;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "page"    # I

    .line 364
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 366
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JBIG2:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType([BLcom/itextpdf/io/image/ImageType;)V

    .line 367
    new-instance v0, Lcom/itextpdf/io/image/Jbig2ImageData;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/io/image/Jbig2ImageData;-><init>([BI)V

    .line 368
    .local v0, "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v0}, Lcom/itextpdf/io/image/Jbig2ImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 369
    return-object v0

    .line 365
    .end local v0    # "image":Lcom/itextpdf/io/image/ImageData;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The page number must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createJpeg(Ljava/net/URL;)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;

    .line 379
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 380
    new-instance v0, Lcom/itextpdf/io/image/JpegImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/JpegImageData;-><init>(Ljava/net/URL;)V

    .line 381
    .local v0, "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v0}, Lcom/itextpdf/io/image/JpegImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 382
    return-object v0
.end method

.method public static createJpeg([B)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "bytes"    # [B

    .line 386
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType([BLcom/itextpdf/io/image/ImageType;)V

    .line 387
    new-instance v0, Lcom/itextpdf/io/image/JpegImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/JpegImageData;-><init>([B)V

    .line 388
    .local v0, "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v0}, Lcom/itextpdf/io/image/JpegImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 389
    return-object v0
.end method

.method public static createJpeg2000(Ljava/net/URL;)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;

    .line 394
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG2000:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 395
    new-instance v0, Lcom/itextpdf/io/image/Jpeg2000ImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/Jpeg2000ImageData;-><init>(Ljava/net/URL;)V

    .line 396
    .local v0, "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 397
    return-object v0
.end method

.method public static createJpeg2000([B)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "bytes"    # [B

    .line 401
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG2000:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType([BLcom/itextpdf/io/image/ImageType;)V

    .line 402
    new-instance v0, Lcom/itextpdf/io/image/Jpeg2000ImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/Jpeg2000ImageData;-><init>([B)V

    .line 403
    .local v0, "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 404
    return-object v0
.end method

.method public static createPng(Ljava/net/URL;)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;

    .line 408
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->PNG:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 409
    new-instance v0, Lcom/itextpdf/io/image/PngImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/PngImageData;-><init>(Ljava/net/URL;)V

    .line 410
    .local v0, "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v0}, Lcom/itextpdf/io/image/PngImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 411
    return-object v0
.end method

.method public static createPng([B)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "bytes"    # [B

    .line 415
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->PNG:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType([BLcom/itextpdf/io/image/ImageType;)V

    .line 416
    new-instance v0, Lcom/itextpdf/io/image/PngImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/PngImageData;-><init>([B)V

    .line 417
    .local v0, "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v0}, Lcom/itextpdf/io/image/PngImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 418
    return-object v0
.end method

.method public static createRawImage([B)Lcom/itextpdf/io/image/ImageData;
    .locals 2
    .param p0, "bytes"    # [B

    .line 436
    new-instance v0, Lcom/itextpdf/io/image/RawImageData;

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->RAW:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/io/image/RawImageData;-><init>([BLcom/itextpdf/io/image/ImageType;)V

    return-object v0
.end method

.method public static createTiff(Ljava/net/URL;ZIZ)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "recoverFromImageError"    # Z
    .param p2, "page"    # I
    .param p3, "direct"    # Z

    .line 422
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->TIFF:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 423
    new-instance v0, Lcom/itextpdf/io/image/TiffImageData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/itextpdf/io/image/TiffImageData;-><init>(Ljava/net/URL;ZIZ)V

    .line 424
    .local v0, "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v0}, Lcom/itextpdf/io/image/TiffImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 425
    return-object v0
.end method

.method public static createTiff([BZIZ)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "recoverFromImageError"    # Z
    .param p2, "page"    # I
    .param p3, "direct"    # Z

    .line 429
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->TIFF:Lcom/itextpdf/io/image/ImageType;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->validateImageType([BLcom/itextpdf/io/image/ImageType;)V

    .line 430
    new-instance v0, Lcom/itextpdf/io/image/TiffImageData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/itextpdf/io/image/TiffImageData;-><init>([BZIZ)V

    .line 431
    .local v0, "image":Lcom/itextpdf/io/image/ImageData;
    invoke-static {v0}, Lcom/itextpdf/io/image/TiffImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    .line 432
    return-object v0
.end method

.method public static isSupportedType(Lcom/itextpdf/io/image/ImageType;)Z
    .locals 1
    .param p0, "imageType"    # Lcom/itextpdf/io/image/ImageType;

    .line 480
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->GIF:Lcom/itextpdf/io/image/ImageType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG2000:Lcom/itextpdf/io/image/ImageType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/itextpdf/io/image/ImageType;->PNG:Lcom/itextpdf/io/image/ImageType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/itextpdf/io/image/ImageType;->BMP:Lcom/itextpdf/io/image/ImageType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/itextpdf/io/image/ImageType;->TIFF:Lcom/itextpdf/io/image/ImageType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/itextpdf/io/image/ImageType;->JBIG2:Lcom/itextpdf/io/image/ImageType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupportedType(Ljava/net/URL;)Z
    .locals 2
    .param p0, "source"    # Ljava/net/URL;

    .line 464
    if-nez p0, :cond_0

    .line 465
    const/4 v0, 0x0

    return v0

    .line 467
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->detectImageType(Ljava/net/URL;)Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    .line 468
    .local v0, "imageType":Lcom/itextpdf/io/image/ImageType;
    invoke-static {v0}, Lcom/itextpdf/io/image/ImageDataFactory;->isSupportedType(Lcom/itextpdf/io/image/ImageType;)Z

    move-result v1

    return v1
.end method

.method public static isSupportedType([B)Z
    .locals 2
    .param p0, "source"    # [B

    .line 448
    if-nez p0, :cond_0

    .line 449
    const/4 v0, 0x0

    return v0

    .line 451
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->detectImageType([B)Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    .line 452
    .local v0, "imageType":Lcom/itextpdf/io/image/ImageType;
    invoke-static {v0}, Lcom/itextpdf/io/image/ImageDataFactory;->isSupportedType(Lcom/itextpdf/io/image/ImageType;)Z

    move-result v1

    return v1
.end method

.method private static processGifImageAndExtractFrames([ILcom/itextpdf/io/image/GifImageData;)Ljava/util/List;
    .locals 6
    .param p0, "frameNumbers"    # [I
    .param p1, "image"    # Lcom/itextpdf/io/image/GifImageData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lcom/itextpdf/io/image/GifImageData;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/image/ImageData;",
            ">;"
        }
    .end annotation

    .line 572
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    .line 573
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/itextpdf/io/image/GifImageHelper;->processImage(Lcom/itextpdf/io/image/GifImageData;I)V

    .line 574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v0, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/image/ImageData;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 576
    .local v3, "frame":I
    invoke-virtual {p1}, Lcom/itextpdf/io/image/GifImageData;->getFrames()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    .end local v3    # "frame":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    :cond_0
    return-object v0
.end method

.method private static validateImageType(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V
    .locals 4
    .param p0, "imageUrl"    # Ljava/net/URL;
    .param p1, "expectedType"    # Lcom/itextpdf/io/image/ImageType;

    .line 590
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->detectImageType(Ljava/net/URL;)Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    .line 591
    .local v0, "detectedType":Lcom/itextpdf/io/image/ImageType;
    if-ne v0, p1, :cond_0

    .line 595
    return-void

    .line 592
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " image expected. Detected image type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 593
    invoke-virtual {v0}, Lcom/itextpdf/io/image/ImageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static validateImageType([BLcom/itextpdf/io/image/ImageType;)V
    .locals 4
    .param p0, "image"    # [B
    .param p1, "expectedType"    # Lcom/itextpdf/io/image/ImageType;

    .line 582
    invoke-static {p0}, Lcom/itextpdf/io/image/ImageTypeDetector;->detectImageType([B)Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    .line 583
    .local v0, "detectedType":Lcom/itextpdf/io/image/ImageType;
    if-ne v0, p1, :cond_0

    .line 587
    return-void

    .line 584
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " image expected. Detected image type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 585
    invoke-virtual {v0}, Lcom/itextpdf/io/image/ImageType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
