.class public final Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
.super Ljava/lang/Object;
.source "QrTransactionResponseFinalModel.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008m\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00e1\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0005\u0012\u0006\u0010\u0014\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010#\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010$\u001a\u00020%\u0012\u0008\u0008\u0002\u0010&\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\'\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010)\u001a\u00020*\u0012\u0008\u0008\u0002\u0010+\u001a\u00020\u0003\u00a2\u0006\u0002\u0010,J\t\u0010q\u001a\u00020\u0003H\u00c6\u0003J\t\u0010r\u001a\u00020\u0005H\u00c6\u0003J\t\u0010s\u001a\u00020\u0005H\u00c6\u0003J\t\u0010t\u001a\u00020\u0005H\u00c6\u0003J\t\u0010u\u001a\u00020\u0003H\u00c6\u0003J\t\u0010v\u001a\u00020\u0012H\u00c6\u0003J\t\u0010w\u001a\u00020\u0005H\u00c6\u0003J\t\u0010x\u001a\u00020\u0005H\u00c6\u0003J\t\u0010y\u001a\u00020\u0005H\u00c6\u0003J\t\u0010z\u001a\u00020\u0005H\u00c6\u0003J\t\u0010{\u001a\u00020\u0003H\u00c6\u0003J\t\u0010|\u001a\u00020\u0005H\u00c6\u0003J\t\u0010}\u001a\u00020\u0005H\u00c6\u0003J\t\u0010~\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u007f\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0080\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0081\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0082\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0083\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0084\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0085\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0086\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0087\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0088\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0089\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u008a\u0001\u001a\u00020%H\u00c6\u0003J\n\u0010\u008b\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u008c\u0001\u001a\u00020\u0003H\u00c6\u0003J\u000c\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\n\u0010\u008e\u0001\u001a\u00020*H\u00c6\u0003J\n\u0010\u008f\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0090\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0091\u0001\u001a\u00020\u0005H\u00c6\u0003J\u000c\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\n\u0010\u0093\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0094\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0095\u0001\u001a\u00020\u0005H\u00c6\u0003J\u0080\u0003\u0010\u0096\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00052\u0008\u0008\u0002\u0010 \u001a\u00020\u00052\u0008\u0008\u0002\u0010!\u001a\u00020\u00052\u0008\u0008\u0002\u0010\"\u001a\u00020\u00052\u0008\u0008\u0002\u0010#\u001a\u00020\u00052\u0008\u0008\u0002\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010&\u001a\u00020\u00052\u0008\u0008\u0002\u0010\'\u001a\u00020\u00032\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010)\u001a\u00020*2\u0008\u0008\u0002\u0010+\u001a\u00020\u0003H\u00c6\u0001J\u000b\u0010\u0097\u0001\u001a\u00030\u0098\u0001H\u00d6\u0001J\u0017\u0010\u0099\u0001\u001a\u00030\u009a\u00012\n\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u009c\u0001H\u00d6\u0003J\u000b\u0010\u009d\u0001\u001a\u00030\u0098\u0001H\u00d6\u0001J\n\u0010\u009e\u0001\u001a\u00020\u0005H\u00d6\u0001J\u001f\u0010\u009f\u0001\u001a\u00030\u00a0\u00012\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u00012\u0008\u0010\u00a3\u0001\u001a\u00030\u0098\u0001H\u00d6\u0001R\u001a\u0010!\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001a\u0010 \u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010.\"\u0004\u00082\u00100R\u001a\u0010\u001f\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010.\"\u0004\u00084\u00100R\u001a\u0010$\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001a\u0010\u0018\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010.\"\u0004\u0008:\u00100R\u001a\u0010\u001b\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010.\"\u0004\u0008<\u00100R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010>R\u001a\u0010#\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010.\"\u0004\u0008@\u00100R\u001a\u0010\u001a\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010.\"\u0004\u0008B\u00100R\u001a\u0010\u001d\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010.\"\u0004\u0008D\u00100R\u001a\u0010\u001e\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010.\"\u0004\u0008F\u00100R\u001a\u0010\u001c\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010.\"\u0004\u0008H\u00100R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u0010.R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010.\"\u0004\u0008K\u00100R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u0010.R\u001a\u0010\'\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010>\"\u0004\u0008N\u0010OR\u001a\u0010+\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010>\"\u0004\u0008Q\u0010OR\u001a\u0010\u0016\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010.\"\u0004\u0008S\u00100R\u001a\u0010\u0015\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010.\"\u0004\u0008U\u00100R\u001a\u0010\"\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010.\"\u0004\u0008W\u00100R\u0011\u0010\u0014\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008X\u0010.R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Y\u0010.R\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Z\u0010.R\u001a\u0010\u0019\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010.\"\u0004\u0008\\\u00100R\u001a\u0010\u0017\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010>\"\u0004\u0008^\u0010OR\u001a\u0010&\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008_\u0010.\"\u0004\u0008`\u00100R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008a\u0010.R\u001c\u0010(\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010.\"\u0004\u0008c\u00100R\u0011\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008d\u0010.R\u0011\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008e\u0010.R\u001a\u0010)\u001a\u00020*X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u0010g\"\u0004\u0008h\u0010iR\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008j\u0010.R\u0011\u0010\u0013\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008k\u0010.R\u0011\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008l\u0010.R\u0011\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008m\u0010>R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008n\u0010oR\u0011\u0010\u000f\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008p\u0010.\u00a8\u0006\u00a4\u0001"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;",
        "Landroid/os/Parcelable;",
        "amount",
        "",
        "responseCode",
        "",
        "currency_code",
        "customerName",
        "email",
        "message",
        "narration",
        "rrnOrderId",
        "result",
        "status",
        "transIdStan",
        "transmissionDateTime",
        "transactionTimeInMillis",
        "transactionType",
        "Lcom/danbamitale/epmslib/entities/TransactionType;",
        "terminalId",
        "merchantId",
        "localTime_12",
        "localDate_13",
        "otherAmount",
        "acquiringInstCode",
        "originalForwardingInstCode",
        "authCode",
        "additionalAmount_54",
        "cardLabel",
        "cardExpiry",
        "cardHolder",
        "TVR",
        "TSI",
        "AID",
        "maskedPan",
        "appCryptogram",
        "accountType",
        "Lcom/danbamitale/epmslib/utils/IsoAccountType;",
        "otherId",
        "id",
        "responseDE55",
        "source",
        "Lcom/danbamitale/epmslib/entities/PosMode;",
        "interSwitchThreshold",
        "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;JLjava/lang/String;Lcom/danbamitale/epmslib/entities/PosMode;J)V",
        "getAID",
        "()Ljava/lang/String;",
        "setAID",
        "(Ljava/lang/String;)V",
        "getTSI",
        "setTSI",
        "getTVR",
        "setTVR",
        "getAccountType",
        "()Lcom/danbamitale/epmslib/utils/IsoAccountType;",
        "setAccountType",
        "(Lcom/danbamitale/epmslib/utils/IsoAccountType;)V",
        "getAcquiringInstCode",
        "setAcquiringInstCode",
        "getAdditionalAmount_54",
        "setAdditionalAmount_54",
        "getAmount",
        "()J",
        "getAppCryptogram",
        "setAppCryptogram",
        "getAuthCode",
        "setAuthCode",
        "getCardExpiry",
        "setCardExpiry",
        "getCardHolder",
        "setCardHolder",
        "getCardLabel",
        "setCardLabel",
        "getCurrency_code",
        "getCustomerName",
        "setCustomerName",
        "getEmail",
        "getId",
        "setId",
        "(J)V",
        "getInterSwitchThreshold",
        "setInterSwitchThreshold",
        "getLocalDate_13",
        "setLocalDate_13",
        "getLocalTime_12",
        "setLocalTime_12",
        "getMaskedPan",
        "setMaskedPan",
        "getMerchantId",
        "getMessage",
        "getNarration",
        "getOriginalForwardingInstCode",
        "setOriginalForwardingInstCode",
        "getOtherAmount",
        "setOtherAmount",
        "getOtherId",
        "setOtherId",
        "getResponseCode",
        "getResponseDE55",
        "setResponseDE55",
        "getResult",
        "getRrnOrderId",
        "getSource",
        "()Lcom/danbamitale/epmslib/entities/PosMode;",
        "setSource",
        "(Lcom/danbamitale/epmslib/entities/PosMode;)V",
        "getStatus",
        "getTerminalId",
        "getTransIdStan",
        "getTransactionTimeInMillis",
        "getTransactionType",
        "()Lcom/danbamitale/epmslib/entities/TransactionType;",
        "getTransmissionDateTime",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component3",
        "component30",
        "component31",
        "component32",
        "component33",
        "component34",
        "component35",
        "component36",
        "component37",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AID:Ljava/lang/String;

