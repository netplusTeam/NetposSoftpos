.class Lcom/dspread/xpos/DspFingerPrint$b;
.super Ljava/lang/Object;
.source "DspFingerPrint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/DspFingerPrint;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/DspFingerPrint;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/DspFingerPrint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint$b;->a:Lcom/dspread/xpos/DspFingerPrint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint$b;->a:Lcom/dspread/xpos/DspFingerPrint;

    iget-object v0, v0, Lcom/dspread/xpos/DspFingerPrint;->d:Lcom/dspread/xpos/DspFingerPrint$DspFingerPrintListener;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "POS_SDK"

    const-string v1, ">>>>>>>QPOSServiceListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
