.class public final Lorg/apache/commons/collections4/functors/OnePredicate;
.super Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate;
.source "OnePredicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x70c32e53becc8a39L


# direct methods
.method public varargs constructor <init>([Lorg/apache/commons/collections4/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/apache/commons/collections4/functors/OnePredicate;, "Lorg/apache/commons/collections4/functors/OnePredicate<TT;>;"
    .local p1, "predicates":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/functors/AbstractQuantifierPredicate;-><init>([Lorg/apache/commons/collections4/Predicate;)V

    .line 84
    return-void
.end method

.method public static onePredicate(Ljava/util/Collection;)Lorg/apache/commons/collections4/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 72
    .local p0, "predicates":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/commons/collections4/Predicate<-TT;>;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate(Ljava/util/Collection;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    .line 73
    .local v0, "preds":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TT;>;"
    new-instance v1, Lorg/apache/commons/collections4/functors/OnePredicate;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections4/functors/OnePredicate;-><init>([Lorg/apache/commons/collections4/Predicate;)V

    return-object v1
.end method

.method public static varargs onePredicate([Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 52
    .local p0, "predicates":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TT;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Predicate;)V

    .line 53
    array-length v0, p0

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lorg/apache/commons/collections4/functors/FalsePredicate;->falsePredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 57
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0

    .line 59
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/functors/OnePredicate;

    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Predicate;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/functors/OnePredicate;-><init>([Lorg/apache/commons/collections4/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/apache/commons/collections4/functors/OnePredicate;, "Lorg/apache/commons/collections4/functors/OnePredicate<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 96
    .local v0, "match":Z
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/OnePredicate;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 97
    .local v5, "iPredicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    invoke-interface {v5, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    if-eqz v0, :cond_0

    .line 99
    return v3

    .line 101
    :cond_0
    const/4 v0, 0x1

    .line 96
    .end local v5    # "iPredicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 104
    :cond_2
    return v0
.end method
