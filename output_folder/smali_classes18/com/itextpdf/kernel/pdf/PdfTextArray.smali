.class public Lcom/itextpdf/kernel/pdf/PdfTextArray;
.super Lcom/itextpdf/kernel/pdf/PdfArray;
.source "PdfTextArray.java"


# static fields
.field private static final serialVersionUID:J = 0x23776de31d25e280L


# instance fields
.field private lastNumber:F

.field private lastString:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 65
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfTextArray;->lastNumber:F

    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 70
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfTextArray;->add(F)Z

    goto :goto_0

    .line 72
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfString;

    if-eqz v0, :cond_1

    .line 73
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfTextArray;->add([B)Z

    .line 75
    :cond_1
    :goto_0
    return-void
.end method

.method public add(F)Z
    .locals 5
    .param p1, "number"    # F

    .line 104
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_2

    .line 105
    iget v1, p0, Lcom/itextpdf/kernel/pdf/PdfTextArray;->lastNumber:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 106
    iget v1, p0, Lcom/itextpdf/kernel/pdf/PdfTextArray;->lastNumber:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfTextArray;->lastNumber:F

    .line 107
    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfTextArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget v3, p0, Lcom/itextpdf/kernel/pdf/PdfTextArray;->lastNumber:F

    float-to-double v3, v3

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfTextArray;->set(ILcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfTextArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfTextArray;->remove(I)V

    goto :goto_0

    .line 113
    :cond_1
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfTextArray;->lastNumber:F

    .line 114
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget v1, p0, Lcom/itextpdf/kernel/pdf/PdfTextArray;->lastNumber:F

    float-to-double v3, v1

    invoke-direct {v0, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-super {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 116
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfTextArray;->lastString:Ljava/lang/StringBuilder;

    .line 117
    return v2

    .line 119
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected add(Ljava/lang/String;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfTextArray;->lastString:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfTextArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfTextArray;->lastString:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfTextArray;->set(ILcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfTextArray;->lastString:Ljava/lang/StringBuilder;

    .line 138
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfTextArray;->lastString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 140
    :goto_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfTextArray;->lastNumber:F

    .line 141
    return v1

    .line 143
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public add(Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 124
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/font/PdfFont;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfTextArray;->add([B)Z

    move-result v0

    return v0
.end method

.method public add([B)Z
    .locals 1
    .param p1, "text"    # [B

    .line 128
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([B)V

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfTextArray;->add(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addAll(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 1
    .param p1, "a"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/PdfArray;->list:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfTextArray;->addAll(Ljava/util/Collection;)V

    .line 87
    :cond_0
    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 98
    .local v1, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfTextArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 99
    .end local v1    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method
