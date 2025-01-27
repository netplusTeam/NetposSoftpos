.class public abstract Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6;
.super Lcom/itextpdf/io/font/otf/ContextualSubTable;
.source "SubTableLookup6.java"


# static fields
.field private static final serialVersionUID:J = -0x67b0812b06df8f46L


# direct methods
.method protected constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V
    .locals 0
    .param p1, "openReader"    # Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;
    .param p2, "lookupFlag"    # I

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/io/font/otf/ContextualSubTable;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    .line 61
    return-void
.end method


# virtual methods
.method protected checkIfBacktrackContextMatch(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/io/font/otf/ContextualSubstRule;)Z
    .locals 4
    .param p1, "line"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p2, "rule"    # Lcom/itextpdf/io/font/otf/ContextualSubstRule;

    .line 118
    new-instance v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;

    invoke-direct {v0}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;-><init>()V

    .line 119
    .local v0, "gidx":Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;
    iput-object p1, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 120
    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iput v1, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    .line 121
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p2}, Lcom/itextpdf/io/font/otf/ContextualSubstRule;->getBacktrackContextLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v3, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6;->lookupFlag:I

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->previousGlyph(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    .line 123
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Lcom/itextpdf/io/font/otf/ContextualSubstRule;->isGlyphMatchesBacktrack(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    goto :goto_1

    .line 121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/itextpdf/io/font/otf/ContextualSubstRule;->getBacktrackContextLength()I

    move-result v2

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method protected checkIfLookaheadContextMatch(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/io/font/otf/ContextualSubstRule;I)Z
    .locals 4
    .param p1, "line"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p2, "rule"    # Lcom/itextpdf/io/font/otf/ContextualSubstRule;
    .param p3, "startIdx"    # I

    .line 97
    new-instance v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;

    invoke-direct {v0}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;-><init>()V

    .line 98
    .local v0, "gidx":Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;
    iput-object p1, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 99
    iput p3, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    .line 100
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p2}, Lcom/itextpdf/io/font/otf/ContextualSubstRule;->getLookaheadContextLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v3, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6;->lookupFlag:I

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->nextGlyph(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    .line 102
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Lcom/itextpdf/io/font/otf/ContextualSubstRule;->isGlyphMatchesLookahead(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    goto :goto_1

    .line 100
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/itextpdf/io/font/otf/ContextualSubstRule;->getLookaheadContextLength()I

    move-result v2

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public bridge synthetic getMatchingContextRule(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/io/font/otf/ContextualRule;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6;->getMatchingContextRule(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/io/font/otf/ContextualSubstRule;

    move-result-object p1

    return-object p1
.end method

.method public getMatchingContextRule(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/io/font/otf/ContextualSubstRule;
    .locals 7
    .param p1, "line"    # Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 65
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 66
    return-object v2

    .line 68
    :cond_0
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    .line 69
    .local v0, "g":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6;->getSetOfRulesForStartGlyph(I)Ljava/util/List;

    move-result-object v1

    .line 70
    .local v1, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/ContextualSubstRule;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/io/font/otf/ContextualSubstRule;

    .line 71
    .local v4, "rule":Lcom/itextpdf/io/font/otf/ContextualSubstRule;
    invoke-virtual {p0, p1, v4}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6;->checkIfContextMatch(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/io/font/otf/ContextualSubstRule;)I

    move-result v5

    .line 73
    .local v5, "lastGlyphIndex":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 74
    invoke-virtual {p0, p1, v4, v5}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6;->checkIfLookaheadContextMatch(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/io/font/otf/ContextualSubstRule;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    invoke-virtual {p0, p1, v4}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6;->checkIfBacktrackContextMatch(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/io/font/otf/ContextualSubstRule;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 77
    iget v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iput v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 78
    add-int/lit8 v2, v5, 0x1

    iput v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 79
    return-object v4

    .line 81
    .end local v4    # "rule":Lcom/itextpdf/io/font/otf/ContextualSubstRule;
    .end local v5    # "lastGlyphIndex":I
    :cond_1
    goto :goto_0

    .line 83
    :cond_2
    return-object v2
.end method
