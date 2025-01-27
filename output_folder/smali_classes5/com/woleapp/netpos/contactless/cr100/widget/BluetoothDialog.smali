.class public Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog;
.super Ljava/lang/Object;
.source "BluetoothDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog$OnMyClickListener;
    }
.end annotation


# static fields
.field public static ErrorDialog:Landroidx/appcompat/app/AlertDialog;

.field public static loadingDialog:Landroid/app/Dialog;

.field public static manualExitDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$manualExitDialog$0(Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog$OnMyClickListener;Landroid/view/View;)V
    .locals 0
    .param p0, "listener"    # Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog$OnMyClickListener;
    .param p1, "v"    # Landroid/view/View;

    .line 46
    invoke-interface {p0}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog$OnMyClickListener;->onConfirm()V

    return-void
.end method

.method static synthetic lambda$manualExitDialog$1(Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog$OnMyClickListener;Landroid/view/View;)V
    .locals 0
    .param p0, "listener"    # Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog$OnMyClickListener;
    .param p1, "v"    # Landroid/view/View;

    .line 47
    invoke-interface {p0}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog$OnMyClickListener;->onCancel()V

    return-void
.end method

.method public static loading(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p0, "mContext"    # Landroid/app/Activity;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mContext",
            "msg"
        }
    .end annotation

    .line 67
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog;->loadingDialog:Landroid/app/Dialog;

    .line 68
    const v1, 0x7f0d00cd

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 69
    sget-object v0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog;->loadingDialog:Landroid/app/Dialog;

    const v1, 0x7f0a00d2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 70
    .local v0, "confirmButton":Landroid/widget/Button;
    sget-object v1, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog;->loadingDialog:Landroid/app/Dialog;

    const v2, 0x7f0a01fa

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    .local v1, "messageTextView":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 73
    sget-object v2, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 74
    .local v2, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 75
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    sget-object v4, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f0800b3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 76
    const v4, 0x3ecccccd    # 0.4f

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 77
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 78
    sget-object v4, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog;->loadingDialog:Landroid/app/Dialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    sget-object v4, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 83
    :cond_0
    return-void
.end method

.method public static manualExitDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog$OnMyClickListener;)V
    .locals 12
    .param p0, "mContext"    # Landroid/app/Activity;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog$OnMyClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mContext",
            "msg",
            "listener"
        }
    .end annotation

    .line 37
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    const v1, 0x7f0d001e

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, "view":Landroid/view/View;
    const v3, 0x7f0a039b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 40
    .local v3, "vView":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 41
    const v5, 0x7f0a037b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 42
    .local v5, "mtvInfo":Landroid/widget/TextView;
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const v6, 0x7f0a0099

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 44
    .local v6, "mBtnConfirm":Landroid/widget/Button;
    const v7, 0x7f0a0097

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 45
    .local v7, "mBtnCancel":Landroid/widget/Button;
    invoke-virtual {v7, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 46
    new-instance v4, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog$$ExternalSyntheticLambda0;

    invoke-direct {v4, p2}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog$OnMyClickListener;)V

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    new-instance v4, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog$$ExternalSyntheticLambda1;

    invoke-direct {v4, p2}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog$OnMyClickListener;)V

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v4

    sput-object v4, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog;->manualExitDialog:Landroidx/appcompat/app/AlertDialog;

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    sget-object v4, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog;->manualExitDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 53
    :cond_0
    sget-object v4, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog;->manualExitDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 54
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    const/16 v2, 0x50

    invoke-virtual {v4, v2}, Landroid/view/Window;->setGravity(I)V

    .line 56
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 57
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 58
    .local v8, "d":Landroid/view/Display;
    sget-object v9, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog;->manualExitDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v9}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 59
    .local v9, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v10, -0x2

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 60
    const/4 v10, -0x1

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 61
    sget-object v10, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog;->manualExitDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v10}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 62
    sget-object v10, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothDialog;->manualExitDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 63
    invoke-virtual {v4, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 64
    return-void
.end method
