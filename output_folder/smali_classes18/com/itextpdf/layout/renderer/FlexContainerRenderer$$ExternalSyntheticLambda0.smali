.class public final synthetic Lcom/itextpdf/layout/renderer/FlexContainerRenderer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/itextpdf/layout/renderer/IRenderer;


# direct methods
.method public synthetic constructor <init>(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/itextpdf/layout/renderer/IRenderer;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast p1, Lcom/itextpdf/layout/renderer/FlexItemInfo;

    invoke-static {v0, p1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->lambda$createSplitAndOverflowRenderers$0(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/FlexItemInfo;)Z

    move-result p1

    return p1
.end method
