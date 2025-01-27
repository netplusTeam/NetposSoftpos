.class public Lcom/visa/vac/tc/VACThinClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visa/vac/tc/VACThinClient$TransactionCallback;,
        Lcom/visa/vac/tc/VACThinClient$Status;
    }
.end annotation


# static fields
.field private static BuildConfig:I

.field private static final getInstance:Lcom/visa/vac/tc/VACThinClient;

.field private static getTerminalData:I


# instance fields
.field private $$a$6b2bc0d7:Lcom/visa/vac/tc/emvconverter/Constants;

.field private ContactlessConfiguration:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/VACThinClient;->BuildConfig:I

    new-instance v0, Lcom/visa/vac/tc/VACThinClient;

    invoke-direct {v0}, Lcom/visa/vac/tc/VACThinClient;-><init>()V

    sput-object v0, Lcom/visa/vac/tc/VACThinClient;->getInstance:Lcom/visa/vac/tc/VACThinClient;

    sget v0, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/VACThinClient;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 3

    .line 184
    sget v0, Lcom/visa/vac/tc/VACThinClient;->BuildConfig:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {}, Lcom/visa/vac/tc/VACThinClient;->getInstance()Lcom/visa/vac/tc/VACThinClient;

    move-result-object v0

    iget-object v0, v0, Lcom/visa/vac/tc/VACThinClient;->ContactlessConfiguration:Landroid/content/Context;

    sget v1, Lcom/visa/vac/tc/VACThinClient;->BuildConfig:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public static getInstance()Lcom/visa/vac/tc/VACThinClient;
    .locals 3

    .line 81
    sget v0, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/VACThinClient;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sget-object v0, Lcom/visa/vac/tc/VACThinClient;->getInstance:Lcom/visa/vac/tc/VACThinClient;

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method