.field private TSI:Ljava/lang/String;

.field private TVR:Ljava/lang/String;

.field private accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

.field private acquiringInstCode:Ljava/lang/String;

.field private additionalAmount_54:Ljava/lang/String;

.field private final amount:J

.field private appCryptogram:Ljava/lang/String;

.field private authCode:Ljava/lang/String;

.field private cardExpiry:Ljava/lang/String;

.field private cardHolder:Ljava/lang/String;

.field private cardLabel:Ljava/lang/String;

.field private final currency_code:Ljava/lang/String;

.field private customerName:Ljava/lang/String;

.field private final email:Ljava/lang/String;

.field private id:J

.field private interSwitchThreshold:J

.field private localDate_13:Ljava/lang/String;

.field private localTime_12:Ljava/lang/String;

.field private maskedPan:Ljava/lang/String;

.field private final merchantId:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final narration:Ljava/lang/String;

.field private originalForwardingInstCode:Ljava/lang/String;

.field private otherAmount:J

.field private otherId:Ljava/lang/String;

.field private final responseCode:Ljava/lang/String;

.field private responseDE55:Ljava/lang/String;

.field private final result:Ljava/lang/String;

.field private final rrnOrderId:Ljava/lang/String;

.field private source:Lcom/danbamitale/epmslib/entities/PosMode;

