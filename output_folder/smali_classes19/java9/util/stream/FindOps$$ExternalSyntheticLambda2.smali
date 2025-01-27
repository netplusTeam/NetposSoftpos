.class public final synthetic Ljava9/util/stream/FindOps$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava9/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava9/util/OptionalLong;

    invoke-virtual {p1}, Ljava9/util/OptionalLong;->isPresent()Z

    move-result p1

    return p1
.end method
