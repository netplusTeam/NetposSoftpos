.class public Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;
.super Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;
.source "LayoutNipNotificationItemBindingImpl.java"


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

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    const v1, 0x7f0a0265

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
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

    .line 28
    sget-object v0, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11
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

    .line 31
    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Button;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 159
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->mDirtyFlags:J

    .line 39
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->amount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->beneficiaryAccountNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->createdAt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 43
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->sourceAccountNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->sourceName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->invalidateAll()V

    .line 49
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 23

    .line 99
    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    .line 100
    .local v2, "dirtyFlags":J
    monitor-enter p0

    .line 101
    :try_start_0
    iget-wide v4, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->mDirtyFlags:J

    move-wide v2, v4

    .line 102
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->mDirtyFlags:J

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "nipBeneficiaryAccountNumber":Ljava/lang/String;
    const/4 v6, 0x0

    .line 106
    .local v6, "nipSourceAccountNumber":Ljava/lang/String;
    const/4 v7, 0x0

    .line 107
    .local v7, "stringFormatBeneficiaryAccountNumberAndroidStringBeneficiaryAccountNumberNipBeneficiaryAccountNumber":Ljava/lang/String;
    const/4 v8, 0x0

    .line 108
    .local v8, "stringFormatSourceNameAndroidStringSourceNameNipSourceName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 109
    .local v9, "nipSourceName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 110
    .local v10, "stringFormatSourceAccountNumberAndroidStringSourceAccountNumberNipSourceAccountNumber":Ljava/lang/String;
    const/4 v11, 0x0

    .line 111
    .local v11, "nipAmount":Ljava/lang/String;
    iget-object v12, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->mNip:Lcom/woleapp/netpos/contactless/model/NipNotification;

    .line 112
    .local v12, "nip":Lcom/woleapp/netpos/contactless/model/NipNotification;
    const/4 v13, 0x0

    .line 113
    .local v13, "stringFormatCreatedAtAndroidStringCreatedAtNipCreatedAt":Ljava/lang/String;
    const/4 v14, 0x0

    .line 114
    .local v14, "stringFormatAmountAndroidStringNipAmountNipAmount":Ljava/lang/String;
    const/4 v15, 0x0

    .line 116
    .local v15, "nipCreatedAt":Ljava/lang/String;
    const-wide/16 v16, 0x3

    and-long v18, v2, v16

    cmp-long v18, v18, v4

    if-eqz v18, :cond_1

    .line 120
    if-eqz v12, :cond_0

    .line 122
    invoke-virtual {v12}, Lcom/woleapp/netpos/contactless/model/NipNotification;->getBeneficiaryAccountNumber()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {v12}, Lcom/woleapp/netpos/contactless/model/NipNotification;->getSourceAccountNumber()Ljava/lang/String;

    move-result-object v6

    .line 126
    invoke-virtual {v12}, Lcom/woleapp/netpos/contactless/model/NipNotification;->getSourceName()Ljava/lang/String;

    move-result-object v9

    .line 128
    invoke-virtual {v12}, Lcom/woleapp/netpos/contactless/model/NipNotification;->getAmount()Ljava/lang/String;

    move-result-object v11

    .line 130
    invoke-virtual {v12}, Lcom/woleapp/netpos/contactless/model/NipNotification;->getCreatedAt()Ljava/lang/String;

    move-result-object v15

    .line 135
    :cond_0
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->beneficiaryAccountNumber:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f130041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v20, v7

    .end local v7    # "stringFormatBeneficiaryAccountNumberAndroidStringBeneficiaryAccountNumberNipBeneficiaryAccountNumber":Ljava/lang/String;
    .local v20, "stringFormatBeneficiaryAccountNumberAndroidStringBeneficiaryAccountNumberNipBeneficiaryAccountNumber":Ljava/lang/String;
    new-array v7, v5, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v0, v7, v21

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 137
    .end local v20    # "stringFormatBeneficiaryAccountNumberAndroidStringBeneficiaryAccountNumberNipBeneficiaryAccountNumber":Ljava/lang/String;
    .restart local v7    # "stringFormatBeneficiaryAccountNumberAndroidStringBeneficiaryAccountNumberNipBeneficiaryAccountNumber":Ljava/lang/String;
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->sourceAccountNumber:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v22, v0

    .end local v0    # "nipBeneficiaryAccountNumber":Ljava/lang/String;
    .local v22, "nipBeneficiaryAccountNumber":Ljava/lang/String;
    const v0, 0x7f1301c2

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v6, v4, v21

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 139
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->sourceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f1301c3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v9, v4, v21

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 141
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->amount:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f13015e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v11, v4, v21

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 143
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->createdAt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f130088

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v15, v4, v21

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v22

    goto :goto_0

    .line 116
    .end local v22    # "nipBeneficiaryAccountNumber":Ljava/lang/String;
    .restart local v0    # "nipBeneficiaryAccountNumber":Ljava/lang/String;
    :cond_1
    move-object/from16 v20, v7

    .line 146
    :goto_0
    and-long v4, v2, v16

    const-wide/16 v16, 0x0

    cmp-long v4, v4, v16

    if-eqz v4, :cond_2

    .line 149
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->amount:Landroid/widget/TextView;

    invoke-static {v4, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 150
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->beneficiaryAccountNumber:Landroid/widget/TextView;

    invoke-static {v4, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 151
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->createdAt:Landroid/widget/TextView;

    invoke-static {v4, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 152
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->sourceAccountNumber:Landroid/widget/TextView;

    invoke-static {v4, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 153
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->sourceName:Landroid/widget/TextView;

    invoke-static {v4, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 155
    :cond_2
    return-void

    .line 103
    .end local v0    # "nipBeneficiaryAccountNumber":Ljava/lang/String;
    .end local v6    # "nipSourceAccountNumber":Ljava/lang/String;
    .end local v7    # "stringFormatBeneficiaryAccountNumberAndroidStringBeneficiaryAccountNumberNipBeneficiaryAccountNumber":Ljava/lang/String;
    .end local v8    # "stringFormatSourceNameAndroidStringSourceNameNipSourceName":Ljava/lang/String;
    .end local v9    # "nipSourceName":Ljava/lang/String;
    .end local v10    # "stringFormatSourceAccountNumberAndroidStringSourceAccountNumberNipSourceAccountNumber":Ljava/lang/String;
    .end local v11    # "nipAmount":Ljava/lang/String;
    .end local v12    # "nip":Lcom/woleapp/netpos/contactless/model/NipNotification;
    .end local v13    # "stringFormatCreatedAtAndroidStringCreatedAtNipCreatedAt":Ljava/lang/String;
    .end local v14    # "stringFormatAmountAndroidStringNipAmountNipAmount":Ljava/lang/String;
    .end local v15    # "nipCreatedAt":Ljava/lang/String;
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

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 65
    :cond_0
    monitor-exit p0

    .line 66
    const/4 v0, 0x0

    return v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 53
    monitor-enter p0

    .line 54
    const-wide/16 v0, 0x2

    :try_start_0
    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->mDirtyFlags:J

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->requestRebind()V

    .line 57
    return-void

    .line 55
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

    .line 92
    nop

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public setNip(Lcom/woleapp/netpos/contactless/model/NipNotification;)V
    .locals 4
    .param p1, "Nip"    # Lcom/woleapp/netpos/contactless/model/NipNotification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Nip"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->mNip:Lcom/woleapp/netpos/contactless/model/NipNotification;

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->mDirtyFlags:J

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->notifyPropertyChanged(I)V

    .line 87
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;->requestRebind()V

    .line 88
    return-void

    .line 85
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

    .line 71
    const/4 v0, 0x1

    .line 72
    .local v0, "variableSet":Z
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 73
    move-object v1, p2

    check-cast v1, Lcom/woleapp/netpos/contactless/model/NipNotification;

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBindingImpl;->setNip(Lcom/woleapp/netpos/contactless/model/NipNotification;)V

    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0
.end method
