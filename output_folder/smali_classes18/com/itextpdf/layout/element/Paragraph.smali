.class public Lcom/itextpdf/layout/element/Paragraph;
.super Lcom/itextpdf/layout/element/BlockElement;
.source "Paragraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/layout/element/BlockElement<",
        "Lcom/itextpdf/layout/element/Paragraph;",
        ">;"
    }
.end annotation


# instance fields
.field protected tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/element/Text;)V
    .locals 0
    .param p1, "text"    # Lcom/itextpdf/layout/element/Text;

    .line 90
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    .line 91
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/Paragraph;->add(Lcom/itextpdf/layout/element/ILeafElement;)Lcom/itextpdf/layout/element/Paragraph;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/itextpdf/layout/element/Text;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/element/Text;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Lcom/itextpdf/layout/element/Text;)V

    .line 83
    return-void
.end method

.method private addTabStopsAsProperty(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/element/TabStop;",
            ">;)V"
        }
    .end annotation

    .line 263
    .local p1, "newTabStops":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/element/TabStop;>;"
    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Paragraph;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 264
    .local v1, "tabStops":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Float;Lcom/itextpdf/layout/element/TabStop;>;"
    if-nez v1, :cond_0

    .line 265
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    move-object v1, v2

    .line 266
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    .line 268
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/TabStop;

    .line 269
    .local v2, "tabStop":Lcom/itextpdf/layout/element/TabStop;
    invoke-virtual {v2}, Lcom/itextpdf/layout/element/TabStop;->getTabPosition()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .end local v2    # "tabStop":Lcom/itextpdf/layout/element/TabStop;
    goto :goto_0

    .line 271
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 1
    .param p1, "element"    # Lcom/itextpdf/layout/element/IBlockElement;

    .line 116
    iget-object v0, p0, Lcom/itextpdf/layout/element/Paragraph;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-object p0
.end method

.method public add(Lcom/itextpdf/layout/element/ILeafElement;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 1
    .param p1, "element"    # Lcom/itextpdf/layout/element/ILeafElement;

    .line 111
    iget-object v0, p0, Lcom/itextpdf/layout/element/Paragraph;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-object p0
.end method

.method public add(Ljava/lang/String;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/itextpdf/layout/element/Text;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/element/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Paragraph;->add(Lcom/itextpdf/layout/element/ILeafElement;)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Ljava/util/List;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2::",
            "Lcom/itextpdf/layout/element/ILeafElement;",
            ">(",
            "Ljava/util/List<",
            "TT2;>;)",
            "Lcom/itextpdf/layout/element/Paragraph;"
        }
    .end annotation

    .line 128
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<TT2;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/ILeafElement;

    .line 129
    .local v1, "element":Lcom/itextpdf/layout/element/ILeafElement;
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/element/Paragraph;->add(Lcom/itextpdf/layout/element/ILeafElement;)Lcom/itextpdf/layout/element/Paragraph;

    .line 130
    .end local v1    # "element":Lcom/itextpdf/layout/element/ILeafElement;
    goto :goto_0

    .line 131
    :cond_0
    return-object p0
.end method

.method public addTabStops(Ljava/util/List;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/element/TabStop;",
            ">;)",
            "Lcom/itextpdf/layout/element/Paragraph;"
        }
    .end annotation

    .line 154
    .local p1, "tabStops":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/element/TabStop;>;"
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/element/Paragraph;->addTabStopsAsProperty(Ljava/util/List;)V

    .line 155
    return-object p0
.end method

.method public varargs addTabStops([Lcom/itextpdf/layout/element/TabStop;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 1
    .param p1, "tabStops"    # [Lcom/itextpdf/layout/element/TabStop;

    .line 142
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/element/Paragraph;->addTabStopsAsProperty(Ljava/util/List;)V

    .line 143
    return-object p0
.end method

.method public getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/itextpdf/layout/element/Paragraph;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    const-string v1, "P"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/Paragraph;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Paragraph;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    return-object v0
.end method

.method public getDefaultProperty(I)Ljava/lang/Object;
    .locals 4
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 176
    sparse-switch p1, :sswitch_data_0

    .line 187
    invoke-super {p0, p1}, Lcom/itextpdf/layout/element/BlockElement;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 185
    :sswitch_0
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 183
    :sswitch_1
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    return-object v0

    .line 178
    :sswitch_2
    new-instance v0, Lcom/itextpdf/layout/property/Leading;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/itextpdf/layout/element/Paragraph;->childElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/itextpdf/layout/element/Paragraph;->childElements:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/itextpdf/layout/element/Image;

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v2, 0x3faccccd    # 1.35f

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/Leading;-><init>(IF)V

    return-object v0

    .line 180
    :sswitch_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_3
        0x21 -> :sswitch_2
        0x2b -> :sswitch_1
        0x2e -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method protected makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 259
    new-instance v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;-><init>(Lcom/itextpdf/layout/element/Paragraph;)V

    return-object v0
.end method

.method public removeTabStop(F)Lcom/itextpdf/layout/element/Paragraph;
    .locals 2
    .param p1, "tabStopPosition"    # F

    .line 167
    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Paragraph;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 168
    .local v0, "tabStops":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Float;Lcom/itextpdf/layout/element/TabStop;>;"
    if-eqz v0, :cond_0

    .line 169
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    return-object p0
.end method

.method public setFirstLineIndent(F)Lcom/itextpdf/layout/element/Paragraph;
    .locals 2
    .param p1, "indent"    # F

    .line 199
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    .line 200
    return-object p0
.end method

.method public setFixedLeading(F)Lcom/itextpdf/layout/element/Paragraph;
    .locals 2
    .param p1, "leading"    # F

    .line 233
    new-instance v0, Lcom/itextpdf/layout/property/Leading;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/layout/property/Leading;-><init>(IF)V

    const/16 v1, 0x21

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    .line 234
    return-object p0
.end method

.method public setMultipliedLeading(F)Lcom/itextpdf/layout/element/Paragraph;
    .locals 2
    .param p1, "leading"    # F

    .line 245
    new-instance v0, Lcom/itextpdf/layout/property/Leading;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/layout/property/Leading;-><init>(IF)V

    const/16 v1, 0x21

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    .line 246
    return-object p0
.end method

.method public setOrphansControl(Lcom/itextpdf/layout/property/ParagraphOrphansControl;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 1
    .param p1, "orphansControl"    # Lcom/itextpdf/layout/property/ParagraphOrphansControl;

    .line 210
    const/16 v0, 0x79

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    .line 211
    return-object p0
.end method

.method public setWidowsControl(Lcom/itextpdf/layout/property/ParagraphWidowsControl;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 1
    .param p1, "widowsControl"    # Lcom/itextpdf/layout/property/ParagraphWidowsControl;

    .line 221
    const/16 v0, 0x7a

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    .line 222
    return-object p0
.end method
