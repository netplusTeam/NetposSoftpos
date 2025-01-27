.class public final Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$9;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$9",
        "Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;",
        "onNavigationItemSelected",
        "",
        "item",
        "Landroid/view/MenuItem;",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$9;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 438
    const-string v0, "fcmbeasypay"

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "polaris"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$9;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/SettingsFragment;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/SettingsFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    const-string v2, "Settings"

    invoke-static {v0, v1, v2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->access$showFragment(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :sswitch_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$9;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    const-string v2, "Transactions"

    invoke-static {v0, v1, v2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->access$showFragment(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :sswitch_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$9;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/ScanQrCodeLandingPage;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/ScanQrCodeLandingPage;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    const-string v2, "ScanQRLandingPage"

    invoke-static {v0, v1, v2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->access$showFragment(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :sswitch_2
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$9;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    const-string v2, "Dashboard"

    invoke-static {v0, v1, v2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->access$showFragment(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :sswitch_3
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$9;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->access$showCalendarDialog(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$onCreate$9;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    const-string v2, "DisplayQR"

    invoke-static {v0, v1, v2}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->access$showFragment(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 445
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0135 -> :sswitch_3
        0x7f0a018e -> :sswitch_2
        0x7f0a02aa -> :sswitch_1
        0x7f0a0369 -> :sswitch_0
    .end sparse-switch
.end method
