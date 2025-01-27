.class Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
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

    .line 195
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$2;->this$0:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

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

    .line 204
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransactionType()Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v0

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters;->convertTransactionResponseEnumToString(Lcom/danbamitale/epmslib/entities/TransactionType;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "_tmp":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 206
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 210
    :goto_0
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getMaskedPan()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    .line 211
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getMaskedPan()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 215
    :goto_1
    const/4 v1, 0x3

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAmount()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 216
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransmissionDateTime()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    if-nez v1, :cond_2

    .line 217
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 219
    :cond_2
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransmissionDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 221
    :goto_2
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getSTAN()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    if-nez v1, :cond_3

    .line 222
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 224
    :cond_3
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getSTAN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 226
    :goto_3
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getRRN()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    if-nez v1, :cond_4

    .line 227
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 229
    :cond_4
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getRRN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 231
    :goto_4
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getLocalTime_12()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    if-nez v1, :cond_5

    .line 232
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 234
    :cond_5
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getLocalTime_12()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 236
    :goto_5
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getLocalDate_13()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    if-nez v1, :cond_6

    .line 237
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 239
    :cond_6
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getLocalDate_13()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 241
    :goto_6
    const/16 v1, 0x9

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOtherAmount()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 242
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAcquiringInstCode()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    if-nez v1, :cond_7

    .line 243
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 245
    :cond_7
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAcquiringInstCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 247
    :goto_7
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOriginalForwardingInstCode()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    if-nez v1, :cond_8

    .line 248
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 250
    :cond_8
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOriginalForwardingInstCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 252
    :goto_8
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    if-nez v1, :cond_9

    .line 253
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_9

    .line 255
    :cond_9
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 257
    :goto_9
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    if-nez v1, :cond_a

    .line 258
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_a

    .line 260
    :cond_a
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 262
    :goto_a
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAdditionalAmount_54()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    if-nez v1, :cond_b

    .line 263
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_b

    .line 265
    :cond_b
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAdditionalAmount_54()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 267
    :goto_b
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getEchoData()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    if-nez v1, :cond_c

    .line 268
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_c

    .line 270
    :cond_c
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getEchoData()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 272
    :goto_c
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardLabel()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    if-nez v1, :cond_d

    .line 273
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_d

    .line 275
    :cond_d
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 277
    :goto_d
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardExpiry()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    if-nez v1, :cond_e

    .line 278
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_e

    .line 280
    :cond_e
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardExpiry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 282
    :goto_e
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardHolder()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    if-nez v1, :cond_f

    .line 283
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_f

    .line 285
    :cond_f
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardHolder()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 287
    :goto_f
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTVR()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    if-nez v1, :cond_10

    .line 288
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_10

    .line 290
    :cond_10
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTVR()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 292
    :goto_10
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTSI()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    if-nez v1, :cond_11

    .line 293
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_11

    .line 295
    :cond_11
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTSI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 297
    :goto_11
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAID()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    if-nez v1, :cond_12

    .line 298
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_12

    .line 300
    :cond_12
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 302
    :goto_12
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAppCryptogram()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    if-nez v1, :cond_13

    .line 303
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_13

    .line 305
    :cond_13
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAppCryptogram()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 307
    :goto_13
    const/16 v1, 0x17

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransactionTimeInMillis()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 309
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAccountType()Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v1

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters;->convertIsoAccountEnumToString(Lcom/danbamitale/epmslib/utils/IsoAccountType;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "_tmp_1":Ljava/lang/String;
    const/16 v2, 0x18

    if-nez v1, :cond_14

    .line 311
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_14

    .line 313
    :cond_14
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 315
    :goto_14
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTerminalId()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19

    if-nez v2, :cond_15

    .line 316
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_15

    .line 318
    :cond_15
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTerminalId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 320
    :goto_15
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getMerchantId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    .line 321
    const/16 v2, 0x1a

    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_16

    .line 323
    :cond_16
    const/16 v2, 0x1a

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getMerchantId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 325
    :goto_16
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOtherId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    .line 326
    const/16 v2, 0x1b

    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_17

    .line 328
    :cond_17
    const/16 v2, 0x1b

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOtherId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 330
    :goto_17
    const/16 v2, 0x1c

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getId()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 331
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getSource()Lcom/danbamitale/epmslib/entities/PosMode;

    move-result-object v2

    if-nez v2, :cond_18

    .line 332
    const/16 v2, 0x1d

    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_18

    .line 334
    :cond_18
    const/16 v2, 0x1d

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$2;->this$0:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getSource()Lcom/danbamitale/epmslib/entities/PosMode;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->access$000(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;Lcom/danbamitale/epmslib/entities/PosMode;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 336
    :goto_18
    const/16 v2, 0x1e

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getInterSwitchThreshold()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 337
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    .line 338
    const/16 v2, 0x1f

    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_19

    .line 340
    :cond_19
    const/16 v2, 0x1f

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 342
    :goto_19
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 343
    const/16 v2, 0x20

    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1a

    .line 345
    :cond_1a
    const/16 v2, 0x20

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 347
    :goto_1a
    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getRRN()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 348
    const/16 v2, 0x21

    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1b

    .line 350
    :cond_1b
    const/16 v2, 0x21

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getRRN()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 352
    :goto_1b
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

    .line 195
    check-cast p2, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-virtual {p0, p1, p2}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/danbamitale/epmslib/entities/TransactionResponse;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 198
    const-string v0, "UPDATE OR ABORT `TransactionResponse` SET `transactionType` = ?,`maskedPan` = ?,`amount` = ?,`transmissionDateTime` = ?,`STAN` = ?,`RRN` = ?,`localTime_12` = ?,`localDate_13` = ?,`otherAmount` = ?,`acquiringInstCode` = ?,`originalForwardingInstCode` = ?,`authCode` = ?,`responseCode` = ?,`additionalAmount_54` = ?,`echoData` = ?,`cardLabel` = ?,`cardExpiry` = ?,`cardHolder` = ?,`TVR` = ?,`TSI` = ?,`AID` = ?,`appCryptogram` = ?,`transactionTimeInMillis` = ?,`accountType` = ?,`terminalId` = ?,`merchantId` = ?,`otherId` = ?,`id` = ?,`source` = ?,`interSwitchThreshold` = ?,`responseMessage` = ?,`errorMessage` = ? WHERE `RRN` = ?"

    return-object v0
.end method
