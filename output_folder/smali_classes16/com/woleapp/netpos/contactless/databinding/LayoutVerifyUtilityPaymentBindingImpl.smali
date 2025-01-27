.class public Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;
.super Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;
.source "LayoutVerifyUtilityPaymentBindingImpl.java"


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

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    const v1, 0x7f0a0317

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    const v1, 0x7f0a0274

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    const v1, 0x7f0a0081

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    const v1, 0x7f0a0032

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    const v1, 0x7f0a0034

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    const v1, 0x7f0a0060

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    const v1, 0x7f0a0152

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    const v1, 0x7f0a026c

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
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

    .line 35
    sget-object v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    invoke-static {p1, p2, v2, v0, v1}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 19
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

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 38
    const/16 v4, 0xa

    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0xb

    aget-object v5, p3, v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x4

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v7, 0x3

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0xc

    aget-object v8, p3, v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, 0x5

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/TextView;

    const/16 v10, 0x9

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/TextView;

    const/16 v11, 0xd

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v12, 0x6

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/TextView;

    const/4 v13, 0x2

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/TextView;

    const/16 v14, 0xe

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/Button;

    const/16 v15, 0x8

    aget-object v15, p3, v15

    check-cast v15, Landroid/widget/TextView;

    const/16 v16, 0x1

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x7

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0x0

    move/from16 v3, v18

    invoke-direct/range {v0 .. v17}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 162
    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->mDirtyFlags:J

    .line 54
    iget-object v0, v2, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->accountIdDetailsValue:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v0, v2, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->accountIdValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object v0, v2, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->amountValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 57
    iget-object v0, v2, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->feeValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 58
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v0, v2, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->packageValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v0, v2, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->providerValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 62
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->invalidateAll()V

    .line 65
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 15

    .line 115
    const-wide/16 v0, 0x0

    .line 116
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 117
    :try_start_0
    iget-wide v2, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->mDirtyFlags:J

    move-wide v0, v2

    .line 118
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->mDirtyFlags:J

    .line 119
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    const/4 v4, 0x0

    .line 121
    .local v4, "billResponseAmount":Ljava/lang/String;
    const/4 v5, 0x0

    .line 122
    .local v5, "billResponseFees":Ljava/lang/String;
    const/4 v6, 0x0

    .line 123
    .local v6, "billResponseProvider":Ljava/lang/String;
    const/4 v7, 0x0

    .line 124
    .local v7, "billResponseBillAccountId":Ljava/lang/String;
    iget-object v8, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->mBillResponse:Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;

    .line 125
    .local v8, "billResponse":Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;
    const/4 v9, 0x0

    .line 126
    .local v9, "billResponseBillPackage":Ljava/lang/String;
    const/4 v10, 0x0

    .line 128
    .local v10, "billResponseBillAccountIdDetails":Ljava/lang/String;
    const-wide/16 v11, 0x3

    and-long v13, v0, v11

    cmp-long v13, v13, v2

    if-eqz v13, :cond_0

    .line 132
    if-eqz v8, :cond_0

    .line 134
    invoke-virtual {v8}, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;->getAmount()Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-virtual {v8}, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;->getFees()Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-virtual {v8}, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;->getProvider()Ljava/lang/String;

    move-result-object v6

    .line 140
    invoke-virtual {v8}, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;->getBillAccountId()Ljava/lang/String;

    move-result-object v7

    .line 142
    invoke-virtual {v8}, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;->getBillPackage()Ljava/lang/String;

    move-result-object v9

    .line 144
    invoke-virtual {v8}, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;->getBillAccountIdDetails()Ljava/lang/String;

    move-result-object v10

    .line 148
    :cond_0
    and-long/2addr v11, v0

    cmp-long v2, v11, v2

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->accountIdDetailsValue:Landroid/widget/TextView;

    invoke-static {v2, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 152
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->accountIdValue:Landroid/widget/TextView;

    invoke-static {v2, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 153
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->amountValue:Landroid/widget/TextView;

    invoke-static {v2, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 154
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->feeValue:Landroid/widget/TextView;

    invoke-static {v2, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->packageValue:Landroid/widget/TextView;

    invoke-static {v2, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 156
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->providerValue:Landroid/widget/TextView;

    invoke-static {v2, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 158
    :cond_1
    return-void

    .line 119
    .end local v4    # "billResponseAmount":Ljava/lang/String;
    .end local v5    # "billResponseFees":Ljava/lang/String;
    .end local v6    # "billResponseProvider":Ljava/lang/String;
    .end local v7    # "billResponseBillAccountId":Ljava/lang/String;
    .end local v8    # "billResponse":Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;
    .end local v9    # "billResponseBillPackage":Ljava/lang/String;
    .end local v10    # "billResponseBillAccountIdDetails":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 81
    :cond_0
    monitor-exit p0

    .line 82
    const/4 v0, 0x0

    return v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 69
    monitor-enter p0

    .line 70
    const-wide/16 v0, 0x2

    :try_start_0
    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->mDirtyFlags:J

    .line 71
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->requestRebind()V

    .line 73
    return-void

    .line 71
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

    .line 108
    nop

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public setBillResponse(Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;)V
    .locals 4
    .param p1, "BillResponse"    # Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "BillResponse"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->mBillResponse:Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->mDirtyFlags:J

    .line 101
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->notifyPropertyChanged(I)V

    .line 103
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->requestRebind()V

    .line 104
    return-void

    .line 101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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

    .line 87
    const/4 v0, 0x1

    .line 88
    .local v0, "variableSet":Z
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 89
    move-object v1, p2

    check-cast v1, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBindingImpl;->setBillResponse(Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;)V

    goto :goto_0

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0
.end method
