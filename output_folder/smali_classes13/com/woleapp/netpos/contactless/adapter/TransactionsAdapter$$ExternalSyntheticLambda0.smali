.class public final synthetic Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

.field public final synthetic f$1:Lcom/danbamitale/epmslib/entities/TransactionResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;Lcom/danbamitale/epmslib/entities/TransactionResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/danbamitale/epmslib/entities/TransactionResponse;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-static {v0, v1, p1}, Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;->$r8$lambda$2zbn60dbA-6GMo9cPgX_BpTGd8Q(Lcom/woleapp/netpos/contactless/adapter/TransactionsAdapter;Lcom/danbamitale/epmslib/entities/TransactionResponse;Landroid/view/View;)V

    return-void
.end method
