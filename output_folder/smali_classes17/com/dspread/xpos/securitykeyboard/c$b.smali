.class Lcom/dspread/xpos/securitykeyboard/c$b;
.super Landroid/widget/BaseAdapter;
.source "PayPassView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/securitykeyboard/c;
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
    iput-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {v0}, Lcom/dspread/xpos/securitykeyboard/c;->b(Lcom/dspread/xpos/securitykeyboard/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {v0}, Lcom/dspread/xpos/securitykeyboard/c;->b(Lcom/dspread/xpos/securitykeyboard/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {p2}, Lcom/dspread/xpos/securitykeyboard/c;->c(Lcom/dspread/xpos/securitykeyboard/c;)Landroid/app/Activity;

    move-result-object p2

    sget p3, Lcom/example/a94585/myapplication/R$layout;->view_paypass_gridview_item:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/dspread/xpos/securitykeyboard/c$d;

    invoke-direct {p3}, Lcom/dspread/xpos/securitykeyboard/c$d;-><init>()V

    .line 3
    sget v0, Lcom/example/a94585/myapplication/R$id;->btNumber:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/dspread/xpos/securitykeyboard/c$d;->a:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dspread/xpos/securitykeyboard/c$d;

    .line 9
    :goto_0
    iget-object v0, p3, Lcom/dspread/xpos/securitykeyboard/c$d;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {v2}, Lcom/dspread/xpos/securitykeyboard/c;->b(Lcom/dspread/xpos/securitykeyboard/c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 11
    iget-object v0, p3, Lcom/dspread/xpos/securitykeyboard/c$d;->a:Landroid/widget/TextView;

    const-string v1, "\u221a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p3, Lcom/dspread/xpos/securitykeyboard/c$d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {v1}, Lcom/dspread/xpos/securitykeyboard/c;->c(Lcom/dspread/xpos/securitykeyboard/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/example/a94585/myapplication/R$color;->graye3:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 15
    iget-object v1, p3, Lcom/dspread/xpos/securitykeyboard/c$d;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v1, p3, Lcom/dspread/xpos/securitykeyboard/c$d;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {v2}, Lcom/dspread/xpos/securitykeyboard/c;->b(Lcom/dspread/xpos/securitykeyboard/c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    if-ne p1, v0, :cond_3

    .line 20
    iget-object v0, p3, Lcom/dspread/xpos/securitykeyboard/c$d;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/dspread/xpos/securitykeyboard/c$b$a;

    invoke-direct {v1, p0, p1, p3}, Lcom/dspread/xpos/securitykeyboard/c$b$a;-><init>(Lcom/dspread/xpos/securitykeyboard/c$b;ILcom/dspread/xpos/securitykeyboard/c$d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 41
    :cond_3
    iget-object p3, p3, Lcom/dspread/xpos/securitykeyboard/c$d;->a:Landroid/widget/TextView;

    new-instance v0, Lcom/dspread/xpos/securitykeyboard/c$b$b;

    invoke-direct {v0, p0, p1}, Lcom/dspread/xpos/securitykeyboard/c$b$b;-><init>(Lcom/dspread/xpos/securitykeyboard/c$b;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
