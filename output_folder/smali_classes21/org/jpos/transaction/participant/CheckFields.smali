.class public Lorg/jpos/transaction/participant/CheckFields;
.super Ljava/lang/Object;
.source "CheckFields.java"

# interfaces
.implements Lorg/jpos/transaction/TransactionParticipant;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field private CAPTUREDATE_PATTERN:Ljava/util/regex/Pattern;

.field private LOCAL_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

.field private MID_PATTERN:Ljava/util/regex/Pattern;

.field private ORIGINAL_DATA_ELEMENTS_PATTERN:Ljava/util/regex/Pattern;

.field private PCODE_PATTERN:Ljava/util/regex/Pattern;

.field private TID_PATTERN:Ljava/util/regex/Pattern;

.field private TRANSMISSION_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

.field private allowExtraFields:Z

.field private cfg:Lorg/jpos/core/Configuration;

.field private ignoreCardValidation:Z

.field private request:Ljava/lang/String;

.field private track1Pattern:Ljava/util/regex/Pattern;

.field private track2Pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "^[\\d|\\w]{6}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/CheckFields;->PCODE_PATTERN:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "^[\\w\\s]{1,16}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/CheckFields;->TID_PATTERN:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "^[\\w\\s]{1,15}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/CheckFields;->MID_PATTERN:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, "^\\d{10}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/CheckFields;->TRANSMISSION_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 46
    const-string v0, "^\\d{14}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/CheckFields;->LOCAL_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 47
    const-string v0, "^\\d{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/CheckFields;->CAPTUREDATE_PATTERN:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "^\\d{30,41}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/CheckFields;->ORIGINAL_DATA_ELEMENTS_PATTERN:Ljava/util/regex/Pattern;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/transaction/participant/CheckFields;->ignoreCardValidation:Z

    .line 50
    iput-boolean v0, p0, Lorg/jpos/transaction/participant/CheckFields;->allowExtraFields:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/transaction/participant/CheckFields;->track1Pattern:Ljava/util/regex/Pattern;

    .line 52
    iput-object v0, p0, Lorg/jpos/transaction/participant/CheckFields;->track2Pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private assertFields(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;Ljava/lang/String;ZLjava/util/Set;Lorg/jpos/rc/Result;)V
    .locals 14
    .param p1, "ctx"    # Lorg/jpos/transaction/Context;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "fields"    # Ljava/lang/String;
    .param p4, "mandatory"    # Z
    .param p6, "rc"    # Lorg/jpos/rc/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/transaction/Context;",
            "Lorg/jpos/iso/ISOMsg;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/jpos/rc/Result;",
            ")V"
        }
    .end annotation

    .line 90
    .local p5, "validFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v10, p0

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ", "

    move-object/from16 v11, p3

    invoke-direct {v0, v11, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v0

    .line 91
    .local v12, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 93
    .local v13, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .line 95
    .local v1, "k":Lorg/jpos/transaction/ContextConstants;
    :try_start_0
    invoke-static {v13}, Lorg/jpos/transaction/ContextConstants;->valueOf(Ljava/lang/String;)Lorg/jpos/transaction/ContextConstants;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 96
    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    .line 97
    .end local v1    # "k":Lorg/jpos/transaction/ContextConstants;
    .local v0, "k":Lorg/jpos/transaction/ContextConstants;
    :goto_1
    if-eqz v0, :cond_0

    .line 98
    sget-object v1, Lorg/jpos/transaction/participant/CheckFields$1;->$SwitchMap$org$jpos$transaction$ContextConstants:[I

    invoke-virtual {v0}, Lorg/jpos/transaction/ContextConstants;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 130
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 127
    :pswitch_0
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/jpos/transaction/participant/CheckFields;->putOriginalDataElements(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;ZLjava/util/Set;Lorg/jpos/rc/Result;)V

    .line 128
    goto/16 :goto_2

    .line 124
    :pswitch_1
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/jpos/transaction/participant/CheckFields;->putAmount(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;ZLjava/util/Set;Lorg/jpos/rc/Result;)V

    .line 125
    goto/16 :goto_2

    .line 121
    :pswitch_2
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/jpos/transaction/participant/CheckFields;->putCaptureDate(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;ZLjava/util/Set;Lorg/jpos/rc/Result;)V

    .line 122
    goto/16 :goto_2

    .line 118
    :pswitch_3
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/jpos/transaction/participant/CheckFields;->putPDC(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;ZLjava/util/Set;Lorg/jpos/rc/Result;)V

    .line 119
    goto/16 :goto_2

    .line 115
    :pswitch_4
    sget-object v1, Lorg/jpos/transaction/ContextConstants;->TRANSACTION_TIMESTAMP:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v1}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    iget-object v6, v10, Lorg/jpos/transaction/participant/CheckFields;->LOCAL_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lorg/jpos/transaction/participant/CheckFields;->putTimestamp(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;Ljava/lang/String;ILjava/util/regex/Pattern;ZLjava/util/Set;Lorg/jpos/rc/Result;)V

    .line 116
    goto/16 :goto_2

    .line 112
    :pswitch_5
    sget-object v1, Lorg/jpos/transaction/ContextConstants;->TRANSMISSION_TIMESTAMP:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v1}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    iget-object v6, v10, Lorg/jpos/transaction/participant/CheckFields;->TRANSMISSION_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lorg/jpos/transaction/participant/CheckFields;->putTimestamp(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;Ljava/lang/String;ILjava/util/regex/Pattern;ZLjava/util/Set;Lorg/jpos/rc/Result;)V

    .line 113
    goto :goto_2

    .line 109
    :pswitch_6
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/jpos/transaction/participant/CheckFields;->putMid(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;ZLjava/util/Set;Lorg/jpos/rc/Result;)V

    .line 110
    goto :goto_2

    .line 106
    :pswitch_7
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/jpos/transaction/participant/CheckFields;->putTid(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;ZLjava/util/Set;Lorg/jpos/rc/Result;)V

    .line 107
    goto :goto_2

    .line 103
    :pswitch_8
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/jpos/transaction/participant/CheckFields;->putCard(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;ZLjava/util/Set;Lorg/jpos/rc/Result;)V

    .line 104
    goto :goto_2

    .line 100
    :pswitch_9
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/jpos/transaction/participant/CheckFields;->putPCode(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;ZLjava/util/Set;Lorg/jpos/rc/Result;)V

    .line 133
    :cond_0
    :goto_2
    if-nez v0, :cond_3

    .line 134
    if-eqz p4, :cond_1

    move-object/from16 v1, p2

    invoke-virtual {v1, v13}, Lorg/jpos/iso/ISOMsg;->hasField(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 135
    sget-object v2, Lorg/jpos/rc/CMF;->MISSING_FIELD:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v5, p6

    invoke-virtual {v5, v2, v3, v13, v4}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    move-object/from16 v2, p5

    goto :goto_3

    .line 134
    :cond_1
    move-object/from16 v1, p2

    :cond_2
    move-object/from16 v5, p6

    .line 137
    move-object/from16 v2, p5

    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 133
    :cond_3
    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v5, p6

    .line 139
    .end local v0    # "k":Lorg/jpos/transaction/ContextConstants;
    .end local v13    # "s":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 140
    :cond_4
    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v5, p6

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
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

.method private assertNoExtraFields(Lorg/jpos/iso/ISOMsg;Ljava/util/Set;Lorg/jpos/rc/Result;)V
    .locals 5
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "validFields"    # Ljava/util/Set;
    .param p3, "rc"    # Lorg/jpos/rc/Result;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getMaxField()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 147
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 152
    sget-object v1, Lorg/jpos/rc/CMF;->EXTRA_FIELD:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p3, v1, v2, v3, v4}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    .line 153
    :cond_3
    return-void
