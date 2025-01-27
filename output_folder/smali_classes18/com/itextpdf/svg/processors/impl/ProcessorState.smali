.class public Lcom/itextpdf/svg/processors/impl/ProcessorState;
.super Ljava/lang/Object;
.source "ProcessorState.java"


# instance fields
.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/ProcessorState;->stack:Ljava/util/Stack;

    .line 61
    return-void
.end method


# virtual methods
.method public empty()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/ProcessorState;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pop()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/ProcessorState;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    return-object v0
.end method

.method public push(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V
    .locals 1
    .param p1, "svgNodeRenderer"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 78
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/ProcessorState;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public size()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/ProcessorState;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public top()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/ProcessorState;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    return-object v0
.end method
