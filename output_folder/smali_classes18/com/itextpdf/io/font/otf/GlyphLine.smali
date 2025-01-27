.class public Lcom/itextpdf/io/font/otf/GlyphLine;
.super Ljava/lang/Object;
.source "GlyphLine.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;,
        Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;,
        Lcom/itextpdf/io/font/otf/GlyphLine$IGlyphLineFilter;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x411594a2ac3f3bd1L


# instance fields
.field protected actualText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;",
            ">;"
        }
    .end annotation
.end field

.field public end:I

.field protected glyphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;"
        }
    .end annotation
.end field

.field public idx:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V
    .locals 1
    .param p1, "other"    # Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iget-object v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    .line 109
    iget-object v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    .line 110
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 111
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 112
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/font/otf/GlyphLine;II)V
    .locals 1
    .param p1, "other"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iget-object v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    .line 124
    iget-object v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    .line 127
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 128
    sub-int v0, p3, p2

    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 129
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p1, "glyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/List;II)V
    .locals 0
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;II)V"
        }
    .end annotation

    .line 83
    .local p1, "glyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    .line 85
    iput p2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 86
    iput p3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 87
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/util/List;II)V
    .locals 0
    .param p3, "start"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;",
            ">;II)V"
        }
    .end annotation

    .line 98
    .local p1, "glyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    .local p2, "actualText":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Ljava/util/List;II)V

    .line 99
    iput-object p2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    .line 100
    return-void
.end method

.method private addAllGlyphs(ILjava/util/List;)V
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;)V"
        }
    .end annotation

    .line 423
    .local p2, "additionalGlyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 424
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 425
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private removeGlyph(I)V
    .locals 1
    .param p1, "index"    # I

    .line 416
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 417
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 418
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 420
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILcom/itextpdf/io/font/otf/Glyph;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "glyph"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 192
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 194
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 196
    :cond_0
    return-void
.end method

.method public add(Lcom/itextpdf/io/font/otf/Glyph;)V
    .locals 2
    .param p1, "glyph"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 185
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 187
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    return-void
.end method

.method public add(Lcom/itextpdf/io/font/otf/GlyphLine;)V
    .locals 5
    .param p1, "other"    # Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 213
    iget-object v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    iget-object v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    iget v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget v4, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget-object v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget v4, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 224
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 225
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 228
    :cond_2
    return-void
.end method

