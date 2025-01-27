.class public Lcom/itextpdf/forms/PdfPageFormCopier;
.super Ljava/lang/Object;
.source "PdfPageFormCopier.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;


# static fields
.field private static logger:Lorg/slf4j/Logger;


# instance fields
.field private documentFrom:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private documentTo:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private formFrom:Lcom/itextpdf/forms/PdfAcroForm;

.field private formTo:Lcom/itextpdf/forms/PdfAcroForm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const-class v0, Lcom/itextpdf/forms/PdfPageFormCopier;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/forms/PdfPageFormCopier;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addChildToExistingParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V
    .locals 5
    .param p1, "fieldDic"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 287
    .local p2, "existingFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 288
    .local v0, "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 289
    return-void

    .line 292
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    .line 293
    .local v1, "parentName":Lcom/itextpdf/kernel/pdf/PdfString;
    if-eqz v1, :cond_2

    .line 294
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "name":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    .line 297
    .local v3, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v3, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 298
    .end local v3    # "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    goto :goto_0

    .line 299
    :cond_1
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 300
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/forms/PdfPageFormCopier;->addChildToExistingParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    .line 303
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method private addChildToExistingParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Ljava/util/Map;)V
    .locals 10
    .param p1, "fieldDic"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;)V"
        }
    .end annotation

    .line 307
    .local p2, "existingFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "fieldsTo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;>;"
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 308
    .local v0, "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 309
    return-void

    .line 312
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    .line 313
    .local v1, "parentName":Lcom/itextpdf/kernel/pdf/PdfString;
    if-eqz v1, :cond_6

    .line 314
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "name":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 316
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    .line 317
    .local v3, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 318
    .local v5, "kid":Lcom/itextpdf/kernel/pdf/PdfObject;
    move-object v6, v5

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 319
    invoke-direct {p0, v5}, Lcom/itextpdf/forms/PdfPageFormCopier;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v6

    .line 320
    .local v6, "kidField":Lcom/itextpdf/forms/fields/PdfFormField;
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/PdfPageFormCopier;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v7

    .line 321
    .local v7, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    if-eqz v6, :cond_1

    if-nez v7, :cond_2

    .line 322
    goto :goto_0

    .line 324
    :cond_2
    invoke-virtual {v6}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-direct {p0, v7}, Lcom/itextpdf/forms/PdfPageFormCopier;->mergeFieldsWithTheSameName(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v4

    .line 326
    .local v4, "mergedField":Lcom/itextpdf/forms/fields/PdfFormField;
    iget-object v8, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v8}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v4}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    return-void

    .line 329
    .end local v4    # "mergedField":Lcom/itextpdf/forms/fields/PdfFormField;
    .end local v5    # "kid":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v6    # "kidField":Lcom/itextpdf/forms/fields/PdfFormField;
    .end local v7    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    :cond_3
    goto :goto_0

    .line 330
    :cond_4
    invoke-virtual {v3, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 331
    .end local v3    # "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    goto :goto_1

    .line 332
    :cond_5
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 333
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/forms/PdfPageFormCopier;->addChildToExistingParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    .line 336
    .end local v2    # "name":Ljava/lang/String;
    :cond_6
    :goto_1
    return-void
.end method

.method private copyField(Lcom/itextpdf/kernel/pdf/PdfPage;Ljava/util/Map;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)V
    .locals 5
    .param p1, "toPage"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p4, "currentAnnot"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;",
            ")V"
        }
    .end annotation

    .line 134
    .local p2, "fieldsFrom":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .local p3, "fieldsTo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;>;"
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 135
    .local v0, "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_2

    .line 136
    iget-object v1, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentTo:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v0, v1}, Lcom/itextpdf/forms/PdfPageFormCopier;->getParentField(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    .line 137
    .local v1, "parentField":Lcom/itextpdf/forms/fields/PdfFormField;
    if-nez v1, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    .line 141
    .local v2, "parentName":Lcom/itextpdf/kernel/pdf/PdfString;
    if-nez v2, :cond_1

    .line 142
    return-void

    .line 144
    :cond_1
    invoke-direct {p0, p1, p3, p4, v1}, Lcom/itextpdf/forms/PdfPageFormCopier;->copyParentFormField(Lcom/itextpdf/kernel/pdf/PdfPage;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/fields/PdfFormField;)V

    .line 145
    .end local v1    # "parentField":Lcom/itextpdf/forms/fields/PdfFormField;
    .end local v2    # "parentName":Lcom/itextpdf/kernel/pdf/PdfString;
    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    .line 147
    .local v1, "annotName":Lcom/itextpdf/kernel/pdf/PdfString;
    const/4 v2, 0x0

    .line 148
    .local v2, "annotNameString":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 149
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v2

    .line 151
    :cond_3
    if-eqz v2, :cond_6

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 152
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/forms/PdfPageFormCopier;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v3

    .line 153
    .local v3, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    if-nez v3, :cond_4

    .line 154
    return-void

    .line 156
    :cond_4
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 157
    invoke-direct {p0, v3}, Lcom/itextpdf/forms/PdfPageFormCopier;->mergeFieldsWithTheSameName(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v3

    .line 160
    :cond_5
    iget-object v4, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v4, v3, p1}, Lcom/itextpdf/forms/PdfAcroForm;->addField(Lcom/itextpdf/forms/fields/PdfFormField;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 161
    invoke-virtual {v3}, Lcom/itextpdf/forms/fields/PdfFormField;->updateDefaultAppearance()V

    .line 164
    .end local v1    # "annotName":Lcom/itextpdf/kernel/pdf/PdfString;
    .end local v2    # "annotNameString":Ljava/lang/String;
    .end local v3    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    :cond_6
    :goto_0
    return-void
.end method

.method private copyParentFormField(Lcom/itextpdf/kernel/pdf/PdfPage;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/fields/PdfFormField;)V
    .locals 7
    .param p1, "toPage"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p3, "annot"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .param p4, "parentField"    # Lcom/itextpdf/forms/fields/PdfFormField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ")V"
        }
    .end annotation

    .line 168
    .local p2, "fieldsTo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;>;"
    invoke-virtual {p4}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    .line 169
    .local v0, "parentName":Lcom/itextpdf/kernel/pdf/PdfString;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-object v2, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentTo:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/forms/PdfPageFormCopier;->createParentFieldCopy(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    .line 171
    .local v1, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 172
    .local v2, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 173
    iget-object v3, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v3, v1, p1}, Lcom/itextpdf/forms/PdfAcroForm;->addField(Lcom/itextpdf/forms/fields/PdfFormField;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 174
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 175
    .end local v1    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    .end local v2    # "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    goto :goto_1

    .line 176
    :cond_0
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/forms/PdfPageFormCopier;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    .line 177
    .restart local v1    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    if-nez v1, :cond_1

    .line 178
    return-void

    .line 180
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    .line 181
    .local v2, "fieldName":Lcom/itextpdf/kernel/pdf/PdfString;
    if-eqz v2, :cond_3

    .line 182
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/forms/fields/PdfFormField;

    .line 183
    .local v3, "existingField":Lcom/itextpdf/forms/fields/PdfFormField;
    if-eqz v3, :cond_2

    .line 184
    invoke-direct {p0, v1}, Lcom/itextpdf/forms/PdfPageFormCopier;->mergeFieldsWithTheSameName(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v4

    .line 185
    .local v4, "mergedField":Lcom/itextpdf/forms/fields/PdfFormField;
    iget-object v5, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v5}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .end local v4    # "mergedField":Lcom/itextpdf/forms/fields/PdfFormField;
    goto :goto_0

    .line 187
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 188
    .local v4, "existingFields":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v5}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/itextpdf/forms/PdfPageFormCopier;->getAllFieldNames(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Set;)V

    .line 189
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v5, v4, p2}, Lcom/itextpdf/forms/PdfPageFormCopier;->addChildToExistingParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Ljava/util/Map;)V

    .line 192
    .end local v3    # "existingField":Lcom/itextpdf/forms/fields/PdfFormField;
    .end local v4    # "existingFields":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    goto :goto_1

    .line 193
    :cond_3
    invoke-virtual {p4}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->contains(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 194
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 195
    .local v3, "existingFields":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v4}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/itextpdf/forms/PdfPageFormCopier;->getAllFieldNames(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Set;)V

    .line 196
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v4, v3}, Lcom/itextpdf/forms/PdfPageFormCopier;->addChildToExistingParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    .line 200
    .end local v1    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    .end local v2    # "fieldName":Lcom/itextpdf/kernel/pdf/PdfString;
    .end local v3    # "existingFields":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    return-void
