.class public Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ContactlessConfiguration:I

.field private static getTerminalData:I


# instance fields
.field CDIL:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "emv.ngk.cvm.CDIL",
            "emv.ngk.iam.CDIL",
            "emv.ngk.pas.CDIL",
            "emv.ngk.prd.CDIL",
            "emv.ngk.sm.CDIL",
            "emv.ngk.tm.CDIL",
            "emv.ngk.trm.CDIL"
        }
        value = "CDIL"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field HeaderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field KDIL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private UnprotectedALPayloadContainer:Lcom/google/gson/JsonObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->getTerminalData:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->ContactlessConfiguration:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    const-string v1, "ALDIL"

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v1, "ALPayload"

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->setHeaderList(Ljava/util/ArrayList;)V

    .line 36
    const-string v0, "KDIL"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->setKDIL(Ljava/lang/Object;)V

    .line 38
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;

    invoke-direct {v0}, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;-><init>()V

    .line 40
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v3, "\\"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v3, "\"{"

    const-string v5, "{"

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v3, "}\""

    const-string v5, "}"

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v3, "\"\\"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->setUnprotectedALPayloadContainer(Lcom/google/gson/JsonObject;)V

    .line 47
    const-string v0, "CDIL"

    invoke-static {v0, v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getCDIL()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->CDIL:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch
.end method

.method public getHeaderList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->HeaderList:Ljava/util/ArrayList;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->HeaderList:Ljava/util/ArrayList;

    goto :goto_2

    :goto_1
    const/16 v3, 0x18

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_3

    :cond_1
    const/16 v0, 0x5a

    :goto_3
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return-object v1

    :goto_4
    const/16 v0, 0xa

    :try_start_1
    div-int/2addr v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_1
    .end packed-switch
.end method

.method public getKDIL()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->getTerminalData:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->KDIL:Ljava/util/ArrayList;

    return-object v0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getUnprotectedALPayloadContainer()Lcom/google/gson/JsonObject;
    .locals 2

    .line 80
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->getTerminalData:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->UnprotectedALPayloadContainer:Lcom/google/gson/JsonObject;

    return-object v0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setCDIL(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->CDIL:Ljava/util/ArrayList;

    packed-switch v0, :pswitch_data_0

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
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch
.end method

.method public setHeaderList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->HeaderList:Ljava/util/ArrayList;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x40

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setKDIL(Ljava/lang/Object;)V
    .locals 4

    .line 75
    nop

    .line 73
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 72
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 73
    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 75
    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->KDIL:Ljava/util/ArrayList;

    return-void

    .line 73
    :goto_1
    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->KDIL:Ljava/util/ArrayList;

    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 75
    :pswitch_1
    return-void

    .line 73
    :goto_3
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setUnprotectedALPayloadContainer(Lcom/google/gson/JsonObject;)V
    .locals 3

    .line 85
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->UnprotectedALPayloadContainer:Lcom/google/gson/JsonObject;

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/ALMessageCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 p1, 0x28

    goto :goto_1

    :cond_1
    const/16 p1, 0xc

    :goto_1
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 p1, 0x3a

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
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
    .packed-switch 0x28
        :pswitch_1
    .end packed-switch
.end method