.end method

.method private putAmount(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;ZLjava/util/Set;Lorg/jpos/rc/Result;)V
    .locals 8
    .param p1, "ctx"    # Lorg/jpos/transaction/Context;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "mandatory"    # Z
    .param p5, "rc"    # Lorg/jpos/rc/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/transaction/Context;",
            "Lorg/jpos/iso/ISOMsg;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/jpos/rc/Result;",
            ")V"
        }
    .end annotation

    .line 275
    .local p4, "validFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->getComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v0

    .line 276
    .local v0, "o4":Ljava/lang/Object;
    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Lorg/jpos/iso/ISOMsg;->getComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v1

    .line 277
    .local v1, "o5":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 278
    .local v2, "a4":Lorg/jpos/iso/ISOAmount;
    const/4 v3, 0x0

    .line 279
    .local v3, "a5":Lorg/jpos/iso/ISOAmount;
    instance-of v4, v0, Lorg/jpos/iso/ISOAmount;

    if-eqz v4, :cond_0

    .line 280
    move-object v2, v0

    check-cast v2, Lorg/jpos/iso/ISOAmount;

    .line 281
    const-string v4, "4"

    invoke-interface {p4, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_0
    instance-of v4, v1, Lorg/jpos/iso/ISOAmount;

    if-eqz v4, :cond_1

    .line 284
    move-object v3, v1

    check-cast v3, Lorg/jpos/iso/ISOAmount;

    .line 285
    const-string v4, "5"

    invoke-interface {p4, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_1
    if-eqz v3, :cond_2

    .line 288
    sget-object v4, Lorg/jpos/transaction/ContextConstants;->AMOUNT:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v4}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    if-eqz v2, :cond_3

    .line 290
    sget-object v4, Lorg/jpos/transaction/ContextConstants;->LOCAL_AMOUNT:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v4}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 292
    :cond_2
    if-eqz v2, :cond_3

    .line 293
    sget-object v4, Lorg/jpos/transaction/ContextConstants;->AMOUNT:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v4}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 295
    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 296
    sget-object v4, Lorg/jpos/rc/CMF;->MISSING_FIELD:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jpos/transaction/ContextConstants;->AMOUNT:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v6}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p5, v4, v5, v6, v7}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    .line 297
    :cond_4
    return-void
