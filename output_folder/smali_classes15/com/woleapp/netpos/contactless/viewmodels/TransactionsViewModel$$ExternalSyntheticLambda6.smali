.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

.field public final synthetic f$1:Lcom/danbamitale/epmslib/entities/TransactionResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Lcom/danbamitale/epmslib/entities/TransactionResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda6;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda6;->f$1:Lcom/danbamitale/epmslib/entities/TransactionResponse;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda6;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$$ExternalSyntheticLambda6;->f$1:Lcom/danbamitale/epmslib/entities/TransactionResponse;

    check-cast p1, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-static {v0, v1, p1}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->$r8$lambda$Gb1JrUXv_SywQToE5cKuwXS84z8(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;Lcom/danbamitale/epmslib/entities/TransactionResponse;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
