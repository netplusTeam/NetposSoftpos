.class public Lcom/itextpdf/layout/renderer/ListRenderer;
.super Lcom/itextpdf/layout/renderer/BlockRenderer;
.source "ListRenderer.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/List;)V
    .locals 0
    .param p1, "modelElement"    # Lcom/itextpdf/layout/element/List;

    .line 85
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    .line 86
    return-void
.end method

.method private correctListSplitting(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/layout/LayoutArea;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 14
    .param p1, "splitRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "overflowRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p3, "causeOfNothing"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p4, "occupiedArea"    # Lcom/itextpdf/layout/layout/LayoutArea;

    .line 271
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    move-object/from16 v6, p3

    invoke-interface {v0, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 273
    .local v7, "firstNotRendered":I
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v3, v7, :cond_1

    .line 274
    new-instance v8, Lcom/itextpdf/layout/layout/LayoutResult;

    if-nez p2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move-object v0, v8

    move-object/from16 v2, p4

    move-object v3, p1

    move-object/from16 v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v8

    .line 279
    :cond_1
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 281
    .local v3, "firstListItemRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    move-object v4, p0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ListRenderer;->createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/renderer/ListRenderer;

    .line 282
    .local v5, "newOverflowRenderer":Lcom/itextpdf/layout/renderer/ListRenderer;
    const/16 v8, 0x1a

    invoke-virtual {v5, v8}, Lcom/itextpdf/layout/renderer/ListRenderer;->deleteOwnProperty(I)V

    .line 284
    iget-object v8, v5, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    move-object v9, v3

    check-cast v9, Lcom/itextpdf/layout/renderer/ListItemRenderer;

    invoke-virtual {v9, v0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v0, v5, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v8

    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v8, v2, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    .line 288
    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v8, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 291
    .local v0, "childrenStillRemainingToRender":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v8

    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v9

    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v9, v2, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 293
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    invoke-virtual {v5}, Lcom/itextpdf/layout/renderer/ListRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 295
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 296
    invoke-virtual {v5}, Lcom/itextpdf/layout/renderer/ListRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v8, 0x2c

    invoke-interface {v1, v8}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v8, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_1

    .line 298
    :cond_2
    iget-object v2, v5, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 301
    :goto_1
    if-eqz p2, :cond_3

    .line 302
    iget-object v1, v5, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface/range {p2 .. p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 305
    :cond_3
    iget-object v1, v5, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 306
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v9, 0x2

    move-object v8, v1

    move-object/from16 v10, p4

    move-object v11, p1

    move-object v12, v5

    move-object v13, p0

    invoke-direct/range {v8 .. v13}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v1

    .line 308
    :cond_4
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v1

    move-object/from16 v10, p4

    move-object v13, p0

    invoke-direct/range {v8 .. v13}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v1
.end method

.method private createListSymbolRenderer(ILcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 8
    .param p1, "index"    # I
    .param p2, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 150
    const/16 v0, 0x25

    invoke-static {p2, p0, v0}, Lcom/itextpdf/layout/renderer/ListRenderer;->getListItemOrListProperty(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "defaultListSymbol":Ljava/lang/Object;
    instance-of v1, v0, Lcom/itextpdf/layout/element/Text;

    if-eqz v1, :cond_0

    .line 152
    new-instance v1, Lcom/itextpdf/layout/renderer/TextRenderer;

    move-object v2, v0

    check-cast v2, Lcom/itextpdf/layout/element/Text;

    invoke-direct {v1, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;)V

    invoke-direct {p0, v1}, Lcom/itextpdf/layout/renderer/ListRenderer;->surroundTextBullet(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v1

    return-object v1

    .line 153
    :cond_0
    instance-of v1, v0, Lcom/itextpdf/layout/element/Image;

    if-eqz v1, :cond_1

    .line 154
    new-instance v1, Lcom/itextpdf/layout/renderer/ImageRenderer;

    move-object v2, v0

    check-cast v2, Lcom/itextpdf/layout/element/Image;

    invoke-direct {v1, v2}, Lcom/itextpdf/layout/renderer/ImageRenderer;-><init>(Lcom/itextpdf/layout/element/Image;)V

    return-object v1

    .line 155
    :cond_1
    instance-of v1, v0, Lcom/itextpdf/layout/property/ListNumberingType;

    if-eqz v1, :cond_7

    .line 156
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/layout/property/ListNumberingType;

    .line 158
    .local v1, "numberingType":Lcom/itextpdf/layout/property/ListNumberingType;
    sget-object v2, Lcom/itextpdf/layout/renderer/ListRenderer$2;->$SwitchMap$com$itextpdf$layout$property$ListNumberingType:[I

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/ListNumberingType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 196
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 193
    :pswitch_0
    add-int/lit16 v2, p1, 0xc9

    int-to-char v2, v2

    invoke-static {v2}, Lcom/itextpdf/io/util/TextUtil;->charToString(C)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "numberText":Ljava/lang/String;
    goto :goto_1

    .line 190
    .end local v2    # "numberText":Ljava/lang/String;
    :pswitch_1
    add-int/lit16 v2, p1, 0xbf

    int-to-char v2, v2

    invoke-static {v2}, Lcom/itextpdf/io/util/TextUtil;->charToString(C)Ljava/lang/String;

    move-result-object v2

    .line 191
    .restart local v2    # "numberText":Ljava/lang/String;
    goto :goto_1

    .line 187
    .end local v2    # "numberText":Ljava/lang/String;
    :pswitch_2
    add-int/lit16 v2, p1, 0xb5

    int-to-char v2, v2

    invoke-static {v2}, Lcom/itextpdf/io/util/TextUtil;->charToString(C)Ljava/lang/String;

    move-result-object v2

    .line 188
    .restart local v2    # "numberText":Ljava/lang/String;
    goto :goto_1

    .line 184
    .end local v2    # "numberText":Ljava/lang/String;
    :pswitch_3
    add-int/lit16 v2, p1, 0xab

    int-to-char v2, v2

    invoke-static {v2}, Lcom/itextpdf/io/util/TextUtil;->charToString(C)Ljava/lang/String;

    move-result-object v2

    .line 185
    .restart local v2    # "numberText":Ljava/lang/String;
    goto :goto_1

    .line 181
    .end local v2    # "numberText":Ljava/lang/String;
    :pswitch_4
    invoke-static {p1, v3, v3}, Lcom/itextpdf/kernel/numbering/GreekAlphabetNumbering;->toGreekAlphabetNumber(IZZ)Ljava/lang/String;

    move-result-object v2

    .line 182
    .restart local v2    # "numberText":Ljava/lang/String;
    goto :goto_1

    .line 178
    .end local v2    # "numberText":Ljava/lang/String;
    :pswitch_5
    const/4 v2, 0x0

    invoke-static {p1, v2, v3}, Lcom/itextpdf/kernel/numbering/GreekAlphabetNumbering;->toGreekAlphabetNumber(IZZ)Ljava/lang/String;

    move-result-object v2

    .line 179
    .restart local v2    # "numberText":Ljava/lang/String;
    goto :goto_1

    .line 175
    .end local v2    # "numberText":Ljava/lang/String;
    :pswitch_6
    invoke-static {p1}, Lcom/itextpdf/kernel/numbering/EnglishAlphabetNumbering;->toLatinAlphabetNumberUpperCase(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    .restart local v2    # "numberText":Ljava/lang/String;
    goto :goto_1

    .line 172
    .end local v2    # "numberText":Ljava/lang/String;
    :pswitch_7
    invoke-static {p1}, Lcom/itextpdf/kernel/numbering/EnglishAlphabetNumbering;->toLatinAlphabetNumberLowerCase(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    .restart local v2    # "numberText":Ljava/lang/String;
    goto :goto_1

    .line 169
    .end local v2    # "numberText":Ljava/lang/String;
    :pswitch_8
    invoke-static {p1}, Lcom/itextpdf/kernel/numbering/RomanNumbering;->toRomanUpperCase(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    .restart local v2    # "numberText":Ljava/lang/String;
    goto :goto_1

    .line 166
    .end local v2    # "numberText":Ljava/lang/String;
    :pswitch_9
    invoke-static {p1}, Lcom/itextpdf/kernel/numbering/RomanNumbering;->toRomanLowerCase(I)Ljava/lang/String;

    move-result-object v2

    .line 167
    .restart local v2    # "numberText":Ljava/lang/String;
    goto :goto_1

    .line 163
    .end local v2    # "numberText":Ljava/lang/String;
    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    if-ge p1, v3, :cond_2

    const-string v3, "0"

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .restart local v2    # "numberText":Ljava/lang/String;
    goto :goto_1

    .line 160
    .end local v2    # "numberText":Ljava/lang/String;
    :pswitch_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    .restart local v2    # "numberText":Ljava/lang/String;
    nop

    .line 198
    :goto_1
    new-instance v3, Lcom/itextpdf/layout/element/Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x29

    invoke-static {p2, p0, v5}, Lcom/itextpdf/layout/renderer/ListRenderer;->getListItemOrListProperty(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2a

    invoke-static {p2, p0, v5}, Lcom/itextpdf/layout/renderer/ListRenderer;->getListItemOrListProperty(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/layout/element/Text;-><init>(Ljava/lang/String;)V

    .line 203
    .local v3, "textElement":Lcom/itextpdf/layout/element/Text;
    sget-object v4, Lcom/itextpdf/layout/property/ListNumberingType;->GREEK_LOWER:Lcom/itextpdf/layout/property/ListNumberingType;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/itextpdf/layout/property/ListNumberingType;->GREEK_UPPER:Lcom/itextpdf/layout/property/ListNumberingType;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/itextpdf/layout/property/ListNumberingType;->ZAPF_DINGBATS_1:Lcom/itextpdf/layout/property/ListNumberingType;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/itextpdf/layout/property/ListNumberingType;->ZAPF_DINGBATS_2:Lcom/itextpdf/layout/property/ListNumberingType;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/itextpdf/layout/property/ListNumberingType;->ZAPF_DINGBATS_3:Lcom/itextpdf/layout/property/ListNumberingType;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/itextpdf/layout/property/ListNumberingType;->ZAPF_DINGBATS_4:Lcom/itextpdf/layout/property/ListNumberingType;

    if-ne v1, v4, :cond_3

    goto :goto_2

    .line 225
    :cond_3
    new-instance v4, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-direct {v4, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;)V

    .local v4, "textRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    goto :goto_6

    .line 207
    .end local v4    # "textRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_4
    :goto_2
    sget-object v4, Lcom/itextpdf/layout/property/ListNumberingType;->GREEK_LOWER:Lcom/itextpdf/layout/property/ListNumberingType;

    if-eq v1, v4, :cond_6

    sget-object v4, Lcom/itextpdf/layout/property/ListNumberingType;->GREEK_UPPER:Lcom/itextpdf/layout/property/ListNumberingType;

    if-ne v1, v4, :cond_5

    goto :goto_3

    :cond_5
    const-string v4, "ZapfDingbats"

    goto :goto_4

    :cond_6
    :goto_3
    const-string v4, "Symbol"

    .line 210
    .local v4, "constantFont":Ljava/lang/String;
    :goto_4
    new-instance v5, Lcom/itextpdf/layout/renderer/ListRenderer$1;

    invoke-direct {v5, p0, v3, v4}, Lcom/itextpdf/layout/renderer/ListRenderer$1;-><init>(Lcom/itextpdf/layout/renderer/ListRenderer;Lcom/itextpdf/layout/element/Text;Ljava/lang/String;)V

    .line 221
    .local v5, "textRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    const/16 v6, 0x14

    :try_start_0
    invoke-static {v4}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    goto :goto_5

    .line 222
    :catch_0
    move-exception v6

    .line 224
    .end local v4    # "constantFont":Ljava/lang/String;
    :goto_5
    move-object v4, v5

    .line 227
    .end local v5    # "textRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v4, "textRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    :goto_6
    invoke-direct {p0, v4}, Lcom/itextpdf/layout/renderer/ListRenderer;->surroundTextBullet(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v5

    return-object v5

    .line 228
    .end local v1    # "numberingType":Lcom/itextpdf/layout/property/ListNumberingType;
    .end local v2    # "numberText":Ljava/lang/String;
    .end local v3    # "textElement":Lcom/itextpdf/layout/element/Text;
    .end local v4    # "textRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_7
    instance-of v1, v0, Lcom/itextpdf/layout/property/IListSymbolFactory;

    if-eqz v1, :cond_8

    .line 229
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/layout/property/IListSymbolFactory;

    invoke-interface {v1, p1, p0, p2}, Lcom/itextpdf/layout/property/IListSymbolFactory;->createSymbol(ILcom/itextpdf/layout/IPropertyContainer;Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/element/IElement;

    move-result-object v1

    invoke-interface {v1}, Lcom/itextpdf/layout/element/IElement;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/layout/renderer/ListRenderer;->surroundTextBullet(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v1

    return-object v1

    .line 230
    :cond_8
    if-nez v0, :cond_9

    .line 231
    const/4 v1, 0x0

    return-object v1

    .line 233
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getListItemOrListProperty(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Object;
    .locals 1
    .param p0, "listItem"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p1, "list"    # Lcom/itextpdf/layout/renderer/IRenderer;
    .param p2, "propertyId"    # I

    .line 146
    invoke-interface {p0, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private initializeListSymbols(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 17
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;

    .line 313
    move-object/from16 v6, p0

    const/16 v0, 0x28

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/ListRenderer;->hasOwnProperty(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 315
    .local v7, "symbolRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    const/16 v0, 0x24

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Lcom/itextpdf/layout/renderer/ListRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 316
    .local v0, "listItemNum":I
    const/4 v3, 0x0

    move v8, v3

    .local v8, "i":I
    :goto_0
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v8, v3, :cond_6

    .line 317
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v3, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 318
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v5, 0x78

    invoke-interface {v3, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v3, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    move v0, v3

    .line 319
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-virtual {v6, v0, v3}, Lcom/itextpdf/layout/renderer/ListRenderer;->makeListSymbolRenderer(ILcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    .line 320
    .local v3, "currentSymbolRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    sget-object v5, Lcom/itextpdf/layout/property/BaseDirection;->RIGHT_TO_LEFT:Lcom/itextpdf/layout/property/BaseDirection;

    const/4 v9, 0x7

    invoke-virtual {v6, v9}, Lcom/itextpdf/layout/renderer/ListRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/itextpdf/layout/property/BaseDirection;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 321
    sget-object v5, Lcom/itextpdf/layout/property/BaseDirection;->RIGHT_TO_LEFT:Lcom/itextpdf/layout/property/BaseDirection;

    invoke-interface {v3, v9, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 323
    :cond_1
    const/4 v5, 0x0

    .line 324
    .local v5, "listSymbolLayoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    if-eqz v3, :cond_2

    .line 325
    add-int/lit8 v0, v0, 0x1

    .line 326
    iget-object v9, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v3, v9}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 327
    move-object/from16 v9, p1

    invoke-interface {v3, v9}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v5

    .line 328
    invoke-interface {v3, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move v10, v0

    move-object v11, v5

    goto :goto_2

    .line 324
    :cond_2
    move-object/from16 v9, p1

    move v10, v0

    move-object v11, v5

    .line 330
    .end local v0    # "listItemNum":I
    .end local v5    # "listSymbolLayoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .local v10, "listItemNum":I
    .local v11, "listSymbolLayoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    :goto_2
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 331
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v5, 0x1a

    invoke-virtual {v6, v5}, Lcom/itextpdf/layout/renderer/ListRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 332
    .local v12, "isForcedPlacement":Z
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_3

    move v4, v2

    :cond_3
    move v13, v4

    .line 334
    .local v13, "listSymbolNotFit":Z
    if-eqz v13, :cond_4

    if-eqz v12, :cond_4

    .line 335
    const/4 v3, 0x0

    move-object v14, v3

    goto :goto_3

    .line 337
    :cond_4
    move-object v14, v3

    .end local v3    # "currentSymbolRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .local v14, "currentSymbolRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    :goto_3
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    if-eqz v13, :cond_5

    if-nez v12, :cond_5

    .line 339
    new-instance v15, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    move-object v0, v15

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v15

    .line 316
    .end local v11    # "listSymbolLayoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    .end local v12    # "isForcedPlacement":Z
    .end local v13    # "listSymbolNotFit":Z
    .end local v14    # "currentSymbolRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    move v0, v10

    goto/16 :goto_0

    .end local v10    # "listItemNum":I
    .restart local v0    # "listItemNum":I
    :cond_6
    move-object/from16 v9, p1

    .line 343
    .end local v8    # "i":I
    const/4 v3, 0x0

    .line 344
    .local v3, "maxSymbolWidth":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    iget-object v8, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/16 v10, 0x53

    if-ge v5, v8, :cond_8

    .line 345
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 346
    .local v8, "symbolRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    if-eqz v8, :cond_7

    .line 347
    iget-object v11, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 348
    .local v11, "listItemRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-static {v11, v6, v10}, Lcom/itextpdf/layout/renderer/ListRenderer;->getListItemOrListProperty(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/property/ListSymbolPosition;

    sget-object v12, Lcom/itextpdf/layout/property/ListSymbolPosition;->INSIDE:Lcom/itextpdf/layout/property/ListSymbolPosition;

    if-eq v10, v12, :cond_7

    .line 349
    invoke-interface {v8}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 344
    .end local v8    # "symbolRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v11    # "listItemRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 354
    .end local v5    # "i":I
    :cond_8
    const/16 v5, 0x27

    invoke-virtual {v6, v5}, Lcom/itextpdf/layout/renderer/ListRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v5

    .line 355
    .local v5, "symbolIndent":Ljava/lang/Float;
    const/4 v0, 0x0

    .line 356
    iget-object v8, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 357
    .local v11, "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-interface {v11, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 358
    const/16 v12, 0x2c

    invoke-interface {v11, v12}, Lcom/itextpdf/layout/renderer/IRenderer;->deleteOwnProperty(I)V

    .line 359
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v14

    invoke-interface {v11, v12, v14}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/layout/property/UnitValue;

    .line 360
    .local v14, "marginLeftUV":Lcom/itextpdf/layout/property/UnitValue;
    invoke-virtual {v14}, Lcom/itextpdf/layout/property/UnitValue;->isPointValue()Z

    move-result v15

    if-nez v15, :cond_9

    .line 361
    const-class v15, Lcom/itextpdf/layout/renderer/ListRenderer;

    invoke-static {v15}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v15

    .line 362
    .local v15, "logger":Lorg/slf4j/Logger;
    new-array v13, v2, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v13, v4

    const-string v4, "Property {0} in percents is not supported"

    invoke-static {v4, v13}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v15, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 364
    .end local v15    # "logger":Lorg/slf4j/Logger;
    :cond_9
    invoke-virtual {v14}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v4

    .line 365
    .local v4, "calculatedMargin":F
    invoke-static {v11, v6, v10}, Lcom/itextpdf/layout/renderer/ListRenderer;->getListItemOrListProperty(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/layout/property/ListSymbolPosition;

    sget-object v15, Lcom/itextpdf/layout/property/ListSymbolPosition;->DEFAULT:Lcom/itextpdf/layout/property/ListSymbolPosition;

    if-ne v13, v15, :cond_b

    .line 366
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v13

    goto :goto_6

    :cond_a
    const/4 v13, 0x0

    :goto_6
    add-float/2addr v13, v3

    add-float/2addr v4, v13

    .line 368
    :cond_b
    invoke-static {v4}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 369
    add-int/lit8 v12, v0, 0x1

    .end local v0    # "listItemNum":I
    .local v12, "listItemNum":I
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 370
    .local v0, "symbolRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    move-object v13, v11

    check-cast v13, Lcom/itextpdf/layout/renderer/ListItemRenderer;

    invoke-virtual {v13, v0, v3}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->addSymbolRenderer(Lcom/itextpdf/layout/renderer/IRenderer;F)V

    .line 371
    if-eqz v0, :cond_d

    .line 372
    const/16 v13, 0x6c

    invoke-virtual {v6, v13}, Lcom/itextpdf/layout/renderer/ListRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    .line 373
    .local v13, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    if-eqz v13, :cond_d

    .line 374
    instance-of v15, v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    const-string v10, "Lbl"

    if-eqz v15, :cond_c

    .line 375
    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/layout/IPropertyContainer;

    invoke-virtual {v13, v15, v10}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->setRoleHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/String;)V

    goto :goto_7

    .line 377
    :cond_c
    invoke-virtual {v13, v0, v10}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->setRoleHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/String;)V

    .line 381
    .end local v0    # "symbolRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v4    # "calculatedMargin":F
    .end local v11    # "childRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    .end local v13    # "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .end local v14    # "marginLeftUV":Lcom/itextpdf/layout/property/UnitValue;
    :cond_d
    :goto_7
    move v0, v12

    const/4 v4, 0x0

    const/16 v10, 0x53

    goto/16 :goto_5

    .line 313
    .end local v3    # "maxSymbolWidth":F
    .end local v5    # "symbolIndent":Ljava/lang/Float;
    .end local v7    # "symbolRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/renderer/IRenderer;>;"
    .end local v12    # "listItemNum":I
    :cond_e
    move-object/from16 v9, p1

    .line 383
    :cond_f
    return-object v1
.end method

.method private surroundTextBullet(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/LineRenderer;
    .locals 4
    .param p1, "bulletRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 240
    new-instance v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-direct {v0}, Lcom/itextpdf/layout/renderer/LineRenderer;-><init>()V

    .line 241
    .local v0, "lineRenderer":Lcom/itextpdf/layout/renderer/LineRenderer;
    new-instance v1, Lcom/itextpdf/layout/element/Text;

    const-string/jumbo v2, "\u200d"

    invoke-direct {v1, v2}, Lcom/itextpdf/layout/element/Text;-><init>(Ljava/lang/String;)V

    .line 242
    .local v1, "zeroWidthJoiner":Lcom/itextpdf/layout/element/Text;
    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Text;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v2

    const-string v3, "Artifact"

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    .line 243
    new-instance v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-direct {v2, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;)V

    .line 244
    .local v2, "zeroWidthJoinerRenderer":Lcom/itextpdf/layout/renderer/TextRenderer;
    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 245
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 246
    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 247
    return-object v0
.end method


# virtual methods
.method protected createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 3
    .param p1, "layoutResult"    # I

    .line 121
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    .line 122
    .local v0, "overflowRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ListRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 123
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 124
    return-object v0
.end method

.method protected createSplitRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 3
    .param p1, "layoutResult"    # I

    .line 113
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createSplitRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    .line 114
    .local v0, "splitRenderer":Lcom/itextpdf/layout/renderer/AbstractRenderer;
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ListRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 115
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 116
    return-object v0
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 5

    .line 129
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfWidth()F

    move-result v3

    const v4, 0x49742400    # 1000000.0f

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/ListRenderer;->initializeListSymbols(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    .line 130
    .local v0, "errorResult":Lcom/itextpdf/layout/layout/LayoutResult;
    if-eqz v0, :cond_0

    .line 131
    invoke-static {p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->countDefaultMinMaxWidth(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v1

    return-object v1

    .line 133
    :cond_0
    invoke-super {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v1

    return-object v1
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 108
    new-instance v0, Lcom/itextpdf/layout/renderer/ListRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v1, Lcom/itextpdf/layout/element/List;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/ListRenderer;-><init>(Lcom/itextpdf/layout/element/List;)V

    return-object v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 6
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;

    .line 90
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/ListRenderer;->initializeListSymbols(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    .line 91
    .local v0, "errorResult":Lcom/itextpdf/layout/layout/LayoutResult;
    if-eqz v0, :cond_0

    .line 92
    return-object v0

    .line 94
    :cond_0
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v1

    .line 96
    .local v1, "result":Lcom/itextpdf/layout/layout/LayoutResult;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v3, 0x1a

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/ListRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 97
    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 98
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-direct {p0, p0, v2, v3, v4}, Lcom/itextpdf/layout/renderer/ListRenderer;->correctListSplitting(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/layout/LayoutArea;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v1

    goto :goto_0

    .line 99
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 100
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/itextpdf/layout/renderer/ListRenderer;->correctListSplitting(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/layout/LayoutArea;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v1

    .line 103
    :cond_2
    :goto_0
    return-object v1
.end method

.method protected makeListSymbolRenderer(ILcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "renderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/renderer/ListRenderer;->createListSymbolRenderer(ILcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    .line 139
    .local v0, "symbolRenderer":Lcom/itextpdf/layout/renderer/IRenderer;
    if-eqz v0, :cond_0

    .line 140
    const/16 v1, 0x4a

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 142
    :cond_0
    return-object v0
.end method
