.class public Lcom/dspread/xpos/securitykeyboard/c;
.super Landroid/widget/RelativeLayout;
.source "PayPassView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/securitykeyboard/c$c;,
        Lcom/dspread/xpos/securitykeyboard/c$d;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/GridView;

.field private c:Ljava/lang/String;

.field private d:[Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/view/View;

.field private j:Z

.field private k:Lcom/dspread/xpos/securitykeyboard/c$c;

.field l:Ljava/lang/String;

.field m:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->c:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->l:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/dspread/xpos/securitykeyboard/c$b;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/securitykeyboard/c$b;-><init>(Lcom/dspread/xpos/securitykeyboard/c;)V

    iput-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->m:Landroid/widget/BaseAdapter;

    .line 111
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c;->a:Landroid/app/Activity;

    .line 113
    invoke-direct {p0}, Lcom/dspread/xpos/securitykeyboard/c;->c()V

    .line 114
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c;->i:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    const-string p2, ""

    iput-object p2, p0, Lcom/dspread/xpos/securitykeyboard/c;->c:Ljava/lang/String;

    .line 333
    iput-object p2, p0, Lcom/dspread/xpos/securitykeyboard/c;->l:Ljava/lang/String;

    .line 334
    new-instance p2, Lcom/dspread/xpos/securitykeyboard/c$b;

    invoke-direct {p2, p0}, Lcom/dspread/xpos/securitykeyboard/c$b;-><init>(Lcom/dspread/xpos/securitykeyboard/c;)V

    iput-object p2, p0, Lcom/dspread/xpos/securitykeyboard/c;->m:Landroid/widget/BaseAdapter;

    .line 335
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c;->a:Landroid/app/Activity;

    .line 337
    invoke-direct {p0}, Lcom/dspread/xpos/securitykeyboard/c;->c()V

    .line 338
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c;->i:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    const-string p1, ""

    iput-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c;->c:Ljava/lang/String;

    .line 223
    iput-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c;->l:Ljava/lang/String;

    .line 224
    new-instance p1, Lcom/dspread/xpos/securitykeyboard/c$b;

    invoke-direct {p1, p0}, Lcom/dspread/xpos/securitykeyboard/c$b;-><init>(Lcom/dspread/xpos/securitykeyboard/c;)V

    iput-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c;->m:Landroid/widget/BaseAdapter;

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/securitykeyboard/c;)Lcom/dspread/xpos/securitykeyboard/c$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/securitykeyboard/c;->k:Lcom/dspread/xpos/securitykeyboard/c$c;

    return-object p0
.end method

.method static synthetic a(Lcom/dspread/xpos/securitykeyboard/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/dspread/xpos/securitykeyboard/c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/securitykeyboard/c;->h:Ljava/util/List;

    return-object p0
.end method

.method private b()V
    .locals 7

    .line 2
    iget-boolean v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->j:Z

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/16 v3, 0xa

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2
    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->h:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v2

    :goto_0
    if-gt v0, v3, :cond_0

    .line 6
    iget-object v5, p0, Lcom/dspread/xpos/securitykeyboard/c;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    :goto_1
    if-gt v2, v3, :cond_2

    .line 11
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 12
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->h:Ljava/util/List;

    invoke-interface {v0, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->h:Ljava/util/List;

    sget v1, Lcom/example/a94585/myapplication/R$mipmap;->ic_pay_del0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 18
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->h:Ljava/util/List;

    .line 19
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    :goto_2
    if-gt v0, v1, :cond_4

    .line 21
    iget-object v3, p0, Lcom/dspread/xpos/securitykeyboard/c;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->h:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->h:Ljava/util/List;

    sget v1, Lcom/example/a94585/myapplication/R$mipmap;->ic_pay_del0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :goto_3
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->b:Landroid/widget/GridView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/dspread/xpos/securitykeyboard/c;->m:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_5

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_5
    return-void
.end method

.method static synthetic c(Lcom/dspread/xpos/securitykeyboard/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/securitykeyboard/c;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/example/a94585/myapplication/R$layout;->view_paypass_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->i:Landroid/view/View;

    .line 3
    sget v1, Lcom/example/a94585/myapplication/R$id;->iv_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->e:Landroid/widget/ImageView;

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->i:Landroid/view/View;

    sget v1, Lcom/example/a94585/myapplication/R$id;->tv_forget:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->f:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->i:Landroid/view/View;

    sget v1, Lcom/example/a94585/myapplication/R$id;->tv_passText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->g:Landroid/widget/TextView;

    .line 6
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->d:[Landroid/widget/TextView;

    .line 7
    iget-object v1, p0, Lcom/dspread/xpos/securitykeyboard/c;->i:Landroid/view/View;

    sget v2, Lcom/example/a94585/myapplication/R$id;->tv_pass1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 8
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->i:Landroid/view/View;

    sget v1, Lcom/example/a94585/myapplication/R$id;->gv_pass:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->b:Landroid/widget/GridView;

    .line 10
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/dspread/xpos/securitykeyboard/c$a;

    invoke-direct {v1, p0}, Lcom/dspread/xpos/securitykeyboard/c$a;-><init>(Lcom/dspread/xpos/securitykeyboard/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-direct {p0}, Lcom/dspread/xpos/securitykeyboard/c;->b()V

    return-void
.end method

.method static synthetic d(Lcom/dspread/xpos/securitykeyboard/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/securitykeyboard/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/dspread/xpos/securitykeyboard/c;)[Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/securitykeyboard/c;->d:[Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/dspread/xpos/securitykeyboard/c;
    .locals 3

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->c:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/dspread/xpos/securitykeyboard/c;->d:[Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public a(F)Lcom/dspread/xpos/securitykeyboard/c;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-object p0
.end method

.method public a(I)Lcom/dspread/xpos/securitykeyboard/c;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Lcom/dspread/xpos/securitykeyboard/c;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/dspread/xpos/securitykeyboard/c;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/dspread/xpos/securitykeyboard/c;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public a(Z)Lcom/dspread/xpos/securitykeyboard/c;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/dspread/xpos/securitykeyboard/c;->j:Z

    .line 4
    invoke-direct {p0}, Lcom/dspread/xpos/securitykeyboard/c;->b()V

    .line 5
    iget-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c;->m:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-object p0
.end method

.method public b(F)Lcom/dspread/xpos/securitykeyboard/c;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-object p0
.end method

.method public b(I)Lcom/dspread/xpos/securitykeyboard/c;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/dspread/xpos/securitykeyboard/c;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public c(I)Lcom/dspread/xpos/securitykeyboard/c;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/dspread/xpos/securitykeyboard/c;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setPayClickListener(Lcom/dspread/xpos/securitykeyboard/c$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/securitykeyboard/c;->k:Lcom/dspread/xpos/securitykeyboard/c$c;

    return-void
.end method
