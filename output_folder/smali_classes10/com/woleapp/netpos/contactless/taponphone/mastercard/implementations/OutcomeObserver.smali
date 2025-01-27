.class public Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;
.super Ljava/lang/Object;
.source "OutcomeObserver.java"

# interfaces
.implements Lcom/mastercard/terminalsdk/listeners/TransactionOutcomeObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "OutcomeObserver"


# instance fields
.field private builder:Ljava/lang/StringBuilder;

.field private mTransactionListenerForUI:Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;

.field private mTransactionOutcome:Lcom/mastercard/terminalsdk/objects/ReaderOutcome;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->builder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private logOutcome(Lcom/mastercard/terminalsdk/objects/ReaderOutcome;)V
    .locals 2
    .param p1, "readerOutcome"    # Lcom/mastercard/terminalsdk/objects/ReaderOutcome;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readerOutcome"
        }
    .end annotation

    .line 144
    const-string v0, "OUTCOME"

    const-string v1, "\nReceived Outcome :"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method private processOutcome(Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/String;)V
    .locals 3
    .param p1, "cardData"    # Lcom/danbamitale/epmslib/entities/CardData;
    .param p2, "pan"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cardData",
            "pan"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->mTransactionListenerForUI:Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;

    if-eqz v0, :cond_1

    .line 152
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver$1;->$SwitchMap$com$mastercard$terminalsdk$objects$OutcomeParameterSet$Status:[I

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->mTransactionOutcome:Lcom/mastercard/terminalsdk/objects/ReaderOutcome;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->getOutcomeParameterSet()Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->getStatus()Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 176
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->mTransactionListenerForUI:Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;

    invoke-interface {v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;->onApplicationEnded()V

    goto :goto_0

    .line 167
    :pswitch_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->mTransactionOutcome:Lcom/mastercard/terminalsdk/objects/ReaderOutcome;

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->getDiscretionaryData()Lcom/mastercard/terminalsdk/objects/DiscretionaryData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/objects/DiscretionaryData;->getErrorIndication()Lcom/mastercard/terminalsdk/objects/ErrorIndication;

    move-result-object v0

    .line 168
    .local v0, "errorIndication":Lcom/mastercard/terminalsdk/objects/ErrorIndication;
    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/objects/ErrorIndication;->getL3Error()Lcom/mastercard/terminalsdk/objects/ErrorIndication$L3_Error_Code;

    move-result-object v1

    sget-object v2, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L3_Error_Code;->STOP:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L3_Error_Code;

    if-ne v1, v2, :cond_0

    .line 170
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->mTransactionListenerForUI:Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;

    invoke-interface {v1}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;->onTransactionCancelled()V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->mTransactionListenerForUI:Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;

    invoke-interface {v1}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;->onApplicationEnded()V

    .line 174
    goto :goto_0

    .line 163
    .end local v0    # "errorIndication":Lcom/mastercard/terminalsdk/objects/ErrorIndication;
    :pswitch_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "declined"

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->mTransactionListenerForUI:Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;

    invoke-interface {v0, p1, p2}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;->onOnlineReferral(Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/String;)V

    .line 165
    goto :goto_0

    .line 159
    :pswitch_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "online request"

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->mTransactionListenerForUI:Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;

    invoke-interface {v0, p1, p2}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;->onOnlineReferral(Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/String;)V

    .line 161
    goto :goto_0

    .line 155
    :pswitch_3
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "approved"

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->mTransactionListenerForUI:Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;

    invoke-interface {v0, p1, p2}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;->onOnlineReferral(Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/String;)V

    .line 179
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public resetObserver(Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;)V
    .locals 1
    .param p1, "transactionListenerForUI"    # Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transactionListenerForUI"
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->mTransactionOutcome:Lcom/mastercard/terminalsdk/objects/ReaderOutcome;

    .line 183
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->mTransactionListenerForUI:Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;

    .line 184
    return-void
.end method

.method public transactionOutcome(Lcom/mastercard/terminalsdk/objects/ReaderOutcome;)V
    .locals 18
    .param p1, "readerOutcome"    # Lcom/mastercard/terminalsdk/objects/ReaderOutcome;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "readerOutcome"
        }
    .end annotation

    .line 35
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->mTransactionOutcome:Lcom/mastercard/terminalsdk/objects/ReaderOutcome;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction Summary : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->mTransactionOutcome:Lcom/mastercard/terminalsdk/objects/ReaderOutcome;

    invoke-virtual {v4}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "OutcomeObserver"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->builder:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->mTransactionOutcome:Lcom/mastercard/terminalsdk/objects/ReaderOutcome;

    invoke-virtual {v4}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->getOutcomeParameterSet()Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->getStatus()Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    move-result-object v3

    .line 40
    .local v3, "transactionStatus":Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;
    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->END_APPLICATION:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->getOutcomeParameterSet()Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->isDataRecordPresent()Z

    move-result v5

    .line 46
    .local v5, "isDataRecordPresent":Z
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "data record present %s"

    invoke-static {v7, v6}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v6, v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->builder:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\ndata record present: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v6, ""

    .line 49
    .local v6, "track2Data":Ljava/lang/String;
    const-string v7, ""

    .line 50
    .local v7, "applicationPanSequenceNumber":Ljava/lang/String;
    const-string v8, ""

    .line 51
    .local v8, "pan":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v9, "nibssIccData":Ljava/lang/StringBuilder;
    if-eqz v5, :cond_5

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->getDataRecordContents()Ljava/util/ArrayList;

    move-result-object v12

    .line 55
    .local v12, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mastercard/terminalsdk/iso8825/BerTlv;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v13, "nibssTag":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v14, "9F26"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v14, "9F27"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v14, "9F10"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v14, "9F37"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v14, "9F36"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v14, "95"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v14, "9A"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v14, "9C"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v14, "9F02"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v14, "5F2A"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v14, "82"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v14, "9F1A"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v14, "9F34"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v14, "9F33"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v14, "9F35"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v14, "9F1E"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v14, "84"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v14, "9F09"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v14, "9F03"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v14, "5F34"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v15, "8E"

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    .line 81
    .local v16, "berTlv":Lcom/mastercard/terminalsdk/iso8825/BerTlv;
    invoke-virtual/range {v16 .. v16}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getNTag()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->intToByteArray(I)[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->toHexString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual/range {v16 .. v16}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getNTag()I

    move-result v10

    invoke-static {v10}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->intToByteArray(I)[B

    move-result-object v10

    invoke-static {v10}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 83
    .local v10, "tag":Ljava/lang/String;
    const-string v11, "57"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v4, 0x4

    if-eqz v11, :cond_0

    .line 84
    invoke-virtual/range {v16 .. v16}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->toHexString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 85
    :cond_0
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 86
    invoke-virtual/range {v16 .. v16}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->toHexString()Ljava/lang/String;

    move-result-object v11

    const/4 v0, 0x6

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 87
    :cond_1
    const-string v0, "5A"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual/range {v16 .. v16}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->toHexString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 89
    :cond_2
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual/range {v16 .. v16}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->toHexString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .end local v10    # "tag":Ljava/lang/String;
    .end local v16    # "berTlv":Lcom/mastercard/terminalsdk/iso8825/BerTlv;
    :cond_3
    const/4 v0, 0x1

    const/4 v4, 0x0

    goto :goto_0

    .line 104
    :cond_4
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v4, v10

    const-string v11, "track2Data is: %s"

    invoke-static {v11, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    new-array v4, v0, [Ljava/lang/Object;

    const/16 v11, 0x30

    const/4 v14, 0x3

    invoke-static {v7, v14, v11}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v10

    const-string v11, "pan sequence is: %s"

    invoke-static {v11, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    const-string v0, "nibssicc is %s"

    invoke-static {v0, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 52
    .end local v12    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mastercard/terminalsdk/iso8825/BerTlv;>;"
    .end local v13    # "nibssTag":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move v10, v4

    .line 109
    :goto_1
    new-array v0, v10, [Ljava/lang/Object;

    const-string v4, "reader outcome"

    invoke-static {v4, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->builder:Ljava/lang/StringBuilder;

    const-string v4, "\nreader outcome"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->builder:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\ntags size: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->getDataRecordContents()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->builder:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\ndataRecordTlv: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->getDataRecordTlv()Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->builder:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\nCVM: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->getOutcomeParameterSet()Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->getCvm()Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->builder:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\nadditional information size: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->getAdditionalInformation()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->builder:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\ndis: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->getDiscretionaryData()Lcom/mastercard/terminalsdk/objects/DiscretionaryData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mastercard/terminalsdk/objects/DiscretionaryData;->toTLV()Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->builder:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\ndis size %s"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->getDiscretionaryData()Lcom/mastercard/terminalsdk/objects/DiscretionaryData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mastercard/terminalsdk/objects/DiscretionaryData;->getAdditionalInformation()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->getDataRecordContents()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v4, v11

    const-string v10, "tags size: %s"

    invoke-static {v10, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->getDataRecordTlv()Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v11

    const-string v10, "dataRecordTlv: %s"

    invoke-static {v10, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->getOutcomeParameterSet()Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->getCvm()Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    move-result-object v10

    aput-object v10, v4, v11

    const-string v10, "CVM: %s"

    invoke-static {v10, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->getAdditionalInformation()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v11

    const-string v10, "additional information size %s"

    invoke-static {v10, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->getDiscretionaryData()Lcom/mastercard/terminalsdk/objects/DiscretionaryData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mastercard/terminalsdk/objects/DiscretionaryData;->toTLV()Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v11

    const-string v10, "dis %s"

    invoke-static {v10, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->getDiscretionaryData()Lcom/mastercard/terminalsdk/objects/DiscretionaryData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mastercard/terminalsdk/objects/DiscretionaryData;->getAdditionalInformation()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v11

    const-string v4, "dis size %s"

    invoke-static {v4, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-direct/range {p0 .. p1}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->logOutcome(Lcom/mastercard/terminalsdk/objects/ReaderOutcome;)V

    .line 124
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->mTransactionListenerForUI:Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;->logToScreen(Ljava/lang/String;)V

    .line 127
    :try_start_0
    new-instance v0, Lcom/danbamitale/epmslib/entities/CardData;

    .line 129
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    const/16 v10, 0x30

    const/4 v11, 0x3

    invoke-static {v7, v11, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v10

    const-string v11, "051"

    invoke-direct {v0, v6, v4, v10, v11}, Lcom/danbamitale/epmslib/entities/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v0, "cardData":Lcom/danbamitale/epmslib/entities/CardData;
    invoke-direct {v1, v0, v8}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;->processOutcome(Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0    # "cardData":Lcom/danbamitale/epmslib/entities/CardData;
    goto :goto_2

    .line 134
    :catch_0
    move-exception v0

    .line 139
    :goto_2
    return-void
.end method
