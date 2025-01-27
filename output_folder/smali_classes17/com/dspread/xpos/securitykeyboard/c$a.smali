.class Lcom/dspread/xpos/securitykeyboard/c$a;
.super Ljava/lang/Object;
.source "PayPassView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/securitykeyboard/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/securitykeyboard/c;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/securitykeyboard/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c$a;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c$a;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-virtual {p1}, Lcom/dspread/xpos/securitykeyboard/c;->a()Lcom/dspread/xpos/securitykeyboard/c;

    .line 2
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c$a;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {p1}, Lcom/dspread/xpos/securitykeyboard/c;->a(Lcom/dspread/xpos/securitykeyboard/c;)Lcom/dspread/xpos/securitykeyboard/c$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/dspread/xpos/securitykeyboard/c$c;->a()V

    return-void
.end method
