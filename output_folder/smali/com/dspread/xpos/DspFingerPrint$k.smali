.class Lcom/dspread/xpos/DspFingerPrint$k;
.super Ljava/lang/Object;
.source "DspFingerPrint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/DspFingerPrint;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/dspread/xpos/DspFingerPrint;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/DspFingerPrint;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint$k;->b:Lcom/dspread/xpos/DspFingerPrint;

    iput-boolean p2, p0, Lcom/dspread/xpos/DspFingerPrint$k;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint$k;->b:Lcom/dspread/xpos/DspFingerPrint;

    iget-object v0, v0, Lcom/dspread/xpos/DspFingerPrint;->d:Lcom/dspread/xpos/DspFingerPrint$DspFingerPrintListener;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/dspread/xpos/DspFingerPrint$k;->a:Z

    invoke-interface {v0, v1}, Lcom/dspread/xpos/DspFingerPrint$DspFingerPrintListener;->onLcdShowCustomDisplay(Z)V

    :cond_0
    return-void
.end method
