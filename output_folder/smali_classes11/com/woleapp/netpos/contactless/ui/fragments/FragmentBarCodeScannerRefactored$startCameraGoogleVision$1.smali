.class public final Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$1;
.super Ljava/lang/Object;
.source "FragmentBarCodeScannerRefactored.kt"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->startCameraGoogleVision()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$1",
        "Landroid/view/SurfaceHolder$Callback;",
        "surfaceChanged",
        "",
        "p0",
        "Landroid/view/SurfaceHolder;",
        "p1",
        "",
        "p2",
        "p3",
        "surfaceCreated",
        "surfaceDestroyed",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "p0"    # Landroid/view/SurfaceHolder;
    .param p2, "p1"    # I
    .param p3, "p2"    # I
    .param p4, "p3"    # I

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    nop

    .line 112
    nop

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    const-string v1, "android.permission.CAMERA"

    .line 112
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->access$getCameraSource$p(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)Lcom/google/android/gms/vision/CameraSource;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "cameraSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/CameraSource;->start(Landroid/view/SurfaceHolder;)Lcom/google/android/gms/vision/CameraSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 123
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "p0"    # Landroid/view/SurfaceHolder;

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    nop

    .line 97
    nop

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    const-string v1, "android.permission.CAMERA"

    .line 97
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->access$getCameraSource$p(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)Lcom/google/android/gms/vision/CameraSource;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "cameraSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/CameraSource;->start(Landroid/view/SurfaceHolder;)Lcom/google/android/gms/vision/CameraSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/SurfaceHolder;

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->access$getCameraSource$p(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)Lcom/google/android/gms/vision/CameraSource;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "cameraSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource;->stop()V

    .line 127
    return-void
.end method
