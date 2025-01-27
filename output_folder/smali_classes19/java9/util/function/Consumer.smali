.class public interface abstract Ljava9/util/function/Consumer;
.super Ljava/lang/Object;
.source "Consumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$andThen$4(Ljava9/util/function/Consumer;Ljava9/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Ljava9/util/function/Consumer;
    .param p2, "t"    # Ljava/lang/Object;

    .line 64
    .local p0, "this":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<TT;>;"
    invoke-interface {p0, p2}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public andThen(Ljava9/util/function/Consumer;)Ljava9/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)",
            "Ljava9/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 63
    .local p0, "this":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<TT;>;"
    .local p1, "after":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava9/util/function/Consumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/Consumer$$ExternalSyntheticLambda0;-><init>(Ljava9/util/function/Consumer;Ljava9/util/function/Consumer;)V

    return-object v0
.end method
