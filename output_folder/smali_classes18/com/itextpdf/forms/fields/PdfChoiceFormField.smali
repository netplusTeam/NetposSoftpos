.class public Lcom/itextpdf/forms/fields/PdfChoiceFormField;
.super Lcom/itextpdf/forms/fields/PdfFormField;
.source "PdfChoiceFormField.java"


# static fields
.field public static final FF_COMBO:I

.field public static final FF_COMMIT_ON_SEL_CHANGE:I

.field public static final FF_DO_NOT_SPELL_CHECK:I

.field public static final FF_EDIT:I

.field public static final FF_MULTI_SELECT:I

.field public static final FF_SORT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    .line 73
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_EDIT:I

    .line 74
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_SORT:I

    .line 75
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_MULTI_SELECT:I

    .line 76
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_DO_NOT_SPELL_CHECK:I

    .line 77
    const/16 v0, 0x1b

    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMMIT_ON_SEL_CHANGE:I

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 88
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 89
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0
    .param p1, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 80
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 81
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0
    .param p1, "widget"    # Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    .param p2, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 85
    return-void
.end method

.method private optionsToUnicodeNames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getOptions()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 354
    .local v0, "options":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 355
    .local v1, "optionsToUnicodeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 356
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 357
    .local v3, "option":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v4, 0x0

    .line 358
    .local v4, "value":Lcom/itextpdf/kernel/pdf/PdfString;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 359
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfString;

    goto :goto_1

    .line 360
    :cond_0
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 361
    move-object v5, v3

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfString;

    .line 363
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v3    # "option":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "value":Lcom/itextpdf/kernel/pdf/PdfString;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    .end local v2    # "index":I
    :cond_3
    return-object v1
.end method


# virtual methods
.method public getFormType()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 98
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Ch:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getIndices()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->I:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getTopIndex()Lcom/itextpdf/kernel/pdf/PdfNumber;
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    return-object v0
.end method

.method public isCombo()Z
    .locals 1

    .line 257
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isCommitOnSelChange()Z
    .locals 1

    .line 349
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMMIT_ON_SEL_CHANGE:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isEdit()Z
    .locals 1

    .line 278
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_EDIT:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isMultiSelect()Z
    .locals 1

    .line 315
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_MULTI_SELECT:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isSort()Z
    .locals 1

    .line 297
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_SORT:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isSpellCheck()Z
    .locals 1

    .line 332
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_DO_NOT_SPELL_CHECK:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getFieldFlag(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setCombo(Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1
    .param p1, "combo"    # Z

    .line 248
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    return-object v0
.end method

.method public setCommitOnSelChange(Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1
    .param p1, "commitOnSelChange"    # Z

    .line 341
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMMIT_ON_SEL_CHANGE:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    return-object v0
.end method

.method public setEdit(Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1
    .param p1, "edit"    # Z

    .line 268
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_EDIT:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    return-object v0
.end method

.method public setIndices(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1
    .param p1, "indices"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 128
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->I:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    return-object v0
.end method

.method public setListSelected([I)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 10
    .param p1, "optionNumbers"    # [I

    .line 200
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->isMultiSelect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 202
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v2, "Multiple values were set to a field that does not have MultiSelect flag set."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 204
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 205
    .local v0, "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 206
    .local v2, "values":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getOptions()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    .line 207
    .local v3, "options":Lcom/itextpdf/kernel/pdf/PdfArray;
    array-length v4, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget v7, p1, v6

    .line 208
    .local v7, "number":I
    if-ltz v7, :cond_2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 209
    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v8, v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 210
    invoke-virtual {v3, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    .line 211
    .local v8, "option":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 212
    invoke-virtual {v2, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 214
    move-object v9, v8

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v9, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 207
    .end local v7    # "number":I
    .end local v8    # "option":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 219
    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setIndices(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    .line 220
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ne v4, v1, :cond_4

    .line 221
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    goto :goto_2

    .line 223
    :cond_4
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    goto :goto_2

    .line 226
    :cond_5
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->I:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 227
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 229
    :goto_2
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->regenerateField()Z

    .line 230
    return-object p0
.end method

.method public setListSelected([Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1
    .param p1, "optionValues"    # [Ljava/lang/String;

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setListSelected([Ljava/lang/String;Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object v0

    return-object v0
.end method

.method public setListSelected([Ljava/lang/String;Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 12
    .param p1, "optionValues"    # [Ljava/lang/String;
    .param p2, "generateAppearance"    # Z

    .line 149
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->isMultiSelect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 151
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v2, "Multiple values were set to a field that does not have MultiSelect flag set."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 153
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getOptions()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 154
    .local v0, "options":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 155
    .local v2, "indices":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 156
    .local v3, "values":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-direct {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->optionsToUnicodeNames()Ljava/util/List;

    move-result-object v4

    .line 157
    .local v4, "optionsToUnicodeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v5, p1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_6

    aget-object v8, p1, v7

    .line 158
    .local v8, "element":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 159
    goto :goto_2

    .line 161
    :cond_1
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 162
    invoke-interface {v4, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 163
    .local v9, "index":I
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v10, v9}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v10}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 164
    invoke-virtual {v0, v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    .line 165
    .local v10, "optByIndex":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v10

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfString;

    goto :goto_1

    :cond_2
    move-object v11, v10

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v11, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfString;

    :goto_1
    invoke-virtual {v3, v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 166
    .end local v9    # "index":I
    .end local v10    # "optByIndex":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_2

    .line 167
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->isCombo()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->isEdit()Z

    move-result v9

    if-nez v9, :cond_5

    .line 168
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v9

    .line 169
    .local v9, "logger":Lorg/slf4j/Logger;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v6

    .line 171
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v11

    aput-object v11, v10, v1

    .line 170
    const-string v11, "Value \"{0}\" is not contained in /Opt array of field \"{1}\"."

    invoke-static {v11, v10}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 169
    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 173
    .end local v9    # "logger":Lorg/slf4j/Logger;
    :cond_5
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v10, "UnicodeBig"

    invoke-direct {v9, v8, v10}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 157
    .end local v8    # "element":Ljava/lang/String;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 176
    :cond_6
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 177
    invoke-virtual {p0, v2}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setIndices(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    goto :goto_3

    .line 179
    :cond_7
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->I:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v5}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 181
    :goto_3
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v5

    if-ne v5, v1, :cond_8

    .line 182
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    goto :goto_4

    .line 184
    :cond_8
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1, v3}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 187
    :goto_4
    if-eqz p2, :cond_9

    .line 188
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->regenerateField()Z

    .line 190
    :cond_9
    return-object p0
.end method

.method public setMultiSelect(Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1
    .param p1, "multiSelect"    # Z

    .line 307
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_MULTI_SELECT:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    return-object v0
.end method

.method public setSort(Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1
    .param p1, "sort"    # Z

    .line 288
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_SORT:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    return-object v0
.end method

.method public setSpellCheck(Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 2
    .param p1, "spellCheck"    # Z

    .line 324
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_DO_NOT_SPELL_CHECK:I

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    return-object v0
.end method

.method public setTopIndex(I)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 2
    .param p1, "index"    # I

    .line 108
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->TI:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 109
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->regenerateField()Z

    .line 110
    return-object p0
.end method
