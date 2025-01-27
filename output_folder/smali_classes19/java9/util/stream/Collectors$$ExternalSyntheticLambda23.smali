.class public final synthetic Ljava9/util/stream/Collectors$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava9/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava9/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava9/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda23;->f$0:Ljava9/util/function/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda23;->f$0:Ljava9/util/function/Function;

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Ljava9/util/stream/Collectors;->lambda$groupingByConcurrent$142(Ljava9/util/function/Function;Ljava/util/concurrent/ConcurrentMap;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    return-object p1
.end method
