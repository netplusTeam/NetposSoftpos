.class Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;
.super Ljava/lang/Object;
.source "FontSelector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/font/FontSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PdfFontComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/itextpdf/layout/font/FontInfo;",
        ">;"
    }
.end annotation


# instance fields
.field fontFamilies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fontStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/font/FontCharacteristics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)V
    .locals 5
    .param p2, "fc"    # Lcom/itextpdf/layout/font/FontCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/layout/font/FontCharacteristics;",
            ")V"
        }
    .end annotation

    .line 109
    .local p1, "fontFamilies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontFamilies:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontStyles:Ljava/util/List;

    .line 112
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    .local v1, "fontFamily":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "lowercaseFontFamily":Ljava/lang/String;
    iget-object v3, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontFamilies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v3, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontStyles:Ljava/util/List;

    invoke-static {v2, p2}, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->parseFontStyle(Ljava/lang/String;Lcom/itextpdf/layout/font/FontCharacteristics;)Lcom/itextpdf/layout/font/FontCharacteristics;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v1    # "fontFamily":Ljava/lang/String;
    .end local v2    # "lowercaseFontFamily":Ljava/lang/String;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontStyles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :goto_1
    return-void
.end method

.method private static characteristicsSimilarity(Ljava/lang/String;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontInfo;Z)I
    .locals 6
    .param p0, "fontFamily"    # Ljava/lang/String;
    .param p1, "fc"    # Lcom/itextpdf/layout/font/FontCharacteristics;
    .param p2, "fontInfo"    # Lcom/itextpdf/layout/font/FontInfo;
    .param p3, "isLastFontFamilyToBeProcessed"    # Z

    .line 174
    invoke-virtual {p2}, Lcom/itextpdf/layout/font/FontInfo;->getDescriptor()Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->isBold()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/itextpdf/layout/font/FontInfo;->getDescriptor()Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFontWeight()I

    move-result v0

    const/16 v3, 0x1f4

    if-le v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 175
    .local v0, "isFontBold":Z
    :goto_1
    invoke-virtual {p2}, Lcom/itextpdf/layout/font/FontInfo;->getDescriptor()Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgramDescriptor;->isItalic()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lcom/itextpdf/layout/font/FontInfo;->getDescriptor()Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getItalicAngle()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    :cond_2
    move v1, v2

    .line 176
    .local v1, "isFontItalic":Z
    :cond_3
    invoke-virtual {p2}, Lcom/itextpdf/layout/font/FontInfo;->getDescriptor()Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontProgramDescriptor;->isMonospace()Z

    move-result v2

    .line 177
    .local v2, "isFontMonospace":Z
    const/4 v3, 0x0

    .line 180
    .local v3, "score":I
    const/4 v4, 0x0

    .line 183
    .local v4, "fontFamilySetByCharacteristics":Z
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontCharacteristics;->isMonospace()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 184
    const/4 v4, 0x1

    .line 185
    if-eqz v2, :cond_4

    .line 186
    add-int/lit8 v3, v3, 0x5

    goto :goto_2

    .line 188
    :cond_4
    add-int/lit8 v3, v3, -0x5

    goto :goto_2

    .line 191
    :cond_5
    if-eqz v2, :cond_6

    .line 192
    add-int/lit8 v3, v3, -0x1

    .line 196
    :cond_6
    :goto_2
    if-nez v4, :cond_a

    .line 198
    const-string v5, ""

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 199
    invoke-virtual {p2}, Lcom/itextpdf/layout/font/FontInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    .line 200
    invoke-virtual {p2}, Lcom/itextpdf/layout/font/FontInfo;->getDescriptor()Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFamilyNameLowerCase()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 201
    invoke-virtual {p2}, Lcom/itextpdf/layout/font/FontInfo;->getDescriptor()Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFamilyNameLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    nop

    .line 202
    invoke-virtual {p2}, Lcom/itextpdf/layout/font/FontInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {p2}, Lcom/itextpdf/layout/font/FontInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 203
    :cond_8
    add-int/lit8 v3, v3, 0xd

    goto :goto_3

    .line 205
    :cond_9
    if-nez p3, :cond_a

    .line 206
    return v3

    .line 212
    :cond_a
    :goto_3
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontCharacteristics;->isBold()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 213
    if-eqz v0, :cond_b

    .line 214
    add-int/lit8 v3, v3, 0x5

    goto :goto_4

    .line 216
    :cond_b
    add-int/lit8 v3, v3, -0x5

    goto :goto_4

    .line 219
    :cond_c
    if-eqz v0, :cond_d

    .line 220
    add-int/lit8 v3, v3, -0x3

    .line 224
    :cond_d
    :goto_4
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontCharacteristics;->isItalic()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 225
    if-eqz v1, :cond_e

    .line 226
    add-int/lit8 v3, v3, 0x5

    goto :goto_5

    .line 228
    :cond_e
    add-int/lit8 v3, v3, -0x5

    goto :goto_5

    .line 231
    :cond_f
    if-eqz v1, :cond_10

    .line 232
    add-int/lit8 v3, v3, -0x3

    .line 236
    :cond_10
    :goto_5
    return v3
