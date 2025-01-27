.class public Lcom/itextpdf/io/image/GifImageData;
.super Ljava/lang/Object;
.source "GifImageData.java"


# instance fields
.field private data:[B

.field private frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/io/image/ImageData;",
            ">;"
        }
    .end annotation
.end field

.field private logicalHeight:F

.field private logicalWidth:F

.field private url:Ljava/net/URL;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/image/GifImageData;->frames:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lcom/itextpdf/io/image/GifImageData;->url:Ljava/net/URL;

    .line 65
    return-void
.end method

.method protected constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/image/GifImageData;->frames:Ljava/util/List;

    .line 68
    iput-object p1, p0, Lcom/itextpdf/io/image/GifImageData;->data:[B

    .line 69
    return-void
.end method


# virtual methods
.method protected addFrame(Lcom/itextpdf/io/image/ImageData;)V
    .locals 1
    .param p1, "frame"    # Lcom/itextpdf/io/image/ImageData;

    .line 100
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageData;->frames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method protected getData()[B
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageData;->data:[B

    return-object v0
.end method

.method public getFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/image/ImageData;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageData;->frames:Ljava/util/List;

    return-object v0
.end method

.method public getLogicalHeight()F
    .locals 1

    .line 72
    iget v0, p0, Lcom/itextpdf/io/image/GifImageData;->logicalHeight:F

    return v0
.end method

.method public getLogicalWidth()F
    .locals 1

    .line 80
    iget v0, p0, Lcom/itextpdf/io/image/GifImageData;->logicalWidth:F

    return v0
.end method

.method protected getUrl()Ljava/net/URL;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageData;->url:Ljava/net/URL;

    return-object v0
.end method

.method loadData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "input":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/io/image/GifImageData;->url:Ljava/net/URL;

    invoke-static {v1}, Lcom/itextpdf/io/util/UrlUtil;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 112
    new-instance v1, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    .line 113
    .local v1, "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/itextpdf/io/image/GifImageData;->url:Ljava/net/URL;

    invoke-static {v2}, Lcom/itextpdf/io/util/UrlUtil;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/StreamUtil;->transferBytes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 114
    invoke-virtual {v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/io/image/GifImageData;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v1    # "stream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 122
    :cond_0
    return-void

    .line 116
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 119
    :cond_1
    throw v1
.end method

.method public setLogicalHeight(F)V
    .locals 0
    .param p1, "logicalHeight"    # F

    .line 76
    iput p1, p0, Lcom/itextpdf/io/image/GifImageData;->logicalHeight:F

    .line 77
    return-void
.end method

.method public setLogicalWidth(F)V
    .locals 0
    .param p1, "logicalWidth"    # F

    .line 84
    iput p1, p0, Lcom/itextpdf/io/image/GifImageData;->logicalWidth:F

    .line 85
    return-void
.end method
