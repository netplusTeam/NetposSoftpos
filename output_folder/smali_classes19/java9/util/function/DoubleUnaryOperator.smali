.class public interface abstract Ljava9/util/function/DoubleUnaryOperator;
.super Ljava/lang/Object;
.source "DoubleUnaryOperator.java"


# direct methods
.method public static identity()Ljava9/util/function/DoubleUnaryOperator;
    .locals 1

    .line 93
    new-instance v0, Ljava9/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava9/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$andThen$31(Ljava9/util/function/DoubleUnaryOperator;Ljava9/util/function/DoubleUnaryOperator;D)D
    .locals 2
    .param p0, "_this"    # Ljava9/util/function/DoubleUnaryOperator;
    .param p2, "t"    # D

    .line 84
    invoke-interface {p0, p2, p3}, Ljava9/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava9/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$compose$30(Ljava9/util/function/DoubleUnaryOperator;Ljava9/util/function/DoubleUnaryOperator;D)D
    .locals 2
    .param p0, "_this"    # Ljava9/util/function/DoubleUnaryOperator;
    .param p2, "v"    # D

    .line 66
    invoke-interface {p1, p2, p3}, Ljava9/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava9/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$identity$32(D)D
    .locals 0
    .param p0, "t"    # D

    .line 93
    return-wide p0
.end method


# virtual methods
.method public andThen(Ljava9/util/function/DoubleUnaryOperator;)Ljava9/util/function/DoubleUnaryOperator;
    .locals 1
    .param p1, "after"    # Ljava9/util/function/DoubleUnaryOperator;

    .line 83
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava9/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda2;-><init>(Ljava9/util/function/DoubleUnaryOperator;Ljava9/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method

.method public abstract applyAsDouble(D)D
.end method

.method public compose(Ljava9/util/function/DoubleUnaryOperator;)Ljava9/util/function/DoubleUnaryOperator;
    .locals 1
    .param p1, "before"    # Ljava9/util/function/DoubleUnaryOperator;

    .line 65
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava9/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda1;-><init>(Ljava9/util/function/DoubleUnaryOperator;Ljava9/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method
