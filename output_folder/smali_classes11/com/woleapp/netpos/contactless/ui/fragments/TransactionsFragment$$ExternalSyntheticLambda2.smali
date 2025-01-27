.class public final synthetic Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda2;->f$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda2;->f$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    check-cast p1, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->$r8$lambda$WKjOKEU5yDSzMXDKvwXTtHMSlak(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/Throwable;)V

    return-void
.end method
