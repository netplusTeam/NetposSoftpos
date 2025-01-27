.class public Lcom/itextpdf/forms/PdfAcroForm;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfAcroForm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field public static final APPEND_ONLY:I = 0x2

.field public static final SIGNATURE_EXIST:I = 0x1

.field private static logger:Lorg/slf4j/Logger;


# instance fields
.field private defaultResources:Lcom/itextpdf/kernel/pdf/PdfDictionary;

.field protected document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field protected fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;"
        }
    .end annotation
.end field

.field private fieldsForFlattening:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;"
        }
    .end annotation
.end field

.field protected generateAppearance:Z

.field private xfaForm:Lcom/itextpdf/forms/xfa/XfaForm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    const-class v0, Lcom/itextpdf/forms/PdfAcroForm;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/forms/PdfAcroForm;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 2
    .param p1, "fields"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 162
    invoke-static {p1}, Lcom/itextpdf/forms/PdfAcroForm;->createAcroFormDictionaryByFields(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/forms/PdfAcroForm;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 163
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->setForbidRelease()V

    .line 164
    return-void
.end method

.method private constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 149
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->generateAppearance:Z

    .line 129
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    .line 137
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fieldsForFlattening:Ljava/util/Set;

    .line 150
    iput-object p2, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 151
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    .line 152
    new-instance v0, Lcom/itextpdf/forms/xfa/XfaForm;

    invoke-direct {v0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    iput-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->xfaForm:Lcom/itextpdf/forms/xfa/XfaForm;

    .line 153
    return-void
.end method

.method private addWidgetAnnotationToPage(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)V
    .locals 3
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p2, "annot"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 970
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->containsAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    return-void

    .line 974
    :cond_0
    const/4 v0, 0x0

    .line 975
    .local v0, "tagPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v1

    .line 976
    .local v1, "tagged":Z
    if-eqz v1, :cond_1

    .line 977
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getAutoTaggingPointer()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v0

    .line 979
    const-string v2, "Form"

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->addTag(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 982
    :cond_1
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 984
    if-eqz v1, :cond_2

    .line 985
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->moveToParent()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 987
    :cond_2
    return-void
.end method

.method private calcFieldAppTransformToAnnotRect(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 22
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p2, "annotBBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1088
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getBBox()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 1089
    .local v0, "bBox":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 1090
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v4, v3, v3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    invoke-direct {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    move-object v0, v1

    .line 1091
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->setBBox(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    goto :goto_0

    .line 1089
    :cond_0
    move-object/from16 v1, p1

    .line 1093
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v4

    .line 1095
    .local v4, "xObjBBox":[F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Matrix:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    .line 1097
    .local v5, "xObjMatrix":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_2

    .line 1098
    new-array v10, v2, [Lcom/itextpdf/kernel/geom/Point;

    new-instance v11, Lcom/itextpdf/kernel/geom/Point;

    aget v12, v4, v9

    float-to-double v12, v12

    aget v14, v4, v8

    float-to-double v14, v14

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    aput-object v11, v10, v9

    new-instance v11, Lcom/itextpdf/kernel/geom/Point;

    aget v12, v4, v9

    float-to-double v12, v12

    aget v14, v4, v6

    float-to-double v14, v14

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    aput-object v11, v10, v8

    new-instance v11, Lcom/itextpdf/kernel/geom/Point;

    aget v12, v4, v7

    float-to-double v12, v12

    aget v14, v4, v8

    float-to-double v14, v14

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    aput-object v11, v10, v7

    new-instance v11, Lcom/itextpdf/kernel/geom/Point;

    aget v12, v4, v7

    float-to-double v12, v12

    aget v14, v4, v6

    float-to-double v14, v14

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    aput-object v11, v10, v6

    .line 1104
    .local v10, "xObjRectPoints":[Lcom/itextpdf/kernel/geom/Point;
    array-length v11, v10

    new-array v11, v11, [Lcom/itextpdf/kernel/geom/Point;

    .line 1105
    .local v11, "transformedAppBoxPoints":[Lcom/itextpdf/kernel/geom/Point;
    new-instance v12, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->toDoubleArray()[D

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>([D)V

    const/16 v18, 0x0

    const/16 v20, 0x0

    array-length v13, v10

    move-object/from16 v16, v12

    move-object/from16 v17, v10

    move-object/from16 v19, v11

    move/from16 v21, v13

    invoke-virtual/range {v16 .. v21}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform([Lcom/itextpdf/kernel/geom/Point;I[Lcom/itextpdf/kernel/geom/Point;II)V

    .line 1107
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 1111
    .local v2, "transformedRectArr":[F
    array-length v12, v11

    move v13, v9

    :goto_1
    if-ge v13, v12, :cond_1

    aget-object v14, v11, v13

    .line 1112
    .local v14, "p":Lcom/itextpdf/kernel/geom/Point;
    aget v15, v2, v9

    move-object/from16 v17, v4

    .end local v4    # "xObjBBox":[F
    .local v17, "xObjBBox":[F
    float-to-double v3, v15

    iget-wide v6, v14, Lcom/itextpdf/kernel/geom/Point;->x:D

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v9

    .line 1113
    aget v3, v2, v8

    float-to-double v3, v3

    iget-wide v6, v14, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v8

    .line 1114
    const/4 v3, 0x2

    aget v4, v2, v3

    float-to-double v6, v4

    iget-wide v8, v14, Lcom/itextpdf/kernel/geom/Point;->x:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v2, v3

    .line 1115
    const/4 v3, 0x3

    aget v6, v2, v3

    float-to-double v6, v6

    iget-wide v8, v14, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v2, v3

    .line 1111
    .end local v14    # "p":Lcom/itextpdf/kernel/geom/Point;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v17

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_1

    .line 1118
    .end local v17    # "xObjBBox":[F
    .restart local v4    # "xObjBBox":[F
    :cond_1
    move-object/from16 v17, v4

    .end local v4    # "xObjBBox":[F
    .restart local v17    # "xObjBBox":[F
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v6, 0x0

    aget v7, v2, v6

    const/4 v4, 0x1

    aget v8, v2, v4

    const/4 v9, 0x2

    aget v9, v2, v9

    aget v6, v2, v6

    sub-float/2addr v9, v6

    const/4 v6, 0x3

    aget v6, v2, v6

    aget v4, v2, v4

    sub-float/2addr v6, v4

    invoke-direct {v3, v7, v8, v9, v6}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v2, v3

    .line 1119
    .end local v10    # "xObjRectPoints":[Lcom/itextpdf/kernel/geom/Point;
    .end local v11    # "transformedAppBoxPoints":[Lcom/itextpdf/kernel/geom/Point;
    .local v2, "transformedRect":Lcom/itextpdf/kernel/geom/Rectangle;
    goto :goto_2

    .line 1097
    .end local v2    # "transformedRect":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v17    # "xObjBBox":[F
    .restart local v4    # "xObjBBox":[F
    :cond_2
    move-object/from16 v17, v4

    .line 1120
    .end local v4    # "xObjBBox":[F
    .restart local v17    # "xObjBBox":[F
    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v3, 0x0

    aget v3, v17, v3

    const/4 v4, 0x1

    aget v4, v17, v4

    const/4 v6, 0x2

    aget v6, v17, v6

    const/4 v7, 0x3

    aget v7, v17, v7

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->setBbox(FFFF)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 1123
    .restart local v2    # "transformedRect":Lcom/itextpdf/kernel/geom/Rectangle;
    :goto_2
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    neg-float v3, v3

    float-to-double v3, v3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v6

    neg-float v6, v6

    float-to-double v6, v6

    invoke-static {v3, v4, v6, v7}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v3

    .line 1124
    .local v3, "at":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v4, :cond_3

    move v4, v6

    goto :goto_3

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v7

    div-float/2addr v4, v7

    .line 1125
    .local v4, "scaleX":F
    :goto_3
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    div-float/2addr v6, v7

    .line 1126
    .local v6, "scaleY":F
    :goto_4
    float-to-double v7, v4

    float-to-double v9, v6

    invoke-static {v7, v8, v9, v10}, Lcom/itextpdf/kernel/geom/AffineTransform;->getScaleInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/itextpdf/kernel/geom/AffineTransform;->preConcatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 1127
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v9

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/itextpdf/kernel/geom/AffineTransform;->preConcatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 1129
    return-object v3

    :array_0
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
        -0x800001
        -0x800001
    .end array-data
.end method

.method private static createAcroFormDictionaryByFields(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2
    .param p0, "fields"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1049
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 1050
    .local v0, "dictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1051
    return-object v0
.end method

.method private defineWidgetPageAndAddToIt(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfDictionary;Z)V
    .locals 4
    .param p1, "currentPage"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p2, "mergedFieldAndWidget"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "warnIfPageFlushed"    # Z

    .line 955
    invoke-static {p2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    .line 956
    .local v0, "annot":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPageObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 957
    .local v1, "pageDic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_2

    .line 958
    if-eqz p3, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 959
    :cond_0
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "The page has been already flushed. Use PdfAcroForm#addFieldAppearanceToPage() method before page flushing."

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 961
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    .line 962
    .local v2, "doc":Lcom/itextpdf/kernel/pdf/PdfDocument;
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v3

    .line 963
    .local v3, "widgetPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-direct {p0, v3, v0}, Lcom/itextpdf/forms/PdfAcroForm;->addWidgetAnnotationToPage(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)V

    .line 964
    .end local v2    # "doc":Lcom/itextpdf/kernel/pdf/PdfDocument;
    .end local v3    # "widgetPage":Lcom/itextpdf/kernel/pdf/PdfPage;
    goto :goto_1

    .line 965
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->addWidgetAnnotationToPage(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)V

    .line 967
    :goto_1
    return-void
.end method

.method public static getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 5
    .param p0, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "createIfNotExist"    # Z

    .line 177
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 178
    .local v0, "acroFormDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    const/4 v1, 0x0

    .line 179
    .local v1, "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    if-nez v0, :cond_0

    .line 180
    if-eqz p1, :cond_1

    .line 181
    new-instance v2, Lcom/itextpdf/forms/PdfAcroForm;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    invoke-direct {v2, v3}, Lcom/itextpdf/forms/PdfAcroForm;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    move-object v1, v2

    .line 182
    invoke-virtual {v1, p0}, Lcom/itextpdf/forms/PdfAcroForm;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 183
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 184
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    goto :goto_0

    .line 187
    :cond_0
    new-instance v2, Lcom/itextpdf/forms/PdfAcroForm;

    invoke-direct {v2, v0, p0}, Lcom/itextpdf/forms/PdfAcroForm;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    move-object v1, v2

    .line 190
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 191
    invoke-virtual {v1}, Lcom/itextpdf/forms/PdfAcroForm;->getDefaultResources()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    iput-object v2, v1, Lcom/itextpdf/forms/PdfAcroForm;->defaultResources:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 192
    if-nez v2, :cond_2

    .line 193
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    iput-object v2, v1, Lcom/itextpdf/forms/PdfAcroForm;->defaultResources:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 195
    :cond_2
    iput-object p0, v1, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 196
    new-instance v2, Lcom/itextpdf/forms/xfa/XfaForm;

    invoke-direct {v2, p0}, Lcom/itextpdf/forms/xfa/XfaForm;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v2, v1, Lcom/itextpdf/forms/PdfAcroForm;->xfaForm:Lcom/itextpdf/forms/xfa/XfaForm;

    .line 199
    :cond_3
    return-object v1
.end method

.method private getFieldPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 5
    .param p1, "annotDic"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1055
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 1056
    .local v0, "pageDic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_0

    .line 1057
    iget-object v1, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    return-object v1

    .line 1059
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 1060
    iget-object v2, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    .line 1061
    .local v2, "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1062
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v3

    .line 1063
    .local v3, "annotation":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->containsAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1064
    return-object v2

    .line 1059
    .end local v2    # "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    .end local v3    # "annotation":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1068
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private iterateFields(Lcom/itextpdf/kernel/pdf/PdfArray;)Ljava/util/Map;
    .locals 1
    .param p1, "array"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;"
        }
    .end annotation

    .line 913
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->iterateFields(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private iterateFields(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .param p1, "array"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;"
        }
    .end annotation

    .line 876
    .local p2, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;>;"
    const/4 v0, 0x1

    .line 877
    .local v0, "index":I
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 878
    .local v2, "field":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 879
    sget-object v3, Lcom/itextpdf/forms/PdfAcroForm;->logger:Lorg/slf4j/Logger;

    const-string v4, "A form field was flushed. There\'s no way to create this field in the AcroForm dictionary."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 880
    goto :goto_0

    .line 882
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v2, v3}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v3

    .line 883
    .local v3, "formField":Lcom/itextpdf/forms/fields/PdfFormField;
    if-nez v3, :cond_2

    .line 884
    sget-object v4, Lcom/itextpdf/forms/PdfAcroForm;->logger:Lorg/slf4j/Logger;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 885
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v7

    if-nez v7, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v7

    :goto_1
    aput-object v7, v5, v6

    .line 884
    const-string v6, "Cannot create form field from a given PDF object: {0}"

    invoke-static {v6, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 886
    goto :goto_0

    .line 888
    :cond_2
    invoke-virtual {v3}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v4

    .line 890
    .local v4, "fieldName":Lcom/itextpdf/kernel/pdf/PdfString;
    if-nez v4, :cond_5

    .line 891
    invoke-virtual {v3}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    iget-object v6, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v5, v6}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v5

    .line 892
    .local v5, "parentField":Lcom/itextpdf/forms/fields/PdfFormField;
    :cond_3
    :goto_2
    if-nez v4, :cond_4

    .line 893
    invoke-virtual {v5}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v4

    .line 894
    if-nez v4, :cond_3

    .line 895
    invoke-virtual {v5}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v6

    iget-object v7, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v6, v7}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v5

    goto :goto_2

    .line 898
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 899
    .local v6, "name":Ljava/lang/String;
    nop

    .end local v5    # "parentField":Lcom/itextpdf/forms/fields/PdfFormField;
    add-int/lit8 v0, v0, 0x1

    .line 900
    goto :goto_3

    .line 901
    .end local v6    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v6

    .line 903
    .restart local v6    # "name":Ljava/lang/String;
    :goto_3
    invoke-interface {p2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    invoke-virtual {v3}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 905
    invoke-virtual {v3}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/itextpdf/forms/PdfAcroForm;->iterateFields(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Map;)Ljava/util/Map;

    .line 907
    .end local v2    # "field":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v3    # "formField":Lcom/itextpdf/forms/fields/PdfFormField;
    .end local v4    # "fieldName":Lcom/itextpdf/kernel/pdf/PdfString;
    .end local v6    # "name":Ljava/lang/String;
    :cond_6
    goto/16 :goto_0

    .line 909
    :cond_7
    return-object p2
.end method

.method private mergeWidgetWithParentField(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1
    .param p1, "parent"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "widgetDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 949
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 950
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 951
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 952
    return-void
.end method

.method private prepareFieldsForFlattening(Lcom/itextpdf/forms/fields/PdfFormField;)Ljava/util/Set;
    .locals 6
    .param p1, "field"    # Lcom/itextpdf/forms/fields/PdfFormField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ")",
            "Ljava/util/Set<",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;"
        }
    .end annotation

    .line 1072
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1073
    .local v0, "preparedFields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1074
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 1075
    .local v1, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v1, :cond_1

    .line 1076
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1077
    .local v3, "kid":Lcom/itextpdf/kernel/pdf/PdfObject;
    new-instance v4, Lcom/itextpdf/forms/fields/PdfFormField;

    move-object v5, v3

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v4, v5}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1078
    .local v4, "kidField":Lcom/itextpdf/forms/fields/PdfFormField;
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1079
    invoke-virtual {v4}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1080
    invoke-direct {p0, v4}, Lcom/itextpdf/forms/PdfAcroForm;->prepareFieldsForFlattening(Lcom/itextpdf/forms/fields/PdfFormField;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1082
    .end local v3    # "kid":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "kidField":Lcom/itextpdf/forms/fields/PdfFormField;
    :cond_0
    goto :goto_0

    .line 1084
    :cond_1
    return-object v0
.end method

.method private processKids(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 4
    .param p1, "kids"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p2, "parent"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 917
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 918
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 919
    .local v0, "kidDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    .line 920
    .local v2, "type":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v2, :cond_1

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 921
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 924
    invoke-direct {p0, p2, v0}, Lcom/itextpdf/forms/PdfAcroForm;->mergeWidgetWithParentField(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 925
    invoke-direct {p0, p3, p2, v1}, Lcom/itextpdf/forms/PdfAcroForm;->defineWidgetPageAndAddToIt(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfDictionary;Z)V

    goto :goto_0

    .line 927
    :cond_0
    invoke-direct {p0, p3, v0, v1}, Lcom/itextpdf/forms/PdfAcroForm;->defineWidgetPageAndAddToIt(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfDictionary;Z)V

    goto :goto_0

    .line 930
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 931
    .local v1, "otherKids":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v1, :cond_2

    .line 932
    invoke-direct {p0, v1, v0, p3}, Lcom/itextpdf/forms/PdfAcroForm;->processKids(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 935
    .end local v0    # "kidDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v1    # "otherKids":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v2    # "type":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_2
    :goto_0
    goto :goto_2

    .line 936
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 937
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 938
    .local v1, "kid":Lcom/itextpdf/kernel/pdf/PdfObject;
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 939
    .local v2, "otherKids":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v2, :cond_4

    .line 940
    move-object v3, v1

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v2, v3, p3}, Lcom/itextpdf/forms/PdfAcroForm;->processKids(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 936
    .end local v1    # "kid":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v2    # "otherKids":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 945
    .end local v0    # "i":I
    :cond_5
    :goto_2
    return-object p2
.end method


# virtual methods
.method public addField(Lcom/itextpdf/forms/fields/PdfFormField;)V
    .locals 1
    .param p1, "field"    # Lcom/itextpdf/forms/fields/PdfFormField;

    .line 210
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addNewPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getLastPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    .line 214
    .local v0, "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->addField(Lcom/itextpdf/forms/fields/PdfFormField;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 215
    return-void
.end method

.method public addField(Lcom/itextpdf/forms/fields/PdfFormField;Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 5
    .param p1, "field"    # Lcom/itextpdf/forms/fields/PdfFormField;
    .param p2, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 224
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 226
    .local v0, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 227
    .local v1, "fieldDic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0, v0, v1, p2}, Lcom/itextpdf/forms/PdfAcroForm;->processKids(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 232
    .local v2, "fieldsArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 233
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 235
    iget-object v3, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 237
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    invoke-direct {p0, v3, v4}, Lcom/itextpdf/forms/PdfAcroForm;->iterateFields(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Map;)Ljava/util/Map;

    .line 240
    :cond_1
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    .line 241
    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v3

    .line 242
    .local v3, "annot":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    invoke-direct {p0, p2, v3}, Lcom/itextpdf/forms/PdfAcroForm;->addWidgetAnnotationToPage(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)V

    .line 245
    .end local v3    # "annot":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 246
    return-void
.end method

.method public addFieldAppearanceToPage(Lcom/itextpdf/forms/fields/PdfFormField;Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 6
    .param p1, "field"    # Lcom/itextpdf/forms/fields/PdfFormField;
    .param p2, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 257
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 258
    .local v0, "fieldDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 259
    .local v1, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 264
    .local v3, "kidDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    .line 265
    .local v4, "type":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v4, :cond_2

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 266
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 269
    invoke-direct {p0, v0, v3}, Lcom/itextpdf/forms/PdfAcroForm;->mergeWidgetWithParentField(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 271
    :cond_1
    invoke-direct {p0, p2, v0, v2}, Lcom/itextpdf/forms/PdfAcroForm;->defineWidgetPageAndAddToIt(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfDictionary;Z)V

    .line 273
    :cond_2
    return-void

    .line 260
    .end local v3    # "kidDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v4    # "type":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_3
    :goto_0
    return-void
.end method

.method public copyField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 836
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    .line 837
    .local v0, "oldField":Lcom/itextpdf/forms/fields/PdfFormField;
    if-eqz v0, :cond_0

    .line 838
    new-instance v1, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-virtual {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1, v2}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v1

    .line 840
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public flattenFields()V
    .locals 29

    .line 621
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isAppendMode()Z

    move-result v1

    if-nez v1, :cond_19

    .line 625
    iget-object v1, v0, Lcom/itextpdf/forms/PdfAcroForm;->fieldsForFlattening:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 626
    iget-object v1, v0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 627
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .local v1, "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    goto :goto_1

    .line 629
    .end local v1    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 630
    .restart local v1    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    iget-object v2, v0, Lcom/itextpdf/forms/PdfAcroForm;->fieldsForFlattening:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/forms/fields/PdfFormField;

    .line 631
    .local v3, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    invoke-direct {v0, v3}, Lcom/itextpdf/forms/PdfAcroForm;->prepareFieldsForFlattening(Lcom/itextpdf/forms/fields/PdfFormField;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 632
    .end local v3    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    goto :goto_0

    .line 640
    :cond_1
    :goto_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 641
    .local v2, "initialPageResourceClones":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    iget-object v4, v0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 642
    iget-object v4, v0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    .line 643
    .local v4, "resources":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v4, :cond_2

    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->clone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    :goto_3
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    .end local v4    # "resources":Lcom/itextpdf/kernel/pdf/PdfObject;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 646
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 648
    .local v3, "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/forms/fields/PdfFormField;

    .line 649
    .local v6, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    invoke-virtual {v6}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 650
    .local v7, "fieldObject":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-direct {v0, v7}, Lcom/itextpdf/forms/PdfAcroForm;->getFieldPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v8

    .line 651
    .local v8, "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    if-nez v8, :cond_4

    .line 652
    goto :goto_4

    .line 655
    :cond_4
    invoke-static {v7}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v9

    .line 656
    .local v9, "annotation":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    const/4 v10, 0x0

    .line 657
    .local v10, "tagPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    if-eqz v9, :cond_5

    iget-object v11, v0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 658
    iget-object v11, v0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->removeAnnotationTag(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v10

    .line 661
    :cond_5
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v11

    .line 662
    .local v11, "appDic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    const/4 v12, 0x0

    .line 663
    .local v12, "asNormal":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v11, :cond_6

    .line 664
    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v13}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v12

    .line 665
    if-nez v12, :cond_6

    .line 666
    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v13}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v12

    .line 669
    :cond_6
    iget-boolean v13, v0, Lcom/itextpdf/forms/PdfAcroForm;->generateAppearance:Z

    if-eqz v13, :cond_8

    .line 670
    if-eqz v11, :cond_7

    if-nez v12, :cond_8

    .line 671
    :cond_7
    invoke-virtual {v6}, Lcom/itextpdf/forms/fields/PdfFormField;->regenerateField()Z

    .line 672
    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v13}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v11

    .line 675
    :cond_8
    if-eqz v11, :cond_9

    sget-object v13, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v13}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v13

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    .line 676
    .local v13, "normal":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_5
    if-eqz v13, :cond_12

    .line 677
    const/4 v14, 0x0

    .line 678
    .local v14, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 679
    new-instance v15, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-object v5, v13

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v15, v5}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    move-object v14, v15

    move-object/from16 v16, v1

    goto :goto_6

    .line 680
    :cond_a
    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 681
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->AS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v5

    .line 682
    .local v5, "as":Lcom/itextpdf/kernel/pdf/PdfName;
    move-object v15, v13

    check-cast v15, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v15, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 683
    new-instance v15, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-object/from16 v16, v1

    .end local v1    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .local v16, "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    move-object v1, v13

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    move-object v14, v15

    .line 684
    iget-object v1, v0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v14, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    goto :goto_6

    .line 682
    .end local v16    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .restart local v1    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    :cond_b
    move-object/from16 v16, v1

    .end local v1    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .restart local v16    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    goto :goto_6

    .line 680
    .end local v5    # "as":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v16    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .restart local v1    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    :cond_c
    move-object/from16 v16, v1

    .line 688
    .end local v1    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .restart local v16    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    :goto_6
    if-eqz v14, :cond_10

    .line 690
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Form:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v14, v1, v5}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 691
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsRectangle(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 692
    .local v1, "annotBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v5

    if-nez v5, :cond_f

    .line 695
    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    const/16 v17, 0x1

    xor-int/lit8 v15, v15, 0x1

    invoke-direct {v5, v8, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;Z)V

    .line 696
    .local v5, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 700
    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/kernel/pdf/PdfStream;

    move-object/from16 v25, v3

    .end local v3    # "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    .local v25, "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v15, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 701
    .local v3, "xObjectResources":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v15

    .line 702
    .local v15, "pageResources":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v3, :cond_d

    if-ne v3, v15, :cond_d

    .line 703
    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v18

    move-object/from16 v26, v3

    .end local v3    # "xObjectResources":Lcom/itextpdf/kernel/pdf/PdfObject;
    .local v26, "xObjectResources":Lcom/itextpdf/kernel/pdf/PdfObject;
    move-object/from16 v3, v18

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfStream;

    move-object/from16 v27, v4

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    move-object/from16 v28, v6

    .end local v6    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    .local v28, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    iget-object v6, v0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v6, v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v3, v4, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_7

    .line 702
    .end local v26    # "xObjectResources":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v28    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    .restart local v3    # "xObjectResources":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v6    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    :cond_d
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v6

    .line 706
    .end local v3    # "xObjectResources":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v6    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    .restart local v26    # "xObjectResources":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v28    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    :goto_7
    if-eqz v10, :cond_e

    .line 707
    invoke-virtual {v10, v8}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setPageForTagging(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 708
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getTagReference()Lcom/itextpdf/kernel/pdf/tagutils/TagReference;

    move-result-object v3

    .line 709
    .local v3, "tagRef":Lcom/itextpdf/kernel/pdf/tagutils/TagReference;
    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/tagutils/TagReference;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 712
    .end local v3    # "tagRef":Lcom/itextpdf/kernel/pdf/tagutils/TagReference;
    :cond_e
    invoke-direct {v0, v14, v1}, Lcom/itextpdf/forms/PdfAcroForm;->calcFieldAppTransformToAnnotRect(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v3

    .line 713
    .local v3, "at":Lcom/itextpdf/kernel/geom/AffineTransform;
    const/4 v4, 0x6

    new-array v4, v4, [F

    .line 714
    .local v4, "m":[F
    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/geom/AffineTransform;->getMatrix([F)V

    .line 715
    const/4 v6, 0x0

    aget v19, v4, v6

    aget v20, v4, v17

    const/4 v6, 0x2

    aget v21, v4, v6

    const/4 v6, 0x3

    aget v22, v4, v6

    const/4 v6, 0x4

    aget v23, v4, v6

    const/4 v6, 0x5

    aget v24, v4, v6

    move-object/from16 v17, v5

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v24}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 717
    if-eqz v10, :cond_11

    .line 718
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closeTag()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_8

    .line 693
    .end local v4    # "m":[F
    .end local v5    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v15    # "pageResources":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v25    # "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    .end local v26    # "xObjectResources":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v28    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    .local v3, "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    .restart local v6    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    :cond_f
    move-object/from16 v25, v3

    .end local v3    # "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    .restart local v25    # "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    const-string v4, "The page has been already flushed. Use PdfAcroForm#addFieldAppearanceToPage() method before page flushing."

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 688
    .end local v1    # "annotBBox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v25    # "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    .restart local v3    # "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    :cond_10
    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v6

    .line 721
    .end local v3    # "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    .end local v6    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    .end local v14    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .restart local v25    # "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    .restart local v28    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    :cond_11
    :goto_8
    goto :goto_9

    .line 722
    .end local v16    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .end local v25    # "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    .end local v28    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    .local v1, "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .restart local v3    # "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    .restart local v6    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    :cond_12
    move-object/from16 v16, v1

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v6

    .end local v1    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .end local v3    # "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    .end local v6    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    .restart local v16    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .restart local v25    # "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    .restart local v28    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    sget-object v1, Lcom/itextpdf/forms/PdfAcroForm;->logger:Lorg/slf4j/Logger;

    const-string v3, "\\N entry is required to be present in an appearance dictionary."

    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 725
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 726
    .local v1, "fFields":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v1, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 727
    if-eqz v9, :cond_13

    .line 728
    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfPage;->removeAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 730
    :cond_13
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 731
    .local v3, "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v3, :cond_15

    .line 732
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    .line 733
    .local v4, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v4, :cond_14

    .line 734
    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 736
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 737
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_a

    .line 740
    :cond_14
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 743
    .end local v1    # "fFields":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v3    # "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v4    # "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v7    # "fieldObject":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v9    # "annotation":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .end local v10    # "tagPointer":Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .end local v11    # "appDic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v12    # "asNormal":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v13    # "normal":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v28    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    :cond_15
    :goto_a
    move-object/from16 v1, v16

    move-object/from16 v3, v25

    move-object/from16 v4, v27

    goto/16 :goto_4

    .line 745
    .end local v8    # "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    .end local v16    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .end local v25    # "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    .local v1, "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .local v3, "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    :cond_16
    move-object/from16 v16, v1

    move-object/from16 v25, v3

    .end local v1    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .end local v3    # "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    .restart local v16    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .restart local v25    # "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->NeedAppearances:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 746
    iget-object v1, v0, Lcom/itextpdf/forms/PdfAcroForm;->fieldsForFlattening:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_17

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->clear()V

    .line 749
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 750
    iget-object v1, v0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 752
    :cond_18
    return-void

    .line 622
    .end local v2    # "initialPageResourceClones":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .end local v16    # "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .end local v25    # "wrappedPages":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfPage;>;"
    :cond_19
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Field flattening is not supported in append mode."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCalculationOrder()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 436
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CO:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAppearance()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 499
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultJustification()Lcom/itextpdf/kernel/pdf/PdfNumber;
    .locals 2

    .line 526
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Q:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultResources()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 473
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 575
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/fields/PdfFormField;

    return-object v0
.end method

.method protected getFields()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 3

    .line 861
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 862
    .local v0, "fields":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_0

    .line 863
    sget-object v1, Lcom/itextpdf/forms/PdfAcroForm;->logger:Lorg/slf4j/Logger;

    const-string v2, "Required AcroForm entry /Fields does not exist in the document. Empty array /Fields will be created."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 864
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v0, v1

    .line 865
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 867
    :cond_0
    return-object v0
.end method

.method public getFieldsForFlattening()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fieldsForFlattening:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFormFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/forms/PdfAcroForm;->iterateFields(Lcom/itextpdf/kernel/pdf/PdfArray;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    return-object v0
.end method

.method public getNeedAppearances()Lcom/itextpdf/kernel/pdf/PdfBoolean;
    .locals 2

    .line 344
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->NeedAppearances:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public getSignatureFlags()I
    .locals 2

    .line 397
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->SigFlags:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 398
    .local v0, "f":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    return v1

    .line 401
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getXFAResource()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    .line 564
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getXfaForm()Lcom/itextpdf/forms/xfa/XfaForm;
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->xfaForm:Lcom/itextpdf/forms/xfa/XfaForm;

    return-object v0
.end method

.method public hasXfaForm()Z
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->xfaForm:Lcom/itextpdf/forms/xfa/XfaForm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/forms/xfa/XfaForm;->isXfaPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGenerateAppearance()Z
    .locals 1

    .line 586
    iget-boolean v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->generateAppearance:Z

    return v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    .line 872
    const/4 v0, 0x0

    return v0
.end method

.method public partialFormFlattening(Ljava/lang/String;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 803
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/fields/PdfFormField;

    .line 804
    .local v0, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    if-eqz v0, :cond_0

    .line 805
    iget-object v1, p0, Lcom/itextpdf/forms/PdfAcroForm;->fieldsForFlattening:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 807
    :cond_0
    return-void
.end method

.method public put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 1
    .param p1, "key"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "value"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1020
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1021
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 1022
    return-object p0
.end method

.method public release()V
    .locals 2

    .line 1030
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->unsetForbidRelease()V

    .line 1031
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->release()V

    .line 1032
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1033
    .local v1, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->release()V

    .line 1034
    .end local v1    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    goto :goto_0

    .line 1035
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    .line 1036
    return-void
.end method

.method public removeField(Ljava/lang/String;)Z
    .locals 9
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 762
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    .line 763
    .local v0, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 764
    return v1

    .line 767
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 768
    .local v2, "fieldObject":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-direct {p0, v2}, Lcom/itextpdf/forms/PdfAcroForm;->getFieldPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v3

    .line 770
    .local v3, "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-static {v2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v4

    .line 771
    .local v4, "annotation":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 772
    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfPage;->removeAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 775
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 776
    .local v5, "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 777
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 778
    .local v1, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 779
    iget-object v7, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 781
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 782
    return v6

    .line 785
    .end local v1    # "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v7

    .line 786
    .local v7, "fieldsPdfArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v7, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->contains(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 787
    invoke-virtual {v7, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 788
    iget-object v1, p0, Lcom/itextpdf/forms/PdfAcroForm;->fields:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 790
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 791
    return v6

    .line 793
    :cond_3
    return v1
.end method

.method public removeXfaForm()V
    .locals 3

    .line 1011
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->hasXfaForm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1013
    .local v0, "root":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 1014
    .local v1, "acroform":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1015
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itextpdf/forms/PdfAcroForm;->xfaForm:Lcom/itextpdf/forms/xfa/XfaForm;

    .line 1017
    .end local v0    # "root":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v1    # "acroform":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_0
    return-void
.end method

.method public renameField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .line 816
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v0

    .line 817
    .local v0, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    return-void

    .line 820
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/forms/fields/PdfFormField;

    .line 821
    .local v1, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    if-eqz v1, :cond_1

    .line 822
    invoke-virtual {v1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 823
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    :cond_1
    return-void
.end method

.method public replaceField(Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "field"    # Lcom/itextpdf/forms/fields/PdfFormField;

    .line 851
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->removeField(Ljava/lang/String;)Z

    .line 852
    invoke-virtual {p0, p2}, Lcom/itextpdf/forms/PdfAcroForm;->addField(Lcom/itextpdf/forms/fields/PdfFormField;)V

    .line 853
    return-void
.end method

.method public setCalculationOrder(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 1
    .param p1, "calculationOrder"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 419
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CO:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultAppearance(Ljava/lang/String;)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 2
    .param p1, "appearance"    # Ljava/lang/String;

    .line 487
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DA:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultJustification(I)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 2
    .param p1, "justification"    # I

    .line 513
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Q:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 1
    .param p1, "defaultResources"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 455
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    return-object v0
.end method

.method public setGenerateAppearance(Z)V
    .locals 2
    .param p1, "generateAppearance"    # Z

    .line 607
    if-eqz p1, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->NeedAppearances:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 609
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 611
    :cond_0
    iput-boolean p1, p0, Lcom/itextpdf/forms/PdfAcroForm;->generateAppearance:Z

    .line 612
    return-void
.end method

.method public setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation

    .line 1040
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1041
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    goto :goto_0

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 1045
    :goto_0
    return-object p0
.end method

.method public setNeedAppearances(Z)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 3
    .param p1, "needAppearances"    # Z

    .line 321
    iget-object v0, p0, Lcom/itextpdf/forms/PdfAcroForm;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    const-string v2, "NeedAppearances has been deprecated in PDF 2.0. Appearance streams are required in PDF 2.0."

    invoke-static {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/VersionConforming;->validatePdfVersionForDeprecatedFeatureLogError(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfVersion;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->NeedAppearances:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 323
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    goto :goto_0

    .line 325
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->NeedAppearances:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    .line 327
    :goto_0
    return-object p0
.end method

.method public setSignatureFlag(I)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 2
    .param p1, "sigFlag"    # I

    .line 379
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getSignatureFlags()I

    move-result v0

    .line 380
    .local v0, "flags":I
    or-int/2addr v0, p1

    .line 382
    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/PdfAcroForm;->setSignatureFlags(I)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v1

    return-object v1
.end method

.method public setSignatureFlags(I)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 2
    .param p1, "sigFlags"    # I

    .line 361
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->SigFlags:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    return-object v0
.end method

.method public setXFAResource(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 1
    .param p1, "xfaResource"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 554
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    return-object v0
.end method

.method public setXFAResource(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/forms/PdfAcroForm;
    .locals 1
    .param p1, "xfaResource"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 539
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    return-object v0
.end method
