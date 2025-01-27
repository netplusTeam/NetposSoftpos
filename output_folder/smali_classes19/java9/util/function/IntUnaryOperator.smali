.class public interface abstract Ljava9/util/function/IntUnaryOperator;
.super Ljava/lang/Object;
.source "IntUnaryOperator.java"


# direct methods
.method public static identity()Ljava9/util/function/IntUnaryOperator;
    .locals 1

    .line 93
    new-instance v0, Ljava9/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava9/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$andThen$10(Ljava9/util/function/IntUnaryOperator;Ljava9/util/function/IntUnaryOperator;I)I
    .locals 1
    .param p0, "_this"    # Ljava9/util/function/IntUnaryOperator;
    .param p2, "t"    # I

    .line 84
    invoke-interface {p0, p2}, Ljava9/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava9/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p1

    return p1
.end method

.method public static synthetic lambda$compose$9(Ljava9/util/function/IntUnaryOperator;Ljava9/util/function/IntUnaryOperator;I)I
    .locals 0
    .param p0, "_this"    # Ljava9/util/function/IntUnaryOperator;
    .param p2, "v"    # I

    .line 66
    invoke-interface {p1, p2}, Ljava9/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p1

    invoke-interface {p0, p1}, Ljava9/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p1

    return p1
.end method

.method public static synthetic lambda$identity$11(I)I
    .locals 0
    .param p0, "t"    # I

    .line 93
    return p0
.end method


# virtual methods
.method public andThen(Ljava9/util/function/IntUnaryOperator;)Ljava9/util/function/IntUnaryOperator;
    .locals 1
    .param p1, "after"    # Ljava9/util/function/IntUnaryOperator;

    .line 83
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava9/util/function/IntUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/IntUnaryOperator$$ExternalSyntheticLambda0;-><init>(Ljava9/util/function/IntUnaryOperator;Ljava9/util/function/IntUnaryOperator;)V

    return-object v0
.end method

.method public abstract applyAsInt(I)I
.end method

.method public compose(Ljava9/util/function/IntUnaryOperator;)Ljava9/util/function/IntUnaryOperator;
    .locals 1
    .param p1, "before"    # Ljava9/util/function/IntUnaryOperator;

    .line 65
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava9/util/function/IntUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/IntUnaryOperator$$ExternalSyntheticLambda2;-><init>(Ljava9/util/function/IntUnaryOperator;Ljava9/util/function/IntUnaryOperator;)V

    return-object v0
.end method
