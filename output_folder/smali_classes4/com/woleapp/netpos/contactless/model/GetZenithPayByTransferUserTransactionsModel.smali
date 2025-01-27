.class public final Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;
.super Ljava/lang/Object;
.source "GetZenithPayByTransferUserTransactionsModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008$\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000fJ\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\t\u0010#\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010%\u001a\u00020\u0005H\u00c6\u0003J\t\u0010&\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0005H\u00c6\u0003Jy\u0010(\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010,\u001a\u00020\u0003H\u00d6\u0001J\u0008\u0010-\u001a\u00020\u0005H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013R\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0013R\u0011\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0013R\u0011\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0013R\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0013R\u0011\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0013\u00a8\u0006."
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;",
        "",
        "amount",
        "",
        "bank",
        "",
        "details",
        "merchantId",
        "paid_at",
        "partnerId",
        "payer_account_name",
        "payer_account_number",
        "recipient_account_number",
        "terminalId",
        "transaction_reference",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAmount",
        "()I",
        "getBank",
        "()Ljava/lang/String;",
        "getDetails",
        "getMerchantId",
        "getPaid_at",
        "getPartnerId",
        "getPayer_account_name",
        "getPayer_account_number",
        "getRecipient_account_number",
        "getTerminalId",
        "getTransaction_reference",
        "component1",
        "component10",
        "component11",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final amount:I

.field private final bank:Ljava/lang/String;

.field private final details:Ljava/lang/String;

.field private final merchantId:Ljava/lang/String;

.field private final paid_at:Ljava/lang/String;

.field private final partnerId:Ljava/lang/String;

.field private final payer_account_name:Ljava/lang/String;

.field private final payer_account_number:Ljava/lang/String;

.field private final recipient_account_number:Ljava/lang/String;

.field private final terminalId:Ljava/lang/String;

.field private final transaction_reference:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "amount"    # I
    .param p2, "bank"    # Ljava/lang/String;
    .param p3, "details"    # Ljava/lang/String;
    .param p4, "merchantId"    # Ljava/lang/String;
    .param p5, "paid_at"    # Ljava/lang/String;
    .param p6, "partnerId"    # Ljava/lang/String;
    .param p7, "payer_account_name"    # Ljava/lang/String;
    .param p8, "payer_account_number"    # Ljava/lang/String;
    .param p9, "recipient_account_number"    # Ljava/lang/String;
    .param p10, "terminalId"    # Ljava/lang/String;
    .param p11, "transaction_reference"    # Ljava/lang/String;

    const-string v0, "bank"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "details"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "merchantId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paid_at"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payer_account_name"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payer_account_number"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient_account_number"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalId"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transaction_reference"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->amount:I

    .line 12
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->bank:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->details:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->merchantId:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->paid_at:Ljava/lang/String;

    .line 16
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->partnerId:Ljava/lang/String;

    .line 17
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->payer_account_name:Ljava/lang/String;

    .line 18
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->payer_account_number:Ljava/lang/String;

    .line 19
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->recipient_account_number:Ljava/lang/String;

    .line 20
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->terminalId:Ljava/lang/String;

    .line 21
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->transaction_reference:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static synthetic copy$default(Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->amount:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->bank:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->details:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->merchantId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->paid_at:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->partnerId:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->payer_account_name:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->payer_account_number:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->recipient_account_number:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->terminalId:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->transaction_reference:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p11

    :goto_a
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->amount:I

    return v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->terminalId:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->transaction_reference:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->bank:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->details:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->merchantId:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->paid_at:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->partnerId:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->payer_account_name:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->payer_account_number:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->recipient_account_number:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;
    .locals 16

    const-string v0, "bank"

    move-object/from16 v13, p2

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "details"

    move-object/from16 v14, p3

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "merchantId"

    move-object/from16 v15, p4

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paid_at"

    move-object/from16 v12, p5

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payer_account_name"

    move-object/from16 v11, p7

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payer_account_number"

    move-object/from16 v10, p8

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient_account_number"

    move-object/from16 v9, p9

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalId"

    move-object/from16 v8, p10

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transaction_reference"

    move-object/from16 v7, p11

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;

    move-object v1, v0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;

    iget v3, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->amount:I

    iget v4, v1, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->amount:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->bank:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->bank:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->details:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->details:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->merchantId:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->merchantId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->paid_at:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->paid_at:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->partnerId:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->partnerId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->payer_account_name:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->payer_account_name:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->payer_account_number:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->payer_account_number:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->recipient_account_number:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->recipient_account_number:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->terminalId:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->terminalId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->transaction_reference:Ljava/lang/String;

    iget-object v1, v1, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->transaction_reference:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAmount()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->amount:I

    return v0
.end method

.method public final getBank()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->bank:Ljava/lang/String;

    return-object v0
.end method

.method public final getDetails()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->details:Ljava/lang/String;

    return-object v0
.end method

.method public final getMerchantId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->merchantId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaid_at()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->paid_at:Ljava/lang/String;

    return-object v0
.end method

.method public final getPartnerId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->partnerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayer_account_name()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->payer_account_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayer_account_number()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->payer_account_number:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecipient_account_number()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->recipient_account_number:Ljava/lang/String;

    return-object v0
.end method

.method public final getTerminalId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->terminalId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransaction_reference()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->transaction_reference:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->amount:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->bank:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->details:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->merchantId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->paid_at:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->partnerId:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->payer_account_name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->payer_account_number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->recipient_account_number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->terminalId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->transaction_reference:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b>Amount: &nbsp;&nbsp;</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    iget v2, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->amount:I

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->formatAmountToNaira(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <br /><b>Payer\'s Name:</b><br /> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->payer_account_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <br /><br /><b>Payer\' Account Number: &nbsp;&nbsp;</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->payer_account_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <br /><b>Paid at: &nbsp;&nbsp;</b> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->paid_at:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->getDateFromZenithPbtTransDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    nop

    .line 24
    const-string v1, "<br /><br /> <b>Transaction Details: </b><br />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->details:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    nop

    .line 24
    const-string v1, " <br /><br /><b>Transaction Reference:  </b><br />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->transaction_reference:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
