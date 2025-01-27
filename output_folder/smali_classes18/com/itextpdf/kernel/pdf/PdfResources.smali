.class public Lcom/itextpdf/kernel/pdf/PdfResources;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field private static final Cs:Ljava/lang/String; = "Cs"

.field private static final F:Ljava/lang/String; = "F"

.field private static final Fm:Ljava/lang/String; = "Fm"

.field private static final Gs:Ljava/lang/String; = "Gs"

.field private static final Im:Ljava/lang/String; = "Im"

.field private static final P:Ljava/lang/String; = "P"

.field private static final Pr:Ljava/lang/String; = "Pr"

.field private static final Sh:Ljava/lang/String; = "Sh"

.field private static final serialVersionUID:J = 0x635e8fb38996c7afL


# instance fields
.field private csNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

.field private egsNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

.field private fontNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

.field private formNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

.field private imageNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

.field private isModified:Z

.field private patternNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

.field private propNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

.field private readOnly:Z

.field private resourceToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field private shadingNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 99
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->resourceToName:Ljava/util/Map;

    .line 81
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "F"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->fontNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    .line 82
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Im"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->imageNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    .line 83
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Fm"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->formNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    .line 84
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ExtGState:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Gs"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->egsNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    .line 85
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Properties:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Pr"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->propNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    .line 86
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Cs"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->csNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    .line 87
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Pattern:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "P"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->patternNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    .line 88
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Shading:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Sh"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->shadingNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->readOnly:Z

    .line 91
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->isModified:Z

    .line 100
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->buildResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 101
    return-void
.end method

