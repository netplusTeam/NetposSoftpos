.class Lcom/dspread/xpos/DspFingerPrint$d;
.super Ljava/lang/Thread;
.source "DspFingerPrint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/DspFingerPrint;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dspread/xpos/DspFingerPrint;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/DspFingerPrint;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/DspFingerPrint$d;->b:Lcom/dspread/xpos/DspFingerPrint;

    iput p2, p0, Lcom/dspread/xpos/DspFingerPrint$d;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/DspFingerPrint$d;->b:Lcom/dspread/xpos/DspFingerPrint;

    iget v1, p0, Lcom/dspread/xpos/DspFingerPrint$d;->a:I

    invoke-static {v0, v1}, Lcom/dspread/xpos/DspFingerPrint;->a(Lcom/dspread/xpos/DspFingerPrint;I)V

    return-void
.end method
