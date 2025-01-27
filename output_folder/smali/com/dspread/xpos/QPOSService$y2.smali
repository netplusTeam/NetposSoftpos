.class Lcom/dspread/xpos/QPOSService$y2;
.super Ljava/lang/Object;
.source "QPOSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/QPOSService;->e(ZLjava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/Hashtable;

.field final synthetic c:Lcom/dspread/xpos/QPOSService;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/QPOSService;ZLjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/QPOSService$y2;->c:Lcom/dspread/xpos/QPOSService;

    iput-boolean p2, p0, Lcom/dspread/xpos/QPOSService$y2;->a:Z

    iput-object p3, p0, Lcom/dspread/xpos/QPOSService$y2;->b:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$y2;->c:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->listener:Lcom/dspread/xpos/QPOSService$QPOSServiceListener;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/dspread/xpos/QPOSService$y2;->a:Z

    iget-object v2, p0, Lcom/dspread/xpos/QPOSService$y2;->b:Ljava/util/Hashtable;

    invoke-interface {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$QPOSServiceListener;->onReturnSearchCardResult(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 4
    :cond_0
    const-string/jumbo v0, "onReturnSearchCardResult; listener is null"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
