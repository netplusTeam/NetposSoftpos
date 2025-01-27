.class Lcom/dspread/xpos/x0$a;
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
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/media/AudioTrack;

.field final synthetic b:Lcom/dspread/xpos/x0;


# direct methods
.method protected constructor <init>(Lcom/dspread/xpos/x0;Landroid/media/AudioTrack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/x0$a;->b:Lcom/dspread/xpos/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/dspread/xpos/x0$a;->a:Landroid/media/AudioTrack;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/x0$a;->b:Lcom/dspread/xpos/x0;

    invoke-static {v1, v0}, Lcom/dspread/xpos/x0;->a(Lcom/dspread/xpos/x0;Z)Z

    .line 3
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/dspread/xpos/x0$a;->b:Lcom/dspread/xpos/x0;

    invoke-static {v1}, Lcom/dspread/xpos/x0;->a(Lcom/dspread/xpos/x0;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/dspread/xpos/x0$a;->b:Lcom/dspread/xpos/x0;

    invoke-static {v1}, Lcom/dspread/xpos/x0;->b(Lcom/dspread/xpos/x0;)Lcom/dspread/xpos/A01Kernel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dspread/xpos/A01Kernel;->java_mobile_pull_audio_data()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    array-length v2, v1

    if-lez v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "play audio len = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/dspread/xpos/x0$a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    .line 8
    iget-object v2, p0, Lcom/dspread/xpos/x0$a;->a:Landroid/media/AudioTrack;

    array-length v3, v1

    invoke-virtual {v2, v1, v0, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v2

    .line 9
    array-length v1, v1

    if-eq v2, v1, :cond_1

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VposAudio] audio play error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    :cond_1
    const-wide/16 v1, 0x64

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 13
    iget-object v1, p0, Lcom/dspread/xpos/x0$a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/dspread/xpos/x0$a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 22
    const-string v1, "VposAudio: PlayAudioThread worker stopped"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 25
    const-string v1, "VposAudio: PlayAudioThread Exception"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/dspread/xpos/x0$a;->b:Lcom/dspread/xpos/x0;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/dspread/xpos/x0;->b(Lcom/dspread/xpos/x0;Z)Z

    .line 28
    iget-object v1, p0, Lcom/dspread/xpos/x0$a;->b:Lcom/dspread/xpos/x0;

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 31
    iget-object v1, p0, Lcom/dspread/xpos/x0$a;->b:Lcom/dspread/xpos/x0;

    invoke-static {v1, v0}, Lcom/dspread/xpos/x0;->c(Lcom/dspread/xpos/x0;Z)Z

    .line 32
    iget-object v1, p0, Lcom/dspread/xpos/x0$a;->b:Lcom/dspread/xpos/x0;

    invoke-virtual {v1, v0}, Lcom/dspread/xpos/Vpos;->o(Z)V

    :goto_1
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/dspread/xpos/x0$a;->a:Landroid/media/AudioTrack;

    return-void
.end method
