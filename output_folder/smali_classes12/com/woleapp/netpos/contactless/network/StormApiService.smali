.class public interface abstract Lcom/woleapp/netpos/contactless/network/StormApiService;
.super Ljava/lang/Object;
.source "StormApiService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/network/StormApiService$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\'J\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00032\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\nH\'J&\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\'J,\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00032\u0008\u0008\u0001\u0010\u000e\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000f\u001a\u00020\n2\u0008\u0008\u0001\u0010\u0010\u001a\u00020\nH\'JJ\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u00120\u00032\u0008\u0008\u0001\u0010\u0013\u001a\u00020\n2\n\u0008\u0003\u0010\u0014\u001a\u0004\u0018\u00010\n2\n\u0008\u0003\u0010\u0015\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0001\u0010\u000f\u001a\u00020\n2\u0008\u0008\u0001\u0010\u0010\u001a\u00020\nH\'J\u000e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0003H\'J$\u0010\u0018\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00190\u00032\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u0006H\'J8\u0010\u001b\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00190\u00032\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0001\u0010\u001c\u001a\u00020\n2\u0008\u0008\u0001\u0010\u001d\u001a\u00020\nH\'J\u001a\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\'J&\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\'\u00a8\u0006 "
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/StormApiService;",
        "",
        "appToken",
        "Lio/reactivex/Single;",
        "Lcom/woleapp/netpos/contactless/model/TokenResp;",
        "credentials",
        "Lcom/google/gson/JsonObject;",
        "getAgentDetails",
        "Lcom/woleapp/netpos/contactless/model/User;",
        "stormId",
        "",
        "getBillsToken",
        "getNotificationByReference",
        "Lcom/woleapp/netpos/contactless/model/NipNotification;",
        "reference",
        "clientId",
        "accessCode",
        "getNotifications",
        "",
        "terminalId",
        "from",
        "to",
        "getSessionCode",
        "Lcom/woleapp/netpos/contactless/model/SessionCode;",
        "passwordReset",
        "Lretrofit2/Response;",
        "payload",
        "passwordResetForProvidus",
        "partnerId",
        "deviceId",
        "userToken",
        "userTokenProvidus",
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


# virtual methods
.method public abstract appToken(Lcom/google/gson/JsonObject;)Lio/reactivex/Single;
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/TokenResp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/token"
    .end annotation
.end method

.method public abstract getAgentDetails(Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "stormId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/User;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/agents/{stormId}"
    .end annotation
.end method

.method public abstract getBillsToken(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/TokenResp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/auth"
    .end annotation
.end method

.method public abstract getNotificationByReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "referenceNo"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-CLIENT-ID"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-ACCESSCODE"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/NipNotification;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/nip-notifications"
    .end annotation
.end method

.method public abstract getNotifications(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "terminalId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "from"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "to"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-CLIENT-ID"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-ACCESSCODE"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/NipNotification;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/nip-notifications"
    .end annotation
.end method

.method public abstract getSessionCode()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/SessionCode;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/sessionCode"
    .end annotation
.end method

.method public abstract passwordReset(Lcom/google/gson/JsonObject;)Lio/reactivex/Single;
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/merchant-password-reset"
    .end annotation
.end method

.method public abstract passwordResetForProvidus(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "partnerId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "deviceId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/merchant-password-reset"
    .end annotation
.end method

.method public abstract userToken(Lcom/google/gson/JsonObject;)Lio/reactivex/Single;
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/TokenResp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/auth"
    .end annotation
.end method

.method public abstract userTokenProvidus(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "app-key"
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/TokenResp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/auth"
    .end annotation
.end method
