.class public final synthetic Ljava9/util/stream/Collectors$$ExternalSyntheticLambda38;
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

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Ljava9/util/stream/Collectors;->lambda$toUnmodifiableSet$89(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
