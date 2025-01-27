.class public Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;
.super Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;
.source "FragmentRegisterBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private addressandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private businessNameandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private contactInfoandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private emailandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/ScrollView;

.field private phoneandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    const v1, 0x7f0a01c3

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    const v1, 0x7f0a0331

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    const v1, 0x7f0a0351

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    const v1, 0x7f0a016b

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    const v1, 0x7f0a0307

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    const v1, 0x7f0a0330

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    const v1, 0x7f0a0254

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    const v1, 0x7f0a0168

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    const v1, 0x7f0a008b

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    const v1, 0x7f0a0130

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    const v1, 0x7f0a00a4

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    const v1, 0x7f0a00a3

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    const v1, 0x7f0a0283

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    const v1, 0x7f0a0282

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    const v1, 0x7f0a0248

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    const v1, 0x7f0a0246

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    const v1, 0x7f0a00d7

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    const v1, 0x7f0a00d5

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
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

    .line 285
    sget-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x1a

    invoke-static {p1, p2, v2, v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    .line 286
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 30
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

    .line 288
    const/4 v4, 0x3

    aget-object v4, p3, v4

    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v5, 0x7

    aget-object v5, p3, v5

    check-cast v5, Landroid/widget/ProgressBar;

    const/16 v6, 0x10

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/AutoCompleteTextView;

    const/4 v7, 0x6

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/Button;

    const/4 v8, 0x1

    aget-object v8, p3, v8

    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v9, 0x13

    aget-object v9, p3, v9

    check-cast v9, Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v10, 0x12

    aget-object v10, p3, v10

    check-cast v10, Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v11, 0x19

    aget-object v11, p3, v11

    check-cast v11, Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v12, 0x18

    aget-object v12, p3, v12

    check-cast v12, Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v13, 0x2

    aget-object v13, p3, v13

    check-cast v13, Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v14, 0x5

    aget-object v14, p3, v14

    check-cast v14, Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v15, 0x11

    aget-object v15, p3, v15

    check-cast v15, Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v16, 0xf

    aget-object v16, p3, v16

    check-cast v16, Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v17, 0xb

    aget-object v17, p3, v17

    check-cast v17, Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v18, 0x8

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/TextView;

    const/16 v19, 0x17

    aget-object v19, p3, v19

    check-cast v19, Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v20, 0x16

    aget-object v20, p3, v20

    check-cast v20, Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v21, 0x4

    aget-object v21, p3, v21

    check-cast v21, Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v22, 0xe

    aget-object v22, p3, v22

    check-cast v22, Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v23, 0x15

    aget-object v23, p3, v23

    check-cast v23, Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v24, 0x14

    aget-object v24, p3, v24

    check-cast v24, Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v25, 0xc

    aget-object v25, p3, v25

    check-cast v25, Landroid/widget/AutoCompleteTextView;

    const/16 v26, 0xa

    aget-object v26, p3, v26

    check-cast v26, Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v27, 0xd

    aget-object v27, p3, v27

    check-cast v27, Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v28, 0x9

    aget-object v28, p3, v28

    check-cast v28, Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v29, 0x2

    move/from16 v3, v29

    invoke-direct/range {v0 .. v28}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/textfield/TextInputEditText;Landroid/widget/ProgressBar;Landroid/widget/AutoCompleteTextView;Landroid/widget/Button;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/AutoCompleteTextView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 43
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$1;-><init>(Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->addressandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 91
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$2;

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$2;-><init>(Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->businessNameandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 139
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$3;

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$3;-><init>(Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->contactInfoandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 187
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$4;

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$4;-><init>(Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->emailandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 235
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$5;

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$5;-><init>(Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->phoneandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 495
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->mDirtyFlags:J

    .line 315
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->address:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setTag(Ljava/lang/Object;)V

    .line 316
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->authProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 317
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->btnLogin:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 318
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->businessName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setTag(Ljava/lang/Object;)V

    .line 319
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->contactInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setTag(Ljava/lang/Object;)V

    .line 320
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->email:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setTag(Ljava/lang/Object;)V

    .line 321
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->mboundView0:Landroid/widget/ScrollView;

    .line 322
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    .line 323
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->phone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setTag(Ljava/lang/Object;)V

    .line 324
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->invalidateAll()V

    .line 327
    return-void
.end method

.method private onChangeViewmodelAuthInProgress(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewmodelAuthInProgress",
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

    .line 379
    .local p1, "ViewmodelAuthInProgress":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    if-nez p2, :cond_0

    .line 380
    monitor-enter p0

    .line 381
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->mDirtyFlags:J

    .line 382
    monitor-exit p0

    .line 383
    const/4 v0, 0x1

    return v0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 385
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onChangeViewmodelRegistrationModel(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewmodelRegistrationModel",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/RegistrationModel;",
            ">;I)Z"
        }
    .end annotation

    .line 388
    .local p1, "ViewmodelRegistrationModel":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Lcom/woleapp/netpos/contactless/model/RegistrationModel;>;"
    if-nez p2, :cond_0

    .line 389
    monitor-enter p0

    .line 390
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->mDirtyFlags:J

    .line 391
    monitor-exit p0

    .line 392
    const/4 v0, 0x1

    return v0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 394
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 23

    .line 399
    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    .line 400
    .local v2, "dirtyFlags":J
    monitor-enter p0

    .line 401
    :try_start_0
    iget-wide v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->mDirtyFlags:J

    move-wide v2, v4

    .line 402
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->mDirtyFlags:J

    .line 403
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "viewmodelRegistrationModelEmail":Ljava/lang/String;
    const/4 v6, 0x0

    .line 406
    .local v6, "viewmodelRegistrationModelGetValue":Lcom/woleapp/netpos/contactless/model/RegistrationModel;
    const/4 v7, 0x0

    .line 407
    .local v7, "androidxDatabindingViewDataBindingSafeUnboxViewmodelAuthInProgressGetValue":Z
    const/4 v8, 0x0

    .line 408
    .local v8, "viewmodelRegistrationModelBusinessName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 409
    .local v9, "viewmodelAuthInProgressGetValue":Ljava/lang/Boolean;
    const/4 v10, 0x0

    .line 410
    .local v10, "viewmodelRegistrationModelBusinessAddress":Ljava/lang/String;
    const/4 v11, 0x0

    .line 411
    .local v11, "viewmodelRegistrationModelPhoneNumber":Ljava/lang/String;
    const/4 v12, 0x0

    .line 412
    .local v12, "viewmodelAuthInProgress":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    const/4 v13, 0x0

    .line 413
    .local v13, "viewmodelRegistrationModel":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Lcom/woleapp/netpos/contactless/model/RegistrationModel;>;"
    const/4 v14, 0x0

    .line 414
    .local v14, "viewmodelRegistrationModelContactInformation":Ljava/lang/String;
    iget-object v15, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    .line 416
    .local v15, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;
    const-wide/16 v16, 0xf

    and-long v16, v2, v16

    cmp-long v16, v16, v4

    const-wide/16 v17, 0xd

    const-wide/16 v19, 0xe

    if-eqz v16, :cond_5

    .line 419
    and-long v21, v2, v17

    cmp-long v16, v21, v4

    if-eqz v16, :cond_2

    .line 421
    if-eqz v15, :cond_0

    .line 423
    invoke-virtual {v15}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->getAuthInProgress()Landroidx/lifecycle/MutableLiveData;

    move-result-object v12

    .line 425
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v12}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 428
    if-eqz v12, :cond_1

    .line 430
    invoke-virtual {v12}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/Boolean;

    .line 435
    :cond_1
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v7

    .line 437
    :cond_2
    and-long v4, v2, v19

    const-wide/16 v21, 0x0

    cmp-long v4, v4, v21

    if-eqz v4, :cond_5

    .line 439
    if-eqz v15, :cond_3

    .line 441
    invoke-virtual {v15}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->getRegistrationModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v13

    .line 443
    :cond_3
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v13}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 446
    if-eqz v13, :cond_4

    .line 448
    invoke-virtual {v13}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/woleapp/netpos/contactless/model/RegistrationModel;

    .line 452
    :cond_4
    if-eqz v6, :cond_5

    .line 454
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/RegistrationModel;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/RegistrationModel;->getBusinessName()Ljava/lang/String;

    move-result-object v8

    .line 458
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/RegistrationModel;->getBusinessAddress()Ljava/lang/String;

    move-result-object v10

    .line 460
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/RegistrationModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v11

    .line 462
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/RegistrationModel;->getContactInformation()Ljava/lang/String;

    move-result-object v14

    .line 467
    :cond_5
    and-long v4, v2, v19

    const-wide/16 v19, 0x0

    cmp-long v4, v4, v19

    if-eqz v4, :cond_6

    .line 470
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->address:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v4, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 471
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->businessName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v4, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 472
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->contactInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v4, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 473
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->email:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v4, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 474
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->phone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v4, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 476
    :cond_6
    const-wide/16 v4, 0x8

    and-long/2addr v4, v2

    const-wide/16 v19, 0x0

    cmp-long v4, v4, v19

    if-eqz v4, :cond_7

    .line 479
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->address:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v5, 0x0

    move-object/from16 v16, v5

    check-cast v16, Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    move-object/from16 v16, v5

    check-cast v16, Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    move-object/from16 v16, v5

    check-cast v16, Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    move-object/from16 v16, v0

    .end local v0    # "viewmodelRegistrationModelEmail":Ljava/lang/String;
    .local v16, "viewmodelRegistrationModelEmail":Ljava/lang/String;
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->addressandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v4, v5, v5, v5, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 480
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->businessName:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->businessNameandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v0, v5, v5, v5, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 481
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->contactInfo:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->contactInfoandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v0, v5, v5, v5, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 482
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->email:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->emailandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v0, v5, v5, v5, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 483
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->phone:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->phoneandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v0, v5, v5, v5, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    goto :goto_0

    .line 476
    .end local v16    # "viewmodelRegistrationModelEmail":Ljava/lang/String;
    .restart local v0    # "viewmodelRegistrationModelEmail":Ljava/lang/String;
    :cond_7
    move-object/from16 v16, v0

    .line 485
    .end local v0    # "viewmodelRegistrationModelEmail":Ljava/lang/String;
    .restart local v16    # "viewmodelRegistrationModelEmail":Ljava/lang/String;
    :goto_0
    and-long v4, v2, v17

    const-wide/16 v17, 0x0

    cmp-long v0, v4, v17

    if-eqz v0, :cond_8

    .line 488
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->authProgress:Landroid/widget/ProgressBar;

    invoke-static {v0, v7}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->progressBarInProgress(Landroid/widget/ProgressBar;Z)V

    .line 489
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->btnLogin:Landroid/widget/Button;

    invoke-static {v0, v7}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->buttonInProgress(Landroid/widget/Button;Z)V

    .line 491
    :cond_8
    return-void

    .line 403
    .end local v6    # "viewmodelRegistrationModelGetValue":Lcom/woleapp/netpos/contactless/model/RegistrationModel;
    .end local v7    # "androidxDatabindingViewDataBindingSafeUnboxViewmodelAuthInProgressGetValue":Z
    .end local v8    # "viewmodelRegistrationModelBusinessName":Ljava/lang/String;
    .end local v9    # "viewmodelAuthInProgressGetValue":Ljava/lang/Boolean;
    .end local v10    # "viewmodelRegistrationModelBusinessAddress":Ljava/lang/String;
    .end local v11    # "viewmodelRegistrationModelPhoneNumber":Ljava/lang/String;
    .end local v12    # "viewmodelAuthInProgress":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    .end local v13    # "viewmodelRegistrationModel":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Lcom/woleapp/netpos/contactless/model/RegistrationModel;>;"
    .end local v14    # "viewmodelRegistrationModelContactInformation":Ljava/lang/String;
    .end local v15    # "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;
    .end local v16    # "viewmodelRegistrationModelEmail":Ljava/lang/String;
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

    .line 339
    monitor-enter p0

    .line 340
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 343
    :cond_0
    monitor-exit p0

    .line 344
    const/4 v0, 0x0

    return v0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 331
    monitor-enter p0

    .line 332
    const-wide/16 v0, 0x8

    :try_start_0
    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->mDirtyFlags:J

    .line 333
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->requestRebind()V

    .line 335
    return-void

    .line 333
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

    .line 370
    packed-switch p1, :pswitch_data_0

    .line 376
    const/4 v0, 0x0

    return v0

    .line 374
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->onChangeViewmodelRegistrationModel(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    .line 372
    :pswitch_1
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->onChangeViewmodelAuthInProgress(Landroidx/lifecycle/MutableLiveData;I)Z

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

    .line 349
    const/4 v0, 0x1

    .line 350
    .local v0, "variableSet":Z
    const/4 v1, 0x5

    if-ne v1, p1, :cond_0

    .line 351
    move-object v1, p2

    check-cast v1, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V

    goto :goto_0

    .line 354
    :cond_0
    const/4 v0, 0x0

    .line 356
    :goto_0
    return v0
.end method

.method public setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V
    .locals 4
    .param p1, "Viewmodel"    # Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Viewmodel"
        }
    .end annotation

    .line 360
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    .line 361
    monitor-enter p0

    .line 362
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->mDirtyFlags:J

    .line 363
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->notifyPropertyChanged(I)V

    .line 365
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->requestRebind()V

    .line 366
    return-void

    .line 363
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
