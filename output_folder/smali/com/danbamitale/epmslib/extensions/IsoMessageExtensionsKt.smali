.class public final Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;
.super Ljava/lang/Object;
.source "IsoMessageExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u001a\u001d\u0010\u0005\u001a\u0002H\u0006\"\u0004\u0008\u0000\u0010\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\t\u001a\n\u0010\n\u001a\u00020\u000b*\u00020\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "getAccountType",
        "Lcom/danbamitale/epmslib/utils/IsoAccountType;",
        "Lcom/solab/iso8583/IsoMessage;",
        "getTransactionType",
        "Lcom/danbamitale/epmslib/entities/TransactionType;",
        "getValue",
        "T",
        "index",
        "",
        "(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;",
        "toTransactionResponse",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
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
.method public static final getAccountType(Lcom/solab/iso8583/IsoMessage;)Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .locals 4
    .param p0, "$this$getAccountType"    # Lcom/solab/iso8583/IsoMessage;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->Companion:Lcom/danbamitale/epmslib/utils/IsoAccountType$Companion;

    .line 81
    nop

    .line 78
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    nop

    .line 80
    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/danbamitale/epmslib/utils/IsoAccountType$Companion;->parseIntAccountType(I)Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v0

    .line 82
    return-object v0
.end method

.method public static final getTransactionType(Lcom/solab/iso8583/IsoMessage;)Lcom/danbamitale/epmslib/entities/TransactionType;
    .locals 5
    .param p0, "$this$getTransactionType"    # Lcom/solab/iso8583/IsoMessage;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MTI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/solab/iso8583/IsoMessage;->getType()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "toString(this, checkRadix(radix))"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0}, Lcom/solab/iso8583/IsoMessage;->getType()I

    move-result v0

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "4"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->REVERSAL:Lcom/danbamitale/epmslib/entities/TransactionType;

    return-object v0

    .line 39
    :cond_0
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    goto/16 :goto_1

    :sswitch_0
    const-string v1, "9K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->DYNAMIC_CURRENCY_CONVERSION:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_1
    const-string v1, "9J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 66
    :cond_2
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->INITIAL_PIN_ENCRYPTION_KEY_DOWNLOAD_EMV:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_2
    const-string v1, "9I"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 67
    :cond_3
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->INITIAL_PIN_ENCRYPTION_KEY_DOWNLOAD_TRACK2_DATA:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_3
    const-string v1, "9H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 64
    :cond_4
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->DAILY_TRANSACTION_REPORT_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_4
    const-string v1, "9G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 61
    :cond_5
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->TERMINAL_PIN_KEY:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_5
    const-string v1, "9F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 69
    :cond_6
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->EMV_APPLICATION_AID_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_6
    const-string v1, "9E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    .line 68
    :cond_7
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->CA_PUBLIC_KEY_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_7
    const-string v1, "9D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    .line 63
    :cond_8
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->CALL_HOME:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_8
    const-string v1, "9C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    .line 62
    :cond_9
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->TERMINAL_PARAMETER_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_9
    const-string v1, "9B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    .line 60
    :cond_a
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->TERMINAL_SESSION_KEY:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_a
    const-string v1, "9A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    .line 59
    :cond_b
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->TERMINAL_MASTER_KEY:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_b
    const-string v1, "95"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    .line 71
    :cond_c
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->TRANZAXIS_TRAFFIC_ENCRYPTION_WORKING_KEY:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_c
    const-string v1, "92"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    .line 70
    :cond_d
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->TRANZAXIS_WORKING_KEY_INQUIRY:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_d
    const-string v1, "90"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    .line 52
    :cond_e
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PIN_CHANGE:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_e
    const-string v1, "61"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    .line 50
    :cond_f
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PRE_AUTHORIZATION_COMPLETION:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_f
    const-string v1, "60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    .line 49
    :cond_10
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PRE_AUTHORIZATION:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_10
    const-string v1, "4F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    .line 42
    :cond_11
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE_WITH_ADDITIONAL_DATA:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_11
    const-string v1, "4E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    .line 58
    :cond_12
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PAYMENT_VALIDATION:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_12
    const-string v1, "4D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    .line 57
    :cond_13
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->BILLER_SUBSCRIPTION_INFO_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_13
    const-string v1, "4C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    .line 56
    :cond_14
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PRODUCT_LIST_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_14
    const-string v1, "4B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    .line 55
    :cond_15
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->BILLER_LIST_DOWNLOAD:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_15
    const-string v1, "4A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    .line 47
    :cond_16
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PREPAID:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_16
    const-string v1, "48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    .line 46
    :cond_17
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->BILL_PAYMENT:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_17
    const-string v1, "40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    .line 45
    :cond_18
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->TRANSFER:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto/16 :goto_2

    .line 39
    :sswitch_18
    const-string v1, "38"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    .line 53
    :cond_19
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->MINI_STATEMENT:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto :goto_2

    .line 39
    :sswitch_19
    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    .line 51
    :cond_1a
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->BALANCE:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto :goto_2

    .line 39
    :sswitch_1a
    const-string v1, "30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    .line 54
    :cond_1b
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->LINK_ACCOUNT_INQUIRY:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto :goto_2

    .line 39
    :sswitch_1b
    const-string v1, "21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    .line 44
    :cond_1c
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->DEPOSIT:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto :goto_2

    .line 39
    :sswitch_1c
    const-string v1, "20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    .line 48
    :cond_1d
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->REFUND:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto :goto_2

    .line 39
    :sswitch_1d
    const-string v1, "09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    .line 41
    :cond_1e
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE_WITH_CASH_BACK:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto :goto_2

    .line 39
    :sswitch_1e
    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    .line 43
    :cond_1f
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->CASH_ADVANCE:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto :goto_2

    .line 39
    :sswitch_1f
    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    .line 40
    :cond_20
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto :goto_2

    .line 72
    :goto_1
    sget-object v0, Lcom/danbamitale/epmslib/entities/TransactionType;->TRANZAXIS_ECHO_TEST:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 39
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x600 -> :sswitch_1f
        0x601 -> :sswitch_1e
        0x609 -> :sswitch_1d
        0x63e -> :sswitch_1c
        0x63f -> :sswitch_1b
        0x65d -> :sswitch_1a
        0x65e -> :sswitch_19
        0x665 -> :sswitch_18
        0x67c -> :sswitch_17
        0x684 -> :sswitch_16
        0x68d -> :sswitch_15
        0x68e -> :sswitch_14
        0x68f -> :sswitch_13
        0x690 -> :sswitch_12
        0x691 -> :sswitch_11
        0x692 -> :sswitch_10
        0x6ba -> :sswitch_f
        0x6bb -> :sswitch_e
        0x717 -> :sswitch_d
        0x719 -> :sswitch_c
        0x71c -> :sswitch_b
        0x728 -> :sswitch_a
        0x729 -> :sswitch_9
        0x72a -> :sswitch_8
        0x72b -> :sswitch_7
        0x72c -> :sswitch_6
        0x72d -> :sswitch_5
        0x72e -> :sswitch_4
        0x72f -> :sswitch_3
        0x730 -> :sswitch_2
        0x731 -> :sswitch_1
        0x732 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;
    .locals 1
    .param p0, "$this$getValue"    # Lcom/solab/iso8583/IsoMessage;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/solab/iso8583/IsoMessage;",
            "I)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solab/iso8583/IsoValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final toTransactionResponse(Lcom/solab/iso8583/IsoMessage;)Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .locals 43
    .param p0, "$this$toTransactionResponse"    # Lcom/solab/iso8583/IsoMessage;

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static/range {p0 .. p0}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getTransactionType(Lcom/solab/iso8583/IsoMessage;)Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v3

    .line 13
    invoke-static/range {p0 .. p0}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getAccountType(Lcom/solab/iso8583/IsoMessage;)Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v29

    .line 14
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/danbamitale/epmslib/extensions/StringExtensionsKt;->maskPan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 17
    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 18
    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 19
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v2

    const-string v9, ""

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v21, v1

    goto :goto_0

    :cond_0
    move-object/from16 v21, v9

    .line 20
    :goto_0
    const/16 v1, 0x25

    invoke-static {v0, v1}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 21
    const/16 v2, 0xc

    invoke-static {v0, v2}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 22
    const/16 v2, 0xd

    invoke-static {v0, v2}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    .line 23
    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    .line 24
    const/16 v2, 0x29

    invoke-static {v0, v2}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Ljava/lang/String;

    .line 25
    const/16 v2, 0x2a

    invoke-static {v0, v2}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Ljava/lang/String;

    .line 26
    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {v0, v2}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v15, v2

    goto :goto_1

    :cond_1
    move-object v15, v9

    .line 27
    :goto_1
    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v0, v2}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v16, v2

    goto :goto_2

    :cond_2
    move-object/from16 v16, v9

    .line 28
    :goto_2
    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v0, v2}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    :cond_3
    const-string v2, "20"

    :goto_3
    move-object/from16 v17, v2

    .line 29
    const/16 v2, 0x36

    invoke-virtual {v0, v2}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v0, v2}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v18, v2

    goto :goto_4

    :cond_4
    move-object/from16 v18, v9

    .line 30
    :goto_4
    const/16 v2, 0x37

    invoke-virtual {v0, v2}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v9

    const/4 v12, 0x0

    if-eqz v9, :cond_5

    invoke-static {v0, v2}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v35, v2

    goto :goto_5

    :cond_5
    move-object/from16 v35, v12

    .line 31
    :goto_5
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v0, v2}, Lcom/danbamitale/epmslib/extensions/IsoMessageExtensionsKt;->getValue(Lcom/solab/iso8583/IsoMessage;I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/Void;

    :cond_6
    move-object v9, v12

    .line 11
    new-instance v42, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-object/from16 v2, v42

    .line 12
    nop

    .line 14
    nop

    .line 15
    nop

    .line 17
    nop

    .line 18
    nop

    .line 20
    nop

    .line 21
    nop

    .line 22
    nop

    .line 16
    const-wide/16 v12, 0x0

    .line 23
    nop

    .line 26
    nop

    .line 27
    nop

    .line 28
    nop

    .line 29
    nop

    .line 31
    move-object/from16 v19, v9

    check-cast v19, Ljava/lang/String;

    .line 11
    const/16 v20, 0x0

    .line 19
    nop

    .line 11
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    .line 13
    nop

    .line 24
    nop

    .line 25
    nop

    .line 11
    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    .line 30
    nop

    .line 11
    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const v40, -0x13818000

    const/16 v41, 0x0

    move-object v9, v1

    invoke-direct/range {v2 .. v41}, Lcom/danbamitale/epmslib/entities/TransactionResponse;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/danbamitale/epmslib/entities/PosMode;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    return-object v42
.end method
