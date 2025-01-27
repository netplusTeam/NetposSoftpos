.class public Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;
.super Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;
.source "LayoutAirtimeOrDataBindingImpl.java"

# interfaces
.implements Lcom/woleapp/netpos/contactless/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private enterMobileNumberandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private final mCallback4:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/ScrollView;

.field private priceTextboxandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    const v1, 0x7f0a0186

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    const v1, 0x7f0a0100

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    const v1, 0x7f0a0101

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    const v1, 0x7f0a02d8

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    const v1, 0x7f0a02d5

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    const v1, 0x7f0a02d6

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    const v1, 0x7f0a0262

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    const v1, 0x7f0a00f4

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    const v1, 0x7f0a00d4

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
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

    .line 134
    sget-object v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-static {p1, p2, v2, v0, v1}, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 18
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

    .line 137
    move-object/from16 v15, p0

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Spinner;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/EditText;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    aget-object v0, p3, v14

    move-object v12, v0

    check-cast v12, Landroid/widget/EditText;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/widget/Spinner;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/ImageView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/Spinner;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    invoke-direct/range {v0 .. v15}, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/Spinner;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/ImageView;Landroid/widget/Spinner;)V

    .line 36
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl$1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl$1;-><init>(Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->enterMobileNumberandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 84
    new-instance v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl$2;

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl$2;-><init>(Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;)V

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->priceTextboxandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 290
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->mDirtyFlags:J

    .line 151
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->enterMobileNumber:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 152
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->mboundView0:Landroid/widget/ScrollView;

    .line 153
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    .line 154
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->pay:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 155
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->priceTextbox:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 156
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 158
    new-instance v2, Lcom/woleapp/netpos/contactless/generated/callback/OnClickListener;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/woleapp/netpos/contactless/generated/callback/OnClickListener;-><init>(Lcom/woleapp/netpos/contactless/generated/callback/OnClickListener$Listener;I)V

    iput-object v2, v1, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->mCallback4:Landroid/view/View$OnClickListener;

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->invalidateAll()V

    .line 160
    return-void
.end method

.method private onChangeViewmodelPayloadMutableLiveData(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewmodelPayloadMutableLiveData",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;",
            ">;I)Z"
        }
    .end annotation

    .line 210
    .local p1, "ViewmodelPayloadMutableLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;>;"
    if-nez p2, :cond_0

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->mDirtyFlags:J

    .line 213
    monitor-exit p0

    .line 214
    const/4 v0, 0x1

    return v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 216
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

    .line 276
    const/4 v0, 0x0

    .line 278
    .local v0, "viewmodelJavaLangObjectNull":Z
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    .line 282
    .local v1, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 283
    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->validateUtilityBill()V

    .line 288
    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 13

    .line 221
    const-wide/16 v0, 0x0

    .line 222
    .local v0, "dirtyFlags":J
    monitor-enter p0

    .line 223
    :try_start_0
    iget-wide v2, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->mDirtyFlags:J

    move-wide v0, v2

    .line 224
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->mDirtyFlags:J

    .line 225
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    const/4 v4, 0x0

    .line 227
    .local v4, "viewmodelPayloadMutableLiveDataGetValue":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    const/4 v5, 0x0

    .line 228
    .local v5, "viewmodelPayloadMutableLiveDataStringAmount":Ljava/lang/String;
    const/4 v6, 0x0

    .line 229
    .local v6, "viewmodelPayloadMutableLiveDataDestinationAccount":Ljava/lang/String;
    const/4 v7, 0x0

    .line 230
    .local v7, "viewmodelPayloadMutableLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;>;"
    iget-object v8, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    .line 232
    .local v8, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    const-wide/16 v9, 0x7

    and-long v11, v0, v9

    cmp-long v11, v11, v2

    if-eqz v11, :cond_2

    .line 236
    if-eqz v8, :cond_0

    .line 238
    invoke-virtual {v8}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    .line 240
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {p0, v11, v7}, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 243
    if-eqz v7, :cond_1

    .line 245
    invoke-virtual {v7}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object v4, v11

    check-cast v4, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    .line 249
    :cond_1
    if-eqz v4, :cond_2

    .line 251
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getStringAmount()Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getDestinationAccount()Ljava/lang/String;

    move-result-object v6

    .line 257
    :cond_2
    and-long/2addr v9, v0

    cmp-long v9, v9, v2

    if-eqz v9, :cond_3

    .line 260
    iget-object v9, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->enterMobileNumber:Landroid/widget/EditText;

    invoke-static {v9, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 261
    iget-object v9, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->priceTextbox:Landroid/widget/EditText;

    invoke-static {v9, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 263
    :cond_3
    const-wide/16 v9, 0x4

    and-long/2addr v9, v0

    cmp-long v2, v9, v2

    if-eqz v2, :cond_4

    .line 266
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->enterMobileNumber:Landroid/widget/EditText;

    const/4 v3, 0x0

    move-object v9, v3

    check-cast v9, Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    move-object v9, v3

    check-cast v9, Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    move-object v9, v3

    check-cast v9, Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    iget-object v9, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->enterMobileNumberandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v2, v3, v3, v3, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 267
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->pay:Landroid/widget/Button;

    iget-object v9, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->mCallback4:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->priceTextbox:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->priceTextboxandroidTextAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v2, v3, v3, v3, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 270
    :cond_4
    return-void

    .line 225
    .end local v4    # "viewmodelPayloadMutableLiveDataGetValue":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    .end local v5    # "viewmodelPayloadMutableLiveDataStringAmount":Ljava/lang/String;
    .end local v6    # "viewmodelPayloadMutableLiveDataDestinationAccount":Ljava/lang/String;
    .end local v7    # "viewmodelPayloadMutableLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;>;"
    .end local v8    # "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
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

    .line 172
    monitor-enter p0

    .line 173
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 176
    :cond_0
    monitor-exit p0

    .line 177
    const/4 v0, 0x0

    return v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 164
    monitor-enter p0

    .line 165
    const-wide/16 v0, 0x4

    :try_start_0
    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->mDirtyFlags:J

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->requestRebind()V

    .line 168
    return-void

    .line 166
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

    .line 203
    packed-switch p1, :pswitch_data_0

    .line 207
    const/4 v0, 0x0

    return v0

    .line 205
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0, p3}, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->onChangeViewmodelPayloadMutableLiveData(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 182
    const/4 v0, 0x1

    .line 183
    .local v0, "variableSet":Z
    const/4 v1, 0x5

    if-ne v1, p1, :cond_0

    .line 184
    move-object v1, p2

    check-cast v1, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)V

    goto :goto_0

    .line 187
    :cond_0
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0
.end method

.method public setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)V
    .locals 4
    .param p1, "Viewmodel"    # Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Viewmodel"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->mDirtyFlags:J

    .line 196
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBindingImpl;->notifyPropertyChanged(I)V

    .line 198
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->requestRebind()V

    .line 199
    return-void

    .line 196
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
