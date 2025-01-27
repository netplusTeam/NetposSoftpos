.class public interface abstract Ljava9/util/function/LongUnaryOperator;
.super Ljava/lang/Object;
.source "LongUnaryOperator.java"


# direct methods
.method public static identity()Ljava9/util/function/LongUnaryOperator;
    .locals 1

    .line 93
    new-instance v0, Ljava9/util/function/LongUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava9/util/function/LongUnaryOperator$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$andThen$24(Ljava9/util/function/LongUnaryOperator;Ljava9/util/function/LongUnaryOperator;J)J
    .locals 2
    .param p0, "_this"    # Ljava9/util/function/LongUnaryOperator;
    .param p2, "t"    # J

    .line 84
    invoke-interface {p0, p2, p3}, Ljava9/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava9/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$compose$23(Ljava9/util/function/LongUnaryOperator;Ljava9/util/function/LongUnaryOperator;J)J
    .locals 2
    .param p0, "_this"    # Ljava9/util/function/LongUnaryOperator;
    .param p2, "v"    # J

    .line 66
    invoke-interface {p1, p2, p3}, Ljava9/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava9/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$identity$25(J)J
    .locals 0
    .param p0, "t"    # J

    .line 93
    return-wide p0
.end method


# virtual methods
.method public andThen(Ljava9/util/function/LongUnaryOperator;)Ljava9/util/function/LongUnaryOperator;
    .locals 1
    .param p1, "after"    # Ljava9/util/function/LongUnaryOperator;

    .line 83
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava9/util/function/LongUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/LongUnaryOperator$$ExternalSyntheticLambda0;-><init>(Ljava9/util/function/LongUnaryOperator;Ljava9/util/function/LongUnaryOperator;)V

    return-object v0
.end method

.method public abstract applyAsLong(J)J
.end method

.method public compose(Ljava9/util/function/LongUnaryOperator;)Ljava9/util/function/LongUnaryOperator;
    .locals 1
    .param p1, "before"    # Ljava9/util/function/LongUnaryOperator;

    .line 65
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava9/util/function/LongUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ljava9/util/function/LongUnaryOperator$$ExternalSyntheticLambda2;-><init>(Ljava9/util/function/LongUnaryOperator;Ljava9/util/function/LongUnaryOperator;)V

    return-object v0
.end method
