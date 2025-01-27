.class public final Lcom/woleapp/netpos/contactless/util/SingletonsKt;
.super Ljava/lang/Object;
.source "Singletons.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0006\u0010\u0008\u001a\u00020\t\u001a\u0016\u0010\n\u001a\u00020\u000b*\u00020\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\",\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u00032\u0008\u0010\u0000\u001a\u0004\u0018\u00010\u00018F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "value",
        "",
        "additionalAmount",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "getAdditionalAmount",
        "(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Ljava/lang/Long;",
        "setAdditionalAmount",
        "(Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/Long;)V",
        "useStormTerminalId",
        "",
        "toNibssResponse",
        "Lcom/woleapp/netpos/contactless/model/NibssResponse;",
        "remark",
        "",
        "app_fcmbeasypayDebug"
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
.method public static final getAdditionalAmount(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Ljava/lang/Long;
    .locals 2
    .param p0, "$this$additionalAmount"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static final setAdditionalAmount(Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/Long;)V
    .locals 1
    .param p0, "$this$additionalAmount"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .param p1, "value"    # Ljava/lang/Long;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static final toNibssResponse(Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/NibssResponse;
    .locals 7
    .param p0, "$this$toNibssResponse"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .param p1, "remark"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/woleapp/netpos/contactless/model/NibssResponse;

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    move-object v1, v0

    check-cast v1, Lcom/woleapp/netpos/contactless/model/NibssResponse;

    .local v1, "it":Lcom/woleapp/netpos/contactless/model/NibssResponse;
    const/4 v2, 0x0

    .line 21
    .local v2, "$i$a$-also-SingletonsKt$toNibssResponse$1":I
    nop

    .line 22
    nop

    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    move-exception v3

    .line 25
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, ""

    move-object v3, v4

    .line 21
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1, v3}, Lcom/woleapp/netpos/contactless/model/NibssResponse;->setResponseMessage(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAdditionalAmount_54()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3, v4}, Lcom/woleapp/netpos/contactless/model/NibssResponse;->setAdditionalAmount(J)V

    .line 28
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getLocalDate_13()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/woleapp/netpos/contactless/model/NibssResponse;->setLocalDate(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getLocalTime_12()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/woleapp/netpos/contactless/model/NibssResponse;->setLocalTime(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAmount()J

    move-result-wide v3

    const/16 v5, 0x64

    int-to-long v5, v5

    div-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/woleapp/netpos/contactless/model/NibssResponse;->setAmount(J)V

    .line 31
    if-eqz p1, :cond_1

    move-object v3, p1

    .local v3, "r":Ljava/lang/String;
    const/4 v4, 0x0

    .line 32
    .local v4, "$i$a$-let-SingletonsKt$toNibssResponse$1$1":I
    invoke-virtual {v1, v3}, Lcom/woleapp/netpos/contactless/model/NibssResponse;->setRemark(Ljava/lang/String;)V

    .line 33
    nop

    .line 31
    .end local v3    # "r":Ljava/lang/String;
    .end local v4    # "$i$a$-let-SingletonsKt$toNibssResponse$1$1":I
    nop

    .line 34
    :cond_1
    nop

    .line 20
    .end local v1    # "it":Lcom/woleapp/netpos/contactless/model/NibssResponse;
    .end local v2    # "$i$a$-also-SingletonsKt$toNibssResponse$1":I
    const-string v1, "Singletons.gson.fromJson\u2026emark = r\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/model/NibssResponse;

    .line 34
    return-object v0
.end method

.method public static synthetic toNibssResponse$default(Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/String;ILjava/lang/Object;)Lcom/woleapp/netpos/contactless/model/NibssResponse;
    .locals 0

    .line 16
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/util/SingletonsKt;->toNibssResponse(Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/NibssResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final useStormTerminalId()Z
    .locals 2

    .line 14
    const-string v0, "pref_use_storm_tid"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pixplicity/easyprefs/library/Prefs;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
