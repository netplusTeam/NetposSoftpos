.class public final synthetic Lcom/google/common/math/Stats$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/math/StatsAccumulator;

    check-cast p2, Ljava/lang/Number;

    invoke-static {p1, p2}, Lcom/google/common/math/Stats;->lambda$toStats$0(Lcom/google/common/math/StatsAccumulator;Ljava/lang/Number;)V

    return-void
.end method
