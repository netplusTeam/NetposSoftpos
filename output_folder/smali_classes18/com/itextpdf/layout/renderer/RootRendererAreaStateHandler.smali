.class Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;
.super Ljava/lang/Object;
.source "RootRendererAreaStateHandler.java"


# instance fields
.field private storedNextArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

.field private storedNextFloatRenderAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field private storedPreviousArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

.field private storedPreviousFloatRenderAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storedPreviousFloatRenderAreas:Ljava/util/List;

    .line 36
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storedNextFloatRenderAreas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public attemptGoBackToStoredPreviousStateAndStoreNextState(Lcom/itextpdf/layout/renderer/RootRenderer;)Z
    .locals 3
    .param p1, "rootRenderer"    # Lcom/itextpdf/layout/renderer/RootRenderer;

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "result":Z
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storedPreviousArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p1, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storedNextArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 43
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storedPreviousArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    iput-object v1, p1, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 44
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storedPreviousArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getPageNumber()I

    move-result v1

    iput v1, p1, Lcom/itextpdf/layout/renderer/RootRenderer;->currentPageNumber:I

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/itextpdf/layout/renderer/RootRenderer;->floatRendererAreas:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storedNextFloatRenderAreas:Ljava/util/List;

    .line 47
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storedPreviousFloatRenderAreas:Ljava/util/List;

    iput-object v1, p1, Lcom/itextpdf/layout/renderer/RootRenderer;->floatRendererAreas:Ljava/util/List;

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storedPreviousFloatRenderAreas:Ljava/util/List;

    .line 50
    iput-object v1, p0, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storedPreviousArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 52
    const/4 v0, 0x1

    .line 54
    :cond_0
    return v0
.end method

.method public attemptGoForwardToStoredNextState(Lcom/itextpdf/layout/renderer/RootRenderer;)Z
    .locals 1
    .param p1, "rootRenderer"    # Lcom/itextpdf/layout/renderer/RootRenderer;

    .line 58
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storedNextArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    if-eqz v0, :cond_0

    .line 59
    iput-object v0, p1, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 60
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storedNextArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getPageNumber()I

    move-result v0

    iput v0, p1, Lcom/itextpdf/layout/renderer/RootRenderer;->currentPageNumber:I

    .line 61
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storedNextFloatRenderAreas:Ljava/util/List;

    iput-object v0, p1, Lcom/itextpdf/layout/renderer/RootRenderer;->floatRendererAreas:Ljava/util/List;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storedNextArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 64
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storedNextFloatRenderAreas:Ljava/util/List;

    .line 65
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public storePreviousState(Lcom/itextpdf/layout/renderer/RootRenderer;)Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;
    .locals 2
    .param p1, "rootRenderer"    # Lcom/itextpdf/layout/renderer/RootRenderer;

    .line 72
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storedPreviousArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/itextpdf/layout/renderer/RootRenderer;->floatRendererAreas:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storedPreviousFloatRenderAreas:Ljava/util/List;

    .line 74
    return-object p0
.end method
