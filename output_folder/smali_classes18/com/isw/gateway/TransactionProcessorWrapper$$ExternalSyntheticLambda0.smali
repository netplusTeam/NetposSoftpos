.class public final synthetic Lcom/isw/gateway/TransactionProcessorWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/isw/gateway/TransactionProcessorWrapper;

.field public final synthetic f$1:Lcom/danbamitale/epmslib/entities/CardData;


# direct methods
.method public synthetic constructor <init>(Lcom/isw/gateway/TransactionProcessorWrapper;Lcom/danbamitale/epmslib/entities/CardData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isw/gateway/TransactionProcessorWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/isw/gateway/TransactionProcessorWrapper;

    iput-object p2, p0, Lcom/isw/gateway/TransactionProcessorWrapper$$ExternalSyntheticLambda0;->f$1:Lcom/danbamitale/epmslib/entities/CardData;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/isw/gateway/TransactionProcessorWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/isw/gateway/TransactionProcessorWrapper;

    iget-object v1, p0, Lcom/isw/gateway/TransactionProcessorWrapper$$ExternalSyntheticLambda0;->f$1:Lcom/danbamitale/epmslib/entities/CardData;

    invoke-static {v0, v1}, Lcom/isw/gateway/TransactionProcessorWrapper;->$r8$lambda$-MrlF2TfORjZW9KMfnXVwz0k02o(Lcom/isw/gateway/TransactionProcessorWrapper;Lcom/danbamitale/epmslib/entities/CardData;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object v0

    return-object v0
.end method
