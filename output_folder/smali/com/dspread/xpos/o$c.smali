.class Lcom/dspread/xpos/o$c;
.super Ljava/lang/Object;
.source "CopyOfVPosBluetooth_2mode.java"

# interfaces
.implements Lcom/dspread/xpos/bluetooth2mode/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/o;


# direct methods
.method private constructor <init>(Lcom/dspread/xpos/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/o$c;->a:Lcom/dspread/xpos/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dspread/xpos/o;Lcom/dspread/xpos/o$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/dspread/xpos/o$c;-><init>(Lcom/dspread/xpos/o;)V

    return-void
.end method


# virtual methods
.method public a([BI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/o$c;->a:Lcom/dspread/xpos/o;

    invoke-static {v0}, Lcom/dspread/xpos/o;->a(Lcom/dspread/xpos/o;)I

    move-result v0

    add-int/2addr v0, p2

    const/16 v1, 0x2800

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/o$c;->a:Lcom/dspread/xpos/o;

    invoke-static {v0}, Lcom/dspread/xpos/o;->b(Lcom/dspread/xpos/o;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/o$c;->a:Lcom/dspread/xpos/o;

    invoke-static {v1}, Lcom/dspread/xpos/o;->a(Lcom/dspread/xpos/o;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/o$c;->a:Lcom/dspread/xpos/o;

    invoke-static {v0, p2}, Lcom/dspread/xpos/o;->a(Lcom/dspread/xpos/o;I)I

    .line 4
    new-array v0, p2, [B

    .line 5
    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object p1, p0, Lcom/dspread/xpos/o$c;->a:Lcom/dspread/xpos/o;

    invoke-virtual {p1}, Lcom/dspread/xpos/Vpos;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/dspread/xpos/o$c;->a:Lcom/dspread/xpos/o;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 9
    iget-object p1, p0, Lcom/dspread/xpos/o$c;->a:Lcom/dspread/xpos/o;

    invoke-static {p1}, Lcom/dspread/xpos/o;->c(Lcom/dspread/xpos/o;)V

    :cond_0
    return-void
.end method
