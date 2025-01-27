.class public final Lcom/woleapp/netpos/contactless/util/AppUtilsKt;
.super Ljava/lang/Object;
.source "AppUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0007\u001a<\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0011\u001a\u000e\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a(\u0010\u0013\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0005H\u0002\u001a\u0018\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "checkForPermission",
        "",
        "context",
        "Landroid/content/Context;",
        "perms",
        "",
        "formatStringsContainHtmlTags",
        "input",
        "genericPermissionHandler",
        "",
        "host",
        "Landroidx/lifecycle/LifecycleOwner;",
        "perm",
        "permCode",
        "",
        "permRationale",
        "fn",
        "Lkotlin/Function0;",
        "isInternetAvailable",
        "requestForPermission",
        "requestCode",
        "permissionRationale",
        "permissionToRequest",
        "vibrateThePhone",
        "duration",
        "",
        "app_fcmbeasypayDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final checkForPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "perms"    # Ljava/lang/String;

    .line 37
    nop

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 36
    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    .line 39
    return v0
.end method

.method public static final formatStringsContainHtmlTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    const-string v0, "input"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    const/16 v0, 0x3f

    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final genericPermissionHandler(Landroidx/lifecycle/LifecycleOwner;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p0, "host"    # Landroidx/lifecycle/LifecycleOwner;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "perm"    # Ljava/lang/String;
    .param p3, "permCode"    # I
    .param p4, "permRationale"    # Ljava/lang/String;
    .param p5, "fn"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "host"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "perm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permRationale"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p1, p2}, Lcom/woleapp/netpos/contactless/util/AppUtilsKt;->checkForPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 53
    :cond_0
    nop

    .line 54
    nop

    .line 55
    nop

    .line 56
    nop

    .line 52
    invoke-static {p0, p3, p4, p2}, Lcom/woleapp/netpos/contactless/util/AppUtilsKt;->requestForPermission(Landroidx/lifecycle/LifecycleOwner;ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void
.end method

.method public static final isInternetAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 102
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_1

    .line 103
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 104
    .local v1, "capabilities":Landroid/net/NetworkCapabilities;
    if-eqz v1, :cond_0

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    goto :goto_0

    .end local v1    # "capabilities":Landroid/net/NetworkCapabilities;
    :cond_0
    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 107
    nop

    .line 109
    .local v1, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 102
    .end local v1    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    :cond_2
    :goto_0
    return v2
.end method

.method private static final requestForPermission(Landroidx/lifecycle/LifecycleOwner;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "host"    # Landroidx/lifecycle/LifecycleOwner;
    .param p1, "requestCode"    # I
    .param p2, "permissionRationale"    # Ljava/lang/String;
    .param p3, "permissionToRequest"    # Ljava/lang/String;

    .line 67
    instance-of v0, p0, Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 69
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 70
    nop

    .line 71
    nop

    .line 72
    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v1

    .line 68
    invoke-static {v0, p2, p1, v2}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroidx/fragment/app/Fragment;Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_0
    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 77
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 78
    nop

    .line 79
    nop

    .line 80
    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v1

    .line 76
    invoke-static {v0, p2, p1, v2}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void
.end method

.method public static final vibrateThePhone(Landroid/content/Context;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # J

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "null cannot be cast to non-null type android.os.Vibrator"

    const-string v2, "vibrator"

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    .line 87
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/Vibrator;

    .line 89
    nop

    .line 90
    const/4 v1, -0x1

    .line 88
    invoke-static {p1, p2, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 96
    :goto_0
    return-void
.end method

.method public static synthetic vibrateThePhone$default(Landroid/content/Context;JILjava/lang/Object;)V
    .locals 0

    .line 85
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x96

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/util/AppUtilsKt;->vibrateThePhone(Landroid/content/Context;J)V

    return-void
.end method
