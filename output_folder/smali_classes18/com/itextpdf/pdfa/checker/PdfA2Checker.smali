.class public Lcom/itextpdf/pdfa/checker/PdfA2Checker;
.super Lcom/itextpdf/pdfa/checker/PdfA1Checker;
.source "PdfA2Checker.java"


# static fields
.field private static final MAX_NUMBER_OF_DEVICEN_COLOR_COMPONENTS:I = 0x20

.field static final MAX_PAGE_SIZE:I = 0x3840

.field static final MIN_PAGE_SIZE:I = 0x3

.field protected static final allowedBlendModes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field protected static final forbiddenActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field protected static final forbiddenAnnotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x5266fe13630dcecfL


# instance fields
.field private currentFillCsIsIccBasedCMYK:Z

.field private currentStrokeCsIsIccBasedCMYK:Z

.field private separationColorSpaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            ">;"
        }
    .end annotation
.end field

.field private transparencyObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 100
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->_3D:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Sound:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Screen:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Movie:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 101
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->forbiddenAnnotations:Ljava/util/Set;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    const/16 v2, 0xb

    new-array v3, v2, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Launch:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v8, v3, v4

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Sound:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v8, v3, v5

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Movie:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v8, v3, v6

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->ResetForm:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v8, v3, v7

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->ImportData:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v8, v3, v1

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->JavaScript:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v9, 0x5

    aput-object v8, v3, v9

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Hide:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v10, 0x6

    aput-object v8, v3, v10

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->SetOCGState:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v11, 0x7

    aput-object v8, v3, v11

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Rendition:Lcom/itextpdf/kernel/pdf/PdfName;

    const/16 v12, 0x8

    aput-object v8, v3, v12

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Trans:Lcom/itextpdf/kernel/pdf/PdfName;

    const/16 v13, 0x9

    aput-object v8, v3, v13

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->GoTo3DView:Lcom/itextpdf/kernel/pdf/PdfName;

    const/16 v14, 0xa

    aput-object v8, v3, v14

    .line 107
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->forbiddenActions:Ljava/util/Set;

    .line 119
    new-instance v0, Ljava/util/HashSet;

    const/16 v3, 0x11

    new-array v3, v3, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Normal:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v8, v3, v4

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Compatible:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v4, v3, v5

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Multiply:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v4, v3, v6

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Screen:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v4, v3, v7

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Overlay:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v4, v3, v1

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Darken:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v3, v9

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Lighten:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v3, v10

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorDodge:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v3, v11

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorBurn:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v3, v12

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->HardLight:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v3, v13

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->SoftLight:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v3, v14

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Difference:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v3, v2

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Exclusion:Lcom/itextpdf/kernel/pdf/PdfName;

    const/16 v2, 0xc

    aput-object v1, v3, v2

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Hue:Lcom/itextpdf/kernel/pdf/PdfName;

    const/16 v2, 0xd

    aput-object v1, v3, v2

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Saturation:Lcom/itextpdf/kernel/pdf/PdfName;

    const/16 v2, 0xe

    aput-object v1, v3, v2

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Color:Lcom/itextpdf/kernel/pdf/PdfName;

    const/16 v2, 0xf

    aput-object v1, v3, v2

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Luminosity:Lcom/itextpdf/kernel/pdf/PdfName;

    const/16 v2, 0x10

    aput-object v1, v3, v2

    .line 120
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->allowedBlendModes:Ljava/util/Set;

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V
    .locals 1
    .param p1, "conformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 158
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;-><init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->currentFillCsIsIccBasedCMYK:Z

    .line 145
    iput-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->currentStrokeCsIsIccBasedCMYK:Z

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->separationColorSpaces:Ljava/util/Map;

    .line 149
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    .line 159
    return-void
.end method

