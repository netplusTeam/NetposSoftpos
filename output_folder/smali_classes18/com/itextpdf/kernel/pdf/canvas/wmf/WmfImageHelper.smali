.class public Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;
.super Ljava/lang/Object;
.source "WmfImageHelper.java"


# static fields
.field public static wmfFontCorrection:F


# instance fields
.field private plainHeight:F

.field private plainWidth:F

.field private wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const v0, 0x3f5c28f6    # 0.86f

    sput v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmfFontCorrection:F

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/image/ImageData;)V
    .locals 2
    .param p1, "wmf"    # Lcom/itextpdf/io/image/ImageData;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->WMF:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_0

    .line 80
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    .line 81
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->processParameters()V

    .line 82
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WMF image expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processParameters()V
    .locals 12

    .line 88
    const/4 v0, 0x0

    .line 91
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getData()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 93
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "errorID":Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v1    # "errorID":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    .line 97
    const-string v1, "Byte array"

    .line 99
    .restart local v1    # "errorID":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-direct {v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;-><init>(Ljava/io/InputStream;)V

    .line 100
    .local v2, "in":Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readInt()I

    move-result v3

    const v4, -0x65393229

    if-ne v3, v4, :cond_2

    .line 103
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    .line 104
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    .line 105
    .local v3, "left":I
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    .line 106
    .local v4, "top":I
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v5

    .line 107
    .local v5, "right":I
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v6

    .line 108
    .local v6, "bottom":I
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v7

    .line 109
    .local v7, "inch":I
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    const/16 v9, 0x48

    invoke-virtual {v8, v9, v9}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->setDpi(II)V

    .line 110
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    sub-int v9, v6, v4

    int-to-float v9, v9

    int-to-float v10, v7

    div-float/2addr v9, v10

    const/high16 v10, 0x42900000    # 72.0f

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->setHeight(F)V

    .line 111
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    sub-int v9, v5, v3

    int-to-float v9, v9

    int-to-float v11, v7

    div-float/2addr v9, v11

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->setWidth(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v1    # "errorID":Ljava/lang/String;
    .end local v2    # "in":Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;
    .end local v3    # "left":I
    .end local v4    # "top":I
    .end local v5    # "right":I
    .end local v6    # "bottom":I
    .end local v7    # "inch":I
    if-eqz v0, :cond_1

    .line 117
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    .line 121
    :cond_1
    :goto_2
    return-void

    .line 101
    .restart local v1    # "errorID":Ljava/lang/String;
    .restart local v2    # "in":Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;
    :cond_2
    :try_start_2
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    const-string/jumbo v4, "{0} is not a valid placeable windows metafile."

    invoke-direct {v3, v4, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .end local v0    # "is":Ljava/io/InputStream;
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .end local v1    # "errorID":Ljava/lang/String;
    .end local v2    # "in":Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;
    .restart local v0    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 112
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "WMF image exception."

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    .end local v0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "is":Ljava/io/InputStream;
    :goto_3
    if-eqz v0, :cond_3

    .line 117
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 118
    :goto_4
    goto :goto_5

    :catch_2
    move-exception v2

    goto :goto_4

    .line 120
    :cond_3
    :goto_5
    throw v1
.end method


# virtual methods
.method public createFormXObject(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 6
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 131
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getHeight()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 132
    .local v0, "pdfForm":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v1, v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 134
    .local v1, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    const/4 v2, 0x0

    .line 136
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getData()[B

    move-result-object v3

    if-nez v3, :cond_0

    .line 137
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 140
    :cond_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getData()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v3

    .line 142
    :goto_0
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;

    invoke-direct {v3, v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;-><init>(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 143
    .local v3, "meta":Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->readAll()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v3    # "meta":Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;
    if-eqz v2, :cond_1

    .line 149
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    .line 153
    :cond_1
    :goto_2
    return-object v0

    .line 147
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 144
    :catch_1
    move-exception v3

    .line 145
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "WMF image exception."

    invoke-direct {v4, v5, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "pdfForm":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .end local v1    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local p1    # "document":Lcom/itextpdf/kernel/pdf/PdfDocument;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "pdfForm":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .restart local v1    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local p1    # "document":Lcom/itextpdf/kernel/pdf/PdfDocument;
    :goto_3
    if-eqz v2, :cond_2

    .line 149
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 150
    :goto_4
    goto :goto_5

    :catch_2
    move-exception v4

    goto :goto_4

    .line 152
    :cond_2
    :goto_5
    throw v3
.end method
