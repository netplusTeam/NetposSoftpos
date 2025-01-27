.class public final Lcom/danbamitale/epmslib/entities/TransactionResponseKt;
.super Ljava/lang/Object;
.source "TransactionResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u001a\u000e\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013\u001a\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\nH\u0002\u001a\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0015\u001a\u00020\n\"\u001b\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\"\u0015\u0010\u0006\u001a\u00020\u0007*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0008\"\u0017\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\"\u0017\u0010\r\u001a\u0004\u0018\u00010\n*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000c\"\u0017\u0010\u000f\u001a\u0004\u0018\u00010\n*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "accountBalances",
        "",
        "Lcom/danbamitale/epmslib/entities/AccountBalance;",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "getAccountBalances",
        "(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Ljava/util/List;",
        "isApproved",
        "",
        "(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Z",
        "issuerAuthData91",
        "",
        "getIssuerAuthData91",
        "(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Ljava/lang/String;",
        "issuerScript71",
        "getIssuerScript71",
        "issuerScript72",
        "getIssuerScript72",
        "currencySymbolFromCode",
        "code",
        "",
        "parseAdditionalAmountString",
        "inputString",
        "parseField54AdditionalAmount",
        "epmslib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final currencySymbolFromCode(I)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # I

    .line 123
    sparse-switch p0, :sswitch_data_0

    .line 132
    const-string v0, "    "

    goto :goto_0

    .line 126
    :sswitch_0
    const-string/jumbo v0, "\u20ac "

    goto :goto_0

    .line 130
    :sswitch_1
    const-string v0, "XOF "

    goto :goto_0

    .line 131
    :sswitch_2
    const-string v0, "XAF "

    goto :goto_0

    .line 125
    :sswitch_3
    const-string v0, "$ "

    goto :goto_0

    .line 127
    :sswitch_4
    const-string/jumbo v0, "\u00a3 "

    goto :goto_0

    .line 124
    :sswitch_5
    const-string/jumbo v0, "\u20a6 "

    goto :goto_0

    .line 128
    :sswitch_6
    const-string/jumbo v0, "\u00a5 "

    goto :goto_0

    .line 129
    :sswitch_7
    const-string v0, "AUD "

    .line 133
    :goto_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_7
        0x9c -> :sswitch_6
        0x236 -> :sswitch_5
        0x33a -> :sswitch_4
        0x348 -> :sswitch_3
        0x3b6 -> :sswitch_2
        0x3b8 -> :sswitch_1
        0x3d2 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final getAccountBalances(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Ljava/util/List;
    .locals 1
    .param p0, "$this$accountBalances"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/AccountBalance;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAdditionalAmount_54()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponseKt;->parseField54AdditionalAmount(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final getIssuerAuthData91(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Ljava/lang/String;
    .locals 4
    .param p0, "$this$issuerAuthData91"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseDE55()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 66
    .local v1, "$i$a$-let-TransactionResponseKt$issuerAuthData91$1":I
    invoke-static {v0}, Lcom/danbamitale/epmslib/tlv/TLVList;->fromBinary(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLVList;

    move-result-object v2

    .line 67
    .local v2, "tlvList":Lcom/danbamitale/epmslib/tlv/TLVList;
    const-string v3, "91"

    invoke-virtual {v2, v3}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLVVL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-TransactionResponseKt$issuerAuthData91$1":I
    .end local v2    # "tlvList":Lcom/danbamitale/epmslib/tlv/TLVList;
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final getIssuerScript71(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Ljava/lang/String;
    .locals 4
    .param p0, "$this$issuerScript71"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseDE55()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 74
    .local v1, "$i$a$-let-TransactionResponseKt$issuerScript71$1":I
    invoke-static {v0}, Lcom/danbamitale/epmslib/tlv/TLVList;->fromBinary(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLVList;

    move-result-object v2

    .line 75
    .local v2, "tlvList":Lcom/danbamitale/epmslib/tlv/TLVList;
    const-string v3, "71"

    invoke-virtual {v2, v3}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLVVL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-TransactionResponseKt$issuerScript71$1":I
    .end local v2    # "tlvList":Lcom/danbamitale/epmslib/tlv/TLVList;
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final getIssuerScript72(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Ljava/lang/String;
    .locals 4
    .param p0, "$this$issuerScript72"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseDE55()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 82
    .local v1, "$i$a$-let-TransactionResponseKt$issuerScript72$1":I
    invoke-static {v0}, Lcom/danbamitale/epmslib/tlv/TLVList;->fromBinary(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLVList;

    move-result-object v2

    .line 83
    .local v2, "tlvList":Lcom/danbamitale/epmslib/tlv/TLVList;
    const-string v3, "72"

    invoke-virtual {v2, v3}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLVVL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-TransactionResponseKt$issuerScript72$1":I
    .end local v2    # "tlvList":Lcom/danbamitale/epmslib/tlv/TLVList;
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final isApproved(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Z
    .locals 2
    .param p0, "$this$isApproved"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "00"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final parseAdditionalAmountString(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/AccountBalance;
    .locals 12
    .param p0, "inputString"    # Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 101
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->Companion:Lcom/danbamitale/epmslib/utils/IsoAccountType$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/danbamitale/epmslib/utils/IsoAccountType$Companion;->parseIntAccountType(I)Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v0

    .line 102
    .local v0, "accountType":Lcom/danbamitale/epmslib/utils/IsoAccountType;
    const/4 v2, 0x4

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .local v7, "amountType":Ljava/lang/String;
    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .local v8, "currencyCode":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 105
    .local v2, "amountSign":C
    const/16 v3, 0x8

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 107
    .local v3, "amount":J
    new-instance v1, Lcom/danbamitale/epmslib/entities/AccountBalance;

    move-object v5, v1

    move-object v6, v0

    move v9, v2

    move-wide v10, v3

    invoke-direct/range {v5 .. v11}, Lcom/danbamitale/epmslib/entities/AccountBalance;-><init>(Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;CJ)V

    return-object v1

    .line 99
    .end local v0    # "accountType":Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .end local v2    # "amountSign":C
    .end local v3    # "amount":J
    .end local v7    # "amountType":Ljava/lang/String;
    .end local v8    # "currencyCode":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid string"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseField54AdditionalAmount(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "inputString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/AccountBalance;",
            ">;"
        }
    .end annotation

    const-string v0, "inputString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "list":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .line 116
    .local v2, "count":I
    :goto_0
    add-int/lit8 v3, v2, 0x14

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/danbamitale/epmslib/entities/TransactionResponseKt;->parseAdditionalAmountString(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/AccountBalance;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v1

    .line 117
    nop

    .line 118
    add-int/lit8 v3, v2, 0x14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 120
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 118
    :cond_1
    goto :goto_0
.end method