.method private checkAnnotationsForTransparency(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 4
    .param p1, "annotations"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 922
    if-nez p1, :cond_0

    .line 923
    return-void

    .line 925
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 926
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 927
    .local v1, "annot":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 928
    .local v2, "ap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v2, :cond_1

    .line 929
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v2, v3}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkAppearanceStreamForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    .line 925
    .end local v1    # "annot":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v2    # "ap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 932
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private checkAppearanceStreamForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V
    .locals 3
    .param p1, "ap"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 935
    .local p2, "checkedObjects":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    return-void

    .line 938
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 940
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 941
    .local v1, "val":Lcom/itextpdf/kernel/pdf/PdfObject;
    iget-object v2, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 943
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 944
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v2, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkAppearanceStreamForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    goto :goto_1

    .line 945
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 946
    invoke-direct {p0, v1, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkObjectWithResourcesForTransparency(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/Set;)V

    .line 948
    .end local v1    # "val":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_2
    :goto_1
    goto :goto_0

    .line 942
    .restart local v1    # "val":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_3
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "If the document does not contain a OutputIntent, then page with transparency shall include the dictionary with Group key that include a CS with blending colour space"

    invoke-direct {v0, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    .end local v1    # "val":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_4
    return-void
.end method

.method private checkBlendMode(Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 2
    .param p1, "blendMode"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 982
    sget-object v0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->allowedBlendModes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    return-void

    .line 983
    :cond_0
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "Only standard blend modes shall be used for the value of the BM key in an extended graphic state dictionary"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCatalogConfig(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 5
    .param p1, "config"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/HashSet<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1039
    .local p2, "ocgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .local p3, "names":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Name:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    .line 1040
    .local v0, "name":Lcom/itextpdf/kernel/pdf/PdfString;
    if-eqz v0, :cond_4

    .line 1043
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1046
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1049
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Order:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 1050
    .local v1, "orderArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v1, :cond_1

    .line 1051
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1052
    .local v2, "order":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-direct {p0, v1, v2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->fillOrderRecursively(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Set;)V

    .line 1053
    invoke-virtual {v2, p2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1054
    :cond_0
    new-instance v3, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v4, "Order array shall contain references to all ocgs"

    invoke-direct {v3, v4}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1058
    .end local v2    # "order":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    :cond_1
    :goto_0
    return-void

    .line 1047
    .end local v1    # "orderArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_2
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "The as key shall not appear in any optional content configuration dictionary"

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1044
    :cond_3
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "Value of name entry shall be unique among all optional content configuration dictionaries"

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1041
    :cond_4
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "Optional content configuration dictionary shall contain name entry"

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkContentsForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 6
    .param p1, "pageDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 906
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    .line 907
    .local v0, "contentStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    const-string v1, "If the document does not contain a OutputIntent, then page with transparency shall include the dictionary with Group key that include a CS with blending colour space"

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 908
    :cond_0
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v2, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 910
    :cond_1
    :goto_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 911
    .local v2, "contentSteamArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v2, :cond_3

    .line 912
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 913
    iget-object v4, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 912
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 914
    :cond_2
    new-instance v4, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v4, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 919
    .end local v2    # "contentSteamArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private checkDefaultCS(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfName;I)Z
    .locals 7
    .param p1, "currentColorSpaces"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "fill"    # Ljava/lang/Boolean;
    .param p3, "defaultCsName"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p4, "numOfComponents"    # I

    .line 1071
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1072
    return v0

    .line 1073
    :cond_0
    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1074
    return v0

    .line 1076
    :cond_1
    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 1077
    .local v1, "defaultCsObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v2

    .line 1078
    .local v2, "defaultCs":Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    instance-of v3, v2, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs;

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 1081
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getNumberOfComponents()I

    move-result v3

    if-ne v3, p4, :cond_2

    .line 1084
    invoke-virtual {p0, v2, p1, v0, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 1085
    return v4

    .line 1082
    :cond_2
    new-instance v3, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v5, "Color space {0} shall have {1} components"

    invoke-direct {v3, v5}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-virtual {v3, v5}, Lcom/itextpdf/pdfa/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v0

    throw v0

    .line 1079
    :cond_3
    new-instance v3, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v5, "Color space {0} shall be device independent"

    invoke-direct {v3, v5}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v3, v4}, Lcom/itextpdf/pdfa/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v0

    throw v0
.end method

.method private checkObjectWithResourcesForTransparency(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/Set;)V
    .locals 2
    .param p1, "objectWithResources"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 952
    .local p2, "checkedObjects":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    return-void

    .line 955
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 958
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 961
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_1

    .line 962
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkResourcesForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    .line 964
    :cond_1
    return-void

    .line 959
    :cond_2
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "If the document does not contain a OutputIntent, then page with transparency shall include the dictionary with Group key that include a CS with blending colour space"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkResourcesForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V
    .locals 1
    .param p1, "resources"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 967
    .local p2, "checkedObjects":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    if-eqz p1, :cond_0

    .line 968
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkSingleResourceTypeForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    .line 969
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Pattern:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkSingleResourceTypeForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    .line 971
    :cond_0
    return-void
.end method

.method private checkSeparationCS(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 10
    .param p1, "separation"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 997
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->separationColorSpaces:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1001
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->separationColorSpaces:Ljava/util/Map;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1002
    .local v0, "sameNameSeparation":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 1003
    .local v3, "cs1":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 1004
    .local v2, "cs2":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-direct {p0, v3, v2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->isAltCSIsTheSame(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result v4

    .line 1008
    .local v4, "altCSIsTheSame":Z
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    .line 1009
    .local v6, "f1Obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    .line 1011
    .local v5, "f2Obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v7

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v8

    const/4 v9, 0x1

    if-ne v7, v8, :cond_1

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v7, v9

    goto :goto_0

    :cond_1
    move v7, v1

    .line 1013
    .local v7, "bothAllowedType":Z
    :goto_0
    if-eqz v7, :cond_2

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v1, v9

    .line 1016
    .local v1, "tintTransformIsTheSame":Z
    :cond_2
    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 1019
    .end local v0    # "sameNameSeparation":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v1    # "tintTransformIsTheSame":Z
    .end local v2    # "cs2":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v3    # "cs1":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "altCSIsTheSame":Z
    .end local v5    # "f2Obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v6    # "f1Obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v7    # "bothAllowedType":Z
    goto :goto_1

    .line 1017
    .restart local v0    # "sameNameSeparation":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v1    # "tintTransformIsTheSame":Z
    .restart local v2    # "cs2":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v3    # "cs1":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v4    # "altCSIsTheSame":Z
    .restart local v5    # "f2Obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v6    # "f1Obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v7    # "bothAllowedType":Z
    :cond_3
    new-instance v8, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v9, "TintTransform and alternateSpace shall be the same for the all separation cs with the same name"

    invoke-direct {v8, v9}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1020
    .end local v0    # "sameNameSeparation":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v1    # "tintTransformIsTheSame":Z
    .end local v2    # "cs2":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v3    # "cs1":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "altCSIsTheSame":Z
    .end local v5    # "f2Obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v6    # "f1Obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v7    # "bothAllowedType":Z
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->separationColorSpaces:Ljava/util/Map;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    :goto_1
    return-void
.end method

.method private checkSeparationInsideDeviceN(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 2
    .param p1, "separation"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p2, "deviceNColorSpace"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p3, "deviceNTintTransform"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 988
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->isAltCSIsTheSame(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 989
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 990
    :cond_0
    const-class v0, Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 991
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "TintTransform and alternateSpace of separation arrays in the colorants of deviceN should be consistent with same attributes of deviceN"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 993
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_1
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkSeparationCS(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 994
    return-void
.end method

.method private checkSingleResourceTypeForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V
    .locals 2
    .param p1, "singleResourceDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 974
    .local p2, "checkedObjects":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    if-eqz p1, :cond_0

    .line 975
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 976
    .local v1, "resource":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-direct {p0, v1, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkObjectWithResourcesForTransparency(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/Set;)V

    .line 977
    .end local v1    # "resource":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_0

    .line 979
    :cond_0
    return-void
.end method

.method private checkType3FontGlyphs(Lcom/itextpdf/kernel/font/PdfType3Font;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 4
    .param p1, "font"    # Lcom/itextpdf/kernel/font/PdfType3Font;
    .param p2, "contentStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 1089
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    .line 1090
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v1

    .line 1091
    .local v1, "fontEncoding":Lcom/itextpdf/io/font/FontEncoding;
    invoke-virtual {v1, v0}, Lcom/itextpdf/io/font/FontEncoding;->canDecode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1092
    invoke-virtual {v1, v0}, Lcom/itextpdf/io/font/FontEncoding;->getUnicode(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/font/PdfType3Font;->getType3Glyph(I)Lcom/itextpdf/kernel/font/Type3Glyph;

    move-result-object v2

    .line 1093
    .local v2, "type3Glyph":Lcom/itextpdf/kernel/font/Type3Glyph;
    if-eqz v2, :cond_0

    .line 1094
    invoke-virtual {v2}, Lcom/itextpdf/kernel/font/Type3Glyph;->getContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFormXObject(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 1089
    .end local v1    # "fontEncoding":Lcom/itextpdf/io/font/FontEncoding;
    .end local v2    # "type3Glyph":Lcom/itextpdf/kernel/font/Type3Glyph;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1098
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private fillOrderRecursively(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Set;)V
    .locals 3
    .param p1, "orderArray"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 1061
    .local p2, "order":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1062
    .local v1, "orderItem":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1063
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1065
    :cond_0
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p0, v2, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->fillOrderRecursively(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Set;)V

    .line 1067
    .end local v1    # "orderItem":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_1
    goto :goto_0

    .line 1068
    :cond_1
    return-void
.end method

.method private isAltCSIsTheSame(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)Z
    .locals 4
    .param p1, "cs1"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "cs2"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1026
    const/4 v0, 0x0

    .line 1027
    .local v0, "altCSIsTheSame":Z
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz v1, :cond_0

    .line 1028
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1029
    :cond_0
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v1, :cond_1

    instance-of v1, p2, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v1, :cond_1

    .line 1033
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1035
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method protected checkAnnotation(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 10
    .param p1, "annotDic"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 391
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 393
    .local v0, "subtype":Lcom/itextpdf/kernel/pdf/PdfName;
    const-string v1, "Annotation type {0} is not permitted"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_12

    .line 396
    sget-object v4, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->forbiddenAnnotations:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 400
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Popup:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-nez v1, :cond_3

    .line 401
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    .line 402
    .local v1, "f":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v1, :cond_2

    .line 405
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v6

    .line 406
    .local v6, "flags":I
    invoke-static {v6, v5}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFlag(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 407
    invoke-static {v6, v4}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFlag(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 408
    invoke-static {v6, v3}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFlag(II)Z

    move-result v7

    if-nez v7, :cond_1

    const/16 v7, 0x20

    .line 409
    invoke-static {v6, v7}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFlag(II)Z

    move-result v7

    if-nez v7, :cond_1

    const/16 v7, 0x100

    .line 410
    invoke-static {v6, v7}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFlag(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 413
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Text:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v7}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 414
    const/16 v7, 0x8

    invoke-static {v6, v7}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFlag(II)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFlag(II)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "Text annotations should set the nozoom and norotate flag bits of the f key to 1"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 411
    :cond_1
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "The f keys print flag bit shall be set to 1 and its hidden invisible noview and togglenoview flag bits shall be set to 0"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 403
    .end local v6    # "flags":I
    :cond_2
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "An annotation dictionary shall contain the f key"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 420
    .end local v1    # "f":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_3
    :goto_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 421
    :cond_4
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "Widget annotation dictionary or field dictionary shall not include a or aa entry"

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    :cond_5
    :goto_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 428
    iget-object v1, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->conformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    invoke-static {v1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkStructure(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 429
    sget-object v1, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->contentAnnotations:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 430
    :cond_6
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v4, "Annotation of type {0} should have contents key"

    invoke-direct {v1, v4}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v1

    throw v1

    .line 434
    :cond_7
    :goto_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 435
    .local v1, "ap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_c

    .line 436
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    const-string v3, "Appearance dictionary shall contain only the n key with stream value"

    if-nez v2, :cond_b

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 439
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 440
    .local v2, "n":Lcom/itextpdf/kernel/pdf/PdfObject;
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 441
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    .line 442
    :cond_8
    new-instance v3, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v4, "Appearance dictionary of widget subtype and btn field type shall contain only the n key with dictionary value"

    invoke-direct {v3, v4}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 444
    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 448
    :goto_3
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkResourcesOfAppearanceStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 449
    .end local v2    # "n":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_4

    .line 445
    .restart local v2    # "n":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_a
    new-instance v4, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v4, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 437
    .end local v2    # "n":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_b
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 450
    :cond_c
    const/4 v6, 0x0

    .line 451
    .local v6, "isCorrectRect":Z
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v7

    .line 452
    .local v7, "rect":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v8

    if-ne v8, v5, :cond_d

    .line 453
    invoke-virtual {v7, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    .line 454
    .local v2, "index0":Lcom/itextpdf/kernel/pdf/PdfNumber;
    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    .line 455
    .local v3, "index1":Lcom/itextpdf/kernel/pdf/PdfNumber;
    invoke-virtual {v7, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    .line 456
    .local v4, "index2":Lcom/itextpdf/kernel/pdf/PdfNumber;
    const/4 v5, 0x3

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v5

    .line 457
    .local v5, "index3":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v2, :cond_d

    if-eqz v3, :cond_d

    if-eqz v4, :cond_d

    if-eqz v5, :cond_d

    .line 458
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v8

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_d

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v8

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_d

    .line 459
    const/4 v6, 0x1

    .line 461
    .end local v2    # "index0":Lcom/itextpdf/kernel/pdf/PdfNumber;
    .end local v3    # "index1":Lcom/itextpdf/kernel/pdf/PdfNumber;
    .end local v4    # "index2":Lcom/itextpdf/kernel/pdf/PdfNumber;
    .end local v5    # "index3":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_d
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Popup:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Link:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 462
    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    if-eqz v6, :cond_e

    goto :goto_4

    .line 464
    :cond_e
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "Every annotation shall have at least one appearance dictionary"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 466
    .end local v6    # "isCorrectRect":Z
    .end local v7    # "rect":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_f
    :goto_4
    return-void

    .line 425
    .end local v1    # "ap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_10
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "An annotation dictionary shall not contain aa key"

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_11
    new-instance v4, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v4, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v4, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v1

    throw v1

    .line 394
    :cond_12
    new-instance v4, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v4, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "null"

    aput-object v3, v1, v2

    invoke-virtual {v4, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v1

    throw v1
.end method

.method protected checkAppearanceStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 1
    .param p1, "appearanceStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 470
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    return-void

    .line 474
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->isContainsTransparencyGroup(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 478
    return-void
.end method

.method protected checkCatalogValidEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 11
    .param p1, "catalogDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 505
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->NeedsRendering:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 509
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 513
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Requirements:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 517
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Perms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 518
    .local v0, "permissions":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_4

    .line 519
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 520
    .local v2, "dictKey":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DocMDP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 521
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DocMDP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 522
    .local v3, "signatureDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v3, :cond_2

    .line 523
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Reference:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    .line 524
    .local v4, "references":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v4, :cond_2

    .line 525
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 526
    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v6

    .line 527
    .local v6, "referenceDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->DigestLocation:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->DigestMethod:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 528
    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->DigestValue:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 529
    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 525
    .end local v6    # "referenceDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 530
    .restart local v6    # "referenceDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_0
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v7, "Signature references dictionary shall not contain digestlocation digestmethod digestvalue"

    invoke-direct {v1, v7}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 535
    .end local v3    # "signatureDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v4    # "references":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v5    # "i":I
    .end local v6    # "referenceDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_1
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->UR3:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    nop

    .line 539
    .end local v2    # "dictKey":Lcom/itextpdf/kernel/pdf/PdfName;
    goto :goto_0

    .line 537
    .restart local v2    # "dictKey":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_3
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "No keys other than UR3 and DocMDP shall be present in a permissions dictionary"

    invoke-direct {v1, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 542
    .end local v2    # "dictKey":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_4
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 543
    .local v1, "namesDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_6

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AlternatePresentations:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 544
    :cond_5
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "A catalog dictionary shall not contain alternatepresentations names entry"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 547
    :cond_6
    :goto_2
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OCProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 548
    .local v2, "oCProperties":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v2, :cond_a

    .line 549
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v3, "configList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    .line 551
    .local v4, "d":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v4, :cond_7

    .line 552
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_7
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Configs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    .line 555
    .local v5, "configs":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v5, :cond_8

    .line 556
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 557
    .local v7, "config":Lcom/itextpdf/kernel/pdf/PdfObject;
    move-object v8, v7

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    .end local v7    # "config":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_3

    .line 561
    :cond_8
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 562
    .local v6, "ocgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->OCGs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v7

    .line 563
    .local v7, "ocgsArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v7, :cond_9

    .line 564
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 565
    .local v9, "ocg":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 566
    .end local v9    # "ocg":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_4

    .line 569
    :cond_9
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 571
    .local v8, "names":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 572
    .local v10, "config":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-direct {p0, v10, v6, v8}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkCatalogConfig(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 573
    .end local v10    # "config":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    goto :goto_5

    .line 575
    .end local v3    # "configList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    .end local v4    # "d":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v5    # "configs":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v6    # "ocgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .end local v7    # "ocgsArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v8    # "names":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_a
    return-void

    .line 514
    .end local v0    # "permissions":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v1    # "namesDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v2    # "oCProperties":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_b
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "A catalog dictionary shall not contain a requirements entry"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_c
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "A catalog dictionary shall not contain aa entry"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_d
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "The catalog dictionary shall not contain the needsrendering key"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkColor(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "currentColorSpaces"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "fill"    # Ljava/lang/Boolean;

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColor(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 187
    return-void
.end method

.method public checkColor(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 6
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "currentColorSpaces"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "fill"    # Ljava/lang/Boolean;
    .param p4, "contentStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 191
    instance-of v0, p1, Lcom/itextpdf/kernel/colors/PatternColor;

    if-eqz v0, :cond_1

    .line 192
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/colors/PatternColor;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/PatternColor;->getPattern()Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    move-result-object v0

    .line 193
    .local v0, "pattern":Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;

    if-eqz v1, :cond_0

    .line 194
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;->getShading()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 195
    .local v1, "shadingDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 196
    .local v2, "colorSpace":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-static {v2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v3, p2, v4, v5}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 197
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->ExtGState:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 198
    .local v3, "extGStateDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    new-instance v4, Lcom/itextpdf/pdfa/checker/PdfA2Checker$1;

    invoke-direct {v4, p0, v3}, Lcom/itextpdf/pdfa/checker/PdfA2Checker$1;-><init>(Lcom/itextpdf/pdfa/checker/PdfA2Checker;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 203
    .local v4, "gState":Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
    invoke-virtual {p0, v4, p4}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkExtGState(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .end local v1    # "shadingDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v2    # "colorSpace":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v3    # "extGStateDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v4    # "gState":Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
    goto :goto_0

    .line 204
    :cond_0
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    nop

    .line 209
    .end local v0    # "pattern":Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkColor(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 210
    return-void
.end method

.method public checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V
    .locals 11
    .param p1, "colorSpace"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .param p2, "currentColorSpaces"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "checkAlternate"    # Z
    .param p4, "fill"    # Ljava/lang/Boolean;

    .line 214
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 215
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iput-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->currentFillCsIsIccBasedCMYK:Z

    goto :goto_0

    .line 218
    :cond_0
    iput-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->currentStrokeCsIsIccBasedCMYK:Z

    .line 222
    :cond_1
    :goto_0
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 224
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;

    .line 225
    .local v1, "separation":Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p0, v3}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkSeparationCS(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 226
    if-eqz p3, :cond_2

    .line 227
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;->getBaseCs()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v3

    invoke-virtual {p0, v3, p2, v0, p4}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 230
    .end local v1    # "separation":Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;
    :cond_2
    goto/16 :goto_2

    :cond_3
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eqz v1, :cond_7

    .line 232
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;

    .line 233
    .local v1, "deviceN":Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;->getNumberOfComponents()I

    move-result v5

    const/16 v6, 0x20

    if-gt v5, v6, :cond_6

    .line 240
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    .line 241
    .local v4, "attributes":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Colorants:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 244
    .local v5, "colorants":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v5, :cond_4

    .line 245
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 246
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 247
    .local v8, "separation":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v10, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    invoke-direct {p0, v8, v9, v10}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkSeparationInsideDeviceN(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 248
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .end local v8    # "separation":Lcom/itextpdf/kernel/pdf/PdfArray;
    goto :goto_1

    .line 251
    :cond_4
    if-eqz p3, :cond_5

    .line 252
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;->getBaseCs()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v3

    invoke-virtual {p0, v3, p2, v0, p4}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 255
    .end local v1    # "deviceN":Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;
    .end local v4    # "attributes":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v5    # "colorants":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_5
    goto :goto_2

    .line 234
    .restart local v1    # "deviceN":Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;
    :cond_6
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    .line 236
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "The number of color components in DeviceN colorspace should not exceed {0}"

    invoke-direct {v0, v3, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    .line 255
    .end local v1    # "deviceN":Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;
    :cond_7
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Indexed;

    if-eqz v0, :cond_8

    .line 256
    if-eqz p3, :cond_c

    .line 257
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Indexed;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Indexed;->getBaseCs()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v2, p4}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    goto :goto_2

    .line 259
    :cond_8
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;

    if-eqz v0, :cond_9

    .line 260
    if-eqz p3, :cond_c

    .line 261
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;->getUnderlyingColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v2, p4}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    goto :goto_2

    .line 265
    :cond_9
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    if-eqz v0, :cond_a

    .line 266
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DefaultRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, p2, p4, v0, v3}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkDefaultCS(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfName;I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 267
    iput-boolean v2, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->rgbIsUsed:Z

    goto :goto_2

    .line 269
    :cond_a
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    if-eqz v0, :cond_b

    .line 270
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DefaultCMYK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, p2, p4, v0, v4}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkDefaultCS(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfName;I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 271
    iput-boolean v2, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->cmykIsUsed:Z

    goto :goto_2

    .line 273
    :cond_b
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    if-eqz v0, :cond_c

    .line 274
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DefaultGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, p2, p4, v0, v2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkDefaultCS(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfName;I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 275
    iput-boolean v2, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->grayIsUsed:Z

    .line 280
    :cond_c
    :goto_2
    if-eqz p4, :cond_e

    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;

    if-eqz v0, :cond_e

    .line 281
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v0

    .line 282
    .local v0, "iccBytes":[B
    invoke-static {v0}, Lcom/itextpdf/io/colors/IccProfile;->getIccColorSpaceName([B)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CMYK"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 283
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 284
    iput-boolean v2, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->currentFillCsIsIccBasedCMYK:Z

    goto :goto_3

    .line 286
    :cond_d
    iput-boolean v2, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->currentStrokeCsIsIccBasedCMYK:Z

    .line 290
    .end local v0    # "iccBytes":[B
    :cond_e
    :goto_3
    return-void
.end method

.method protected checkColorsUsages()V
    .locals 2

    .line 729
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->rgbIsUsed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->cmykIsUsed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->grayIsUsed:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 733
    :cond_1
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->rgbIsUsed:Z

    if-eqz v0, :cond_3

    .line 734
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    const-string v1, "RGB "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 735
    :cond_2
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "Devicergb may be used only if the file has a rgb pdfa outputIntent or defaultrgb in usage context"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->cmykIsUsed:Z

    if-eqz v0, :cond_5

    .line 739
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    const-string v1, "CMYK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 740
    :cond_4
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "Devicecmyk may be used only if the file has a cmyk pdfa outputIntent or defaultcmyk in usage context"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_5
    :goto_1
    return-void

    .line 730
    :cond_6
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "If device rgb cmyk gray used in file that file shall contain pdfa outputintent orDefaultRgb Cmyk Gray in usage context"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkExtGState(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V
    .locals 1
    .param p1, "extGState"    # Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkExtGState(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 295
    return-void
.end method

.method public checkExtGState(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 5
    .param p1, "extGState"    # Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
    .param p2, "contentStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 299
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getOverprintMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillOverprint()Z

    move-result v1

    const-string v2, "Overprint mode shall not be one when an ICCBased CMYK colour space is used and when overprinting is set to true"

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->currentFillCsIsIccBasedCMYK:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v0, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeOverprint()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->currentStrokeCsIsIccBasedCMYK:Z

    if-nez v1, :cond_2

    goto :goto_1

    .line 304
    :cond_2
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v0, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTransferFunction()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-nez v1, :cond_12

    .line 311
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getHTP()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-nez v1, :cond_11

    .line 315
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTransferFunction2()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 316
    .local v1, "transferFunction2":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v1, :cond_5

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Default:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 317
    :cond_4
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "An extgstate dictionary shall not contain the TR2 key with a value other than default"

    invoke-direct {v0, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getHalftone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    instance-of v2, v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v2, :cond_9

    .line 321
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getHalftone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 322
    .local v2, "halftoneDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->HalftoneType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v3

    .line 323
    .local v3, "halftoneType":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v0, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_6

    goto :goto_3

    .line 324
    :cond_6
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v4, "All halftones shall have halftonetype 1 or 5"

    invoke-direct {v0, v4}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_7
    :goto_3
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->HalftoneName:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    .line 328
    :cond_8
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v4, "Halftones shall not contain halftonename"

    invoke-direct {v0, v4}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    .end local v2    # "halftoneDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v3    # "halftoneType":Ljava/lang/Integer;
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getRenderingIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 334
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getSoftMask()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getSoftMask()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_a

    .line 335
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_a
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeOpacity()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_b

    .line 338
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_b
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillOpacity()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_c

    .line 341
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_c
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getBlendMode()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 345
    .local v0, "bm":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v0, :cond_10

    .line 346
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Normal:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 347
    iget-object v2, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_d
    instance-of v2, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v2, :cond_f

    .line 350
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 351
    .local v3, "b":Lcom/itextpdf/kernel/pdf/PdfObject;
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v4}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkBlendMode(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 352
    .end local v3    # "b":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_5

    :cond_e
    goto :goto_6

    .line 353
    :cond_f
    instance-of v2, v0, Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz v2, :cond_10

    .line 354
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkBlendMode(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 357
    :cond_10
    :goto_6
    return-void

    .line 312
    .end local v0    # "bm":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v1    # "transferFunction2":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_11
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "An extgstate dictionary shall not contain the HTP key"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_12
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "An extgstate dictionary shall not contain the tr key"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkFileSpec(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 4
    .param p1, "fileSpec"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 593
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 594
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->UF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Desc:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    const-class v0, Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 599
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "File specification dictionary should contain desc key"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 602
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 603
    .local v0, "ef":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    .line 604
    .local v1, "embeddedFile":Lcom/itextpdf/kernel/pdf/PdfStream;
    if-eqz v1, :cond_1

    .line 608
    const-class v2, Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 609
    .local v2, "logger":Lorg/slf4j/Logger;
    const-string v3, "Embedded file shall be compliant with either ISO 19005-1 (PDF-A/1 standard) or ISO 19005-2 (PDF-A/2 standard). Please ensure that fact, because iText doesn\'t check embedded file."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 605
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_1
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "Ef key of file specification dictionary shall contain dictionary with valid f key"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 595
    .end local v0    # "ef":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v1    # "embeddedFile":Lcom/itextpdf/kernel/pdf/PdfStream;
    :cond_2
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "File specification dictionary shall contain f key and uf key"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_3
    :goto_0
    return-void
.end method

.method public checkFontGlyphs(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 1
    .param p1, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p2, "contentStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 864
    instance-of v0, p1, Lcom/itextpdf/kernel/font/PdfType3Font;

    if-eqz v0, :cond_0

    .line 865
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/font/PdfType3Font;

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkType3FontGlyphs(Lcom/itextpdf/kernel/font/PdfType3Font;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 867
    :cond_0
    return-void
.end method

.method protected checkForm(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 6
    .param p1, "form"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 482
    if-eqz p1, :cond_3

    .line 483
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->NeedAppearances:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v0

    .line 484
    .local v0, "needAppearances":Lcom/itextpdf/kernel/pdf/PdfBoolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "Needappearances flag of the interactive form dictionary shall either not be presented or shall be false"

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    :cond_1
    :goto_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 490
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 492
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 493
    .local v1, "fields":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v1, :cond_3

    .line 494
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->getFormFields(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 495
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 496
    .local v3, "field":Lcom/itextpdf/kernel/pdf/PdfObject;
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 497
    .local v4, "fieldDic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 498
    .end local v3    # "field":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "fieldDic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    goto :goto_1

    .line 488
    .end local v1    # "fields":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_2
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "The interactive form dictionary shall not contain the xfa key"

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    .end local v0    # "needAppearances":Lcom/itextpdf/kernel/pdf/PdfBoolean;
    :cond_3
    return-void
.end method

.method protected checkFormXObject(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 1
    .param p1, "form"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 871
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkFormXObject(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 872
    return-void
.end method

.method protected checkFormXObject(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 6
    .param p1, "form"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p2, "contentStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 875
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 877
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OPI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 880
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 883
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PS:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype2:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 887
    invoke-static {p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->isContainsTransparencyGroup(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 888
    if-eqz p2, :cond_1

    .line 889
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 893
    :goto_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Group:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 894
    .local v0, "cs":Lcom/itextpdf/kernel/pdf/PdfObject;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 895
    .local v1, "resources":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 896
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 897
    .local v2, "currentColorSpaces":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v2, v4, v5}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 901
    .end local v0    # "cs":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v1    # "resources":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v2    # "currentColorSpaces":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 902
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 903
    return-void

    .line 884
    :cond_3
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "A form xobject dictionary shall not contain subtype2 key with a value of PS"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_4
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "A form xobject dictionary shall not contain PS key"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_5
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "A form xobject dictionary shall not contain opi key"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 12
    .param p1, "image"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p2, "currentColorSpaces"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 747
    const/4 v0, 0x0

    .line 748
    .local v0, "colorSpace":Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 749
    iget-object v1, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkedObjectsColorspace:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    .line 750
    invoke-virtual {p0, v0, p2, v3, v2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 751
    return-void

    .line 754
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 755
    .local v1, "colorSpaceObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v1, :cond_1

    .line 756
    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v0

    .line 757
    invoke-virtual {p0, v0, p2, v3, v2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 758
    iget-object v4, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkedObjectsColorspace:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    :cond_1
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Alternates:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 764
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->OPI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 768
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Interpolate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Interpolate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsBool(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 769
    :cond_2
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "The value of interpolate key shall not be true"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 771
    :cond_3
    :goto_0
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Intent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 773
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->SMask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 774
    iget-object v4, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 777
    :cond_4
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->SMaskInData:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->SMaskInData:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_5

    .line 778
    iget-object v4, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 781
    :cond_5
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->JPXDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 782
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes(Z)[B

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/io/image/ImageDataFactory;->createJpeg2000([B)Lcom/itextpdf/io/image/ImageData;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/io/image/Jpeg2000ImageData;

    .line 783
    .local v4, "jpgImage":Lcom/itextpdf/io/image/Jpeg2000ImageData;
    invoke-virtual {v4}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->getParameters()Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    move-result-object v5

    .line 802
    .local v5, "params":Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;
    iget-boolean v6, v5, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->isJp2:Z

    if-eqz v6, :cond_11

    .line 806
    iget v6, v5, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->numOfComps:I

    const/4 v7, 0x3

    if-eq v6, v3, :cond_7

    iget v6, v5, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->numOfComps:I

    if-eq v6, v7, :cond_7

    iget v6, v5, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->numOfComps:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_6

    goto :goto_1

    .line 807
    :cond_6
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "The number of colour channels in the jpeg2000 data shall be 1, 3 or 4"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 810
    :cond_7
    :goto_1
    iget-object v6, v5, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->colorSpecBoxes:Ljava/util/List;

    if-eqz v6, :cond_e

    iget-object v6, v5, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->colorSpecBoxes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v3, :cond_e

    .line 811
    const/4 v6, 0x0

    .line 812
    .local v6, "numOfApprox0x01":I
    iget-object v8, v5, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->colorSpecBoxes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;

    .line 813
    .local v9, "colorSpecBox":Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;
    invoke-virtual {v9}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->getApprox()I

    move-result v10

    if-ne v10, v3, :cond_a

    .line 814
    add-int/lit8 v6, v6, 0x1

    .line 815
    if-ne v6, v3, :cond_9

    .line 816
    invoke-virtual {v9}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->getMeth()I

    move-result v10

    if-eq v10, v3, :cond_9

    invoke-virtual {v9}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->getMeth()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_9

    invoke-virtual {v9}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->getMeth()I

    move-result v10

    if-ne v10, v7, :cond_8

    goto :goto_3

    .line 817
    :cond_8
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "The value of the meth entry in colr box shall be 1, 2 or 3"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 820
    :cond_9
    :goto_3
    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    if-nez v10, :cond_a

    .line 821
    invoke-virtual {v9}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->getEnumCs()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_4

    .line 833
    :sswitch_0
    new-instance v10, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    invoke-direct {v10}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;-><init>()V

    .line 834
    .local v10, "deviceCmykCs":Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;
    invoke-virtual {p0, v10, p2, v3, v2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 835
    iget-object v11, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkedObjectsColorspace:Ljava/util/Map;

    invoke-interface {v11, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 828
    .end local v10    # "deviceCmykCs":Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;
    :sswitch_1
    new-instance v10, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    invoke-direct {v10}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;-><init>()V

    .line 829
    .local v10, "deviceRgbCs":Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;
    invoke-virtual {p0, v10, p2, v3, v2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 830
    iget-object v11, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkedObjectsColorspace:Ljava/util/Map;

    invoke-interface {v11, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    goto :goto_4

    .line 823
    .end local v10    # "deviceRgbCs":Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;
    :sswitch_2
    new-instance v10, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    invoke-direct {v10}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;-><init>()V

    .line 824
    .local v10, "deviceGrayCs":Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;
    invoke-virtual {p0, v10, p2, v3, v2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 825
    iget-object v11, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkedObjectsColorspace:Ljava/util/Map;

    invoke-interface {v11, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    .end local v10    # "deviceGrayCs":Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;
    :cond_a
    :goto_4
    invoke-virtual {v9}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->getEnumCs()I

    move-result v10

    const/16 v11, 0x13

    if-eq v10, v11, :cond_b

    .line 843
    .end local v9    # "colorSpecBox":Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;
    goto :goto_2

    .line 841
    .restart local v9    # "colorSpecBox":Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;
    :cond_b
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "jpeg2000 enumerated colour space 19 (CIEJab) shall not be used"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 844
    .end local v9    # "colorSpecBox":Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;
    :cond_c
    if-ne v6, v3, :cond_d

    goto :goto_5

    .line 845
    :cond_d
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "Exactly one colour space specification shall have the value 0x01 in the approx field"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 849
    .end local v6    # "numOfApprox0x01":I
    :cond_e
    :goto_5
    invoke-virtual {v4}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->getBpc()I

    move-result v2

    if-lt v2, v3, :cond_10

    invoke-virtual {v4}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->getBpc()I

    move-result v2

    const/16 v3, 0x26

    if-gt v2, v3, :cond_10

    .line 856
    iget-object v2, v5, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->bpcBoxData:[B

    if-nez v2, :cond_f

    goto :goto_6

    .line 857
    :cond_f
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "All colour channels in the jpeg2000 data shall have the same bit-depth"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 850
    :cond_10
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "The bit-depth of the jpeg2000 data shall have a value in the range 1 to 38"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 803
    :cond_11
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "Only jpx baseline set of features shall be used"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 860
    .end local v4    # "jpgImage":Lcom/itextpdf/io/image/Jpeg2000ImageData;
    .end local v5    # "params":Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;
    :cond_12
    :goto_6
    return-void

    .line 765
    :cond_13
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "An image dictionary shall not contain opi key"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 762
    :cond_14
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "An image dictionary shall not contain alternates key"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public checkInlineImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 6
    .param p1, "inlineImage"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p2, "currentColorSpaces"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 163
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 164
    .local v0, "filter":Lcom/itextpdf/kernel/pdf/PdfObject;
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Crypt filter is not permitted inline image"

    const-string v3, "LZWDecode filter is not permitted"

    if-eqz v1, :cond_2

    .line 165
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->LZWDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_1
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v1, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_2
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v1, :cond_5

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object v4, v0

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 172
    move-object v4, v0

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v4, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    .line 173
    .local v4, "f":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->LZWDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 175
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 171
    .end local v4    # "f":Lcom/itextpdf/kernel/pdf/PdfName;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .restart local v4    # "f":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_3
    new-instance v3, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v3, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    :cond_4
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    .end local v1    # "i":I
    .end local v4    # "f":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 182
    return-void
.end method

.method protected checkNonSymbolicTrueTypeFont(Lcom/itextpdf/kernel/font/PdfTrueTypeFont;)V
    .locals 3
    .param p1, "trueTypeFont"    # Lcom/itextpdf/kernel/font/PdfTrueTypeFont;

    .line 361
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->getBaseEncoding()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "encoding":Ljava/lang/String;
    const-string v1, "Cp1252"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MacRoman"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "All non-symbolic TrueType fonts shall specify MacRomanEncoding or WinAnsiEncoding as the value of the Encoding entry in the font dictionary "

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v1

    .line 368
    :cond_1
    :goto_0
    return-void
.end method

.method protected checkOutputIntents(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 7
    .param p1, "catalog"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 688
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OutputIntents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 689
    .local v0, "outputIntents":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_0

    .line 690
    return-void

    .line 693
    :cond_0
    const/4 v1, 0x0

    .line 694
    .local v1, "destOutputProfile":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-nez v1, :cond_1

    .line 695
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->DestOutputProfile:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 694
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 697
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 698
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->DestOutputProfile:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 699
    .local v3, "otherDestOutputProfile":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v3, :cond_3

    if-ne v1, v3, :cond_2

    goto :goto_2

    .line 700
    :cond_2
    new-instance v4, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v5, "If outputintents array has more than one entry with destoutputprofile key the same indirect object shall be used as the value of that object"

    invoke-direct {v4, v5}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 697
    .end local v3    # "otherDestOutputProfile":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 704
    :cond_4
    if-eqz v1, :cond_8

    .line 705
    move-object v3, v1

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/io/colors/IccProfile;->getIccDeviceClass([B)Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, "deviceClass":Ljava/lang/String;
    const-string/jumbo v4, "prtr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "mntr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    .line 707
    :cond_5
    new-instance v4, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v5, "Profile stream of outputintent shall be output profile (prtr) or monitor profile (mntr)"

    invoke-direct {v4, v5}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 710
    :cond_6
    :goto_3
    move-object v4, v1

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/io/colors/IccProfile;->getIccColorSpaceName([B)Ljava/lang/String;

    move-result-object v4

    .line 711
    .local v4, "cs":Ljava/lang/String;
    const-string v5, "RGB "

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "CMYK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "GRAY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 712
    :cond_7
    new-instance v5, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v6, "Output intent color space shall be either gray rgb or cmyk"

    invoke-direct {v5, v6}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 715
    .end local v3    # "deviceClass":Ljava/lang/String;
    .end local v4    # "cs":Ljava/lang/String;
    :cond_8
    :goto_4
    return-void
.end method

.method protected checkPageObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 5
    .param p1, "pageDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "pageResources"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 655
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 659
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PresSteps:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 663
    invoke-static {p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->isContainsTransparencyGroup(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Group:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 665
    .local v0, "cs":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v0, :cond_0

    .line 666
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 667
    .local v1, "currentColorSpaces":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 670
    .end local v0    # "cs":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v1    # "currentColorSpaces":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_0
    return-void

    .line 660
    :cond_1
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "The page dictionary shall not contain pressteps entry"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_2
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "The page dictionary shall not contain aa entry"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkPageSize(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 10
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 579
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->MediaBox:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CropBox:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TrimBox:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ArtBox:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BleedBox:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 580
    .local v0, "boxNames":[Lcom/itextpdf/kernel/pdf/PdfName;
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 581
    .local v3, "boxName":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsRectangle(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 582
    .local v4, "box":Lcom/itextpdf/kernel/geom/Rectangle;
    if-eqz v4, :cond_1

    .line 583
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    .line 584
    .local v5, "width":F
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    .line 585
    .local v6, "height":F
    const/high16 v7, 0x40400000    # 3.0f

    cmpg-float v8, v5, v7

    if-ltz v8, :cond_0

    const/high16 v8, 0x46610000    # 14400.0f

    cmpl-float v9, v5, v8

    if-gtz v9, :cond_0

    cmpg-float v7, v6, v7

    if-ltz v7, :cond_0

    cmpl-float v7, v6, v8

    if-gtz v7, :cond_0

    goto :goto_1

    .line 586
    :cond_0
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "The page is less than 3 units or greater than 14400 in either direction"

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 580
    .end local v3    # "boxName":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v4    # "box":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v5    # "width":F
    .end local v6    # "height":F
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 589
    :cond_2
    return-void
.end method

.method protected checkPageTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2
    .param p1, "pageDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "pageResources"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 674
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    .line 675
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Group:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 676
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Group:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_2

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->transparencyObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 680
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkContentsForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 681
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Annots:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkAnnotationsForTransparency(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 682
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p2, v0}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkResourcesForTransparency(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    goto :goto_0

    .line 678
    :cond_1
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "If the document does not contain a OutputIntent, then page with transparency shall include the dictionary with Group key that include a CS with blending colour space"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_2
    :goto_0
    return-void
.end method

.method protected checkPdfArray(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 0
    .param p1, "array"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 382
    return-void
.end method

.method protected checkPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0
    .param p1, "dictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 387
    return-void
.end method

.method protected checkPdfStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 9
    .param p1, "stream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 615
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 617
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FFilter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FDecodeParams:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 621
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 622
    .local v0, "filter":Lcom/itextpdf/kernel/pdf/PdfObject;
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Not identity crypt filter is not permitted"

    const-string v3, "LZWDecode filter is not permitted"

    if-eqz v1, :cond_3

    .line 623
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->LZWDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 625
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 626
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 627
    .local v1, "decodeParams":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_1

    .line 628
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Name:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    .line 629
    .local v3, "cryptFilterName":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v3, :cond_1

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Identity:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 630
    :cond_0
    new-instance v4, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v4, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 633
    .end local v1    # "decodeParams":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v3    # "cryptFilterName":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_1
    :goto_0
    goto :goto_3

    .line 624
    :cond_2
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v1, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :cond_3
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v1, :cond_7

    .line 635
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    move-object v4, v0

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 636
    move-object v4, v0

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v4, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    .line 637
    .local v4, "f":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->LZWDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 639
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 640
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    .line 641
    .local v5, "decodeParams":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 642
    invoke-virtual {v5, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v6

    .line 643
    .local v6, "decodeParam":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Name:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v7

    .line 644
    .local v7, "cryptFilterName":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v7, :cond_5

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Identity:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    .line 645
    :cond_4
    new-instance v3, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v3, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 635
    .end local v4    # "f":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v5    # "decodeParams":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v6    # "decodeParam":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v7    # "cryptFilterName":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 638
    .restart local v4    # "f":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_6
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 651
    .end local v1    # "i":I
    .end local v4    # "f":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_7
    :goto_3
    return-void

    .line 618
    .end local v0    # "filter":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_8
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "Stream object dictionary shall not contain the f ffilter or fdecodeparams keys"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getAllowedNamedActions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation

    .line 724
    sget-object v0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->allowedNamedActions:Ljava/util/Set;

    return-object v0
.end method

.method protected getForbiddenActions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation

    .line 719
    sget-object v0, Lcom/itextpdf/pdfa/checker/PdfA2Checker;->forbiddenActions:Ljava/util/Set;

    return-object v0
.end method

.method protected getMaxRealValue()D
    .locals 2

    .line 372
    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    return-wide v0
.end method

.method protected getMaxStringLength()I
    .locals 1

    .line 377
    const/16 v0, 0x7fff

    return v0
.end method
