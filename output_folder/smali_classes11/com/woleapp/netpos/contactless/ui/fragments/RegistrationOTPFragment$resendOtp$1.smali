.class final Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$resendOtp$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RegistrationOTPFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->resendOtp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$resendOtp$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$resendOtp$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$resendOtp$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$startResendTimer(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V

    .line 168
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$resendOtp$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Lcom/woleapp/netpos/contactless/databinding/FragmentRegistrationOTPBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegistrationOTPBinding;->otpResent:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$resendOtp$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->clearLiveData()V

    .line 170
    return-void
.end method
