.class public Lcom/dspread/xpos/x0;
.super Lcom/dspread/xpos/Vpos;
.source "VposAudio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/x0$a;,
        Lcom/dspread/xpos/x0$b;
    }
.end annotation


# static fields
.field private static i0:Lcom/dspread/xpos/x0; = null

.field private static final j0:Z = true


# instance fields
.field private P:I

.field private Q:Lcom/dspread/xpos/A01Kernel;

.field private R:Z

.field private S:Landroid/media/AudioTrack;

.field private T:Ljava/lang/Thread;

.field private U:Ljava/lang/Thread;

.field private V:Landroid/media/AudioRecord;

.field private W:I

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private a0:Z

.field private final b0:I

.field private final c0:I

.field private final d0:I

.field private e0:I

.field private f0:Landroid/media/audiofx/BassBoost;

.field private g0:[B

.field private h0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/Vpos;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    .line 3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dspread/xpos/x0;->R:Z

    .line 6
    iput-object v0, p0, Lcom/dspread/xpos/x0;->T:Ljava/lang/Thread;

    .line 7
    iput-object v0, p0, Lcom/dspread/xpos/x0;->U:Ljava/lang/Thread;

    .line 10
    iput-boolean v1, p0, Lcom/dspread/xpos/x0;->X:Z

    .line 11
    iput-boolean v1, p0, Lcom/dspread/xpos/x0;->Y:Z

    .line 12
    iput-boolean v1, p0, Lcom/dspread/xpos/x0;->Z:Z

    .line 13
    iput-boolean v1, p0, Lcom/dspread/xpos/x0;->a0:Z

    .line 15
    const v2, 0xac44

    iput v2, p0, Lcom/dspread/xpos/x0;->b0:I

    .line 16
    const/4 v2, 0x2

    iput v2, p0, Lcom/dspread/xpos/x0;->c0:I

    .line 17
    iput v2, p0, Lcom/dspread/xpos/x0;->d0:I

    .line 19
    iput v2, p0, Lcom/dspread/xpos/x0;->e0:I

    .line 20
    iput-object v0, p0, Lcom/dspread/xpos/x0;->f0:Landroid/media/audiofx/BassBoost;

    .line 25
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/dspread/xpos/x0;->g0:[B

    .line 221
    iput-boolean v1, p0, Lcom/dspread/xpos/x0;->h0:Z

    .line 222
    invoke-static {}, Lcom/dspread/xpos/A01Kernel;->a()Lcom/dspread/xpos/A01Kernel;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/x0;->a0:Z

    return-void
.end method

.method private F()Z
    .locals 5

    .line 1
    const-string v0, "VposAudio: config>>>>>>>>>>>>>>>>>>>s"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/x0;->Z:Z

    .line 3
    iput-boolean v0, p0, Lcom/dspread/xpos/x0;->h0:Z

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    invoke-virtual {v1}, Lcom/dspread/xpos/A01Kernel;->java_mobile_init()V

    .line 6
    iget-object v1, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    iget-object v2, p0, Lcom/dspread/xpos/x0;->g0:[B

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/A01Kernel;->java_mobile_para_cfg([B)V

    const/4 v1, 0x3

    :cond_0
    :goto_0
    move v2, v0

    :goto_1
    if-eqz v1, :cond_4

    .line 10
    iget-boolean v3, p0, Lcom/dspread/xpos/x0;->h0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    const-wide/16 v3, 0x64

    .line 14
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v3

    .line 18
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    invoke-virtual {v3}, Lcom/dspread/xpos/A01Kernel;->java_mobile_get_string()[B

    .line 19
    iget-object v3, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    invoke-virtual {v3}, Lcom/dspread/xpos/A01Kernel;->java_mobile_pull_status()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VposAudio: config state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 22
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dspread/xpos/x0;->Z:Z

    return v1

    :cond_2
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0xa

    if-ne v2, v4, :cond_3

    .line 27
    const-string v2, "VposAudio: config error time out"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    if-eqz v1, :cond_0

    .line 31
    const-string v2, "VposAudio: config java_mobile_continue_send_data "

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 32
    iget-object v2, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    iget-object v3, p0, Lcom/dspread/xpos/x0;->g0:[B

    invoke-virtual {v2, v3}, Lcom/dspread/xpos/A01Kernel;->java_mobile_para_cfg([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 22
    :cond_3
    move v2, v3

    goto :goto_1

    .line 32
    :catch_1
    move-exception v1

    :cond_4
    return v0
.end method

.method public static G()Lcom/dspread/xpos/x0;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/x0;->i0:Lcom/dspread/xpos/x0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/x0;

    invoke-direct {v0}, Lcom/dspread/xpos/x0;-><init>()V

    sput-object v0, Lcom/dspread/xpos/x0;->i0:Lcom/dspread/xpos/x0;

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/x0;->i0:Lcom/dspread/xpos/x0;

    return-object v0
.end method

.method private H()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/dspread/xpos/u;->b()Ljava/util/Hashtable;

    move-result-object v0

    .line 2
    const-string v1, "PLAY_BUF_SIZE_COO"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/dspread/xpos/x0;->e0:I

    .line 3
    const-string v1, "audio_decode_config_index"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    const-string/jumbo v2, "positive"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 5
    const-string v3, "negatvie"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6
    const-string v4, "audioControl"

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/dspread/xpos/Vpos;->r:Z

    .line 7
    const-string/jumbo v4, "paras"

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/dspread/xpos/x0;->g0:[B

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLAY_BUF_SIZE_COO="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/dspread/xpos/x0;->e0:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", positive="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", negatvie="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", audioControl="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/dspread/xpos/Vpos;->r:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "paras["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/x0;->g0:[B

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    invoke-virtual {v0, v2, v3}, Lcom/dspread/xpos/A01Kernel;->java_set_jump_threshold_positive(II)V

    return-void
.end method

.method private J()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/x0;->Y:Z

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/x0;->T:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/x0;->T:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 6
    iput-object v1, p0, Lcom/dspread/xpos/x0;->T:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/x0;->f0:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->release()V

    :cond_1
    nop

    .line 14
    iput-object v1, p0, Lcom/dspread/xpos/x0;->S:Landroid/media/AudioTrack;

    return-void
.end method

.method private K()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/x0;->X:Z

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/x0;->U:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/x0;->U:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 7
    iput-object v1, p0, Lcom/dspread/xpos/x0;->U:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 13
    iput-object v1, p0, Lcom/dspread/xpos/x0;->V:Landroid/media/AudioRecord;

    return-void
.end method

.method private a(IIIF)V
    .locals 7

    .line 3
    invoke-static {p1, p2, p3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p4

    iput p4, p0, Lcom/dspread/xpos/x0;->P:I

    .line 5
    new-instance p4, Landroid/media/AudioTrack;

    iget v0, p0, Lcom/dspread/xpos/x0;->P:I

    iget v1, p0, Lcom/dspread/xpos/x0;->e0:I

    mul-int v5, v0, v1

    const/4 v1, 0x3

    const/4 v6, 0x1

    move-object v0, p4

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object p4, p0, Lcom/dspread/xpos/x0;->S:Landroid/media/AudioTrack;

    .line 8
    iget-boolean p1, p0, Lcom/dspread/xpos/Vpos;->r:Z

    if-eqz p1, :cond_0

    .line 9
    const-string p1, "----------------audio control is working now!----------------"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 10
    new-instance p1, Landroid/media/audiofx/BassBoost;

    iget-object p2, p0, Lcom/dspread/xpos/x0;->S:Landroid/media/AudioTrack;

    invoke-virtual {p2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p2

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    iput-object p1, p0, Lcom/dspread/xpos/x0;->f0:Landroid/media/audiofx/BassBoost;

    .line 11
    invoke-virtual {p1, p3}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    .line 12
    iget-object p1, p0, Lcom/dspread/xpos/x0;->f0:Landroid/media/audiofx/BassBoost;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/dspread/xpos/x0$a;

    iget-object p3, p0, Lcom/dspread/xpos/x0;->S:Landroid/media/AudioTrack;

    invoke-direct {p2, p0, p3}, Lcom/dspread/xpos/x0$a;-><init>(Lcom/dspread/xpos/x0;Landroid/media/AudioTrack;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/dspread/xpos/x0;->T:Ljava/lang/Thread;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/x0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dspread/xpos/x0;->Y:Z

    return p0
.end method

.method static synthetic a(Lcom/dspread/xpos/x0;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/dspread/xpos/x0;->Y:Z

    return p1
.end method

.method static synthetic b(Lcom/dspread/xpos/x0;)Lcom/dspread/xpos/A01Kernel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    return-object p0
.end method

.method private b(III)V
    .locals 8

    .line 3
    invoke-static {p1, p2, p3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/dspread/xpos/x0;->W:I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRecorder recBufSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dspread/xpos/x0;->W:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 7
    iget v0, p0, Lcom/dspread/xpos/x0;->W:I

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_0

    .line 8
    iput v1, p0, Lcom/dspread/xpos/x0;->W:I

    .line 10
    :cond_0
    new-instance v0, Landroid/media/AudioRecord;

    iget v7, p0, Lcom/dspread/xpos/x0;->W:I

    const/4 v3, 0x1

    move-object v2, v0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/dspread/xpos/x0;->V:Landroid/media/AudioRecord;

    .line 13
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/dspread/xpos/x0$b;

    iget-object p3, p0, Lcom/dspread/xpos/x0;->V:Landroid/media/AudioRecord;

    iget v0, p0, Lcom/dspread/xpos/x0;->W:I

    mul-int/lit8 v0, v0, 0xa

    invoke-direct {p2, p0, p3, v0}, Lcom/dspread/xpos/x0$b;-><init>(Lcom/dspread/xpos/x0;Landroid/media/AudioRecord;I)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/dspread/xpos/x0;->U:Ljava/lang/Thread;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lcom/dspread/xpos/x0;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/dspread/xpos/x0;->h0:Z

    return p1
.end method

.method static synthetic c(Lcom/dspread/xpos/x0;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/dspread/xpos/x0;->X:Z

    return p0
.end method

.method static synthetic c(Lcom/dspread/xpos/x0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/x0;->R:Z

    return p1
.end method

.method static synthetic d(Lcom/dspread/xpos/x0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/x0;->X:Z

    return p1
.end method


# virtual methods
.method public A()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/x0;->H()V

    .line 4
    iget-boolean v0, p0, Lcom/dspread/xpos/x0;->R:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_mobile_init()V

    .line 8
    iput-boolean v1, p0, Lcom/dspread/xpos/x0;->R:Z

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/x0;->Z:Z

    .line 10
    iput-boolean v1, p0, Lcom/dspread/xpos/x0;->a0:Z

    .line 11
    const-string v2, "VposAudio: open"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const v2, 0x3f666666    # 0.9f

    .line 13
    const v3, 0xac44

    const/4 v4, 0x2

    :try_start_0
    invoke-direct {p0, v3, v4, v4, v2}, Lcom/dspread/xpos/x0;->a(IIIF)V

    .line 14
    invoke-direct {p0, v3, v4, v4}, Lcom/dspread/xpos/x0;->b(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    .line 18
    const-string v1, "VposAudio: open Exception"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v0
.end method

.method public B()[B
    .locals 8

    .line 1
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/dspread/xpos/x0;->Z:Z

    if-nez v1, :cond_0

    .line 2
    const-string v1, "VposAudio: write error"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    new-array v0, v0, [B

    return-object v0

    :cond_0
    nop

    .line 6
    const/4 v1, 0x3

    new-array v2, v1, [B

    const/16 v3, 0x800

    .line 10
    new-array v3, v3, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v4, 0x64

    .line 14
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v4

    .line 18
    :goto_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VposAudio: read >>>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 19
    iget-object v4, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    invoke-virtual {v4}, Lcom/dspread/xpos/A01Kernel;->java_mobile_init_receive()V

    move v4, v0

    move v5, v4

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 23
    const-string v1, "VposAudio: read is need Quit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    :cond_2
    const-wide/16 v6, 0x1f4

    .line 28
    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception v6

    .line 33
    :goto_1
    :try_start_4
    iget-object v6, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    invoke-virtual {v6}, Lcom/dspread/xpos/A01Kernel;->java_mobile_get_string()[B

    move-result-object v6

    if-eqz v6, :cond_3

    .line 34
    array-length v7, v6

    if-lez v7, :cond_3

    .line 37
    array-length v7, v6

    invoke-static {v6, v0, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    array-length v6, v6

    add-int/2addr v4, v6

    goto :goto_2

    .line 42
    :cond_3
    iget-object v6, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    invoke-virtual {v6}, Lcom/dspread/xpos/A01Kernel;->java_mobile_conntinue_receive()V

    :goto_2
    if-le v4, v1, :cond_5

    .line 49
    aget-byte v6, v3, v0

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_5

    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backlen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 51
    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x2

    .line 52
    aget-byte v5, v2, v5

    if-gez v5, :cond_4

    add-int/lit16 v5, v5, 0x100

    .line 56
    :cond_4
    const/4 v6, 0x1

    aget-byte v6, v2, v6

    mul-int/lit16 v6, v6, 0x100

    add-int/2addr v5, v6

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "len = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v1

    :cond_5
    if-eqz v5, :cond_1

    if-lt v4, v5, :cond_1

    .line 63
    new-array v1, v5, [B

    .line 64
    invoke-static {v3, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v1

    :catch_2
    move-exception v1

    .line 73
    const-string v1, "VposAudio: read Exception"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :goto_3
    nop

    .line 77
    new-array v0, v0, [B

    return-object v0
.end method

.method protected I()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    sput-object v0, Lcom/dspread/xpos/x0;->i0:Lcom/dspread/xpos/x0;

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    .line 2
    const-string v0, "VposAudio: close"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/x0;->h0:Z

    .line 4
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 5
    invoke-direct {p0}, Lcom/dspread/xpos/x0;->K()V

    .line 6
    invoke-direct {p0}, Lcom/dspread/xpos/x0;->J()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/x0;->R:Z

    .line 8
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->o(Z)V

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public f([B)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->o(Z)V

    .line 3
    const-string v1, "VposAudio: write>>>>>>>>>>>>>>>>"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/dspread/xpos/x0;->a0:Z

    if-eqz v1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/dspread/xpos/x0;->F()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    iput-boolean v0, p0, Lcom/dspread/xpos/x0;->Z:Z

    return-void

    :cond_0
    nop

    .line 12
    iput-boolean v0, p0, Lcom/dspread/xpos/x0;->a0:Z

    :cond_1
    nop

    .line 18
    iput-boolean v0, p0, Lcom/dspread/xpos/x0;->Z:Z

    .line 19
    iput-boolean v0, p0, Lcom/dspread/xpos/x0;->h0:Z

    .line 20
    iget-object v1, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    invoke-virtual {v1}, Lcom/dspread/xpos/A01Kernel;->java_mobile_init()V

    .line 21
    iget-object v1, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    invoke-virtual {v1, p1}, Lcom/dspread/xpos/A01Kernel;->java_mobile_send_data([B)V

    const/4 p1, 0x6

    :cond_2
    :goto_0
    move v1, v0

    :goto_1
    if-eqz p1, :cond_6

    .line 26
    iget-boolean v2, p0, Lcom/dspread/xpos/x0;->h0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_3

    return-void

    :cond_3
    const-wide/16 v2, 0x64

    .line 30
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 34
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    invoke-virtual {v2}, Lcom/dspread/xpos/A01Kernel;->java_mobile_get_string()[B

    .line 35
    iget-object v2, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    invoke-virtual {v2}, Lcom/dspread/xpos/A01Kernel;->java_mobile_pull_status()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VposAudio: write state = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 38
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dspread/xpos/x0;->Z:Z

    .line 39
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Vpos;->o(Z)V

    return-void

    :cond_4
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_5

    .line 51
    const-string v1, "VposAudio: write error time out"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_2

    .line 55
    const-string v1, "VposAudio: write java_mobile_continue_send_data "

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/dspread/xpos/x0;->Q:Lcom/dspread/xpos/A01Kernel;

    invoke-virtual {v1}, Lcom/dspread/xpos/A01Kernel;->java_mobile_continue_send_data()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 39
    :cond_5
    move v1, v2

    goto :goto_1

    .line 56
    :catch_1
    move-exception p1

    .line 63
    const-string p1, "VposAudio: write Exception"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :cond_6
    nop

    .line 65
    iput-boolean v0, p0, Lcom/dspread/xpos/x0;->Z:Z

    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/x0;->R:Z

    return v0
.end method
