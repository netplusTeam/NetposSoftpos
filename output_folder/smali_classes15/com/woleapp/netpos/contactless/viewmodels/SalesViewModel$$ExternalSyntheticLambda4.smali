.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

.field public final synthetic f$3:Lcom/danbamitale/epmslib/processors/TransactionProcessor;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/processors/TransactionProcessor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda4;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda4;->f$2:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    iput-object p4, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda4;->f$3:Lcom/danbamitale/epmslib/processors/TransactionProcessor;

    iput-object p5, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda4;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda4;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda4;->f$2:Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda4;->f$3:Lcom/danbamitale/epmslib/processors/TransactionProcessor;

    iget-object v4, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda4;->f$5:Ljava/lang/String;

    move-object v6, p1

    check-cast v6, Lretrofit2/Response;

    invoke-static/range {v0 .. v6}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->$r8$lambda$T-KuZ95uJXghOoEw2pOs4GUelGg(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionRequestData;Lcom/danbamitale/epmslib/processors/TransactionProcessor;Ljava/lang/String;Ljava/lang/String;Lretrofit2/Response;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