.end method

.method private putCaptureDate(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;ZLjava/util/Set;Lorg/jpos/rc/Result;)V
    .locals 6
    .param p1, "ctx"    # Lorg/jpos/transaction/Context;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "mandatory"    # Z
    .param p5, "rc"    # Lorg/jpos/rc/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/transaction/Context;",
            "Lorg/jpos/iso/ISOMsg;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/jpos/rc/Result;",
            ")V"
        }
    .end annotation

    .line 242
    .local p4, "validFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "s":Ljava/lang/String;
    const-string v1, "17"

    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v1, p0, Lorg/jpos/transaction/participant/CheckFields;->CAPTUREDATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    sget-object v1, Lorg/jpos/transaction/ContextConstants;->CAPTURE_DATE:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v1}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "120000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jpos/iso/ISODate;->parseISODate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 248
    :cond_0
    sget-object v1, Lorg/jpos/rc/CMF;->INVALID_FIELD:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lorg/jpos/transaction/ContextConstants;->CAPTURE_DATE:Lorg/jpos/transaction/ContextConstants;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    aput-object v0, v4, v2

    const-string v2, "Invalid %s \'%s\'"

    invoke-virtual {p5, v1, v3, v2, v4}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    goto :goto_0

    .line 249
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 250
    sget-object v0, Lorg/jpos/rc/CMF;->MISSING_FIELD:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/jpos/transaction/ContextConstants;->CAPTURE_DATE:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v3}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p5, v0, v1, v3, v2}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    goto :goto_1

    .line 249
    :cond_2
    :goto_0
    nop

    .line 252
    :goto_1
    return-void
.end method

