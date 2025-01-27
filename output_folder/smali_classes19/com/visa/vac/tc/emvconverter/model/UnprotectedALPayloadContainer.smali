.class public Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static $$a:I

.field private static getInstance:I


# instance fields
.field private upl:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->getInstance:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->$$a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-direct {p0}, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->setUnprotectedALPayloadContainer()V

    .line 27
    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 135
    sget v0, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->getInstance:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->upl:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget p1, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->getInstance:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->$$a:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setUnprotectedALPayloadContainer()V
    .locals 16

    .line 130
    move-object/from16 v1, p0

    const-string v0, "LV.SCRIPT_APPLIED_ERROR"

    .line 31
    :try_start_0
    const-string v2, "CDIL"

    invoke-static {v2}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 32
    if-eqz v2, :cond_13

    instance-of v3, v2, Ljava/util/ArrayList;

    if-eqz v3, :cond_13

    .line 34
    check-cast v2, Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-lez v3, :cond_13

    .line 36
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, v1, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->upl:Lorg/json/JSONObject;

    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "emv.card.IssuerScriptResponseList"

    const-string v8, "emv.ngse.SvIDList"

    const-string v9, "emv.card.FirstGenDataCDO"

    const-string v10, "InterfaceIDList"

    const-string v11, "emv.card.DuplicateList"

    const-string v12, "emv.card.AuthCDO"

    const/4 v13, 0x2

    const/4 v15, 0x0

    sparse-switch v6, :sswitch_data_0

    :cond_1
    goto :goto_3

    :sswitch_0
    :try_start_1
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x5

    goto :goto_3

    :sswitch_1
    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    move v4, v15

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 39
    nop

    .line 130
    const/4 v5, 0x1

    goto :goto_3

    .line 39
    :sswitch_2
    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v15

    goto :goto_3

    :sswitch_3
    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x6

    .line 130
    goto :goto_3

    .line 39
    :sswitch_4
    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_1

    .line 91
    sget v4, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->$$a:I

    add-int/lit8 v4, v4, 0x9

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->getInstance:I

    rem-int/2addr v4, v13

    if-eqz v4, :cond_3

    .line 39
    :cond_3
    const/4 v5, 0x3

    goto :goto_3

    :sswitch_5
    :try_start_2
    const-string v6, "emv.card.FinalFirstGenDataCDO"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 91
    const/16 v4, 0xf

    goto :goto_2

    :cond_4
    const/16 v4, 0x33

    :goto_2
    packed-switch v4, :pswitch_data_1

    .line 39
    move v5, v13

    goto :goto_3

    :sswitch_6
    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v4, :cond_1

    const/4 v5, 0x4

    :goto_3
    :pswitch_0
    const-string v4, "\"}"

    const-string v6, "{\"qualifier\":\""

    const/4 v14, 0x0

    packed-switch v5, :pswitch_data_2

    .line 111
    :try_start_3
    invoke-static {v3}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_9

    .line 103
    :pswitch_1
    invoke-static {v10}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 104
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 105
    if-eqz v3, :cond_6

    instance-of v5, v3, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v5, :cond_6

    .line 91
    sget v5, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->$$a:I

    add-int/lit8 v5, v5, 0x73

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->getInstance:I

    rem-int/2addr v5, v13

    if-eqz v5, :cond_5

    .line 106
    :cond_5
    :try_start_4
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 108
    :cond_6
    invoke-direct {v1, v10, v4}, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 85
    :pswitch_2
    invoke-static {v3}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 86
    instance-of v5, v4, Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 87
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 88
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v8, Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 89
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 90
    check-cast v6, Ljava/util/ArrayList;

    .line 91
    move v9, v15

    :goto_5
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-ge v9, v10, :cond_8

    .line 130
    sget v10, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->$$a:I

    add-int/lit8 v10, v10, 0x1b

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->getInstance:I

    rem-int/2addr v10, v13

    if-eqz v10, :cond_7

    .line 92
    :try_start_5
    invoke-virtual {v6, v9}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 91
    add-int/lit8 v9, v9, 0x65

    goto :goto_5

    .line 92
    :cond_7
    invoke-virtual {v6, v9}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 91
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 94
    :cond_8
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 96
    :cond_9
    invoke-direct {v1, v3, v5}, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    invoke-static {v7, v14}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 77
    :pswitch_3
    invoke-static {v11}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 78
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 79
    if-eqz v3, :cond_a

    .line 91
    const/4 v14, 0x1

    goto :goto_6

    :cond_a
    move v14, v15

    :goto_6
    packed-switch v14, :pswitch_data_3

    sget v5, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->getInstance:I

    add-int/lit8 v5, v5, 0x25

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->$$a:I

    rem-int/2addr v5, v13

    if-nez v5, :cond_b

    .line 80
    :cond_b
    :try_start_6
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 82
    :pswitch_4
    invoke-direct {v1, v11, v4}, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 72
    :pswitch_5
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 73
    new-instance v4, Lcom/visa/vac/tc/emvconverter/model/SvIDList;

    invoke-direct {v4}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 74
    invoke-direct {v1, v8, v3}, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 68
    :pswitch_6
    new-instance v4, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;

    invoke-direct {v4}, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;-><init>()V

    .line 69
    invoke-static {v4, v14, v15, v15}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 91
    sget v3, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->$$a:I

    add-int/lit8 v3, v3, 0x3d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->getInstance:I

    rem-int/2addr v3, v13

    if-eqz v3, :cond_c

    .line 130
    :cond_c
    :goto_7
    goto/16 :goto_0

    .line 57
    :pswitch_7
    :try_start_7
    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "True"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/visa/vac/tc/emvconverter/model/JsonQualifier;->getQualifier(Ljava/lang/String;)Lcom/visa/vac/tc/emvconverter/model/JsonQualifier$qualifier;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v9, v3}, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    const-string v3, "False"

    invoke-static {v0, v3}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 61
    :cond_d
    new-instance v3, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;

    invoke-direct {v3}, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;-><init>()V

    .line 62
    nop

    .line 63
    invoke-static {v3, v14, v15, v15}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v3

    .line 62
    invoke-direct {v1, v9, v3}, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 42
    :pswitch_8
    new-instance v3, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;

    invoke-direct {v3}, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;-><init>()V

    .line 43
    iget-object v4, v3, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->ResponseRequirementCDO:Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;

    iget-object v4, v4, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->ReadyForOnlineResponse:Ljava/lang/Object;

    if-nez v4, :cond_e

    .line 91
    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    move v4, v15

    :goto_8
    packed-switch v4, :pswitch_data_4

    .line 43
    iget-object v4, v3, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->Status:Ljava/lang/Object;

    if-nez v4, :cond_f

    iget-object v4, v3, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->CardBlob:Ljava/lang/Object;

    if-nez v4, :cond_f

    .line 47
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 48
    const-string v4, "Status"

    const-string v5, "Undecided"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    invoke-direct {v1, v12, v3}, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 51
    :cond_f
    :pswitch_9
    nop

    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v12, v4, v15}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v3

    .line 51
    invoke-direct {v1, v12, v3}, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 112
    :goto_9
    instance-of v7, v5, Ljava/util/ArrayList;

    if-eqz v7, :cond_11

    .line 113
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 114
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v6, v5

    :goto_a
    if-ge v15, v6, :cond_10

    .line 91
    const/16 v7, 0x36

    goto :goto_b

    :cond_10
    const/16 v7, 0x13

    :goto_b
    packed-switch v7, :pswitch_data_5

    .line 114
    aget-object v7, v5, v15

    goto :goto_c

    .line 117
    :pswitch_a
    invoke-direct {v1, v3, v4}, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 115
    :goto_c
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 114
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 119
    :cond_11
    if-nez v5, :cond_12

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/visa/vac/tc/emvconverter/Utils;->getQualifier(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 122
    :cond_12
    invoke-direct {v1, v3, v5}, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :cond_13
    return-void

    .line 130
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3a8a3915 -> :sswitch_6
        -0x1f2853b4 -> :sswitch_5
        -0x138583c1 -> :sswitch_4
        0x25b9beb2 -> :sswitch_3
        0x37ae5988 -> :sswitch_2
        0x51a2efa6 -> :sswitch_1
        0x761663a1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x13
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 142
    sget v0, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->$$a:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 139
    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->upl:Lorg/json/JSONObject;

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->upl:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    :goto_1
    goto :goto_3

    :goto_2
    const/16 v3, 0x56

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    goto :goto_1

    .line 140
    :goto_3
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    sget v3, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->getInstance:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->$$a:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 139
    move v1, v2

    goto :goto_4

    :cond_1
    nop

    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 142
    return-object v0

    :pswitch_1
    const/16 v1, 0x18

    :try_start_1
    div-int/2addr v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/UnprotectedALPayloadContainer;->upl:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    throw v0

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
