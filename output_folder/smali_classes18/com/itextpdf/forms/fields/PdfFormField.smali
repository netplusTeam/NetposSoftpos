.class public Lcom/itextpdf/forms/fields/PdfFormField;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfFormField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ALIGN_CENTER:I = 0x1

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final DA_COLOR:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DA_FONT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DA_SIZE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_FONT_SIZE:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FF_MULTILINE:I

.field public static final FF_NO_EXPORT:I

.field public static final FF_PASSWORD:I

.field public static final FF_READ_ONLY:I

.field public static final FF_REQUIRED:I

.field public static final HIDDEN:I = 0x1

.field public static final HIDDEN_BUT_PRINTABLE:I = 0x3

.field public static final MIN_FONT_SIZE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_CHECK:I = 0x1

.field public static final TYPE_CIRCLE:I = 0x2

.field public static final TYPE_CROSS:I = 0x3

.field public static final TYPE_DIAMOND:I = 0x4

.field public static final TYPE_SQUARE:I = 0x5

.field public static final TYPE_STAR:I = 0x6

.field public static final VISIBLE:I = 0x4

.field public static final VISIBLE_BUT_DOES_NOT_PRINT:I = 0x2

.field public static final X_OFFSET:F = 2.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static typeChars:[Ljava/lang/String;


# instance fields
.field protected backgroundColor:Lcom/itextpdf/kernel/colors/Color;

.field protected borderColor:Lcom/itextpdf/kernel/colors/Color;

.field protected borderWidth:F

.field protected checkType:I

.field protected color:Lcom/itextpdf/kernel/colors/Color;

.field protected font:Lcom/itextpdf/kernel/font/PdfFont;

.field protected fontSize:F

.field protected form:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

.field protected img:Lcom/itextpdf/io/image/ImageData;

.field protected pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

.field protected rotation:I

.field protected text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 130
    nop

    .line 136
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_MULTILINE:I

    .line 141
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_PASSWORD:I

    .line 205
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_READ_ONLY:I

    .line 206
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_REQUIRED:I

    .line 207
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_NO_EXPORT:I

    .line 215
    const-string v1, "4"

    const-string v2, "l"

    const-string v3, "8"

    const-string/jumbo v4, "u"

    const-string v5, "n"

    const-string v6, "H"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/forms/fields/PdfFormField;->typeChars:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 237
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 220
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    .line 223
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->rotation:I

    .line 238
    invoke-static {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->ensureObjectIsAddedToDocument(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 239
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->setForbidRelease()V

    .line 240
    invoke-direct {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->retrieveStyles()V

    .line 241
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 2
    .param p1, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 249
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 250
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 251
    .local v0, "formType":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v0, :cond_0

    .line 252
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 254
    :cond_0
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 2
    .param p1, "widget"    # Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    .param p2, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 263
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 264
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 265
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->addKid(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 266
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 267
    return-void
.end method

.method private addAcroFormToCatalog()V
    .locals 3

    .line 3296
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3297
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 3298
    .local v0, "acroform":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3300
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3301
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 3303
    .end local v0    # "acroform":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_0
    return-void
.end method

.method private appearancePropToColor(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/colors/Color;
    .locals 7
    .param p1, "appearanceCharacteristics"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "property"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 3411
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 3412
    .local v0, "colorData":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3413
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    new-array v2, v2, [F

    .line 3414
    .local v2, "backgroundFloat":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 3415
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v4

    aput v4, v2, v3

    .line 3414
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3416
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 3424
    :pswitch_1
    new-instance v1, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    aget v3, v2, v5

    aget v5, v2, v6

    aget v4, v2, v4

    const/4 v6, 0x3

    aget v6, v2, v6

    invoke-direct {v1, v3, v5, v4, v6}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(FFFF)V

    return-object v1

    .line 3422
    :pswitch_2
    new-instance v1, Lcom/itextpdf/kernel/colors/DeviceRgb;

    aget v3, v2, v5

    aget v5, v2, v6

    aget v4, v2, v4

    invoke-direct {v1, v3, v5, v4}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    return-object v1

    .line 3420
    :pswitch_3
    new-instance v1, Lcom/itextpdf/kernel/colors/DeviceGray;

    aget v3, v2, v5

    invoke-direct {v1, v3}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    return-object v1

    .line 3418
    :pswitch_4
    return-object v1

    .line 3427
    .end local v2    # "backgroundFloat":[F
    :cond_1
    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private applyRotation(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V
    .locals 12
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p2, "height"    # F
    .param p3, "width"    # F

    .line 3351
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->rotation:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 3359
    :sswitch_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Matrix:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-array v8, v8, [F

    aput v10, v8, v7

    aput v9, v8, v6

    aput v1, v8, v5

    aput v10, v8, v4

    aput v10, v8, v3

    aput p3, v8, v2

    invoke-direct {v11, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p1, v0, v11}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    goto :goto_0

    .line 3356
    :sswitch_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Matrix:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-array v8, v8, [F

    aput v9, v8, v7

    aput v10, v8, v6

    aput v10, v8, v5

    aput v9, v8, v4

    aput p3, v8, v3

    aput p2, v8, v2

    invoke-direct {v1, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 3357
    goto :goto_0

    .line 3353
    :sswitch_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Matrix:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-array v8, v8, [F

    aput v10, v8, v7

    aput v1, v8, v6

    aput v9, v8, v5

    aput v10, v8, v4

    aput p2, v8, v3

    aput v10, v8, v2

    invoke-direct {v11, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p1, v0, v11}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 3354
    nop

    .line 3362
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private approximateFontSizeToFitMultiLine(Lcom/itextpdf/layout/element/Paragraph;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/IRenderer;)F
    .locals 10
    .param p1, "paragraph"    # Lcom/itextpdf/layout/element/Paragraph;
    .param p2, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "parentRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 3090
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Paragraph;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    .line 3091
    .local v0, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v2, Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v1, v2}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    .line 3092
    .local v1, "layoutContext":Lcom/itextpdf/layout/layout/LayoutContext;
    const/high16 v2, 0x40800000    # 4.0f

    .local v2, "lFontSize":F
    const/high16 v4, 0x41400000    # 12.0f

    .line 3094
    .local v4, "rFontSize":F
    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {p1, v5}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    .line 3095
    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v5

    if-eq v5, v3, :cond_2

    .line 3096
    const/4 v5, 0x6

    .line 3097
    .local v5, "numberOfIterations":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v7, 0x6

    if-ge v6, v7, :cond_1

    .line 3098
    add-float v7, v2, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 3099
    .local v7, "mFontSize":F
    invoke-virtual {p1, v7}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    .line 3100
    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v8

    .line 3101
    .local v8, "result":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v9

    if-ne v9, v3, :cond_0

    .line 3102
    move v2, v7

    goto :goto_1

    .line 3104
    :cond_0
    move v4, v7

    .line 3097
    .end local v7    # "mFontSize":F
    .end local v8    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3107
    .end local v5    # "numberOfIterations":I
    .end local v6    # "i":I
    :cond_1
    goto :goto_2

    .line 3108
    :cond_2
    const/high16 v2, 0x41400000    # 12.0f

    .line 3110
    :goto_2
    return v2
.end method

.method private approximateFontSizeToFitSingleLine(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;F)F
    .locals 9
    .param p1, "localFont"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p2, "bBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "minValue"    # F

    .line 3116
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 3117
    .local v0, "height":F
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->getBbox()[I

    move-result-object v1

    .line 3118
    .local v1, "fontBbox":[I
    const/4 v3, 0x2

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v3, v0, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    .line 3120
    .local v3, "fs":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3, v4}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v4

    .line 3121
    .local v4, "baseWidth":F
    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_1

    .line 3122
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    iget v7, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    mul-float/2addr v7, v2

    sub-float/2addr v6, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 3124
    .local v5, "availableWidth":F
    const/high16 v6, 0x40800000    # 4.0f

    .line 3126
    .local v6, "absMaxPadding":F
    const v7, 0x3e19999a    # 0.15f

    .line 3128
    .local v7, "relativePaddingForSmallSizes":F
    mul-float v8, v5, v7

    cmpg-float v8, v8, v6

    if-gez v8, :cond_0

    .line 3129
    mul-float v8, v5, v7

    mul-float/2addr v8, v2

    sub-float/2addr v5, v8

    goto :goto_0

    .line 3131
    :cond_0
    mul-float/2addr v2, v6

    sub-float/2addr v5, v2

    .line 3133
    :goto_0
    div-float v2, v5, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 3135
    .end local v5    # "availableWidth":F
    .end local v6    # "absMaxPadding":F
    .end local v7    # "relativePaddingForSmallSizes":F
    :cond_1
    invoke-static {v3, p4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method private calculateTranslationHeightAfterFieldRot(Lcom/itextpdf/kernel/geom/Rectangle;DD)F
    .locals 8
    .param p1, "bBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "pageRotation"    # D
    .param p4, "relFieldRotation"    # D

    .line 3149
    const-wide/16 v0, 0x0

    cmpl-double v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3150
    return v3

    .line 3152
    :cond_0
    cmpl-double v0, p2, v0

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-nez v0, :cond_2

    .line 3153
    cmpl-double v0, p4, v4

    if-nez v0, :cond_1

    .line 3154
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    return v0

    .line 3156
    :cond_1
    cmpl-double v0, p4, v1

    if-nez v0, :cond_2

    .line 3157
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    return v0

    .line 3161
    :cond_2
    const-wide v6, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpl-double v0, p2, v6

    if-nez v0, :cond_5

    .line 3162
    cmpl-double v0, p4, v6

    if-nez v0, :cond_3

    .line 3163
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    return v0

    .line 3165
    :cond_3
    cmpl-double v0, p4, v4

    if-nez v0, :cond_4

    .line 3166
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    return v0

    .line 3168
    :cond_4
    cmpl-double v0, p4, v1

    if-nez v0, :cond_5

    .line 3169
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    return v0

    .line 3173
    :cond_5
    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpl-double v2, p2, v0

    if-nez v2, :cond_8

    .line 3174
    cmpl-double v2, p4, v0

    if-nez v2, :cond_6

    .line 3175
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    return v0

    .line 3177
    :cond_6
    cmpl-double v2, p4, v6

    if-nez v2, :cond_7

    .line 3178
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    return v0

    .line 3181
    :cond_7
    cmpl-double v2, p4, v4

    if-nez v2, :cond_8

    .line 3182
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    return v0

    .line 3185
    :cond_8
    const-wide v4, -0x3fed268380ccde2eL    # -4.71238898038469

    cmpl-double v2, p2, v4

    if-nez v2, :cond_a

    .line 3186
    cmpl-double v2, p4, v4

    if-nez v2, :cond_9

    .line 3187
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    return v0

    .line 3189
    :cond_9
    cmpl-double v0, p4, v0

    if-nez v0, :cond_a

    .line 3190
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    return v0

    .line 3194
    :cond_a
    return v3
.end method

.method private calculateTranslationWidthAfterFieldRot(Lcom/itextpdf/kernel/geom/Rectangle;DD)F
    .locals 9
    .param p1, "bBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "pageRotation"    # D
    .param p4, "relFieldRotation"    # D

    .line 3208
    const-wide/16 v0, 0x0

    cmpl-double v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3209
    return v3

    .line 3211
    :cond_0
    cmpl-double v0, p2, v0

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    if-nez v0, :cond_2

    cmpl-double v0, p4, v1

    if-eqz v0, :cond_1

    const-wide v4, 0x4012d97c7f3321d2L    # 4.71238898038469

    cmpl-double v0, p4, v4

    if-nez v0, :cond_2

    .line 3212
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    return v0

    .line 3214
    :cond_2
    const-wide v4, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpl-double v0, p2, v4

    if-nez v0, :cond_4

    .line 3215
    cmpl-double v0, p4, v4

    if-eqz v0, :cond_3

    cmpl-double v0, p4, v1

    if-nez v0, :cond_4

    .line 3216
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    return v0

    .line 3220
    :cond_4
    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpl-double v2, p2, v0

    const/high16 v6, -0x40800000    # -1.0f

    if-nez v2, :cond_7

    .line 3221
    cmpl-double v2, p4, v0

    if-nez v2, :cond_5

    .line 3222
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    return v0

    .line 3224
    :cond_5
    cmpl-double v2, p4, v4

    if-nez v2, :cond_6

    .line 3225
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    return v0

    .line 3227
    :cond_6
    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v2, p4, v7

    if-nez v2, :cond_7

    .line 3228
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v6

    return v0

    .line 3231
    :cond_7
    const-wide v7, -0x3fed268380ccde2eL    # -4.71238898038469

    cmpl-double v2, p2, v7

    if-nez v2, :cond_a

    .line 3232
    cmpl-double v2, p4, v7

    if-nez v2, :cond_8

    .line 3233
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v6

    return v0

    .line 3235
    :cond_8
    cmpl-double v0, p4, v0

    if-nez v0, :cond_9

    .line 3236
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    return v0

    .line 3238
    :cond_9
    cmpl-double v0, p4, v4

    if-nez v0, :cond_a

    .line 3239
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    return v0

    .line 3242
    :cond_a
    return v3
.end method

.method private convertJustificationToTextAlignment()Lcom/itextpdf/layout/property/TextAlignment;
    .locals 4

    .line 3318
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getJustification()Ljava/lang/Integer;

    move-result-object v0

    .line 3319
    .local v0, "justification":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 3320
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3322
    :cond_0
    sget-object v1, Lcom/itextpdf/layout/property/TextAlignment;->LEFT:Lcom/itextpdf/layout/property/TextAlignment;

    .line 3323
    .local v1, "textAlignment":Lcom/itextpdf/layout/property/TextAlignment;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3324
    sget-object v1, Lcom/itextpdf/layout/property/TextAlignment;->RIGHT:Lcom/itextpdf/layout/property/TextAlignment;

    goto :goto_0

    .line 3325
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 3326
    sget-object v1, Lcom/itextpdf/layout/property/TextAlignment;->CENTER:Lcom/itextpdf/layout/property/TextAlignment;

    .line 3328
    :cond_2
    :goto_0
    return-object v1
.end method

.method private copyParamsToKids(Lcom/itextpdf/forms/fields/PdfFormField;)V
    .locals 2
    .param p1, "child"    # Lcom/itextpdf/forms/fields/PdfFormField;

    .line 3601
    iget v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    if-lez v0, :cond_0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 3602
    :cond_0
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    iput v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    .line 3604
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getDefaultAppearance()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3605
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iput-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 3606
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    iput v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    .line 3608
    :cond_2
    iget-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    if-nez v0, :cond_3

    .line 3609
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 3611
    :cond_3
    iget-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 3612
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    iput-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    .line 3614
    :cond_4
    iget-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->img:Lcom/itextpdf/io/image/ImageData;

    if-nez v0, :cond_5

    .line 3615
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->img:Lcom/itextpdf/io/image/ImageData;

    iput-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->img:Lcom/itextpdf/io/image/ImageData;

    .line 3617
    :cond_5
    iget v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    .line 3618
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    iput v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    .line 3620
    :cond_6
    iget-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    if-nez v0, :cond_7

    .line 3621
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    .line 3623
    :cond_7
    iget-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    if-nez v0, :cond_8

    .line 3624
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    .line 3626
    :cond_8
    iget v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->rotation:I

    if-nez v0, :cond_9

    .line 3627
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->rotation:I

    iput v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->rotation:I

    .line 3629
    :cond_9
    iget-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-nez v0, :cond_a

    .line 3630
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    iput-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 3632
    :cond_a
    iget-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->form:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-nez v0, :cond_b

    .line 3633
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->form:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iput-object v0, p1, Lcom/itextpdf/forms/fields/PdfFormField;->form:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 3635
    :cond_b
    return-void
.end method

.method public static createButton(Lcom/itextpdf/kernel/pdf/PdfDocument;I)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 1
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "flags"    # I

    .line 354
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createButton(Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createButton(Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 1
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "flags"    # I
    .param p2, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 369
    new-instance v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 370
    .local v0, "field":Lcom/itextpdf/forms/fields/PdfButtonFormField;
    iput-object p2, v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 371
    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setFieldFlags(I)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 372
    return-object v0
.end method

.method public static createButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;I)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 1
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "flags"    # I

    .line 317
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 3
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "flags"    # I
    .param p3, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 333
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 334
    .local v0, "annot":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    new-instance v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    invoke-direct {v1, v0, p0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 335
    .local v1, "field":Lcom/itextpdf/forms/fields/PdfButtonFormField;
    iput-object p3, v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 336
    if-eqz p3, :cond_0

    .line 337
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 339
    :cond_0
    invoke-virtual {v1, p2}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setFieldFlags(I)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 340
    return-object v1
.end method

.method public static createCheckBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 1
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 910
    const/4 v0, 0x3

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createCheckBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;I)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createCheckBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;I)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 6
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "checkType"    # I

    .line 924
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/fields/PdfFormField;->createCheckBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createCheckBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 6
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "checkType"    # I
    .param p5, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 940
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 941
    .local v0, "annot":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    new-instance v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    invoke-direct {v1, v0, p0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 942
    .local v1, "check":Lcom/itextpdf/forms/fields/PdfButtonFormField;
    iput-object p5, v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 943
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setFontSize(I)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 944
    invoke-virtual {v1, p4}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setCheckType(I)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 945
    invoke-virtual {v1, p2}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 946
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, p3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 947
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v2, p3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 949
    const-string v2, "Yes"

    const-string v3, "Off"

    if-eqz p5, :cond_1

    .line 950
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p3

    :goto_0
    invoke-virtual {v1, v4, v5, v2, p4}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->drawPdfA2CheckAppearance(FFLjava/lang/String;I)V

    .line 951
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    goto :goto_2

    .line 953
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p3

    :goto_1
    invoke-virtual {v1, v4, v5, v2}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->drawCheckAppearance(FFLjava/lang/String;)V

    .line 956
    :goto_2
    return-object v1
.end method

.method public static createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;I)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "flags"    # I

    .line 546
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "flags"    # I
    .param p2, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 560
    new-instance v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 561
    .local v0, "field":Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    iput-object p2, v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 562
    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setFieldFlags(I)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 563
    return-object v0
.end method

.method public static createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;I)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 2
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "flags"    # I

    .line 578
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 579
    .local v0, "annot":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    new-instance v1, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    invoke-direct {v1, v0, p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 580
    .local v1, "field":Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    invoke-virtual {v1, p2}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setFieldFlags(I)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 581
    return-object v1
.end method

.method public static createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FLcom/itextpdf/kernel/pdf/PdfArray;I)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 9
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p5, "fontSize"    # F
    .param p6, "options"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p7, "flags"    # I

    .line 642
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/itextpdf/forms/fields/PdfFormField;->createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FLcom/itextpdf/kernel/pdf/PdfArray;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FLcom/itextpdf/kernel/pdf/PdfArray;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 17
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p5, "fontSize"    # F
    .param p6, "options"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p7, "flags"    # I
    .param p8, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 664
    move/from16 v0, p7

    move-object/from16 v1, p8

    new-instance v2, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    move-object/from16 v9, p1

    invoke-direct {v2, v9}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 665
    .local v2, "annot":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    new-instance v3, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-object/from16 v10, p0

    invoke-direct {v3, v2, v10}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    move-object v11, v3

    .line 666
    .local v11, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    iput-object v1, v11, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 667
    if-eqz v1, :cond_0

    .line 668
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 671
    :cond_0
    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-direct {v11, v12, v13}, Lcom/itextpdf/forms/fields/PdfFormField;->updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 672
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Opt:Lcom/itextpdf/kernel/pdf/PdfName;

    move-object/from16 v14, p6

    invoke-virtual {v11, v3, v14}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 673
    invoke-virtual {v11, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldFlags(I)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 674
    move-object/from16 v15, p2

    invoke-virtual {v11, v15}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 675
    move-object v3, v11

    check-cast v3, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setListSelected([Ljava/lang/String;Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    .line 676
    sget v3, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    and-int/2addr v3, v0

    if-nez v3, :cond_1

    .line 677
    invoke-static/range {p6 .. p6}, Lcom/itextpdf/forms/fields/PdfFormField;->optionsArrayToString(Lcom/itextpdf/kernel/pdf/PdfArray;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    .end local p3    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    goto :goto_0

    .line 676
    .end local v3    # "value":Ljava/lang/String;
    .restart local p3    # "value":Ljava/lang/String;
    :cond_1
    move-object/from16 v16, p3

    .line 680
    .end local p3    # "value":Ljava/lang/String;
    .local v16, "value":Ljava/lang/String;
    :goto_0
    new-instance v7, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v7, v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 681
    .local v7, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    iget v5, v11, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    const/4 v8, 0x0

    move-object v3, v11

    move-object/from16 v4, p1

    move-object/from16 v6, v16

    invoke-direct/range {v3 .. v8}, Lcom/itextpdf/forms/fields/PdfFormField;->drawChoiceAppearance(Lcom/itextpdf/kernel/geom/Rectangle;FLjava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;I)V

    .line 682
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setNormalAppearance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 684
    move-object v3, v11

    check-cast v3, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    return-object v3
.end method

.method public static createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfArray;I)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 8
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "options"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p5, "flags"    # I

    .line 600
    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/forms/fields/PdfFormField;->createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FLcom/itextpdf/kernel/pdf/PdfArray;I)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfArray;ILcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 9
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "options"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p5, "flags"    # I
    .param p6, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p7, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 621
    const/high16 v5, 0x41400000    # 12.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/itextpdf/forms/fields/PdfFormField;->createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FLcom/itextpdf/kernel/pdf/PdfArray;ILcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createComboBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 7
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "options"    # [Ljava/lang/String;

    .line 1009
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/forms/fields/PdfFormField;->createComboBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createComboBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 8
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "options"    # [Ljava/lang/String;
    .param p5, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p6, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 1026
    invoke-static {p4}, Lcom/itextpdf/forms/fields/PdfFormField;->processOptions([Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    sget v5, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/forms/fields/PdfFormField;->createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfArray;ILcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createComboBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 7
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "options"    # [[Ljava/lang/String;

    .line 973
    :try_start_0
    invoke-static {}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/forms/fields/PdfFormField;->createComboBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createComboBox(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 8
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "options"    # [[Ljava/lang/String;
    .param p5, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p6, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 994
    invoke-static {p4}, Lcom/itextpdf/forms/fields/PdfFormField;->processOptions([[Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    sget v5, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/forms/fields/PdfFormField;->createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfArray;ILcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createEmptyField(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 288
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createEmptyField(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createEmptyField(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 300
    new-instance v0, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 301
    .local v0, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    iput-object p1, v0, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 302
    return-object v0
.end method

.method public static createList(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 7
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "options"    # [Ljava/lang/String;

    .line 1075
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/forms/fields/PdfFormField;->createList(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createList(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 8
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "options"    # [Ljava/lang/String;
    .param p5, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p6, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 1092
    invoke-static {p4}, Lcom/itextpdf/forms/fields/PdfFormField;->processOptions([Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/forms/fields/PdfFormField;->createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfArray;ILcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createList(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 7
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "options"    # [[Ljava/lang/String;

    .line 1042
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/forms/fields/PdfFormField;->createList(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createList(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 8
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "options"    # [[Ljava/lang/String;
    .param p5, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p6, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 1060
    invoke-static {p4}, Lcom/itextpdf/forms/fields/PdfFormField;->processOptions([[Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/forms/fields/PdfFormField;->createChoice(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfArray;ILcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createMultilineText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 7
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 533
    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/forms/fields/PdfFormField;->createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FZ)Lcom/itextpdf/forms/fields/PdfTextFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createMultilineText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 7
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p5, "fontSize"    # F

    .line 518
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/forms/fields/PdfFormField;->createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FZ)Lcom/itextpdf/forms/fields/PdfTextFormField;

    move-result-object v0

    return-object v0
.end method

.method private static createParagraphForTextFieldValue(Ljava/lang/String;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 3737
    new-instance v0, Lcom/itextpdf/layout/element/Text;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/element/Text;-><init>(Ljava/lang/String;)V

    .line 3738
    .local v0, "text":Lcom/itextpdf/layout/element/Text;
    new-instance v1, Lcom/itextpdf/forms/fields/FormFieldValueNonTrimmingTextRenderer;

    invoke-direct {v1, v0}, Lcom/itextpdf/forms/fields/FormFieldValueNonTrimmingTextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/element/Text;->setNextRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 3739
    new-instance v1, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v1, v0}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Lcom/itextpdf/layout/element/Text;)V

    return-object v1
.end method

.method public static createPushButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 6
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "caption"    # Ljava/lang/String;

    .line 836
    :try_start_0
    invoke-static {}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v4

    const/high16 v5, 0x41400000    # 12.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/fields/PdfFormField;->createPushButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    .local v0, "field":Lcom/itextpdf/forms/fields/PdfButtonFormField;
    nop

    .line 840
    return-object v0

    .line 837
    .end local v0    # "field":Lcom/itextpdf/forms/fields/PdfButtonFormField;
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createPushButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 7
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p5, "fontSize"    # F

    .line 856
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/forms/fields/PdfFormField;->createPushButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FLcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createPushButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FLcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 8
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p5, "fontSize"    # F
    .param p6, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 873
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 874
    .local v0, "annot":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    new-instance v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    invoke-direct {v1, v0, p0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 875
    .local v1, "field":Lcom/itextpdf/forms/fields/PdfButtonFormField;
    iput-object p6, v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 876
    if-eqz p6, :cond_0

    .line 877
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 879
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setPushButton(Z)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    .line 880
    invoke-virtual {v1, p2}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 881
    iput-object p3, v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;->text:Ljava/lang/String;

    .line 882
    invoke-direct {v1, p4, p5}, Lcom/itextpdf/forms/fields/PdfFormField;->updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 883
    sget-object v2, Lcom/itextpdf/kernel/colors/ColorConstants;->LIGHT_GRAY:Lcom/itextpdf/kernel/colors/Color;

    iput-object v2, v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    .line 885
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    move-object v2, v1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->drawPushButtonAppearance(FFLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v2

    .line 886
    .local v2, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setNormalAppearance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 888
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 889
    .local v3, "mk":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->CA:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v5, p3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 890
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->BG:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    iget-object v6, v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 891
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceCharacteristics(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 893
    if-eqz p6, :cond_1

    .line 894
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v4}, Lcom/itextpdf/forms/fields/PdfFormField;->createPushButtonAppearanceState(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 897
    :cond_1
    return-object v1
.end method

.method private static createPushButtonAppearanceState(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 5
    .param p0, "widget"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 3722
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 3723
    .local v0, "appearances":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    .line 3724
    .local v1, "normalAppearanceStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    if-eqz v1, :cond_1

    .line 3725
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    .line 3726
    .local v2, "stateName":Lcom/itextpdf/kernel/pdf/PdfName;
    if-nez v2, :cond_0

    .line 3727
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string/jumbo v4, "push"

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 3729
    :cond_0
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->AS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3730
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 3731
    .local v3, "normalAppearance":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v3, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3732
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v4, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3734
    .end local v2    # "stateName":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v3    # "normalAppearance":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_1
    return-void
.end method

.method public static createRadioButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/forms/fields/PdfButtonFormField;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 5
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "radioGroup"    # Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .param p3, "value"    # Ljava/lang/String;

    .line 779
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 780
    .local v0, "annot":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    new-instance v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    invoke-direct {v1, v0, p0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 782
    .local v1, "radio":Lcom/itextpdf/forms/fields/PdfFormField;
    invoke-virtual {p2}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->getValue()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 783
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 784
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, p3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    goto :goto_0

    .line 786
    :cond_0
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v4, "Off"

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 788
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    invoke-virtual {v1, v3, v4, p3}, Lcom/itextpdf/forms/fields/PdfFormField;->drawRadioAppearance(FFLjava/lang/String;)V

    .line 789
    invoke-virtual {p2, v1}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->addKid(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 790
    return-object v1
.end method

.method public static createRadioButton(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/forms/fields/PdfButtonFormField;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 5
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "radioGroup"    # Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 805
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 806
    .local v0, "annot":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    new-instance v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    invoke-direct {v1, v0, p0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 807
    .local v1, "radio":Lcom/itextpdf/forms/fields/PdfFormField;
    iput-object p4, v1, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 808
    if-eqz p4, :cond_0

    .line 809
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 812
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->getValue()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 814
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, p3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    goto :goto_0

    .line 816
    :cond_1
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v4, "Off"

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 818
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    invoke-virtual {v1, v3, v4, p3}, Lcom/itextpdf/forms/fields/PdfFormField;->drawRadioAppearance(FFLjava/lang/String;)V

    .line 820
    invoke-virtual {p2, v1}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->addKid(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 821
    return-object v1
.end method

.method public static createRadioGroup(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 1
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 748
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createRadioGroup(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createRadioGroup(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 3
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 761
    sget v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_RADIO:I

    invoke-static {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createButton(Lcom/itextpdf/kernel/pdf/PdfDocument;I)Lcom/itextpdf/forms/fields/PdfButtonFormField;

    move-result-object v0

    .line 762
    .local v0, "radio":Lcom/itextpdf/forms/fields/PdfButtonFormField;
    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 763
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v2, p2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 764
    iput-object p3, v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 765
    return-object v0
.end method

.method public static createSignature(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfSignatureFormField;
    .locals 2
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 694
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    invoke-static {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createSignature(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfSignatureFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createSignature(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/forms/fields/PdfSignatureFormField;
    .locals 1
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 718
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createSignature(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfSignatureFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createSignature(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfSignatureFormField;
    .locals 3
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 730
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 731
    .local v0, "annot":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    new-instance v1, Lcom/itextpdf/forms/fields/PdfSignatureFormField;

    invoke-direct {v1, v0, p0}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 732
    .local v1, "signatureFormField":Lcom/itextpdf/forms/fields/PdfSignatureFormField;
    iput-object p2, v1, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 733
    if-eqz p2, :cond_0

    .line 734
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 736
    :cond_0
    return-object v1
.end method

.method public static createSignature(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfSignatureFormField;
    .locals 1
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 705
    new-instance v0, Lcom/itextpdf/forms/fields/PdfSignatureFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 706
    .local v0, "signatureFormField":Lcom/itextpdf/forms/fields/PdfSignatureFormField;
    iput-object p1, v0, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 707
    return-object v0
.end method

.method public static createText(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 2
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 383
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    invoke-static {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfTextFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 2
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 408
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 409
    .local v0, "annot":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    new-instance v1, Lcom/itextpdf/forms/fields/PdfTextFormField;

    invoke-direct {v1, v0, p0}, Lcom/itextpdf/forms/fields/PdfTextFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-object v1
.end method

.method public static createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;

    .line 423
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfTextFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 6
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 438
    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/fields/PdfFormField;->createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/forms/fields/PdfTextFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 7
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p5, "fontSize"    # F

    .line 454
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/forms/fields/PdfFormField;->createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FZ)Lcom/itextpdf/forms/fields/PdfTextFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FZ)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 8
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p5, "fontSize"    # F
    .param p6, "multiline"    # Z

    .line 471
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/forms/fields/PdfFormField;->createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FZLcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfTextFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;FZLcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 3
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p5, "fontSize"    # F
    .param p6, "multiline"    # Z
    .param p7, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 489
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 490
    .local v0, "annot":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    new-instance v1, Lcom/itextpdf/forms/fields/PdfTextFormField;

    invoke-direct {v1, v0, p0}, Lcom/itextpdf/forms/fields/PdfTextFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 492
    .local v1, "field":Lcom/itextpdf/forms/fields/PdfTextFormField;
    iput-object p7, v1, Lcom/itextpdf/forms/fields/PdfTextFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 493
    if-eqz p7, :cond_0

    .line 494
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 497
    :cond_0
    invoke-direct {v1, p4, p5}, Lcom/itextpdf/forms/fields/PdfFormField;->updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 498
    invoke-virtual {v1, p6}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setMultiline(Z)Lcom/itextpdf/forms/fields/PdfTextFormField;

    .line 499
    invoke-virtual {v1, p2}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 500
    invoke-virtual {v1, p3}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setValue(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 502
    return-object v1
.end method

.method public static createText(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1
    .param p0, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "pdfAConformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 395
    new-instance v0, Lcom/itextpdf/forms/fields/PdfTextFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/forms/fields/PdfTextFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 396
    .local v0, "textFormField":Lcom/itextpdf/forms/fields/PdfTextFormField;
    iput-object p1, v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 397
    return-object v0
.end method

.method private static degreeToRadians(D)D
    .locals 4
    .param p0, "angle"    # D

    .line 3675
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private drawChoiceAppearance(Lcom/itextpdf/kernel/geom/Rectangle;FLjava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;I)V
    .locals 26
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "fontSize"    # F
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "appearance"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p5, "topIndex"    # I

    .line 2587
    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2588
    .local v2, "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v3

    .line 2589
    .local v3, "resources":Lcom/itextpdf/kernel/pdf/PdfResources;
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2591
    .local v4, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    .line 2592
    .local v5, "width":F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    .line 2593
    .local v6, "height":F
    const/high16 v7, 0x40c00000    # 6.0f

    .line 2594
    .local v7, "widthBorder":F
    const/high16 v8, 0x40000000    # 2.0f

    .line 2596
    .local v8, "heightBorder":F
    iget-object v9, v0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    sub-float v10, v5, v7

    move-object/from16 v11, p3

    invoke-virtual {v9, v11, v1, v10}, Lcom/itextpdf/kernel/font/PdfFont;->splitString(Ljava/lang/String;FF)Ljava/util/List;

    move-result-object v9

    .line 2598
    .local v9, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v10, p4

    invoke-virtual {v0, v4, v10, v5, v6}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2599
    nop

    .line 2600
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginVariableText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v12

    .line 2601
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v13

    sub-float v12, v5, v7

    float-to-double v14, v12

    sub-float v12, v6, v8

    move-wide/from16 v16, v14

    float-to-double v14, v12

    .line 2602
    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    move-wide/from16 v24, v14

    move-wide/from16 v22, v16

    move-wide/from16 v14, v18

    move-wide/from16 v16, v20

    move-wide/from16 v18, v22

    move-wide/from16 v20, v24

    invoke-virtual/range {v13 .. v21}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v12

    .line 2603
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v12

    .line 2604
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2606
    new-instance v12, Lcom/itextpdf/layout/Canvas;

    new-instance v13, Lcom/itextpdf/kernel/geom/Rectangle;

    sub-float v14, v5, v7

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    move-object/from16 v16, v3

    .end local v3    # "resources":Lcom/itextpdf/kernel/pdf/PdfResources;
    .local v16, "resources":Lcom/itextpdf/kernel/pdf/PdfResources;
    sub-float v3, v6, v8

    invoke-static {v15, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move/from16 v17, v5

    .end local v5    # "width":F
    .local v17, "width":F
    const/high16 v5, 0x40400000    # 3.0f

    invoke-direct {v13, v5, v15, v14, v3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v12, v4, v13}, Lcom/itextpdf/layout/Canvas;-><init>(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    move-object v3, v12

    .line 2607
    .local v3, "modelCanvas":Lcom/itextpdf/layout/Canvas;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v12, 0x52

    invoke-virtual {v3, v12, v5}, Lcom/itextpdf/layout/Canvas;->setProperty(ILjava/lang/Object;)V

    .line 2608
    new-instance v12, Lcom/itextpdf/layout/element/Div;

    invoke-direct {v12}, Lcom/itextpdf/layout/element/Div;-><init>()V

    .line 2609
    .local v12, "div":Lcom/itextpdf/layout/element/Div;
    sget v13, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    invoke-virtual {v0, v13}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2610
    sget-object v13, Lcom/itextpdf/layout/property/VerticalAlignment;->MIDDLE:Lcom/itextpdf/layout/property/VerticalAlignment;

    invoke-virtual {v12, v13}, Lcom/itextpdf/layout/element/Div;->setVerticalAlignment(Lcom/itextpdf/layout/property/VerticalAlignment;)Lcom/itextpdf/layout/element/IElement;

    .line 2612
    :cond_0
    sub-float v13, v6, v8

    invoke-static {v15, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/layout/element/Div;->setHeight(F)Lcom/itextpdf/layout/element/IElement;

    .line 2613
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_9

    .line 2614
    invoke-virtual {v3}, Lcom/itextpdf/layout/Canvas;->getRenderer()Lcom/itextpdf/layout/renderer/RootRenderer;

    move-result-object v14

    const/16 v15, 0x19

    invoke-virtual {v14, v15}, Lcom/itextpdf/layout/renderer/RootRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v14

    .line 2615
    .local v14, "isFull":Ljava/lang/Boolean;
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v15, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2616
    move/from16 v20, v6

    move/from16 v22, v7

    goto/16 :goto_5

    .line 2619
    :cond_1
    new-instance v15, Lcom/itextpdf/layout/element/Paragraph;

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v6

    .end local v6    # "height":F
    .local v20, "height":F
    move-object/from16 v6, v19

    check-cast v6, Ljava/lang/String;

    invoke-direct {v15, v6}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v15, v6}, Lcom/itextpdf/layout/element/Paragraph;->setFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/element/Paragraph;

    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/element/Paragraph;

    const/4 v15, 0x0

    invoke-virtual {v6, v15, v15, v15, v15}, Lcom/itextpdf/layout/element/Paragraph;->setMargins(FFFF)Lcom/itextpdf/layout/element/IElement;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/element/Paragraph;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v6, v15}, Lcom/itextpdf/layout/element/Paragraph;->setMultipliedLeading(F)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object v6

    .line 2620
    .local v6, "paragraph":Lcom/itextpdf/layout/element/Paragraph;
    const/16 v15, 0x1a

    invoke-virtual {v6, v15, v5}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    .line 2621
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->convertJustificationToTextAlignment()Lcom/itextpdf/layout/property/TextAlignment;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/itextpdf/layout/element/Paragraph;->setTextAlignment(Lcom/itextpdf/layout/property/TextAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2623
    iget-object v15, v0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    if-eqz v15, :cond_2

    .line 2624
    invoke-virtual {v6, v15}, Lcom/itextpdf/layout/element/Paragraph;->setFontColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2626
    :cond_2
    sget v15, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    invoke-virtual {v0, v15}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v15

    if-nez v15, :cond_8

    .line 2627
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->I:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v15, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 2628
    .local v0, "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v15

    if-nez v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 2629
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v15

    move-object/from16 v19, v0

    .end local v0    # "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    .local v19, "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->I:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v15, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .end local v19    # "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v0    # "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    goto :goto_1

    .line 2628
    :cond_3
    move-object/from16 v19, v0

    .line 2631
    .end local v0    # "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v19    # "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    move-object/from16 v0, v19

    .end local v19    # "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v0    # "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v15

    if-lez v15, :cond_7

    .line 2632
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2633
    .local v19, "ind":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v21

    if-nez v21, :cond_4

    .line 2634
    goto :goto_2

    .line 2635
    :cond_4
    move-object/from16 v21, v19

    check-cast v21, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v21

    move-object/from16 v23, v0

    .end local v0    # "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    .local v23, "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    add-int v0, v13, p5

    int-to-double v0, v0

    cmpl-double v0, v21, v0

    if-nez v0, :cond_5

    .line 2636
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    const/16 v1, 0xa

    move-object/from16 v21, v5

    const/16 v5, 0x24

    move/from16 v22, v7

    .end local v7    # "widthBorder":F
    .local v22, "widthBorder":F
    const/16 v7, 0x6a

    invoke-direct {v0, v1, v5, v7}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/element/Paragraph;->setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2637
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->LIGHT_GRAY:Lcom/itextpdf/kernel/colors/Color;

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/element/Paragraph;->setFontColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;

    goto :goto_3

    .line 2635
    .end local v22    # "widthBorder":F
    .restart local v7    # "widthBorder":F
    :cond_5
    move-object/from16 v21, v5

    move/from16 v22, v7

    .line 2639
    .end local v7    # "widthBorder":F
    .end local v19    # "ind":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v22    # "widthBorder":F
    :goto_3
    move/from16 v1, p2

    move-object/from16 v5, v21

    move/from16 v7, v22

    move-object/from16 v0, v23

    goto :goto_2

    .line 2632
    .end local v22    # "widthBorder":F
    .end local v23    # "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v0    # "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v7    # "widthBorder":F
    :cond_6
    move-object/from16 v23, v0

    move-object/from16 v21, v5

    move/from16 v22, v7

    .end local v0    # "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v7    # "widthBorder":F
    .restart local v22    # "widthBorder":F
    .restart local v23    # "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    goto :goto_4

    .line 2631
    .end local v22    # "widthBorder":F
    .end local v23    # "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v0    # "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v7    # "widthBorder":F
    :cond_7
    move-object/from16 v23, v0

    move-object/from16 v21, v5

    move/from16 v22, v7

    .end local v0    # "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v7    # "widthBorder":F
    .restart local v22    # "widthBorder":F
    .restart local v23    # "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    goto :goto_4

    .line 2626
    .end local v22    # "widthBorder":F
    .end local v23    # "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v7    # "widthBorder":F
    :cond_8
    move-object/from16 v21, v5

    move/from16 v22, v7

    .line 2642
    .end local v7    # "widthBorder":F
    .restart local v22    # "widthBorder":F
    :goto_4
    invoke-virtual {v12, v6}, Lcom/itextpdf/layout/element/Div;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Div;

    .line 2613
    .end local v6    # "paragraph":Lcom/itextpdf/layout/element/Paragraph;
    .end local v14    # "isFull":Ljava/lang/Boolean;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v6, v20

    move-object/from16 v5, v21

    move/from16 v7, v22

    const/4 v15, 0x0

    goto/16 :goto_0

    .end local v20    # "height":F
    .end local v22    # "widthBorder":F
    .local v6, "height":F
    .restart local v7    # "widthBorder":F
    :cond_9
    move/from16 v20, v6

    move/from16 v22, v7

    .line 2644
    .end local v6    # "height":F
    .end local v7    # "widthBorder":F
    .end local v13    # "index":I
    .restart local v20    # "height":F
    .restart local v22    # "widthBorder":F
    :goto_5
    invoke-virtual {v3, v12}, Lcom/itextpdf/layout/Canvas;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2645
    nop

    .line 2646
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 2647
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endVariableText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2649
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->setData([B)V

    .line 2650
    return-void
.end method

.method private static generateDefaultAppearance(Lcom/itextpdf/kernel/pdf/PdfName;FLcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 8
    .param p0, "font"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p1, "fontSize"    # F
    .param p2, "textColor"    # Lcom/itextpdf/kernel/colors/Color;

    .line 3679
    if-eqz p0, :cond_4

    .line 3681
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3682
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    new-instance v2, Lcom/itextpdf/io/source/OutputStream;

    invoke-direct {v2, v0}, Lcom/itextpdf/io/source/OutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3683
    .local v1, "pdfStream":Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    const/4 v2, 0x1

    new-array v3, v2, [B

    const/16 v4, 0x67

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    .line 3684
    .local v3, "g":[B
    const/4 v4, 0x2

    new-array v6, v4, [B

    fill-array-data v6, :array_0

    .line 3685
    .local v6, "rg":[B
    new-array v2, v2, [B

    const/16 v7, 0x6b

    aput-byte v7, v2, v5

    .line 3686
    .local v2, "k":[B
    new-array v4, v4, [B

    fill-array-data v4, :array_1

    .line 3688
    .local v4, "Tf":[B
    invoke-virtual {v1, p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v5

    .line 3689
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3690
    invoke-virtual {v5, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3691
    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 3693
    if-eqz p2, :cond_3

    .line 3694
    instance-of v5, p2, Lcom/itextpdf/kernel/colors/DeviceGray;

    if-eqz v5, :cond_0

    .line 3695
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3696
    invoke-virtual {p2}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloats([F)Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3697
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3698
    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_0

    .line 3699
    :cond_0
    instance-of v5, p2, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz v5, :cond_1

    .line 3700
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3701
    invoke-virtual {p2}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloats([F)Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3702
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3703
    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_0

    .line 3704
    :cond_1
    instance-of v5, p2, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    if-eqz v5, :cond_2

    .line 3705
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3706
    invoke-virtual {p2}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloats([F)Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3707
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 3708
    invoke-virtual {v5, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_0

    .line 3710
    :cond_2
    const-class v5, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-static {v5}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 3711
    .local v5, "logger":Lorg/slf4j/Logger;
    const-string v7, "Unsupported color in FormField\'s DA"

    invoke-interface {v5, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 3714
    .end local v5    # "logger":Lorg/slf4j/Logger;
    :cond_3
    :goto_0
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([B)V

    return-object v5

    .line 3679
    .end local v0    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "pdfStream":Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    .end local v2    # "k":[B
    .end local v3    # "g":[B
    .end local v4    # "Tf":[B
    .end local v6    # "rg":[B
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x72t
        0x67t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x54t
        0x66t
    .end array-data
.end method

.method private getAcroFormKey(Lcom/itextpdf/kernel/pdf/PdfName;I)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 4
    .param p1, "key"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "type"    # I

    .line 3306
    const/4 v0, 0x0

    .line 3307
    .local v0, "acroFormKey":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    .line 3308
    .local v1, "document":Lcom/itextpdf/kernel/pdf/PdfDocument;
    if-eqz v1, :cond_0

    .line 3309
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 3310
    .local v2, "acroFormDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v2, :cond_0

    .line 3311
    invoke-virtual {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 3314
    .end local v2    # "acroFormDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v2

    if-ne v2, p2, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private getAcroFormObject(Lcom/itextpdf/kernel/pdf/PdfName;I)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 3
    .param p1, "key"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "type"    # I

    .line 3272
    const/4 v0, 0x0

    .line 3273
    .local v0, "acroFormObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 3274
    .local v1, "acroFormDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    .line 3275
    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 3277
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v2

    if-ne v2, p2, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private getFontNameFromDR(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 3
    .param p1, "fontResources"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "font"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3263
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3264
    .local v1, "drFont":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 3265
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 3267
    .end local v1    # "drFont":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    :cond_0
    goto :goto_0

    .line 3268
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFontSize(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/lang/String;)F
    .locals 3
    .param p1, "bBox"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p2, "value"    # Ljava/lang/String;

    .line 3078
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->isMultiline()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3079
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 3080
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3083
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->approximateFontSizeToFitSingleLine(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;F)F

    move-result v0

    return v0

    .line 3081
    :cond_1
    :goto_0
    const/high16 v0, 0x41400000    # 12.0f

    return v0

    .line 3086
    :cond_2
    return v0

    .line 3078
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private getRadioButtonValue()Ljava/lang/String;
    .locals 5

    .line 3069
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getAppearanceStates()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3070
    .local v3, "state":Ljava/lang/String;
    const-string v4, "Off"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3071
    return-object v3

    .line 3069
    .end local v3    # "state":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3074
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTypeFromParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 3
    .param p1, "field"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 3332
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 3333
    .local v0, "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 3334
    .local v1, "formType":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v0, :cond_0

    .line 3335
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 3336
    if-nez v1, :cond_0

    .line 3337
    invoke-direct {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getTypeFromParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 3340
    :cond_0
    return-object v1
.end method

.method private getUniqueFontNameForDR(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 5
    .param p1, "fontResources"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 3253
    const/4 v0, 0x1

    .line 3254
    .local v0, "indexer":I
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3257
    .local v1, "fontNames":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    :goto_0
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "F"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "indexer":I
    .local v4, "indexer":I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 3258
    .local v0, "uniqueName":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3259
    return-object v0

    .line 3258
    :cond_0
    move v0, v4

    goto :goto_0
.end method

.method private getValueFromAppearance(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1
    .param p1, "appearanceDict"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "key"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 3365
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    .line 3366
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0

    .line 3368
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasDefaultAppearance()Z
    .locals 3

    .line 3246
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 3247
    .local v0, "type":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Tx:Lcom/itextpdf/kernel/pdf/PdfName;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Ch:Lcom/itextpdf/kernel/pdf/PdfName;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    if-ne v0, v1, :cond_0

    .line 3249
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlags()I

    move-result v1

    sget v2, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_PUSH_BUTTON:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 3247
    :goto_1
    return v1
.end method

.method private static isWidgetAnnotation(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z
    .locals 2
    .param p0, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 3718
    if-eqz p0, :cond_0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static makeFieldFlag(I)I
    .locals 2
    .param p0, "bitPosition"    # I

    .line 277
    add-int/lit8 v0, p0, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method public static makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 4
    .param p0, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 1106
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1108
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1109
    .local v0, "dictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 1110
    .local v1, "formType":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Tx:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1111
    new-instance v2, Lcom/itextpdf/forms/fields/PdfTextFormField;

    invoke-direct {v2, v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .local v2, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    goto :goto_0

    .line 1112
    .end local v2    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    :cond_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1113
    new-instance v2, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    invoke-direct {v2, v0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .restart local v2    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    goto :goto_0

    .line 1114
    .end local v2    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    :cond_1
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Ch:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1115
    new-instance v2, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    invoke-direct {v2, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .restart local v2    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    goto :goto_0

    .line 1116
    .end local v2    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    :cond_2
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Sig:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1117
    new-instance v2, Lcom/itextpdf/forms/fields/PdfSignatureFormField;

    invoke-direct {v2, v0}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .restart local v2    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    goto :goto_0

    .line 1119
    .end local v2    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    :cond_3
    new-instance v2, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-direct {v2, v0}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1121
    .restart local v2    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    :goto_0
    invoke-virtual {v2, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 1123
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfReader;->getPdfAConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1124
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfReader;->getPdfAConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object v3

    iput-object v3, v2, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 1126
    :cond_4
    return-object v2

    .line 1129
    .end local v0    # "dictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v1    # "formType":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v2    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private obfuscatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 3344
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 3345
    .local v0, "pchar":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3346
    const/16 v2, 0x2a

    aput-char v2, v0, v1

    .line 3345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3347
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private static optionsArrayToString(Lcom/itextpdf/kernel/pdf/PdfArray;)Ljava/lang/String;
    .locals 6
    .param p0, "options"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 3656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3657
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3658
    .local v2, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_0

    .line 3659
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3660
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3661
    move-object v4, v2

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 3662
    .local v3, "element":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3663
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3665
    .end local v3    # "element":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_1
    goto :goto_1

    .line 3666
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3668
    .end local v2    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_1
    goto :goto_0

    .line 3670
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 3671
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static processOptions([Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 6
    .param p0, "options"    # [Ljava/lang/String;

    .line 2345
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 2346
    .local v0, "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 2347
    .local v3, "option":Ljava/lang/String;
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v5, "UnicodeBig"

    invoke-direct {v4, v3, v5}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 2346
    .end local v3    # "option":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2349
    :cond_0
    return-object v0
.end method

.method protected static processOptions([[Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 9
    .param p0, "options"    # [[Ljava/lang/String;

    .line 2335
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 2336
    .local v0, "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 2337
    .local v4, "option":[Ljava/lang/String;
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfString;

    aget-object v7, v4, v2

    const-string v8, "UnicodeBig"

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 2338
    .local v5, "subArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfString;

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 2339
    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 2336
    .end local v4    # "option":[Ljava/lang/String;
    .end local v5    # "subArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2341
    :cond_0
    return-object v0
.end method

.method private putAcroFormObject(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 2
    .param p1, "acroFormKey"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "acroFormObject"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3292
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3293
    return-void
.end method

.method private regenerateCheckboxField(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    .line 3458
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getRect(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 3459
    .local v0, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    iget v1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->setCheckType(I)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 3461
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 3463
    .local v1, "widget":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    iget-object v2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    const-string v3, "Yes"

    const-string v4, "Off"

    if-eqz v2, :cond_1

    .line 3464
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    iget v6, p0, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    invoke-virtual {p0, v2, v5, v3, v6}, Lcom/itextpdf/forms/fields/PdfFormField;->drawPdfA2CheckAppearance(FFLjava/lang/String;I)V

    .line 3465
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    goto :goto_2

    .line 3467
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, p1

    :goto_1
    invoke-virtual {p0, v2, v5, v3}, Lcom/itextpdf/forms/fields/PdfFormField;->drawCheckAppearance(FFLjava/lang/String;)V

    .line 3470
    :goto_2
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getNormalAppearanceObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getNormalAppearanceObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3471
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    goto :goto_3

    .line 3473
    :cond_3
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 3475
    :goto_3
    return-void
.end method

.method private regeneratePushButtonField()V
    .locals 9

    .line 3431
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 3433
    .local v0, "widget":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getRect(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 3434
    .local v1, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 3436
    .local v2, "apDic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v2, :cond_0

    .line 3437
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v2, v4

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 3439
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    iget-object v7, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 3440
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    iget-object v8, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    invoke-direct {p0, v3, v8}, Lcom/itextpdf/forms/fields/PdfFormField;->getFontSize(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/lang/String;)F

    move-result v8

    .line 3439
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/itextpdf/forms/fields/PdfFormField;->drawPushButtonAppearance(FFLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v3

    .line 3442
    .local v3, "appearance":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3444
    iget-object v4, p0, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-eqz v4, :cond_1

    .line 3445
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->createPushButtonAppearanceState(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 3447
    :cond_1
    return-void
.end method

.method private regenerateRadioButtonField()V
    .locals 4

    .line 3450
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getRect(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 3451
    .local v0, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-direct {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getRadioButtonValue()Ljava/lang/String;

    move-result-object v1

    .line 3452
    .local v1, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3453
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->drawRadioAppearance(FFLjava/lang/String;)V

    .line 3455
    :cond_0
    return-void
.end method

.method private regenerateTextAndChoiceField(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)Z
    .locals 41
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 3478
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v8

    .line 3479
    .local v8, "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 3482
    .local v0, "bBox":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v1, 0x0

    .line 3483
    .local v1, "pageRotation":I
    if-eqz v8, :cond_0

    .line 3484
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfPage;->getRotation()I

    move-result v1

    .line 3486
    mul-int/lit8 v1, v1, -0x1

    move v9, v1

    goto :goto_0

    .line 3483
    :cond_0
    move v9, v1

    .line 3489
    .end local v1    # "pageRotation":I
    .local v9, "pageRotation":I
    :goto_0
    rem-int/lit8 v1, v9, 0x5a

    const/4 v15, 0x2

    const-wide/16 v16, 0x0

    const/4 v2, 0x6

    const/4 v10, 0x0

    if-nez v1, :cond_4

    .line 3491
    rem-int/lit16 v1, v9, 0x168

    int-to-double v12, v1

    .line 3493
    .local v12, "angle":D
    invoke-static {v12, v13}, Lcom/itextpdf/forms/fields/PdfFormField;->degreeToRadians(D)D

    move-result-wide v11

    .line 3494
    .end local v12    # "angle":D
    .local v11, "angle":D
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 3496
    .local v1, "initialBboxRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v13

    .line 3498
    .local v13, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    const-wide/16 v22, 0x0

    .line 3499
    .local v22, "translationWidth":D
    const-wide/16 v24, 0x0

    .line 3500
    .local v24, "translationHeight":D
    const-wide v26, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpl-double v28, v11, v26

    if-ltz v28, :cond_1

    const-wide v28, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v28, v11, v28

    if-gtz v28, :cond_1

    .line 3501
    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v14

    float-to-double v4, v14

    .end local v22    # "translationWidth":D
    .local v4, "translationWidth":D
    goto :goto_1

    .line 3503
    .end local v4    # "translationWidth":D
    .restart local v22    # "translationWidth":D
    :cond_1
    move-wide/from16 v4, v22

    .end local v22    # "translationWidth":D
    .restart local v4    # "translationWidth":D
    :goto_1
    cmpg-double v14, v11, v26

    if-gtz v14, :cond_2

    .line 3504
    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v14

    move-wide/from16 v26, v4

    .end local v4    # "translationWidth":D
    .local v26, "translationWidth":D
    float-to-double v3, v14

    .end local v24    # "translationHeight":D
    .local v3, "translationHeight":D
    goto :goto_2

    .line 3503
    .end local v3    # "translationHeight":D
    .end local v26    # "translationWidth":D
    .restart local v4    # "translationWidth":D
    .restart local v24    # "translationHeight":D
    :cond_2
    move-wide/from16 v26, v4

    .end local v4    # "translationWidth":D
    .restart local v26    # "translationWidth":D
    move-wide/from16 v3, v24

    .line 3508
    .end local v24    # "translationHeight":D
    .restart local v3    # "translationHeight":D
    :goto_2
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-array v14, v2, [D

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    aput-wide v23, v14, v10

    move-wide/from16 v24, v3

    .end local v3    # "translationHeight":D
    .restart local v24    # "translationHeight":D
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    const/4 v4, 0x1

    aput-wide v2, v14, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    aput-wide v2, v14, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const/16 v22, 0x3

    aput-wide v2, v14, v22

    const/16 v29, 0x4

    aput-wide v26, v14, v29

    const/4 v2, 0x5

    aput-wide v24, v14, v2

    invoke-direct {v5, v14}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    move-object v2, v5

    .line 3510
    .local v2, "matrix":Lcom/itextpdf/kernel/pdf/PdfArray;
    const-wide v20, 0x3ff921fb54442d18L    # 1.5707963267948966

    rem-double v30, v11, v20

    cmpl-double v3, v30, v16

    if-nez v3, :cond_3

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    rem-double v30, v11, v18

    cmpl-double v3, v30, v16

    if-eqz v3, :cond_3

    .line 3511
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    invoke-virtual {v13, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 3512
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    invoke-virtual {v13, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 3515
    :cond_3
    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    move-wide/from16 v4, v26

    .end local v26    # "translationWidth":D
    .restart local v4    # "translationWidth":D
    double-to-float v14, v4

    add-float/2addr v3, v14

    invoke-virtual {v13, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 3516
    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    move-wide/from16 v30, v11

    move-wide/from16 v10, v24

    .end local v11    # "angle":D
    .end local v24    # "translationHeight":D
    .local v10, "translationHeight":D
    .local v30, "angle":D
    double-to-float v12, v10

    add-float/2addr v3, v12

    invoke-virtual {v13, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 3518
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3, v13}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    move-object v0, v3

    .line 3519
    .end local v1    # "initialBboxRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v4    # "translationWidth":D
    .end local v10    # "translationHeight":D
    .end local v13    # "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v30    # "angle":D
    move-object v10, v0

    move-object v11, v2

    const/4 v3, 0x6

    goto :goto_3

    .line 3521
    .end local v2    # "matrix":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_4
    const/16 v22, 0x3

    const/16 v29, 0x4

    const-class v1, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 3522
    .local v1, "logger":Lorg/slf4j/Logger;
    const-string v2, "Encounterd a page rotation that was not a multiple of 90\u00b0/ (Pi/2) when generating default appearances for form fields"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 3523
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v3, 0x6

    new-array v4, v3, [D

    fill-array-data v4, :array_0

    invoke-direct {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    move-object v10, v0

    move-object v11, v2

    .line 3526
    .end local v0    # "bBox":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v1    # "logger":Lorg/slf4j/Logger;
    .local v10, "bBox":Lcom/itextpdf/kernel/pdf/PdfArray;
    .local v11, "matrix":Lcom/itextpdf/kernel/pdf/PdfArray;
    :goto_3
    const/4 v0, 0x0

    .line 3527
    .local v0, "fieldRotation":F
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->MK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3528
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->MK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3529
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->MK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsFloat(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 3531
    int-to-float v1, v9

    add-float/2addr v0, v1

    move v12, v0

    goto :goto_4

    .line 3533
    :cond_5
    move v12, v0

    .end local v0    # "fieldRotation":F
    .local v12, "fieldRotation":F
    :goto_4
    const/high16 v0, 0x42b40000    # 90.0f

    rem-float v0, v12, v0

    const/4 v13, 0x0

    cmpl-float v0, v0, v13

    if-nez v0, :cond_7

    .line 3534
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfArray;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v23

    .line 3536
    .local v23, "initialBboxRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, v12, v0

    float-to-double v0, v0

    .line 3538
    .local v0, "angle":D
    invoke-static {v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->degreeToRadians(D)D

    move-result-wide v24

    .line 3540
    .end local v0    # "angle":D
    .local v24, "angle":D
    int-to-double v0, v9

    invoke-static {v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->degreeToRadians(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move v14, v3

    const/4 v13, 0x1

    move-wide v2, v4

    move/from16 v14, v22

    move-wide/from16 v4, v24

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/forms/fields/PdfFormField;->calculateTranslationWidthAfterFieldRot(Lcom/itextpdf/kernel/geom/Rectangle;DD)F

    move-result v0

    float-to-double v4, v0

    .line 3541
    .restart local v4    # "translationWidth":D
    int-to-double v0, v9

    invoke-static {v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->degreeToRadians(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v32, v4

    .end local v4    # "translationWidth":D
    .local v32, "translationWidth":D
    move-wide/from16 v4, v24

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/forms/fields/PdfFormField;->calculateTranslationHeightAfterFieldRot(Lcom/itextpdf/kernel/geom/Rectangle;DD)F

    move-result v0

    float-to-double v0, v0

    .line 3544
    .local v0, "translationHeight":D
    new-instance v2, Lcom/itextpdf/kernel/geom/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v35

    invoke-virtual {v11, v13}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v36

    invoke-virtual {v11, v15}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v37

    invoke-virtual {v11, v14}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v38

    const/4 v4, 0x4

    invoke-virtual {v11, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v39

    const/4 v4, 0x5

    invoke-virtual {v11, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v40

    move-object/from16 v34, v2

    invoke-direct/range {v34 .. v40}, Lcom/itextpdf/kernel/geom/Matrix;-><init>(FFFFFF)V

    .line 3545
    .local v2, "currentMatrix":Lcom/itextpdf/kernel/geom/Matrix;
    new-instance v4, Lcom/itextpdf/kernel/geom/Matrix;

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    neg-double v5, v5

    double-to-float v5, v5

    move/from16 v27, v14

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    move-wide/from16 v14, v32

    .end local v32    # "translationWidth":D
    .local v14, "translationWidth":D
    double-to-float v3, v14

    double-to-float v7, v0

    move-object/from16 v34, v4

    move/from16 v35, v27

    move/from16 v36, v5

    move/from16 v37, v13

    move/from16 v38, v6

    move/from16 v39, v3

    move/from16 v40, v7

    invoke-direct/range {v34 .. v40}, Lcom/itextpdf/kernel/geom/Matrix;-><init>(FFFFFF)V

    move-object v3, v4

    .line 3546
    .local v3, "toConcatenate":Lcom/itextpdf/kernel/geom/Matrix;
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Matrix;->multiply(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object v2

    .line 3547
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v5, 0x6

    new-array v7, v5, [F

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v6

    aput v6, v7, v13

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v27

    aput v27, v7, v6

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v22

    const/16 v27, 0x2

    aput v22, v7, v27

    const/4 v13, 0x4

    invoke-virtual {v2, v13}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v22

    aput v22, v7, v6

    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v5

    aput v5, v7, v13

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v5

    const/4 v6, 0x5

    aput v5, v7, v6

    invoke-direct {v4, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    move-object v11, v4

    .line 3550
    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 3552
    .local v4, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    rem-double v5, v24, v5

    cmpl-double v5, v5, v16

    if-nez v5, :cond_6

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    rem-double v5, v24, v5

    cmpl-double v5, v5, v16

    if-eqz v5, :cond_6

    .line 3553
    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 3554
    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 3556
    :cond_6
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v5

    double-to-float v6, v14

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 3557
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v5

    double-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 3559
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    move-object v10, v5

    .line 3562
    .end local v0    # "translationHeight":D
    .end local v2    # "currentMatrix":Lcom/itextpdf/kernel/geom/Matrix;
    .end local v3    # "toConcatenate":Lcom/itextpdf/kernel/geom/Matrix;
    .end local v4    # "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v14    # "translationWidth":D
    .end local v23    # "initialBboxRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v24    # "angle":D
    :cond_7
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfArray;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    .line 3563
    .local v6, "bboxRectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    move-object v7, v0

    .line 3564
    .local v7, "appearance":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Matrix:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v0, v11}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 3566
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Tx:Lcom/itextpdf/kernel/pdf/PdfName;

    move-object/from16 v13, p2

    invoke-virtual {v0, v13}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3567
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->isMultiline()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3568
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    move-object/from16 v15, p1

    invoke-virtual {v14, v6, v0, v15, v7}, Lcom/itextpdf/forms/fields/PdfFormField;->drawMultiLineTextAppearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/font/PdfFont;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V

    goto/16 :goto_8

    .line 3570
    :cond_8
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    iget-object v2, v14, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-direct {v14, v10, v15}, Lcom/itextpdf/forms/fields/PdfFormField;->getFontSize(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/lang/String;)F

    move-result v3

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v4, p1

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/forms/fields/PdfFormField;->drawTextAppearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/font/PdfFont;FLjava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V

    goto/16 :goto_8

    .line 3573
    :cond_9
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    const/4 v0, 0x0

    .line 3574
    .local v0, "topIndex":I
    sget v1, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    invoke-virtual {v14, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 3575
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->TI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    .line 3576
    .local v1, "topIndexNum":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-nez v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 3577
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->TI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    .line 3579
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getOptions()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 3580
    .local v2, "options":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 3581
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Opt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 3583
    :cond_b
    if-eqz v2, :cond_e

    .line 3584
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v3

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    move v0, v3

    .line 3585
    if-lez v0, :cond_d

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 3586
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Ljava/util/List;)V

    goto :goto_6

    :cond_d
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->clone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 3587
    .local v3, "visibleOptions":Lcom/itextpdf/kernel/pdf/PdfArray;
    :goto_6
    invoke-static {v3}, Lcom/itextpdf/forms/fields/PdfFormField;->optionsArrayToString(Lcom/itextpdf/kernel/pdf/PdfArray;)Ljava/lang/String;

    move-result-object v4

    move/from16 v16, v0

    move-object v15, v4

    .end local p1    # "value":Ljava/lang/String;
    .local v4, "value":Ljava/lang/String;
    goto :goto_7

    .line 3590
    .end local v1    # "topIndexNum":Lcom/itextpdf/kernel/pdf/PdfNumber;
    .end local v2    # "options":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v3    # "visibleOptions":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v4    # "value":Ljava/lang/String;
    .restart local p1    # "value":Ljava/lang/String;
    :cond_e
    move/from16 v16, v0

    .end local v0    # "topIndex":I
    .end local p1    # "value":Ljava/lang/String;
    .local v15, "value":Ljava/lang/String;
    .local v16, "topIndex":I
    :goto_7
    invoke-direct {v14, v10, v15}, Lcom/itextpdf/forms/fields/PdfFormField;->getFontSize(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/lang/String;)F

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v3, v15

    move-object v4, v7

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/forms/fields/PdfFormField;->drawChoiceAppearance(Lcom/itextpdf/kernel/geom/Rectangle;FLjava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;I)V

    .line 3592
    .end local v16    # "topIndex":I
    :goto_8
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 3593
    .local v0, "ap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3594
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 3595
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v14, v1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 3597
    const/4 v1, 0x1

    return v1

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data
.end method

.method private regenerateWidget(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 3638
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 3640
    .local v0, "type":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Tx:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Ch:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3642
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3643
    sget v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_PUSH_BUTTON:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3644
    invoke-direct {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regeneratePushButtonField()V

    goto :goto_0

    .line 3645
    :cond_1
    sget v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_RADIO:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3646
    invoke-direct {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateRadioButtonField()V

    goto :goto_0

    .line 3648
    :cond_2
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateCheckboxField(Ljava/lang/String;)V

    .line 3650
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 3652
    :cond_3
    const/4 v1, 0x0

    return v1

    .line 3641
    :cond_4
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateTextAndChoiceField(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    return v1
.end method

.method private resolveFontName(Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 4
    .param p1, "fontName"    # Ljava/lang/String;

    .line 3399
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getAcroFormObject(Lcom/itextpdf/kernel/pdf/PdfName;I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 3400
    .local v0, "defaultResources":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 3401
    .local v2, "defaultFontDic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :goto_0
    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    .line 3402
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 3403
    .local v3, "daFontDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v3, :cond_1

    .line 3404
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    return-object v1

    .line 3407
    .end local v3    # "daFontDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_1
    return-object v1
.end method

.method private retrieveStyles()V
    .locals 6

    .line 3375
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 3376
    .local v0, "subType":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3377
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->MK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 3378
    .local v1, "appearanceCharacteristics":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    .line 3379
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->BG:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->appearancePropToColor(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    .line 3380
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->BC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->appearancePropToColor(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    .line 3381
    .local v2, "extractedBorderColor":Lcom/itextpdf/kernel/colors/Color;
    if-eqz v2, :cond_0

    .line 3382
    iput-object v2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    .line 3385
    .end local v1    # "appearanceCharacteristics":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v2    # "extractedBorderColor":Lcom/itextpdf/kernel/colors/Color;
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDefaultAppearance()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    .line 3386
    .local v1, "defaultAppearance":Lcom/itextpdf/kernel/pdf/PdfString;
    if-eqz v1, :cond_1

    .line 3387
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->splitDAelements(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    .line 3388
    .local v2, "fontData":[Ljava/lang/Object;
    const/4 v3, 0x1

    aget-object v4, v2, v3

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    .line 3389
    const/4 v5, 0x2

    aget-object v5, v2, v5

    check-cast v5, Lcom/itextpdf/kernel/colors/Color;

    iput-object v5, p0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 3390
    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    .line 3391
    aget-object v3, v2, v4

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/itextpdf/forms/fields/PdfFormField;->resolveFontName(Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 3395
    .end local v2    # "fontData":[Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v3, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    invoke-direct {p0, v2, v3}, Lcom/itextpdf/forms/fields/PdfFormField;->updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 3396
    return-void
.end method

.method protected static splitDAelements(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 11
    .param p0, "da"    # Ljava/lang/String;

    .line 2388
    new-instance v0, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v2, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v2}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 2389
    .local v0, "tk":Lcom/itextpdf/io/source/PdfTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2390
    .local v1, "stack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    .line 2392
    .local v3, "ret":[Ljava/lang/Object;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2393
    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Comment:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v4, v5, :cond_0

    .line 2394
    goto :goto_0

    .line 2395
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Other:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v4, v5, :cond_4

    .line 2396
    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    sparse-switch v6, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string/jumbo v6, "rg"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v9

    goto :goto_1

    :sswitch_1
    const-string v6, "Tf"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v7

    goto :goto_1

    :sswitch_2
    const-string v6, "k"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v2

    goto :goto_1

    :sswitch_3
    const-string v6, "g"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v8

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 2429
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_2

    .line 2420
    :pswitch_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_3

    .line 2421
    new-instance v4, Ljava/lang/Float;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 2422
    .local v4, "cyan":F
    new-instance v5, Ljava/lang/Float;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 2423
    .local v5, "magenta":F
    new-instance v6, Ljava/lang/Float;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 2424
    .local v6, "yellow":F
    new-instance v7, Ljava/lang/Float;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 2425
    .local v7, "black":F
    new-instance v8, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(FFFF)V

    aput-object v8, v3, v9

    .line 2426
    .end local v4    # "cyan":F
    .end local v5    # "magenta":F
    .end local v6    # "yellow":F
    .end local v7    # "black":F
    goto/16 :goto_2

    .line 2412
    :pswitch_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v2, :cond_3

    .line 2413
    new-instance v4, Ljava/lang/Float;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 2414
    .local v4, "red":F
    new-instance v5, Ljava/lang/Float;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 2415
    .local v5, "green":F
    new-instance v6, Ljava/lang/Float;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 2416
    .local v6, "blue":F
    new-instance v7, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {v7, v4, v5, v6}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    aput-object v7, v3, v9

    .line 2417
    .end local v4    # "red":F
    .end local v5    # "green":F
    .end local v6    # "blue":F
    goto :goto_2

    .line 2404
    :pswitch_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v8, :cond_3

    .line 2405
    new-instance v4, Ljava/lang/Float;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 2406
    .local v4, "gray":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_2

    .line 2407
    new-instance v5, Lcom/itextpdf/kernel/colors/DeviceGray;

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    aput-object v5, v3, v9

    .line 2409
    .end local v4    # "gray":F
    :cond_2
    goto :goto_2

    .line 2398
    :pswitch_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v9, :cond_3

    .line 2399
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v9

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v7

    .line 2400
    new-instance v4, Ljava/lang/Float;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v8

    .line 2430
    :cond_3
    :goto_2
    goto/16 :goto_0

    .line 2433
    :cond_4
    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2438
    :cond_5
    goto :goto_3

    .line 2436
    :catch_0
    move-exception v2

    .line 2439
    :goto_3
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_3
        0x6b -> :sswitch_2
        0xa92 -> :sswitch_1
        0xe35 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V
    .locals 1
    .param p1, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p2, "fontSize"    # F

    .line 1235
    if-nez p1, :cond_0

    .line 1236
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p1

    .line 1238
    :cond_0
    iput-object p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 1239
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    .line 1240
    const/high16 p2, 0x41400000    # 12.0f

    .line 1242
    :cond_1
    iput p2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    .line 1243
    return-void
.end method


# virtual methods
.method public addKid(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2
    .param p1, "kid"    # Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1308
    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/fields/PdfFormField;->setParent(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1309
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 1310
    .local v0, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_0

    .line 1311
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v0, v1

    .line 1313
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1315
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    return-object v1
.end method

.method public addKid(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2
    .param p1, "kid"    # Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 1326
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setParent(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 1327
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 1328
    .local v0, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_0

    .line 1329
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v0, v1

    .line 1331
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1332
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    return-object v1
.end method

.method protected drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V
    .locals 23
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 2661
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2662
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getBorderWidth()F

    move-result v1

    .line 2663
    .local v1, "borderWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getBorderStyle()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v13

    .line 2664
    .local v13, "bs":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    .line 2665
    const/4 v1, 0x0

    .line 2668
    :cond_0
    iget-object v3, v0, Lcom/itextpdf/forms/fields/PdfFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    if-eqz v3, :cond_1

    .line 2669
    nop

    .line 2670
    invoke-virtual {v10, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v14

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    float-to-double v3, v11

    float-to-double v5, v12

    .line 2671
    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    invoke-virtual/range {v14 .. v22}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    .line 2672
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2675
    :cond_1
    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    iget-object v2, v0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    if-eqz v2, :cond_3

    .line 2676
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 2677
    .end local v1    # "borderWidth":F
    .local v14, "borderWidth":F
    iget-object v1, v0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    .line 2678
    invoke-virtual {v10, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 2679
    invoke-virtual {v1, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2680
    iget-object v1, v0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    iget-object v2, v0, Lcom/itextpdf/forms/fields/PdfFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    invoke-static {v13, v14, v1, v2}, Lcom/itextpdf/forms/fields/borders/FormBorderFactory;->getBorder(Lcom/itextpdf/kernel/pdf/PdfDictionary;FLcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/borders/Border;

    move-result-object v15

    .line 2681
    .local v15, "border":Lcom/itextpdf/layout/borders/Border;
    if-eqz v15, :cond_2

    .line 2682
    add-float v1, v14, v14

    .line 2683
    .local v1, "borderWidthX2":F
    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    sub-float v3, v11, v1

    sub-float v4, v12, v1

    invoke-direct {v2, v14, v14, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-virtual {v15, v10, v2}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 2685
    .end local v1    # "borderWidthX2":F
    goto :goto_0

    .line 2686
    :cond_2
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    float-to-double v6, v11

    float-to-double v8, v12

    .line 2687
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 2688
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2692
    .end local v15    # "border":Lcom/itextpdf/layout/borders/Border;
    :goto_0
    move v1, v14

    .end local v14    # "borderWidth":F
    .local v1, "borderWidth":F
    :cond_3
    move-object/from16 v2, p2

    invoke-direct {v0, v2, v12, v11}, Lcom/itextpdf/forms/fields/PdfFormField;->applyRotation(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2693
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2694
    return-void
.end method

.method protected drawButton(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)V
    .locals 15
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p8, "fontSize"    # F

    .line 2995
    move-object v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    iget-object v3, v0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    if-nez v3, :cond_0

    .line 2996
    sget-object v3, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    iput-object v3, v0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 2998
    :cond_0
    if-nez p6, :cond_1

    .line 2999
    const-string v3, ""

    .end local p6    # "text":Ljava/lang/String;
    .local v3, "text":Ljava/lang/String;
    goto :goto_0

    .line 2998
    .end local v3    # "text":Ljava/lang/String;
    .restart local p6    # "text":Ljava/lang/String;
    :cond_1
    move-object/from16 v3, p6

    .line 3002
    .end local p6    # "text":Ljava/lang/String;
    .restart local v3    # "text":Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v4, v3}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, p7

    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/element/Paragraph;->setFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/element/Paragraph;

    move/from16 v6, p8

    invoke-virtual {v4, v6}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/element/Paragraph;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/itextpdf/layout/element/Paragraph;->setMargin(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/element/Paragraph;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v4, v8}, Lcom/itextpdf/layout/element/Paragraph;->setMultipliedLeading(F)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object v4

    sget-object v8, Lcom/itextpdf/layout/property/VerticalAlignment;->MIDDLE:Lcom/itextpdf/layout/property/VerticalAlignment;

    .line 3003
    invoke-virtual {v4, v8}, Lcom/itextpdf/layout/element/Paragraph;->setVerticalAlignment(Lcom/itextpdf/layout/property/VerticalAlignment;)Lcom/itextpdf/layout/element/IElement;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/element/Paragraph;

    .line 3004
    .local v4, "paragraph":Lcom/itextpdf/layout/element/Paragraph;
    new-instance v8, Lcom/itextpdf/layout/Canvas;

    new-instance v9, Lcom/itextpdf/kernel/geom/Rectangle;

    neg-float v10, v2

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v12, v2, v11

    invoke-direct {v9, v7, v10, v1, v12}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object/from16 v7, p1

    invoke-direct {v8, v7, v9}, Lcom/itextpdf/layout/Canvas;-><init>(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    move-object v14, v8

    .line 3005
    .local v14, "modelCanvas":Lcom/itextpdf/layout/Canvas;
    const/16 v8, 0x52

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v14, v8, v9}, Lcom/itextpdf/layout/Canvas;->setProperty(ILjava/lang/Object;)V

    .line 3006
    div-float v10, v1, v11

    div-float v11, v2, v11

    sget-object v12, Lcom/itextpdf/layout/property/TextAlignment;->CENTER:Lcom/itextpdf/layout/property/TextAlignment;

    sget-object v13, Lcom/itextpdf/layout/property/VerticalAlignment;->MIDDLE:Lcom/itextpdf/layout/property/VerticalAlignment;

    move-object v8, v14

    move-object v9, v4

    invoke-virtual/range {v8 .. v13}, Lcom/itextpdf/layout/Canvas;->showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFLcom/itextpdf/layout/property/TextAlignment;Lcom/itextpdf/layout/property/VerticalAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 3007
    return-void
.end method

.method protected drawCheckAppearance(FFLjava/lang/String;)V
    .locals 16
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "onStateName"    # Ljava/lang/String;

    .line 2821
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v7, v8}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v9, v0

    .line 2823
    .local v9, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2824
    .local v10, "streamOn":Lcom/itextpdf/kernel/pdf/PdfStream;
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-direct {v0, v10, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    move-object v11, v0

    .line 2825
    .local v11, "canvasOn":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v0, v9}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    move-object v12, v0

    .line 2826
    .local v12, "xObjectOn":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    invoke-virtual {v6, v11, v12, v7, v8}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2827
    iget v4, v6, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/forms/fields/PdfFormField;->drawCheckBox(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFZ)V

    .line 2828
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2829
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources;->addFont(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/pdf/PdfName;

    .line 2832
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2833
    .local v13, "streamOff":Lcom/itextpdf/kernel/pdf/PdfStream;
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-direct {v0, v13, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    move-object v14, v0

    .line 2834
    .local v14, "canvasOff":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v0, v9}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    move-object v15, v0

    .line 2835
    .local v15, "xObjectOff":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    invoke-virtual {v6, v14, v15, v7, v8}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2836
    iget v4, v6, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/forms/fields/PdfFormField;->drawCheckBox(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFZ)V

    .line 2837
    invoke-virtual {v15}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2838
    invoke-virtual {v15}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources;->addFont(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/pdf/PdfName;

    .line 2840
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 2841
    .local v0, "normalAppearance":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    move-object/from16 v2, p3

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2842
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v3, "Off"

    invoke-direct {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2844
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 2845
    .local v1, "mk":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->CA:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v5, v6, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2847
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 2848
    .local v3, "widget":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->MK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 2849
    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setNormalAppearance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 2850
    return-void
.end method

.method protected drawCheckBox(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFZ)V
    .locals 5
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "fontSize"    # F
    .param p5, "on"    # Z

    .line 3019
    if-nez p5, :cond_0

    .line 3020
    return-void

    .line 3023
    :cond_0
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3024
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    invoke-static {p1, p2, p3, v0}, Lcom/itextpdf/forms/util/DrawingUtil;->drawCross(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFF)V

    .line 3025
    return-void

    .line 3027
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    .line 3028
    .local v0, "ufont":Lcom/itextpdf/kernel/font/PdfFont;
    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gtz v1, :cond_2

    .line 3030
    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v1, p2, p3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    iget-object v2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/forms/fields/PdfFormField;->approximateFontSizeToFitSingleLine(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;F)F

    move-result p4

    .line 3033
    :cond_2
    nop

    .line 3034
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 3035
    invoke-virtual {v1, v0, p4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 3036
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resetFillColorRgb()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    .line 3037
    invoke-virtual {v0, v2, p4}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v2

    sub-float v2, p2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    invoke-virtual {v0, v4, p4}, Lcom/itextpdf/kernel/font/PdfFont;->getAscent(Ljava/lang/String;F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p3, v4

    div-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    .line 3038
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 3039
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 3040
    return-void
.end method

.method protected drawMultiLineTextAppearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/font/PdfFont;FLjava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V
    .locals 0
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p3, "fontSize"    # F
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "appearance"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2534
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/itextpdf/forms/fields/PdfFormField;->drawMultiLineTextAppearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/font/PdfFont;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V

    .line 2535
    return-void
.end method

.method protected drawMultiLineTextAppearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/font/PdfFont;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V
    .locals 11
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "appearance"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 2538
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2539
    .local v0, "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v1

    .line 2540
    .local v1, "resources":Lcom/itextpdf/kernel/pdf/PdfResources;
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2542
    .local v2, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    .line 2543
    .local v3, "width":F
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    .line 2545
    .local v4, "height":F
    invoke-virtual {p0, v2, p4, v3, v4}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2546
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginVariableText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2548
    new-instance v5, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 2549
    .local v5, "areaRect":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v7, Lcom/itextpdf/layout/Canvas;

    invoke-direct {v7, v2, v5}, Lcom/itextpdf/layout/Canvas;-><init>(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 2550
    .local v7, "modelCanvas":Lcom/itextpdf/layout/Canvas;
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/16 v9, 0x52

    invoke-virtual {v7, v9, v8}, Lcom/itextpdf/layout/Canvas;->setProperty(ILjava/lang/Object;)V

    .line 2552
    invoke-static {p3}, Lcom/itextpdf/forms/fields/PdfFormField;->createParagraphForTextFieldValue(Ljava/lang/String;)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/itextpdf/layout/element/Paragraph;->setFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/element/Paragraph;

    .line 2553
    invoke-virtual {v9, v6}, Lcom/itextpdf/layout/element/Paragraph;->setMargin(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/element/Paragraph;

    .line 2554
    const/high16 v10, 0x40400000    # 3.0f

    invoke-virtual {v9, v10}, Lcom/itextpdf/layout/element/Paragraph;->setPadding(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/element/Paragraph;

    .line 2555
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Lcom/itextpdf/layout/element/Paragraph;->setMultipliedLeading(F)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object v9

    .line 2556
    .local v9, "paragraph":Lcom/itextpdf/layout/element/Paragraph;
    iget v10, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    cmpl-float v6, v10, v6

    if-nez v6, :cond_0

    .line 2557
    invoke-virtual {v7}, Lcom/itextpdf/layout/Canvas;->getRenderer()Lcom/itextpdf/layout/renderer/RootRenderer;

    move-result-object v6

    invoke-direct {p0, v9, v5, v6}, Lcom/itextpdf/forms/fields/PdfFormField;->approximateFontSizeToFitMultiLine(Lcom/itextpdf/layout/element/Paragraph;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/IRenderer;)F

    move-result v6

    invoke-virtual {v9, v6}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    goto :goto_0

    .line 2559
    :cond_0
    invoke-virtual {v9, v10}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2561
    :goto_0
    const/16 v6, 0x1a

    invoke-virtual {v9, v6, v8}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    .line 2562
    invoke-direct {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->convertJustificationToTextAlignment()Lcom/itextpdf/layout/property/TextAlignment;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/itextpdf/layout/element/Paragraph;->setTextAlignment(Lcom/itextpdf/layout/property/TextAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2564
    iget-object v6, p0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    if-eqz v6, :cond_1

    .line 2565
    invoke-virtual {v9, v6}, Lcom/itextpdf/layout/element/Paragraph;->setFontColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2568
    :cond_1
    const v6, 0x3727c5ac    # 1.0E-5f

    sub-float v6, v4, v6

    invoke-virtual {v9, v6}, Lcom/itextpdf/layout/element/Paragraph;->setHeight(F)Lcom/itextpdf/layout/element/IElement;

    .line 2569
    const/16 v6, 0x69

    sget-object v8, Lcom/itextpdf/layout/property/BoxSizingPropertyValue;->BORDER_BOX:Lcom/itextpdf/layout/property/BoxSizingPropertyValue;

    invoke-virtual {v9, v6, v8}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    .line 2570
    const/16 v6, 0x67

    sget-object v8, Lcom/itextpdf/layout/property/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    invoke-virtual {v9, v6, v8}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    .line 2571
    const/16 v6, 0x68

    sget-object v8, Lcom/itextpdf/layout/property/OverflowPropertyValue;->HIDDEN:Lcom/itextpdf/layout/property/OverflowPropertyValue;

    invoke-virtual {v9, v6, v8}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    .line 2572
    invoke-virtual {v7, v9}, Lcom/itextpdf/layout/Canvas;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2573
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endVariableText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2575
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/itextpdf/kernel/pdf/PdfStream;->setData([B)V

    .line 2576
    return-void
.end method

.method protected drawPdfA1CheckAppearance(FFLjava/lang/String;I)V
    .locals 9
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "selectedValue"    # Ljava/lang/String;
    .param p4, "checkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2908
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2909
    .local v0, "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2910
    .local v1, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 2911
    .local v2, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v3, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v3, v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 2913
    .local v3, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    iput p4, p0, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    .line 2914
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2915
    const-string v4, "Off"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v1, p1, p2, v4}, Lcom/itextpdf/forms/fields/PdfFormField;->drawPdfACheckBox(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFZ)V

    .line 2917
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v4

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2919
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 2920
    .local v4, "normalAppearance":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v5, p3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2922
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 2923
    .local v5, "mk":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->CA:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v8, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2925
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 2926
    .local v6, "widget":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->MK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7, v5}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 2927
    invoke-virtual {v6, v4}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setNormalAppearance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 2928
    return-void
.end method

.method protected drawPdfA1RadioAppearance(FFLjava/lang/String;)V
    .locals 8
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2779
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2780
    .local v0, "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2781
    .local v1, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 2782
    .local v2, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v3, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v3, v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 2784
    .local v3, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2785
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    const-string v6, "Off"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/itextpdf/forms/fields/PdfFormField;->drawRadioField(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFZ)V

    .line 2787
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 2788
    .local v4, "normalAppearance":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v5, p3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2790
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 2792
    .local v5, "widget":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v6

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2793
    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setNormalAppearance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 2794
    return-void
.end method

.method protected drawPdfA2CheckAppearance(FFLjava/lang/String;I)V
    .locals 16
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "onStateName"    # Ljava/lang/String;
    .param p4, "checkType"    # I

    .line 2864
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    iput v3, v0, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    .line 2865
    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 2867
    .local v4, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2868
    .local v5, "streamOn":Lcom/itextpdf/kernel/pdf/PdfStream;
    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-direct {v7}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v8

    invoke-direct {v6, v5, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2869
    .local v6, "canvasOn":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    new-instance v7, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v7, v4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 2870
    .local v7, "xObjectOn":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    .line 2872
    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2873
    const/4 v8, 0x1

    invoke-virtual {v0, v6, v1, v2, v8}, Lcom/itextpdf/forms/fields/PdfFormField;->drawPdfACheckBox(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFZ)V

    .line 2874
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v8

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2876
    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v8}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2877
    .local v8, "streamOff":Lcom/itextpdf/kernel/pdf/PdfStream;
    new-instance v9, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-direct {v10}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v11

    invoke-direct {v9, v8, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2878
    .local v9, "canvasOff":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    new-instance v10, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v10, v4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 2879
    .local v10, "xObjectOff":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    .line 2881
    invoke-virtual {v0, v9, v10, v1, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2882
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v11

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2884
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 2885
    .local v11, "normalAppearance":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfName;

    move-object/from16 v13, p3

    invoke-direct {v12, v13}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2886
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v14, "Off"

    invoke-direct {v12, v14}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2888
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v12}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 2889
    .local v12, "mk":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v14, Lcom/itextpdf/kernel/pdf/PdfName;->CA:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v15, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v1, v0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    invoke-direct {v15, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v14, v15}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2891
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v1

    const/4 v14, 0x0

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 2892
    .local v1, "widget":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    sget-object v14, Lcom/itextpdf/kernel/pdf/PdfName;->MK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v14, v12}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 2893
    invoke-virtual {v1, v11}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setNormalAppearance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 2894
    return-void
.end method

.method protected drawPdfACheckBox(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFZ)V
    .locals 1
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "on"    # Z

    .line 3043
    if-nez p4, :cond_0

    .line 3044
    return-void

    .line 3046
    :cond_0
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3063
    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfAStar(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    goto :goto_0

    .line 3060
    :pswitch_1
    invoke-static {p1, p2, p3}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfASquare(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    .line 3061
    goto :goto_0

    .line 3057
    :pswitch_2
    invoke-static {p1, p2, p3}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfADiamond(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    .line 3058
    goto :goto_0

    .line 3054
    :pswitch_3
    invoke-static {p1, p2, p3}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfACross(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    .line 3055
    goto :goto_0

    .line 3051
    :pswitch_4
    invoke-static {p1, p2, p3}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfACircle(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    .line 3052
    goto :goto_0

    .line 3048
    :pswitch_5
    invoke-static {p1, p2, p3}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfACheck(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    .line 3049
    nop

    .line 3066
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected drawPushButtonAppearance(FFLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 21
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p5, "fontSize"    # F

    .line 2942
    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2943
    .local v12, "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-direct {v0, v12, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    move-object v8, v0

    .line 2945
    .local v8, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v10, v11}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    move-object v7, v0

    .line 2946
    .local v7, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    invoke-virtual {v9, v8, v7, v10, v11}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2948
    iget-object v0, v9, Lcom/itextpdf/forms/fields/PdfFormField;->img:Lcom/itextpdf/io/image/ImageData;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 2949
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    iget-object v2, v9, Lcom/itextpdf/forms/fields/PdfFormField;->img:Lcom/itextpdf/io/image/ImageData;

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    .line 2950
    .local v0, "imgXObj":Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    iget v2, v9, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    sub-float v15, v10, v2

    const/16 v16, 0x0

    const/16 v17, 0x0

    sub-float v18, v11, v2

    div-float v19, v2, v1

    div-float v20, v2, v1

    move-object v13, v8

    move-object v14, v0

    invoke-virtual/range {v13 .. v20}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2951
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addImage(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)Lcom/itextpdf/kernel/pdf/PdfName;

    .line 2952
    .end local v0    # "imgXObj":Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    move-object/from16 v2, p4

    move-object v13, v7

    move-object v14, v8

    goto :goto_0

    :cond_0
    iget-object v14, v9, Lcom/itextpdf/forms/fields/PdfFormField;->form:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v14, :cond_1

    .line 2953
    iget v0, v9, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    sub-float v0, v11, v0

    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getHeight()F

    move-result v2

    div-float v15, v0, v2

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v0, v9, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    sub-float v0, v11, v0

    iget-object v2, v9, Lcom/itextpdf/forms/fields/PdfFormField;->form:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getHeight()F

    move-result v2

    div-float v18, v0, v2

    iget v0, v9, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    div-float v19, v0, v1

    div-float v20, v0, v1

    move-object v13, v8

    invoke-virtual/range {v13 .. v20}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2954
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v0

    iget-object v1, v9, Lcom/itextpdf/forms/fields/PdfFormField;->form:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-object/from16 v2, p4

    move-object v13, v7

    move-object v14, v8

    goto :goto_0

    .line 2956
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object v13, v7

    .end local v7    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .local v13, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    move-object/from16 v7, p4

    move-object v14, v8

    .end local v8    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .local v14, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    move/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/forms/fields/PdfFormField;->drawButton(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 2957
    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources;->addFont(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/pdf/PdfName;

    .line 2959
    :goto_0
    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2961
    return-object v13
.end method

.method protected drawPushButtonAppearance(FFLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfName;F)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 6
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p5, "fontName"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p6, "fontSize"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2979
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/forms/fields/PdfFormField;->drawPushButtonAppearance(FFLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v0

    return-object v0
.end method

.method protected drawRadioAppearance(FFLjava/lang/String;)V
    .locals 9
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "value"    # Ljava/lang/String;

    .line 2735
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 2736
    .local v0, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 2737
    .local v1, "widget":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setNormalAppearance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 2740
    new-instance v2, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v2, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 2741
    .local v2, "xObjectOn":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    if-eqz p3, :cond_0

    .line 2742
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2743
    .local v3, "streamOn":Lcom/itextpdf/kernel/pdf/PdfStream;
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2745
    .local v4, "canvasOn":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {p0, v4, v2, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->drawRadioBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2746
    const/4 v5, 0x1

    invoke-virtual {p0, v4, p1, p2, v5}, Lcom/itextpdf/forms/fields/PdfFormField;->drawRadioField(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFZ)V

    .line 2748
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v5

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2749
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getNormalAppearanceObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v6, p3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2753
    .end local v3    # "streamOn":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v4    # "canvasOn":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :cond_0
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2754
    .local v3, "streamOff":Lcom/itextpdf/kernel/pdf/PdfStream;
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2755
    .local v4, "canvasOff":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    new-instance v5, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v5, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 2757
    .local v5, "xObjectOff":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    invoke-virtual {p0, v4, v5, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->drawRadioBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2759
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v6

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2760
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getNormalAppearanceObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v6

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v8, "Off"

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2762
    iget-object v6, p0, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-eqz v6, :cond_2

    .line 2763
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->getPart()Ljava/lang/String;

    move-result-object v6

    const-string v7, "2"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->getPart()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2764
    :cond_1
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    .line 2765
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    .line 2767
    :cond_2
    return-void
.end method

.method protected drawRadioBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V
    .locals 19
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 2697
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2698
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getBorderWidth()F

    move-result v4

    .line 2699
    .local v4, "borderWidth":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v2, v5

    .line 2700
    .local v6, "cx":F
    div-float v7, v3, v5

    .line 2701
    .local v7, "cy":F
    const/4 v8, 0x0

    cmpg-float v9, v4, v8

    if-gez v9, :cond_0

    .line 2702
    const/4 v4, 0x0

    .line 2705
    :cond_0
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float/2addr v9, v4

    div-float/2addr v9, v5

    .line 2707
    .local v9, "r":F
    iget-object v10, v0, Lcom/itextpdf/forms/fields/PdfFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    if-eqz v10, :cond_1

    .line 2708
    nop

    .line 2709
    invoke-virtual {v1, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v11

    float-to-double v12, v6

    float-to-double v14, v7

    div-float v5, v4, v5

    add-float/2addr v5, v9

    move/from16 v18, v9

    .end local v9    # "r":F
    .local v18, "r":F
    float-to-double v8, v5

    .line 2710
    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v17}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->circle(DDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    .line 2711
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 2707
    .end local v18    # "r":F
    .restart local v9    # "r":F
    :cond_1
    move/from16 v18, v9

    .line 2714
    .end local v9    # "r":F
    .restart local v18    # "r":F
    :goto_0
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    iget-object v5, v0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    if-eqz v5, :cond_2

    .line 2715
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 2716
    iget-object v5, v0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    .line 2717
    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    .line 2718
    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v8

    float-to-double v9, v6

    float-to-double v11, v7

    move/from16 v5, v18

    .end local v18    # "r":F
    .local v5, "r":F
    float-to-double v13, v5

    .line 2719
    invoke-virtual/range {v8 .. v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->circle(DDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v8

    .line 2720
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 2714
    .end local v5    # "r":F
    .restart local v18    # "r":F
    :cond_2
    move/from16 v5, v18

    .line 2723
    .end local v18    # "r":F
    .restart local v5    # "r":F
    :goto_1
    move-object/from16 v8, p2

    invoke-direct {v0, v8, v3, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->applyRotation(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2724
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2725
    return-void
.end method

.method protected drawRadioField(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFZ)V
    .locals 4
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "on"    # Z

    .line 2805
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2806
    if-eqz p4, :cond_0

    .line 2807
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resetFillColorRgb()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2808
    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p2, v0

    div-float v0, p3, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    invoke-static {p1, v1, v0, v2}, Lcom/itextpdf/forms/util/DrawingUtil;->drawCircle(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFF)V

    .line 2810
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2811
    return-void
.end method

.method protected drawTextAppearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/font/PdfFont;FLjava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V
    .locals 28
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p3, "fontSize"    # F
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "appearance"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 2452
    move-object/from16 v0, p0

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2453
    .local v1, "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual/range {p5 .. p5}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v2

    .line 2454
    .local v2, "resources":Lcom/itextpdf/kernel/pdf/PdfResources;
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2456
    .local v3, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    .line 2457
    .local v4, "height":F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    .line 2458
    .local v5, "width":F
    new-instance v6, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v7, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v8, v5, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 2459
    .local v6, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    invoke-virtual {v0, v3, v6, v5, v4}, Lcom/itextpdf/forms/fields/PdfFormField;->drawBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V

    .line 2460
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->isPassword()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2461
    move-object/from16 v7, p4

    invoke-direct {v0, v7}, Lcom/itextpdf/forms/fields/PdfFormField;->obfuscatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .end local p4    # "value":Ljava/lang/String;
    .local v7, "value":Ljava/lang/String;
    goto :goto_0

    .line 2460
    .end local v7    # "value":Ljava/lang/String;
    .restart local p4    # "value":Ljava/lang/String;
    :cond_0
    move-object/from16 v7, p4

    .line 2464
    .end local p4    # "value":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :goto_0
    nop

    .line 2465
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginVariableText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v9

    .line 2466
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v9

    .line 2467
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2469
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->convertJustificationToTextAlignment()Lcom/itextpdf/layout/property/TextAlignment;

    move-result-object v9

    .line 2470
    .local v9, "textAlignment":Lcom/itextpdf/layout/property/TextAlignment;
    const/4 v10, 0x0

    .line 2471
    .local v10, "x":F
    sget-object v11, Lcom/itextpdf/layout/property/TextAlignment;->RIGHT:Lcom/itextpdf/layout/property/TextAlignment;

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v9, v11, :cond_1

    .line 2472
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v10

    move/from16 v16, v10

    goto :goto_1

    .line 2473
    :cond_1
    sget-object v11, Lcom/itextpdf/layout/property/TextAlignment;->CENTER:Lcom/itextpdf/layout/property/TextAlignment;

    if-ne v9, v11, :cond_2

    .line 2474
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v11

    div-float v10, v11, v12

    move/from16 v16, v10

    goto :goto_1

    .line 2473
    :cond_2
    move/from16 v16, v10

    .line 2477
    .end local v10    # "x":F
    .local v16, "x":F
    :goto_1
    new-instance v10, Lcom/itextpdf/layout/Canvas;

    new-instance v11, Lcom/itextpdf/kernel/geom/Rectangle;

    neg-float v13, v4

    mul-float v14, v4, v12

    invoke-direct {v11, v8, v13, v8, v14}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v10, v3, v11}, Lcom/itextpdf/layout/Canvas;-><init>(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    move-object v15, v10

    .line 2478
    .local v15, "modelCanvas":Lcom/itextpdf/layout/Canvas;
    const/16 v10, 0x52

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v15, v10, v11}, Lcom/itextpdf/layout/Canvas;->setProperty(ILjava/lang/Object;)V

    .line 2480
    new-instance v10, Lcom/itextpdf/layout/Style;

    invoke-direct {v10}, Lcom/itextpdf/layout/Style;-><init>()V

    move-object/from16 v14, p2

    invoke-virtual {v10, v14}, Lcom/itextpdf/layout/Style;->setFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/Style;

    move/from16 v13, p3

    invoke-virtual {v10, v13}, Lcom/itextpdf/layout/Style;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/itextpdf/layout/Style;

    .line 2481
    .local v11, "paragraphStyle":Lcom/itextpdf/layout/Style;
    const/16 v10, 0x21

    new-instance v8, Lcom/itextpdf/layout/property/Leading;

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v23, v2

    .end local v2    # "resources":Lcom/itextpdf/kernel/pdf/PdfResources;
    .local v23, "resources":Lcom/itextpdf/kernel/pdf/PdfResources;
    const/4 v2, 0x2

    invoke-direct {v8, v2, v12}, Lcom/itextpdf/layout/property/Leading;-><init>(IF)V

    invoke-virtual {v11, v10, v8}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 2482
    iget-object v8, v0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    if-eqz v8, :cond_3

    .line 2483
    const/16 v8, 0x15

    new-instance v10, Lcom/itextpdf/layout/property/TransparentColor;

    iget-object v12, v0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {v10, v12}, Lcom/itextpdf/layout/property/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;)V

    invoke-virtual {v11, v8, v10}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 2485
    :cond_3
    new-instance v8, Lcom/itextpdf/forms/fields/PdfTextFormField;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v8, v10}, Lcom/itextpdf/forms/fields/PdfTextFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-virtual {v8}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getMaxLen()I

    move-result v8

    .line 2487
    .local v8, "maxLen":I
    sget v10, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_COMB:I

    invoke-virtual {v0, v10}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v8, :cond_5

    .line 2488
    int-to-float v10, v8

    div-float v10, v5, v10

    .line 2489
    .local v10, "widthPerCharacter":F
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 2492
    .local v12, "numberOfCharacters":I
    sget-object v17, Lcom/itextpdf/forms/fields/PdfFormField$1;->$SwitchMap$com$itextpdf$layout$property$TextAlignment:[I

    invoke-virtual {v9}, Lcom/itextpdf/layout/property/TextAlignment;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 2500
    const/16 v17, 0x0

    move/from16 v2, v17

    .local v17, "start":I
    goto :goto_2

    .line 2497
    .end local v17    # "start":I
    :pswitch_0
    sub-int v17, v8, v12

    div-int/lit8 v17, v17, 0x2

    .line 2498
    .restart local v17    # "start":I
    move/from16 v2, v17

    goto :goto_2

    .line 2494
    .end local v17    # "start":I
    :pswitch_1
    sub-int v17, v8, v12

    .line 2495
    .restart local v17    # "start":I
    move/from16 v2, v17

    .line 2502
    .end local v17    # "start":I
    .local v2, "start":I
    :goto_2
    move/from16 v24, v4

    .end local v4    # "height":F
    .local v24, "height":F
    int-to-float v4, v2

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v4, v4, v17

    mul-float/2addr v4, v10

    .line 2503
    .local v4, "startOffset":F
    const/16 v17, 0x0

    move/from16 v25, v2

    move/from16 v2, v17

    .local v2, "i":I
    .local v25, "start":I
    :goto_3
    if-ge v2, v12, :cond_4

    .line 2504
    move/from16 v26, v5

    .end local v5    # "width":F
    .local v26, "width":F
    new-instance v5, Lcom/itextpdf/layout/element/Paragraph;

    move-object/from16 v27, v6

    .end local v6    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .local v27, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v7, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Lcom/itextpdf/layout/element/Paragraph;->addStyle(Lcom/itextpdf/layout/Style;)Lcom/itextpdf/layout/element/IElement;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Lcom/itextpdf/layout/element/Paragraph;

    int-to-float v5, v2

    mul-float/2addr v5, v10

    add-float v19, v4, v5

    .line 2505
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v20, v5, v6

    sget-object v21, Lcom/itextpdf/layout/property/TextAlignment;->CENTER:Lcom/itextpdf/layout/property/TextAlignment;

    sget-object v22, Lcom/itextpdf/layout/property/VerticalAlignment;->MIDDLE:Lcom/itextpdf/layout/property/VerticalAlignment;

    .line 2504
    move-object/from16 v17, v15

    invoke-virtual/range {v17 .. v22}, Lcom/itextpdf/layout/Canvas;->showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFLcom/itextpdf/layout/property/TextAlignment;Lcom/itextpdf/layout/property/VerticalAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2503
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v26

    move-object/from16 v6, v27

    goto :goto_3

    .end local v26    # "width":F
    .end local v27    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .restart local v5    # "width":F
    .restart local v6    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    :cond_4
    move/from16 v26, v5

    move-object/from16 v27, v6

    .line 2507
    .end local v2    # "i":I
    .end local v4    # "startOffset":F
    .end local v5    # "width":F
    .end local v6    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .end local v10    # "widthPerCharacter":F
    .end local v12    # "numberOfCharacters":I
    .end local v25    # "start":I
    .restart local v26    # "width":F
    .restart local v27    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    move-object v6, v11

    move-object v2, v15

    goto :goto_4

    .line 2487
    .end local v24    # "height":F
    .end local v26    # "width":F
    .end local v27    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .local v4, "height":F
    .restart local v5    # "width":F
    .restart local v6    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    :cond_5
    move/from16 v24, v4

    move/from16 v26, v5

    move-object/from16 v27, v6

    .line 2508
    .end local v4    # "height":F
    .end local v5    # "width":F
    .end local v6    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .restart local v24    # "height":F
    .restart local v26    # "width":F
    .restart local v27    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    sget v2, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_COMB:I

    invoke-virtual {v0, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2509
    const-class v2, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 2510
    .local v2, "logger":Lorg/slf4j/Logger;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "The Comb flag may be set only if the MaxLen entry is present in the text field dictionary and if the Multiline, Password, and FileSelect flags are clear."

    invoke-static {v5, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 2512
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_6
    invoke-static {v7}, Lcom/itextpdf/forms/fields/PdfFormField;->createParagraphForTextFieldValue(Ljava/lang/String;)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/itextpdf/layout/element/Paragraph;->addStyle(Lcom/itextpdf/layout/Style;)Lcom/itextpdf/layout/element/IElement;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Paragraph;

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4, v5, v4}, Lcom/itextpdf/layout/element/Paragraph;->setPaddings(FFFF)Lcom/itextpdf/layout/element/IElement;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Paragraph;

    .line 2513
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    div-float v4, v5, v4

    sget-object v5, Lcom/itextpdf/layout/property/VerticalAlignment;->MIDDLE:Lcom/itextpdf/layout/property/VerticalAlignment;

    .line 2512
    move-object v10, v15

    move-object v6, v11

    .end local v11    # "paragraphStyle":Lcom/itextpdf/layout/Style;
    .local v6, "paragraphStyle":Lcom/itextpdf/layout/Style;
    move-object v11, v2

    move/from16 v12, v16

    move v13, v4

    move-object v14, v9

    move-object v2, v15

    .end local v15    # "modelCanvas":Lcom/itextpdf/layout/Canvas;
    .local v2, "modelCanvas":Lcom/itextpdf/layout/Canvas;
    move-object v15, v5

    invoke-virtual/range {v10 .. v15}, Lcom/itextpdf/layout/Canvas;->showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFLcom/itextpdf/layout/property/TextAlignment;Lcom/itextpdf/layout/property/VerticalAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 2515
    :goto_4
    nop

    .line 2516
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    .line 2517
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endVariableText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2519
    invoke-virtual/range {p5 .. p5}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->setData([B)V

    .line 2520
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected generateDefaultAppearanceString(Lcom/itextpdf/kernel/font/PdfFont;FLcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfResources;)Ljava/lang/String;
    .locals 5
    .param p1, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p2, "fontSize"    # F
    .param p3, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p4, "res"    # Lcom/itextpdf/kernel/pdf/PdfResources;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2365
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    .line 2366
    .local v0, "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-direct {v1, v0, p4, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2367
    .local v1, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2368
    if-eqz p3, :cond_0

    .line 2369
    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/colors/Color;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2370
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method

.method public getAdditionalAction()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 1581
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getAlternativeName()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 1385
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TU:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public getAppearanceStates()[Ljava/lang/String;
    .locals 8

    .line 2186
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2187
    .local v0, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Opt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    .line 2188
    .local v1, "stringOpt":Lcom/itextpdf/kernel/pdf/PdfString;
    if-eqz v1, :cond_0

    .line 2189
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2191
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Opt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 2192
    .local v2, "arrayOpt":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v2, :cond_4

    .line 2193
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2194
    .local v4, "pdfObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v5, 0x0

    .line 2195
    .local v5, "valStr":Lcom/itextpdf/kernel/pdf/PdfString;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2196
    move-object v6, v4

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v5

    goto :goto_1

    .line 2197
    :cond_1
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2198
    move-object v5, v4

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfString;

    .line 2200
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 2201
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2203
    .end local v4    # "pdfObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v5    # "valStr":Lcom/itextpdf/kernel/pdf/PdfString;
    :cond_3
    goto :goto_0

    .line 2207
    .end local v2    # "arrayOpt":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 2208
    .local v2, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 2209
    if-eqz v2, :cond_5

    .line 2210
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 2211
    if-eqz v2, :cond_5

    .line 2212
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 2213
    .local v4, "state":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2214
    .end local v4    # "state":Lcom/itextpdf/kernel/pdf/PdfName;
    goto :goto_3

    .line 2218
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    .line 2219
    .local v3, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v3, :cond_6

    .line 2220
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2221
    .local v5, "kid":Lcom/itextpdf/kernel/pdf/PdfObject;
    new-instance v6, Lcom/itextpdf/forms/fields/PdfFormField;

    move-object v7, v5

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v6, v7}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 2222
    .local v6, "fld":Lcom/itextpdf/forms/fields/PdfFormField;
    invoke-virtual {v6}, Lcom/itextpdf/forms/fields/PdfFormField;->getAppearanceStates()[Ljava/lang/String;

    move-result-object v7

    .line 2223
    .local v7, "states":[Ljava/lang/String;
    invoke-static {v0, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2224
    .end local v5    # "kid":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v6    # "fld":Lcom/itextpdf/forms/fields/PdfFormField;
    .end local v7    # "states":[Ljava/lang/String;
    goto :goto_4

    .line 2226
    :cond_6
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getBorderWidth()F
    .locals 3

    .line 2034
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getBorderStyle()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 2035
    .local v0, "bs":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_0

    .line 2036
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    .line 2037
    .local v1, "w":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v1, :cond_0

    .line 2038
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    .line 2041
    .end local v1    # "w":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_0
    iget v1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    return v1
.end method

.method public getColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 1812
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getDefaultAppearance()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 3

    .line 1640
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    .line 1641
    .local v0, "defaultAppearance":Lcom/itextpdf/kernel/pdf/PdfString;
    if-nez v0, :cond_0

    .line 1642
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 1643
    .local v1, "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    .line 1646
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1647
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    .line 1652
    .end local v1    # "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_0
    if-nez v0, :cond_1

    .line 1653
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DA:Lcom/itextpdf/kernel/pdf/PdfName;

    const/16 v2, 0xa

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getAcroFormKey(Lcom/itextpdf/kernel/pdf/PdfName;I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfString;

    .line 1655
    :cond_1
    return-object v0
.end method

.method public getDefaultStyle()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 1751
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    .line 1560
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method protected getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 2318
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    return-object v0
.end method

.method public getFieldFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 1418
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlags()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFieldFlags()I
    .locals 3

    .line 1499
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Ff:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 1500
    .local v0, "f":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v0, :cond_0

    .line 1501
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    return v1

    .line 1503
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 1504
    .local v1, "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_1

    .line 1505
    new-instance v2, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-direct {v2, v1}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlags()I

    move-result v2

    return v2

    .line 1507
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 6

    .line 1351
    const-string v0, ""

    .line 1352
    .local v0, "parentName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 1353
    .local v1, "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    .line 1354
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v2

    .line 1355
    .local v2, "parentField":Lcom/itextpdf/forms/fields/PdfFormField;
    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v3

    .line 1356
    .local v3, "pName":Lcom/itextpdf/kernel/pdf/PdfString;
    if-eqz v3, :cond_0

    .line 1357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1360
    .end local v2    # "parentField":Lcom/itextpdf/forms/fields/PdfFormField;
    .end local v3    # "pName":Lcom/itextpdf/kernel/pdf/PdfString;
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    .line 1361
    .local v2, "name":Lcom/itextpdf/kernel/pdf/PdfString;
    if-eqz v2, :cond_1

    .line 1362
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UnicodeBig"

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 1364
    :cond_1
    return-object v2
.end method

.method public getFont()Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1

    .line 1803
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    return-object v0
.end method

.method protected getFontAndSize(Lcom/itextpdf/kernel/pdf/PdfDictionary;)[Ljava/lang/Object;
    .locals 3
    .param p1, "asNormal"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2384
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFontSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .line 1793
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    return v0
.end method

.method public getFormType()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2

    .line 1139
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 1140
    .local v0, "formType":Lcom/itextpdf/kernel/pdf/PdfName;
    if-nez v0, :cond_0

    .line 1141
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getTypeFromParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    return-object v1

    .line 1143
    :cond_0
    return-object v0
.end method

.method public getJustification()Ljava/lang/Integer;
    .locals 3

    .line 1723
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Q:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v0

    .line 1724
    .local v0, "justification":Ljava/lang/Integer;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1725
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Q:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v0

    .line 1727
    :cond_0
    return-object v0
.end method

.method public getKids()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 1297
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getMappingName()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 1406
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TM:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 1602
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Opt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 1288
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method protected getRect(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4
    .param p1, "field"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 2322
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 2323
    .local v0, "rect":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_1

    .line 2324
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 2325
    .local v1, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v1, :cond_0

    .line 2328
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    goto :goto_0

    .line 2326
    :cond_0
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "Wrong form field. Add annotation to the field."

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2331
    .end local v1    # "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public getRichText()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    .line 1772
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->RV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    .line 1518
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1519
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0

    .line 1521
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 4

    .line 1530
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getValue()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 1531
    .local v0, "value":Lcom/itextpdf/kernel/pdf/PdfObject;
    const-string v1, ""

    if-nez v0, :cond_0

    .line 1532
    return-object v1

    .line 1533
    :cond_0
    instance-of v2, v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz v2, :cond_1

    .line 1534
    new-instance v1, Ljava/lang/String;

    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 1535
    :cond_1
    instance-of v2, v0, Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz v2, :cond_2

    .line 1536
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1537
    :cond_2
    instance-of v2, v0, Lcom/itextpdf/kernel/pdf/PdfString;

    if-eqz v2, :cond_3

    .line 1538
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1540
    :cond_3
    return-object v1
.end method

.method public getWidgets()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;",
            ">;"
        }
    .end annotation

    .line 1612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1614
    .local v0, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;>;"
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 1615
    .local v1, "subType":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1616
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1619
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 1620
    .local v2, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v2, :cond_2

    .line 1621
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1622
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    .line 1623
    .local v4, "kid":Lcom/itextpdf/kernel/pdf/PdfObject;
    move-object v5, v4

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 1624
    if-eqz v1, :cond_1

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1625
    invoke-static {v4}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1621
    .end local v4    # "kid":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1630
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method public isMultiline()Z
    .locals 1

    .line 1463
    sget v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_MULTILINE:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isNoExport()Z
    .locals 1

    .line 2160
    sget v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_NO_EXPORT:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .locals 1

    .line 1473
    sget v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_PASSWORD:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 2122
    sget v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_READ_ONLY:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .line 2141
    sget v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_REQUIRED:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    .line 2314
    const/4 v0, 0x1

    return v0
.end method

.method public put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p1, "key"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "value"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2286
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2287
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 2288
    return-object p0
.end method

.method public regenerateField()Z
    .locals 5

    .line 2016
    const/4 v0, 0x1

    .line 2017
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->updateDefaultAppearance()V

    .line 2018
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 2019
    .local v2, "widget":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    new-instance v3, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3, v4}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 2020
    .local v3, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    invoke-direct {p0, v3}, Lcom/itextpdf/forms/fields/PdfFormField;->copyParamsToKids(Lcom/itextpdf/forms/fields/PdfFormField;)V

    .line 2021
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getValueAsString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateWidget(Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v0, v4

    .line 2022
    .end local v2    # "widget":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    .end local v3    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    goto :goto_0

    .line 2023
    :cond_0
    return v0
.end method

.method public release()V
    .locals 1

    .line 2308
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->unsetForbidRelease()V

    .line 2309
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->release()V

    .line 2310
    return-void
.end method

.method public remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p1, "key"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 2298
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2299
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 2300
    return-object p0
.end method

.method public setAction(Lcom/itextpdf/kernel/pdf/action/PdfAction;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 3
    .param p1, "action"    # Lcom/itextpdf/kernel/pdf/action/PdfAction;

    .line 1949
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    .line 1950
    .local v0, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;>;"
    if-eqz v0, :cond_0

    .line 1951
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 1952
    .local v2, "widget":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    invoke-virtual {v2, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAction(Lcom/itextpdf/kernel/pdf/action/PdfAction;)Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 1953
    .end local v2    # "widget":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    goto :goto_0

    .line 1955
    :cond_0
    return-object p0
.end method

.method public setAdditionalAction(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 0
    .param p1, "key"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "action"    # Lcom/itextpdf/kernel/pdf/action/PdfAction;

    .line 1571
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->setAdditionalAction(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V

    .line 1572
    return-object p0
.end method

.method public setAlternativeName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1375
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->TU:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public setAppearance(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 5
    .param p1, "appearanceType"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "appearanceState"    # Ljava/lang/String;
    .param p3, "appearanceStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 2245
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 2247
    .local v0, "widget":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    if-eqz v0, :cond_0

    .line 2248
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .local v1, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    goto :goto_0

    .line 2250
    .end local v1    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 2252
    .restart local v1    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :goto_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 2253
    .local v2, "ap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v2, :cond_2

    .line 2254
    invoke-virtual {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 2255
    .local v3, "appearanceDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v3, :cond_1

    .line 2256
    invoke-virtual {v2, p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 2258
    :cond_1
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v4, p2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2262
    .end local v3    # "appearanceDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_2
    :goto_1
    return-object p0
.end method

.method public setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 7
    .param p1, "backgroundColor"    # Lcom/itextpdf/kernel/colors/Color;

    .line 1893
    iput-object p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    .line 1895
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    .line 1896
    .local v0, "kids":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 1897
    .local v2, "kid":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getAppearanceCharacteristics()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 1898
    .local v3, "mk":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v3, :cond_0

    .line 1899
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v3, v4

    .line 1901
    :cond_0
    if-nez p1, :cond_1

    .line 1902
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->BG:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 1904
    :cond_1
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->BG:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1906
    :goto_1
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceCharacteristics(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 1907
    .end local v2    # "kid":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    goto :goto_0

    .line 1908
    .end local v3    # "mk":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    .line 1909
    return-object p0
.end method

.method public setBorderColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 7
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;

    .line 2075
    iput-object p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    .line 2077
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    .line 2078
    .local v0, "kids":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 2079
    .local v2, "kid":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getAppearanceCharacteristics()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 2080
    .local v3, "mk":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v3, :cond_0

    .line 2081
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v3, v4

    .line 2083
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    if-nez v4, :cond_1

    .line 2084
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->BC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 2086
    :cond_1
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->BC:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    iget-object v6, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderColor:Lcom/itextpdf/kernel/colors/Color;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2088
    :goto_1
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceCharacteristics(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 2089
    .end local v2    # "kid":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    goto :goto_0

    .line 2090
    .end local v3    # "mk":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    .line 2091
    return-object p0
.end method

.method public setBorderStyle(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2
    .param p1, "style"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 2063
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setBorderStyle(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 2064
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    .line 2065
    return-object p0
.end method

.method public setBorderWidth(F)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 5
    .param p1, "borderWidth"    # F

    .line 2051
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getBorderStyle()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 2052
    .local v0, "bs":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 2053
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v0, v1

    .line 2054
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 2056
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v3, p1

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2057
    iput p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->borderWidth:F

    .line 2058
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    .line 2059
    return-object p0
.end method

.method public setCheckType(I)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2
    .param p1, "checkType"    # I

    .line 1967
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    .line 1968
    :cond_0
    const/4 p1, 0x3

    .line 1970
    :cond_1
    iput p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->checkType:I

    .line 1971
    sget-object v0, Lcom/itextpdf/forms/fields/PdfFormField;->typeChars:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    .line 1972
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-eqz v0, :cond_2

    .line 1973
    return-object p0

    .line 1976
    :cond_2
    :try_start_0
    const-string v0, "ZapfDingbats"

    invoke-static {v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1979
    nop

    .line 1980
    return-object p0

    .line 1977
    :catch_0
    move-exception v0

    .line 1978
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;

    .line 2101
    iput-object p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 2102
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    .line 2103
    return-object p0
.end method

.method public setDefaultAppearance(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 5
    .param p1, "defaultAppearance"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1668
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1669
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1670
    aget-byte v2, v0, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 1671
    const/16 v2, 0x20

    aput-byte v2, v0, v1

    .line 1669
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1673
    .end local v1    # "k":I
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DA:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1674
    return-object p0
.end method

.method public setDefaultStyle(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p1, "defaultStyleString"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 1761
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1762
    return-object p0
.end method

.method public setDefaultValue(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p1, "value"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1551
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public setFieldFlag(I)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p1, "flag"    # I

    .line 1431
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 1446
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlags()I

    move-result v0

    .line 1448
    .local v0, "flags":I
    if-eqz p2, :cond_0

    .line 1449
    or-int/2addr v0, p1

    goto :goto_0

    .line 1451
    :cond_0
    not-int v1, p1

    and-int/2addr v0, v1

    .line 1454
    :goto_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldFlags(I)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    return-object v1
.end method

.method public setFieldFlags(I)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 3
    .param p1, "flags"    # I

    .line 1485
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlags()I

    move-result v0

    .line 1486
    .local v0, "oldFlags":I
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Ff:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1487
    xor-int v1, v0, p1

    sget v2, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_COMB:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Tx:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 1488
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/itextpdf/forms/fields/PdfTextFormField;

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1, v2}, Lcom/itextpdf/forms/fields/PdfTextFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getMaxLen()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1489
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    .line 1490
    :cond_0
    return-object p0
.end method

.method public setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1342
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public setFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p1, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 1825
    iget v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 1826
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    .line 1827
    return-object p0
.end method

.method public setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 0
    .param p1, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p2, "fontSize"    # F

    .line 1880
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 1881
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    .line 1882
    return-object p0
.end method

.method public setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;I)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p1, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p2, "fontSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1866
    int-to-float v0, p2

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 1867
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    .line 1868
    return-object p0
.end method

.method public setFontSize(F)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p1, "fontSize"    # F

    .line 1838
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 1839
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    .line 1840
    return-object p0
.end method

.method public setFontSize(I)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p1, "fontSize"    # I

    .line 1851
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->setFontSize(F)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1852
    return-object p0
.end method

.method public setFontSizeAutoScale()Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 2271
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    .line 2272
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    .line 2273
    return-object p0
.end method

.method public setJustification(I)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2
    .param p1, "justification"    # I

    .line 1740
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Q:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1741
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    .line 1742
    return-object p0
.end method

.method public setMappingName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1396
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->TM:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public setNoExport(Z)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p1, "noExport"    # Z

    .line 2151
    sget v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_NO_EXPORT:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public setOptions(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p1, "options"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1592
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Opt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public setPage(I)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 3
    .param p1, "pageNum"    # I

    .line 2170
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    .line 2171
    .local v0, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2172
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 2173
    .local v1, "annot":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    if-eqz v1, :cond_0

    .line 2174
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setPage(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 2177
    .end local v1    # "annot":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    :cond_0
    return-object p0
.end method

.method public setParent(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2
    .param p1, "parent"    # Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1279
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public setReadOnly(Z)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p1, "readOnly"    # Z

    .line 2113
    sget v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_READ_ONLY:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public setRequired(Z)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p1, "required"    # Z

    .line 2132
    sget v0, Lcom/itextpdf/forms/fields/PdfFormField;->FF_REQUIRED:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public setRichText(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p1, "richText"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1783
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->RV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1784
    return-object p0
.end method

.method public setRotation(I)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 3
    .param p1, "degRotation"    # I

    .line 1920
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_2

    .line 1923
    rem-int/lit16 p1, p1, 0x168

    .line 1924
    if-gez p1, :cond_0

    .line 1925
    add-int/lit16 p1, p1, 0x168

    .line 1928
    :cond_0
    iput p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->rotation:I

    .line 1930
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getAppearanceCharacteristics()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 1931
    .local v0, "mk":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v0, :cond_1

    .line 1932
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v0, v1

    .line 1933
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->MK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1935
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1937
    iput p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->rotation:I

    .line 1938
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    .line 1939
    return-object p0

    .line 1921
    .end local v0    # "mk":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "degRotation.must.be.a.multiple.of.90"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 1153
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 1154
    .local v0, "formType":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_RADIO:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1155
    .local v1, "autoGenerateAppearance":Z
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->setValue(Ljava/lang/String;Z)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v2

    return-object v2
.end method

.method public setValue(Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p3, "fontSize"    # F

    .line 1230
    invoke-direct {p0, p2, p3}, Lcom/itextpdf/forms/fields/PdfFormField;->updateFontAndFontSize(Lcom/itextpdf/kernel/font/PdfFont;F)V

    .line 1231
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->setValue(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "display"    # Ljava/lang/String;

    .line 1255
    if-nez p2, :cond_0

    .line 1256
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->setValue(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    return-object v0

    .line 1258
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->setValue(Ljava/lang/String;Z)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1259
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 1260
    .local v0, "formType":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1261
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlags()I

    move-result v1

    sget v2, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_PUSH_BUTTON:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 1262
    iput-object p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    goto :goto_0

    .line 1264
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    goto :goto_0

    .line 1267
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1269
    :goto_0
    return-object p0
.end method

.method public setValue(Ljava/lang/String;Z)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "generateAppearance"    # Z

    .line 1166
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 1167
    .local v0, "formType":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v0, :cond_4

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    .line 1192
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1193
    sget v1, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_PUSH_BUTTON:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldFlag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1195
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/io/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/io/image/ImageDataFactory;->create([B)Lcom/itextpdf/io/image/ImageData;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->img:Lcom/itextpdf/io/image/ImageData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1196
    :catch_0
    move-exception v1

    .line 1197
    .local v1, "e":Ljava/lang/Exception;
    iput-object p1, p0, Lcom/itextpdf/forms/fields/PdfFormField;->text:Ljava/lang/String;

    .line 1198
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto/16 :goto_6

    .line 1200
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1201
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 1202
    .local v2, "widget":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    new-instance v3, Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1203
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3, v4}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-virtual {v3}, Lcom/itextpdf/forms/fields/PdfFormField;->getAppearanceStates()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1204
    .local v3, "states":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1205
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v4, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    goto :goto_2

    .line 1207
    :cond_2
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v5, "Off"

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 1209
    .end local v2    # "widget":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    .end local v3    # "states":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    goto :goto_1

    .line 1192
    :cond_3
    :goto_3
    goto/16 :goto_6

    .line 1168
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 1169
    .local v1, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v1, :cond_6

    .line 1170
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1171
    .local v3, "kid":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1172
    new-instance v4, Lcom/itextpdf/forms/fields/PdfFormField;

    move-object v5, v3

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v4, v5}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1173
    .local v4, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    invoke-virtual {v4, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->setValue(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1174
    invoke-virtual {v4}, Lcom/itextpdf/forms/fields/PdfFormField;->getDefaultAppearance()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1175
    iget-object v5, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iput-object v5, v4, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 1176
    iget v5, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    iput v5, v4, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    .line 1177
    iget-object v5, p0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    iput-object v5, v4, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 1180
    .end local v3    # "kid":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    :cond_5
    goto :goto_5

    .line 1182
    :cond_6
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Ch:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1183
    instance-of v2, p0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 1184
    move-object v2, p0

    check-cast v2, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setListSelected([Ljava/lang/String;Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    goto :goto_3

    .line 1186
    :cond_7
    new-instance v2, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2, v5}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1187
    .local v2, "choice":Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setListSelected([Ljava/lang/String;Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    .line 1188
    .end local v2    # "choice":Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    goto :goto_3

    .line 1190
    :cond_8
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v4, "UnicodeBig"

    invoke-direct {v3, p1, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    goto :goto_3

    .line 1213
    .end local v1    # "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_9
    :goto_6
    if-eqz p2, :cond_a

    .line 1214
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    .line 1217
    :cond_a
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 1218
    return-object p0
.end method

.method public setVisibility(I)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 3
    .param p1, "visibility"    # I

    .line 1991
    packed-switch p1, :pswitch_data_0

    .line 2002
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    goto :goto_0

    .line 1998
    :pswitch_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1999
    goto :goto_0

    .line 1996
    :pswitch_1
    goto :goto_0

    .line 1993
    :pswitch_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1994
    nop

    .line 2005
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateDefaultAppearance()V
    .locals 6

    .line 1683
    invoke-direct {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->hasDefaultAppearance()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1684
    iget-object v0, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v0, :cond_3

    .line 1686
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getAcroFormObject(Lcom/itextpdf/kernel/pdf/PdfName;I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1687
    .local v0, "defaultResources":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 1689
    invoke-direct {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->addAcroFormToCatalog()V

    .line 1690
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v0, v1

    .line 1691
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->putAcroFormObject(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1693
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 1694
    .local v1, "fontResources":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v1, :cond_1

    .line 1695
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v1, v2

    .line 1696
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1698
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getFontNameFromDR(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    .line 1699
    .local v2, "fontName":Lcom/itextpdf/kernel/pdf/PdfName;
    if-nez v2, :cond_2

    .line 1700
    invoke-direct {p0, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getUniqueFontNameForDR(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    .line 1701
    iget-object v3, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1702
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1705
    :cond_2
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DA:Lcom/itextpdf/kernel/pdf/PdfName;

    iget v4, p0, Lcom/itextpdf/forms/fields/PdfFormField;->fontSize:F

    iget-object v5, p0, Lcom/itextpdf/forms/fields/PdfFormField;->color:Lcom/itextpdf/kernel/colors/Color;

    invoke-static {v2, v4, v5}, Lcom/itextpdf/forms/fields/PdfFormField;->generateDefaultAppearance(Lcom/itextpdf/kernel/pdf/PdfName;FLcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1707
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/forms/fields/PdfFormField;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/font/PdfFont;

    .line 1708
    .end local v0    # "defaultResources":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v1    # "fontResources":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v2    # "fontName":Lcom/itextpdf/kernel/pdf/PdfName;
    goto :goto_0

    .line 1684
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1709
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1710
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfFormField;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 1712
    :goto_0
    return-void
.end method
