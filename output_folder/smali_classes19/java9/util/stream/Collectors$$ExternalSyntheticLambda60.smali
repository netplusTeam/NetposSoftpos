.class public final synthetic Ljava9/util/stream/Collectors$$ExternalSyntheticLambda60;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava9/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [D

    invoke-static {p1}, Ljava9/util/stream/Collectors;->lambda$averagingDouble$122([D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
