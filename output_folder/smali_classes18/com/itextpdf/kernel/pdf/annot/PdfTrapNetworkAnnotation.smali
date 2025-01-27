.class public Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;
.super Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
.source "PdfTrapNetworkAnnotation.java"


# static fields
.field private static final serialVersionUID:J = 0x470a00f801192178L


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V
    .locals 2
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "appearanceStream"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 84
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 85
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getProcessColorModel()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;->setNormalAppearance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 89
    const/16 v0, 0x44

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;->setFlags(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 90
    return-void

    .line 86
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Process color model must be set in appearance stream for Trap Network annotation!"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 102
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 103
    return-void
.end method


# virtual methods
.method public getAnnotStates()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AnnotStates:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getFauxedFonts()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontFauxing:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->LastModified:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 110
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->TrapNet:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getVersion()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Version:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public setAnnotStates(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;
    .locals 1
    .param p1, "annotStates"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 181
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AnnotStates:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;

    return-object v0
.end method

.method public setFauxedFonts(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;
    .locals 1
    .param p1, "fauxedFonts"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 202
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FontFauxing:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;

    return-object v0
.end method

.method public setFauxedFonts(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/font/PdfFont;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;"
        }
    .end annotation

    .line 213
    .local p1, "fauxedFonts":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/font/PdfFont;>;"
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 214
    .local v0, "arr":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/font/PdfFont;

    .line 215
    .local v2, "f":Lcom/itextpdf/kernel/font/PdfFont;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .end local v2    # "f":Lcom/itextpdf/kernel/font/PdfFont;
    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;->setFauxedFonts(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;

    move-result-object v1

    return-object v1
.end method

.method public setLastModified(Lcom/itextpdf/kernel/pdf/PdfDate;)Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;
    .locals 2
    .param p1, "lastModified"    # Lcom/itextpdf/kernel/pdf/PdfDate;

    .line 123
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->LastModified:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDate;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;

    return-object v0
.end method

.method public setVersion(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;
    .locals 1
    .param p1, "version"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 154
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Version:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;

    return-object v0
.end method
