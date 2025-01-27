.class public final synthetic Ljava9/util/function/IntPredicate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava9/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Ljava9/util/function/IntPredicate;


# direct methods
.method public synthetic constructor <init>(Ljava9/util/function/IntPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/function/IntPredicate$$ExternalSyntheticLambda1;->f$0:Ljava9/util/function/IntPredicate;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Ljava9/util/function/IntPredicate$$ExternalSyntheticLambda1;->f$0:Ljava9/util/function/IntPredicate;

    invoke-static {v0, p1}, Ljava9/util/function/IntPredicate;->lambda$negate$7(Ljava9/util/function/IntPredicate;I)Z

    move-result p1

    return p1
.end method
