.class public final synthetic Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/danbamitale/epmslib/processors/TransactionProcessor;

.field public final synthetic f$1:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

.field public final synthetic f$2:Lcom/danbamitale/epmslib/entities/CardData;

.field public final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/danbamitale/epmslib/processors/TransactionProcessor;Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/CardData;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/danbamitale/epmslib/processors/TransactionProcessor;

    iput-object p2, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda1;->f$1:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    iput-object p3, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda1;->f$2:Lcom/danbamitale/epmslib/entities/CardData;

    iput-object p4, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda1;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/danbamitale/epmslib/processors/TransactionProcessor;

    iget-object v1, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda1;->f$1:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    iget-object v2, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda1;->f$2:Lcom/danbamitale/epmslib/entities/CardData;

    iget-object v3, p0, Lcom/danbamitale/epmslib/processors/TransactionProcessor$$ExternalSyntheticLambda1;->f$3:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/danbamitale/epmslib/processors/TransactionProcessor;->$r8$lambda$oNSzK5uYTsZuooGE73YYgNJOQUc(Lcom/danbamitale/epmslib/processors/TransactionProcessor;Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/entities/CardData;Landroid/content/Context;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object v0

    return-object v0
.end method
