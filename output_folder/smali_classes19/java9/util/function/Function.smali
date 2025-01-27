.class public interface abstract Ljava9/util/function/Function;
.super Ljava/lang/Object;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static identity()Ljava9/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/function/Function<",
            "TT;TT;>;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava9/util/function/Function$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava9/util/function/Function$$ExternalSyntheticLambda2;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$andThen$2(Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Ljava9/util/function/Function;
    .param p2, "t"    # Ljava/lang/Object;

    .line 87
    .local p0, "this":Ljava9/util/function/Function;, "Ljava9/util/function/Function<TT;TR;>;"
    invoke-interface {p0, p2}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$compose$1(Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "_this"    # Ljava9/util/function/Function;
    .param p2, "v"    # Ljava/lang/Object;

    .line 67
    .local p0, "this":Ljava9/util/function/Function;, "Ljava9/util/function/Function<TT;TR;>;"
    invoke-interface {p1, p2}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$identity$3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "t"    # Ljava/lang/Object;

    .line 97
    return-object p0
.end method


# virtual methods
.method public andThen(Ljava9/util/function/Function;)Ljava9/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TR;+TV;>;)",
            "Ljava9/util/function/Function<",
            "TT;TV;>;"
        }
    .end annotation

    .line 86
    .local p0, "this":Ljava9/util/function/Function;, "Ljava9/util/function/Function<TT;TR;>;"
    .local p1, "after":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TR;+TV;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava9/util/function/Function$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/Function$$ExternalSyntheticLambda1;-><init>(Ljava9/util/function/Function;Ljava9/util/function/Function;)V

    return-object v0
.end method

.method public abstract apply(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation
.end method

.method public compose(Ljava9/util/function/Function;)Ljava9/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TV;+TT;>;)",
            "Ljava9/util/function/Function<",
            "TV;TR;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Ljava9/util/function/Function;, "Ljava9/util/function/Function<TT;TR;>;"
    .local p1, "before":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TV;+TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava9/util/function/Function$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/Function$$ExternalSyntheticLambda0;-><init>(Ljava9/util/function/Function;Ljava9/util/function/Function;)V

    return-object v0
.end method
