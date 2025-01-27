.class public final synthetic Lorg/jpos/transaction/participant/SelectDestination$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/math/BigInteger;


# direct methods
.method public synthetic constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jpos/transaction/participant/SelectDestination$$ExternalSyntheticLambda0;->f$0:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/jpos/transaction/participant/SelectDestination$$ExternalSyntheticLambda0;->f$0:Ljava/math/BigInteger;

    check-cast p1, Lorg/jpos/transaction/participant/SelectDestination$BinRange;

    invoke-static {v0, p1}, Lorg/jpos/transaction/participant/SelectDestination;->lambda$getDestinationByPanNumber$0(Ljava/math/BigInteger;Lorg/jpos/transaction/participant/SelectDestination$BinRange;)Z

    move-result p1

    return p1
.end method
