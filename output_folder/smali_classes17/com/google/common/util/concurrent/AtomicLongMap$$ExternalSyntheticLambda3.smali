.class public final synthetic Lcom/google/common/util/concurrent/AtomicLongMap$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic f$1:Ljava/util/function/LongUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/function/LongUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AtomicLongMap$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p2, p0, Lcom/google/common/util/concurrent/AtomicLongMap$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/LongUnaryOperator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/LongUnaryOperator;

    check-cast p2, Ljava/lang/Long;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/util/concurrent/AtomicLongMap;->lambda$getAndUpdate$1(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/function/LongUnaryOperator;Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
