.class public Lcom/dspread/xpos/m;
.super Ljava/lang/Object;
.source "Const_Uart_Attib.java"


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field public final d:I

.field public final e:I

.field final f:I

.field g:I

.field h:I

.field public i:I

.field j:Z

.field k:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const/16 v0, 0xb

    iput v0, p0, Lcom/dspread/xpos/m;->a:I

    .line 4
    const/16 v0, 0x12c

    iput v0, p0, Lcom/dspread/xpos/m;->b:I

    .line 5
    const/16 v0, 0x8

    iput v0, p0, Lcom/dspread/xpos/m;->c:I

    .line 6
    const/4 v0, 0x7

    iput v0, p0, Lcom/dspread/xpos/m;->d:I

    .line 7
    const/4 v0, 0x4

    iput v0, p0, Lcom/dspread/xpos/m;->e:I

    .line 8
    const/4 v0, 0x3

    iput v0, p0, Lcom/dspread/xpos/m;->f:I

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/m;->g:I

    .line 10
    iput v0, p0, Lcom/dspread/xpos/m;->h:I

    .line 11
    iput v0, p0, Lcom/dspread/xpos/m;->i:I

    .line 12
    iput-boolean v0, p0, Lcom/dspread/xpos/m;->j:Z

    .line 13
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/m;->k:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(B)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/m;->b(B)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/m;->k:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/m;->j:Z

    return-void
.end method

.method a(II)Z
    .locals 4

    .line 4
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/m;->k:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/dspread/xpos/m;->k:Ljava/util/Vector;

    add-int/lit8 v3, p1, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/dspread/xpos/m;->k:Ljava/util/Vector;

    add-int/2addr p1, p2

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x68

    if-ne v3, v1, :cond_1

    if-ne v3, v2, :cond_1

    const/16 v1, 0x16

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    return p2

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception p1

    return v0
.end method

.method b(B)I
    .locals 0

    if-gez p1, :cond_0

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    :cond_0
    return p1
.end method

.method public b()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/m;->k:Ljava/util/Vector;

    return-void
.end method

.method b(II)[I
    .locals 4

    .line 2
    new-array v0, p2, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/dspread/xpos/m;->k:Ljava/util/Vector;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public c(II)I
    .locals 9

    .line 11
    iget-object v0, p0, Lcom/dspread/xpos/m;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    move v3, v2

    :goto_0
    if-gt v3, v0, :cond_2

    .line 20
    :try_start_0
    iget-object v4, p0, Lcom/dspread/xpos/m;->k:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 21
    iget-object v5, p0, Lcom/dspread/xpos/m;->k:Ljava/util/Vector;

    add-int/lit8 v6, v3, 0x6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 22
    iget-object v6, p0, Lcom/dspread/xpos/m;->k:Ljava/util/Vector;

    add-int/lit8 v7, v3, 0x3

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 23
    iget-object v7, p0, Lcom/dspread/xpos/m;->k:Ljava/util/Vector;

    add-int/lit8 v8, v3, 0x7

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, 0x68

    if-ne v4, v8, :cond_1

    if-ne v5, v8, :cond_1

    if-ne v6, p1, :cond_1

    if-ne v7, p2, :cond_1

    .line 32
    iget-object v4, p0, Lcom/dspread/xpos/m;->k:Ljava/util/Vector;

    add-int/lit8 v5, v3, 0x4

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, p0, Lcom/dspread/xpos/m;->k:Ljava/util/Vector;

    add-int/2addr v5, v1

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v4, v4, 0xa

    add-int v5, v3, v4

    .line 34
    iget-object v6, p0, Lcom/dspread/xpos/m;->k:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-gt v5, v6, :cond_1

    invoke-virtual {p0, v3, v4}, Lcom/dspread/xpos/m;->a(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 36
    iput v3, p0, Lcom/dspread/xpos/m;->g:I

    .line 37
    iput v4, p0, Lcom/dspread/xpos/m;->h:I

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_2
    return v2
.end method

.method public c()[I
    .locals 5

    .line 1
    iget v0, p0, Lcom/dspread/xpos/m;->g:I

    iget v1, p0, Lcom/dspread/xpos/m;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/dspread/xpos/m;->b(II)[I

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/dspread/xpos/m;->g:I

    iget v2, p0, Lcom/dspread/xpos/m;->h:I

    invoke-virtual {p0, v1, v2}, Lcom/dspread/xpos/m;->d(II)V

    .line 5
    const/4 v1, 0x5

    aget v1, v0, v1

    const/16 v2, 0x8

    shl-int/2addr v1, v2

    const/4 v3, 0x4

    aget v3, v0, v3

    or-int/2addr v1, v3

    .line 8
    new-array v3, v1, [I

    .line 10
    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method d(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 1
    iget-object v1, p0, Lcom/dspread/xpos/m;->k:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/m;->j:Z

    return v0
.end method
