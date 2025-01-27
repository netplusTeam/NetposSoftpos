.class Lcom/itextpdf/kernel/pdf/XmpMetaInfoConverter;
.super Ljava/lang/Object;
.source "XmpMetaInfoConverter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static appendArrayItemIfDoesNotExist(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p0, "meta"    # Lcom/itextpdf/kernel/xmp/XMPMeta;
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "arrayOption"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 161
    invoke-interface {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/XMPMeta;->countArrayItems(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, "currentCnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 163
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0, p1, p2, v2}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getArrayItem(Ljava/lang/String;Ljava/lang/String;I)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v2

    .line 164
    .local v2, "item":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    invoke-interface {v2}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    return-void

    .line 162
    .end local v2    # "item":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    :cond_1
    new-instance v5, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    invoke-direct {v5, p4}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;-><init>(I)V

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/itextpdf/kernel/xmp/XMPMeta;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 169
    return-void
.end method

.method static appendDocumentInfoToMetadata(Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;Lcom/itextpdf/kernel/xmp/XMPMeta;)V
    .locals 16
    .param p0, "info"    # Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;
    .param p1, "xmpMeta"    # Lcom/itextpdf/kernel/xmp/XMPMeta;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 111
    move-object/from16 v6, p1

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    .line 112
    .local v7, "docInfo":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v7, :cond_f

    .line 116
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 117
    .local v9, "pdfName":Lcom/itextpdf/kernel/pdf/PdfName;
    move-object v10, v9

    .line 118
    .local v10, "key":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {v7, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    .line 119
    .local v11, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-nez v11, :cond_1

    .line 120
    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    move-object v0, v11

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .local v0, "value":Ljava/lang/String;
    goto :goto_1

    .line 123
    .end local v0    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfObject;->isName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    move-object v0, v11

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 128
    .local v12, "value":Ljava/lang/String;
    :goto_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Title:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v10}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    const-string v1, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v2, "title"

    const-string/jumbo v3, "x-default"

    const-string/jumbo v4, "x-default"

    move-object/from16 v0, p1

    move-object v5, v12

    invoke-interface/range {v0 .. v5}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 130
    :cond_3
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Author:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v10}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "http://purl.org/dc/elements/1.1/"

    const/4 v2, 0x0

    const-string v3, ",|;"

    if-eqz v0, :cond_5

    .line 131
    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    :goto_2
    if-ge v2, v3, :cond_e

    aget-object v4, v0, v2

    .line 132
    .local v4, "v":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 133
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/16 v13, 0x400

    const-string v14, "creator"

    invoke-static {v6, v1, v14, v5, v13}, Lcom/itextpdf/kernel/pdf/XmpMetaInfoConverter;->appendArrayItemIfDoesNotExist(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    .end local v4    # "v":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 136
    :cond_5
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Subject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v10}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 137
    const-string v1, "http://purl.org/dc/elements/1.1/"

    const-string v2, "description"

    const-string/jumbo v3, "x-default"

    const-string/jumbo v4, "x-default"

    move-object/from16 v0, p1

    move-object v5, v12

    invoke-interface/range {v0 .. v5}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 138
    :cond_6
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Keywords:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v10}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "http://ns.adobe.com/pdf/1.3/"

    if-eqz v0, :cond_9

    .line 139
    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    :goto_3
    if-ge v2, v3, :cond_8

    aget-object v5, v0, v2

    .line 140
    .local v5, "v":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_7

    .line 141
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x200

    const-string/jumbo v15, "subject"

    invoke-static {v6, v1, v15, v13, v14}, Lcom/itextpdf/kernel/pdf/XmpMetaInfoConverter;->appendArrayItemIfDoesNotExist(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    .end local v5    # "v":Ljava/lang/String;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 144
    :cond_8
    const-string v0, "Keywords"

    invoke-interface {v6, v4, v0, v12}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 145
    :cond_9
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Creator:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v10}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "http://ns.adobe.com/xap/1.0/"

    if-eqz v0, :cond_a

    .line 146
    const-string v0, "CreatorTool"

    invoke-interface {v6, v1, v0, v12}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 147
    :cond_a
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Producer:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v10}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 148
    const-string v0, "Producer"

    invoke-interface {v6, v4, v0, v12}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 149
    :cond_b
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CreationDate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v10}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 150
    invoke-static {v12}, Lcom/itextpdf/kernel/pdf/PdfDate;->getW3CDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CreateDate"

    invoke-interface {v6, v1, v2, v0}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 151
    :cond_c
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ModDate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v10}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 152
    invoke-static {v12}, Lcom/itextpdf/kernel/pdf/PdfDate;->getW3CDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ModifyDate"

    invoke-interface {v6, v1, v2, v0}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 153
    :cond_d
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Trapped:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v10}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 154
    const-string v0, "Trapped"

    invoke-interface {v6, v4, v0, v12}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    .end local v9    # "pdfName":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_e
    :goto_4
    goto/16 :goto_0

    .line 158
    .end local v10    # "key":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v11    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v12    # "value":Ljava/lang/String;
    :cond_f
    return-void