# virtual methods
.method public cancelTransaction(Lcom/visa/vac/tc/emvconverter/Transaction;Lcom/visa/vac/tc/VACThinClient$TransactionCallback;)I
    .locals 7

    .line 180
    sget v0, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/VACThinClient;->BuildConfig:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    if-nez v0, :cond_0

    .line 176
    :cond_0
    if-eqz p2, :cond_6

    .line 180
    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    rem-int/2addr v1, v2

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 176
    if-nez p1, :cond_3

    goto :goto_2

    .line 180
    :pswitch_0
    const/16 v1, 0x19

    :try_start_0
    div-int/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    .line 179
    :cond_3
    :pswitch_1
    iget-object v1, p0, Lcom/visa/vac/tc/VACThinClient;->$$a$6b2bc0d7:Lcom/visa/vac/tc/emvconverter/Constants;

    :try_start_1
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v0

    aput-object p1, v4, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    int-to-char p2, p2

    const-string v5, ""

    invoke-static {v5}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x28

    invoke-static {p1, p2, v5}, Lcom/visa/vac/tc/getTerminalData;->ContactlessConfiguration(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string p2, "$$a"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Lcom/visa/vac/tc/emvconverter/Transaction;

    aput-object v6, v5, v3

    const-class v6, Lcom/visa/vac/tc/VACThinClient$TransactionCallback;

    aput-object v6, v5, v0

    invoke-virtual {p1, p2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 180
    sget p1, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/VACThinClient;->BuildConfig:I

    rem-int/2addr p1, v2

    if-eqz p1, :cond_4

    return v3

    :cond_4
    const/4 p1, 0x0

    :try_start_2
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    .line 179
    :catchall_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    throw p2

    :cond_5
    throw p1

    .line 177
    :cond_6
    :goto_2
    const/4 p1, 0x6

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public clearInternalData()V
    .locals 4

    .line 147
    sget v0, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/VACThinClient;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/VACThinClient;->$$a$6b2bc0d7:Lcom/visa/vac/tc/emvconverter/Constants;

    :try_start_0
    const-string v1, ""

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    int-to-char v2, v2

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x28

    invoke-static {v1, v2, v3}, Lcom/visa/vac/tc/getTerminalData;->ContactlessConfiguration(ICI)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-string v2, "$$a"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget v0, Lcom/visa/vac/tc/VACThinClient;->BuildConfig:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x53

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    throw v1

    :cond_2
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    sget v0, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/VACThinClient;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/visa/vac/tc/VACThinClient;->ContactlessConfiguration:Landroid/content/Context;

    .line 97
    nop

    .line 1107
    iget-object v0, p0, Lcom/visa/vac/tc/VACThinClient;->$$a$6b2bc0d7:Lcom/visa/vac/tc/emvconverter/Constants;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1108
    invoke-static {}, Lcom/visa/vac/tc/utils/PreferenceManager;->INSTANCE()Lcom/visa/vac/tc/utils/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/visa/vac/tc/utils/PreferenceManager;->init(Landroid/content/Context;)V

    .line 1109
    :try_start_0
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result p1

    const-string v3, ""

    invoke-static {v3, v2, v2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    int-to-char v3, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x28

    invoke-static {p1, v3, v4}, Lcom/visa/vac/tc/getTerminalData;->ContactlessConfiguration(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visa/vac/tc/emvconverter/Constants;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lcom/visa/vac/tc/VACThinClient;->$$a$6b2bc0d7:Lcom/visa/vac/tc/emvconverter/Constants;

    .line 103
    sget p1, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/VACThinClient;->BuildConfig:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    goto :goto_0

    .line 1109
    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    throw p2

    :cond_1
    throw p1

    .line 98
    :cond_2
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 103
    move v1, v2

    goto :goto_1

    :cond_3
    nop

    :goto_1
    packed-switch v1, :pswitch_data_0

    :goto_2
    goto :goto_5

    :pswitch_0
    sget p1, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/VACThinClient;->BuildConfig:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    .line 98
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 103
    const/16 p1, 0x44

    goto :goto_3

    :cond_5
    const/16 p1, 0x30

    :goto_3
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    sget p1, Lcom/visa/vac/tc/VACThinClient;->BuildConfig:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_6

    .line 98
    :cond_6
    if-nez p4, :cond_7

    .line 103
    const/4 p1, 0x4

    goto :goto_4

    :cond_7
    const/16 p1, 0x29

    :goto_4
    packed-switch p1, :pswitch_data_2

    goto :goto_2

    .line 99
    :pswitch_2
    const-string p1, "KOD_INIT"

    return-object p1

    .line 103
    :goto_5
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_2
    .end packed-switch
.end method

.method public startTransaction(Landroid/content/Context;Lcom/visa/vac/tc/emvconverter/Transaction;Lcom/visa/vac/tc/VACThinClient$TransactionCallback;Ljava/lang/Object;)V
    .locals 8

    .line 137
    sget v0, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/VACThinClient;->BuildConfig:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2107
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 129
    iput-object p1, p0, Lcom/visa/vac/tc/VACThinClient;->ContactlessConfiguration:Landroid/content/Context;

    .line 130
    nop

    .line 2107
    iget-object v0, p0, Lcom/visa/vac/tc/VACThinClient;->$$a$6b2bc0d7:Lcom/visa/vac/tc/emvconverter/Constants;

    goto :goto_2

    .line 129
    :pswitch_0
    iput-object p1, p0, Lcom/visa/vac/tc/VACThinClient;->ContactlessConfiguration:Landroid/content/Context;

    .line 130
    nop

    .line 2107
    iget-object v0, p0, Lcom/visa/vac/tc/VACThinClient;->$$a$6b2bc0d7:Lcom/visa/vac/tc/emvconverter/Constants;

    if-nez v0, :cond_3

    :goto_1
    goto :goto_3

    :goto_2
    const/4 v4, 0x5

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_3

    goto :goto_1

    .line 2108
    :goto_3
    invoke-static {}, Lcom/visa/vac/tc/utils/PreferenceManager;->INSTANCE()Lcom/visa/vac/tc/utils/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/visa/vac/tc/utils/PreferenceManager;->init(Landroid/content/Context;)V

    .line 2109
    :try_start_1
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p1

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    add-int/lit8 p1, p1, -0x1

    invoke-static {v3, v3}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    rsub-int/lit8 v4, v4, -0x1

    int-to-char v4, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x28

    invoke-static {p1, v4, v5}, Lcom/visa/vac/tc/getTerminalData;->ContactlessConfiguration(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visa/vac/tc/emvconverter/Constants;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object p1, p0, Lcom/visa/vac/tc/VACThinClient;->$$a$6b2bc0d7:Lcom/visa/vac/tc/emvconverter/Constants;

    .line 137
    sget p1, Lcom/visa/vac/tc/VACThinClient;->BuildConfig:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_1

    .line 2107
    const/16 p1, 0x47

    goto :goto_4

    :cond_1
    const/16 p1, 0x2f

    :goto_4
    packed-switch p1, :pswitch_data_1

    .line 137
    :pswitch_1
    goto :goto_5

    .line 2109
    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    throw p2

    :cond_2
    throw p1

    .line 132
    :cond_3
    :goto_5
    iget-object p1, p0, Lcom/visa/vac/tc/VACThinClient;->$$a$6b2bc0d7:Lcom/visa/vac/tc/emvconverter/Constants;

    new-instance v0, Landroid/app/Activity;

    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    const/4 v4, 0x4

    :try_start_2
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x3

    aput-object p4, v5, v6

    aput-object p3, v5, v1

    aput-object p2, v5, v2

    aput-object v0, v5, v3

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result p4

    shr-int/lit8 p4, p4, 0x10

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0x28

    invoke-static {p4, v0, v7}, Lcom/visa/vac/tc/getTerminalData;->ContactlessConfiguration(ICI)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Class;

    const-string v0, "$$a"

    new-array v4, v4, [Ljava/lang/Class;

    const-class v7, Landroid/app/Activity;

    aput-object v7, v4, v3

    const-class v7, Lcom/visa/vac/tc/emvconverter/Transaction;

    aput-object v7, v4, v2

    const-class v2, Lcom/visa/vac/tc/VACThinClient$TransactionCallback;

    aput-object v2, v4, v1

    const-class v1, Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {p4, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p4

    invoke-virtual {p4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    iget-object p1, p2, Lcom/visa/vac/tc/emvconverter/Transaction;->finalStatus:Ljava/lang/String;

    const-string p4, "COMPLETED"

    if-eq p1, p4, :cond_4

    .line 135
    const/4 p1, 0x6

    invoke-interface {p3, p1, p2}, Lcom/visa/vac/tc/VACThinClient$TransactionCallback;->onFailure(ILcom/visa/vac/tc/emvconverter/Transaction;)V

    return-void

    .line 137
    :cond_4
    invoke-interface {p3, v3, p2}, Lcom/visa/vac/tc/VACThinClient$TransactionCallback;->onComplete(ILcom/visa/vac/tc/emvconverter/Transaction;)V

    return-void

    .line 132
    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    throw p2

    :cond_5
    throw p1

    .line 137
    :catchall_2
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_1
    .end packed-switch
.end method

.method public updateResult(Lcom/visa/vac/tc/emvconverter/Transaction;Lcom/visa/vac/tc/VACThinClient$TransactionCallback;)I
    .locals 7

    .line 163
    sget v0, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/VACThinClient;->BuildConfig:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 159
    const/16 v0, 0x61

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x25

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 163
    :catchall_0
    move-exception p1

    throw p1

    .line 159
    :cond_1
    if-eqz p2, :cond_2

    const/16 v0, 0x3b

    goto :goto_1

    :cond_2
    const/16 v0, 0xd

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_0
    if-nez p1, :cond_3

    .line 160
    :goto_2
    :pswitch_1
    const/4 p1, 0x6

    return p1

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/visa/vac/tc/VACThinClient;->$$a$6b2bc0d7:Lcom/visa/vac/tc/emvconverter/Constants;

    :try_start_1
    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object p2, v3, v4

    aput-object p1, v3, v2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result p2

    shr-int/lit8 p2, p2, 0x18

    int-to-char p2, p2

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x28

    invoke-static {p1, p2, v5}, Lcom/visa/vac/tc/getTerminalData;->ContactlessConfiguration(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string p2, "ContactlessConfiguration"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Lcom/visa/vac/tc/emvconverter/Transaction;

    aput-object v6, v5, v2

    const-class v6, Lcom/visa/vac/tc/VACThinClient$TransactionCallback;

    aput-object v6, v5, v4

    invoke-virtual {p1, p2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 163
    nop

    .line 159
    sget p1, Lcom/visa/vac/tc/VACThinClient;->getTerminalData:I

    add-int/2addr p1, v4

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/VACThinClient;->BuildConfig:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_4

    move p1, v2

    goto :goto_3

    :cond_4
    const/16 p1, 0xa

    :goto_3
    packed-switch p1, :pswitch_data_2

    .line 163
    return v2

    .line 159
    :pswitch_2
    const/4 p1, 0x0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    .line 162
    :catchall_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    throw p2

    :cond_5
    throw p1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
