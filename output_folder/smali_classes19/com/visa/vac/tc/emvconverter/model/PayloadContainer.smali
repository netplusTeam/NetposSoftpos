.class public Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static $$a:I

.field private static BuildConfig:I


# instance fields
.field alMessageCDO:Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "emv.tx.dcm.ALMessageCDO"
        }
        value = "emv.card.ALMessageCDO"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;->$$a:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;->BuildConfig:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;

    invoke-direct {v0}, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;-><init>()V

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;->setALMessageCDO(Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getALMessageCDO()Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;
    .locals 3

    .line 20
    sget v0, Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;->$$a:I

    add-int/lit8 v1, v0, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;->alMessageCDO:Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public setALMessageCDO(Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;)V
    .locals 5

    .line 24
    sget v0, Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;->alMessageCDO:Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
