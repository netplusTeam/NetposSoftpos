.class public final synthetic Ljava9/util/function/LongPredicate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava9/util/function/LongPredicate;


# instance fields
.field public final synthetic f$0:Ljava9/util/function/LongPredicate;

.field public final synthetic f$1:Ljava9/util/function/LongPredicate;


# direct methods
.method public synthetic constructor <init>(Ljava9/util/function/LongPredicate;Ljava9/util/function/LongPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/function/LongPredicate$$ExternalSyntheticLambda0;->f$0:Ljava9/util/function/LongPredicate;

    iput-object p2, p0, Ljava9/util/function/LongPredicate$$ExternalSyntheticLambda0;->f$1:Ljava9/util/function/LongPredicate;

    return-void
.end method


# virtual methods
.method public final test(J)Z
    .locals 2

    iget-object v0, p0, Ljava9/util/function/LongPredicate$$ExternalSyntheticLambda0;->f$0:Ljava9/util/function/LongPredicate;

    iget-object v1, p0, Ljava9/util/function/LongPredicate$$ExternalSyntheticLambda0;->f$1:Ljava9/util/function/LongPredicate;

    invoke-static {v0, v1, p1, p2}, Ljava9/util/function/LongPredicate;->lambda$or$22(Ljava9/util/function/LongPredicate;Ljava9/util/function/LongPredicate;J)Z

    move-result p1

    return p1
.end method
