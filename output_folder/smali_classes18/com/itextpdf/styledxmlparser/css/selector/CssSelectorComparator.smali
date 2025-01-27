.class public Lcom/itextpdf/styledxmlparser/css/selector/CssSelectorComparator;
.super Ljava/lang/Object;
.source "CssSelectorComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;)I
    .locals 2
    .param p1, "o1"    # Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;
    .param p2, "o2"    # Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    .line 57
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;->calculateSpecificity()I

    move-result v0

    invoke-interface {p2}, Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;->calculateSpecificity()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 50
    check-cast p1, Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    check-cast p2, Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelectorComparator;->compare(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;)I

    move-result p1

    return p1
.end method
