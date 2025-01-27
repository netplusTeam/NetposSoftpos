.class public Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;
.super Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;
.source "NotificationItemLayoutBindingImpl.java"


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

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    const v1, 0x7f0a01a0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    const v1, 0x7f0a0394

    const/4 v2, 0x6

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
    sget-object v0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    .line 30
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

    .line 32
    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/cardview/widget/CardView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 151
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->mDirtyFlags:J

    .line 40
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->hasBeenRead:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 42
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->textView10:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->textView12:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->textView9:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->invalidateAll()V

    .line 49
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 14

    .line 99
    const-wide/16 v0, 0x0

    .line 100
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 101
    :try_start_0
    iget-wide v2, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->mDirtyFlags:J

    move-wide v0, v2

    .line 102
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->mDirtyFlags:J

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    const/4 v4, 0x0

    .line 105
    .local v4, "notificationHasBeenReadViewINVISIBLEViewVISIBLE":I
    const/4 v5, 0x0

    .line 106
    .local v5, "notificationHasBeenRead":Z
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->mNotification:Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    .line 107
    .local v6, "notification":Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    const/4 v7, 0x0

    .line 108
    .local v7, "notificationTitle":Ljava/lang/String;
    const/4 v8, 0x0

    .line 109
    .local v8, "notificationBody":Ljava/lang/String;
    const/4 v9, 0x0

    .line 111
    .local v9, "notificationDate":Ljava/lang/String;
    const-wide/16 v10, 0x3

    and-long v12, v0, v10

    cmp-long v12, v12, v2

    if-eqz v12, :cond_4

    .line 115
    if-eqz v6, :cond_0

    .line 117
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getHasBeenRead()Z

    move-result v5

    .line 119
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 121
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getBody()Ljava/lang/String;

    move-result-object v8

    .line 123
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getDate()Ljava/lang/String;

    move-result-object v9

    .line 125
    :cond_0
    and-long v12, v0, v10

    cmp-long v12, v12, v2

    if-eqz v12, :cond_2

    .line 126
    if-eqz v5, :cond_1

    .line 127
    const-wide/16 v12, 0x8

    or-long/2addr v0, v12

    goto :goto_0

    .line 130
    :cond_1
    const-wide/16 v12, 0x4

    or-long/2addr v0, v12

    .line 136
    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    const/4 v12, 0x4

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    :goto_1
    move v4, v12

    .line 139
    :cond_4
    and-long/2addr v10, v0

    cmp-long v2, v10, v2

    if-eqz v2, :cond_5

    .line 142
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->hasBeenRead:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->textView10:Landroid/widget/TextView;

    invoke-static {v2, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 144
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->textView12:Landroid/widget/TextView;

    invoke-static {v2, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->textView9:Landroid/widget/TextView;

    invoke-static {v2, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 147
    :cond_5
    return-void

    .line 103
    .end local v4    # "notificationHasBeenReadViewINVISIBLEViewVISIBLE":I
    .end local v5    # "notificationHasBeenRead":Z
    .end local v6    # "notification":Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    .end local v7    # "notificationTitle":Ljava/lang/String;
    .end local v8    # "notificationBody":Ljava/lang/String;
    .end local v9    # "notificationDate":Ljava/lang/String;
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

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->mDirtyFlags:J

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
    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->mDirtyFlags:J

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->requestRebind()V

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

.method public setNotification(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V
    .locals 4
    .param p1, "Notification"    # Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Notification"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->mNotification:Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->mDirtyFlags:J

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 87
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;->requestRebind()V

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
    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 73
    move-object v1, p2

    check-cast v1, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBindingImpl;->setNotification(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V

    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0
.end method
