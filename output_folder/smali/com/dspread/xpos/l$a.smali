.class public Lcom/dspread/xpos/l$a;
.super Ljava/lang/Object;
.source "Console.java"

# interfaces
.implements Lcom/dspread/xpos/k0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/l;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/l$a;->a:Lcom/dspread/xpos/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/l$a;->a:Lcom/dspread/xpos/l;

    invoke-static {v0}, Lcom/dspread/xpos/l;->a(Lcom/dspread/xpos/l;)Lcom/dspread/xpos/m;

    move-result-object v0

    aget-byte v1, p1, p3

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/m;->a(B)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
