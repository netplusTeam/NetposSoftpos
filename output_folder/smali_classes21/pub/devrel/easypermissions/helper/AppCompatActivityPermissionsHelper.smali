.class Lpub/devrel/easypermissions/helper/AppCompatActivityPermissionsHelper;
.super Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper;
.source "AppCompatActivityPermissionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper<",
        "Landroidx/appcompat/app/AppCompatActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0
    .param p1, "host"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 15
    invoke-direct {p0, p1}, Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper;-><init>(Ljava/lang/Object;)V

    .line 16
    return-void
.end method


# virtual methods
.method public varargs directRequestPermissions(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "perms"    # [Ljava/lang/String;

    .line 25
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/AppCompatActivityPermissionsHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p2, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 26
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/AppCompatActivityPermissionsHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/AppCompatActivityPermissionsHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "perm"    # Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/AppCompatActivityPermissionsHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
