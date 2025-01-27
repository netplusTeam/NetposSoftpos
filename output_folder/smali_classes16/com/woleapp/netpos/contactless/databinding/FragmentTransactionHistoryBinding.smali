.class public abstract Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentTransactionHistoryBinding.java"


# instance fields
.field public final complaintsBtn:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final endDate:Landroid/widget/EditText;

.field public final historyButton:Landroid/widget/Button;

.field public final historyHeader:Landroid/widget/TextView;

.field public final rvTransactionsHistory:Landroidx/recyclerview/widget/RecyclerView;

.field public final searchButton:Landroid/widget/Button;

.field public final searchLayout:Landroid/widget/LinearLayout;

.field public final startDate:Landroid/widget/EditText;

.field public final textInputEndDate:Lcom/google/android/material/textfield/TextInputLayout;

.field public final textInputStartDate:Lcom/google/android/material/textfield/TextInputLayout;

.field public final transactionSearch:Landroidx/appcompat/widget/SearchView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroidx/appcompat/widget/SearchView;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "complaintsBtn"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p5, "endDate"    # Landroid/widget/EditText;
    .param p6, "historyButton"    # Landroid/widget/Button;
    .param p7, "historyHeader"    # Landroid/widget/TextView;
    .param p8, "rvTransactionsHistory"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p9, "searchButton"    # Landroid/widget/Button;
    .param p10, "searchLayout"    # Landroid/widget/LinearLayout;
    .param p11, "startDate"    # Landroid/widget/EditText;
    .param p12, "textInputEndDate"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p13, "textInputStartDate"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p14, "transactionSearch"    # Landroidx/appcompat/widget/SearchView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "complaintsBtn",
            "endDate",
            "historyButton",
            "historyHeader",
            "rvTransactionsHistory",
            "searchButton",
            "searchLayout",
            "startDate",
            "textInputEndDate",
            "textInputStartDate",
            "transactionSearch"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 64
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->complaintsBtn:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 65
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->endDate:Landroid/widget/EditText;

    .line 66
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->historyButton:Landroid/widget/Button;

    .line 67
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->historyHeader:Landroid/widget/TextView;

    .line 68
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->rvTransactionsHistory:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->searchButton:Landroid/widget/Button;

    .line 70
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->searchLayout:Landroid/widget/LinearLayout;

    .line 71
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->startDate:Landroid/widget/EditText;

    .line 72
    iput-object p12, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->textInputEndDate:Lcom/google/android/material/textfield/TextInputLayout;

    .line 73
    iput-object p13, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->textInputStartDate:Lcom/google/android/material/textfield/TextInputLayout;

    .line 74
    iput-object p14, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->transactionSearch:Landroidx/appcompat/widget/SearchView;

    .line 75
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 117
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "component"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    const v0, 0x7f0d0058

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 99
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot"
        }
    .end annotation

    .line 80
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z
    .param p3, "component"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    const v0, 0x7f0d0058

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "component"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    const v0, 0x7f0d0058

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionHistoryBinding;

    return-object v0
.end method