.end method

.method static appendMetadataToInfo([BLcom/itextpdf/kernel/pdf/PdfDocumentInfo;)V
    .locals 12
    .param p0, "xmpMetadata"    # [B
    .param p1, "info"    # Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 60
    const-string v0, "http://ns.adobe.com/pdf/1.3/"

    const-string/jumbo v1, "x-default"

    const-string v2, "http://purl.org/dc/elements/1.1/"

    if-eqz p0, :cond_8

    .line 62
    :try_start_0
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object v3

    .line 64
    .local v3, "meta":Lcom/itextpdf/kernel/xmp/XMPMeta;
    const-string/jumbo v4, "title"

    invoke-interface {v3, v2, v4, v1, v1}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v4

    .line 65
    .local v4, "title":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    if-eqz v4, :cond_0

    .line 66
    invoke-interface {v4}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setTitle(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 69
    :cond_0
    const-string v5, "creator"

    invoke-static {v3, v2, v5}, Lcom/itextpdf/kernel/pdf/XmpMetaInfoConverter;->fetchArrayIntoString(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "author":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 71
    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setAuthor(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 75
    :cond_1
    const-string v6, "Keywords"

    invoke-interface {v3, v0, v6}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v6

    .line 76
    .local v6, "keywords":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    if-eqz v6, :cond_2

    .line 77
    invoke-interface {v6}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setKeywords(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    goto :goto_0

    .line 79
    :cond_2
    const-string/jumbo v7, "subject"

    invoke-static {v3, v2, v7}, Lcom/itextpdf/kernel/pdf/XmpMetaInfoConverter;->fetchArrayIntoString(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "keywordsStr":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 81
    invoke-virtual {p1, v7}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setKeywords(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 85
    .end local v7    # "keywordsStr":Ljava/lang/String;
    :cond_3
    :goto_0
    const-string v7, "description"

    invoke-interface {v3, v2, v7, v1, v1}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v1

    .line 86
    .local v1, "subject":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    if-eqz v1, :cond_4

    .line 87
    invoke-interface {v1}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setSubject(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 90
    :cond_4
    const-string v2, "http://ns.adobe.com/xap/1.0/"

    const-string v7, "CreatorTool"

    invoke-interface {v3, v2, v7}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v2

    .line 91
    .local v2, "creator":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    if-eqz v2, :cond_5

    .line 92
    invoke-interface {v2}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setCreator(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 95
    :cond_5
    const-string v7, "Producer"

    invoke-interface {v3, v0, v7}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v7

    .line 96
    .local v7, "producer":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    if-eqz v7, :cond_6

    .line 97
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Producer:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-interface {v7}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UnicodeBig"

    invoke-direct {v9, v10, v11}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 100
    :cond_6
    const-string v8, "Trapped"

    invoke-interface {v3, v0, v8}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v0

    .line 101
    .local v0, "trapped":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    if-eqz v0, :cond_7

    .line 102
    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setTrapped(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "trapped":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    .end local v1    # "subject":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    .end local v2    # "creator":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    .end local v3    # "meta":Lcom/itextpdf/kernel/xmp/XMPMeta;
    .end local v4    # "title":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    .end local v5    # "author":Ljava/lang/String;
    .end local v6    # "keywords":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    .end local v7    # "producer":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    :cond_7
    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 108
    :cond_8
    :goto_1
    return-void
.end method

.method private static fetchArrayIntoString(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "meta"    # Lcom/itextpdf/kernel/xmp/XMPMeta;
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "arrayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 172
    invoke-interface {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/XMPMeta;->countArrayItems(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, "keywordsCnt":I
    const/4 v1, 0x0

    .line 174
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 175
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p0, p1, p2, v3}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getArrayItem(Ljava/lang/String;Ljava/lang/String;I)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v3

    .line 176
    .local v3, "curKeyword":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    if-nez v1, :cond_0

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    goto :goto_1

    .line 178
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 179
    const-string v4, "; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_1
    :goto_1
    invoke-interface {v3}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .end local v3    # "curKeyword":Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    .end local v2    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return-object v2
.end method
