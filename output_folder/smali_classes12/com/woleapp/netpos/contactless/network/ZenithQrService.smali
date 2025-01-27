.class public interface abstract Lcom/woleapp/netpos/contactless/network/ZenithQrService;
.super Ljava/lang/Object;
.source "QRServices.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00032\u0008\u0008\u0001\u0010\t\u001a\u00020\nH\'J\u0018\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\nH\'J\"\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00032\u0008\u0008\u0001\u0010\u000f\u001a\u00020\n2\u0008\u0008\u0001\u0010\r\u001a\u00020\nH\'J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0003H\'\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/ZenithQrService;",
        "",
        "createZenithQRMerchant",
        "Lio/reactivex/Single;",
        "Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantResponse;",
        "createZenithMerchantPayload",
        "Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;",
        "getCity",
        "Lcom/woleapp/netpos/contactless/model/ZenithCityList;",
        "state",
        "",
        "getMerchantCategoryList",
        "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;",
        "pagination",
        "getMerchantCategoryListWithFilter",
        "filter",
        "getZenithQr",
        "Lcom/woleapp/netpos/contactless/model/ZenithQr;",
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
.method public abstract createZenithQRMerchant(Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantPayload;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/CreateZenithMerchantResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "createMerchant"
    .end annotation
.end method

.method public abstract getCity(Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "state"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/ZenithCityList;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "getCity/{state}"
    .end annotation
.end method

.method public abstract getMerchantCategoryList(Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "pagination"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "getMCC/{pagination}"
    .end annotation
.end method

.method public abstract getMerchantCategoryListWithFilter(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "filter"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "pagination"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategoryList;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "getMCC/{filter}/{pagination}"
    .end annotation
.end method

.method public abstract getZenithQr()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/ZenithQr;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "getQR"
    .end annotation
.end method