.field private final status:Ljava/lang/String;

.field private final terminalId:Ljava/lang/String;

.field private final transIdStan:Ljava/lang/String;

.field private final transactionTimeInMillis:J

.field private final transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

.field private final transmissionDateTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel$Creator;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;JLjava/lang/String;Lcom/danbamitale/epmslib/entities/PosMode;J)V
    .locals 16
    .param p1, "amount"    # J
    .param p3, "responseCode"    # Ljava/lang/String;
    .param p4, "currency_code"    # Ljava/lang/String;
    .param p5, "customerName"    # Ljava/lang/String;
    .param p6, "email"    # Ljava/lang/String;
    .param p7, "message"    # Ljava/lang/String;
    .param p8, "narration"    # Ljava/lang/String;
    .param p9, "rrnOrderId"    # Ljava/lang/String;
    .param p10, "result"    # Ljava/lang/String;
    .param p11, "status"    # Ljava/lang/String;
    .param p12, "transIdStan"    # Ljava/lang/String;
    .param p13, "transmissionDateTime"    # Ljava/lang/String;
    .param p14, "transactionTimeInMillis"    # J
    .param p16, "transactionType"    # Lcom/danbamitale/epmslib/entities/TransactionType;
    .param p17, "terminalId"    # Ljava/lang/String;
    .param p18, "merchantId"    # Ljava/lang/String;
    .param p19, "localTime_12"    # Ljava/lang/String;
    .param p20, "localDate_13"    # Ljava/lang/String;
    .param p21, "otherAmount"    # J
    .param p23, "acquiringInstCode"    # Ljava/lang/String;
    .param p24, "originalForwardingInstCode"    # Ljava/lang/String;
    .param p25, "authCode"    # Ljava/lang/String;
    .param p26, "additionalAmount_54"    # Ljava/lang/String;
    .param p27, "cardLabel"    # Ljava/lang/String;
    .param p28, "cardExpiry"    # Ljava/lang/String;
    .param p29, "cardHolder"    # Ljava/lang/String;
    .param p30, "TVR"    # Ljava/lang/String;
    .param p31, "TSI"    # Ljava/lang/String;
    .param p32, "AID"    # Ljava/lang/String;
    .param p33, "maskedPan"    # Ljava/lang/String;
    .param p34, "appCryptogram"    # Ljava/lang/String;
    .param p35, "accountType"    # Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .param p36, "otherId"    # Ljava/lang/String;
    .param p37, "id"    # J
    .param p39, "responseDE55"    # Ljava/lang/String;
    .param p40, "source"    # Lcom/danbamitale/epmslib/entities/PosMode;
    .param p41, "interSwitchThreshold"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p16

    move-object/from16 v12, p17

    move-object/from16 v13, p18

    move-object/from16 v14, p19

    move-object/from16 v15, p20

    move-object/from16 v0, p23

    const-string v0, "responseCode"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency_code"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customerName"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "narration"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rrnOrderId"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transIdStan"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transmissionDateTime"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionType"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalId"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "merchantId"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localTime_12"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDate_13"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acquiringInstCode"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalForwardingInstCode"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authCode"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAmount_54"

    move-object/from16 v15, p26

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardLabel"

    move-object/from16 v15, p27

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardExpiry"

    move-object/from16 v15, p28

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardHolder"

    move-object/from16 v15, p29

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TVR"

    move-object/from16 v15, p30

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TSI"

    move-object/from16 v15, p31

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AID"

    move-object/from16 v15, p32

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maskedPan"

    move-object/from16 v15, p33

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appCryptogram"

    move-object/from16 v15, p34

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountType"

    move-object/from16 v15, p35

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherId"

    move-object/from16 v15, p36

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object/from16 v15, p40

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    move-object/from16 v0, p0

    move-wide/from16 v14, p1

    iput-wide v14, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->amount:J

    .line 12
    iput-object v1, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseCode:Ljava/lang/String;

    .line 13
    iput-object v2, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->currency_code:Ljava/lang/String;

    .line 14
    iput-object v3, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->customerName:Ljava/lang/String;

    .line 15
    iput-object v4, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->email:Ljava/lang/String;

    .line 16
    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->message:Ljava/lang/String;

    .line 17
    iput-object v5, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->narration:Ljava/lang/String;

    .line 18
    iput-object v6, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->rrnOrderId:Ljava/lang/String;

    .line 19
    iput-object v7, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->result:Ljava/lang/String;

    .line 20
    iput-object v8, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->status:Ljava/lang/String;

    .line 21
    iput-object v9, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transIdStan:Ljava/lang/String;

    .line 22
    iput-object v10, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transmissionDateTime:Ljava/lang/String;

    .line 23
    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionTimeInMillis:J

    .line 24
    iput-object v11, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 25
    iput-object v12, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->terminalId:Ljava/lang/String;

    .line 26
    iput-object v13, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->merchantId:Ljava/lang/String;

    .line 27
    move-object/from16 v14, p19

    iput-object v14, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localTime_12:Ljava/lang/String;

    .line 28
    move-object/from16 v15, p20

    iput-object v15, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localDate_13:Ljava/lang/String;

    .line 29
    move-wide/from16 v1, p21

    iput-wide v1, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherAmount:J

    .line 30
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->acquiringInstCode:Ljava/lang/String;

    .line 31
    move-object/from16 v2, p24

    move-object/from16 v1, p25

    iput-object v2, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->originalForwardingInstCode:Ljava/lang/String;

    .line 32
    iput-object v1, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->authCode:Ljava/lang/String;

    .line 33
    move-object/from16 v1, p26

    move-object/from16 v2, p27

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->additionalAmount_54:Ljava/lang/String;

    .line 34
    iput-object v2, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardLabel:Ljava/lang/String;

    .line 35
    move-object/from16 v1, p28

    move-object/from16 v2, p29

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardExpiry:Ljava/lang/String;

    .line 36
    iput-object v2, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardHolder:Ljava/lang/String;

    .line 37
    move-object/from16 v1, p30

    move-object/from16 v2, p31

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TVR:Ljava/lang/String;

    .line 38
    iput-object v2, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TSI:Ljava/lang/String;

    .line 39
    move-object/from16 v1, p32

    move-object/from16 v2, p33

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->AID:Ljava/lang/String;

    .line 40
    iput-object v2, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->maskedPan:Ljava/lang/String;

    .line 41
    move-object/from16 v1, p34

    move-object/from16 v2, p35

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->appCryptogram:Ljava/lang/String;

    .line 42
    iput-object v2, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    .line 43
    move-object/from16 v1, p36

    move-object/from16 v2, p40

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherId:Ljava/lang/String;

    .line 44
    move-wide/from16 v3, p37

    iput-wide v3, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->id:J

    .line 45
    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseDE55:Ljava/lang/String;

    .line 46
    iput-object v2, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->source:Lcom/danbamitale/epmslib/entities/PosMode;

    .line 47
    move-wide/from16 v1, p41

    iput-wide v1, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->interSwitchThreshold:J

    .line 10
    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;JLjava/lang/String;Lcom/danbamitale/epmslib/entities/PosMode;JIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 46

    .line 10
    move/from16 v0, p43

    and-int/lit8 v1, v0, 0x20

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 16
    move-object v10, v2

    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v10, p7

    :goto_0
    and-int/lit16 v1, v0, 0x1000

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_1

    .line 23
    move-wide/from16 v17, v3

    goto :goto_1

    .line 10
    :cond_1
    move-wide/from16 v17, p14

    :goto_1
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_2

    .line 24
    sget-object v1, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE:Lcom/danbamitale/epmslib/entities/TransactionType;

    move-object/from16 v19, v1

    goto :goto_2

    .line 10
    :cond_2
    move-object/from16 v19, p16

    :goto_2
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 27
    move-object/from16 v22, v2

    goto :goto_3

    .line 10
    :cond_3
    move-object/from16 v22, p19

    :goto_3
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 28
    move-object/from16 v23, v2

    goto :goto_4

    .line 10
    :cond_4
    move-object/from16 v23, p20

    :goto_4
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    .line 29
    move-wide/from16 v24, v3

    goto :goto_5

    .line 10
    :cond_5
    move-wide/from16 v24, p21

    :goto_5
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    .line 30
    move-object/from16 v26, v2

    goto :goto_6

    .line 10
    :cond_6
    move-object/from16 v26, p23

    :goto_6
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    .line 31
    move-object/from16 v27, v2

    goto :goto_7

    .line 10
    :cond_7
    move-object/from16 v27, p24

    :goto_7
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    .line 32
    move-object/from16 v28, v2

    goto :goto_8

    .line 10
    :cond_8
    move-object/from16 v28, p25

    :goto_8
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    .line 33
    move-object/from16 v29, v2

    goto :goto_9

    .line 10
    :cond_9
    move-object/from16 v29, p26

    :goto_9
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    .line 34
    move-object/from16 v30, v2

    goto :goto_a

    .line 10
    :cond_a
    move-object/from16 v30, p27

    :goto_a
    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    .line 35
    move-object/from16 v31, v2

    goto :goto_b

    .line 10
    :cond_b
    move-object/from16 v31, p28

    :goto_b
    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    .line 36
    move-object/from16 v32, v2

    goto :goto_c

    .line 10
    :cond_c
    move-object/from16 v32, p29

    :goto_c
    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    .line 37
    move-object/from16 v33, v2

    goto :goto_d

    .line 10
    :cond_d
    move-object/from16 v33, p30

    :goto_d
    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    .line 38
    move-object/from16 v34, v2

    goto :goto_e

    .line 10
    :cond_e
    move-object/from16 v34, p31

    :goto_e
    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    .line 39
    move-object/from16 v35, v2

    goto :goto_f

    .line 10
    :cond_f
    move-object/from16 v35, p32

    :goto_f
    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    .line 40
    move-object/from16 v36, v2

    goto :goto_10

    .line 10
    :cond_10
    move-object/from16 v36, p33

    :goto_10
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    .line 41
    move-object/from16 v37, v2

    goto :goto_11

    .line 10
    :cond_11
    move-object/from16 v37, p34

    :goto_11
    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 42
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-object/from16 v38, v0

    goto :goto_12

    .line 10
    :cond_12
    move-object/from16 v38, p35

    :goto_12
    and-int/lit8 v0, p44, 0x1

    if-eqz v0, :cond_13

    .line 43
    move-object/from16 v39, v2

    goto :goto_13

    .line 10
    :cond_13
    move-object/from16 v39, p36

    :goto_13
    and-int/lit8 v0, p44, 0x2

    if-eqz v0, :cond_14

    .line 44
    move-wide/from16 v40, v3

    goto :goto_14

    .line 10
    :cond_14
    move-wide/from16 v40, p37

    :goto_14
    and-int/lit8 v0, p44, 0x4

    if-eqz v0, :cond_15

    .line 45
    const/4 v0, 0x0

    move-object/from16 v42, v0

    goto :goto_15

    .line 10
    :cond_15
    move-object/from16 v42, p39

    :goto_15
    and-int/lit8 v0, p44, 0x8

    if-eqz v0, :cond_16

    .line 46
    sget-object v0, Lcom/danbamitale/epmslib/entities/PosMode;->EPMS:Lcom/danbamitale/epmslib/entities/PosMode;

    move-object/from16 v43, v0

    goto :goto_16

    .line 10
    :cond_16
    move-object/from16 v43, p40

    :goto_16
    and-int/lit8 v0, p44, 0x10

    if-eqz v0, :cond_17

    .line 47
    move-wide/from16 v44, v3

    goto :goto_17

    .line 10
    :cond_17
    move-wide/from16 v44, p41

    :goto_17
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    invoke-direct/range {v3 .. v45}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;JLjava/lang/String;Lcom/danbamitale/epmslib/entities/PosMode;J)V

    .line 48
    return-void
