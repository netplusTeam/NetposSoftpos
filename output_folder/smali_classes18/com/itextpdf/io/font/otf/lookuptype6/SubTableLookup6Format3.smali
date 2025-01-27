.class public Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3;
.super Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6;
.source "SubTableLookup6Format3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3$SubstRuleFormat3;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xa9addc51ddda112L


# instance fields
.field substitutionRule:Lcom/itextpdf/io/font/otf/ContextualSubstRule;


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3$SubstRuleFormat3;)V
    .locals 0
    .param p1, "openReader"    # Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;
    .param p2, "lookupFlag"    # I
    .param p3, "rule"    # Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3$SubstRuleFormat3;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    .line 63
    iput-object p3, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3;->substitutionRule:Lcom/itextpdf/io/font/otf/ContextualSubstRule;

    .line 64
    return-void
.end method


# virtual methods
.method protected getSetOfRulesForStartGlyph(I)Ljava/util/List;
    .locals 3
    .param p1, "startId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/ContextualSubstRule;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3;->substitutionRule:Lcom/itextpdf/io/font/otf/ContextualSubstRule;

    check-cast v0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3$SubstRuleFormat3;

    .line 69
    .local v0, "ruleFormat3":Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3$SubstRuleFormat3;
    iget-object v1, v0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3$SubstRuleFormat3;->inputCoverages:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v2, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3;->lookupFlag:I

    invoke-virtual {v1, p1, v2}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->isSkip(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3;->substitutionRule:Lcom/itextpdf/io/font/otf/ContextualSubstRule;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 72
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
