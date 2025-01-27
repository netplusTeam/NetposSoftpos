.class public final Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$startNibssReQueryTimer$timer$1;
.super Landroid/os/CountDownTimer;
.source "QRFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->startNibssReQueryTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/fragments/QRFragment$startNibssReQueryTimer$timer$1",
        "Landroid/os/CountDownTimer;",
        "onFinish",
        "",
        "onTick",
        "millisUntilFinished",
        "",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;)V
    .locals 4
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$startNibssReQueryTimer$timer$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;

    .line 171
    const-wide/16 v0, 0xfa0

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .line 180
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .line 173
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$startNibssReQueryTimer$timer$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->access$getNibssQrBottomSheetDialogBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;)Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "nibssQrBottomSheetDialogBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->scanToPay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$startNibssReQueryTimer$timer$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;

    .line 174
    const v2, 0x7f13019c

    .line 175
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    int-to-long v5, v5

    div-long v5, p1, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 173
    invoke-virtual {v1, v2, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method