.end method

.method public static synthetic copy$default(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;JLjava/lang/String;Lcom/danbamitale/epmslib/entities/PosMode;JIILjava/lang/Object;)Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p43

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->amount:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseCode:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->currency_code:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->customerName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->email:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->message:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->narration:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->rrnOrderId:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->result:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->status:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transIdStan:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transmissionDateTime:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    move-object/from16 p13, v14

    if-eqz v15, :cond_c

    iget-wide v14, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionTimeInMillis:J

    goto :goto_c

    :cond_c
    move-wide/from16 v14, p14

    :goto_c
    move-wide/from16 p14, v14

    and-int/lit16 v14, v1, 0x2000

    if-eqz v14, :cond_d

    iget-object v14, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    goto :goto_d

    :cond_d
    move-object/from16 v14, p16

    :goto_d
    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->terminalId:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p17

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->merchantId:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p18

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localTime_12:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p19

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localDate_13:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p20

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p16, v14

    move-object/from16 p20, v15

    if-eqz v16, :cond_12

    iget-wide v14, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherAmount:J

    goto :goto_12

    :cond_12
    move-wide/from16 v14, p21

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-wide/from16 p21, v14

    if-eqz v16, :cond_13

    iget-object v14, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->acquiringInstCode:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v14, p23

    :goto_13
    const/high16 v15, 0x100000

    and-int/2addr v15, v1

    if-eqz v15, :cond_14

    iget-object v15, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->originalForwardingInstCode:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p24

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->authCode:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p25

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->additionalAmount_54:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p26

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardLabel:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p27

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardExpiry:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p28

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p28, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardHolder:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p29

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p29, v15

    if-eqz v16, :cond_1a

    iget-object v15, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TVR:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v15, p30

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move-object/from16 p30, v15

    if-eqz v16, :cond_1b

    iget-object v15, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TSI:Ljava/lang/String;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p31

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move-object/from16 p31, v15

    if-eqz v16, :cond_1c

    iget-object v15, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->AID:Ljava/lang/String;

    goto :goto_1c

    :cond_1c
    move-object/from16 v15, p32

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move-object/from16 p32, v15

    if-eqz v16, :cond_1d

    iget-object v15, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->maskedPan:Ljava/lang/String;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p33

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, v1, v16

    move-object/from16 p33, v15

    if-eqz v16, :cond_1e

    iget-object v15, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->appCryptogram:Ljava/lang/String;

    goto :goto_1e

    :cond_1e
    move-object/from16 v15, p34

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p35

    :goto_1f
    and-int/lit8 v16, p44, 0x1

    move-object/from16 p35, v1

    if-eqz v16, :cond_20

    iget-object v1, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherId:Ljava/lang/String;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p36

    :goto_20
    and-int/lit8 v16, p44, 0x2

    move-object/from16 p23, v14

    move-object/from16 p34, v15

    if-eqz v16, :cond_21

    iget-wide v14, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->id:J

    goto :goto_21

    :cond_21
    move-wide/from16 v14, p37

    :goto_21
    and-int/lit8 v16, p44, 0x4

    move-wide/from16 p37, v14

    if-eqz v16, :cond_22

    iget-object v14, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseDE55:Ljava/lang/String;

    goto :goto_22

    :cond_22
    move-object/from16 v14, p39

    :goto_22
    and-int/lit8 v15, p44, 0x8

    if-eqz v15, :cond_23

    iget-object v15, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->source:Lcom/danbamitale/epmslib/entities/PosMode;

    goto :goto_23

    :cond_23
    move-object/from16 v15, p40

    :goto_23
    and-int/lit8 v16, p44, 0x10

    move-object/from16 p39, v14

    move-object/from16 p40, v15

    if-eqz v16, :cond_24

    iget-wide v14, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->interSwitchThreshold:J

    goto :goto_24

    :cond_24
    move-wide/from16 v14, p41

    :goto_24
    move-wide/from16 p1, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p36, v1

    move-wide/from16 p41, v14

    invoke-virtual/range {p0 .. p42}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;JLjava/lang/String;Lcom/danbamitale/epmslib/entities/PosMode;J)Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->amount:J

    return-wide v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transIdStan:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transmissionDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()J
    .locals 2

    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionTimeInMillis:J

    return-wide v0
