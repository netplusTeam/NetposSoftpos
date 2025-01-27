.class public Lcom/itextpdf/forms/fields/PdfTextFormField;
.super Lcom/itextpdf/forms/fields/PdfFormField;
.source "PdfTextFormField.java"


# static fields
.field public static final FF_COMB:I

.field public static final FF_DO_NOT_SCROLL:I

.field public static final FF_DO_NOT_SPELL_CHECK:I

.field public static final FF_FILE_SELECT:I

.field public static final FF_RICH_TEXT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_FILE_SELECT:I

    .line 58
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_DO_NOT_SPELL_CHECK:I

    .line 59
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_DO_NOT_SCROLL:I

    .line 60
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_COMB:I

    .line 61
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_RICH_TEXT:I

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 72
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 73
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0
    .param p1, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 64
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 65
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0
    .param p1, "widget"    # Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    .param p2, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 69
    return-void
.end method


# virtual methods
.method public getFormType()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 82
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Tx:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getMaxLen()I
    .locals 3

    .line 209
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->MaxLen:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 210
    .local v0, "maxLenEntry":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    return v1

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 215
    .local v1, "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_1

    .line 216
    new-instance v2, Lcom/itextpdf/forms/fields/PdfTextFormField;

    invoke-direct {v2, v1}, Lcom/itextpdf/forms/fields/PdfTextFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getMaxLen()I

    move-result v2

    return v2

    .line 218
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isComb()Z
    .locals 1

    .line 169
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_COMB:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isFileSelect()Z
    .locals 1

    .line 110
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_FILE_SELECT:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isRichText()Z
    .locals 1

    .line 190
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_RICH_TEXT:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isScroll()Z
    .locals 1

    .line 147
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_DO_NOT_SCROLL:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getFieldFlag(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSpellCheck()Z
    .locals 1

    .line 128
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_DO_NOT_SPELL_CHECK:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getFieldFlag(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setComb(Z)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1
    .param p1, "comb"    # Z

    .line 181
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_COMB:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/fields/PdfTextFormField;

    return-object v0
.end method

.method public setFileSelect(Z)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1
    .param p1, "fileSelect"    # Z

    .line 120
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_FILE_SELECT:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/fields/PdfTextFormField;

    return-object v0
.end method

.method public setMaxLen(I)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 2
    .param p1, "maxLen"    # I

    .line 229
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->MaxLen:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 230
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_COMB:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getFieldFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->regenerateField()Z

    .line 232
    :cond_0
    return-object p0
.end method

.method public setMultiline(Z)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1
    .param p1, "multiline"    # Z

    .line 91
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_MULTILINE:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/fields/PdfTextFormField;

    return-object v0
.end method

.method public setPassword(Z)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1
    .param p1, "password"    # Z

    .line 101
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_PASSWORD:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/fields/PdfTextFormField;

    return-object v0
.end method

.method public setRichText(Z)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1
    .param p1, "richText"    # Z

    .line 200
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_RICH_TEXT:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/fields/PdfTextFormField;

    return-object v0
.end method

.method public setScroll(Z)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 2
    .param p1, "scroll"    # Z

    .line 158
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_DO_NOT_SCROLL:I

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/fields/PdfTextFormField;

    return-object v0
.end method

.method public setSpellCheck(Z)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 2
    .param p1, "spellCheck"    # Z

    .line 137
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_DO_NOT_SPELL_CHECK:I

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/fields/PdfTextFormField;

    return-object v0
.end method
