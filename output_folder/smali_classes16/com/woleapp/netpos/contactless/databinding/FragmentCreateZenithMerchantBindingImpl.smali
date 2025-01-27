.class public Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;
.super Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;
.source "FragmentCreateZenithMerchantBindingImpl.java"

# interfaces
.implements Lcom/woleapp/netpos/contactless/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback1:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/core/widget/NestedScrollView;

.field private final mboundView1:Lcom/google/android/material/textfield/TextInputEditText;

.field private mboundView1androidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private final mboundView2:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    const v1, 0x7f0a03ae

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    const v1, 0x7f0a027a

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    const v1, 0x7f0a00a5

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    const v1, 0x7f0a0308

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    const v1, 0x7f0a00c6

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    const v1, 0x7f0a00c5

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    const v1, 0x7f0a016e

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
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

    .line 88
    sget-object v0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xc

    invoke-static {p1, p2, v2, v0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 14
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

    .line 91
    move-object v13, p0

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/AppCompatSpinner;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ProgressBar;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ImageView;

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v12}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/textfield/TextInputLayout;Landroidx/appcompat/widget/AppCompatSpinner;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/Button;Landroidx/appcompat/widget/AppCompatSpinner;Landroid/widget/ImageView;)V

    .line 38
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl$1;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl$1;-><init>(Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;)V

    iput-object v0, v13, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mboundView1androidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 316
    const-wide/16 v0, -0x1

    iput-wide v0, v13, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mDirtyFlags:J

    .line 102
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, v13, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mboundView0:Landroidx/core/widget/NestedScrollView;

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setTag(Ljava/lang/Object;)V

    .line 104
    const/4 v0, 0x1

    aget-object v2, p3, v0

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v2, v13, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mboundView1:Lcom/google/android/material/textfield/TextInputEditText;

    .line 105
    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setTag(Ljava/lang/Object;)V

    .line 106
    const/4 v2, 0x2

    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v13, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mboundView2:Landroid/widget/ProgressBar;

    .line 107
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 108
    iget-object v2, v13, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object v2, v13, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->register:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 110
    move-object/from16 v1, p2

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 112
    new-instance v2, Lcom/woleapp/netpos/contactless/generated/callback/OnClickListener;

    invoke-direct {v2, p0, v0}, Lcom/woleapp/netpos/contactless/generated/callback/OnClickListener;-><init>(Lcom/woleapp/netpos/contactless/generated/callback/OnClickListener$Listener;I)V

    iput-object v2, v13, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    .line 113
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->invalidateAll()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;

    .line 8
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mboundView1:Lcom/google/android/material/textfield/TextInputEditText;

    return-object v0
.end method

