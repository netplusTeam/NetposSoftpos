.class public interface abstract Ljava9/util/function/UnaryOperator;
.super Ljava/lang/Object;
.source "UnaryOperator.java"

# interfaces
.implements Ljava9/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/function/Function<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method public static identity()Ljava9/util/function/UnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/function/UnaryOperator<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava9/util/function/UnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava9/util/function/UnaryOperator$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$identity$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "t"    # Ljava/lang/Object;

    .line 51
    return-object p0
.end method
