.class final Lcom/itextpdf/layout/font/FontSelectorKey;
.super Ljava/lang/Object;
.source "FontSelectorKey.java"


# instance fields
.field private fc:Lcom/itextpdf/layout/font/FontCharacteristics;

.field private fontFamilies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)V
    .locals 1
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

    .line 57
    .local p1, "fontFamilies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/layout/font/FontSelectorKey;->fontFamilies:Ljava/util/List;

    .line 59
    iput-object p2, p0, Lcom/itextpdf/layout/font/FontSelectorKey;->fc:Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 65
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 66
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/layout/font/FontSelectorKey;

    .line 68
    .local v2, "that":Lcom/itextpdf/layout/font/FontSelectorKey;
    iget-object v3, p0, Lcom/itextpdf/layout/font/FontSelectorKey;->fontFamilies:Ljava/util/List;

    iget-object v4, v2, Lcom/itextpdf/layout/font/FontSelectorKey;->fontFamilies:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/itextpdf/layout/font/FontSelectorKey;->fc:Lcom/itextpdf/layout/font/FontCharacteristics;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lcom/itextpdf/layout/font/FontSelectorKey;->fc:Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 69
    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/font/FontCharacteristics;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/itextpdf/layout/font/FontSelectorKey;->fc:Lcom/itextpdf/layout/font/FontCharacteristics;

    if-nez v3, :cond_3

    :goto_0
    goto :goto_1

    :cond_3
    move v0, v1

    .line 68
    :goto_1
    return v0

    .line 65
    .end local v2    # "that":Lcom/itextpdf/layout/font/FontSelectorKey;
    :cond_4
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSelectorKey;->fontFamilies:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 75
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/itextpdf/layout/font/FontSelectorKey;->fc:Lcom/itextpdf/layout/font/FontCharacteristics;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/itextpdf/layout/font/FontCharacteristics;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    .line 76
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method
