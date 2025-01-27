.class Lcom/dspread/xpos/x0$b;
.super Ljava/lang/Object;
.source "VposAudio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/media/AudioRecord;

.field final synthetic c:Lcom/dspread/xpos/x0;


# direct methods
.method protected constructor <init>(Lcom/dspread/xpos/x0;Landroid/media/AudioRecord;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/x0$b;->c:Lcom/dspread/xpos/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/dspread/xpos/x0$b;->b:Landroid/media/AudioRecord;

    .line 3
    iput p3, p0, Lcom/dspread/xpos/x0$b;->a:I

    .line 5
    const/16 p1, -0x13

    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/x0$b;->b:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 2
    iget-object v1, p0, Lcom/dspread/xpos/x0$b;->c:Lcom/dspread/xpos/x0;

    invoke-static {v1, v0}, Lcom/dspread/xpos/x0;->d(Lcom/dspread/xpos/x0;Z)Z

    .line 3
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/dspread/xpos/x0$b;->c:Lcom/dspread/xpos/x0;

    invoke-static {v1}, Lcom/dspread/xpos/x0;->c(Lcom/dspread/xpos/x0;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget v1, p0, Lcom/dspread/xpos/x0$b;->a:I

    new-array v2, v1, [B

    .line 6
    iget-object v3, p0, Lcom/dspread/xpos/x0$b;->b:Landroid/media/AudioRecord;

    invoke-virtual {v3, v2, v0, v1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    .line 9
    new-array v3, v1, [B

    .line 10
    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object v1, p0, Lcom/dspread/xpos/x0$b;->c:Lcom/dspread/xpos/x0;

    invoke-static {v1}, Lcom/dspread/xpos/x0;->b(Lcom/dspread/xpos/x0;)Lcom/dspread/xpos/A01Kernel;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/dspread/xpos/A01Kernel;->java_mobile_decode_audio([B)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/dspread/xpos/x0$b;->b:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 19
    iget-object v1, p0, Lcom/dspread/xpos/x0$b;->b:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 20
    const-string v1, "VposAudio: RecorderThread worker stopped"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 23
    const-string v1, "VposAudio: RecorderThread Exception"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/dspread/xpos/x0$b;->c:Lcom/dspread/xpos/x0;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/dspread/xpos/x0;->b(Lcom/dspread/xpos/x0;Z)Z

    .line 26
    iget-object v1, p0, Lcom/dspread/xpos/x0$b;->c:Lcom/dspread/xpos/x0;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 29
    iget-object v1, p0, Lcom/dspread/xpos/x0$b;->c:Lcom/dspread/xpos/x0;

    invoke-static {v1, v0}, Lcom/dspread/xpos/x0;->c(Lcom/dspread/xpos/x0;Z)Z

    .line 30
    iget-object v1, p0, Lcom/dspread/xpos/x0$b;->c:Lcom/dspread/xpos/x0;

    invoke-virtual {v1, v0}, Lcom/dspread/xpos/Vpos;->o(Z)V

    :goto_1
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/dspread/xpos/x0$b;->b:Landroid/media/AudioRecord;

    return-void
.end method