.method private onChangeViewmodelCityLoading(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewmodelCityLoading",
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

    .line 168
    .local p1, "ViewmodelCityLoading":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    if-nez p2, :cond_0

    .line 169
    monitor-enter p0

    .line 170
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mDirtyFlags:J

    .line 171
    monitor-exit p0

    .line 172
    const/4 v0, 0x1

    return v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 174
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onChangeViewmodelCreateZenithMerchantPayload(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewmodelCreateZenithMerchantPayload",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;",
            ">;I)Z"
        }
    .end annotation

    .line 186
    .local p1, "ViewmodelCreateZenithMerchantPayload":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;>;"
    if-nez p2, :cond_0

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mDirtyFlags:J

    .line 189
    monitor-exit p0

    .line 190
    const/4 v0, 0x1

    return v0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 192
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onChangeViewmodelRegistrationInProgress(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewmodelRegistrationInProgress",
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

    .line 177
    .local p1, "ViewmodelRegistrationInProgress":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    if-nez p2, :cond_0

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mDirtyFlags:J

    .line 180
    monitor-exit p0

    .line 181
    const/4 v0, 0x1

    return v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 183
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 3
    .param p1, "sourceId"    # I
    .param p2, "callbackArg_0"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceId",
            "callbackArg_0"
        }
    .end annotation

    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, "viewmodelJavaLangObjectNull":Z
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    .line 308
    .local v1, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 309
    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->registerZenithMerchant()V

    .line 314
    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 24

    .line 197
    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    .line 198
    .local v2, "dirtyFlags":J
    monitor-enter p0

    .line 199
    :try_start_0
    iget-wide v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mDirtyFlags:J

    move-wide v2, v4

    .line 200
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mDirtyFlags:J

    .line 201
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "androidxDatabindingViewDataBindingSafeUnboxViewmodelRegistrationInProgressGetValue":Z
    const/4 v6, 0x0

    .line 204
    .local v6, "viewmodelCityLoading":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    const/4 v7, 0x0

    .line 205
    .local v7, "viewmodelRegistrationInProgress":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    const/4 v8, 0x0

    .line 206
    .local v8, "viewmodelCreateZenithMerchantPayload":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;>;"
    const/4 v9, 0x0

    .line 207
    .local v9, "viewmodelRegistrationInProgressGetValue":Ljava/lang/Boolean;
    const/4 v10, 0x0

    .line 208
    .local v10, "androidxDatabindingViewDataBindingSafeUnboxViewmodelCityLoadingGetValue":Z
    const/4 v11, 0x0

    .line 209
    .local v11, "viewmodelCityLoadingGetValue":Ljava/lang/Boolean;
    const/4 v12, 0x0

    .line 210
    .local v12, "viewmodelCreateZenithMerchantPayloadGetValue":Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;
    const/4 v13, 0x0

    .line 211
    .local v13, "viewmodelCreateZenithMerchantPayloadBvn":Ljava/lang/String;
    iget-object v14, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    .line 213
    .local v14, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    const-wide/16 v15, 0x1f

    and-long/2addr v15, v2

    cmp-long v15, v15, v4

    const-wide/16 v16, 0x1a

    const-wide/16 v18, 0x19

    const-wide/16 v20, 0x1c

    if-eqz v15, :cond_8

    .line 216
    and-long v22, v2, v18

    cmp-long v15, v22, v4

    if-eqz v15, :cond_2

    .line 218
    if-eqz v14, :cond_0

    .line 220
    invoke-virtual {v14}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getCityLoading()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    .line 222
    :cond_0
    const/4 v15, 0x0

    invoke-virtual {v1, v15, v6}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 225
    if-eqz v6, :cond_1

    .line 227
    invoke-virtual {v6}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v15

    move-object v11, v15

    check-cast v11, Ljava/lang/Boolean;

    .line 232
    :cond_1
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v10

    .line 234
    :cond_2
    and-long v22, v2, v16

    cmp-long v15, v22, v4

    if-eqz v15, :cond_5

    .line 236
    if-eqz v14, :cond_3

    .line 238
    invoke-virtual {v14}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getRegistrationInProgress()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    .line 240
    :cond_3
    const/4 v15, 0x1

    invoke-virtual {v1, v15, v7}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 243
    if-eqz v7, :cond_4

    .line 245
    invoke-virtual {v7}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v15

    move-object v9, v15

    check-cast v9, Ljava/lang/Boolean;

    .line 250
    :cond_4
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    .line 252
    :cond_5
    and-long v22, v2, v20

    cmp-long v15, v22, v4

    if-eqz v15, :cond_8

    .line 254
    if-eqz v14, :cond_6

    .line 256
    invoke-virtual {v14}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getCreateZenithMerchantPayload()Landroidx/lifecycle/MutableLiveData;

    move-result-object v8

    .line 258
    :cond_6
    const/4 v15, 0x2

    invoke-virtual {v1, v15, v8}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 261
    if-eqz v8, :cond_7

    .line 263
    invoke-virtual {v8}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v15

    move-object v12, v15

    check-cast v12, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;

    .line 267
    :cond_7
    if-eqz v12, :cond_8

    .line 269
    invoke-virtual {v12}, Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;->getBvn()Ljava/lang/String;

    move-result-object v13

    .line 274
    :cond_8
    and-long v20, v2, v20

    cmp-long v15, v20, v4

    if-eqz v15, :cond_9

    .line 277
    iget-object v15, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mboundView1:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v15, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 279
    :cond_9
    const-wide/16 v20, 0x10

    and-long v20, v2, v20

    cmp-long v15, v20, v4

    if-eqz v15, :cond_a

    .line 282
    iget-object v15, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mboundView1:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    move-object v5, v4

    check-cast v5, Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    move-object v5, v4

    check-cast v5, Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    iget-object v5, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mboundView1androidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v15, v4, v4, v4, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 283
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->register:Landroid/widget/Button;

    iget-object v5, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    :cond_a
    and-long v4, v2, v18

    const-wide/16 v18, 0x0

    cmp-long v4, v4, v18

    if-eqz v4, :cond_b

    .line 288
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mboundView2:Landroid/widget/ProgressBar;

    invoke-static {v4, v10}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->progressBarInProgress(Landroid/widget/ProgressBar;Z)V

    .line 290
    :cond_b
    and-long v4, v2, v16

    cmp-long v4, v4, v18

    if-eqz v4, :cond_c

    .line 293
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->progress:Landroid/widget/ProgressBar;

    invoke-static {v4, v0}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->progressBarInProgress(Landroid/widget/ProgressBar;Z)V

    .line 294
    iget-object v4, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->register:Landroid/widget/Button;

    invoke-static {v4, v0}, Lcom/woleapp/netpos/contactless/util/AppBindingAdaptersKt;->buttonInProgress(Landroid/widget/Button;Z)V

    .line 296
    :cond_c
    return-void

    .line 201
    .end local v0    # "androidxDatabindingViewDataBindingSafeUnboxViewmodelRegistrationInProgressGetValue":Z
    .end local v6    # "viewmodelCityLoading":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    .end local v7    # "viewmodelRegistrationInProgress":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/Boolean;>;"
    .end local v8    # "viewmodelCreateZenithMerchantPayload":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;>;"
    .end local v9    # "viewmodelRegistrationInProgressGetValue":Ljava/lang/Boolean;
    .end local v10    # "androidxDatabindingViewDataBindingSafeUnboxViewmodelCityLoadingGetValue":Z
    .end local v11    # "viewmodelCityLoadingGetValue":Ljava/lang/Boolean;
    .end local v12    # "viewmodelCreateZenithMerchantPayloadGetValue":Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;
    .end local v13    # "viewmodelCreateZenithMerchantPayloadBvn":Ljava/lang/String;
    .end local v14    # "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
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

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 130
    :cond_0
    monitor-exit p0

    .line 131
    const/4 v0, 0x0

    return v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 118
    monitor-enter p0

    .line 119
    const-wide/16 v0, 0x10

    :try_start_0
    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mDirtyFlags:J

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->requestRebind()V

    .line 122
    return-void

    .line 120
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

    .line 157
    packed-switch p1, :pswitch_data_0

    .line 165
    const/4 v0, 0x0

    return v0

    .line 163
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->onChangeViewmodelCreateZenithMerchantPayload(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    .line 161
    :pswitch_1
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->onChangeViewmodelRegistrationInProgress(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    .line 159
    :pswitch_2
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->onChangeViewmodelCityLoading(Landroidx/lifecycle/MutableLiveData;I)Z

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

    .line 136
    const/4 v0, 0x1

    .line 137
    .local v0, "variableSet":Z
    const/4 v1, 0x5

    if-ne v1, p1, :cond_0

    .line 138
    move-object v1, p2

    check-cast v1, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    goto :goto_0

    .line 141
    :cond_0
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0
.end method

.method public setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V
    .locals 4
    .param p1, "Viewmodel"    # Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Viewmodel"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->mDirtyFlags:J

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBindingImpl;->notifyPropertyChanged(I)V

    .line 152
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->requestRebind()V

    .line 153
    return-void

    .line 150
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
