.class public final synthetic Ljava9/util/function/DoublePredicate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava9/util/function/DoublePredicate;


# instance fields
.field public final synthetic f$0:Ljava9/util/function/DoublePredicate;


# direct methods
.method public synthetic constructor <init>(Ljava9/util/function/DoublePredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/function/DoublePredicate$$ExternalSyntheticLambda2;->f$0:Ljava9/util/function/DoublePredicate;

    return-void
.end method


# virtual methods
.method public final test(D)Z
    .locals 1

    iget-object v0, p0, Ljava9/util/function/DoublePredicate$$ExternalSyntheticLambda2;->f$0:Ljava9/util/function/DoublePredicate;

    invoke-static {v0, p1, p2}, Ljava9/util/function/DoublePredicate;->lambda$negate$28(Ljava9/util/function/DoublePredicate;D)Z

    move-result p1

    return p1
.end method
