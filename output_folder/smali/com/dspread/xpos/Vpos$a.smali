.class Lcom/dspread/xpos/Vpos$a;
.super Ljava/lang/Object;
.source "Vpos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/Vpos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/Vpos;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/Vpos;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/Vpos$a;->a:Lcom/dspread/xpos/Vpos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/Vpos$a;->a:Lcom/dspread/xpos/Vpos;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dspread/xpos/Vpos;->u:Z

    return-void
.end method
