.class public Lcom/itextpdf/io/image/BmpImageData;
.super Lcom/itextpdf/io/image/RawImageData;
.source "BmpImageData.java"


# instance fields
.field private noHeader:Z

.field private size:I


# direct methods
.method protected constructor <init>(Ljava/net/URL;Z)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "noHeader"    # Z

    .line 59
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->BMP:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/image/RawImageData;-><init>(Ljava/net/URL;Lcom/itextpdf/io/image/ImageType;)V

    .line 60
    iput-boolean p2, p0, Lcom/itextpdf/io/image/BmpImageData;->noHeader:Z

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;ZI)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "noHeader"    # Z
    .param p3, "size"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/io/image/BmpImageData;-><init>(Ljava/net/URL;Z)V

    .line 73
    iput p3, p0, Lcom/itextpdf/io/image/BmpImageData;->size:I

    .line 74
    return-void
.end method

.method protected constructor <init>([BZ)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "noHeader"    # Z

    .line 82
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->BMP:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/image/RawImageData;-><init>([BLcom/itextpdf/io/image/ImageType;)V

    .line 83
    iput-boolean p2, p0, Lcom/itextpdf/io/image/BmpImageData;->noHeader:Z

    .line 84
    return-void
.end method

.method protected constructor <init>([BZI)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "noHeader"    # Z
    .param p3, "size"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/io/image/BmpImageData;-><init>([BZ)V

    .line 96
    iput p3, p0, Lcom/itextpdf/io/image/BmpImageData;->size:I

    .line 97
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    iget v0, p0, Lcom/itextpdf/io/image/BmpImageData;->size:I

    return v0
.end method

.method public isNoHeader()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/itextpdf/io/image/BmpImageData;->noHeader:Z

    return v0
.end method
