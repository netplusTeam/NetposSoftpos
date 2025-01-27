.class public final Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$2;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->validateSignUpFieldsOnTextChange()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$3\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TransactionHistoryFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment\n*L\n1#1,97:1\n78#2:98\n71#3:99\n234#4,11:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f\u00b8\u0006\u0010"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "text",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "core-ktx_release",
        "androidx/core/widget/TextViewKt$doOnTextChanged$$inlined$addTextChangedListener$default$1"
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
.field final synthetic $isValidated$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;


# direct methods
.method public constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$2;->$isValidated$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .line 82
    const/4 v0, 0x0

    .local v0, "$i$a$-addTextChangedListener-TextViewKt$addTextChangedListener$3":I
    move-object v1, p1

    .line 98
    .local v1, "it":Landroid/text/Editable;
    nop

    .line 82
    .end local v0    # "$i$a$-addTextChangedListener-TextViewKt$addTextChangedListener$3":I
    .end local v1    # "it":Landroid/text/Editable;
    nop

    .line 83
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 86
    const/4 v0, 0x0

    .line 99
    .local v0, "$i$a$-addTextChangedListener-TextViewKt$addTextChangedListener$1":I
    nop

    .line 86
    .end local v0    # "$i$a$-addTextChangedListener-TextViewKt$addTextChangedListener$1":I
    nop

    .line 87
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 90
    const/4 v0, 0x0

    .line 100
    .local v0, "$i$a$-doOnTextChanged-TransactionHistoryFragment$validateSignUpFieldsOnTextChange$2":I
    nop

    .line 101
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->access$getFeedbackBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    move-result-object v1

    const-string v2, "feedbackBinding"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->subjectEdittext:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    if-eqz v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    check-cast v1, Landroidx/fragment/app/Fragment;

    const-string v2, "Please enter the subject of the complaint"

    invoke-static {v1, v2}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->showToast(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$2;->$isValidated$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v5, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_1

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->access$getFeedbackBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;)Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_3
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->subjectWrapper:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$validateSignUpFieldsOnTextChange$$inlined$doOnTextChanged$2;->$isValidated$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v4, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 110
    :goto_1
    nop

    .line 91
    .end local v0    # "$i$a$-doOnTextChanged-TransactionHistoryFragment$validateSignUpFieldsOnTextChange$2":I
    return-void
.end method
