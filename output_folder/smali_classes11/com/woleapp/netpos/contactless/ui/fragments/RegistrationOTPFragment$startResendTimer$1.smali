.class public final Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1;
.super Ljava/util/TimerTask;
.source "RegistrationOTPFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->startResendTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1",
        "Ljava/util/TimerTask;",
        "run",
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
.field final synthetic $timer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;


# direct methods
.method public static synthetic $r8$lambda$8zbzdaTzRjBejEBdSgl1DxPXJus(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1;->run$lambda-0(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gdF2KqItJudV2jp0qUj9-x3xdoM(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1;->run$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V

    return-void
.end method

.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;Ljava/util/Timer;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;
    .param p2, "$timer"    # Ljava/util/Timer;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1;->$timer:Ljava/util/Timer;

    .line 187
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private static final run$lambda-0(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getResendCode$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "resendCode"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resend OTP in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getTimeSeconds$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    return-void
.end method

.method private static final run$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getResendCode$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "resendCode"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 199
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getResendCode$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    const v0, 0x7f13019d

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getTimeSeconds$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$setTimeSeconds$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;J)V

    .line 191
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getTimeSeconds$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    const-wide/16 v1, 0x3c

    invoke-static {v0, v1, v2}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$setTimeSeconds$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;J)V

    .line 196
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1;->$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 197
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$startResendTimer$1$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 202
    :cond_1
    return-void
.end method
