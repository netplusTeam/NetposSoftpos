.class public Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;
.super Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;
.source "FragmentLoginBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private etEmailandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private etPwdandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    const v1, 0x7f0a01c3

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    const v1, 0x7f0a0338

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    const v1, 0x7f0a0336

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    const v1, 0x7f0a0167

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    const v1, 0x7f0a0287

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    const v1, 0x7f0a00e6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    const v1, 0x7f0a032c

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    const v1, 0x7f0a026b

    const/16 v2, 0xc

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

    .line 109
    sget-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-static {p1, p2, v2, v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    .line 110
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

    .line 112
    move-object/from16 v15, p0

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ProgressBar;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Button;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v14, v0

    check-cast v14, Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ProgressBar;Landroid/widget/Button;Landroid/widget/ImageView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 33
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl$1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl$1;-><init>(Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->etEmailandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 70
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl$2;

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl$2;-><init>(Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->etPwdandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 309
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mDirtyFlags:J

    .line 126
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->authProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 127
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->btnLogin:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->etEmail:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->etPwd:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setTag(Ljava/lang/Object;)V

    .line 130
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 131
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 132
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->invalidateAll()V

    .line 135
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

    .line 207
    .local p1, "ViewmodelAuthInProgress":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    if-nez p2, :cond_0

    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mDirtyFlags:J

    .line 210
    monitor-exit p0

    .line 211
    const/4 v0, 0x1

    return v0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onChangeViewmodelPasswordLiveData(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewmodelPasswordLiveData",
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

    .line 189
    .local p1, "ViewmodelPasswordLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 190
    monitor-enter p0

    .line 191
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mDirtyFlags:J

    .line 192
    monitor-exit p0

    .line 193
    const/4 v0, 0x1

    return v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 195
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onChangeViewmodelUsernameLiveData(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewmodelUsernameLiveData",
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

    .line 198
    .local p1, "ViewmodelUsernameLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mDirtyFlags:J

    .line 201
    monitor-exit p0

    .line 202
    const/4 v0, 0x1

    return v0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 22

    .line 218
    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    .line 219
    .local v2, "dirtyFlags":J
    monitor-enter p0

    .line 220
    :try_start_0
    iget-wide v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mDirtyFlags:J

    move-wide v2, v4

    .line 221
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mDirtyFlags:J

    .line 222
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "viewmodelPasswordLiveDataGetValue":Ljava/lang/String;
    const/4 v6, 0x0

    .line 225
    .local v6, "viewmodelUsernameLiveDataGetValue":Ljava/lang/String;
    const/4 v7, 0x0

    .line 226
    .local v7, "viewmodelPasswordLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 227
    .local v8, "viewmodelUsernameLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 228
    .local v9, "androidxDatabindingViewDataBindingSafeUnboxViewmodelAuthInProgressGetValue":Z
    const/4 v10, 0x0

    .line 229
    .local v10, "viewmodelAuthInProgressGetValue":Ljava/lang/Boolean;
    const/4 v11, 0x0

    .line 230
    .local v11, "viewmodelAuthInProgress":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    iget-object v12, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

    .line 232
    .local v12, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;
    const-wide/16 v13, 0x1f

    and-long/2addr v13, v2

    cmp-long v13, v13, v4

    const-wide/16 v14, 0x1a

    const-wide/16 v16, 0x19

    const-wide/16 v18, 0x1c

    if-eqz v13, :cond_6

    .line 235
    and-long v20, v2, v16

    cmp-long v13, v20, v4

    if-eqz v13, :cond_1

    .line 237
    if-eqz v12, :cond_0

    .line 239
    invoke-virtual {v12}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->getPasswordLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    .line 241
    :cond_0
    const/4 v13, 0x0

    invoke-virtual {v1, v13, v7}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 244
    if-eqz v7, :cond_1

    .line 246
    invoke-virtual {v7}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    .line 249
    :cond_1
    and-long v20, v2, v14

    cmp-long v13, v20, v4

    if-eqz v13, :cond_3

    .line 251
    if-eqz v12, :cond_2

    .line 253
    invoke-virtual {v12}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->getUsernameLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v8

    .line 255
    :cond_2
    const/4 v13, 0x1

    invoke-virtual {v1, v13, v8}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 258
    if-eqz v8, :cond_3

    .line 260
    invoke-virtual {v8}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object v6, v13

    check-cast v6, Ljava/lang/String;

    .line 263
    :cond_3
    and-long v20, v2, v18

    cmp-long v13, v20, v4

    if-eqz v13, :cond_6

    .line 265
    if-eqz v12, :cond_4

    .line 267
    invoke-virtual {v12}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->getAuthInProgress()Landroidx/lifecycle/MutableLiveData;

    move-result-object v11

    .line 269
    :cond_4
    const/4 v13, 0x2

    invoke-virtual {v1, v13, v11}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 272
    if-eqz v11, :cond_5

    .line 274
    invoke-virtual {v11}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object v10, v13

    check-cast v10, Ljava/lang/Boolean;

    .line 279
    :cond_5
    invoke-static {v10}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v9

    .line 283
    :cond_6
    and-long v18, v2, v18

    cmp-long v13, v18, v4

    if-eqz v13, :cond_7

    .line 286
    iget-object v13, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->authProgress:Landroid/widget/ProgressBar;

    invoke-static {v13, v9}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->progressBarInProgress(Landroid/widget/ProgressBar;Z)V

    .line 287
    iget-object v13, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->btnLogin:Landroid/widget/Button;

    invoke-static {v13, v9}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->buttonInProgress(Landroid/widget/Button;Z)V

    .line 289
    :cond_7
    and-long v13, v2, v14

    cmp-long v13, v13, v4

    if-eqz v13, :cond_8

    .line 292
    iget-object v13, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->etEmail:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v13, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 294
    :cond_8
    const-wide/16 v13, 0x10

    and-long/2addr v13, v2

    cmp-long v13, v13, v4

    if-eqz v13, :cond_9

    .line 297
    iget-object v13, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->etEmail:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v14, 0x0

    move-object v15, v14

    check-cast v15, Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    move-object v15, v14

    check-cast v15, Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    move-object v15, v14

    check-cast v15, Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    iget-object v15, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->etEmailandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v13, v14, v14, v14, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 298
    iget-object v13, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->etPwd:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v15, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->etPwdandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v13, v14, v14, v14, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 300
    :cond_9
    and-long v13, v2, v16

    cmp-long v4, v13, v4

    if-eqz v4, :cond_a

    .line 303
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->etPwd:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v4, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 305
    :cond_a
    return-void

    .line 222
    .end local v0    # "viewmodelPasswordLiveDataGetValue":Ljava/lang/String;
    .end local v6    # "viewmodelUsernameLiveDataGetValue":Ljava/lang/String;
    .end local v7    # "viewmodelPasswordLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .end local v8    # "viewmodelUsernameLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .end local v9    # "androidxDatabindingViewDataBindingSafeUnboxViewmodelAuthInProgressGetValue":Z
    .end local v10    # "viewmodelAuthInProgressGetValue":Ljava/lang/Boolean;
    .end local v11    # "viewmodelAuthInProgress":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    .end local v12    # "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;
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

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 151
    :cond_0
    monitor-exit p0

    .line 152
    const/4 v0, 0x0

    return v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 139
    monitor-enter p0

    .line 140
    const-wide/16 v0, 0x10

    :try_start_0
    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mDirtyFlags:J

    .line 141
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->requestRebind()V

    .line 143
    return-void

    .line 141
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

    .line 178
    packed-switch p1, :pswitch_data_0

    .line 186
    const/4 v0, 0x0

    return v0

    .line 184
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->onChangeViewmodelAuthInProgress(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    .line 182
    :pswitch_1
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->onChangeViewmodelUsernameLiveData(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    .line 180
    :pswitch_2
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->onChangeViewmodelPasswordLiveData(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
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

    .line 157
    const/4 v0, 0x1

    .line 158
    .local v0, "variableSet":Z
    const/4 v1, 0x5

    if-ne v1, p1, :cond_0

    .line 159
    move-object v1, p2

    check-cast v1, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V

    goto :goto_0

    .line 162
    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0
.end method

.method public setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V
    .locals 4
    .param p1, "Viewmodel"    # Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Viewmodel"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

    .line 169
    monitor-enter p0

    .line 170
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mDirtyFlags:J

    .line 171
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->notifyPropertyChanged(I)V

    .line 173
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->requestRebind()V

    .line 174
    return-void

    .line 171
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