.method private putCard(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;ZLjava/util/Set;Lorg/jpos/rc/Result;)V
    .locals 8
    .param p1, "ctx"    # Lorg/jpos/transaction/Context;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "mandatory"    # Z
    .param p5, "rc"    # Lorg/jpos/rc/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/transaction/Context;",
            "Lorg/jpos/iso/ISOMsg;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/jpos/rc/Result;",
            ")V"
        }
    .end annotation

    .line 156
    .local p4, "validFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "2"

    const-string v1, "14"

    const-string v2, "35"

    const-string v3, "45"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/jpos/iso/ISOMsg;->hasAny([Ljava/lang/String;)Z

    move-result v4

    .line 157
    .local v4, "hasCard":Z
    if-nez p3, :cond_0

    if-nez v4, :cond_0

    .line 158
    return-void

    .line 161
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/jpos/core/Card;->builder()Lorg/jpos/core/Card$Builder;

    move-result-object v5

    .line 162
    .local v5, "cb":Lorg/jpos/core/Card$Builder;
    iget-object v6, p0, Lorg/jpos/transaction/participant/CheckFields;->track1Pattern:Ljava/util/regex/Pattern;

    if-eqz v6, :cond_1

    .line 163
    invoke-static {}, Lorg/jpos/core/Track1;->builder()Lorg/jpos/core/Track1$Builder;

    move-result-object v6

    iget-object v7, p0, Lorg/jpos/transaction/participant/CheckFields;->track1Pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v7}, Lorg/jpos/core/Track1$Builder;->pattern(Ljava/util/regex/Pattern;)Lorg/jpos/core/Track1$Builder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jpos/core/Card$Builder;->withTrack1Builder(Lorg/jpos/core/Track1$Builder;)Lorg/jpos/core/Card$Builder;

    .line 164
    :cond_1
    iget-object v6, p0, Lorg/jpos/transaction/participant/CheckFields;->track2Pattern:Ljava/util/regex/Pattern;

    if-eqz v6, :cond_2

    .line 165
    invoke-static {}, Lorg/jpos/core/Track2;->builder()Lorg/jpos/core/Track2$Builder;

    move-result-object v6

    iget-object v7, p0, Lorg/jpos/transaction/participant/CheckFields;->track2Pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v7}, Lorg/jpos/core/Track2$Builder;->pattern(Ljava/util/regex/Pattern;)Lorg/jpos/core/Track2$Builder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jpos/core/Card$Builder;->withTrack2Builder(Lorg/jpos/core/Track2$Builder;)Lorg/jpos/core/Card$Builder;

    .line 166
    :cond_2
    invoke-virtual {v5, p2}, Lorg/jpos/core/Card$Builder;->isomsg(Lorg/jpos/iso/ISOMsg;)Lorg/jpos/core/Card$Builder;

    .line 167
    iget-boolean v6, p0, Lorg/jpos/transaction/participant/CheckFields;->ignoreCardValidation:Z

    if-eqz v6, :cond_3

    .line 168
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/jpos/core/Card$Builder;->validator(Lorg/jpos/core/CardValidator;)Lorg/jpos/core/Card$Builder;

    .line 169
    :cond_3
    invoke-virtual {v5}, Lorg/jpos/core/Card$Builder;->build()Lorg/jpos/core/Card;

    move-result-object v6

    .line 170
    .local v6, "card":Lorg/jpos/core/Card;
    sget-object v7, Lorg/jpos/transaction/ContextConstants;->CARD:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v7}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v6}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    invoke-virtual {v6}, Lorg/jpos/core/Card;->hasTrack1()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 172
    invoke-interface {p4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_4
    invoke-virtual {v6}, Lorg/jpos/core/Card;->hasTrack2()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 174
    invoke-interface {p4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_5
    invoke-virtual {v6}, Lorg/jpos/core/Card;->getPan()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 176
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_6
    invoke-virtual {v6}, Lorg/jpos/core/Card;->getExp()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    const/16 v7, 0xe

    invoke-virtual {p2, v7}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 178
    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jpos/core/InvalidCardException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v5    # "cb":Lorg/jpos/core/Card$Builder;
    .end local v6    # "card":Lorg/jpos/core/Card;
    :cond_7
    goto :goto_0

    .line 179
    :catch_0
    move-exception v5

    .line 180
    .local v5, "e":Lorg/jpos/core/InvalidCardException;
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 181
    const/4 v0, 0x0

    if-eqz v4, :cond_8

    .line 182
    sget-object v1, Lorg/jpos/rc/CMF;->INVALID_CARD_NUMBER:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lorg/jpos/core/InvalidCardException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p5, v1, v2, v3, v0}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    goto :goto_0

    .line 183
    :cond_8
    if-eqz p3, :cond_9

    .line 184
    sget-object v1, Lorg/jpos/rc/CMF;->MISSING_FIELD:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lorg/jpos/core/InvalidCardException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p5, v1, v2, v3, v0}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    .line 187
    .end local v5    # "e":Lorg/jpos/core/InvalidCardException;
    :cond_9
    :goto_0
    return-void
.end method

.method private putMid(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;ZLjava/util/Set;Lorg/jpos/rc/Result;)V
    .locals 5
    .param p1, "ctx"    # Lorg/jpos/transaction/Context;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "mandatory"    # Z
    .param p5, "rc"    # Lorg/jpos/rc/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/transaction/Context;",
            "Lorg/jpos/iso/ISOMsg;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/jpos/rc/Result;",
            ")V"
        }
    .end annotation

    .line 217
    .local p4, "validFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v0, 0x2a

    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "s":Ljava/lang/String;
    const-string v3, "42"

    invoke-interface {p4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v3, p0, Lorg/jpos/transaction/participant/CheckFields;->MID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    sget-object v2, Lorg/jpos/transaction/ContextConstants;->MID:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v2}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    :cond_0
    sget-object v0, Lorg/jpos/rc/CMF;->INVALID_FIELD:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v2, "Invalid MID \'%s\'"

    invoke-virtual {p5, v0, v3, v2, v4}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    goto :goto_0

    .line 224
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 225
    sget-object v0, Lorg/jpos/rc/CMF;->MISSING_FIELD:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MID"

    invoke-virtual {p5, v0, v1, v3, v2}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    goto :goto_1

    .line 224
    :cond_2
    :goto_0
    nop

    .line 227
    :goto_1
    return-void
