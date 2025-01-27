.class public final Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;
.super Ljava/lang/Object;
.source "AppBindingAdapters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u0014\u0010\u0005\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u001a\u0014\u0010\t\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007\u001a\u0014\u0010\r\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0007\u001a\u0014\u0010\u000e\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0004H\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "buttonInProgress",
        "",
        "Landroid/widget/Button;",
        "inpProgress",
        "",
        "formatAmount",
        "Landroid/widget/EditText;",
        "amount",
        "",
        "paymentProgress",
        "Landroid/widget/ProgressBar;",
        "transactionState",
        "",
        "processButtonState",
        "progressBarInProgress",
        "boolean",
        "app_fcmbeasypayDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final buttonInProgress(Landroid/widget/Button;Z)V
    .locals 1
    .param p0, "$this$buttonInProgress"    # Landroid/widget/Button;
    .param p1, "inpProgress"    # Z
    .annotation runtime Landroidx/databinding/BindingAdapter;
        value = {
            "buttonInProgress"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 44
    return-void
.end method

.method public static final formatAmount(Landroid/widget/EditText;J)V
    .locals 2
    .param p0, "$this$formatAmount"    # Landroid/widget/EditText;
    .param p1, "amount"    # J
    .annotation runtime Landroidx/databinding/BindingAdapter;
        value = {
            "formatAmount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const/16 v0, 0x64

    int-to-long v0, v0

    div-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const-string v1, "\u20a6"

    invoke-static {v0, v1}, Lcom/danbamitale/epmslib/extensions/NumberExtensionsKt;->formatCurrencyAmount(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method

.method public static final paymentProgress(Landroid/widget/ProgressBar;I)V
    .locals 1
    .param p0, "$this$paymentProgress"    # Landroid/widget/ProgressBar;
    .param p1, "transactionState"    # I
    .annotation runtime Landroidx/databinding/BindingAdapter;
        value = {
            "paymentProgress"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    if-nez p1, :cond_0

    .line 32
    const/16 v0, 0x8

    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 34
    return-void
.end method

.method public static final processButtonState(Landroid/widget/Button;I)V
    .locals 3
    .param p0, "$this$processButtonState"    # Landroid/widget/Button;
    .param p1, "transactionState"    # I
    .annotation runtime Landroidx/databinding/BindingAdapter;
        value = {
            "processButtonState"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 23
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f130173

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 19
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f130188

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 15
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130186

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 27
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final progressBarInProgress(Landroid/widget/ProgressBar;Z)V
    .locals 1
    .param p0, "$this$progressBarInProgress"    # Landroid/widget/ProgressBar;
    .param p1, "boolean"    # Z
    .annotation runtime Landroidx/databinding/BindingAdapter;
        value = {
            "progressBarInProgress"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    if-eqz p1, :cond_0

    .line 49
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_0
    const/16 v0, 0x8

    .line 48
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 51
    return-void
.end method
