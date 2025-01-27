.class public abstract Lcom/itextpdf/io/image/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# static fields
.field private static serialId:J

.field private static final staticLock:Ljava/lang/Object;


# instance fields
.field protected XYRatio:F

.field protected bpc:I

.field protected colorSpace:I

.field protected colorTransform:I

.field protected data:[B

.field protected decode:[F

.field protected decodeParms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected deflated:Z

.field protected dpiX:I

.field protected dpiY:I

.field protected filter:Ljava/lang/String;

.field protected height:F

.field protected imageAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected imageMask:Lcom/itextpdf/io/image/ImageData;

.field protected imageSize:I

.field protected interpolation:Z

.field protected inverted:Z

.field protected mask:Z

.field protected mySerialId:Ljava/lang/Long;

.field protected originalType:Lcom/itextpdf/io/image/ImageType;

.field protected profile:Lcom/itextpdf/io/colors/IccProfile;

.field protected rotation:F

.field protected transparency:[I

.field protected url:Ljava/net/URL;

.field protected width:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/itextpdf/io/image/ImageData;->serialId:J

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itextpdf/io/image/ImageData;->staticLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "type"    # Lcom/itextpdf/io/image/ImageType;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/io/image/ImageData;->bpc:I

    .line 83
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/io/image/ImageData;->colorSpace:I

    .line 89
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/io/image/ImageData;->inverted:Z

    .line 95
    iput v1, p0, Lcom/itextpdf/io/image/ImageData;->dpiX:I

    .line 97
    iput v1, p0, Lcom/itextpdf/io/image/ImageData;->dpiY:I

    .line 99
    iput v0, p0, Lcom/itextpdf/io/image/ImageData;->colorTransform:I

    .line 103
    iput-boolean v1, p0, Lcom/itextpdf/io/image/ImageData;->mask:Z

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/image/ImageData;->XYRatio:F

    .line 115
    invoke-static {}, Lcom/itextpdf/io/image/ImageData;->getSerialId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/image/ImageData;->mySerialId:Ljava/lang/Long;

    .line 118
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->url:Ljava/net/URL;

    .line 119
    iput-object p2, p0, Lcom/itextpdf/io/image/ImageData;->originalType:Lcom/itextpdf/io/image/ImageType;

    .line 120
    return-void
.end method

.method protected constructor <init>([BLcom/itextpdf/io/image/ImageType;)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "type"    # Lcom/itextpdf/io/image/ImageType;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/io/image/ImageData;->bpc:I

    .line 83
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/io/image/ImageData;->colorSpace:I

    .line 89
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/io/image/ImageData;->inverted:Z

    .line 95
    iput v1, p0, Lcom/itextpdf/io/image/ImageData;->dpiX:I

    .line 97
    iput v1, p0, Lcom/itextpdf/io/image/ImageData;->dpiY:I

    .line 99
    iput v0, p0, Lcom/itextpdf/io/image/ImageData;->colorTransform:I

    .line 103
    iput-boolean v1, p0, Lcom/itextpdf/io/image/ImageData;->mask:Z

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/image/ImageData;->XYRatio:F

    .line 115
    invoke-static {}, Lcom/itextpdf/io/image/ImageData;->getSerialId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/image/ImageData;->mySerialId:Ljava/lang/Long;

    .line 123
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->data:[B

    .line 124
    iput-object p2, p0, Lcom/itextpdf/io/image/ImageData;->originalType:Lcom/itextpdf/io/image/ImageType;

    .line 125
    return-void
.end method

.method private static getSerialId()Ljava/lang/Long;
    .locals 5

    .line 355
    sget-object v0, Lcom/itextpdf/io/image/ImageData;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_0
    sget-wide v1, Lcom/itextpdf/io/image/ImageData;->serialId:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/itextpdf/io/image/ImageData;->serialId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 357
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public canBeMask()Z
    .locals 3

    .line 221
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->isRawImage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 222
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->bpc:I

    const/16 v2, 0xff

    if-le v0, v2, :cond_0

    .line 223
    return v1

    .line 225
    :cond_0
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->colorSpace:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canImageBeInline()Z
    .locals 4

    .line 327
    const-class v0, Lcom/itextpdf/io/image/ImageData;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 328
    .local v0, "logger":Lorg/slf4j/Logger;
    iget v1, p0, Lcom/itextpdf/io/image/ImageData;->imageSize:I

    const/4 v2, 0x0

    const/16 v3, 0x1000

    if-le v1, v3, :cond_0

    .line 329
    const-string v1, "Inline image size cannot be more than 4KB. It will be added as an ImageXObject"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 330
    return v2

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/image/ImageData;->imageMask:Lcom/itextpdf/io/image/ImageData;

    if-eqz v1, :cond_1

    .line 333
    const-string v1, "Image cannot be inline if it has a Mask"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 334
    return v2

    .line 336
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public getBpc()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->bpc:I

    return v0
.end method

.method public getColorSpace()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->colorSpace:I

    return v0
.end method

.method public getColorTransform()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->colorTransform:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->data:[B

    return-object v0
.end method

.method public getDecode()[F
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->decode:[F

    return-object v0
.end method

.method public getDecodeParms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->decodeParms:Ljava/util/Map;

    return-object v0
.end method

.method public getDpiX()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->dpiX:I

    return v0
.end method

.method public getDpiY()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->dpiY:I

    return v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->filter:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 263
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->height:F

    return v0
.end method

.method public getImageAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->imageAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getImageMask()Lcom/itextpdf/io/image/ImageData;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->imageMask:Lcom/itextpdf/io/image/ImageData;

    return-object v0
.end method

.method public getOriginalType()Lcom/itextpdf/io/image/ImageType;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->originalType:Lcom/itextpdf/io/image/ImageType;

    return-object v0
.end method

.method public getProfile()Lcom/itextpdf/io/colors/IccProfile;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->profile:Lcom/itextpdf/io/colors/IccProfile;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .line 156
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->rotation:F

    return v0
.end method

.method public getTransparency()[I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->transparency:[I

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/itextpdf/io/image/ImageData;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 255
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->width:F

    return v0
.end method

.method public getXYRatio()F
    .locals 1

    .line 287
    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->XYRatio:F

    return v0
.end method

.method public isDeflated()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/itextpdf/io/image/ImageData;->deflated:Z

    return v0
.end method

.method public isInterpolation()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/itextpdf/io/image/ImageData;->interpolation:Z

    return v0
.end method

.method public isInverted()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/itextpdf/io/image/ImageData;->inverted:Z

    return v0
.end method

.method public isMask()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/itextpdf/io/image/ImageData;->mask:Z

    return v0
.end method

.method public isRawImage()Z
    .locals 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public isSoftMask()Z
    .locals 3

    .line 245
    iget-boolean v0, p0, Lcom/itextpdf/io/image/ImageData;->mask:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itextpdf/io/image/ImageData;->bpc:I

    if-le v0, v1, :cond_0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method loadData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    iget-object v2, p0, Lcom/itextpdf/io/image/ImageData;->url:Ljava/net/URL;

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource(Ljava/net/URL;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 346
    .local v0, "raf":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    new-instance v1, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    .line 347
    .local v1, "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    invoke-static {v0, v1}, Lcom/itextpdf/io/util/StreamUtil;->transferBytes(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Ljava/io/OutputStream;)V

    .line 348
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V

    .line 349
    invoke-virtual {v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/io/image/ImageData;->data:[B

    .line 350
    return-void
.end method

.method public makeMask()V
    .locals 2

    .line 249
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->canBeMask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/io/image/ImageData;->mask:Z

    .line 252
    return-void

    .line 250
    :cond_0
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "This image can not be an image mask."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBpc(I)V
    .locals 0
    .param p1, "bpc"    # I

    .line 275
    iput p1, p0, Lcom/itextpdf/io/image/ImageData;->bpc:I

    .line 276
    return-void
.end method

.method public setColorSpace(I)V
    .locals 0
    .param p1, "colorSpace"    # I

    .line 213
    iput p1, p0, Lcom/itextpdf/io/image/ImageData;->colorSpace:I

    .line 214
    return-void
.end method

.method public setColorTransform(I)V
    .locals 0
    .param p1, "colorTransform"    # I

    .line 189
    iput p1, p0, Lcom/itextpdf/io/image/ImageData;->colorTransform:I

    .line 190
    return-void
.end method

.method public setDecode([F)V
    .locals 0
    .param p1, "decode"    # [F

    .line 319
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->decode:[F

    .line 320
    return-void
.end method

.method public setDeflated(Z)V
    .locals 0
    .param p1, "deflated"    # Z

    .line 197
    iput-boolean p1, p0, Lcom/itextpdf/io/image/ImageData;->deflated:Z

    .line 198
    return-void
.end method

.method public setDpi(II)V
    .locals 0
    .param p1, "dpiX"    # I
    .param p2, "dpiY"    # I

    .line 180
    iput p1, p0, Lcom/itextpdf/io/image/ImageData;->dpiX:I

    .line 181
    iput p2, p0, Lcom/itextpdf/io/image/ImageData;->dpiY:I

    .line 182
    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0
    .param p1, "filter"    # Ljava/lang/String;

    .line 307
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->filter:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .line 267
    iput p1, p0, Lcom/itextpdf/io/image/ImageData;->height:F

    .line 268
    return-void
.end method

.method public setImageAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 299
    .local p1, "imageAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->imageAttributes:Ljava/util/Map;

    .line 300
    return-void
.end method

.method public setImageMask(Lcom/itextpdf/io/image/ImageData;)V
    .locals 2
    .param p1, "imageMask"    # Lcom/itextpdf/io/image/ImageData;

    .line 237
    iget-boolean v0, p0, Lcom/itextpdf/io/image/ImageData;->mask:Z

    if-nez v0, :cond_1

    .line 239
    iget-boolean v0, p1, Lcom/itextpdf/io/image/ImageData;->mask:Z

    if-eqz v0, :cond_0

    .line 241
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->imageMask:Lcom/itextpdf/io/image/ImageData;

    .line 242
    return-void

    .line 240
    :cond_0
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Image is not a mask. You must call ImageData#makeMask()."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Image mask cannot contain another image mask."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInterpolation(Z)V
    .locals 0
    .param p1, "interpolation"    # Z

    .line 283
    iput-boolean p1, p0, Lcom/itextpdf/io/image/ImageData;->interpolation:Z

    .line 284
    return-void
.end method

.method public setInverted(Z)V
    .locals 0
    .param p1, "inverted"    # Z

    .line 152
    iput-boolean p1, p0, Lcom/itextpdf/io/image/ImageData;->inverted:Z

    .line 153
    return-void
.end method

.method public setProfile(Lcom/itextpdf/io/colors/IccProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/itextpdf/io/colors/IccProfile;

    .line 168
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->profile:Lcom/itextpdf/io/colors/IccProfile;

    .line 169
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .line 160
    iput p1, p0, Lcom/itextpdf/io/image/ImageData;->rotation:F

    .line 161
    return-void
.end method

.method public setTransparency([I)V
    .locals 0
    .param p1, "transparency"    # [I

    .line 144
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->transparency:[I

    .line 145
    return-void
.end method

.method public setUrl(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    .line 136
    iput-object p1, p0, Lcom/itextpdf/io/image/ImageData;->url:Ljava/net/URL;

    .line 137
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .line 259
    iput p1, p0, Lcom/itextpdf/io/image/ImageData;->width:F

    .line 260
    return-void
.end method

.method public setXYRatio(F)V
    .locals 0
    .param p1, "XYRatio"    # F

    .line 291
    iput p1, p0, Lcom/itextpdf/io/image/ImageData;->XYRatio:F

    .line 292
    return-void
.end method