.end method

.method public final component14()Lcom/danbamitale/epmslib/entities/TransactionType;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->terminalId:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->merchantId:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localTime_12:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localDate_13:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()J
    .locals 2

    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherAmount:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->acquiringInstCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->originalForwardingInstCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->additionalAmount_54:Ljava/lang/String;

    return-object v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardExpiry:Ljava/lang/String;

    return-object v0
.end method

.method public final component26()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardHolder:Ljava/lang/String;

    return-object v0
.end method

.method public final component27()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TVR:Ljava/lang/String;

    return-object v0
.end method

.method public final component28()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TSI:Ljava/lang/String;

    return-object v0
.end method

.method public final component29()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->AID:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->currency_code:Ljava/lang/String;

    return-object v0
.end method

.method public final component30()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->maskedPan:Ljava/lang/String;

    return-object v0
.end method

.method public final component31()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->appCryptogram:Ljava/lang/String;

    return-object v0
.end method

.method public final component32()Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    return-object v0
.end method

.method public final component33()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherId:Ljava/lang/String;

    return-object v0
.end method

.method public final component34()J
    .locals 2

    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->id:J

    return-wide v0
.end method

.method public final component35()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseDE55:Ljava/lang/String;

    return-object v0
.end method

.method public final component36()Lcom/danbamitale/epmslib/entities/PosMode;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->source:Lcom/danbamitale/epmslib/entities/PosMode;

    return-object v0
