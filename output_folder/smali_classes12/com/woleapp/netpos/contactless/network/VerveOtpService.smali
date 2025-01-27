.class public interface abstract Lcom/woleapp/netpos/contactless/network/VerveOtpService;
.super Ljava/lang/Object;
.source "VerveOtpService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\'\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/VerveOtpService;",
        "",
        "sendOtpForVerveCard",
        "Lio/reactivex/Single;",
        "Lretrofit2/Response;",
        "Lcom/google/gson/JsonObject;",
        "sendOtpPayLoad",
        "Lcom/woleapp/netpos/contactless/model/SendOtpForVerveCardModel;",
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
.method public abstract sendOtpForVerveCard(Lcom/woleapp/netpos/contactless/model/SendOtpForVerveCardModel;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/SendOtpForVerveCardModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/SendOtpForVerveCardModel;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/google/gson/JsonObject;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/pay"
    .end annotation
.end method
