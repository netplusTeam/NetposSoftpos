.class final Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LoginFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;->confirmOTPForProvidus()V
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

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$1;->$email:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;->access$getSetPasswordBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "setPasswordBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;->email:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$1;->$email:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;->access$getConfirmOTPBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;)Lcom/woleapp/netpos/contactless/databinding/DialogSetNewPasswordBinding;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "confirmOTPBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/DialogSetNewPasswordBinding;->fragmentOtp:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;->access$getConfirmOTPDialog$p(Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "confirmOTPDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 318
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;->access$getSetPasswordDialog$p(Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "setPasswordDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 319
    return-void
.end method