.end method

.method private putOriginalDataElements(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;ZLjava/util/Set;Lorg/jpos/rc/Result;)V
    .locals 6
    .param p1, "ctx"    # Lorg/jpos/transaction/Context;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "mandatory"    # Z
    .param p5, "rc"    # Lorg/jpos/rc/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/transaction/Context;",
            "Lorg/jpos/iso/ISOMsg;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/jpos/rc/Result;",
            ")V"
        }
    .end annotation

    .line 300
    .local p4, "validFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v0, 0x38

    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 302
    const-string v2, "56"

    invoke-interface {p4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v2, p0, Lorg/jpos/transaction/participant/CheckFields;->ORIGINAL_DATA_ELEMENTS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    sget-object v2, Lorg/jpos/transaction/ContextConstants;->ORIGINAL_MTI:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v2}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    sget-object v1, Lorg/jpos/transaction/ContextConstants;->ORIGINAL_STAN:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v1}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    sget-object v1, Lorg/jpos/transaction/ContextConstants;->ORIGINAL_TIMESTAMP:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v1}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jpos/iso/ISODate;->parseISODate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 308
    :cond_0
    sget-object v2, Lorg/jpos/rc/CMF;->INVALID_FIELD:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lorg/jpos/transaction/ContextConstants;->ORIGINAL_DATA_ELEMENTS:Lorg/jpos/transaction/ContextConstants;

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string v1, "Invalid %s \'%s\'"

    invoke-virtual {p5, v2, v3, v1, v4}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    goto :goto_0

    .line 310
    :cond_1
    if-eqz p3, :cond_2

    .line 311
    sget-object v2, Lorg/jpos/rc/CMF;->MISSING_FIELD:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/jpos/transaction/ContextConstants;->ORIGINAL_DATA_ELEMENTS:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v4}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p5, v2, v3, v4, v1}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    .line 313
    :cond_2
    :goto_0
    return-void
.end method

.method private putPCode(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;ZLjava/util/Set;Lorg/jpos/rc/Result;)V
    .locals 5
    .param p1, "ctx"    # Lorg/jpos/transaction/Context;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "mandatory"    # Z
    .param p5, "rc"    # Lorg/jpos/rc/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/transaction/Context;",
            "Lorg/jpos/iso/ISOMsg;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/jpos/rc/Result;",
            ")V"
        }
    .end annotation

    .line 190
    .local p4, "validFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "s":Ljava/lang/String;
    const-string v3, "3"

    invoke-interface {p4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v3, p0, Lorg/jpos/transaction/participant/CheckFields;->PCODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    sget-object v2, Lorg/jpos/transaction/ContextConstants;->PCODE:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v2}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 197
    :cond_0
    sget-object v0, Lorg/jpos/rc/CMF;->INVALID_FIELD:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v2, "Invalid PCODE \'%s\'"

    invoke-virtual {p5, v0, v3, v2, v4}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    goto :goto_0

    .line 198
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 199
    sget-object v0, Lorg/jpos/rc/CMF;->MISSING_FIELD:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "PCODE"

    invoke-virtual {p5, v0, v1, v3, v2}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    goto :goto_1

    .line 198
    :cond_2
    :goto_0
    nop

    .line 201
    :goto_1
    return-void
.end method

