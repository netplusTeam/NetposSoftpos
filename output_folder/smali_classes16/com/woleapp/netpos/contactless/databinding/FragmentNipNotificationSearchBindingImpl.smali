.class public Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;
.super Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBinding;
.source "FragmentNipNotificationSearchBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 16
    const-string v1, "layout_nip_notification_item"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    new-array v2, v2, [I

    const v5, 0x7f0d006b

    aput v5, v2, v4

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 21
    const v1, 0x7f0a02e1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    const v1, 0x7f0a02e0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    const v1, 0x7f0a02ba

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    const v1, 0x7f0a0272

    const/4 v2, 0x5

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
    sget-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10
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

    .line 38
    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageButton;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;Landroid/widget/ProgressBar;Landroid/widget/ImageButton;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->mDirtyFlags:J

    .line 45
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->nip:Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->invalidateAll()V

    .line 51
    return-void
.end method

.method private onChangeNip(Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;I)Z
    .locals 4
    .param p1, "Nip"    # Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "Nip",
            "fieldId"
        }
    .end annotation

    .line 96
    if-nez p2, :cond_0

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->mDirtyFlags:J

    .line 99
    monitor-exit p0

    .line 100
    const/4 v0, 0x1

    return v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 4

    .line 107
    const-wide/16 v0, 0x0

    .line 108
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 109
    :try_start_0
    iget-wide v2, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->mDirtyFlags:J

    move-wide v0, v2

    .line 110
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->mDirtyFlags:J

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->nip:Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 114
    return-void

    .line 111
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

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 66
    monitor-exit p0

    return v1

    .line 68
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->nip:Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    return v1

    .line 72
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 55
    monitor-enter p0

    .line 56
    const-wide/16 v0, 0x2

    :try_start_0
    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->mDirtyFlags:J

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->nip:Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;->invalidateAll()V

    .line 59
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->requestRebind()V

    .line 60
    return-void

    .line 57
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

    .line 89
    packed-switch p1, :pswitch_data_0

    .line 93
    const/4 v0, 0x0

    return v0

    .line 91
    :pswitch_0
    move-object v0, p2

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->onChangeNip(Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lifecycleOwner"
        }
    .end annotation

    .line 83
    invoke-super {p0, p1}, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 84
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationSearchBindingImpl;->nip:Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/databinding/LayoutNipNotificationItemBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 85
    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
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

    .line 77
    const/4 v0, 0x1

    .line 78
    .local v0, "variableSet":Z
    return v0
.end method