.method public copy(II)Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 3
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 168
    new-instance v0, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v0}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>()V

    .line 169
    .local v0, "glyphLine":Lcom/itextpdf/io/font/otf/GlyphLine;
    const/4 v1, 0x0

    iput v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 170
    sub-int v1, p2, p1

    iput v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    .line 172
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    .line 173
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 367
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 368
    return v0

    .line 370
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    .line 373
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 374
    .local v2, "other":Lcom/itextpdf/io/font/otf/GlyphLine;
    iget v3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget v4, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr v3, v4

    iget v4, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget v5, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr v4, v5

    if-eq v3, v4, :cond_2

    .line 375
    return v1

    .line 377
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-nez v3, :cond_3

    iget-object v4, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-nez v4, :cond_4

    :cond_3
    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-nez v3, :cond_5

    .line 378
    :cond_4
    return v1

    .line 380
    :cond_5
    iget v3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v3, v4, :cond_e

    .line 381
    iget v4, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr v4, v5

    .line 382
    .local v4, "otherPos":I
    invoke-virtual {p0, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    .line 383
    .local v5, "myGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v2, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v6

    .line 384
    .local v6, "otherGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-nez v5, :cond_6

    if-nez v6, :cond_7

    :cond_6
    if-eqz v5, :cond_8

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/otf/Glyph;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 385
    :cond_7
    return v1

    .line 387
    :cond_8
    iget-object v7, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    const/4 v8, 0x0

    if-nez v7, :cond_9

    move-object v7, v8

    goto :goto_1

    :cond_9
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;

    .line 388
    .local v7, "myAT":Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;
    :goto_1
    iget-object v9, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-nez v9, :cond_a

    goto :goto_2

    :cond_a
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;

    .line 389
    .local v8, "otherAT":Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;
    :goto_2
    if-nez v7, :cond_b

    if-nez v8, :cond_c

    :cond_b
    if-eqz v7, :cond_d

    invoke-virtual {v7, v8}, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 390
    :cond_c
    return v1

    .line 380
    .end local v4    # "otherPos":I
    .end local v5    # "myGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v6    # "otherGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v7    # "myAT":Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;
    .end local v8    # "otherAT":Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 393
    .end local v3    # "i":I
    :cond_e
    return v0

    .line 371
    .end local v2    # "other":Lcom/itextpdf/io/font/otf/GlyphLine;
    :cond_f
    :goto_3
    return v1
.end method

.method public filter(Lcom/itextpdf/io/font/otf/GlyphLine$IGlyphLineFilter;)Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 6
    .param p1, "filter"    # Lcom/itextpdf/io/font/otf/GlyphLine$IGlyphLineFilter;

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "anythingFiltered":Z
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget v3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .local v1, "filteredGlyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget v4, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 332
    .local v2, "filteredActualText":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;>;"
    :goto_0
    iget v3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v3, v4, :cond_3

    .line 333
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-interface {p1, v4}, Lcom/itextpdf/io/font/otf/GlyphLine$IGlyphLineFilter;->accept(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 334
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    if-eqz v2, :cond_2

    .line 336
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 339
    :cond_1
    const/4 v0, 0x1

    .line 332
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 342
    .end local v3    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 343
    new-instance v3, Lcom/itextpdf/io/font/otf/GlyphLine;

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Ljava/util/List;Ljava/util/List;II)V

    return-object v3

    .line 345
    :cond_4
    return-object p0
.end method

.method public get(I)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 1
    .param p1, "index"    # I

    .line 177
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/otf/Glyph;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    add-int/2addr v1, v2

    .line 400
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    add-int/2addr v0, v2

    .line 401
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iget v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v1, v2, :cond_0

    .line 402
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 405
    iget v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .restart local v1    # "i":I
    :goto_1
    iget v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v1, v2, :cond_2

    .line 406
    mul-int/lit8 v0, v0, 0x1f

    .line 407
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 408
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 405
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;",
            ">;"
        }
    .end annotation

    .line 362
    new-instance v0, Lcom/itextpdf/io/font/otf/ActualTextIterator;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/font/otf/ActualTextIterator;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V

    return-object v0
.end method

.method public replaceContent(Lcom/itextpdf/io/font/otf/GlyphLine;)V
    .locals 2
    .param p1, "other"    # Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 236
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 237
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget-object v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 238
    iget-object v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    goto :goto_0

    .line 242
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    iget-object v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 246
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    .line 248
    :goto_1
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 249
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 250
    return-void
.end method

.method public set(ILcom/itextpdf/io/font/otf/Glyph;)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 1
    .param p1, "index"    # I
    .param p2, "glyph"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 181
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/otf/Glyph;

    return-object v0
.end method

.method public setActualText(IILjava/lang/String;)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "text"    # Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;

    invoke-direct {v0, p3}, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "actualText":Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;
    move v1, p1

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_1

    .line 357
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 359
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setGlyphs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p1, "replacementGlyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    .line 203
    return-void
.end method