.end method

.method public final component37()J
    .locals 2

    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->interSwitchThreshold:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->customerName:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->narration:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->rrnOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->result:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;JLjava/lang/String;Lcom/danbamitale/epmslib/entities/PosMode;J)Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    .locals 46

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-wide/from16 v21, p21

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    move-object/from16 v35, p35

    move-object/from16 v36, p36

    move-wide/from16 v37, p37

    move-object/from16 v39, p39

    move-object/from16 v40, p40

    move-wide/from16 v41, p41

    const-string v0, "responseCode"

    move-wide/from16 v43, v1

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency_code"

    move-object/from16 v2, p4

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customerName"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "narration"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rrnOrderId"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transIdStan"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transmissionDateTime"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionType"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalId"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "merchantId"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localTime_12"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDate_13"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acquiringInstCode"

    move-object/from16 v1, p23

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalForwardingInstCode"

    move-object/from16 v1, p24

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authCode"

    move-object/from16 v1, p25

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAmount_54"

    move-object/from16 v1, p26

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardLabel"

    move-object/from16 v1, p27

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardExpiry"

    move-object/from16 v1, p28

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardHolder"

    move-object/from16 v1, p29

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TVR"

    move-object/from16 v1, p30

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TSI"

    move-object/from16 v1, p31

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AID"

    move-object/from16 v1, p32

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maskedPan"

    move-object/from16 v1, p33

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appCryptogram"

    move-object/from16 v1, p34

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountType"

    move-object/from16 v1, p35

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherId"

    move-object/from16 v1, p36

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object/from16 v1, p40

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v45, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    move-object/from16 v0, v45

    move-wide/from16 v1, v43

    invoke-direct/range {v0 .. v42}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;JLjava/lang/String;Lcom/danbamitale/epmslib/entities/PosMode;J)V

    return-object v45
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    iget-wide v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->amount:J

    iget-wide v5, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->amount:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->currency_code:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->currency_code:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->customerName:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->customerName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->email:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->email:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->message:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->message:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->narration:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->narration:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->rrnOrderId:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->rrnOrderId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->result:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->result:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->status:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->status:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transIdStan:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transIdStan:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    :cond_c
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transmissionDateTime:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transmissionDateTime:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionTimeInMillis:J

    iget-wide v5, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionTimeInMillis:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_e

    return v2

    :cond_e
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    if-eq v3, v4, :cond_f

    return v2

    :cond_f
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->terminalId:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->terminalId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    return v2

    :cond_10
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->merchantId:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->merchantId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    return v2

    :cond_11
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localTime_12:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localTime_12:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    return v2

    :cond_12
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localDate_13:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localDate_13:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherAmount:J

    iget-wide v5, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherAmount:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_14

    return v2

    :cond_14
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->acquiringInstCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->acquiringInstCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    return v2

    :cond_15
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->originalForwardingInstCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->originalForwardingInstCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    return v2

    :cond_16
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->authCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->authCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    return v2

    :cond_17
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->additionalAmount_54:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->additionalAmount_54:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    return v2

    :cond_18
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardLabel:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardLabel:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    return v2

    :cond_19
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardExpiry:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardExpiry:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    return v2

    :cond_1a
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardHolder:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardHolder:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    return v2

    :cond_1b
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TVR:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TVR:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    return v2

    :cond_1c
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TSI:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TSI:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    return v2

    :cond_1d
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->AID:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->AID:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    return v2

    :cond_1e
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->maskedPan:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->maskedPan:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    return v2

    :cond_1f
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->appCryptogram:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->appCryptogram:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    return v2

    :cond_20
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    if-eq v3, v4, :cond_21

    return v2

    :cond_21
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherId:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    return v2

    :cond_22
    iget-wide v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->id:J

    iget-wide v5, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_23

    return v2

    :cond_23
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseDE55:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseDE55:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    return v2

    :cond_24
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->source:Lcom/danbamitale/epmslib/entities/PosMode;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->source:Lcom/danbamitale/epmslib/entities/PosMode;

    if-eq v3, v4, :cond_25

    return v2

    :cond_25
    iget-wide v3, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->interSwitchThreshold:J

    iget-wide v5, v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->interSwitchThreshold:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_26

    return v2

    :cond_26
    return v0