.method private putPDC(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;ZLjava/util/Set;Lorg/jpos/rc/Result;)V
    .locals 6
    .param p1, "ctx"    # Lorg/jpos/transaction/Context;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "mandatory"    # Z
    .param p5, "rc"    # Lorg/jpos/rc/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/transaction/Context;",
            "Lorg/jpos/iso/ISOMsg;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/jpos/rc/Result;",
            ")V"
        }
    .end annotation

    .line 255
    .local p4, "validFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v0, 0x16

    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 256
    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->getBytes(I)[B

    move-result-object v1

    .line 257
    .local v1, "b":[B
    const-string v3, "22"

    invoke-interface {p4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    array-length v3, v1

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    .line 259
    sget-object v0, Lorg/jpos/rc/CMF;->INVALID_FIELD:Lorg/jpos/rc/CMF;

    .line 261
    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lorg/jpos/transaction/ContextConstants;->POS_DATA_CODE:Lorg/jpos/transaction/ContextConstants;

    .line 262
    invoke-virtual {v5}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    .line 263
    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 259
    const-string v2, "Invalid %s \'%s\'"

    invoke-virtual {p5, v0, v3, v2, v4}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    goto :goto_0

    .line 267
    :cond_0
    sget-object v2, Lorg/jpos/transaction/ContextConstants;->POS_DATA_CODE:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v2}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->getBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/iso/PosDataCode;->valueOf([B)Lorg/jpos/iso/PosDataCode;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 269
    .end local v1    # "b":[B
    :cond_1
    if-eqz p3, :cond_2

    .line 270
    sget-object v0, Lorg/jpos/rc/CMF;->MISSING_FIELD:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/jpos/transaction/ContextConstants;->POS_DATA_CODE:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v3}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p5, v0, v1, v3, v2}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    goto :goto_1

    .line 269
    :cond_2
    :goto_0
    nop

    .line 272
    :goto_1
    return-void
.end method

.method private putTid(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;ZLjava/util/Set;Lorg/jpos/rc/Result;)V
    .locals 5
    .param p1, "ctx"    # Lorg/jpos/transaction/Context;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "mandatory"    # Z
    .param p5, "rc"    # Lorg/jpos/rc/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/transaction/Context;",
            "Lorg/jpos/iso/ISOMsg;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/jpos/rc/Result;",
            ")V"
        }
    .end annotation

    .line 204
    .local p4, "validFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "s":Ljava/lang/String;
    const-string v3, "41"

    invoke-interface {p4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v3, p0, Lorg/jpos/transaction/participant/CheckFields;->TID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    sget-object v2, Lorg/jpos/transaction/ContextConstants;->TID:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v2}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_0
    sget-object v0, Lorg/jpos/rc/CMF;->INVALID_FIELD:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v2, "Invalid TID \'%s\'"

    invoke-virtual {p5, v0, v3, v2, v4}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    goto :goto_0

    .line 211
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 212
    sget-object v0, Lorg/jpos/rc/CMF;->MISSING_FIELD:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "TID"

    invoke-virtual {p5, v0, v1, v3, v2}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    goto :goto_1

    .line 211
    :cond_2
    :goto_0
    nop

    .line 214
    :goto_1
    return-void
.end method

.method private putTimestamp(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;Ljava/lang/String;ILjava/util/regex/Pattern;ZLjava/util/Set;Lorg/jpos/rc/Result;)V
    .locals 5
    .param p1, "ctx"    # Lorg/jpos/transaction/Context;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "fieldNumber"    # I
    .param p5, "ptrn"    # Ljava/util/regex/Pattern;
    .param p6, "mandatory"    # Z
    .param p8, "rc"    # Lorg/jpos/rc/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/transaction/Context;",
            "Lorg/jpos/iso/ISOMsg;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/regex/Pattern;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/jpos/rc/Result;",
            ")V"
        }
    .end annotation

    .line 229
    .local p7, "validFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2, p4}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p2, p4}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "s":Ljava/lang/String;
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {p5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-static {v0}, Lorg/jpos/iso/ISODate;->parseISODate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 235
    :cond_0
    sget-object v2, Lorg/jpos/rc/CMF;->INVALID_FIELD:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v1

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string v1, "Invalid %s \'%s\'"

    invoke-virtual {p8, v2, v3, v1, v4}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    goto :goto_0

    .line 236
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    if-eqz p6, :cond_2

    .line 237
    sget-object v0, Lorg/jpos/rc/CMF;->MISSING_FIELD:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jpos/transaction/ContextConstants;->TRANSMISSION_TIMESTAMP:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v3}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p8, v0, v2, v3, v1}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    goto :goto_1

    .line 236
    :cond_2
    :goto_0
    nop

    .line 239
    :goto_1
    return-void
.end method


