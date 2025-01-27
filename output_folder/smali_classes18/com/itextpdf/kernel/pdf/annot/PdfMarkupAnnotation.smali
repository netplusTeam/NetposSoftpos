.class public abstract Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
.super Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
.source "PdfMarkupAnnotation.java"


# static fields
.field private static final serialVersionUID:J = 0x3521825522cb78aL


# instance fields
.field protected inReplyTo:Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

.field protected popup:Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 1
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 71
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->inReplyTo:Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 68
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->popup:Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    .line 72
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 82
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->inReplyTo:Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 68
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->popup:Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    .line 83
    return-void
.end method


# virtual methods
.method public getCreationDate()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CreationDate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public getExternalData()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 332
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ExData:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getInReplyTo()Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->inReplyTo:Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getInReplyToObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->inReplyTo:Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->inReplyTo:Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    return-object v0
.end method

.method public getInReplyToObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 175
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->IRT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2

    .line 300
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->IT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public getOpacity()Lcom/itextpdf/kernel/pdf/PdfNumber;
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    return-object v0
.end method

.method public getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->popup:Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    if-nez v0, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPopupObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 238
    .local v0, "popupObject":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_1

    .line 239
    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v1

    .line 240
    .local v1, "annotation":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    instance-of v2, v1, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    if-nez v2, :cond_0

    .line 241
    const-class v2, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 242
    .local v2, "logger":Lorg/slf4j/Logger;
    const-string v3, "Popup entry in the markup annotations refers not to the annotation with Popup subtype."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 243
    const/4 v3, 0x0

    return-object v3

    .line 245
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :cond_0
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->popup:Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    .line 248
    .end local v0    # "popupObject":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v1    # "annotation":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->popup:Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    return-object v0
.end method

.method public getPopupObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 225
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Popup:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getReplyType()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2

    .line 281
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->RT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public getRichText()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->RC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 256
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subj:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public getText()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public setCreationDate(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1
    .param p1, "creationDate"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 164
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CreationDate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object v0
.end method

.method public setExternalData(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1
    .param p1, "exData"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 368
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ExData:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object v0
.end method

.method public setExternalData(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1
    .param p1, "exData"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ExData:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object v0
.end method

.method public setInReplyTo(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 2
    .param p1, "inReplyTo"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 201
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->inReplyTo:Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 202
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->IRT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object v0
.end method

.method public setIntent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1
    .param p1, "intent"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 316
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->IT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object v0
.end method

.method public setOpacity(Lcom/itextpdf/kernel/pdf/PdfNumber;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1
    .param p1, "ca"    # Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 126
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object v0
.end method

.method public setPopup(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 2
    .param p1, "popup"    # Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    .line 214
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->popup:Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    .line 215
    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;->setParent(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    .line 216
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Popup:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object v0
.end method

.method public setReplyType(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1
    .param p1, "replyType"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 291
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->RT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object v0
.end method

.method public setRichText(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1
    .param p1, "richText"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 146
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->RC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object v0
.end method

.method public setSubject(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1
    .param p1, "subject"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 265
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Subj:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object v0
.end method

.method public setText(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1
    .param p1, "text"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 102
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object v0
.end method