.end method

.method public final getAID()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->AID:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccountType()Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    return-object v0
.end method

.method public final getAcquiringInstCode()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->acquiringInstCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdditionalAmount_54()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->additionalAmount_54:Ljava/lang/String;

    return-object v0
.end method

.method public final getAmount()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->amount:J

    return-wide v0
.end method

.method public final getAppCryptogram()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->appCryptogram:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthCode()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getCardExpiry()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardExpiry:Ljava/lang/String;

    return-object v0
.end method

.method public final getCardHolder()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardHolder:Ljava/lang/String;

    return-object v0
.end method

.method public final getCardLabel()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrency_code()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->currency_code:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomerName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->customerName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->id:J

    return-wide v0
.end method

.method public final getInterSwitchThreshold()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->interSwitchThreshold:J

    return-wide v0
.end method

.method public final getLocalDate_13()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localDate_13:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalTime_12()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localTime_12:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaskedPan()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->maskedPan:Ljava/lang/String;

    return-object v0
.end method

.method public final getMerchantId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->merchantId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getNarration()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->narration:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginalForwardingInstCode()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->originalForwardingInstCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getOtherAmount()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherAmount:J

    return-wide v0
.end method

.method public final getOtherId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherId:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseCode()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseDE55()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseDE55:Ljava/lang/String;

    return-object v0
.end method

.method public final getResult()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->result:Ljava/lang/String;

    return-object v0
.end method

.method public final getRrnOrderId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->rrnOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()Lcom/danbamitale/epmslib/entities/PosMode;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->source:Lcom/danbamitale/epmslib/entities/PosMode;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getTSI()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TSI:Ljava/lang/String;

    return-object v0
.end method

.method public final getTVR()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TVR:Ljava/lang/String;

    return-object v0
