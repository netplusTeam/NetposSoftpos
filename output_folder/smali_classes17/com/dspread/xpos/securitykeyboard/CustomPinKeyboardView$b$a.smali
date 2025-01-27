.class Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$b$a;
.super Ljava/lang/Object;
.source "CustomPinKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$d;

.field final synthetic c:Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$b;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$b;ILcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$b$a;->c:Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$b;

    iput p2, p0, Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$b$a;->a:I

    iput-object p3, p0, Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$b$a;->b:Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget p1, p0, Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$b$a;->a:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$b$a;->b:Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$d;

    iget-object p1, p1, Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$d;->a:Landroid/widget/TextView;

    sget p2, Lcom/example/a94585/myapplication/R$mipmap;->ic_pay_del0:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$b$a;->b:Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$d;

    iget-object p1, p1, Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$d;->a:Landroid/widget/TextView;

    sget p2, Lcom/example/a94585/myapplication/R$mipmap;->ic_pay_del0:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$b$a;->b:Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$d;

    iget-object p1, p1, Lcom/dspread/xpos/securitykeyboard/CustomPinKeyboardView$d;->a:Landroid/widget/TextView;

    sget p2, Lcom/example/a94585/myapplication/R$mipmap;->ic_pay_del1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
