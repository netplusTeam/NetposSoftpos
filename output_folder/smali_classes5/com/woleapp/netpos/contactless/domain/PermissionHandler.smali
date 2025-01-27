.class public interface abstract Lcom/woleapp/netpos/contactless/domain/PermissionHandler;
.super Ljava/lang/Object;
.source "PermissionHandler.kt"

# interfaces
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J@\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0011H&J(\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007H&\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/domain/PermissionHandler;",
        "Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;",
        "checkForPermission",
        "",
        "context",
        "Landroid/content/Context;",
        "perms",
        "",
        "permissionHandler",
        "",
        "host",
        "Landroidx/lifecycle/LifecycleOwner;",
        "permissionToRequest",
        "permRequestCode",
        "",
        "permRationaleStringId",
        "fn",
        "Lkotlin/Function0;",
        "requestForPermission",
        "requestCode",
        "permissionRationale",
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


# virtual methods
.method public abstract checkForPermission(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract permissionHandler(Landroidx/lifecycle/LifecycleOwner;Landroid/content/Context;Ljava/lang/String;IILkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestForPermission(Landroidx/lifecycle/LifecycleOwner;ILjava/lang/String;Ljava/lang/String;)V
.end method
