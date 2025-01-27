.class public final Ljava9/lang/Iterables;
.super Ljava/lang/Object;
.source "Iterables.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    return-void
.end method

.method public static forEach(Ljava/lang/Iterable;Ljava9/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "it":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 72
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 73
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method public static removeIf(Ljava/lang/Iterable;Ljava9/util/function/Predicate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava9/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 101
    .local p0, "it":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "filter":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<-TT;>;"
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "removed":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    .local v1, "each":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava9/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    return v0
.end method

.method public static spliterator(Ljava/lang/Iterable;)Ljava9/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 146
    .local p0, "it":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 148
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .line 149
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {v0}, Ljava9/util/Spliterators;->spliterator(Ljava/util/Collection;)Ljava9/util/Spliterator;

    move-result-object v1

    return-object v1

    .line 151
    .end local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
