.class public Lcom/dspread/xpos/securitykeyboard/b;
.super Ljava/lang/Object;
.source "PayPassDialog.java"


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private b:Landroid/view/Window;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->c:Landroid/content/Context;

    .line 4
    sget v0, Lcom/example/a94585/myapplication/R$style;->dialog_pay_theme:I

    iput v0, p0, Lcom/dspread/xpos/securitykeyboard/b;->d:I

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/example/a94585/myapplication/R$layout;->view_paypass_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->e:Landroid/view/View;

    .line 12
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/b;->c:Landroid/content/Context;

    iget v1, p0, Lcom/dspread/xpos/securitykeyboard/b;->d:I

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    .line 13
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 14
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 16
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 17
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->b:Landroid/view/Window;

    .line 18
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 19
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->b:Landroid/view/Window;

    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/b;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 20
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 21
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->b:Landroid/view/Window;

    sget v0, Lcom/example/a94585/myapplication/R$style;->dialogOpenAnimation:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 22
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->b:Landroid/view/Window;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->c:Landroid/content/Context;

    .line 25
    iput p2, p0, Lcom/dspread/xpos/securitykeyboard/b;->d:I

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/example/a94585/myapplication/R$layout;->view_paypass_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(II)Lcom/dspread/xpos/securitykeyboard/b;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/b;->b:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 20
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->b:Landroid/view/Window;

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    return-object p0
.end method

.method public a(IIF)Lcom/dspread/xpos/securitykeyboard/b;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/Window;->setDimAmount(F)V

    .line 5
    iget-object p3, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    iput-object p3, p0, Lcom/dspread/xpos/securitykeyboard/b;->b:Landroid/view/Window;

    .line 6
    invoke-virtual {p3, p1, p2}, Landroid/view/Window;->setLayout(II)V

    .line 7
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->b:Landroid/view/Window;

    iget-object p2, p0, Lcom/dspread/xpos/securitykeyboard/b;->e:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    return-object p0
.end method

.method public a(IIIF)Lcom/dspread/xpos/securitykeyboard/b;
    .locals 1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 8
    iget-object p2, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/view/Window;->setDimAmount(F)V

    .line 9
    iget-object p2, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    iput-object p2, p0, Lcom/dspread/xpos/securitykeyboard/b;->b:Landroid/view/Window;

    const/4 p3, -0x2

    .line 10
    invoke-virtual {p2, p1, p3}, Landroid/view/Window;->setLayout(II)V

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->b:Landroid/view/Window;

    iget-object p2, p0, Lcom/dspread/xpos/securitykeyboard/b;->e:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    return-object p0

    .line 15
    :cond_0
    iget-object p3, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/view/Window;->setDimAmount(F)V

    .line 16
    iget-object p3, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    iput-object p3, p0, Lcom/dspread/xpos/securitykeyboard/b;->b:Landroid/view/Window;

    .line 17
    invoke-virtual {p3, p1, p2}, Landroid/view/Window;->setLayout(II)V

    .line 18
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->b:Landroid/view/Window;

    iget-object p2, p0, Lcom/dspread/xpos/securitykeyboard/b;->e:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    return-object p0
.end method

.method public a(Z)Lcom/dspread/xpos/securitykeyboard/b;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/dspread/xpos/securitykeyboard/b;->c:Landroid/content/Context;

    iget v2, p0, Lcom/dspread/xpos/securitykeyboard/b;->d:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-object p0
.end method

.method public a()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    .line 24
    iput-object v0, p0, Lcom/dspread/xpos/securitykeyboard/b;->b:Landroid/view/Window;

    :cond_0
    return-void
.end method

.method public b(Z)Lcom/dspread/xpos/securitykeyboard/b;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :goto_0
    return-object p0
.end method

.method public b()Lcom/dspread/xpos/securitykeyboard/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/b;->e:Landroid/view/View;

    sget v1, Lcom/example/a94585/myapplication/R$id;->pay_View:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dspread/xpos/securitykeyboard/c;

    return-object v0
.end method

.method public c()Lcom/dspread/xpos/securitykeyboard/b;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/dspread/xpos/securitykeyboard/b;->c:Landroid/content/Context;

    iget v2, p0, Lcom/dspread/xpos/securitykeyboard/b;->d:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    .line 2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/b;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method
