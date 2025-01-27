.class public final Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$showPinDialog$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->showPinDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/activities/MainActivity$showPinDialog$1",
        "Lcom/woleapp/netpos/contactless/ui/dialog/PasswordDialog$Listener;",
        "onConfirm",
        "",
        "pinBlock",
        "",
        "onError",
        "message",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
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
    .locals 0
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$showPinDialog$1;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Ljava/lang/String;)V
    .locals 1
    .param p1, "pinBlock"    # Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$showPinDialog$1;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->setPinBlock(Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 10
    .param p1, "message"    # Ljava/lang/String;

    .line 681
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$showPinDialog$1;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    check-cast v0, Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 682
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$showPinDialog$1;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    new-instance v9, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v9}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->setIccCardHelperLiveData(Lcom/woleapp/netpos/contactless/util/ICCCardHelper;)V

    .line 683
    return-void
.end method
