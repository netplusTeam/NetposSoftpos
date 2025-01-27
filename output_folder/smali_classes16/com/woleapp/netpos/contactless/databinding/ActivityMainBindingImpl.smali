.class public Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;
.super Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;
.source "ActivityMainBindingImpl.java"


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

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 16
    const-string v1, "dashboard_header"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    new-array v2, v2, [I

    const v5, 0x7f0d0021

    aput v5, v2, v4

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 21
    const v1, 0x7f0a00e8

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    const v1, 0x7f0a00fd

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
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

    .line 33
    sget-object v0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8
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

    .line 36
    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/FrameLayout;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;)V

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 41
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->dashboardHeader:Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 42
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->invalidateAll()V

    .line 47
    return-void
.end method

.method private onChangeDashboardHeader(Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;I)Z
    .locals 4
    .param p1, "DashboardHeader"    # Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "DashboardHeader",
            "fieldId"
        }
    .end annotation

    .line 92
    if-nez p2, :cond_0

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 95
    monitor-exit p0

    .line 96
    const/4 v0, 0x1

    return v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 98
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 4

    .line 103
    const-wide/16 v0, 0x0

    .line 104
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide v2, p0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    move-wide v0, v2

    .line 106
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->dashboardHeader:Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 110
    return-void

    .line 107
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

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 62
    monitor-exit p0

    return v1

    .line 64
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->dashboardHeader:Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    return v1

    .line 68
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 64
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

    .line 51
    monitor-enter p0

    .line 52
    const-wide/16 v0, 0x2

    :try_start_0
    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->dashboardHeader:Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;->invalidateAll()V

    .line 55
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->requestRebind()V

    .line 56
    return-void

    .line 53
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

    .line 85
    packed-switch p1, :pswitch_data_0

    .line 89
    const/4 v0, 0x0

    return v0

    .line 87
    :pswitch_0
    move-object v0, p2

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->onChangeDashboardHeader(Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;I)Z

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

    .line 79
    invoke-super {p0, p1}, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 80
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/ActivityMainBindingImpl;->dashboardHeader:Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/databinding/DashboardHeaderBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 81
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

    .line 73
    const/4 v0, 0x1

    .line 74
    .local v0, "variableSet":Z
    return v0
.end method
