.class final Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$2;
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

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$2;->$email:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 336
    const-string v0, "ACCOUNT_NUMBER_FOR_PROVIDUS"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "acctNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    const-string v2, "acctNumber"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;->access$setSavedAcctNumber$p(Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;->access$getConfirmOTPBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;)Lcom/woleapp/netpos/contactless/databinding/DialogSetNewPasswordBinding;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "confirmOTPBinding"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/DialogSetNewPasswordBinding;->etEmail:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$2;->$email:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;->access$getConfirmOTPBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;)Lcom/woleapp/netpos/contactless/databinding/DialogSetNewPasswordBinding;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/DialogSetNewPasswordBinding;->fragmentOtp:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 340
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment$confirmOTPForProvidus$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;->access$getConfirmOTPBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;)Lcom/woleapp/netpos/contactless/databinding/DialogSetNewPasswordBinding;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    iget-object v1, v2, Lcom/woleapp/netpos/contactless/databinding/DialogSetNewPasswordBinding;->resetPasswordHeader:Landroid/widget/TextView;

    const-string v2, "ENTER OTP"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    return-void
.end method
