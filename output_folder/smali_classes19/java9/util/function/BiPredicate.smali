.class public interface abstract Ljava9/util/function/BiPredicate;
.super Ljava/lang/Object;
.source "BiPredicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$and$72(Ljava9/util/function/BiPredicate;Ljava9/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Ljava9/util/function/BiPredicate;
    .param p2, "t"    # Ljava/lang/Object;
    .param p3, "u"    # Ljava/lang/Object;

    .line 73
    .local p0, "this":Ljava9/util/function/BiPredicate;, "Ljava9/util/function/BiPredicate<TT;TU;>;"
    invoke-interface {p0, p2, p3}, Ljava9/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava9/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$negate$73(Ljava9/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Ljava9/util/function/BiPredicate;
    .param p1, "t"    # Ljava/lang/Object;
    .param p2, "u"    # Ljava/lang/Object;

    .line 84
    .local p0, "this":Ljava9/util/function/BiPredicate;, "Ljava9/util/function/BiPredicate<TT;TU;>;"
    invoke-interface {p0, p1, p2}, Ljava9/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$or$74(Ljava9/util/function/BiPredicate;Ljava9/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Ljava9/util/function/BiPredicate;
    .param p2, "t"    # Ljava/lang/Object;
    .param p3, "u"    # Ljava/lang/Object;

    .line 105
    .local p0, "this":Ljava9/util/function/BiPredicate;, "Ljava9/util/function/BiPredicate<TT;TU;>;"
    invoke-interface {p0, p2, p3}, Ljava9/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2, p3}, Ljava9/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public and(Ljava9/util/function/BiPredicate;)Ljava9/util/function/BiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/BiPredicate<",
            "-TT;-TU;>;)",
            "Ljava9/util/function/BiPredicate<",
            "TT;TU;>;"
        }
    .end annotation

    .line 72
    .local p0, "this":Ljava9/util/function/BiPredicate;, "Ljava9/util/function/BiPredicate<TT;TU;>;"
    .local p1, "other":Ljava9/util/function/BiPredicate;, "Ljava9/util/function/BiPredicate<-TT;-TU;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava9/util/function/BiPredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/BiPredicate$$ExternalSyntheticLambda0;-><init>(Ljava9/util/function/BiPredicate;Ljava9/util/function/BiPredicate;)V

    return-object v0
.end method

.method public negate()Ljava9/util/function/BiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/function/BiPredicate<",
            "TT;TU;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Ljava9/util/function/BiPredicate;, "Ljava9/util/function/BiPredicate<TT;TU;>;"
    new-instance v0, Ljava9/util/function/BiPredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Ljava9/util/function/BiPredicate$$ExternalSyntheticLambda2;-><init>(Ljava9/util/function/BiPredicate;)V

    return-object v0
.end method

.method public or(Ljava9/util/function/BiPredicate;)Ljava9/util/function/BiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/BiPredicate<",
            "-TT;-TU;>;)",
            "Ljava9/util/function/BiPredicate<",
            "TT;TU;>;"
        }
    .end annotation

    .line 104
    .local p0, "this":Ljava9/util/function/BiPredicate;, "Ljava9/util/function/BiPredicate<TT;TU;>;"
    .local p1, "other":Ljava9/util/function/BiPredicate;, "Ljava9/util/function/BiPredicate<-TT;-TU;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava9/util/function/BiPredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/BiPredicate$$ExternalSyntheticLambda1;-><init>(Ljava9/util/function/BiPredicate;Ljava9/util/function/BiPredicate;)V

    return-object v0
.end method

.method public abstract test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)Z"
        }
    .end annotation
.end method
