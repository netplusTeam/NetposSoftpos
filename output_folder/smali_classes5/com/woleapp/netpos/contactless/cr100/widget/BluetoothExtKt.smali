.class public final Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothExtKt;
.super Ljava/lang/Object;
.source "BluetoothExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u001c\u0010\u0008\u001a\u00020\u0007*\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\"\u001c\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000e"
    }
    d2 = {
        "bluetoothDialog",
        "Landroid/app/AlertDialog;",
        "getBluetoothDialog",
        "()Landroid/app/AlertDialog;",
        "setBluetoothDialog",
        "(Landroid/app/AlertDialog;)V",
        "hideBluetoothDialog",
        "",
        "showBluetoothDialog",
        "Landroidx/fragment/app/FragmentActivity;",
        "bluetoothAdapter",
        "Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;",
        "showGifOnly",
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


# static fields
.field private static bluetoothDialog:Landroid/app/AlertDialog;


# direct methods
.method public static synthetic $r8$lambda$cGMO3-9GIqrZJFhx3mcDW0tdP3k(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothExtKt;->showBluetoothDialog$lambda-0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getBluetoothDialog()Landroid/app/AlertDialog;
    .locals 1

    .line 12
    sget-object v0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothExtKt;->bluetoothDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static final hideBluetoothDialog()V
    .locals 1

    .line 50
    sget-object v0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothExtKt;->bluetoothDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 51
    :cond_0
    return-void
.end method

.method public static final setBluetoothDialog(Landroid/app/AlertDialog;)V
    .locals 0
    .param p0, "<set-?>"    # Landroid/app/AlertDialog;

    .line 12
    sput-object p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothExtKt;->bluetoothDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public static final showBluetoothDialog(Landroidx/fragment/app/FragmentActivity;Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;Z)V
    .locals 7
    .param p0, "$this$showBluetoothDialog"    # Landroidx/fragment/app/FragmentActivity;
    .param p1, "bluetoothAdapter"    # Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;
    .param p2, "showGifOnly"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bluetoothAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "this.layoutInflater"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0d003a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 24
    .local v2, "dialogView":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 27
    const v3, 0x7f0a01c7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .local v3, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    const v4, 0x7f0a01be

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 30
    .local v4, "gifViewHolder":Landroid/widget/LinearLayout;
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 31
    move-object v5, p1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 33
    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 35
    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 38
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 42
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    sput-object v5, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothExtKt;->bluetoothDialog:Landroid/app/AlertDialog;

    .line 43
    if-eqz v5, :cond_1

    new-instance v6, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothExtKt$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothExtKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 46
    :cond_1
    sget-object v5, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothExtKt;->bluetoothDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 47
    :cond_2
    return-void
.end method

.method public static synthetic showBluetoothDialog$default(Landroidx/fragment/app/FragmentActivity;Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;ZILjava/lang/Object;)V
    .locals 0

    .line 14
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 16
    const/4 p2, 0x0

    .line 14
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothExtKt;->showBluetoothDialog(Landroidx/fragment/app/FragmentActivity;Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;Z)V

    return-void
.end method

.method private static final showBluetoothDialog$lambda-0(Landroid/content/DialogInterface;)V
    .locals 1
    .param p0, "it"    # Landroid/content/DialogInterface;

    .line 44
    sget-object v0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;->getCr100Pos()Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->cancelTrade()V

    .line 45
    :cond_0
    return-void
.end method
