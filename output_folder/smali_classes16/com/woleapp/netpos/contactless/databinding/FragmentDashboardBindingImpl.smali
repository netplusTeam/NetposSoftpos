.class public Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;
.super Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;
.source "FragmentDashboardBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private cashbackTextboxandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private enterNameandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private enterPinandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/core/widget/NestedScrollView;

.field private final mboundView7:Landroid/widget/ProgressBar;

.field private priceTextboxandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    const v1, 0x7f0a0147

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    const v1, 0x7f0a0099

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    const v1, 0x7f0a037c

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    const v1, 0x7f0a02d9

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    const v1, 0x7f0a0262

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    const v1, 0x7f0a00b6

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    const v1, 0x7f0a00b5

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    const v1, 0x7f0a01b1

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    const v1, 0x7f0a008e

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    const v1, 0x7f0a008f

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    const v1, 0x7f0a0090

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    const v1, 0x7f0a0091

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    const v1, 0x7f0a0092

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    const v1, 0x7f0a0093

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    const v1, 0x7f0a0094

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    const v1, 0x7f0a0095

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    const v1, 0x7f0a0096

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    const v1, 0x7f0a009b

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    const v1, 0x7f0a0098

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    const v1, 0x7f0a008d

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
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

    .line 197
    sget-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x1c

    invoke-static {p1, p2, v2, v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 31
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

    .line 200
    const/16 v4, 0x1b

    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x10

    aget-object v5, p3, v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x11

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v7, 0x12

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0x13

    aget-object v8, p3, v8

    check-cast v8, Landroid/widget/TextView;

    const/16 v9, 0x14

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/TextView;

    const/16 v10, 0x15

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/TextView;

    const/16 v11, 0x16

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/TextView;

    const/16 v12, 0x17

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/TextView;

    const/16 v13, 0x18

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/TextView;

    const/16 v14, 0x1a

    aget-object v14, p3, v14

    check-cast v14, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v15, 0x9

    aget-object v15, p3, v15

    check-cast v15, Landroid/widget/Button;

    const/16 v16, 0x19

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0xe

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0xd

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/LinearLayout;

    const/16 v19, 0x3

    aget-object v19, p3, v19

    check-cast v19, Landroid/widget/EditText;

    const/16 v20, 0x4

    aget-object v20, p3, v20

    check-cast v20, Landroid/widget/EditText;

    const/16 v21, 0x5

    aget-object v21, p3, v21

    check-cast v21, Landroid/widget/EditText;

    const/16 v22, 0x8

    aget-object v22, p3, v22

    check-cast v22, Landroid/widget/EditText;

    const/16 v23, 0xf

    aget-object v23, p3, v23

    check-cast v23, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v24, 0xc

    aget-object v24, p3, v24

    check-cast v24, Landroid/widget/LinearLayout;

    const/16 v25, 0x2

    aget-object v25, p3, v25

    check-cast v25, Landroid/widget/EditText;

    const/16 v26, 0x6

    aget-object v26, p3, v26

    check-cast v26, Landroid/widget/Button;

    const/16 v27, 0x1

    aget-object v27, p3, v27

    check-cast v27, Landroid/widget/TextView;

    const/16 v28, 0xb

    aget-object v28, p3, v28

    check-cast v28, Landroid/widget/Spinner;

    const/16 v29, 0xa

    aget-object v29, p3, v29

    check-cast v29, Landroid/widget/TextView;

    const/16 v30, 0x5

    move/from16 v3, v30

    invoke-direct/range {v0 .. v29}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Spinner;Landroid/widget/TextView;)V

    .line 47
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$1;-><init>(Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->cashbackTextboxandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 84
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$2;

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$2;-><init>(Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->enterNameandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 121
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$3;

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$3;-><init>(Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->enterPinandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 158
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$4;

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$4;-><init>(Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->priceTextboxandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 500
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    .line 228
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->cashbackTextbox:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 229
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->enterName:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 230
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->enterPin:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 231
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mboundView0:Landroidx/core/widget/NestedScrollView;

    .line 232
    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->setTag(Ljava/lang/Object;)V

    .line 233
    const/4 v0, 0x7

    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mboundView7:Landroid/widget/ProgressBar;

    .line 234
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 235
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->priceTextbox:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 236
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->process:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 237
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->salesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 238
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->invalidateAll()V

    .line 241
    return-void
.end method

.method private onChangeViewmodelAmount(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewmodelAmount",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 346
    .local p1, "ViewmodelAmount":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 347
    monitor-enter p0

    .line 348
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    .line 349
    monitor-exit p0

    .line 350
    const/4 v0, 0x1

    return v0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 352
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onChangeViewmodelCashback(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewmodelCashback",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 328
    .local p1, "ViewmodelCashback":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 329
    monitor-enter p0

    .line 330
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    .line 331
    monitor-exit p0

    .line 332
    const/4 v0, 0x1

    return v0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 334
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onChangeViewmodelCustomerName(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewmodelCustomerName",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 337
    .local p1, "ViewmodelCustomerName":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 338
    monitor-enter p0

    .line 339
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    .line 340
    monitor-exit p0

    .line 341
    const/4 v0, 0x1

    return v0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 343
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onChangeViewmodelPin(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewmodelPin",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 319
    .local p1, "ViewmodelPin":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    .line 322
    monitor-exit p0

    .line 323
    const/4 v0, 0x1

    return v0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 325
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onChangeViewmodelTransactionState(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewmodelTransactionState",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .line 310
    .local p1, "ViewmodelTransactionState":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Integer;>;"
    if-nez p2, :cond_0

    .line 311
    monitor-enter p0

    .line 312
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    .line 313
    monitor-exit p0

    .line 314
    const/4 v0, 0x1

    return v0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 316
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 31

    .line 357
    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    .line 358
    .local v2, "dirtyFlags":J
    monitor-enter p0

    .line 359
    :try_start_0
    iget-wide v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    move-wide v2, v4

    .line 360
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    .line 361
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "viewmodelAmountGetValue":Ljava/lang/String;
    const/4 v6, 0x0

    .line 364
    .local v6, "viewmodelTransactionState":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 365
    .local v7, "viewmodelPin":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 366
    .local v8, "viewmodelTransactionStateGetValue":Ljava/lang/Integer;
    const/4 v9, 0x0

    .line 367
    .local v9, "viewmodelCashback":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 368
    .local v10, "viewmodelPinGetValue":Ljava/lang/String;
    iget-object v11, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mType:Ljava/lang/String;

    .line 369
    .local v11, "type":Ljava/lang/String;
    const/4 v12, 0x0

    .line 370
    .local v12, "androidxDatabindingViewDataBindingSafeUnboxViewmodelTransactionStateGetValue":I
    const/4 v13, 0x0

    .line 371
    .local v13, "viewmodelCustomerName":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 372
    .local v14, "viewmodelAmount":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 373
    .local v15, "viewmodelCustomerNameGetValue":Ljava/lang/String;
    const/16 v16, 0x0

    .line 374
    .local v16, "viewmodelCashbackGetValue":Ljava/lang/String;
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    .line 376
    .local v4, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    nop

    .line 378
    const-wide/16 v19, 0xdf

    and-long v19, v2, v19

    const-wide/16 v17, 0x0

    cmp-long v5, v19, v17

    const-wide/16 v19, 0xd0

    const-wide/16 v21, 0xc8

    const-wide/16 v23, 0xc2

    const-wide/16 v25, 0xc1

    const-wide/16 v27, 0xc4

    if-eqz v5, :cond_c

    .line 381
    and-long v29, v2, v25

    cmp-long v5, v29, v17

    if-eqz v5, :cond_2

    .line 383
    if-eqz v4, :cond_0

    .line 385
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getTransactionState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    .line 387
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 390
    if-eqz v6, :cond_1

    .line 392
    invoke-virtual {v6}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/Integer;

    .line 397
    :cond_1
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v12

    .line 399
    :cond_2
    and-long v29, v2, v23

    const-wide/16 v17, 0x0

    cmp-long v5, v29, v17

    if-eqz v5, :cond_4

    .line 401
    if-eqz v4, :cond_3

    .line 403
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getPin()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    .line 405
    :cond_3
    const/4 v5, 0x1

    invoke-virtual {v1, v5, v7}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 408
    if-eqz v7, :cond_4

    .line 410
    invoke-virtual {v7}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    .line 413
    :cond_4
    and-long v29, v2, v27

    const-wide/16 v17, 0x0

    cmp-long v5, v29, v17

    if-eqz v5, :cond_6

    .line 415
    if-eqz v4, :cond_5

    .line 417
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getCashback()Landroidx/lifecycle/MutableLiveData;

    move-result-object v9

    .line 419
    :cond_5
    const/4 v5, 0x2

    invoke-virtual {v1, v5, v9}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 422
    if-eqz v9, :cond_6

    .line 424
    invoke-virtual {v9}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Ljava/lang/String;

    .line 427
    :cond_6
    and-long v29, v2, v21

    const-wide/16 v17, 0x0

    cmp-long v5, v29, v17

    if-eqz v5, :cond_8

    .line 429
    if-eqz v4, :cond_7

    .line 431
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getCustomerName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v13

    .line 433
    :cond_7
    const/4 v5, 0x3

    invoke-virtual {v1, v5, v13}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 436
    if-eqz v13, :cond_8

    .line 438
    invoke-virtual {v13}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Ljava/lang/String;

    .line 441
    :cond_8
    and-long v29, v2, v19

    const-wide/16 v17, 0x0

    cmp-long v5, v29, v17

    if-eqz v5, :cond_b

    .line 443
    if-eqz v4, :cond_9

    .line 445
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getAmount()Landroidx/lifecycle/MutableLiveData;

    move-result-object v14

    .line 447
    :cond_9
    const/4 v5, 0x4

    invoke-virtual {v1, v5, v14}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 450
    if-eqz v14, :cond_a

    .line 452
    invoke-virtual {v14}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object/from16 v5, v16

    goto :goto_0

    .line 450
    :cond_a
    move-object/from16 v5, v16

    goto :goto_0

    .line 441
    :cond_b
    move-object/from16 v5, v16

    goto :goto_0

    .line 378
    :cond_c
    move-object/from16 v5, v16

    .line 457
    .end local v16    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .local v5, "viewmodelCashbackGetValue":Ljava/lang/String;
    :goto_0
    and-long v27, v2, v27

    const-wide/16 v16, 0x0

    cmp-long v18, v27, v16

    if-eqz v18, :cond_d

    .line 460
    move-object/from16 v27, v4

    .end local v4    # "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .local v27, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->cashbackTextbox:Landroid/widget/EditText;

    invoke-static {v4, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 457
    .end local v27    # "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .restart local v4    # "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    :cond_d
    move-object/from16 v27, v4

    .line 462
    .end local v4    # "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .restart local v27    # "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    :goto_1
    const-wide/16 v28, 0x80

    and-long v28, v2, v28

    cmp-long v4, v28, v16

    if-eqz v4, :cond_e

    .line 465
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->cashbackTextbox:Landroid/widget/EditText;

    move-object/from16 v16, v5

    .end local v5    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .restart local v16    # "viewmodelCashbackGetValue":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v28, v5

    check-cast v28, Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    move-object/from16 v28, v5

    check-cast v28, Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    move-object/from16 v28, v5

    check-cast v28, Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    move-object/from16 v28, v6

    .end local v6    # "viewmodelTransactionState":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Integer;>;"
    .local v28, "viewmodelTransactionState":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Integer;>;"
    iget-object v6, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->cashbackTextboxandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v4, v5, v5, v5, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 466
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->enterName:Landroid/widget/EditText;

    iget-object v6, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->enterNameandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v4, v5, v5, v5, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 467
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->enterPin:Landroid/widget/EditText;

    iget-object v6, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->enterPinandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v4, v5, v5, v5, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 468
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->priceTextbox:Landroid/widget/EditText;

    iget-object v6, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->priceTextboxandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v4, v5, v5, v5, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    goto :goto_2

    .line 462
    .end local v16    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .end local v28    # "viewmodelTransactionState":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Integer;>;"
    .restart local v5    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .restart local v6    # "viewmodelTransactionState":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Integer;>;"
    :cond_e
    move-object/from16 v16, v5

    move-object/from16 v28, v6

    .line 470
    .end local v5    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .end local v6    # "viewmodelTransactionState":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Integer;>;"
    .restart local v16    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .restart local v28    # "viewmodelTransactionState":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Integer;>;"
    :goto_2
    and-long v4, v2, v21

    const-wide/16 v17, 0x0

    cmp-long v4, v4, v17

    if-eqz v4, :cond_f

    .line 473
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->enterName:Landroid/widget/EditText;

    invoke-static {v4, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 475
    :cond_f
    and-long v4, v2, v23

    cmp-long v4, v4, v17

    if-eqz v4, :cond_10

    .line 478
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->enterPin:Landroid/widget/EditText;

    invoke-static {v4, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 480
    :cond_10
    and-long v4, v2, v25

    cmp-long v4, v4, v17

    if-eqz v4, :cond_11

    .line 483
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mboundView7:Landroid/widget/ProgressBar;

    invoke-static {v4, v12}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->paymentProgress(Landroid/widget/ProgressBar;I)V

    .line 484
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->process:Landroid/widget/Button;

    invoke-static {v4, v12}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->processButtonState(Landroid/widget/Button;I)V

    .line 486
    :cond_11
    and-long v4, v2, v19

    const-wide/16 v17, 0x0

    cmp-long v4, v4, v17

    if-eqz v4, :cond_12

    .line 489
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->priceTextbox:Landroid/widget/EditText;

    invoke-static {v4, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 491
    :cond_12
    const-wide/16 v4, 0xa0

    and-long/2addr v4, v2

    cmp-long v4, v4, v17

    if-eqz v4, :cond_13

    .line 494
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->salesHeader:Landroid/widget/TextView;

    invoke-static {v4, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 496
    :cond_13
    return-void

    .line 361
    .end local v0    # "viewmodelAmountGetValue":Ljava/lang/String;
    .end local v7    # "viewmodelPin":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .end local v8    # "viewmodelTransactionStateGetValue":Ljava/lang/Integer;
    .end local v9    # "viewmodelCashback":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .end local v10    # "viewmodelPinGetValue":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    .end local v12    # "androidxDatabindingViewDataBindingSafeUnboxViewmodelTransactionStateGetValue":I
    .end local v13    # "viewmodelCustomerName":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .end local v14    # "viewmodelAmount":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .end local v15    # "viewmodelCustomerNameGetValue":Ljava/lang/String;
    .end local v16    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .end local v27    # "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .end local v28    # "viewmodelTransactionState":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Integer;>;"
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

    .line 253
    monitor-enter p0

    .line 254
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 257
    :cond_0
    monitor-exit p0

    .line 258
    const/4 v0, 0x0

    return v0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 245
    monitor-enter p0

    .line 246
    const-wide/16 v0, 0x80

    :try_start_0
    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    .line 247
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->requestRebind()V

    .line 249
    return-void

    .line 247
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

    .line 295
    packed-switch p1, :pswitch_data_0

    .line 307
    const/4 v0, 0x0

    return v0

    .line 305
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->onChangeViewmodelAmount(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    .line 303
    :pswitch_1
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->onChangeViewmodelCustomerName(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    .line 301
    :pswitch_2
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->onChangeViewmodelCashback(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    .line 299
    :pswitch_3
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->onChangeViewmodelPin(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    .line 297
    :pswitch_4
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->onChangeViewmodelTransactionState(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setType(Ljava/lang/String;)V
    .locals 4
    .param p1, "Type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Type"
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mType:Ljava/lang/String;

    .line 278
    monitor-enter p0

    .line 279
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    .line 280
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->notifyPropertyChanged(I)V

    .line 282
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->requestRebind()V

    .line 283
    return-void

    .line 280
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

    .line 263
    const/4 v0, 0x1

    .line 264
    .local v0, "variableSet":Z
    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    .line 265
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_0
    const/4 v1, 0x5

    if-ne v1, p1, :cond_1

    .line 268
    move-object v1, p2

    check-cast v1, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;)V

    goto :goto_0

    .line 271
    :cond_1
    const/4 v0, 0x0

    .line 273
    :goto_0
    return v0
.end method

.method public setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;)V
    .locals 4
    .param p1, "Viewmodel"    # Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Viewmodel"
        }
    .end annotation

    .line 285
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    .line 286
    monitor-enter p0

    .line 287
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mDirtyFlags:J

    .line 288
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->notifyPropertyChanged(I)V

    .line 290
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->requestRebind()V

    .line 291
    return-void

    .line 288
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
