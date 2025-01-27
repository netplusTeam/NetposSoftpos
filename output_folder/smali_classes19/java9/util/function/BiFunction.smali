.class public interface abstract Ljava9/util/function/BiFunction;
.super Ljava/lang/Object;
.source "BiFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$andThen$19(Ljava9/util/function/BiFunction;Ljava9/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Ljava9/util/function/BiFunction;
    .param p2, "t"    # Ljava/lang/Object;
    .param p3, "u"    # Ljava/lang/Object;

    .line 70
    .local p0, "this":Ljava9/util/function/BiFunction;, "Ljava9/util/function/BiFunction<TT;TU;TR;>;"
    invoke-interface {p0, p2, p3}, Ljava9/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public andThen(Ljava9/util/function/Function;)Ljava9/util/function/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TR;+TV;>;)",
            "Ljava9/util/function/BiFunction<",
            "TT;TU;TV;>;"
        }
    .end annotation

    .line 69
    .local p0, "this":Ljava9/util/function/BiFunction;, "Ljava9/util/function/BiFunction<TT;TU;TR;>;"
    .local p1, "after":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TR;+TV;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava9/util/function/BiFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/BiFunction$$ExternalSyntheticLambda0;-><init>(Ljava9/util/function/BiFunction;Ljava9/util/function/Function;)V

    return-object v0
.end method

.method public abstract apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)TR;"
        }
    .end annotation
.end method
