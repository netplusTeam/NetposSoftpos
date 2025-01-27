.class Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy$1;
.super Ljava/lang/Object;
.source "RegexBasedLocationExtractionStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;->getResultantLocations()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;


# direct methods
.method constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;

    .line 103
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy$1;->this$0:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;)I
    .locals 6
    .param p1, "l1"    # Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;
    .param p2, "l2"    # Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;

    .line 106
    invoke-interface {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 107
    .local v0, "o1":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-interface {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 108
    .local v1, "o2":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    cmpl-float v2, v2, v3

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 109
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v5

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    return v3

    .line 111
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 103
    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;

    check-cast p2, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/RegexBasedLocationExtractionStrategy$1;->compare(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IPdfTextLocation;)I

    move-result p1

    return p1
.end method
