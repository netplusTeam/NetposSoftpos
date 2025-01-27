.class public abstract Lcom/itextpdf/io/font/otf/ContextualSubTable;
.super Lcom/itextpdf/io/font/otf/ContextualTable;
.source "ContextualSubTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/io/font/otf/ContextualTable<",
        "Lcom/itextpdf/io/font/otf/ContextualSubstRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1902c26d3cf09522L


# direct methods
.method protected constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V
    .locals 0
    .param p1, "openReader"    # Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;
    .param p2, "lookupFlag"    # I

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/io/font/otf/ContextualTable;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    .line 52
    return-void
.end method


# virtual methods
.method protected bridge synthetic checkIfContextMatch(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/io/font/otf/ContextualRule;)I
    .locals 0

    .line 46
    check-cast p2, Lcom/itextpdf/io/font/otf/ContextualSubstRule;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/io/font/otf/ContextualSubTable;->checkIfContextMatch(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/io/font/otf/ContextualSubstRule;)I

    move-result p1

    return p1
.end method

.method protected checkIfContextMatch(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/io/font/otf/ContextualSubstRule;)I
    .locals 1
    .param p1, "line"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p2, "rule"    # Lcom/itextpdf/io/font/otf/ContextualSubstRule;

    .line 61
    invoke-super {p0, p1, p2}, Lcom/itextpdf/io/font/otf/ContextualTable;->checkIfContextMatch(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/io/font/otf/ContextualRule;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMatchingContextRule(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/io/font/otf/ContextualRule;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/ContextualSubTable;->getMatchingContextRule(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/io/font/otf/ContextualSubstRule;

    move-result-object p1

    return-object p1
.end method

.method public getMatchingContextRule(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/io/font/otf/ContextualSubstRule;
    .locals 1
    .param p1, "line"    # Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 56
    invoke-super {p0, p1}, Lcom/itextpdf/io/font/otf/ContextualTable;->getMatchingContextRule(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/io/font/otf/ContextualRule;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/otf/ContextualSubstRule;

    return-object v0
.end method
