.class public abstract Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper;
.super Lpub/devrel/easypermissions/helper/PermissionHelper;
.source "BaseSupportPermissionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lpub/devrel/easypermissions/helper/PermissionHelper<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BSPermissionsHelper"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 19
    .local p0, "this":Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper;, "Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper<TT;>;"
    .local p1, "host":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;-><init>(Ljava/lang/Object;)V

    .line 20
    return-void
.end method


# virtual methods
.method public abstract getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
.end method

.method public varargs showRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 4
    .param p1, "rationale"    # Ljava/lang/String;
    .param p2, "positiveButton"    # Ljava/lang/String;
    .param p3, "negativeButton"    # Ljava/lang/String;
    .param p4, "theme"    # I
    .param p5, "requestCode"    # I
    .param p6, "perms"    # [Ljava/lang/String;

    .line 32
    .local p0, "this":Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper;, "Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper<TT;>;"
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 35
    .local v0, "fm":Landroidx/fragment/app/FragmentManager;
    const-string v1, "RationaleDialogFragmentCompat"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 36
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    instance-of v3, v2, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;

    if-eqz v3, :cond_0

    .line 37
    const-string v1, "BSPermissionsHelper"

    const-string v3, "Found existing fragment, not showing rationale."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void

    .line 41
    :cond_0
    nop

    .line 42
    invoke-static/range {p1 .. p6}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;

    move-result-object v3

    .line 43
    invoke-virtual {v3, v0, v1}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 44
    return-void
.end method
