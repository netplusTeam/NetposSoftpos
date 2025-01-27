.class public final synthetic Ljava9/util/function/IntPredicate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava9/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Ljava9/util/function/IntPredicate;

.field public final synthetic f$1:Ljava9/util/function/IntPredicate;


# direct methods
.method public synthetic constructor <init>(Ljava9/util/function/IntPredicate;Ljava9/util/function/IntPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/function/IntPredicate$$ExternalSyntheticLambda0;->f$0:Ljava9/util/function/IntPredicate;

    iput-object p2, p0, Ljava9/util/function/IntPredicate$$ExternalSyntheticLambda0;->f$1:Ljava9/util/function/IntPredicate;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 2

    iget-object v0, p0, Ljava9/util/function/IntPredicate$$ExternalSyntheticLambda0;->f$0:Ljava9/util/function/IntPredicate;

    iget-object v1, p0, Ljava9/util/function/IntPredicate$$ExternalSyntheticLambda0;->f$1:Ljava9/util/function/IntPredicate;

    invoke-static {v0, v1, p1}, Ljava9/util/function/IntPredicate;->lambda$and$6(Ljava9/util/function/IntPredicate;Ljava9/util/function/IntPredicate;I)Z

    move-result p1

    return p1
.end method
