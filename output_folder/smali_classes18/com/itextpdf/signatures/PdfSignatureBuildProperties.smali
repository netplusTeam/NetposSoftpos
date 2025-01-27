.class public Lcom/itextpdf/signatures/PdfSignatureBuildProperties;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfSignatureBuildProperties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0
    .param p1, "dict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 70
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 71
    return-void
.end method

.method private getPdfSignatureAppProperty()Lcom/itextpdf/signatures/PdfSignatureApp;
    .locals 3

    .line 91
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfSignatureBuildProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->App:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 93
    .local v0, "appPropDic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 94
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v0, v1

    .line 95
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfSignatureBuildProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->App:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 98
    :cond_0
    new-instance v1, Lcom/itextpdf/signatures/PdfSignatureApp;

    invoke-direct {v1, v0}, Lcom/itextpdf/signatures/PdfSignatureApp;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v1
.end method


# virtual methods
.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public setSignatureCreator(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Lcom/itextpdf/signatures/PdfSignatureBuildProperties;->getPdfSignatureAppProperty()Lcom/itextpdf/signatures/PdfSignatureApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/signatures/PdfSignatureApp;->setSignatureCreator(Ljava/lang/String;)V

    .line 81
    return-void
.end method
