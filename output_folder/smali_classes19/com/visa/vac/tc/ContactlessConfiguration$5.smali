.class public final Lcom/visa/vac/tc/ContactlessConfiguration$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visa/vac/tc/session/VisaTimerTask$TimeoutCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visa/vac/tc/ContactlessConfiguration;->updateStatus(ILcom/visa/vac/tc/emvconverter/Transaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static ContactlessConfiguration:I

.field private static getTerminalData:I


# instance fields
.field private synthetic BuildConfig$6b2bc0d7:Lcom/visa/vac/tc/emvconverter/Constants;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/ContactlessConfiguration$5;->getTerminalData:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/ContactlessConfiguration$5;->ContactlessConfiguration:I

    return-void
.end method

.method public constructor <init>(Lcom/visa/vac/tc/emvconverter/Constants;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/visa/vac/tc/ContactlessConfiguration$5;->BuildConfig$6b2bc0d7:Lcom/visa/vac/tc/emvconverter/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 15

    .line 386
    const-string v0, ""

    sget v1, Lcom/visa/vac/tc/ContactlessConfiguration$5;->ContactlessConfiguration:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/ContactlessConfiguration$5;->getTerminalData:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/ContactlessConfiguration$5;->BuildConfig$6b2bc0d7:Lcom/visa/vac/tc/emvconverter/Constants;

    const/4 v3, 0x1

    :try_start_0
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v9

    int-to-char v9, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v10

    cmp-long v10, v10, v7

    add-int/lit8 v10, v10, 0x27

    invoke-static {v6, v9, v10}, Lcom/visa/vac/tc/getTerminalData;->ContactlessConfiguration(ICI)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    const-string v9, "BuildConfig"

    new-array v10, v3, [Ljava/lang/Class;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    int-to-char v12, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v13

    shr-int/lit8 v13, v13, 0x8

    add-int/lit8 v13, v13, 0x28

    invoke-static {v11, v12, v13}, Lcom/visa/vac/tc/getTerminalData;->ContactlessConfiguration(ICI)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    aput-object v11, v10, v5

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v6, p0, Lcom/visa/vac/tc/ContactlessConfiguration$5;->BuildConfig$6b2bc0d7:Lcom/visa/vac/tc/emvconverter/Constants;

    :try_start_1
    new-array v10, v3, [Ljava/lang/Object;

    aput-object v6, v10, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    invoke-static {v5, v5}, Landroid/view/View;->getDefaultSize(II)I

    move-result v11

    int-to-char v11, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    rsub-int/lit8 v12, v12, 0x28

    invoke-static {v6, v11, v12}, Lcom/visa/vac/tc/getTerminalData;->ContactlessConfiguration(ICI)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    const-string v11, "getTerminalData"

    new-array v12, v3, [Ljava/lang/Class;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v13

    cmp-long v7, v13, v7

    rsub-int/lit8 v7, v7, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    int-to-char v8, v8

    invoke-static {v5}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    rsub-int/lit8 v13, v13, 0x28

    invoke-static {v7, v8, v13}, Lcom/visa/vac/tc/getTerminalData;->ContactlessConfiguration(ICI)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    aput-object v7, v12, v5

    invoke-virtual {v6, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-array v7, v2, [Ljava/lang/Object;

    aput-object v6, v7, v3

    aput-object v4, v7, v5

    invoke-static {v5}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    cmpl-float v4, v4, v14

    invoke-static {v0, v5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    rsub-int/lit8 v6, v6, 0x29

    invoke-static {v4, v0, v6}, Lcom/visa/vac/tc/getTerminalData;->ContactlessConfiguration(ICI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v4, "$$a"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v8, Lcom/visa/vac/tc/emvconverter/Transaction;

    aput-object v8, v6, v5

    const-class v5, Lcom/visa/vac/tc/VACThinClient$TransactionCallback;

    aput-object v5, v6, v3

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget v0, Lcom/visa/vac/tc/ContactlessConfiguration$5;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/ContactlessConfiguration$5;->getTerminalData:I

    rem-int/2addr v0, v2

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    throw v1

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    throw v1

    :cond_2
    throw v0

    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    throw v1

    :cond_3
    throw v0
.end method
