.class final Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$getIntentDataSentInFromFirebaseService$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->getIntentDataSentInFromFirebaseService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$getIntentDataSentInFromFirebaseService$1$1$1;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 1200
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$getIntentDataSentInFromFirebaseService$1$1$1;->invoke(Ljava/util/List;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 7
    .param p1, "it"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$getIntentDataSentInFromFirebaseService$1$1$1;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->access$getTransactionViewModel(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->setEndOfDayList(Ljava/util/List;)V

    .line 1207
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$getIntentDataSentInFromFirebaseService$1$1$1;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->access$getDeviceNotSupportedAlertDialog$p(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "deviceNotSupportedAlertDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 1208
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$getIntentDataSentInFromFirebaseService$1$1$1;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    .line 1209
    sget-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;

    .line 1210
    nop

    .line 1209
    const-string v2, "End Of Day"

    invoke-virtual {v0, v2}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;->newInstance(Ljava/lang/String;)Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 1208
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->addFragmentWithoutRemove$default(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    .line 1213
    return-void
.end method
