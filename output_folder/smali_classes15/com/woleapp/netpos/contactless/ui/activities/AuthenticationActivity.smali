.class public final Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;
.super Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;
.source "AuthenticationActivity.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0014J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/ActivityAuthenticationBinding;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "showFragment",
        "targetFragment",
        "Landroidx/fragment/app/Fragment;",
        "tokenValid",
        "",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private binding:Lcom/woleapp/netpos/contactless/databinding/ActivityAuthenticationBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;-><init>()V

    return-void
.end method

.method private final showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p1, "targetFragment"    # Landroidx/fragment/app/Fragment;

    .line 89
    nop

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 91
    nop

    .local v0, "$this$showFragment_u24lambda_u2d1":Landroidx/fragment/app/FragmentTransaction;
    const/4 v1, 0x0

    .line 92
    .local v1, "$i$a$-apply-AuthenticationActivity$showFragment$1":I
    nop

    .line 93
    const v2, 0x7f0a0071

    .line 94
    nop

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-virtual {v0, v2, p1, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 97
    const v2, 0x7f01002f

    const v3, 0x10a0001

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 98
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    nop

    .line 91
    .end local v0    # "$this$showFragment_u24lambda_u2d1":Landroidx/fragment/app/FragmentTransaction;
    .end local v1    # "$i$a$-apply-AuthenticationActivity$showFragment$1":I
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private final tokenValid()Z
    .locals 4

    .line 84
    const-string v0, "user_token"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "token":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/JWTHelper;->isExpired(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    invoke-super {p0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f140009

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;->setTheme(I)V

    .line 33
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0d001c

    invoke-static {v0, v1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "setContentView(this, R.l\u2026.activity_authentication)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/ActivityAuthenticationBinding;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;->binding:Lcom/woleapp/netpos/contactless/databinding/ActivityAuthenticationBinding;

    .line 35
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 37
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->isDebuggableModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 48
    .local v0, "debuggableModeEnabled":Z
    const-string v1, "authenticated"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/pixplicity/easyprefs/library/Prefs;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;->tokenValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    nop

    .line 50
    new-instance v1, Landroid/content/Intent;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    const-class v7, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v6, v1

    .local v6, "$this$onCreate_u24lambda_u2d0":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 51
    .local v7, "$i$a$-apply-AuthenticationActivity$onCreate$1":I
    nop

    .line 52
    const v8, 0x14008000

    .line 51
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    nop

    .line 50
    .end local v6    # "$this$onCreate_u24lambda_u2d0":Landroid/content/Intent;
    .end local v7    # "$i$a$-apply-AuthenticationActivity$onCreate$1":I
    nop

    .line 49
    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;->startActivity(Landroid/content/Intent;)V

    .line 55
    sget-object v1, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6, v3, v5, v4}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->init$default(Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;Landroid/content/Context;ZILjava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;->finish()V

    .line 58
    :cond_0
    const-string v1, "fcmbeasypay"

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "providuspos"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3, v5, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v1}, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 61
    :cond_1
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v1}, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 63
    :goto_0
    nop

    .line 64
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 65
    nop

    .line 63
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    .line 70
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 71
    const/16 v4, 0x65

    .line 68
    invoke-static {v1, v2, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "navigateToFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 78
    const v2, 0x7f0a0071

    new-instance v3, Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;

    invoke-direct {v3}, Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;-><init>()V

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 81
    :cond_3
    return-void
.end method
