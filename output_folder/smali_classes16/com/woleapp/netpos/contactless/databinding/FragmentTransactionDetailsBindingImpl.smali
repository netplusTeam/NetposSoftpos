.class public Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;
.super Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;
.source "FragmentTransactionDetailsBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    const v1, 0x7f0a0112

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    const v1, 0x7f0a01eb

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .param p1, "bindingComponent"    # Landroidx/databinding/DataBindingComponent;
    .param p2, "root"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 13
    .param p1, "bindingComponent"    # Landroidx/databinding/DataBindingComponent;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "bindings"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root",
            "bindings"
        }
    .end annotation

    .line 32
    move-object v12, p0

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ProgressBar;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ProgressBar;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 199
    const-wide/16 v0, -0x1

    iput-wide v0, v12, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->mDirtyFlags:J

    .line 42
    iget-object v0, v12, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->actionButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object v0, v12, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->actionProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object v0, v12, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->actionProgress1:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 45
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v12, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object v0, v12, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->preAuthComplete:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 48
    iget-object v0, v12, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->preAuthRefund:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object v0, v12, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->transactionsHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 50
    move-object v0, p2

    invoke-virtual {p0, p2}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->invalidateAll()V

    .line 53
    return-void
.end method

.method private onChangeViewmodelInProgress(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewmodelInProgress",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 114
    .local p1, "ViewmodelInProgress":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    if-nez p2, :cond_0

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->mDirtyFlags:J

    .line 117
    monitor-exit p0

    .line 118
    const/4 v0, 0x1

    return v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onChangeViewmodelLastTransactionResponse(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewmodelLastTransactionResponse",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;I)Z"
        }
    .end annotation

    .line 105
    .local p1, "ViewmodelLastTransactionResponse":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Lcom/danbamitale/epmslib/entities/TransactionResponse;>;"
    if-nez p2, :cond_0

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->mDirtyFlags:J

    .line 108
    monitor-exit p0

    .line 109
    const/4 v0, 0x1

    return v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 19

    .line 125
    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    .line 126
    .local v2, "dirtyFlags":J
    monitor-enter p0

    .line 127
    :try_start_0
    iget-wide v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->mDirtyFlags:J

    move-wide v2, v4

    .line 128
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->mDirtyFlags:J

    .line 129
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "androidxDatabindingViewDataBindingSafeUnboxViewmodelInProgressGetValue":Z
    const/4 v6, 0x0

    .line 132
    .local v6, "viewmodelLastTransactionResponse":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Lcom/danbamitale/epmslib/entities/TransactionResponse;>;"
    const/4 v7, 0x0

    .line 133
    .local v7, "viewmodelLastTransactionResponseGetValue":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v8, 0x0

    .line 134
    .local v8, "viewmodelInProgressGetValue":Ljava/lang/Boolean;
    const/4 v9, 0x0

    .line 135
    .local v9, "viewmodelLastTransactionResponseRRN":Ljava/lang/String;
    const/4 v10, 0x0

    .line 136
    .local v10, "viewmodelInProgress":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    iget-object v11, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    .line 138
    .local v11, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;
    const-wide/16 v12, 0xf

    and-long/2addr v12, v2

    cmp-long v12, v12, v4

    const-wide/16 v13, 0xd

    const-wide/16 v15, 0xe

    if-eqz v12, :cond_5

    .line 141
    and-long v17, v2, v13

    cmp-long v12, v17, v4

    if-eqz v12, :cond_2

    .line 143
    if-eqz v11, :cond_0

    .line 145
    invoke-virtual {v11}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->getLastTransactionResponse()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    .line 147
    :cond_0
    const/4 v12, 0x0

    invoke-virtual {v1, v12, v6}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 150
    if-eqz v6, :cond_1

    .line 152
    invoke-virtual {v6}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    move-object v7, v12

    check-cast v7, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    .line 156
    :cond_1
    if-eqz v7, :cond_2

    .line 158
    invoke-virtual {v7}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getRRN()Ljava/lang/String;

    move-result-object v9

    .line 161
    :cond_2
    and-long v17, v2, v15

    cmp-long v12, v17, v4

    if-eqz v12, :cond_5

    .line 163
    if-eqz v11, :cond_3

    .line 165
    invoke-virtual {v11}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->getInProgress()Landroidx/lifecycle/MutableLiveData;

    move-result-object v10

    .line 167
    :cond_3
    const/4 v12, 0x1

    invoke-virtual {v1, v12, v10}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 170
    if-eqz v10, :cond_4

    .line 172
    invoke-virtual {v10}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    check-cast v8, Ljava/lang/Boolean;

    .line 177
    :cond_4
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    .line 181
    :cond_5
    and-long/2addr v15, v2

    cmp-long v12, v15, v4

    if-eqz v12, :cond_6

    .line 184
    iget-object v12, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->actionButton:Landroid/widget/Button;

    invoke-static {v12, v0}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->buttonInProgress(Landroid/widget/Button;Z)V

    .line 185
    iget-object v12, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->actionProgress:Landroid/widget/ProgressBar;

    invoke-static {v12, v0}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->progressBarInProgress(Landroid/widget/ProgressBar;Z)V

    .line 186
    iget-object v12, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->actionProgress1:Landroid/widget/ProgressBar;

    invoke-static {v12, v0}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->progressBarInProgress(Landroid/widget/ProgressBar;Z)V

    .line 187
    iget-object v12, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->preAuthComplete:Landroid/widget/Button;

    invoke-static {v12, v0}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->buttonInProgress(Landroid/widget/Button;Z)V

    .line 188
    iget-object v12, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->preAuthRefund:Landroid/widget/Button;

    invoke-static {v12, v0}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->buttonInProgress(Landroid/widget/Button;Z)V

    .line 190
    :cond_6
    and-long v12, v2, v13

    cmp-long v4, v12, v4

    if-eqz v4, :cond_7

    .line 193
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->transactionsHeader:Landroid/widget/TextView;

    invoke-static {v4, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 195
    :cond_7
    return-void

    .line 129
    .end local v0    # "androidxDatabindingViewDataBindingSafeUnboxViewmodelInProgressGetValue":Z
    .end local v6    # "viewmodelLastTransactionResponse":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Lcom/danbamitale/epmslib/entities/TransactionResponse;>;"
    .end local v7    # "viewmodelLastTransactionResponseGetValue":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v8    # "viewmodelInProgressGetValue":Ljava/lang/Boolean;
    .end local v9    # "viewmodelLastTransactionResponseRRN":Ljava/lang/String;
    .end local v10    # "viewmodelInProgress":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    .end local v11    # "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 69
    :cond_0
    monitor-exit p0

    .line 70
    const/4 v0, 0x0

    return v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 57
    monitor-enter p0

    .line 58
    const-wide/16 v0, 0x8

    :try_start_0
    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->mDirtyFlags:J

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->requestRebind()V

    .line 61
    return-void

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 1
    .param p1, "localFieldId"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "localFieldId",
            "object",
            "fieldId"
        }
    .end annotation

    .line 96
    packed-switch p1, :pswitch_data_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 100
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->onChangeViewmodelInProgress(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    .line 98
    :pswitch_1
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->onChangeViewmodelLastTransactionResponse(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "variableId"    # I
    .param p2, "variable"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variableId",
            "variable"
        }
    .end annotation

    .line 75
    const/4 v0, 0x1

    .line 76
    .local v0, "variableSet":Z
    const/4 v1, 0x5

    if-ne v1, p1, :cond_0

    .line 77
    move-object v1, p2

    check-cast v1, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V

    goto :goto_0

    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0
.end method

.method public setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V
    .locals 4
    .param p1, "Viewmodel"    # Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Viewmodel"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->mDirtyFlags:J

    .line 89
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBindingImpl;->notifyPropertyChanged(I)V

    .line 91
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;->requestRebind()V

    .line 92
    return-void

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
