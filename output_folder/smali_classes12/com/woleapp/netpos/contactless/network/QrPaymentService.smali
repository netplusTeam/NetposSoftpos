.class public interface abstract Lcom/woleapp/netpos/contactless/network/QrPaymentService;
.super Ljava/lang/Object;
.source "QrPaymentService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'J\u001e\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00040\u00032\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000cH\'\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/QrPaymentService;",
        "",
        "payThroughMPGS",
        "Lio/reactivex/Single;",
        "Lretrofit2/Response;",
        "Lcom/google/gson/JsonObject;",
        "token",
        "",
        "payThroughMPGSRequest",
        "Lcom/woleapp/netpos/contactless/model/PayThroughMPGSRequest;",
        "payWithQr",
        "payWithQrRequest",
        "Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;",
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
.method public abstract payThroughMPGS(Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/PayThroughMPGSRequest;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/woleapp/netpos/contactless/model/PayThroughMPGSRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/woleapp/netpos/contactless/model/PayThroughMPGSRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/google/gson/JsonObject;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "softpos"
    .end annotation
.end method

.method public abstract payWithQr(Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "contactlessQr"
    .end annotation
.end method
