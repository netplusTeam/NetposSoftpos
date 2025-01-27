.class public abstract Lcom/visa/vac/tc/emvconverter/EmvReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visa/vac/tc/emvconverter/EmvReader$EmvReaderListener;
    }
.end annotation


# static fields
.field private static ContactlessConfiguration:I

.field private static getTerminalData:I


# instance fields
.field protected emvReaderListener:Lcom/visa/vac/tc/emvconverter/EmvReader$EmvReaderListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/EmvReader;->ContactlessConfiguration:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/EmvReader;->getTerminalData:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActiveInterface()I
.end method

.method public abstract getInterfaceType()I
.end method

.method public abstract isCardPresent()Z
.end method

.method public abstract sendAndReceive([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract sendCancel()V
.end method

.method public setEmvReaderListener(Lcom/visa/vac/tc/emvconverter/EmvReader$EmvReaderListener;)V
    .locals 2

    .line 72
    sget v0, Lcom/visa/vac/tc/emvconverter/EmvReader;->getTerminalData:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/EmvReader;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/EmvReader;->emvReaderListener:Lcom/visa/vac/tc/emvconverter/EmvReader$EmvReaderListener;

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x1d

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract start()Z
.end method

.method public abstract stop()V
.end method

.method public abstract updateActivity(Landroid/app/Activity;)V
.end method
