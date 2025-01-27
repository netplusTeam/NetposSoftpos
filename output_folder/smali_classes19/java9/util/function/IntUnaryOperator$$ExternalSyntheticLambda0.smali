.class public final synthetic Ljava9/util/function/IntUnaryOperator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava9/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic f$0:Ljava9/util/function/IntUnaryOperator;

.field public final synthetic f$1:Ljava9/util/function/IntUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava9/util/function/IntUnaryOperator;Ljava9/util/function/IntUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/function/IntUnaryOperator$$ExternalSyntheticLambda0;->f$0:Ljava9/util/function/IntUnaryOperator;

    iput-object p2, p0, Ljava9/util/function/IntUnaryOperator$$ExternalSyntheticLambda0;->f$1:Ljava9/util/function/IntUnaryOperator;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 2

    iget-object v0, p0, Ljava9/util/function/IntUnaryOperator$$ExternalSyntheticLambda0;->f$0:Ljava9/util/function/IntUnaryOperator;

    iget-object v1, p0, Ljava9/util/function/IntUnaryOperator$$ExternalSyntheticLambda0;->f$1:Ljava9/util/function/IntUnaryOperator;

    invoke-static {v0, v1, p1}, Ljava9/util/function/IntUnaryOperator;->lambda$andThen$10(Ljava9/util/function/IntUnaryOperator;Ljava9/util/function/IntUnaryOperator;I)I

    move-result p1

    return p1
.end method
