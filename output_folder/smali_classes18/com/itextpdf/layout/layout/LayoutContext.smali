.class public Lcom/itextpdf/layout/layout/LayoutContext;
.super Ljava/lang/Object;
.source "LayoutContext.java"


# instance fields
.field protected area:Lcom/itextpdf/layout/layout/LayoutArea;

.field protected clippedHeight:Z

.field protected floatRendererAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field protected marginsCollapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/layout/LayoutArea;)V
    .locals 1
    .param p1, "area"    # Lcom/itextpdf/layout/layout/LayoutArea;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/layout/LayoutContext;->floatRendererAreas:Ljava/util/List;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/layout/LayoutContext;->clippedHeight:Z

    .line 72
    iput-object p1, p0, Lcom/itextpdf/layout/layout/LayoutContext;->area:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V
    .locals 1
    .param p1, "area"    # Lcom/itextpdf/layout/layout/LayoutArea;
    .param p2, "marginsCollapseInfo"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/layout/LayoutContext;->floatRendererAreas:Ljava/util/List;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/layout/LayoutContext;->clippedHeight:Z

    .line 76
    iput-object p1, p0, Lcom/itextpdf/layout/layout/LayoutContext;->area:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 77
    iput-object p2, p0, Lcom/itextpdf/layout/layout/LayoutContext;->marginsCollapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;Ljava/util/List;)V
    .locals 0
    .param p1, "area"    # Lcom/itextpdf/layout/layout/LayoutArea;
    .param p2, "marginsCollapseInfo"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/layout/LayoutArea;",
            "Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p3, "floatedRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    .line 82
    if-eqz p3, :cond_0

    .line 83
    iput-object p3, p0, Lcom/itextpdf/layout/layout/LayoutContext;->floatRendererAreas:Ljava/util/List;

    .line 85
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;Ljava/util/List;Z)V
    .locals 0
    .param p1, "area"    # Lcom/itextpdf/layout/layout/LayoutArea;
    .param p2, "marginsCollapseInfo"    # Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .param p4, "clippedHeight"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/layout/LayoutArea;",
            "Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;Z)V"
        }
    .end annotation

    .line 93
    .local p3, "floatedRendererAreas":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    .line 94
    if-eqz p3, :cond_0

    .line 95
    iput-object p3, p0, Lcom/itextpdf/layout/layout/LayoutContext;->floatRendererAreas:Ljava/util/List;

    .line 97
    :cond_0
    iput-boolean p4, p0, Lcom/itextpdf/layout/layout/LayoutContext;->clippedHeight:Z

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V
    .locals 0
    .param p1, "area"    # Lcom/itextpdf/layout/layout/LayoutArea;
    .param p2, "clippedHeight"    # Z

    .line 88
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    .line 89
    iput-boolean p2, p0, Lcom/itextpdf/layout/layout/LayoutContext;->clippedHeight:Z

    .line 90
    return-void
.end method


# virtual methods
.method public getArea()Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutContext;->area:Lcom/itextpdf/layout/layout/LayoutArea;

    return-object v0
.end method

.method public getFloatRendererAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutContext;->floatRendererAreas:Ljava/util/List;

    return-object v0
.end method

.method public getMarginsCollapseInfo()Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutContext;->marginsCollapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    return-object v0
.end method

.method public isClippedHeight()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/itextpdf/layout/layout/LayoutContext;->clippedHeight:Z

    return v0
.end method

.method public setClippedHeight(Z)V
    .locals 0
    .param p1, "clippedHeight"    # Z

    .line 132
    iput-boolean p1, p0, Lcom/itextpdf/layout/layout/LayoutContext;->clippedHeight:Z

    .line 133
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutContext;->area:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
