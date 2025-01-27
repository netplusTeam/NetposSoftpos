.class public Lcom/visa/vac/tc/session/VisaTimerTask;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visa/vac/tc/session/VisaTimerTask$TimeoutCallBack;
    }
.end annotation


# static fields
.field private static $$a:I

.field private static getInstance:I


# instance fields
.field private BuildConfig:Ljava/text/DateFormat;

.field private getTerminalData:Lcom/visa/vac/tc/session/VisaTimerTask$TimeoutCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/session/VisaTimerTask;->getInstance:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/session/VisaTimerTask;->$$a:I

    return-void
.end method

.method public constructor <init>(JJLcom/visa/vac/tc/session/VisaTimerTask$TimeoutCallBack;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 15
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "MMM-dd-yyyy HH:mm:ss"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/visa/vac/tc/session/VisaTimerTask;->BuildConfig:Ljava/text/DateFormat;

    .line 19
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/visa/vac/tc/session/VisaTimerTask;->getTerminalData:Lcom/visa/vac/tc/session/VisaTimerTask$TimeoutCallBack;

    .line 21
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 30
    sget v0, Lcom/visa/vac/tc/session/VisaTimerTask;->$$a:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/session/VisaTimerTask;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/session/VisaTimerTask;->getTerminalData:Lcom/visa/vac/tc/session/VisaTimerTask$TimeoutCallBack;

    invoke-interface {v0}, Lcom/visa/vac/tc/session/VisaTimerTask$TimeoutCallBack;->onFinish()V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/session/VisaTimerTask;->getTerminalData:Lcom/visa/vac/tc/session/VisaTimerTask$TimeoutCallBack;

    invoke-interface {v0}, Lcom/visa/vac/tc/session/VisaTimerTask$TimeoutCallBack;->onFinish()V

    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onTick(J)V
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/visa/vac/tc/session/VisaTimerTask;->BuildConfig:Ljava/text/DateFormat;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    sget p1, Lcom/visa/vac/tc/session/VisaTimerTask;->getInstance:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/session/VisaTimerTask;->$$a:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
