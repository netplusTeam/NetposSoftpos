.class public Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
.super Ljava/lang/Object;
.source "MediaDeviceDescription.java"


# static fields
.field private static final DEFAULT:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;


# instance fields
.field private bitsPerComponent:I

.field private colorIndex:I

.field private height:F

.field private isGrid:Z

.field private monochrome:I

.field private orientation:Ljava/lang/String;

.field private resolution:F

.field private scan:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    invoke-static {}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->createDefault()Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->DEFAULT:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->bitsPerComponent:I

    .line 59
    iput v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->colorIndex:I

    .line 87
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->type:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .line 98
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;-><init>(Ljava/lang/String;)V

    .line 99
    iput p2, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->width:F

    .line 100
    iput p3, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->height:F

    .line 101
    return-void
.end method

.method public static createDefault()Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .locals 2

    .line 109
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    sget-object v1, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->ALL:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDefault()Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .locals 1

    .line 119
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->DEFAULT:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    return-object v0
.end method


# virtual methods
.method public getBitsPerComponent()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->bitsPerComponent:I

    return v0
.end method

.method public getColorIndex()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->colorIndex:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    .line 197
    iget v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->height:F

    return v0
.end method

.method public getMonochrome()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->monochrome:I

    return v0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->orientation:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()F
    .locals 1

    .line 297
    iget v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->resolution:F

    return v0
.end method

.method public getScan()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->scan:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 177
    iget v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->width:F

    return v0
.end method

.method public isGrid()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->isGrid:Z

    return v0
.end method

.method public setBitsPerComponent(I)Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .locals 0
    .param p1, "bitsPerComponent"    # I

    .line 147
    iput p1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->bitsPerComponent:I

    .line 148
    return-object p0
.end method

.method public setColorIndex(I)Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .locals 0
    .param p1, "colorIndex"    # I

    .line 167
    iput p1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->colorIndex:I

    .line 168
    return-object p0
.end method

.method public setGrid(Z)Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .locals 0
    .param p1, "grid"    # Z

    .line 227
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->isGrid:Z

    .line 228
    return-object p0
.end method

.method public setHeight(F)Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .locals 0
    .param p1, "height"    # F

    .line 207
    iput p1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->height:F

    .line 208
    return-object p0
.end method

.method public setMonochrome(I)Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .locals 0
    .param p1, "monochrome"    # I

    .line 287
    iput p1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->monochrome:I

    .line 288
    return-object p0
.end method

.method public setOrientation(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .locals 0
    .param p1, "orientation"    # Ljava/lang/String;

    .line 267
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->orientation:Ljava/lang/String;

    .line 268
    return-object p0
.end method

.method public setResolution(F)Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .locals 0
    .param p1, "resolution"    # F

    .line 307
    iput p1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->resolution:F

    .line 308
    return-object p0
.end method

.method public setScan(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .locals 0
    .param p1, "scan"    # Ljava/lang/String;

    .line 247
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->scan:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public setWidth(F)Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .locals 0
    .param p1, "width"    # F

    .line 187
    iput p1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->width:F

    .line 188
    return-object p0
.end method
