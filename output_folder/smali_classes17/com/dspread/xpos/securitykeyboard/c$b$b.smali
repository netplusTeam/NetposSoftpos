.class Lcom/dspread/xpos/securitykeyboard/c$b$b;
.super Ljava/lang/Object;
.source "PayPassView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/securitykeyboard/c$b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dspread/xpos/securitykeyboard/c$b;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/securitykeyboard/c$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iput p2, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->a:I

    const-string v0, "test"

    const/16 v1, 0x9

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-ge p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object p1, p1, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {p1}, Lcom/dspread/xpos/securitykeyboard/c;->d(Lcom/dspread/xpos/securitykeyboard/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0xc

    if-lt p1, v2, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object p1, p1, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object v4, v4, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {v4}, Lcom/dspread/xpos/securitykeyboard/c;->d(Lcom/dspread/xpos/securitykeyboard/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object v4, v4, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {v4}, Lcom/dspread/xpos/securitykeyboard/c;->b(Lcom/dspread/xpos/securitykeyboard/c;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->a:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/dspread/xpos/securitykeyboard/c;->a(Lcom/dspread/xpos/securitykeyboard/c;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strPass add---"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object v2, v2, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {v2}, Lcom/dspread/xpos/securitykeyboard/c;->d(Lcom/dspread/xpos/securitykeyboard/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object v0, v0, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    iget-object v2, v0, Lcom/dspread/xpos/securitykeyboard/c;->l:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/dspread/xpos/securitykeyboard/c;->l:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object p1, p1, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {p1}, Lcom/dspread/xpos/securitykeyboard/c;->e(Lcom/dspread/xpos/securitykeyboard/c;)[Landroid/widget/TextView;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object v0, v0, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    iget-object v0, v0, Lcom/dspread/xpos/securitykeyboard/c;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object p1, p1, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {p1}, Lcom/dspread/xpos/securitykeyboard/c;->d(Lcom/dspread/xpos/securitykeyboard/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object p1, p1, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {p1}, Lcom/dspread/xpos/securitykeyboard/c;->d(Lcom/dspread/xpos/securitykeyboard/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object v4, v4, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {v4}, Lcom/dspread/xpos/securitykeyboard/c;->d(Lcom/dspread/xpos/securitykeyboard/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/dspread/xpos/securitykeyboard/c;->a(Lcom/dspread/xpos/securitykeyboard/c;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strPass del---"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object v2, v2, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {v2}, Lcom/dspread/xpos/securitykeyboard/c;->d(Lcom/dspread/xpos/securitykeyboard/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object p1, p1, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    iget-object v0, p1, Lcom/dspread/xpos/securitykeyboard/c;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dspread/xpos/securitykeyboard/c;->l:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object p1, p1, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {p1}, Lcom/dspread/xpos/securitykeyboard/c;->e(Lcom/dspread/xpos/securitykeyboard/c;)[Landroid/widget/TextView;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object v0, v0, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    iget-object v0, v0, Lcom/dspread/xpos/securitykeyboard/c;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_2
    :goto_0
    iget p1, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->a:I

    if-ne p1, v1, :cond_4

    .line 19
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object p1, p1, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {p1}, Lcom/dspread/xpos/securitykeyboard/c;->d(Lcom/dspread/xpos/securitykeyboard/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_3

    return-void

    .line 23
    :cond_3
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object p1, p1, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {p1}, Lcom/dspread/xpos/securitykeyboard/c;->a(Lcom/dspread/xpos/securitykeyboard/c;)Lcom/dspread/xpos/securitykeyboard/c$c;

    move-result-object p1

    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c$b$b;->b:Lcom/dspread/xpos/securitykeyboard/c$b;

    iget-object v0, v0, Lcom/dspread/xpos/securitykeyboard/c$b;->a:Lcom/dspread/xpos/securitykeyboard/c;

    invoke-static {v0}, Lcom/dspread/xpos/securitykeyboard/c;->d(Lcom/dspread/xpos/securitykeyboard/c;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/dspread/xpos/securitykeyboard/c$c;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
