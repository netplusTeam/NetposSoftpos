.class Lcom/dspread/xpos/VPosServiceUart$a;
.super Ljava/lang/Object;
.source "VPosServiceUart.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/VPosServiceUart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/VPosServiceUart;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/VPosServiceUart;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/VPosServiceUart$a;->a:Lcom/dspread/xpos/VPosServiceUart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/dspread/xpos/VPosServiceUart$a;->a:Lcom/dspread/xpos/VPosServiceUart;

    invoke-static {p2}, Lcom/dspread/sp/b$b;->a(Landroid/os/IBinder;)Lcom/dspread/sp/b;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dspread/xpos/VPosServiceUart;->a(Lcom/dspread/xpos/VPosServiceUart;Lcom/dspread/sp/b;)Lcom/dspread/sp/b;

    .line 2
    const-string p1, "ispManager onServiceConnected != null"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/dspread/xpos/VPosServiceUart$a;->a:Lcom/dspread/xpos/VPosServiceUart;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/dspread/xpos/VPosServiceUart;->a(Lcom/dspread/xpos/VPosServiceUart;Lcom/dspread/sp/b;)Lcom/dspread/sp/b;

    .line 2
    sget-object p1, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->CLOSED:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    invoke-static {p1}, Lcom/dspread/xpos/VPosServiceUart;->a(Lcom/dspread/xpos/VPosServiceUart$UartServiceState;)Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    .line 3
    const-string p1, "ispManager onServiceDisconnected == null"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-void
.end method
