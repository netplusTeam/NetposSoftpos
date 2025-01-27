.class public Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;
.super Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;
.source "DialogPasswordResetBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private etEmailandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private etPasswordandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    const v1, 0x7f0a00cd

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    const v1, 0x7f0a028e

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    const v1, 0x7f0a0333

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    const v1, 0x7f0a0334

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
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

    .line 105
    sget-object v0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 13
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

    .line 108
    move-object v12, p0

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ProgressBar;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Button;

    const/4 v0, 0x5

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

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ProgressBar;Landroid/widget/Button;Landroid/widget/ImageView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 29
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl$1;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl$1;-><init>(Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;)V

    iput-object v0, v12, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->etEmailandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 66
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl$2;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl$2;-><init>(Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;)V

    iput-object v0, v12, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->etPasswordandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 301
    const-wide/16 v0, -0x1

    iput-wide v0, v12, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->mDirtyFlags:J

    .line 118
    iget-object v0, v12, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->authProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 119
    iget-object v0, v12, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->btnResetPassword:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 120
    iget-object v0, v12, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->etEmail:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setTag(Ljava/lang/Object;)V

    .line 121
    iget-object v0, v12, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->etPassword:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setTag(Ljava/lang/Object;)V

    .line 122
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v12, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 123
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 124
    move-object v0, p2

    invoke-virtual {p0, p2}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 126
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->invalidateAll()V

    .line 127
    return-void
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

    .line 190
    .local p1, "ViewmodelPasswordLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->mDirtyFlags:J

    .line 193
    monitor-exit p0

    .line 194
    const/4 v0, 0x1

    return v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onChangeViewmodelPasswordResetInProgress(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewmodelPasswordResetInProgress",
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

    .line 181
    .local p1, "ViewmodelPasswordResetInProgress":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    if-nez p2, :cond_0

    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->mDirtyFlags:J

    .line 184
    monitor-exit p0

    .line 185
    const/4 v0, 0x1

    return v0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 187
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

    .line 199
    .local p1, "ViewmodelUsernameLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 200
    monitor-enter p0

    .line 201
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->mDirtyFlags:J

    .line 202
    monitor-exit p0

    .line 203
    const/4 v0, 0x1

    return v0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 205
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 22

    .line 210
    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    .line 211
    .local v2, "dirtyFlags":J
    monitor-enter p0

    .line 212
    :try_start_0
    iget-wide v4, v1, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->mDirtyFlags:J

    move-wide v2, v4

    .line 213
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->mDirtyFlags:J

    .line 214
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "viewmodelPasswordLiveDataGetValue":Ljava/lang/String;
    const/4 v6, 0x0

    .line 217
    .local v6, "viewmodelPasswordResetInProgress":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    const/4 v7, 0x0

    .line 218
    .local v7, "viewmodelUsernameLiveDataGetValue":Ljava/lang/String;
    const/4 v8, 0x0

    .line 219
    .local v8, "viewmodelPasswordLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 220
    .local v9, "viewmodelPasswordResetInProgressGetValue":Ljava/lang/Boolean;
    const/4 v10, 0x0

    .line 221
    .local v10, "androidxDatabindingViewDataBindingSafeUnboxViewmodelPasswordResetInProgressGetValue":Z
    const/4 v11, 0x0

    .line 222
    .local v11, "viewmodelUsernameLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    iget-object v12, v1, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

    .line 224
    .local v12, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;
    const-wide/16 v13, 0x1f

    and-long/2addr v13, v2

    cmp-long v13, v13, v4

    const-wide/16 v14, 0x1a

    const-wide/16 v16, 0x1c

    const-wide/16 v18, 0x19

    if-eqz v13, :cond_6

    .line 227
    and-long v20, v2, v18

    cmp-long v13, v20, v4

    if-eqz v13, :cond_2

    .line 229
    if-eqz v12, :cond_0

    .line 231
    invoke-virtual {v12}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->getPasswordResetInProgress()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    .line 233
    :cond_0
    const/4 v13, 0x0

    invoke-virtual {v1, v13, v6}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 236
    if-eqz v6, :cond_1

    .line 238
    invoke-virtual {v6}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object v9, v13

    check-cast v9, Ljava/lang/Boolean;

    .line 243
    :cond_1
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v10

    .line 245
    :cond_2
    and-long v20, v2, v14

    cmp-long v13, v20, v4

    if-eqz v13, :cond_4

    .line 247
    if-eqz v12, :cond_3

    .line 249
    invoke-virtual {v12}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->getPasswordLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v8

    .line 251
    :cond_3
    const/4 v13, 0x1

    invoke-virtual {v1, v13, v8}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 254
    if-eqz v8, :cond_4

    .line 256
    invoke-virtual {v8}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    .line 259
    :cond_4
    and-long v20, v2, v16

    cmp-long v13, v20, v4

    if-eqz v13, :cond_6

    .line 261
    if-eqz v12, :cond_5

    .line 263
    invoke-virtual {v12}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->getUsernameLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v11

    .line 265
    :cond_5
    const/4 v13, 0x2

    invoke-virtual {v1, v13, v11}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 268
    if-eqz v11, :cond_6

    .line 270
    invoke-virtual {v11}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object v7, v13

    check-cast v7, Ljava/lang/String;

    .line 275
    :cond_6
    and-long v18, v2, v18

    cmp-long v13, v18, v4

    if-eqz v13, :cond_7

    .line 278
    iget-object v13, v1, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->authProgress:Landroid/widget/ProgressBar;

    invoke-static {v13, v10}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->progressBarInProgress(Landroid/widget/ProgressBar;Z)V

    .line 279
    iget-object v13, v1, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->btnResetPassword:Landroid/widget/Button;

    invoke-static {v13, v10}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->buttonInProgress(Landroid/widget/Button;Z)V

    .line 281
    :cond_7
    and-long v16, v2, v16

    cmp-long v13, v16, v4

    if-eqz v13, :cond_8

    .line 284
    iget-object v13, v1, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->etEmail:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v13, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 286
    :cond_8
    const-wide/16 v16, 0x10

    and-long v16, v2, v16

    cmp-long v13, v16, v4

    if-eqz v13, :cond_9

    .line 289
    iget-object v13, v1, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->etEmail:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    move-object v5, v4

    check-cast v5, Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    move-object v5, v4

    check-cast v5, Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    iget-object v5, v1, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->etEmailandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v13, v4, v4, v4, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 290
    iget-object v5, v1, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->etPassword:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v13, v1, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->etPasswordandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v5, v4, v4, v4, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 292
    :cond_9
    and-long v4, v2, v14

    const-wide/16 v13, 0x0

    cmp-long v4, v4, v13

    if-eqz v4, :cond_a

    .line 295
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->etPassword:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v4, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 297
    :cond_a
    return-void

    .line 214
    .end local v0    # "viewmodelPasswordLiveDataGetValue":Ljava/lang/String;
    .end local v6    # "viewmodelPasswordResetInProgress":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    .end local v7    # "viewmodelUsernameLiveDataGetValue":Ljava/lang/String;
    .end local v8    # "viewmodelPasswordLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    .end local v9    # "viewmodelPasswordResetInProgressGetValue":Ljava/lang/Boolean;
    .end local v10    # "androidxDatabindingViewDataBindingSafeUnboxViewmodelPasswordResetInProgressGetValue":Z
    .end local v11    # "viewmodelUsernameLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
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

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 143
    :cond_0
    monitor-exit p0

    .line 144
    const/4 v0, 0x0

    return v0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 131
    monitor-enter p0

    .line 132
    const-wide/16 v0, 0x10

    :try_start_0
    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->mDirtyFlags:J

    .line 133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->requestRebind()V

    .line 135
    return-void

    .line 133
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

    .line 170
    packed-switch p1, :pswitch_data_0

    .line 178
    const/4 v0, 0x0

    return v0

    .line 176
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->onChangeViewmodelUsernameLiveData(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    .line 174
    :pswitch_1
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->onChangeViewmodelPasswordLiveData(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    .line 172
    :pswitch_2
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->onChangeViewmodelPasswordResetInProgress(Landroidx/lifecycle/MutableLiveData;I)Z

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

    .line 149
    const/4 v0, 0x1

    .line 150
    .local v0, "variableSet":Z
    const/4 v1, 0x5

    if-ne v1, p1, :cond_0

    .line 151
    move-object v1, p2

    check-cast v1, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V

    goto :goto_0

    .line 154
    :cond_0
    const/4 v0, 0x0

    .line 156
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

    .line 160
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->mDirtyFlags:J

    .line 163
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBindingImpl;->notifyPropertyChanged(I)V

    .line 165
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;->requestRebind()V

    .line 166
    return-void

    .line 163
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
