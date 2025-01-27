.class public Lcom/itextpdf/styledxmlparser/CssRuleSetComparator;
.super Ljava/lang/Object;
.source "CssRuleSetComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/itextpdf/styledxmlparser/css/CssRuleSet;",
        ">;"
    }
.end annotation


# instance fields
.field private selectorComparator:Lcom/itextpdf/styledxmlparser/css/selector/CssSelectorComparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/selector/CssSelectorComparator;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelectorComparator;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/CssRuleSetComparator;->selectorComparator:Lcom/itextpdf/styledxmlparser/css/selector/CssSelectorComparator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/itextpdf/styledxmlparser/css/CssRuleSet;Lcom/itextpdf/styledxmlparser/css/CssRuleSet;)I
    .locals 3
    .param p1, "o1"    # Lcom/itextpdf/styledxmlparser/css/CssRuleSet;
    .param p2, "o2"    # Lcom/itextpdf/styledxmlparser/css/CssRuleSet;

    .line 65
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/CssRuleSetComparator;->selectorComparator:Lcom/itextpdf/styledxmlparser/css/selector/CssSelectorComparator;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->getSelector()Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    move-result-object v1

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->getSelector()Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelectorComparator;->compare(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 55
    check-cast p1, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;

    check-cast p2, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/CssRuleSetComparator;->compare(Lcom/itextpdf/styledxmlparser/css/CssRuleSet;Lcom/itextpdf/styledxmlparser/css/CssRuleSet;)I

    move-result p1

    return p1
.end method