# virtual methods
.method public prepare(JLjava/io/Serializable;)I
    .locals 15
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 55
    move-object v8, p0

    const-string v0, ""

    move-object/from16 v9, p3

    check-cast v9, Lorg/jpos/transaction/Context;

    .line 56
    .local v9, "ctx":Lorg/jpos/transaction/Context;
    invoke-virtual {v9}, Lorg/jpos/transaction/Context;->getResult()Lorg/jpos/rc/Result;

    move-result-object v10

    .line 58
    .local v10, "rc":Lorg/jpos/rc/Result;
    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_0
    iget-object v1, v8, Lorg/jpos/transaction/participant/CheckFields;->request:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lorg/jpos/transaction/Context;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    move-object v13, v1

    .line 59
    .local v13, "m":Lorg/jpos/iso/ISOMsg;
    if-nez v13, :cond_0

    .line 60
    invoke-virtual {v9}, Lorg/jpos/transaction/Context;->getResult()Lorg/jpos/rc/Result;

    move-result-object v0

    sget-object v1, Lorg/jpos/rc/CMF;->INVALID_TRANSACTION:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'%s\' not available in Context"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, v8, Lorg/jpos/transaction/participant/CheckFields;->request:Ljava/lang/String;

    aput-object v5, v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    .line 61
    const/16 v0, 0xc0

    return v0

    .line 63
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v14, v1

    .line 64
    .local v14, "validFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, v8, Lorg/jpos/transaction/participant/CheckFields;->cfg:Lorg/jpos/core/Configuration;

    const-string v2, "mandatory"

    invoke-interface {v1, v2, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, v9

    move-object v3, v13

    move-object v6, v14

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lorg/jpos/transaction/participant/CheckFields;->assertFields(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;Ljava/lang/String;ZLjava/util/Set;Lorg/jpos/rc/Result;)V

    .line 65
    iget-object v1, v8, Lorg/jpos/transaction/participant/CheckFields;->cfg:Lorg/jpos/core/Configuration;

    const-string v2, "optional"

    invoke-interface {v1, v2, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v3, v13

    move-object v6, v14

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lorg/jpos/transaction/participant/CheckFields;->assertFields(Lorg/jpos/transaction/Context;Lorg/jpos/iso/ISOMsg;Ljava/lang/String;ZLjava/util/Set;Lorg/jpos/rc/Result;)V

    .line 66
    iget-boolean v0, v8, Lorg/jpos/transaction/participant/CheckFields;->allowExtraFields:Z

    if-nez v0, :cond_1

    invoke-direct {p0, v13, v14, v10}, Lorg/jpos/transaction/participant/CheckFields;->assertNoExtraFields(Lorg/jpos/iso/ISOMsg;Ljava/util/Set;Lorg/jpos/rc/Result;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v13    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v14    # "validFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/jpos/rc/CMF;->SYSTEM_ERROR:Lorg/jpos/rc/CMF;

    invoke-static {}, Lorg/jpos/util/Caller;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v1, v2, v3, v4}, Lorg/jpos/rc/Result;->fail(Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jpos/rc/Result;

    .line 69
    invoke-virtual {v9, v0}, Lorg/jpos/transaction/Context;->log(Ljava/lang/Object;)V

    .line 71
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v10}, Lorg/jpos/rc/Result;->hasFailures()Z

    move-result v0

    xor-int/2addr v0, v11

    or-int/lit8 v0, v0, 0x40

    or-int/lit16 v0, v0, 0x80

    return v0
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;

    .line 75
    iput-object p1, p0, Lorg/jpos/transaction/participant/CheckFields;->cfg:Lorg/jpos/core/Configuration;

    .line 76
    sget-object v0, Lorg/jpos/transaction/ContextConstants;->REQUEST:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v0}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/CheckFields;->request:Ljava/lang/String;

    .line 77
    const-string v0, "ignore-card-validation"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/transaction/participant/CheckFields;->ignoreCardValidation:Z

    .line 78
    const-string v0, "allow-extra-fields"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/transaction/participant/CheckFields;->allowExtraFields:Z

    .line 79
    const-string v0, "track1-pattern"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "t1":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 81
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/transaction/participant/CheckFields;->track1Pattern:Ljava/util/regex/Pattern;

    .line 83
    :cond_0
    const-string v2, "track2-pattern"

    invoke-interface {p1, v2, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "t2":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 85
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/transaction/participant/CheckFields;->track2Pattern:Ljava/util/regex/Pattern;

    .line 87
    :cond_1
    return-void
.end method
