.class Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$7;
.super Ljava/lang/Object;
.source "TransactionResponseDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->getTransactionByTransactionType(Lcom/danbamitale/epmslib/entities/TransactionType;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    .line 949
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$7;->this$0:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 949
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$7;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 75
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 952
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$7;->this$0:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->access$100(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 954
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "transactionType"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 955
    .local v0, "_cursorIndexOfTransactionType":I
    const-string v3, "maskedPan"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 956
    .local v3, "_cursorIndexOfMaskedPan":I
    const-string v4, "amount"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 957
    .local v4, "_cursorIndexOfAmount":I
    const-string v5, "transmissionDateTime"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 958
    .local v5, "_cursorIndexOfTransmissionDateTime":I
    const-string v6, "STAN"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 959
    .local v6, "_cursorIndexOfSTAN":I
    const-string v7, "RRN"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 960
    .local v7, "_cursorIndexOfRRN":I
    const-string v8, "localTime_12"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 961
    .local v8, "_cursorIndexOfLocalTime12":I
    const-string v9, "localDate_13"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 962
    .local v9, "_cursorIndexOfLocalDate13":I
    const-string v10, "otherAmount"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 963
    .local v10, "_cursorIndexOfOtherAmount":I
    const-string v11, "acquiringInstCode"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 964
    .local v11, "_cursorIndexOfAcquiringInstCode":I
    const-string v12, "originalForwardingInstCode"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 965
    .local v12, "_cursorIndexOfOriginalForwardingInstCode":I
    const-string v13, "authCode"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 966
    .local v13, "_cursorIndexOfAuthCode":I
    const-string v14, "responseCode"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 967
    .local v14, "_cursorIndexOfResponseCode":I
    const-string v15, "additionalAmount_54"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 968
    .local v15, "_cursorIndexOfAdditionalAmount54":I
    const-string v1, "echoData"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 969
    .local v1, "_cursorIndexOfEchoData":I
    move/from16 v16, v1

    .end local v1    # "_cursorIndexOfEchoData":I
    .local v16, "_cursorIndexOfEchoData":I
    const-string v1, "cardLabel"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 970
    .local v1, "_cursorIndexOfCardLabel":I
    move/from16 v17, v1

    .end local v1    # "_cursorIndexOfCardLabel":I
    .local v17, "_cursorIndexOfCardLabel":I
    const-string v1, "cardExpiry"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 971
    .local v1, "_cursorIndexOfCardExpiry":I
    move/from16 v18, v1

    .end local v1    # "_cursorIndexOfCardExpiry":I
    .local v18, "_cursorIndexOfCardExpiry":I
    const-string v1, "cardHolder"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 972
    .local v1, "_cursorIndexOfCardHolder":I
    move/from16 v19, v1

    .end local v1    # "_cursorIndexOfCardHolder":I
    .local v19, "_cursorIndexOfCardHolder":I
    const-string v1, "TVR"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 973
    .local v1, "_cursorIndexOfTVR":I
    move/from16 v20, v1

    .end local v1    # "_cursorIndexOfTVR":I
    .local v20, "_cursorIndexOfTVR":I
    const-string v1, "TSI"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 974
    .local v1, "_cursorIndexOfTSI":I
    move/from16 v21, v1

    .end local v1    # "_cursorIndexOfTSI":I
    .local v21, "_cursorIndexOfTSI":I
    const-string v1, "AID"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 975
    .local v1, "_cursorIndexOfAID":I
    move/from16 v22, v1

    .end local v1    # "_cursorIndexOfAID":I
    .local v22, "_cursorIndexOfAID":I
    const-string v1, "appCryptogram"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 976
    .local v1, "_cursorIndexOfAppCryptogram":I
    move/from16 v23, v1

    .end local v1    # "_cursorIndexOfAppCryptogram":I
    .local v23, "_cursorIndexOfAppCryptogram":I
    const-string v1, "transactionTimeInMillis"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 977
    .local v1, "_cursorIndexOfTransactionTimeInMillis":I
    move/from16 v24, v1

    .end local v1    # "_cursorIndexOfTransactionTimeInMillis":I
    .local v24, "_cursorIndexOfTransactionTimeInMillis":I
    const-string v1, "accountType"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 978
    .local v1, "_cursorIndexOfAccountType":I
    move/from16 v25, v1

    .end local v1    # "_cursorIndexOfAccountType":I
    .local v25, "_cursorIndexOfAccountType":I
    const-string v1, "terminalId"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 979
    .local v1, "_cursorIndexOfTerminalId":I
    move/from16 v26, v1

    .end local v1    # "_cursorIndexOfTerminalId":I
    .local v26, "_cursorIndexOfTerminalId":I
    const-string v1, "merchantId"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 980
    .local v1, "_cursorIndexOfMerchantId":I
    move/from16 v27, v1

    .end local v1    # "_cursorIndexOfMerchantId":I
    .local v27, "_cursorIndexOfMerchantId":I
    const-string v1, "otherId"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 981
    .local v1, "_cursorIndexOfOtherId":I
    move/from16 v28, v1

    .end local v1    # "_cursorIndexOfOtherId":I
    .local v28, "_cursorIndexOfOtherId":I
    const-string v1, "id"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 982
    .local v1, "_cursorIndexOfId":I
    move/from16 v29, v1

    .end local v1    # "_cursorIndexOfId":I
    .local v29, "_cursorIndexOfId":I
    const-string v1, "source"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 983
    .local v1, "_cursorIndexOfSource":I
    move/from16 v30, v1

    .end local v1    # "_cursorIndexOfSource":I
    .local v30, "_cursorIndexOfSource":I
    const-string v1, "interSwitchThreshold"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 984
    .local v1, "_cursorIndexOfInterSwitchThreshold":I
    move/from16 v31, v1

    .end local v1    # "_cursorIndexOfInterSwitchThreshold":I
    .local v31, "_cursorIndexOfInterSwitchThreshold":I
    const-string v1, "responseMessage"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 985
    .local v1, "_cursorIndexOfResponseMessage":I
    move/from16 v32, v1

    .end local v1    # "_cursorIndexOfResponseMessage":I
    .local v32, "_cursorIndexOfResponseMessage":I
    const-string v1, "errorMessage"

    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 986
    .local v1, "_cursorIndexOfErrorMessage":I
    move/from16 v33, v1

    .end local v1    # "_cursorIndexOfErrorMessage":I
    .local v33, "_cursorIndexOfErrorMessage":I
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v34, v15

    .end local v15    # "_cursorIndexOfAdditionalAmount54":I
    .local v34, "_cursorIndexOfAdditionalAmount54":I
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 987
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/danbamitale/epmslib/entities/TransactionResponse;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 989
    new-instance v15, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-direct {v15}, Lcom/danbamitale/epmslib/entities/TransactionResponse;-><init>()V

    .line 992
    .local v15, "_item":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_0

    .line 993
    const/16 v35, 0x0

    .local v35, "_tmp_1":Ljava/lang/String;
    goto :goto_1

    .line 995
    .end local v35    # "_tmp_1":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 997
    .restart local v35    # "_tmp_1":Ljava/lang/String;
    :goto_1
    invoke-static/range {v35 .. v35}, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters;->convertTransactionResponseToEnum(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v36

    move-object/from16 v37, v36

    .line 998
    .local v37, "_tmpTransactionType":Lcom/danbamitale/epmslib/entities/TransactionType;
    move/from16 v36, v0

    move-object/from16 v0, v37

    .end local v37    # "_tmpTransactionType":Lcom/danbamitale/epmslib/entities/TransactionType;
    .local v0, "_tmpTransactionType":Lcom/danbamitale/epmslib/entities/TransactionType;
    .local v36, "_cursorIndexOfTransactionType":I
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransactionType(Lcom/danbamitale/epmslib/entities/TransactionType;)V

    .line 1000
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_1

    .line 1001
    const/16 v37, 0x0

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    .local v37, "_tmpMaskedPan":Ljava/lang/String;
    goto :goto_2

    .line 1003
    .end local v37    # "_tmpMaskedPan":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    .line 1005
    .local v0, "_tmpMaskedPan":Ljava/lang/String;
    .local v38, "_tmpTransactionType":Lcom/danbamitale/epmslib/entities/TransactionType;
    :goto_2
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setMaskedPan(Ljava/lang/String;)V

    .line 1007
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    move-wide/from16 v41, v39

    .line 1008
    .local v41, "_tmpAmount":J
    move/from16 v37, v3

    move/from16 v39, v4

    move-wide/from16 v3, v41

    .end local v4    # "_cursorIndexOfAmount":I
    .end local v41    # "_tmpAmount":J
    .local v3, "_tmpAmount":J
    .local v37, "_cursorIndexOfMaskedPan":I
    .local v39, "_cursorIndexOfAmount":I
    invoke-virtual {v15, v3, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAmount(J)V

    .line 1010
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-eqz v40, :cond_2

    .line 1011
    const/16 v40, 0x0

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    .local v40, "_tmpTransmissionDateTime":Ljava/lang/String;
    goto :goto_3

    .line 1013
    .end local v40    # "_tmpTransmissionDateTime":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    .line 1015
    .local v0, "_tmpTransmissionDateTime":Ljava/lang/String;
    .local v41, "_tmpMaskedPan":Ljava/lang/String;
    :goto_3
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransmissionDateTime(Ljava/lang/String;)V

    .line 1017
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-eqz v40, :cond_3

    .line 1018
    const/16 v40, 0x0

    move-object/from16 v42, v0

    move-object/from16 v0, v40

    .local v40, "_tmpSTAN":Ljava/lang/String;
    goto :goto_4

    .line 1020
    .end local v40    # "_tmpSTAN":Ljava/lang/String;
    :cond_3
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v42, v0

    move-object/from16 v0, v40

    .line 1022
    .local v0, "_tmpSTAN":Ljava/lang/String;
    .local v42, "_tmpTransmissionDateTime":Ljava/lang/String;
    :goto_4
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setSTAN(Ljava/lang/String;)V

    .line 1024
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-eqz v40, :cond_4

    .line 1025
    const/16 v40, 0x0

    move-object/from16 v43, v0

    move-object/from16 v0, v40

    .local v40, "_tmpRRN":Ljava/lang/String;
    goto :goto_5

    .line 1027
    .end local v40    # "_tmpRRN":Ljava/lang/String;
    :cond_4
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v43, v0

    move-object/from16 v0, v40

    .line 1029
    .local v0, "_tmpRRN":Ljava/lang/String;
    .local v43, "_tmpSTAN":Ljava/lang/String;
    :goto_5
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setRRN(Ljava/lang/String;)V

    .line 1031
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-eqz v40, :cond_5

    .line 1032
    const/16 v40, 0x0

    move-object/from16 v44, v0

    move-object/from16 v0, v40

    .local v40, "_tmpLocalTime_12":Ljava/lang/String;
    goto :goto_6

    .line 1034
    .end local v40    # "_tmpLocalTime_12":Ljava/lang/String;
    :cond_5
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v44, v0

    move-object/from16 v0, v40

    .line 1036
    .local v0, "_tmpLocalTime_12":Ljava/lang/String;
    .local v44, "_tmpRRN":Ljava/lang/String;
    :goto_6
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setLocalTime_12(Ljava/lang/String;)V

    .line 1038
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-eqz v40, :cond_6

    .line 1039
    const/16 v40, 0x0

    move-object/from16 v45, v0

    move-object/from16 v0, v40

    .local v40, "_tmpLocalDate_13":Ljava/lang/String;
    goto :goto_7

    .line 1041
    .end local v40    # "_tmpLocalDate_13":Ljava/lang/String;
    :cond_6
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v45, v0

    move-object/from16 v0, v40

    .line 1043
    .local v0, "_tmpLocalDate_13":Ljava/lang/String;
    .local v45, "_tmpLocalTime_12":Ljava/lang/String;
    :goto_7
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setLocalDate_13(Ljava/lang/String;)V

    .line 1045
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    move-wide/from16 v48, v46

    .line 1046
    .local v48, "_tmpOtherAmount":J
    move-wide/from16 v46, v3

    move-wide/from16 v3, v48

    .end local v48    # "_tmpOtherAmount":J
    .local v3, "_tmpOtherAmount":J
    .local v46, "_tmpAmount":J
    invoke-virtual {v15, v3, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setOtherAmount(J)V

    .line 1048
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 1049
    const/16 v40, 0x0

    move-object/from16 v48, v0

    move-object/from16 v0, v40

    .local v40, "_tmpAcquiringInstCode":Ljava/lang/String;
    goto :goto_8

    .line 1051
    .end local v40    # "_tmpAcquiringInstCode":Ljava/lang/String;
    :cond_7
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v48, v0

    move-object/from16 v0, v40

    .line 1053
    .local v0, "_tmpAcquiringInstCode":Ljava/lang/String;
    .local v48, "_tmpLocalDate_13":Ljava/lang/String;
    :goto_8
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAcquiringInstCode(Ljava/lang/String;)V

    .line 1055
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-eqz v40, :cond_8

    .line 1056
    const/16 v40, 0x0

    move-object/from16 v49, v0

    move-object/from16 v0, v40

    .local v40, "_tmpOriginalForwardingInstCode":Ljava/lang/String;
    goto :goto_9

    .line 1058
    .end local v40    # "_tmpOriginalForwardingInstCode":Ljava/lang/String;
    :cond_8
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v49, v0

    move-object/from16 v0, v40

    .line 1060
    .local v0, "_tmpOriginalForwardingInstCode":Ljava/lang/String;
    .local v49, "_tmpAcquiringInstCode":Ljava/lang/String;
    :goto_9
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setOriginalForwardingInstCode(Ljava/lang/String;)V

    .line 1062
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-eqz v40, :cond_9

    .line 1063
    const/16 v40, 0x0

    move-object/from16 v50, v0

    move-object/from16 v0, v40

    .local v40, "_tmpAuthCode":Ljava/lang/String;
    goto :goto_a

    .line 1065
    .end local v40    # "_tmpAuthCode":Ljava/lang/String;
    :cond_9
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v50, v0

    move-object/from16 v0, v40

    .line 1067
    .local v0, "_tmpAuthCode":Ljava/lang/String;
    .local v50, "_tmpOriginalForwardingInstCode":Ljava/lang/String;
    :goto_a
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAuthCode(Ljava/lang/String;)V

    .line 1069
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-eqz v40, :cond_a

    .line 1070
    const/16 v40, 0x0

    move-object/from16 v51, v0

    move-object/from16 v0, v40

    .local v40, "_tmpResponseCode":Ljava/lang/String;
    goto :goto_b

    .line 1072
    .end local v40    # "_tmpResponseCode":Ljava/lang/String;
    :cond_a
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v51, v0

    move-object/from16 v0, v40

    .line 1074
    .local v0, "_tmpResponseCode":Ljava/lang/String;
    .local v51, "_tmpAuthCode":Ljava/lang/String;
    :goto_b
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setResponseCode(Ljava/lang/String;)V

    .line 1076
    move-object/from16 v40, v0

    move/from16 v0, v34

    .end local v34    # "_cursorIndexOfAdditionalAmount54":I
    .local v0, "_cursorIndexOfAdditionalAmount54":I
    .restart local v40    # "_tmpResponseCode":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_b

    .line 1077
    const/16 v34, 0x0

    move/from16 v52, v0

    move-object/from16 v0, v34

    .local v34, "_tmpAdditionalAmount_54":Ljava/lang/String;
    goto :goto_c

    .line 1079
    .end local v34    # "_tmpAdditionalAmount_54":Ljava/lang/String;
    :cond_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    move/from16 v52, v0

    move-object/from16 v0, v34

    .line 1081
    .local v0, "_tmpAdditionalAmount_54":Ljava/lang/String;
    .local v52, "_cursorIndexOfAdditionalAmount54":I
    :goto_c
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAdditionalAmount_54(Ljava/lang/String;)V

    .line 1083
    move-object/from16 v34, v0

    move/from16 v0, v16

    .end local v16    # "_cursorIndexOfEchoData":I
    .local v0, "_cursorIndexOfEchoData":I
    .restart local v34    # "_tmpAdditionalAmount_54":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 1084
    const/16 v16, 0x0

    move/from16 v53, v0

    move-object/from16 v0, v16

    .local v16, "_tmpEchoData":Ljava/lang/String;
    goto :goto_d

    .line 1086
    .end local v16    # "_tmpEchoData":Ljava/lang/String;
    :cond_c
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v53, v0

    move-object/from16 v0, v16

    .line 1088
    .local v0, "_tmpEchoData":Ljava/lang/String;
    .local v53, "_cursorIndexOfEchoData":I
    :goto_d
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setEchoData(Ljava/lang/String;)V

    .line 1090
    move-object/from16 v16, v0

    move/from16 v0, v17

    .end local v17    # "_cursorIndexOfCardLabel":I
    .local v0, "_cursorIndexOfCardLabel":I
    .restart local v16    # "_tmpEchoData":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 1091
    const/16 v17, 0x0

    move/from16 v54, v0

    move-object/from16 v0, v17

    .local v17, "_tmpCardLabel":Ljava/lang/String;
    goto :goto_e

    .line 1093
    .end local v17    # "_tmpCardLabel":Ljava/lang/String;
    :cond_d
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v54, v0

    move-object/from16 v0, v17

    .line 1095
    .local v0, "_tmpCardLabel":Ljava/lang/String;
    .local v54, "_cursorIndexOfCardLabel":I
    :goto_e
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardLabel(Ljava/lang/String;)V

    .line 1097
    move-object/from16 v17, v0

    move/from16 v0, v18

    .end local v18    # "_cursorIndexOfCardExpiry":I
    .local v0, "_cursorIndexOfCardExpiry":I
    .restart local v17    # "_tmpCardLabel":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1098
    const/16 v18, 0x0

    move/from16 v55, v0

    move-object/from16 v0, v18

    .local v18, "_tmpCardExpiry":Ljava/lang/String;
    goto :goto_f

    .line 1100
    .end local v18    # "_tmpCardExpiry":Ljava/lang/String;
    :cond_e
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move/from16 v55, v0

    move-object/from16 v0, v18

    .line 1102
    .local v0, "_tmpCardExpiry":Ljava/lang/String;
    .local v55, "_cursorIndexOfCardExpiry":I
    :goto_f
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardExpiry(Ljava/lang/String;)V

    .line 1104
    move-object/from16 v18, v0

    move/from16 v0, v19

    .end local v19    # "_cursorIndexOfCardHolder":I
    .local v0, "_cursorIndexOfCardHolder":I
    .restart local v18    # "_tmpCardExpiry":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 1105
    const/16 v19, 0x0

    move/from16 v56, v0

    move-object/from16 v0, v19

    .local v19, "_tmpCardHolder":Ljava/lang/String;
    goto :goto_10

    .line 1107
    .end local v19    # "_tmpCardHolder":Ljava/lang/String;
    :cond_f
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v56, v0

    move-object/from16 v0, v19

    .line 1109
    .local v0, "_tmpCardHolder":Ljava/lang/String;
    .local v56, "_cursorIndexOfCardHolder":I
    :goto_10
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setCardHolder(Ljava/lang/String;)V

    .line 1111
    move-object/from16 v19, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfTVR":I
    .local v0, "_cursorIndexOfTVR":I
    .restart local v19    # "_tmpCardHolder":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 1112
    const/16 v20, 0x0

    move/from16 v57, v0

    move-object/from16 v0, v20

    .local v20, "_tmpTVR":Ljava/lang/String;
    goto :goto_11

    .line 1114
    .end local v20    # "_tmpTVR":Ljava/lang/String;
    :cond_10
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v57, v0

    move-object/from16 v0, v20

    .line 1116
    .local v0, "_tmpTVR":Ljava/lang/String;
    .local v57, "_cursorIndexOfTVR":I
    :goto_11
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTVR(Ljava/lang/String;)V

    .line 1118
    move-object/from16 v20, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfTSI":I
    .local v0, "_cursorIndexOfTSI":I
    .restart local v20    # "_tmpTVR":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 1119
    const/16 v21, 0x0

    move/from16 v58, v0

    move-object/from16 v0, v21

    .local v21, "_tmpTSI":Ljava/lang/String;
    goto :goto_12

    .line 1121
    .end local v21    # "_tmpTSI":Ljava/lang/String;
    :cond_11
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v58, v0

    move-object/from16 v0, v21

    .line 1123
    .local v0, "_tmpTSI":Ljava/lang/String;
    .local v58, "_cursorIndexOfTSI":I
    :goto_12
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTSI(Ljava/lang/String;)V

    .line 1125
    move-object/from16 v21, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfAID":I
    .local v0, "_cursorIndexOfAID":I
    .restart local v21    # "_tmpTSI":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 1126
    const/16 v22, 0x0

    move/from16 v59, v0

    move-object/from16 v0, v22

    .local v22, "_tmpAID":Ljava/lang/String;
    goto :goto_13

    .line 1128
    .end local v22    # "_tmpAID":Ljava/lang/String;
    :cond_12
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v59, v0

    move-object/from16 v0, v22

    .line 1130
    .local v0, "_tmpAID":Ljava/lang/String;
    .local v59, "_cursorIndexOfAID":I
    :goto_13
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAID(Ljava/lang/String;)V

    .line 1132
    move-object/from16 v22, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfAppCryptogram":I
    .local v0, "_cursorIndexOfAppCryptogram":I
    .restart local v22    # "_tmpAID":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 1133
    const/16 v23, 0x0

    move/from16 v60, v0

    move-object/from16 v0, v23

    .local v23, "_tmpAppCryptogram":Ljava/lang/String;
    goto :goto_14

    .line 1135
    .end local v23    # "_tmpAppCryptogram":Ljava/lang/String;
    :cond_13
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move/from16 v60, v0

    move-object/from16 v0, v23

    .line 1137
    .local v0, "_tmpAppCryptogram":Ljava/lang/String;
    .local v60, "_cursorIndexOfAppCryptogram":I
    :goto_14
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAppCryptogram(Ljava/lang/String;)V

    .line 1139
    move-object/from16 v23, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfTransactionTimeInMillis":I
    .local v0, "_cursorIndexOfTransactionTimeInMillis":I
    .restart local v23    # "_tmpAppCryptogram":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v61

    move-wide/from16 v63, v61

    .line 1140
    .local v63, "_tmpTransactionTimeInMillis":J
    move-wide/from16 v61, v3

    move-wide/from16 v3, v63

    .end local v63    # "_tmpTransactionTimeInMillis":J
    .local v3, "_tmpTransactionTimeInMillis":J
    .local v61, "_tmpOtherAmount":J
    invoke-virtual {v15, v3, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTransactionTimeInMillis(J)V

    .line 1143
    move/from16 v24, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfAccountType":I
    .local v0, "_cursorIndexOfAccountType":I
    .restart local v24    # "_cursorIndexOfTransactionTimeInMillis":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 1144
    const/16 v25, 0x0

    .local v25, "_tmp_2":Ljava/lang/String;
    goto :goto_15

    .line 1146
    .end local v25    # "_tmp_2":Ljava/lang/String;
    :cond_14
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1148
    .restart local v25    # "_tmp_2":Ljava/lang/String;
    :goto_15
    invoke-static/range {v25 .. v25}, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters;->convertIsoAccountStringToEnum(Ljava/lang/String;)Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v63

    move-object/from16 v64, v63

    .line 1149
    .local v64, "_tmpAccountType":Lcom/danbamitale/epmslib/utils/IsoAccountType;
    move/from16 v63, v0

    move-object/from16 v0, v64

    .end local v64    # "_tmpAccountType":Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .local v0, "_tmpAccountType":Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .local v63, "_cursorIndexOfAccountType":I
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setAccountType(Lcom/danbamitale/epmslib/utils/IsoAccountType;)V

    .line 1151
    move-object/from16 v64, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfTerminalId":I
    .local v0, "_cursorIndexOfTerminalId":I
    .restart local v64    # "_tmpAccountType":Lcom/danbamitale/epmslib/utils/IsoAccountType;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 1152
    const/16 v26, 0x0

    move/from16 v65, v0

    move-object/from16 v0, v26

    .local v26, "_tmpTerminalId":Ljava/lang/String;
    goto :goto_16

    .line 1154
    .end local v26    # "_tmpTerminalId":Ljava/lang/String;
    :cond_15
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v65, v0

    move-object/from16 v0, v26

    .line 1156
    .local v0, "_tmpTerminalId":Ljava/lang/String;
    .local v65, "_cursorIndexOfTerminalId":I
    :goto_16
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setTerminalId(Ljava/lang/String;)V

    .line 1158
    move-object/from16 v26, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfMerchantId":I
    .local v0, "_cursorIndexOfMerchantId":I
    .restart local v26    # "_tmpTerminalId":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_16

    .line 1159
    const/16 v27, 0x0

    move/from16 v66, v0

    move-object/from16 v0, v27

    .local v27, "_tmpMerchantId":Ljava/lang/String;
    goto :goto_17

    .line 1161
    .end local v27    # "_tmpMerchantId":Ljava/lang/String;
    :cond_16
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move/from16 v66, v0

    move-object/from16 v0, v27

    .line 1163
    .local v0, "_tmpMerchantId":Ljava/lang/String;
    .local v66, "_cursorIndexOfMerchantId":I
    :goto_17
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setMerchantId(Ljava/lang/String;)V

    .line 1165
    move-object/from16 v27, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfOtherId":I
    .local v0, "_cursorIndexOfOtherId":I
    .restart local v27    # "_tmpMerchantId":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_17

    .line 1166
    const/16 v28, 0x0

    move/from16 v67, v0

    move-object/from16 v0, v28

    .local v28, "_tmpOtherId":Ljava/lang/String;
    goto :goto_18

    .line 1168
    .end local v28    # "_tmpOtherId":Ljava/lang/String;
    :cond_17
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move/from16 v67, v0

    move-object/from16 v0, v28

    .line 1170
    .local v0, "_tmpOtherId":Ljava/lang/String;
    .local v67, "_cursorIndexOfOtherId":I
    :goto_18
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setOtherId(Ljava/lang/String;)V

    .line 1172
    move-object/from16 v28, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfId":I
    .local v0, "_cursorIndexOfId":I
    .restart local v28    # "_tmpOtherId":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v68

    move-wide/from16 v70, v68

    .line 1173
    .local v70, "_tmpId":J
    move-wide/from16 v68, v3

    move-wide/from16 v3, v70

    .end local v70    # "_tmpId":J
    .local v3, "_tmpId":J
    .local v68, "_tmpTransactionTimeInMillis":J
    invoke-virtual {v15, v3, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setId(J)V

    .line 1175
    move-wide/from16 v70, v3

    move-object/from16 v3, p0

    .end local v3    # "_tmpId":J
    .restart local v70    # "_tmpId":J
    iget-object v4, v3, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$7;->this$0:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

    move/from16 v29, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfSource":I
    .local v0, "_cursorIndexOfSource":I
    .restart local v29    # "_cursorIndexOfId":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->access$400(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/PosMode;

    move-result-object v3

    .line 1176
    .local v3, "_tmpSource":Lcom/danbamitale/epmslib/entities/PosMode;
    invoke-virtual {v15, v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setSource(Lcom/danbamitale/epmslib/entities/PosMode;)V

    .line 1178
    move/from16 v4, v31

    .end local v31    # "_cursorIndexOfInterSwitchThreshold":I
    .local v4, "_cursorIndexOfInterSwitchThreshold":I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-wide/from16 v72, v30

    .line 1179
    .local v72, "_tmpInterSwitchThreshold":J
    move-object/from16 v30, v3

    move/from16 v31, v4

    move-wide/from16 v3, v72

    .end local v4    # "_cursorIndexOfInterSwitchThreshold":I
    .end local v72    # "_tmpInterSwitchThreshold":J
    .local v3, "_tmpInterSwitchThreshold":J
    .local v30, "_tmpSource":Lcom/danbamitale/epmslib/entities/PosMode;
    .restart local v31    # "_cursorIndexOfInterSwitchThreshold":I
    invoke-virtual {v15, v3, v4}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setInterSwitchThreshold(J)V

    .line 1181
    move/from16 v72, v0

    move/from16 v0, v32

    .end local v32    # "_cursorIndexOfResponseMessage":I
    .local v0, "_cursorIndexOfResponseMessage":I
    .local v72, "_cursorIndexOfSource":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_18

    .line 1182
    const/16 v32, 0x0

    move/from16 v73, v0

    move-object/from16 v0, v32

    .local v32, "_tmpResponseMessage":Ljava/lang/String;
    goto :goto_19

    .line 1184
    .end local v32    # "_tmpResponseMessage":Ljava/lang/String;
    :cond_18
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move/from16 v73, v0

    move-object/from16 v0, v32

    .line 1186
    .local v0, "_tmpResponseMessage":Ljava/lang/String;
    .local v73, "_cursorIndexOfResponseMessage":I
    :goto_19
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setResponseMessage(Ljava/lang/String;)V

    .line 1188
    move-object/from16 v32, v0

    move/from16 v0, v33

    .end local v33    # "_cursorIndexOfErrorMessage":I
    .local v0, "_cursorIndexOfErrorMessage":I
    .restart local v32    # "_tmpResponseMessage":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_19

    .line 1189
    const/16 v33, 0x0

    move/from16 v74, v0

    move-object/from16 v0, v33

    .local v33, "_tmpErrorMessage":Ljava/lang/String;
    goto :goto_1a

    .line 1191
    .end local v33    # "_tmpErrorMessage":Ljava/lang/String;
    :cond_19
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move/from16 v74, v0

    move-object/from16 v0, v33

    .line 1193
    .local v0, "_tmpErrorMessage":Ljava/lang/String;
    .local v74, "_cursorIndexOfErrorMessage":I
    :goto_1a
    invoke-virtual {v15, v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->setErrorMessage(Ljava/lang/String;)V

    .line 1194
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    move/from16 v0, v36

    move/from16 v3, v37

    move/from16 v4, v39

    move/from16 v34, v52

    move/from16 v16, v53

    move/from16 v17, v54

    move/from16 v18, v55

    move/from16 v19, v56

    move/from16 v20, v57

    move/from16 v21, v58

    move/from16 v22, v59

    move/from16 v23, v60

    move/from16 v25, v63

    move/from16 v26, v65

    move/from16 v27, v66

    move/from16 v28, v67

    move/from16 v30, v72

    move/from16 v32, v73

    move/from16 v33, v74

    .end local v0    # "_tmpErrorMessage":Ljava/lang/String;
    .end local v3    # "_tmpInterSwitchThreshold":J
    .end local v15    # "_item":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v16    # "_tmpEchoData":Ljava/lang/String;
    .end local v17    # "_tmpCardLabel":Ljava/lang/String;
    .end local v18    # "_tmpCardExpiry":Ljava/lang/String;
    .end local v19    # "_tmpCardHolder":Ljava/lang/String;
    .end local v20    # "_tmpTVR":Ljava/lang/String;
    .end local v21    # "_tmpTSI":Ljava/lang/String;
    .end local v22    # "_tmpAID":Ljava/lang/String;
    .end local v23    # "_tmpAppCryptogram":Ljava/lang/String;
    .end local v25    # "_tmp_2":Ljava/lang/String;
    .end local v26    # "_tmpTerminalId":Ljava/lang/String;
    .end local v27    # "_tmpMerchantId":Ljava/lang/String;
    .end local v28    # "_tmpOtherId":Ljava/lang/String;
    .end local v30    # "_tmpSource":Lcom/danbamitale/epmslib/entities/PosMode;
    .end local v32    # "_tmpResponseMessage":Ljava/lang/String;
    .end local v34    # "_tmpAdditionalAmount_54":Ljava/lang/String;
    .end local v35    # "_tmp_1":Ljava/lang/String;
    .end local v38    # "_tmpTransactionType":Lcom/danbamitale/epmslib/entities/TransactionType;
    .end local v40    # "_tmpResponseCode":Ljava/lang/String;
    .end local v41    # "_tmpMaskedPan":Ljava/lang/String;
    .end local v42    # "_tmpTransmissionDateTime":Ljava/lang/String;
    .end local v43    # "_tmpSTAN":Ljava/lang/String;
    .end local v44    # "_tmpRRN":Ljava/lang/String;
    .end local v45    # "_tmpLocalTime_12":Ljava/lang/String;
    .end local v46    # "_tmpAmount":J
    .end local v48    # "_tmpLocalDate_13":Ljava/lang/String;
    .end local v49    # "_tmpAcquiringInstCode":Ljava/lang/String;
    .end local v50    # "_tmpOriginalForwardingInstCode":Ljava/lang/String;
    .end local v51    # "_tmpAuthCode":Ljava/lang/String;
    .end local v61    # "_tmpOtherAmount":J
    .end local v64    # "_tmpAccountType":Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .end local v68    # "_tmpTransactionTimeInMillis":J
    .end local v70    # "_tmpId":J
    goto/16 :goto_0

    .line 1196
    .end local v36    # "_cursorIndexOfTransactionType":I
    .end local v37    # "_cursorIndexOfMaskedPan":I
    .end local v39    # "_cursorIndexOfAmount":I
    .end local v52    # "_cursorIndexOfAdditionalAmount54":I
    .end local v53    # "_cursorIndexOfEchoData":I
    .end local v54    # "_cursorIndexOfCardLabel":I
    .end local v55    # "_cursorIndexOfCardExpiry":I
    .end local v56    # "_cursorIndexOfCardHolder":I
    .end local v57    # "_cursorIndexOfTVR":I
    .end local v58    # "_cursorIndexOfTSI":I
    .end local v59    # "_cursorIndexOfAID":I
    .end local v60    # "_cursorIndexOfAppCryptogram":I
    .end local v63    # "_cursorIndexOfAccountType":I
    .end local v65    # "_cursorIndexOfTerminalId":I
    .end local v66    # "_cursorIndexOfMerchantId":I
    .end local v67    # "_cursorIndexOfOtherId":I
    .end local v72    # "_cursorIndexOfSource":I
    .end local v73    # "_cursorIndexOfResponseMessage":I
    .end local v74    # "_cursorIndexOfErrorMessage":I
    .local v0, "_cursorIndexOfTransactionType":I
    .local v3, "_cursorIndexOfMaskedPan":I
    .local v4, "_cursorIndexOfAmount":I
    .local v16, "_cursorIndexOfEchoData":I
    .local v17, "_cursorIndexOfCardLabel":I
    .local v18, "_cursorIndexOfCardExpiry":I
    .local v19, "_cursorIndexOfCardHolder":I
    .local v20, "_cursorIndexOfTVR":I
    .local v21, "_cursorIndexOfTSI":I
    .local v22, "_cursorIndexOfAID":I
    .local v23, "_cursorIndexOfAppCryptogram":I
    .local v25, "_cursorIndexOfAccountType":I
    .local v26, "_cursorIndexOfTerminalId":I
    .local v27, "_cursorIndexOfMerchantId":I
    .local v28, "_cursorIndexOfOtherId":I
    .local v30, "_cursorIndexOfSource":I
    .local v32, "_cursorIndexOfResponseMessage":I
    .local v33, "_cursorIndexOfErrorMessage":I
    .local v34, "_cursorIndexOfAdditionalAmount54":I
    :cond_1a
    nop

    .line 1198
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1196
    return-object v1

    .line 1198
    .end local v0    # "_cursorIndexOfTransactionType":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/danbamitale/epmslib/entities/TransactionResponse;>;"
    .end local v3    # "_cursorIndexOfMaskedPan":I
    .end local v4    # "_cursorIndexOfAmount":I
    .end local v5    # "_cursorIndexOfTransmissionDateTime":I
    .end local v6    # "_cursorIndexOfSTAN":I
    .end local v7    # "_cursorIndexOfRRN":I
    .end local v8    # "_cursorIndexOfLocalTime12":I
    .end local v9    # "_cursorIndexOfLocalDate13":I
    .end local v10    # "_cursorIndexOfOtherAmount":I
    .end local v11    # "_cursorIndexOfAcquiringInstCode":I
    .end local v12    # "_cursorIndexOfOriginalForwardingInstCode":I
    .end local v13    # "_cursorIndexOfAuthCode":I
    .end local v14    # "_cursorIndexOfResponseCode":I
    .end local v16    # "_cursorIndexOfEchoData":I
    .end local v17    # "_cursorIndexOfCardLabel":I
    .end local v18    # "_cursorIndexOfCardExpiry":I
    .end local v19    # "_cursorIndexOfCardHolder":I
    .end local v20    # "_cursorIndexOfTVR":I
    .end local v21    # "_cursorIndexOfTSI":I
    .end local v22    # "_cursorIndexOfAID":I
    .end local v23    # "_cursorIndexOfAppCryptogram":I
    .end local v24    # "_cursorIndexOfTransactionTimeInMillis":I
    .end local v25    # "_cursorIndexOfAccountType":I
    .end local v26    # "_cursorIndexOfTerminalId":I
    .end local v27    # "_cursorIndexOfMerchantId":I
    .end local v28    # "_cursorIndexOfOtherId":I
    .end local v29    # "_cursorIndexOfId":I
    .end local v30    # "_cursorIndexOfSource":I
    .end local v31    # "_cursorIndexOfInterSwitchThreshold":I
    .end local v32    # "_cursorIndexOfResponseMessage":I
    .end local v33    # "_cursorIndexOfErrorMessage":I
    .end local v34    # "_cursorIndexOfAdditionalAmount54":I
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1199
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 1204
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1205
    return-void
.end method