.method public size()I
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public substituteManyToOne(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;III)V
    .locals 7
    .param p1, "tableReader"    # Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;
    .param p2, "lookupFlag"    # I
    .param p3, "rightPartLen"    # I
    .param p4, "substitutionGlyphIndex"    # I

    .line 257
    new-instance v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;

    invoke-direct {v0}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;-><init>()V

    .line 258
    .local v0, "gidx":Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;
    iput-object p0, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 259
    iget v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iput v1, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v1, "chars":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget v3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/font/otf/Glyph;

    .line 263
    .local v2, "currentGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v3

    if-eqz v3, :cond_0

    .line 264
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/io/util/TextUtil;->convertFromUtf32(I)[C

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 269
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p3, :cond_4

    .line 270
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->nextGlyph(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    .line 271
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget v5, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/itextpdf/io/font/otf/Glyph;

    .line 272
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v4

    if-eqz v4, :cond_2

    .line 273
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 274
    :cond_2
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 275
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v4

    invoke-static {v4}, Lcom/itextpdf/io/util/TextUtil;->convertFromUtf32(I)[C

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 277
    :cond_3
    :goto_2
    iget v4, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    add-int/lit8 v5, v4, -0x1

    iput v5, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    invoke-direct {p0, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->removeGlyph(I)V

    .line 269
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 279
    .end local v3    # "j":I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    new-array v3, v3, [C

    .line 280
    .local v3, "newChars":[C
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4, v3, v5}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 281
    invoke-virtual {p1, p4}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    .line 282
    .local v4, "newGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v4, v3}, Lcom/itextpdf/io/font/otf/Glyph;->setChars([C)V

    .line 283
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget v6, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-interface {v5, v6, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget v5, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    sub-int/2addr v5, p3

    iput v5, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 285
    return-void
.end method

.method public substituteOneToMany(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;[I)V
    .locals 9
    .param p1, "tableReader"    # Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;
    .param p2, "substGlyphIds"    # [I

    .line 302
    const/4 v0, 0x0

    aget v0, p2, v0

    .line 303
    .local v0, "substCode":I
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/otf/Glyph;

    .line 304
    .local v1, "oldGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    .line 305
    .local v2, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget v4, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-interface {v3, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 307
    array-length v3, p2

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 308
    new-instance v3, Ljava/util/ArrayList;

    array-length v5, p2

    sub-int/2addr v5, v4

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 309
    .local v3, "additionalGlyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_0

    .line 310
    aget v0, p2, v5

    .line 311
    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    .line 312
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 314
    .end local v5    # "i":I
    :cond_0
    iget v5, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    add-int/2addr v5, v4

    invoke-direct {p0, v5, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->addAllGlyphs(ILjava/util/List;)V

    .line 315
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 316
    iget v6, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 317
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    iget v6, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    new-instance v7, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicodeString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 320
    iget-object v6, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    iget v7, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    add-int/lit8 v8, v7, 0x1

    add-int/2addr v8, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 319
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 323
    .end local v5    # "i":I
    :cond_2
    iget v5, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    array-length v6, p2

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 324
    iget v5, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    array-length v6, p2

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 326
    .end local v3    # "additionalGlyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    :cond_3
    return-void
.end method

.method public substituteOneToOne(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V
    .locals 4
    .param p1, "tableReader"    # Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;
    .param p2, "substitutionGlyphIndex"    # I

    .line 288
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/otf/Glyph;

    .line 289
    .local v0, "oldGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    .line 290
    .local v1, "newGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v2

    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/font/otf/Glyph;->setChars([C)V

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v2

    invoke-static {v2}, Lcom/itextpdf/io/util/TextUtil;->convertFromUtf32(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/font/otf/Glyph;->setChars([C)V

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v2

    invoke-static {v2}, Lcom/itextpdf/io/util/TextUtil;->convertFromUtf32(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/font/otf/Glyph;->setChars([C)V

    .line 297
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget v3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 157
    iget v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->toUnicodeString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnicodeString(II)Ljava/lang/String;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 140
    new-instance v0, Lcom/itextpdf/io/font/otf/ActualTextIterator;

    invoke-direct {v0, p0, p1, p2}, Lcom/itextpdf/io/font/otf/ActualTextIterator;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;II)V

    .line 141
    .local v0, "iter":Lcom/itextpdf/io/font/otf/ActualTextIterator;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v1, "str":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/ActualTextIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/ActualTextIterator;->next()Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;

    move-result-object v2

    .line 144
    .local v2, "part":Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;
    iget-object v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->actualText:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->actualText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 147
    :cond_0
    iget v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->start:I

    .local v3, "i":I
    :goto_1
    iget v4, v2, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    if-ge v3, v4, :cond_1

    .line 148
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicodeChars()[C

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 151
    .end local v2    # "part":Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;
    .end local v3    # "i":I
    :cond_1
    :goto_2
    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
