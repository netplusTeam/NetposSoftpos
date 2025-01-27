.class public Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;
.super Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;
.source "FragmentSalesBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private cashbackTextboxandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private enterNameandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private enterPinandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/core/widget/NestedScrollView;

.field private final mboundView8:Landroid/widget/ProgressBar;

.field private priceTextboxandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private remarkandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    const v1, 0x7f0a02d9

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    const v1, 0x7f0a0262

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    const v1, 0x7f0a00f4

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    const v1, 0x7f0a00b6

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    const v1, 0x7f0a00b5

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
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

    .line 219
    sget-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    invoke-static {p1, p2, v2, v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 17
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

    .line 222
    move-object/from16 v15, p0

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/EditText;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/EditText;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/EditText;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Button;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/widget/EditText;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/Spinner;

    const/4 v3, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/Spinner;)V

    .line 32
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl$1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl$1;-><init>(Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->cashbackTextboxandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 69
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl$2;

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl$2;-><init>(Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->enterNameandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 106
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl$3;

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl$3;-><init>(Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->enterPinandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 143
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl$4;

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl$4;-><init>(Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->priceTextboxandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 180
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl$5;

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl$5;-><init>(Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->remarkandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 542
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    .line 236
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->cashbackTextbox:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 237
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->enterName:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 238
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->enterPin:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 239
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mboundView0:Landroidx/core/widget/NestedScrollView;

    .line 240
    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->setTag(Ljava/lang/Object;)V

    .line 241
    const/16 v0, 0x8

    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mboundView8:Landroid/widget/ProgressBar;

    .line 242
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 243
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->priceTextbox:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 244
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->process:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 245
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->remark:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 246
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->salesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 247
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->invalidateAll()V

    .line 250
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

    .line 357
    .local p1, "ViewmodelAmount":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 358
    monitor-enter p0

    .line 359
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    .line 360
    monitor-exit p0

    .line 361
    const/4 v0, 0x1

    return v0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 363
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

    .line 366
    .local p1, "ViewmodelCashback":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 367
    monitor-enter p0

    .line 368
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    .line 369
    monitor-exit p0

    .line 370
    const/4 v0, 0x1

    return v0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 372
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

    .line 339
    .local p1, "ViewmodelCustomerName":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 340
    monitor-enter p0

    .line 341
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    .line 342
    monitor-exit p0

    .line 343
    const/4 v0, 0x1

    return v0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 345
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

    .line 348
    .local p1, "ViewmodelPin":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 349
    monitor-enter p0

    .line 350
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    .line 351
    monitor-exit p0

    .line 352
    const/4 v0, 0x1

    return v0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 354
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onChangeViewmodelRemark(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewmodelRemark",
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

    .line 330
    .local p1, "ViewmodelRemark":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 331
    monitor-enter p0

    .line 332
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    .line 333
    monitor-exit p0

    .line 334
    const/4 v0, 0x1

    return v0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 336
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

    .line 321
    .local p1, "ViewmodelTransactionState":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Integer;>;"
    if-nez p2, :cond_0

    .line 322
    monitor-enter p0

    .line 323
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    .line 324
    monitor-exit p0

    .line 325
    const/4 v0, 0x1

    return v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 327
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 37

    .line 377
    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    .line 378
    .local v2, "dirtyFlags":J
    monitor-enter p0

    .line 379
    :try_start_0
    iget-wide v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    move-wide v2, v4

    .line 380
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    .line 381
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "viewmodelAmountGetValue":Ljava/lang/String;
    const/4 v6, 0x0

    .line 384
    .local v6, "androidxDatabindingViewDataBindingSafeUnboxViewmodelTransactionStateGetValue":I
    const/4 v7, 0x0

    .line 385
    .local v7, "viewmodelTransactionState":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 386
    .local v8, "viewmodelRemark":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 387
    .local v9, "viewmodelCustomerName":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 388
    .local v10, "viewmodelPin":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 389
    .local v11, "viewmodelTransactionStateGetValue":Ljava/lang/Integer;
    const/4 v12, 0x0

    .line 390
    .local v12, "viewmodelAmount":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 391
    .local v13, "viewmodelCashback":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 392
    .local v14, "viewmodelCustomerNameGetValue":Ljava/lang/String;
    const/4 v15, 0x0

    .line 393
    .local v15, "viewmodelPinGetValue":Ljava/lang/String;
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mType:Ljava/lang/String;

    .line 394
    .local v4, "type":Ljava/lang/String;
    const/4 v5, 0x0

    .line 395
    .local v5, "viewmodelCashbackGetValue":Ljava/lang/String;
    const/16 v18, 0x0

    .line 396
    .local v18, "viewmodelRemarkGetValue":Ljava/lang/String;
    move-object/from16 v19, v0

    .end local v0    # "viewmodelAmountGetValue":Ljava/lang/String;
    .local v19, "viewmodelAmountGetValue":Ljava/lang/String;
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    .line 398
    .local v0, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    nop

    .line 400
    const-wide/16 v20, 0x1bf

    and-long v20, v2, v20

    const-wide/16 v16, 0x0

    cmp-long v20, v20, v16

    const-wide/16 v21, 0x190

    const-wide/16 v23, 0x188

    const-wide/16 v25, 0x184

    const-wide/16 v27, 0x182

    const-wide/16 v29, 0x181

    const-wide/16 v31, 0x1a0

    if-eqz v20, :cond_e

    .line 403
    and-long v33, v2, v29

    cmp-long v20, v33, v16

    if-eqz v20, :cond_2

    .line 405
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getTransactionState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    .line 409
    :cond_0
    move-object/from16 v20, v5

    .end local v5    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .local v20, "viewmodelCashbackGetValue":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v7}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 412
    if-eqz v7, :cond_1

    .line 414
    invoke-virtual {v7}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljava/lang/Integer;

    .line 419
    :cond_1
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v6

    goto :goto_0

    .line 403
    .end local v20    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .restart local v5    # "viewmodelCashbackGetValue":Ljava/lang/String;
    :cond_2
    move-object/from16 v20, v5

    .line 421
    .end local v5    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .restart local v20    # "viewmodelCashbackGetValue":Ljava/lang/String;
    :goto_0
    and-long v33, v2, v27

    const-wide/16 v16, 0x0

    cmp-long v5, v33, v16

    if-eqz v5, :cond_4

    .line 423
    if-eqz v0, :cond_3

    .line 425
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getRemark()Landroidx/lifecycle/MutableLiveData;

    move-result-object v8

    .line 427
    :cond_3
    const/4 v5, 0x1

    invoke-virtual {v1, v5, v8}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 430
    if-eqz v8, :cond_4

    .line 432
    invoke-virtual {v8}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/String;

    .line 435
    :cond_4
    and-long v33, v2, v25

    const-wide/16 v16, 0x0

    cmp-long v5, v33, v16

    if-eqz v5, :cond_6

    .line 437
    if-eqz v0, :cond_5

    .line 439
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getCustomerName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v9

    .line 441
    :cond_5
    const/4 v5, 0x2

    invoke-virtual {v1, v5, v9}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 444
    if-eqz v9, :cond_6

    .line 446
    invoke-virtual {v9}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Ljava/lang/String;

    .line 449
    :cond_6
    and-long v33, v2, v23

    const-wide/16 v16, 0x0

    cmp-long v5, v33, v16

    if-eqz v5, :cond_8

    .line 451
    if-eqz v0, :cond_7

    .line 453
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getPin()Landroidx/lifecycle/MutableLiveData;

    move-result-object v10

    .line 455
    :cond_7
    const/4 v5, 0x3

    invoke-virtual {v1, v5, v10}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 458
    if-eqz v10, :cond_8

    .line 460
    invoke-virtual {v10}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Ljava/lang/String;

    .line 463
    :cond_8
    and-long v33, v2, v21

    const-wide/16 v16, 0x0

    cmp-long v5, v33, v16

    if-eqz v5, :cond_a

    .line 465
    if-eqz v0, :cond_9

    .line 467
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getAmount()Landroidx/lifecycle/MutableLiveData;

    move-result-object v12

    .line 469
    :cond_9
    const/4 v5, 0x4

    invoke-virtual {v1, v5, v12}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 472
    if-eqz v12, :cond_a

    .line 474
    invoke-virtual {v12}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v19, v5

    .line 477
    :cond_a
    and-long v33, v2, v31

    const-wide/16 v16, 0x0

    cmp-long v5, v33, v16

    if-eqz v5, :cond_d

    .line 479
    if-eqz v0, :cond_b

    .line 481
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getCashback()Landroidx/lifecycle/MutableLiveData;

    move-result-object v13

    .line 483
    :cond_b
    const/4 v5, 0x5

    invoke-virtual {v1, v5, v13}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 486
    if-eqz v13, :cond_c

    .line 488
    invoke-virtual {v13}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v35, v18

    move-object/from16 v18, v0

    move-object v0, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object/from16 v8, v35

    move/from16 v36, v6

    move-object v6, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v7

    move/from16 v7, v36

    .end local v20    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .restart local v5    # "viewmodelCashbackGetValue":Ljava/lang/String;
    goto/16 :goto_1

    .line 486
    .end local v5    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .restart local v20    # "viewmodelCashbackGetValue":Ljava/lang/String;
    :cond_c
    move-object/from16 v5, v19

    move-object/from16 v19, v7

    move v7, v6

    move-object/from16 v6, v20

    move-object/from16 v35, v18

    move-object/from16 v18, v0

    move-object v0, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object/from16 v8, v35

    goto :goto_1

    .line 477
    :cond_d
    move-object/from16 v5, v19

    move-object/from16 v19, v7

    move v7, v6

    move-object/from16 v6, v20

    move-object/from16 v35, v18

    move-object/from16 v18, v0

    move-object v0, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object/from16 v8, v35

    goto :goto_1

    .line 400
    .end local v20    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .restart local v5    # "viewmodelCashbackGetValue":Ljava/lang/String;
    :cond_e
    move-object/from16 v20, v5

    .end local v5    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .restart local v20    # "viewmodelCashbackGetValue":Ljava/lang/String;
    move-object/from16 v5, v19

    move-object/from16 v19, v7

    move v7, v6

    move-object/from16 v6, v20

    move-object/from16 v35, v18

    move-object/from16 v18, v0

    move-object v0, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object/from16 v8, v35

    .line 493
    .end local v20    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .local v0, "viewmodelPinGetValue":Ljava/lang/String;
    .local v5, "viewmodelAmountGetValue":Ljava/lang/String;
    .local v6, "viewmodelCashbackGetValue":Ljava/lang/String;
    .local v7, "androidxDatabindingViewDataBindingSafeUnboxViewmodelTransactionStateGetValue":I
    .local v8, "viewmodelRemarkGetValue":Ljava/lang/String;
    .local v9, "viewmodelRemark":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .local v10, "viewmodelCustomerName":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .local v11, "viewmodelPin":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .local v12, "viewmodelTransactionStateGetValue":Ljava/lang/Integer;
    .local v13, "viewmodelAmount":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .local v14, "viewmodelCashback":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .local v15, "viewmodelCustomerNameGetValue":Ljava/lang/String;
    .local v18, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .local v19, "viewmodelTransactionState":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Integer;>;"
    :goto_1
    and-long v31, v2, v31

    const-wide/16 v16, 0x0

    cmp-long v20, v31, v16

    if-eqz v20, :cond_f

    .line 496
    move-object/from16 v20, v9

    .end local v9    # "viewmodelRemark":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .local v20, "viewmodelRemark":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    iget-object v9, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->cashbackTextbox:Landroid/widget/EditText;

    invoke-static {v9, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 493
    .end local v20    # "viewmodelRemark":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .restart local v9    # "viewmodelRemark":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    :cond_f
    move-object/from16 v20, v9

    .line 498
    .end local v9    # "viewmodelRemark":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .restart local v20    # "viewmodelRemark":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    :goto_2
    const-wide/16 v31, 0x100

    and-long v31, v2, v31

    cmp-long v9, v31, v16

    if-eqz v9, :cond_10

    .line 501
    iget-object v9, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->cashbackTextbox:Landroid/widget/EditText;

    move-object/from16 v31, v6

    .end local v6    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .local v31, "viewmodelCashbackGetValue":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v32, v6

    check-cast v32, Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    move-object/from16 v32, v6

    check-cast v32, Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    move-object/from16 v32, v6

    check-cast v32, Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    move-object/from16 v32, v10

    .end local v10    # "viewmodelCustomerName":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .local v32, "viewmodelCustomerName":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    iget-object v10, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->cashbackTextboxandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v9, v6, v6, v6, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 502
    iget-object v9, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->enterName:Landroid/widget/EditText;

    iget-object v10, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->enterNameandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v9, v6, v6, v6, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 503
    iget-object v9, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->enterPin:Landroid/widget/EditText;

    iget-object v10, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->enterPinandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v9, v6, v6, v6, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 504
    iget-object v9, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->priceTextbox:Landroid/widget/EditText;

    iget-object v10, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->priceTextboxandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v9, v6, v6, v6, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 505
    iget-object v9, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->remark:Landroid/widget/EditText;

    iget-object v10, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->remarkandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v9, v6, v6, v6, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    goto :goto_3

    .line 498
    .end local v31    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .end local v32    # "viewmodelCustomerName":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .restart local v6    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .restart local v10    # "viewmodelCustomerName":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    :cond_10
    move-object/from16 v31, v6

    move-object/from16 v32, v10

    .line 507
    .end local v6    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .end local v10    # "viewmodelCustomerName":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .restart local v31    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .restart local v32    # "viewmodelCustomerName":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    :goto_3
    and-long v9, v2, v25

    const-wide/16 v16, 0x0

    cmp-long v6, v9, v16

    if-eqz v6, :cond_11

    .line 510
    iget-object v6, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->enterName:Landroid/widget/EditText;

    invoke-static {v6, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 512
    :cond_11
    and-long v9, v2, v23

    cmp-long v6, v9, v16

    if-eqz v6, :cond_12

    .line 515
    iget-object v6, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->enterPin:Landroid/widget/EditText;

    invoke-static {v6, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 517
    :cond_12
    and-long v9, v2, v29

    cmp-long v6, v9, v16

    if-eqz v6, :cond_13

    .line 520
    iget-object v6, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mboundView8:Landroid/widget/ProgressBar;

    invoke-static {v6, v7}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->paymentProgress(Landroid/widget/ProgressBar;I)V

    .line 521
    iget-object v6, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->process:Landroid/widget/Button;

    invoke-static {v6, v7}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->processButtonState(Landroid/widget/Button;I)V

    .line 523
    :cond_13
    and-long v9, v2, v21

    const-wide/16 v16, 0x0

    cmp-long v6, v9, v16

    if-eqz v6, :cond_14

    .line 526
    iget-object v6, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->priceTextbox:Landroid/widget/EditText;

    invoke-static {v6, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 528
    :cond_14
    and-long v9, v2, v27

    cmp-long v6, v9, v16

    if-eqz v6, :cond_15

    .line 531
    iget-object v6, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->remark:Landroid/widget/EditText;

    invoke-static {v6, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 533
    :cond_15
    const-wide/16 v9, 0x140

    and-long/2addr v9, v2

    cmp-long v6, v9, v16

    if-eqz v6, :cond_16

    .line 536
    iget-object v6, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->salesHeader:Landroid/widget/TextView;

    invoke-static {v6, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 538
    :cond_16
    return-void

    .line 381
    .end local v0    # "viewmodelPinGetValue":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "viewmodelAmountGetValue":Ljava/lang/String;
    .end local v7    # "androidxDatabindingViewDataBindingSafeUnboxViewmodelTransactionStateGetValue":I
    .end local v8    # "viewmodelRemarkGetValue":Ljava/lang/String;
    .end local v11    # "viewmodelPin":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .end local v12    # "viewmodelTransactionStateGetValue":Ljava/lang/Integer;
    .end local v13    # "viewmodelAmount":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .end local v14    # "viewmodelCashback":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .end local v15    # "viewmodelCustomerNameGetValue":Ljava/lang/String;
    .end local v18    # "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .end local v19    # "viewmodelTransactionState":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Integer;>;"
    .end local v20    # "viewmodelRemark":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .end local v31    # "viewmodelCashbackGetValue":Ljava/lang/String;
    .end local v32    # "viewmodelCustomerName":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
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

    .line 262
    monitor-enter p0

    .line 263
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 266
    :cond_0
    monitor-exit p0

    .line 267
    const/4 v0, 0x0

    return v0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 254
    monitor-enter p0

    .line 255
    const-wide/16 v0, 0x100

    :try_start_0
    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    .line 256
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->requestRebind()V

    .line 258
    return-void

    .line 256
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

    .line 304
    packed-switch p1, :pswitch_data_0

    .line 318
    const/4 v0, 0x0

    return v0

    .line 316
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->onChangeViewmodelCashback(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    .line 314
    :pswitch_1
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->onChangeViewmodelAmount(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    .line 312
    :pswitch_2
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->onChangeViewmodelPin(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    .line 310
    :pswitch_3
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->onChangeViewmodelCustomerName(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    .line 308
    :pswitch_4
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->onChangeViewmodelRemark(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    .line 306
    :pswitch_5
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->onChangeViewmodelTransactionState(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
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

    .line 286
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mType:Ljava/lang/String;

    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    .line 289
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->notifyPropertyChanged(I)V

    .line 291
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->requestRebind()V

    .line 292
    return-void

    .line 289
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

    .line 272
    const/4 v0, 0x1

    .line 273
    .local v0, "variableSet":Z
    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    .line 274
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_0
    const/4 v1, 0x5

    if-ne v1, p1, :cond_1

    .line 277
    move-object v1, p2

    check-cast v1, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;)V

    goto :goto_0

    .line 280
    :cond_1
    const/4 v0, 0x0

    .line 282
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

    .line 294
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    .line 295
    monitor-enter p0

    .line 296
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mDirtyFlags:J

    .line 297
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->notifyPropertyChanged(I)V

    .line 299
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->requestRebind()V

    .line 300
    return-void

    .line 297
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
