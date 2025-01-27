.class Lcom/itextpdf/layout/renderer/FlexItemInfo;
.super Ljava/lang/Object;
.source "FlexItemInfo.java"


# instance fields
.field private rectangle:Lcom/itextpdf/kernel/geom/Rectangle;

.field private renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 0
    .param p1, "renderer"    # Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .param p2, "rectangle"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/FlexItemInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 54
    iput-object p2, p0, Lcom/itextpdf/layout/renderer/FlexItemInfo;->rectangle:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 55
    return-void
.end method


# virtual methods
.method public getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexItemInfo;->rectangle:Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method public getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexItemInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    return-object v0
.end method
