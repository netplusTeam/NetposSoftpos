.class public final Lcom/woleapp/netpos/contactless/model/MqttEventKt;
.super Ljava/lang/Object;
.source "MqttEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a*\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "toLocal",
        "Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;",
        "T",
        "Lcom/woleapp/netpos/contactless/model/MqttEvent;",
        "topic",
        "",
        "cause",
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
.method public static final toLocal(Lcom/woleapp/netpos/contactless/model/MqttEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    .locals 3
    .param p0, "$this$toLocal"    # Lcom/woleapp/netpos/contactless/model/MqttEvent;
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/woleapp/netpos/contactless/model/MqttEvent<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Singletons.gson.toJson(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, p2}, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic toLocal$default(Lcom/woleapp/netpos/contactless/model/MqttEvent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    .locals 0

    .line 101
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/model/MqttEventKt;->toLocal(Lcom/woleapp/netpos/contactless/model/MqttEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;

    move-result-object p0

    return-object p0
.end method
