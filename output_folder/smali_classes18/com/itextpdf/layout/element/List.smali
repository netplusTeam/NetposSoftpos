.class public Lcom/itextpdf/layout/element/List;
.super Lcom/itextpdf/layout/element/BlockElement;
.source "List.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/layout/element/BlockElement<",
        "Lcom/itextpdf/layout/element/List;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LIST_SYMBOL:Ljava/lang/String; = "- "


# instance fields
.field protected tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/property/ListNumberingType;)V
    .locals 0
    .param p1, "listNumberingType"    # Lcom/itextpdf/layout/property/ListNumberingType;

    .line 81
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    .line 82
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/List;->setListSymbol(Lcom/itextpdf/layout/property/ListNumberingType;)Lcom/itextpdf/layout/element/List;

    .line 83
    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/layout/element/ListItem;)Lcom/itextpdf/layout/element/List;
    .locals 1
    .param p1, "listItem"    # Lcom/itextpdf/layout/element/ListItem;

    .line 108
    iget-object v0, p0, Lcom/itextpdf/layout/element/List;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-object p0
.end method

.method public add(Ljava/lang/String;)Lcom/itextpdf/layout/element/List;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/itextpdf/layout/element/ListItem;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/element/ListItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/List;->add(Lcom/itextpdf/layout/element/ListItem;)Lcom/itextpdf/layout/element/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/itextpdf/layout/element/List;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    const-string v1, "L"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/List;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/List;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    return-object v0
.end method

.method public getDefaultProperty(I)Ljava/lang/Object;
    .locals 2
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 87
    sparse-switch p1, :sswitch_data_0

    .line 97
    invoke-super {p0, p1}, Lcom/itextpdf/layout/element/BlockElement;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 95
    :sswitch_0
    sget-object v0, Lcom/itextpdf/layout/property/ListSymbolPosition;->DEFAULT:Lcom/itextpdf/layout/property/ListSymbolPosition;

    return-object v0

    .line 93
    :sswitch_1
    const-string v0, ". "

    return-object v0

    .line 91
    :sswitch_2
    const-string v0, ""

    return-object v0

    .line 89
    :sswitch_3
    new-instance v0, Lcom/itextpdf/layout/element/Text;

    const-string v1, "- "

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/element/Text;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x29 -> :sswitch_2
        0x2a -> :sswitch_1
        0x53 -> :sswitch_0
    .end sparse-switch
.end method

.method public getPostSymbolText()Ljava/lang/String;
    .locals 1

    .line 229
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/List;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPreSymbolText()Ljava/lang/String;
    .locals 1

    .line 247
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/List;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolIndent()Ljava/lang/Float;
    .locals 1

    .line 209
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/List;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method protected makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 269
    new-instance v0, Lcom/itextpdf/layout/renderer/ListRenderer;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/renderer/ListRenderer;-><init>(Lcom/itextpdf/layout/element/List;)V

    return-object v0
.end method

.method public setItemStartIndex(I)Lcom/itextpdf/layout/element/List;
    .locals 2
    .param p1, "start"    # I

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/List;->setProperty(ILjava/lang/Object;)V

    .line 130
    return-object p0
.end method

.method public setListSymbol(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/List;
    .locals 1
    .param p1, "image"    # Lcom/itextpdf/layout/element/Image;

    .line 164
    const/16 v0, 0x25

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/List;->setProperty(ILjava/lang/Object;)V

    .line 165
    return-object p0
.end method

.method public setListSymbol(Lcom/itextpdf/layout/element/Text;)Lcom/itextpdf/layout/element/List;
    .locals 1
    .param p1, "text"    # Lcom/itextpdf/layout/element/Text;

    .line 152
    const/16 v0, 0x25

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/List;->setProperty(ILjava/lang/Object;)V

    .line 153
    return-object p0
.end method

.method public setListSymbol(Lcom/itextpdf/layout/property/ListNumberingType;)Lcom/itextpdf/layout/element/List;
    .locals 1
    .param p1, "listNumberingType"    # Lcom/itextpdf/layout/property/ListNumberingType;

    .line 177
    sget-object v0, Lcom/itextpdf/layout/property/ListNumberingType;->ZAPF_DINGBATS_1:Lcom/itextpdf/layout/property/ListNumberingType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/itextpdf/layout/property/ListNumberingType;->ZAPF_DINGBATS_2:Lcom/itextpdf/layout/property/ListNumberingType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/itextpdf/layout/property/ListNumberingType;->ZAPF_DINGBATS_3:Lcom/itextpdf/layout/property/ListNumberingType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/itextpdf/layout/property/ListNumberingType;->ZAPF_DINGBATS_4:Lcom/itextpdf/layout/property/ListNumberingType;

    if-ne p1, v0, :cond_1

    .line 179
    :cond_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/List;->setPostSymbolText(Ljava/lang/String;)V

    .line 181
    :cond_1
    const/16 v0, 0x25

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/List;->setProperty(ILjava/lang/Object;)V

    .line 182
    return-object p0
.end method

.method public setListSymbol(Ljava/lang/String;)Lcom/itextpdf/layout/element/List;
    .locals 1
    .param p1, "symbol"    # Ljava/lang/String;

    .line 141
    new-instance v0, Lcom/itextpdf/layout/element/Text;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/element/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/List;->setListSymbol(Lcom/itextpdf/layout/element/Text;)Lcom/itextpdf/layout/element/List;

    move-result-object v0

    return-object v0
.end method

.method public setListSymbolAlignment(Lcom/itextpdf/layout/property/ListSymbolAlignment;)Lcom/itextpdf/layout/element/List;
    .locals 1
    .param p1, "alignment"    # Lcom/itextpdf/layout/property/ListSymbolAlignment;

    .line 199
    const/16 v0, 0x26

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/List;->setProperty(ILjava/lang/Object;)V

    .line 200
    return-object p0
.end method

.method public setPostSymbolText(Ljava/lang/String;)V
    .locals 1
    .param p1, "postSymbolText"    # Ljava/lang/String;

    .line 238
    const/16 v0, 0x2a

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/List;->setProperty(ILjava/lang/Object;)V

    .line 239
    return-void
.end method

.method public setPreSymbolText(Ljava/lang/String;)V
    .locals 1
    .param p1, "preSymbolText"    # Ljava/lang/String;

    .line 256
    const/16 v0, 0x29

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/List;->setProperty(ILjava/lang/Object;)V

    .line 257
    return-void
.end method

.method public setSymbolIndent(F)Lcom/itextpdf/layout/element/List;
    .locals 2
    .param p1, "symbolIndent"    # F

    .line 219
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/List;->setProperty(ILjava/lang/Object;)V

    .line 220
    return-object p0
.end method
