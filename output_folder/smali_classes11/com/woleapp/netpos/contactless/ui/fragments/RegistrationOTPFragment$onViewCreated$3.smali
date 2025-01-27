.class public final Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3;
.super Ljava/lang/Object;
.source "RegistrationOTPFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
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
.field final synthetic $phoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;
    .param p2, "$phoneNumber"    # Ljava/lang/String;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3;->$phoneNumber:Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 155
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 101
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 20
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 109
    move-object/from16 v0, p0

    if-eqz p1, :cond_d

    iget-object v1, v0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    iget-object v2, v0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3;->$phoneNumber:Ljava/lang/String;

    move-object/from16 v3, p1

    .local v3, "it":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 110
    .local v4, "$i$a$-let-RegistrationOTPFragment$onViewCreated$3$onTextChanged$1":I
    const-string v5, "fcmbeasypay"

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "zenith"

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    const-string v7, "requireActivity()"

    const-string v11, "requireContext()"

    const-string v12, "loader"

    const-string v13, "requireActivity().supportFragmentManager"

    const-string v14, "partnerID"

    const-string v15, "newAccountNumber"

    if-eqz v6, :cond_3

    .line 111
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_c

    .line 112
    sget-object v5, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v5, v6, v8}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/app/Activity;)V

    .line 113
    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v5

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getNewAccountNumber$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v10

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getPartnerID$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v10

    :cond_1
    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->confirmOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v14, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v15, v1

    check-cast v15, Landroidx/fragment/app/Fragment;

    .line 115
    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->getConfirmOTPResponse()Landroidx/lifecycle/LiveData;

    move-result-object v16

    .line 116
    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getLoader$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v17, v10

    goto :goto_0

    :cond_2
    move-object/from16 v17, v2

    .line 117
    :goto_0
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3$onTextChanged$1$1;

    invoke-direct {v5, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3$onTextChanged$1$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V

    move-object/from16 v19, v5

    check-cast v19, Lkotlin/jvm/functions/Function0;

    move-object/from16 v18, v2

    invoke-virtual/range {v14 .. v19}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponse(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Landroid/app/AlertDialog;Landroidx/fragment/app/FragmentManager;Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_4

    .line 127
    :cond_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v8, 0x6

    if-ne v6, v8, :cond_c

    .line 128
    sget-object v6, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v6, v8, v11}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/app/Activity;)V

    .line 129
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "providuspos"

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "providussoftpos"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 140
    :cond_4
    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v5

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getNewAccountNumber$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v10

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getPartnerID$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v10

    :cond_6
    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->confirmOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v14, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v15, v1

    check-cast v15, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->getConfirmOTPResponse()Landroidx/lifecycle/LiveData;

    move-result-object v16

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getLoader$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v17, v10

    goto :goto_1

    :cond_7
    move-object/from16 v17, v2

    :goto_1
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3$onTextChanged$1$3;

    invoke-direct {v5, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3$onTextChanged$1$3;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V

    move-object/from16 v19, v5

    check-cast v19, Lkotlin/jvm/functions/Function0;

    move-object/from16 v18, v2

    invoke-virtual/range {v14 .. v19}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponse(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Landroid/app/AlertDialog;Landroidx/fragment/app/FragmentManager;Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 130
    :cond_8
    :goto_2
    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v2

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getNewAccountNumber$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v10

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getPartnerID$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v10

    :cond_a
    const-string v8, ""

    invoke-virtual {v2, v8, v5, v6, v7}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->confirmOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v14, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v15, v1

    check-cast v15, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->getConfirmOTPResponse()Landroidx/lifecycle/LiveData;

    move-result-object v16

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getLoader$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v17, v10

    goto :goto_3

    :cond_b
    move-object/from16 v17, v2

    :goto_3
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3$onTextChanged$1$2;

    invoke-direct {v5, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3$onTextChanged$1$2;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V

    move-object/from16 v19, v5

    check-cast v19, Lkotlin/jvm/functions/Function0;

    move-object/from16 v18, v2

    invoke-virtual/range {v14 .. v19}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponse(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Landroid/app/AlertDialog;Landroidx/fragment/app/FragmentManager;Lkotlin/jvm/functions/Function0;)V

    .line 151
    :cond_c
    :goto_4
    nop

    .line 109
    .end local v3    # "it":Ljava/lang/CharSequence;
    .end local v4    # "$i$a$-let-RegistrationOTPFragment$onViewCreated$3$onTextChanged$1":I
    nop

    .line 152
    :cond_d
    return-void
.end method
