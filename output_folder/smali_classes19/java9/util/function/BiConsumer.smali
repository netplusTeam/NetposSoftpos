.class public interface abstract Ljava9/util/function/BiConsumer;
.super Ljava/lang/Object;
.source "BiConsumer.java"


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
.method public static synthetic lambda$andThen$12(Ljava9/util/function/BiConsumer;Ljava9/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Ljava9/util/function/BiConsumer;
    .param p2, "l"    # Ljava/lang/Object;
    .param p3, "r"    # Ljava/lang/Object;

    .line 71
    .local p0, "this":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<TT;TU;>;"
    invoke-interface {p0, p2, p3}, Ljava9/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    invoke-interface {p1, p2, p3}, Ljava9/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    return-void
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)V"
        }
    .end annotation
.end method

.method public andThen(Ljava9/util/function/BiConsumer;)Ljava9/util/function/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava9/util/function/BiConsumer<",
            "TT;TU;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<TT;TU;>;"
    .local p1, "after":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<-TT;-TU;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava9/util/function/BiConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/BiConsumer$$ExternalSyntheticLambda0;-><init>(Ljava9/util/function/BiConsumer;Ljava9/util/function/BiConsumer;)V

    return-object v0
.end method