.end method

.method private static parseFontStyle(Ljava/lang/String;Lcom/itextpdf/layout/font/FontCharacteristics;)Lcom/itextpdf/layout/font/FontCharacteristics;
    .locals 2
    .param p0, "fontFamily"    # Ljava/lang/String;
    .param p1, "fc"    # Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Lcom/itextpdf/layout/font/FontCharacteristics;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/FontCharacteristics;-><init>()V

    move-object p1, v0

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontCharacteristics;->isUndefined()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    const-string v0, "bold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/font/FontCharacteristics;->setBoldFlag(Z)Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 149
    :cond_1
    const-string v0, "italic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "oblique"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    :cond_2
    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/font/FontCharacteristics;->setItalicFlag(Z)Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 153
    :cond_3
    return-object p1
.end method


# virtual methods
.method public compare(Lcom/itextpdf/layout/font/FontInfo;Lcom/itextpdf/layout/font/FontInfo;)I
    .locals 7
    .param p1, "o1"    # Lcom/itextpdf/layout/font/FontInfo;
    .param p2, "o2"    # Lcom/itextpdf/layout/font/FontInfo;

    .line 125
    const/4 v0, 0x0

    .line 128
    .local v0, "res":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontFamilies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-nez v0, :cond_2

    .line 129
    iget-object v2, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontStyles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 130
    .local v2, "fc":Lcom/itextpdf/layout/font/FontCharacteristics;
    iget-object v3, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontFamilies:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    .local v3, "fontFamily":Ljava/lang/String;
    const-string v4, "monospace"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 133
    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/font/FontCharacteristics;->setMonospaceFlag(Z)Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 135
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontFamilies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move v4, v5

    .line 136
    .local v4, "isLastFontFamilyToBeProcessed":Z
    invoke-static {v3, v2, p2, v4}, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->characteristicsSimilarity(Ljava/lang/String;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontInfo;Z)I

    move-result v5

    invoke-static {v3, v2, p1, v4}, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->characteristicsSimilarity(Ljava/lang/String;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontInfo;Z)I

    move-result v6

    sub-int v0, v5, v6

    .line 128
    .end local v2    # "fc":Lcom/itextpdf/layout/font/FontCharacteristics;
    .end local v3    # "fontFamily":Ljava/lang/String;
    .end local v4    # "isLastFontFamilyToBeProcessed":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 105
    check-cast p1, Lcom/itextpdf/layout/font/FontInfo;

    check-cast p2, Lcom/itextpdf/layout/font/FontInfo;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->compare(Lcom/itextpdf/layout/font/FontInfo;Lcom/itextpdf/layout/font/FontInfo;)I

    move-result p1

    return p1
.end method
