.class public interface abstract Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;
.super Ljava/lang/Object;
.source "StormUtilitiesApiService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/StormUtilitiesApiService;",
        "",
        "payBills",
        "Lio/reactivex/Single;",
        "Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;",
        "payload",
        "Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;",
        "validateBill",
        "Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;",
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
.method public abstract payBills(Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/utility/pay_bill"
    .end annotation
.end method

.method public abstract validateBill(Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/utility/validate_bill"
    .end annotation
.end method