.end method

.method public final getTerminalId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->terminalId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransIdStan()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transIdStan:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionTimeInMillis()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionTimeInMillis:J

    return-wide v0
.end method

.method public final getTransactionType()Lcom/danbamitale/epmslib/entities/TransactionType;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    return-object v0
.end method

.method public final getTransmissionDateTime()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transmissionDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->amount:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->currency_code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->customerName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->message:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->narration:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->rrnOrderId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->result:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->status:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transIdStan:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transmissionDateTime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v4, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionTimeInMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionType;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->terminalId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->merchantId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localTime_12:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localDate_13:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v4, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherAmount:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->acquiringInstCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->originalForwardingInstCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->authCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->additionalAmount_54:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardLabel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardExpiry:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardHolder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TVR:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TSI:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->AID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->maskedPan:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->appCryptogram:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseDE55:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->source:Lcom/danbamitale/epmslib/entities/PosMode;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/PosMode;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->interSwitchThreshold:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final setAID(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->AID:Ljava/lang/String;

    return-void
.end method

.method public final setAccountType(Lcom/danbamitale/epmslib/utils/IsoAccountType;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/danbamitale/epmslib/utils/IsoAccountType;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    return-void
.end method

.method public final setAcquiringInstCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->acquiringInstCode:Ljava/lang/String;

    return-void
.end method

.method public final setAdditionalAmount_54(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->additionalAmount_54:Ljava/lang/String;

    return-void
.end method

.method public final setAppCryptogram(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->appCryptogram:Ljava/lang/String;

    return-void
.end method

.method public final setAuthCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->authCode:Ljava/lang/String;

    return-void
.end method

.method public final setCardExpiry(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardExpiry:Ljava/lang/String;

    return-void
.end method

.method public final setCardHolder(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardHolder:Ljava/lang/String;

    return-void
.end method

.method public final setCardLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardLabel:Ljava/lang/String;

    return-void
.end method

.method public final setCustomerName(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->customerName:Ljava/lang/String;

    return-void
.end method

.method public final setId(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 44
    iput-wide p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->id:J

    return-void
.end method

.method public final setInterSwitchThreshold(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 47
    iput-wide p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->interSwitchThreshold:J

    return-void
.end method

.method public final setLocalDate_13(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localDate_13:Ljava/lang/String;

    return-void
.end method

.method public final setLocalTime_12(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localTime_12:Ljava/lang/String;

    return-void
.end method

.method public final setMaskedPan(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->maskedPan:Ljava/lang/String;

    return-void
.end method

.method public final setOriginalForwardingInstCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->originalForwardingInstCode:Ljava/lang/String;

    return-void
.end method

.method public final setOtherAmount(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 29
    iput-wide p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherAmount:J

    return-void
.end method

.method public final setOtherId(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherId:Ljava/lang/String;

    return-void
.end method

.method public final setResponseDE55(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseDE55:Ljava/lang/String;

    return-void
.end method

.method public final setSource(Lcom/danbamitale/epmslib/entities/PosMode;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/danbamitale/epmslib/entities/PosMode;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->source:Lcom/danbamitale/epmslib/entities/PosMode;

    return-void
.end method

.method public final setTSI(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TSI:Ljava/lang/String;

    return-void
.end method

.method public final setTVR(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TVR:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QrTransactionResponseFinalModel(amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->amount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currency_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->currency_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", customerName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->customerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", email="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", narration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->narration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rrnOrderId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->rrnOrderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transIdStan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transIdStan:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transmissionDateTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transmissionDateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transactionTimeInMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionTimeInMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transactionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", terminalId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->terminalId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", merchantId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->merchantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", localTime_12="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localTime_12:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", localDate_13="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localDate_13:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", otherAmount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherAmount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", acquiringInstCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->acquiringInstCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", originalForwardingInstCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->originalForwardingInstCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", authCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->authCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", additionalAmount_54="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->additionalAmount_54:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cardLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cardExpiry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardExpiry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cardHolder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardHolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", TVR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TVR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", TSI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", AID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->AID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maskedPan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->maskedPan:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appCryptogram="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->appCryptogram:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", accountType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", otherId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseDE55="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseDE55:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->source:Lcom/danbamitale/epmslib/entities/PosMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", interSwitchThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->interSwitchThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->amount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->currency_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->customerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->narration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->rrnOrderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->result:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transIdStan:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transmissionDateTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->terminalId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->merchantId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localTime_12:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->localDate_13:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherAmount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->acquiringInstCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->originalForwardingInstCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->authCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->additionalAmount_54:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardExpiry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->cardHolder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TVR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->TSI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->AID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->maskedPan:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->appCryptogram:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->otherId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->responseDE55:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->source:Lcom/danbamitale/epmslib/entities/PosMode;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/PosMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->interSwitchThreshold:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
