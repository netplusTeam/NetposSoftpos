.class public interface abstract Ljava9/util/function/DoubleConsumer;
.super Ljava/lang/Object;
.source "DoubleConsumer.java"


# direct methods
.method public static synthetic lambda$andThen$33(Ljava9/util/function/DoubleConsumer;Ljava9/util/function/DoubleConsumer;D)V
    .locals 0
    .param p0, "_this"    # Ljava9/util/function/DoubleConsumer;
    .param p2, "t"    # D

    .line 65
    invoke-interface {p0, p2, p3}, Ljava9/util/function/DoubleConsumer;->accept(D)V

    invoke-interface {p1, p2, p3}, Ljava9/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method


# virtual methods
.method public abstract accept(D)V
.end method

.method public andThen(Ljava9/util/function/DoubleConsumer;)Ljava9/util/function/DoubleConsumer;
    .locals 1
    .param p1, "after"    # Ljava9/util/function/DoubleConsumer;

    .line 64
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava9/util/function/DoubleConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/DoubleConsumer$$ExternalSyntheticLambda0;-><init>(Ljava9/util/function/DoubleConsumer;Ljava9/util/function/DoubleConsumer;)V

    return-object v0
.end method
