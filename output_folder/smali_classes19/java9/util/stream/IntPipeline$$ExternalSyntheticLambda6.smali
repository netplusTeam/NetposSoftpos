.class public final synthetic Ljava9/util/stream/IntPipeline$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava9/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava9/util/IntSummaryStatistics;

    check-cast p2, Ljava9/util/IntSummaryStatistics;

    invoke-virtual {p1, p2}, Ljava9/util/IntSummaryStatistics;->combine(Ljava9/util/IntSummaryStatistics;)V

    return-void
.end method