.method private checkAndResolveCircularReferences(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 5
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 541
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 543
    .local v0, "pdfXObject":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 544
    .local v1, "pdfXObjectResources":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 545
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 547
    .local v2, "cloneResources":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 548
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 552
    .end local v0    # "pdfXObject":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v1    # "pdfXObjectResources":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v2    # "cloneResources":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_0
    return-void
.end method


# virtual methods
.method public addColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1
    .param p1, "colorSpace"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 245
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->csNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public addColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1
    .param p1, "cs"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    .line 235
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->csNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public addExtGState(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1
    .param p1, "extGState"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 206
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->egsNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public addExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1
    .param p1, "extGState"    # Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    .line 196
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->egsNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public addFont(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1
    .param p1, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 118
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/font/PdfFont;

    .line 119
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->fontNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public addForm(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1
    .param p1, "form"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 164
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->formNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1
    .param p1, "form"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 154
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->formNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2
    .param p1, "form"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p2, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 175
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResourceNames(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->formNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p2

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, v1, p2}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 181
    :goto_0
    return-object p2
.end method

.method public addImage(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1
    .param p1, "image"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 139
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->imageNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public addImage(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1
    .param p1, "image"    # Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    .line 129
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->imageNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public addPattern(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1
    .param p1, "pattern"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 270
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->patternNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public addPattern(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1
    .param p1, "pattern"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    .line 260
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->patternNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public addProperties(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1
    .param p1, "properties"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 221
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->propNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2
    .param p1, "resource"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "nameGen"    # Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    .line 504
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResourceName(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 506
    .local v0, "resName":Lcom/itextpdf/kernel/pdf/PdfName;
    if-nez v0, :cond_0

    .line 507
    invoke-virtual {p2, p0}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;->generate(Lcom/itextpdf/kernel/pdf/PdfResources;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 508
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;->getResourceType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 511
    :cond_0
    return-object v0
.end method

.method addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1
    .param p2, "nameGen"    # Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">(",
            "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
            "TT;>;",
            "Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;",
            ")",
            "Lcom/itextpdf/kernel/pdf/PdfName;"
        }
    .end annotation

    .line 476
    .local p1, "resource":Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;, "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<TT;>;"
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method protected addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 3
    .param p1, "resource"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "resType"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p3, "resName"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 480
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->checkAndResolveCircularReferences(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 483
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->readOnly:Z

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clone(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->setPdfObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 485
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->buildResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->isModified:Z

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->readOnly:Z

    .line 489
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    return-void

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->resourceToName:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 494
    .local v0, "resourceCategory":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v0, :cond_3

    .line 495
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v0, v2

    invoke-virtual {v1, p2, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 497
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 499
    :goto_0
    invoke-virtual {v0, p3, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 500
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 501
    return-void
.end method

.method public addShading(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1
    .param p1, "shading"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 295
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->shadingNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public addShading(Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1
    .param p1, "shading"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;

    .line 285
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->shadingNamesGen:Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfResources$ResourceNameGenerator;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method protected buildResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 7
    .param p1, "dictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 515
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 516
    .local v1, "resourceType":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    if-nez v2, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 520
    :cond_0
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 522
    .local v2, "resources":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v2, :cond_1

    .line 523
    goto :goto_0

    .line 526
    :cond_1
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 527
    .local v4, "resourceName":Lcom/itextpdf/kernel/pdf/PdfName;
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    .line 528
    .local v5, "resource":Lcom/itextpdf/kernel/pdf/PdfObject;
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->resourceToName:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .end local v4    # "resourceName":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v5    # "resource":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_1

    .line 530
    .end local v1    # "resourceType":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v2    # "resources":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_2
    goto :goto_0

    .line 531
    :cond_3
    return-void
.end method

.method public getColorSpace(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .locals 2
    .param p1, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 249
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResourceObject(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 250
    .local v0, "colorSpace":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getForm(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 3
    .param p1, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 185
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResource(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    .line 186
    .local v0, "form":Lcom/itextpdf/kernel/pdf/PdfStream;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Form:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getImage(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .locals 3
    .param p1, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 143
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResource(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    .line 144
    .local v0, "image":Lcom/itextpdf/kernel/pdf/PdfStream;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Image:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getPattern(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;
    .locals 2
    .param p1, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 274
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Pattern:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResourceObject(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 275
    .local v0, "pattern":Lcom/itextpdf/kernel/pdf/PdfObject;
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;->getPatternInstance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getPdfExtGState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;
    .locals 2
    .param p1, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 210
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ExtGState:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResource(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 211
    .local v0, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_0

    new-instance v1, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getProcSet()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 415
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ProcSet:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getProperties(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1
    .param p1, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 225
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Properties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResourceObject(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getResource(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1
    .param p1, "resType"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 450
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getResourceName(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 3
    .param p1, "resource"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 389
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->resourceToName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 390
    .local v0, "resName":Lcom/itextpdf/kernel/pdf/PdfName;
    if-nez v0, :cond_0

    .line 391
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->resourceToName:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 392
    :cond_0
    return-object v0
.end method

.method public getResourceName(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">(",
            "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
            "TT;>;)",
            "Lcom/itextpdf/kernel/pdf/PdfName;"
        }
    .end annotation

    .line 376
    .local p1, "resource":Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;, "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<TT;>;"
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResourceName(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public getResourceNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 402
    .local v0, "names":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 403
    .local v2, "resType":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResourceNames(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 404
    .end local v2    # "resType":Lcom/itextpdf/kernel/pdf/PdfName;
    goto :goto_0

    .line 405
    :cond_0
    return-object v0
.end method

.method public getResourceNames(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/util/Set;
    .locals 2
    .param p1, "resType"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ")",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation

    .line 437
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 438
    .local v0, "resourceCategory":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getResourceObject(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2
    .param p1, "resType"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "resName"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 463
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResource(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 464
    .local v0, "resource":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    return-object v1

    .line 467
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getShading(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;
    .locals 2
    .param p1, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 299
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Shading:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResourceObject(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 300
    .local v0, "shading":Lcom/itextpdf/kernel/pdf/PdfObject;
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;->makeShading(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected isModified()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->isModified:Z

    return v0
.end method

.method protected isReadOnly()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->readOnly:Z

    return v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultCmyk(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)V
    .locals 3
    .param p1, "defaultCs"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    .line 362
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DefaultCMYK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 363
    return-void
.end method

.method public setDefaultGray(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)V
    .locals 3
    .param p1, "defaultCs"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    .line 344
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DefaultGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 345
    return-void
.end method

.method public setDefaultRgb(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)V
    .locals 3
    .param p1, "defaultCs"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    .line 353
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DefaultRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources;->addResource(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 354
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

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->isModified:Z

    .line 335
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method protected setModified(Z)V
    .locals 0
    .param p1, "isModified"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->isModified:Z

    .line 327
    return-void
.end method

.method public setProcSet(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 2
    .param p1, "array"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 425
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ProcSet:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 426
    return-void
.end method

.method protected setReadOnly(Z)V
    .locals 0
    .param p1, "readOnly"    # Z

    .line 308
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfResources;->readOnly:Z

    .line 309
    return-void
.end method