.end method

.method private createParentFieldCopy(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 5
    .param p1, "fieldDic"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "pdfDoc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 270
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 271
    .local v0, "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-static {p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    .line 273
    .local v1, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    if-eqz v0, :cond_1

    .line 274
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/forms/PdfPageFormCopier;->createParentFieldCopy(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    .line 275
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 276
    .local v2, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v2, :cond_0

    .line 277
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 283
    .end local v2    # "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_1
    :goto_0
    return-object v1
.end method

.method private getAllFieldNames(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Set;)V
    .locals 5
    .param p1, "fields"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 339
    .local p2, "existingFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 340
    .local v1, "field":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    goto :goto_0

    .line 343
    :cond_0
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 344
    .local v2, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v3

    .line 345
    .local v3, "name":Lcom/itextpdf/kernel/pdf/PdfString;
    if-eqz v3, :cond_1

    .line 346
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_1
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    .line 349
    .local v4, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v4, :cond_2

    .line 350
    invoke-direct {p0, v4, p2}, Lcom/itextpdf/forms/PdfPageFormCopier;->getAllFieldNames(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Set;)V

    .line 352
    .end local v1    # "field":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v2    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v3    # "name":Lcom/itextpdf/kernel/pdf/PdfString;
    .end local v4    # "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_2
    goto :goto_0

    .line 353
    :cond_3
    return-void
.end method

.method private static getParentField(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 2
    .param p0, "parent"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p1, "pdfDoc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 261
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 262
    .local v0, "parentOfParent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_0

    .line 263
    invoke-static {v0, p1}, Lcom/itextpdf/forms/PdfPageFormCopier;->getParentField(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    return-object v1

    .line 266
    :cond_0
    invoke-static {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    return-object v1
.end method

.method private makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 5
    .param p1, "fieldDict"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 124
    iget-object v0, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentTo:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    .line 125
    .local v0, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    if-nez v0, :cond_0

    .line 126
    sget-object v1, Lcom/itextpdf/forms/PdfPageFormCopier;->logger:Lorg/slf4j/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 127
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    aput-object v4, v2, v3

    .line 126
    const-string v3, "Cannot create form field from a given PDF object: {0}"

    invoke-static {v3, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 129
    :cond_0
    return-object v0
.end method

.method private mergeFieldsWithTheSameName(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 10
    .param p1, "newField"    # Lcom/itextpdf/forms/fields/PdfFormField;

    .line 203
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "fullFieldName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    .line 206
    .local v1, "fieldName":Lcom/itextpdf/kernel/pdf/PdfString;
    sget-object v2, Lcom/itextpdf/forms/PdfPageFormCopier;->logger:Lorg/slf4j/Logger;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v5, "The document already has field {0}. Annotations of the fields with this name will be added to the existing one as children. If you want to have separate fields, please, rename them manually before copying."

    invoke-static {v5, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v2, v0}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v2

    .line 209
    .local v2, "existingField":Lcom/itextpdf/forms/fields/PdfFormField;
    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->isFlushed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    const/4 v4, 0x0

    .line 212
    .local v4, "index":I
    :cond_0
    add-int/2addr v4, v3

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 214
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v5, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v5, v0}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v5

    if-nez v5, :cond_0

    .line 216
    return-object p1

    .line 218
    .end local v4    # "index":I
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 219
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 221
    iget-object v3, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v3}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 223
    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    .line 224
    .local v3, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 225
    invoke-virtual {v2, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->addKid(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 226
    return-object v2

    .line 229
    :cond_2
    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 230
    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 231
    iget-object v4, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentTo:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v4}, Lcom/itextpdf/forms/fields/PdfFormField;->createEmptyField(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v4

    .line 232
    .local v4, "mergedField":Lcom/itextpdf/forms/fields/PdfFormField;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 233
    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 234
    invoke-virtual {v5, v6, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 235
    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 236
    .local v5, "parent":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v5, :cond_4

    .line 237
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v6, v5}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 238
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v6

    .line 239
    .local v6, "parentKids":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 240
    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    .line 241
    .local v8, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    if-ne v8, v9, :cond_3

    .line 242
    invoke-virtual {v4}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->set(ILcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 243
    goto :goto_1

    .line 239
    .end local v8    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 247
    .end local v6    # "parentKids":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v7    # "i":I
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    .line 248
    if-eqz v3, :cond_5

    .line 249
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v6, v3}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 252
    :cond_5
    invoke-virtual {v4, v2}, Lcom/itextpdf/forms/fields/PdfFormField;->addKid(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->addKid(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 253
    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    .line 254
    .local v6, "value":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v6, :cond_6

    .line 255
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 257
    :cond_6
    return-object v4
.end method


# virtual methods
.method public copy(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 9
    .param p1, "fromPage"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p2, "toPage"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 86
    iget-object v0, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentFrom:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentFrom:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 88
    invoke-static {v0, v2}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formFrom:Lcom/itextpdf/forms/PdfAcroForm;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentTo:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 91
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentTo:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 92
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formFrom:Lcom/itextpdf/forms/PdfAcroForm;

    if-nez v0, :cond_2

    .line 96
    return-void

    .line 100
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "excludedKeys":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formFrom:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v1}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-object v3, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentTo:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1, v3, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 105
    .local v1, "dict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    iget-object v2, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v2}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 107
    iget-object v2, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formFrom:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v2}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v2

    .line 108
    .local v2, "fieldsFrom":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;>;"
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 109
    return-void

    .line 111
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v3}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v3

    .line 113
    .local v3, "fieldsTo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;>;"
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnotations()Ljava/util/List;

    move-result-object v4

    .line 115
    .local v4, "annots":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 116
    .local v6, "annot":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 117
    goto :goto_0

    .line 119
    :cond_4
    invoke-direct {p0, p2, v2, v3, v6}, Lcom/itextpdf/forms/PdfPageFormCopier;->copyField(Lcom/itextpdf/kernel/pdf/PdfPage;Ljava/util/Map;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)V

    .line 120
    .end local v6    # "annot":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    goto :goto_0

    .line 121
    :cond_5
    return-void
.end method
