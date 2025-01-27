.class public Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static $$a:I

.field private static BuildConfig:I


# instance fields
.field DataEncoding:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.card.DataEncoding"
    .end annotation
.end field

.field InteropVersionList:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.card.InteropVersionList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field RRPCardMaxTime:Ljava/lang/Object;

.field SCAlgorithmSuiteList:Ljava/lang/Object;

.field SignallingRequirementList:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.card.SignallingRequirementList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field SvID:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.card.SvID"
    .end annotation
.end field

.field UNL1:Ljava/lang/Object;

.field UNc:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 17

    .line 33
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v1, "emv.mod.cal.CALDIL"

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    const-string v2, "\n\n\nCALDILS\n\n\n"

    invoke-static {v2}, Lcom/visa/vac/tc/emvconverter/CAL;->Logit(Ljava/lang/String;)V

    .line 39
    if-eqz v1, :cond_1

    .line 40
    const-string v2, "["

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 41
    const-string v2, "]"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 42
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 44
    array-length v4, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v2, v6

    .line 45
    invoke-static {v7}, Lcom/visa/vac/tc/emvconverter/CAL;->Logit(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v10

    const-string v11, "emv.card.DataEncoding"

    const-string v12, "emv.card.SignallingRequirementList"

    const-string v13, "emv.card.SCAlgorithmSuiteList"

    const-string v14, "emv.card.RRPCardMaxTime"

    const-string v15, "emv.card.UNL1"

    const-string v5, "emv.card.SvID"

    const-string v9, "emv.card.UNc"

    move-object/from16 v16, v2

    const-string v2, "emv.card.InteropVersionList"

    sparse-switch v10, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :sswitch_1
    invoke-virtual {v8, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    goto :goto_2

    :sswitch_2
    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    goto :goto_2

    :sswitch_3
    invoke-virtual {v8, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x6

    goto :goto_2

    :sswitch_4
    invoke-virtual {v8, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    goto :goto_2

    :sswitch_5
    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    goto :goto_2

    :sswitch_6
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x7

    goto :goto_2

    :sswitch_7
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    goto :goto_2

    :goto_1
    const/4 v8, -0x1

    :goto_2
    packed-switch v8, :pswitch_data_0

    goto :goto_3

    .line 72
    :pswitch_0
    invoke-static {v9}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->setUNc(Ljava/lang/Object;)V

    goto :goto_3

    .line 69
    :pswitch_1
    invoke-static {v14}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->setRRPCardMaxTime(Ljava/lang/Object;)V

    .line 70
    goto :goto_3

    .line 65
    :pswitch_2
    nop

    .line 66
    invoke-static {v13}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 65
    invoke-virtual {v0, v2}, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->setSCAlgorithmSuiteList(Ljava/lang/Object;)V

    .line 67
    goto :goto_3

    .line 62
    :pswitch_3
    invoke-static {v15}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->setUNL1(Ljava/lang/Object;)V

    .line 63
    goto :goto_3

    .line 58
    :pswitch_4
    nop

    .line 59
    invoke-static {v12}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->setSignallingRequirementList(Ljava/lang/Object;)V

    .line 60
    goto :goto_3

    .line 55
    :pswitch_5
    invoke-static {v2}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->setInteropVersionList(Ljava/lang/Object;)V

    .line 56
    goto :goto_3

    .line 52
    :pswitch_6
    invoke-static {v11}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->setDataEncoding(Ljava/lang/Object;)V

    .line 53
    goto :goto_3

    .line 49
    :pswitch_7
    invoke-static {v5}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->setSvID(Ljava/lang/Object;)V

    .line 50
    nop

    .line 75
    :goto_3
    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 44
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 84
    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x631f33c9 -> :sswitch_7
        -0x53f2e9d4 -> :sswitch_6
        -0x2a6aa624 -> :sswitch_5
        -0x2a6a5344 -> :sswitch_4
        0xa7b5a6f -> :sswitch_3
        0xff72975 -> :sswitch_2
        0x2ce6f4a5 -> :sswitch_1
        0x39c0883b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDataEncoding()Ljava/lang/Object;
    .locals 3

    .line 95
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->DataEncoding:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->DataEncoding:Ljava/lang/Object;

    goto :goto_2

    :goto_1
    const/16 v2, 0x35

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getInteropVersionList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x5b

    goto :goto_0

    :cond_0
    const/16 v0, 0x2b

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->InteropVersionList:Ljava/util/ArrayList;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->InteropVersionList:Ljava/util/ArrayList;

    const/16 v1, 0x5e

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
    .end packed-switch
.end method

.method public getRRPCardMaxTime()Ljava/lang/Object;
    .locals 3

    .line 131
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->RRPCardMaxTime:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->RRPCardMaxTime:Ljava/lang/Object;

    goto :goto_2

    :goto_1
    const/16 v2, 0xa

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getSCAlgorithmSuiteList()Ljava/lang/Object;
    .locals 3

    .line 123
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    add-int/lit8 v1, v0, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->SCAlgorithmSuiteList:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x52

    goto :goto_0

    :cond_1
    const/16 v0, 0x2d

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public getSignallingRequirementList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    add-int/lit8 v1, v0, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->SignallingRequirementList:Ljava/util/ArrayList;

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object v1

    :goto_2
    const/16 v0, 0x46

    :try_start_1
    div-int/2addr v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getSvID()Ljava/lang/Object;
    .locals 3

    .line 87
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->SvID:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x41

    goto :goto_0

    :cond_1
    const/16 v1, 0x11

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 v1, 0x4b

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch
.end method

.method public getUNL1()Ljava/lang/Object;
    .locals 3

    .line 115
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    add-int/lit8 v1, v0, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->UNL1:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getUNc()Ljava/lang/Object;
    .locals 3

    .line 156
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->UNc:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setDataEncoding(Ljava/lang/Object;)V
    .locals 2

    .line 99
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x13

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->DataEncoding:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public setInteropVersionList(Ljava/lang/Object;)V
    .locals 3

    .line 151
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 143
    const/16 v0, 0x4f

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/16 v0, 0x53

    goto :goto_0

    :cond_0
    const/16 v0, 0x2a

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 151
    :catchall_0
    move-exception p1

    throw p1

    .line 143
    :cond_1
    if-eqz p1, :cond_2

    :goto_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 146
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->InteropVersionList:Ljava/util/ArrayList;

    return-void

    :cond_2
    :pswitch_0
    if-eqz p1, :cond_3

    .line 143
    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    nop

    :goto_2
    packed-switch v2, :pswitch_data_1

    :goto_3
    goto :goto_5

    :pswitch_1
    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 146
    :cond_4
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 143
    const/16 v0, 0x5c

    goto :goto_4

    :cond_5
    const/16 v0, 0x1e

    :goto_4
    packed-switch v0, :pswitch_data_2

    goto :goto_3

    .line 148
    :pswitch_2
    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->InteropVersionList:Ljava/util/ArrayList;

    .line 151
    return-void

    .line 150
    :goto_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->InteropVersionList:Ljava/util/ArrayList;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5c
        :pswitch_2
    .end packed-switch
.end method

.method public setRRPCardMaxTime(Ljava/lang/Object;)V
    .locals 3

    .line 135
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    add-int/lit8 v1, v0, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->RRPCardMaxTime:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setSCAlgorithmSuiteList(Ljava/lang/Object;)V
    .locals 2

    .line 127
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x62

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->SCAlgorithmSuiteList:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch
.end method

.method public setSignallingRequirementList(Ljava/lang/Object;)V
    .locals 5

    .line 111
    nop

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 111
    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    sget v3, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    add-int/lit8 v3, v3, 0x73

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    goto :goto_2

    :goto_1
    :pswitch_0
    goto :goto_4

    .line 108
    :cond_1
    :goto_2
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 111
    goto :goto_3

    :cond_2
    move v1, v2

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v4, v4, 0xd

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 109
    :cond_3
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :goto_4
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->SignallingRequirementList:Ljava/util/ArrayList;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public setSvID(Ljava/lang/Object;)V
    .locals 2

    .line 91
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->SvID:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setUNL1(Ljava/lang/Object;)V
    .locals 3

    .line 119
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    add-int/lit8 v1, v0, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->UNL1:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    const/4 p1, 0x0

    if-nez v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x34

    :try_start_0
    div-int/2addr v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setUNc(Ljava/lang/Object;)V
    .locals 2

    .line 160
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->UNc:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method
