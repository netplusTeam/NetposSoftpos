.class public Lcom/itextpdf/io/font/FontNames;
.super Ljava/lang/Object;
.source "FontNames.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xdf313bc9255b389L


# instance fields
.field protected allNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private allowEmbedding:Z

.field private cidFontName:Ljava/lang/String;

.field private familyName:[[Ljava/lang/String;

.field private fontName:Ljava/lang/String;

.field private fontStretch:Ljava/lang/String;

.field private fullName:[[Ljava/lang/String;

.field private macStyle:I

.field private style:Ljava/lang/String;

.field private subfamily:[[Ljava/lang/String;

.field private weight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/itextpdf/io/font/FontNames;->style:Ljava/lang/String;

    .line 73
    const/16 v0, 0x190

    iput v0, p0, Lcom/itextpdf/io/font/FontNames;->weight:I

    .line 75
    const-string v0, "Normal"

    iput-object v0, p0, Lcom/itextpdf/io/font/FontNames;->fontStretch:Ljava/lang/String;

    return-void
.end method

.method private listToArray(Ljava/util/List;)[[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)[[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 237
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[Ljava/lang/String;

    .line 238
    .local v0, "array":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 239
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aput-object v2, v0, v1

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public allowEmbedding()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/itextpdf/io/font/FontNames;->allowEmbedding:Z

    return v0
.end method

.method public getCidFontName()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/itextpdf/io/font/FontNames;->cidFontName:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyName()[[Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/itextpdf/io/font/FontNames;->familyName:[[Ljava/lang/String;

    return-object v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/itextpdf/io/font/FontNames;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method public getFontStretch()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/itextpdf/io/font/FontNames;->fontStretch:Ljava/lang/String;

    return-object v0
.end method

.method public getFontWeight()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->weight:I

    return v0
.end method

.method public getFullName()[[Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/itextpdf/io/font/FontNames;->fullName:[[Ljava/lang/String;

    return-object v0
.end method

.method protected getMacStyle()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    return v0
.end method

.method public getNames(I)[[Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .line 88
    iget-object v0, p0, Lcom/itextpdf/io/font/FontNames;->allNames:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 89
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/FontNames;->listToArray(Ljava/util/List;)[[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [[Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/itextpdf/io/font/FontNames;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getSubfamily()Ljava/lang/String;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/itextpdf/io/font/FontNames;->subfamily:[[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public isBold()Z
    .locals 2

    .line 151
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isCondensed()Z
    .locals 1

    .line 171
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExtended()Z
    .locals 1

    .line 175
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isItalic()Z
    .locals 1

    .line 155
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOutline()Z
    .locals 1

    .line 163
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShadow()Z
    .locals 1

    .line 167
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnderline()Z
    .locals 1

    .line 159
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setAllNames(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 179
    .local p1, "allNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<[Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/itextpdf/io/font/FontNames;->allNames:Ljava/util/Map;

    .line 180
    return-void
.end method

.method protected setAllowEmbedding(Z)V
    .locals 0
    .param p1, "allowEmbedding"    # Z

    .line 233
    iput-boolean p1, p0, Lcom/itextpdf/io/font/FontNames;->allowEmbedding:Z

    .line 234
    return-void
.end method

.method protected setCidFontName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cidFontName"    # Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/itextpdf/io/font/FontNames;->cidFontName:Ljava/lang/String;

    .line 196
    return-void
.end method

.method protected setFamilyName(Ljava/lang/String;)V
    .locals 5
    .param p1, "familyName"    # Ljava/lang/String;

    .line 203
    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object p1, v2, v0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/itextpdf/io/font/FontNames;->familyName:[[Ljava/lang/String;

    .line 204
    return-void
.end method

.method protected setFamilyName([[Ljava/lang/String;)V
    .locals 0
    .param p1, "familyName"    # [[Ljava/lang/String;

    .line 199
    iput-object p1, p0, Lcom/itextpdf/io/font/FontNames;->familyName:[[Ljava/lang/String;

    .line 200
    return-void
.end method

.method protected setFontName(Ljava/lang/String;)V
    .locals 0
    .param p1, "psFontName"    # Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lcom/itextpdf/io/font/FontNames;->fontName:Ljava/lang/String;

    .line 192
    return-void
.end method

.method protected setFontStretch(Ljava/lang/String;)V
    .locals 0
    .param p1, "fontStretch"    # Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcom/itextpdf/io/font/FontNames;->fontStretch:Ljava/lang/String;

    .line 144
    return-void
.end method

.method protected setFontWeight(I)V
    .locals 1
    .param p1, "weight"    # I

    .line 125
    invoke-static {p1}, Lcom/itextpdf/io/font/constants/FontWeights;->normalizeFontWeight(I)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/FontNames;->weight:I

    .line 126
    return-void
.end method

.method protected setFullName(Ljava/lang/String;)V
    .locals 5
    .param p1, "fullName"    # Ljava/lang/String;

    .line 187
    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object p1, v2, v0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/itextpdf/io/font/FontNames;->fullName:[[Ljava/lang/String;

    .line 188
    return-void
.end method

.method protected setFullName([[Ljava/lang/String;)V
    .locals 0
    .param p1, "fullName"    # [[Ljava/lang/String;

    .line 183
    iput-object p1, p0, Lcom/itextpdf/io/font/FontNames;->fullName:[[Ljava/lang/String;

    .line 184
    return-void
.end method

.method protected setMacStyle(I)V
    .locals 0
    .param p1, "macStyle"    # I

    .line 225
    iput p1, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    .line 226
    return-void
.end method

.method protected setStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "style"    # Ljava/lang/String;

    .line 207
    iput-object p1, p0, Lcom/itextpdf/io/font/FontNames;->style:Ljava/lang/String;

    .line 208
    return-void
.end method

.method protected setSubfamily(Ljava/lang/String;)V
    .locals 5
    .param p1, "subfamily"    # Ljava/lang/String;

    .line 211
    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object p1, v2, v0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/itextpdf/io/font/FontNames;->subfamily:[[Ljava/lang/String;

    .line 212
    return-void
.end method

.method protected setSubfamily([[Ljava/lang/String;)V
    .locals 0
    .param p1, "subfamily"    # [[Ljava/lang/String;

    .line 215
    iput-object p1, p0, Lcom/itextpdf/io/font/FontNames;->subfamily:[[Ljava/lang/String;

    .line 216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 246
    invoke-virtual {p0}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method
