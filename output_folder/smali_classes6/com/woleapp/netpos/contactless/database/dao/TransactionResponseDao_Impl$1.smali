.class Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "TransactionResponseDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;
    .param p2, "database"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$1;->this$0:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/danbamitale/epmslib/entities/TransactionResponse;)V
    .locals 5
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 50
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransactionType()Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v0

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters;->convertTransactionResponseEnumToString(Lcom/danbamitale/epmslib/entities/TransactionType;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_tmp":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 52
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 56
    :goto_0
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getMaskedPan()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    .line 57
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getMaskedPan()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 61
    :goto_1
    const/4 v1, 0x3

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAmount()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 62
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransmissionDateTime()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    if-nez v1, :cond_2

    .line 63
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransmissionDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 67
    :goto_2
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getSTAN()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    if-nez v1, :cond_3

    .line 68
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 70
    :cond_3
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getSTAN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 72
    :goto_3
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getRRN()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    if-nez v1, :cond_4

    .line 73
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 75
    :cond_4
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getRRN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 77
    :goto_4
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getLocalTime_12()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    if-nez v1, :cond_5

    .line 78
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 80
    :cond_5
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getLocalTime_12()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 82
    :goto_5
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getLocalDate_13()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    if-nez v1, :cond_6

    .line 83
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getLocalDate_13()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 87
    :goto_6
    const/16 v1, 0x9

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOtherAmount()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 88
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAcquiringInstCode()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    if-nez v1, :cond_7

    .line 89
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 91
    :cond_7
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAcquiringInstCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 93
    :goto_7
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOriginalForwardingInstCode()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    if-nez v1, :cond_8

    .line 94
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 96
    :cond_8
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOriginalForwardingInstCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 98
    :goto_8
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    if-nez v1, :cond_9

    .line 99
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_9

    .line 101
    :cond_9
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 103
    :goto_9
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    if-nez v1, :cond_a

    .line 104
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_a

    .line 106
    :cond_a
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 108
    :goto_a
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAdditionalAmount_54()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    if-nez v1, :cond_b

    .line 109
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_b

    .line 111
    :cond_b
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAdditionalAmount_54()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 113
    :goto_b
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getEchoData()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    if-nez v1, :cond_c

    .line 114
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_c

    .line 116
    :cond_c
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getEchoData()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 118
    :goto_c
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardLabel()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    if-nez v1, :cond_d

    .line 119
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_d

    .line 121
    :cond_d
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 123
    :goto_d
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardExpiry()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    if-nez v1, :cond_e

    .line 124
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_e

    .line 126
    :cond_e
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardExpiry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 128
    :goto_e
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardHolder()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    if-nez v1, :cond_f

    .line 129
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_f

    .line 131
    :cond_f
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardHolder()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 133
    :goto_f
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTVR()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    if-nez v1, :cond_10

    .line 134
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_10

    .line 136
    :cond_10
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTVR()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 138
    :goto_10
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTSI()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    if-nez v1, :cond_11

    .line 139
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_11

    .line 141
    :cond_11
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTSI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 143
    :goto_11
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAID()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    if-nez v1, :cond_12

    .line 144
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_12

    .line 146
    :cond_12
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 148
    :goto_12
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAppCryptogram()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    if-nez v1, :cond_13

    .line 149
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_13

    .line 151
    :cond_13
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAppCryptogram()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 153
    :goto_13
    const/16 v1, 0x17

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransactionTimeInMillis()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 155
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAccountType()Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v1

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters;->convertIsoAccountEnumToString(Lcom/danbamitale/epmslib/utils/IsoAccountType;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "_tmp_1":Ljava/lang/String;
    const/16 v2, 0x18

    if-nez v1, :cond_14

    .line 157
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_14

    .line 159
    :cond_14
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 161
    :goto_14
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTerminalId()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19

    if-nez v2, :cond_15

    .line 162
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_15

    .line 164
    :cond_15
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTerminalId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 166
    :goto_15
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getMerchantId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    .line 167
    const/16 v2, 0x1a

    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_16

    .line 169
    :cond_16
    const/16 v2, 0x1a

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getMerchantId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 171
    :goto_16
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOtherId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    .line 172
    const/16 v2, 0x1b

    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_17

    .line 174
    :cond_17
    const/16 v2, 0x1b

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOtherId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 176
    :goto_17
    const/16 v2, 0x1c

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getId()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 177
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getSource()Lcom/danbamitale/epmslib/entities/PosMode;

    move-result-object v2

    if-nez v2, :cond_18

    .line 178
    const/16 v2, 0x1d

    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_18

    .line 180
    :cond_18
    const/16 v2, 0x1d

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$1;->this$0:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getSource()Lcom/danbamitale/epmslib/entities/PosMode;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->access$000(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;Lcom/danbamitale/epmslib/entities/PosMode;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 182
    :goto_18
    const/16 v2, 0x1e

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getInterSwitchThreshold()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 183
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    .line 184
    const/16 v2, 0x1f

    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_19

    .line 186
    :cond_19
    const/16 v2, 0x1f

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 188
    :goto_19
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 189
    const/16 v2, 0x20

    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1a

    .line 191
    :cond_1a
    const/16 v2, 0x20

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 193
    :goto_1a
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 41
    check-cast p2, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-virtual {p0, p1, p2}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/danbamitale/epmslib/entities/TransactionResponse;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "INSERT OR ABORT INTO `TransactionResponse` (`transactionType`,`maskedPan`,`amount`,`transmissionDateTime`,`STAN`,`RRN`,`localTime_12`,`localDate_13`,`otherAmount`,`acquiringInstCode`,`originalForwardingInstCode`,`authCode`,`responseCode`,`additionalAmount_54`,`echoData`,`cardLabel`,`cardExpiry`,`cardHolder`,`TVR`,`TSI`,`AID`,`appCryptogram`,`transactionTimeInMillis`,`accountType`,`terminalId`,`merchantId`,`otherId`,`id`,`source`,`interSwitchThreshold`,`responseMessage`,`errorMessage`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
