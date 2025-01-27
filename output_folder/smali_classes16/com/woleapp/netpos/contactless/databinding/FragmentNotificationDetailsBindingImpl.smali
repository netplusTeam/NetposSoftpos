.class public Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;
.super Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBinding;
.source "FragmentNotificationDetailsBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    const v1, 0x7f0a019d

    const/4 v2, 0x4

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
    sget-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9
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

    check-cast v5, Landroid/widget/ImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 130
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->mDirtyFlags:J

    .line 37
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->mboundView0:Landroid/widget/ScrollView;

    .line 38
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->textView14:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->textView15:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->textView16:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->invalidateAll()V

    .line 45
    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 12

    .line 95
    const-wide/16 v0, 0x0

    .line 96
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 97
    :try_start_0
    iget-wide v2, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->mDirtyFlags:J

    move-wide v0, v2

    .line 98
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->mDirtyFlags:J

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->mNotification:Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    .line 101
    .local v4, "notification":Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    const/4 v5, 0x0

    .line 102
    .local v5, "notificationTitle":Ljava/lang/String;
    const/4 v6, 0x0

    .line 103
    .local v6, "notificationBody":Ljava/lang/String;
    const/4 v7, 0x0

    .line 105
    .local v7, "notificationDate":Ljava/lang/String;
    const-wide/16 v8, 0x3

    and-long v10, v0, v8

    cmp-long v10, v10, v2

    if-eqz v10, :cond_0

    .line 109
    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getBody()Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 119
    :cond_0
    and-long/2addr v8, v0

    cmp-long v2, v8, v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->textView14:Landroid/widget/TextView;

    invoke-static {v2, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->textView15:Landroid/widget/TextView;

    invoke-static {v2, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->textView16:Landroid/widget/TextView;

    invoke-static {v2, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 126
    :cond_1
    return-void

    .line 99
    .end local v4    # "notification":Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    .end local v5    # "notificationTitle":Ljava/lang/String;
    .end local v6    # "notificationBody":Ljava/lang/String;
    .end local v7    # "notificationDate":Ljava/lang/String;
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

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 61
    :cond_0
    monitor-exit p0

    .line 62
    const/4 v0, 0x0

    return v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 49
    monitor-enter p0

    .line 50
    const-wide/16 v0, 0x2

    :try_start_0
    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->mDirtyFlags:J

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->requestRebind()V

    .line 53
    return-void

    .line 51
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

    .line 88
    nop

    .line 90
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

    .line 78
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->mNotification:Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->mDirtyFlags:J

    .line 81
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->notifyPropertyChanged(I)V

    .line 83
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBinding;->requestRebind()V

    .line 84
    return-void

    .line 81
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

    .line 67
    const/4 v0, 0x1

    .line 68
    .local v0, "variableSet":Z
    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 69
    move-object v1, p2

    check-cast v1, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentNotificationDetailsBindingImpl;->setNotification(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V

    goto :goto_0

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0
.end method
