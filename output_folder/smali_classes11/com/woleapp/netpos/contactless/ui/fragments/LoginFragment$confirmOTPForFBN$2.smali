.class final Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForFBN$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LoginFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;->confirmOTPForFBN()V
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
.field final synthetic $email:Ljava/lang/String;

.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForFBN$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForFBN$2;->$email:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 380
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForFBN$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 385
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForFBN$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;->access$getConfirmOTPBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;)Lcom/woleapp/netpos/contactless/databinding/DialogSetNewPasswordBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "confirmOTPBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/DialogSetNewPasswordBinding;->etEmail:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForFBN$2;->$email:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForFBN$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;->access$getConfirmOTPBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;)Lcom/woleapp/netpos/contactless/databinding/DialogSetNewPasswordBinding;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/DialogSetNewPasswordBinding;->fragmentOtp:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForFBN$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;->access$getConfirmOTPBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;)Lcom/woleapp/netpos/contactless/databinding/DialogSetNewPasswordBinding;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/DialogSetNewPasswordBinding;->resetPasswordHeader:Landroid/widget/TextView;

    const-string v1, "ENTER OTP"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    return-void
.end method
