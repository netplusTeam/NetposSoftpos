.class public Lcom/itextpdf/kernel/pdf/tagutils/TagReference;
.super Ljava/lang/Object;
.source "TagReference.java"


# instance fields
.field protected insertIndex:I

.field protected properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

.field protected referencedTag:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

.field protected role:Lcom/itextpdf/kernel/pdf/PdfName;

.field protected tagPointer:Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;I)V
    .locals 1
    .param p1, "referencedTag"    # Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .param p2, "tagPointer"    # Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .param p3, "insertIndex"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->role:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 61
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->referencedTag:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 62
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->tagPointer:Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 63
    iput p3, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->insertIndex:I

    .line 64
    return-void
.end method


# virtual methods
.method public addProperty(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/tagutils/TagReference;
    .locals 1
    .param p1, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "value"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 75
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 80
    return-object p0
.end method

.method public createNextMcid()I
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->tagPointer:Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->referencedTag:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    iget v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->insertIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->createNextMcidForStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;I)I

    move-result v0

    return v0
.end method

.method public getProperties()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    return-object v0
.end method

.method public getProperty(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1
    .param p1, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 91
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_0
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getRole()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->role:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public removeProperty(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/tagutils/TagReference;
    .locals 1
    .param p1, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 84
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 87
    :cond_0
    return-object p0
.end method
