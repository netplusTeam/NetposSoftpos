.class public interface abstract Lcom/isw/iswclient/iswapiclient/IswService;
.super Ljava/lang/Object;
.source "IswClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J\"\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00032\u0008\u0008\u0001\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000cH\'\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/isw/iswclient/iswapiclient/IswService;",
        "",
        "getToken",
        "Lio/reactivex/Single;",
        "Lcom/isw/iswclient/response/TokenPassportResponse;",
        "tokenPassportRequest",
        "Lcom/isw/iswclient/request/TokenPassportRequest;",
        "performTransaction",
        "Lcom/isw/iswclient/response/CashOutResponnse;",
        "token",
        "",
        "transferRequest",
        "Lcom/isw/iswclient/request/TransferRequest;",
        "epmslib_release"
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
.method public abstract getToken(Lcom/isw/iswclient/request/TokenPassportRequest;)Lio/reactivex/Single;
    .param p1    # Lcom/isw/iswclient/request/TokenPassportRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isw/iswclient/request/TokenPassportRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/isw/iswclient/response/TokenPassportResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "content-type:application/xml"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "kimonotms/requesttoken/perform-process"
    .end annotation
.end method

.method public abstract performTransaction(Ljava/lang/String;Lcom/isw/iswclient/request/TransferRequest;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/isw/iswclient/request/TransferRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/isw/iswclient/request/TransferRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/isw/iswclient/response/CashOutResponnse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "content-type: application/xml",
            "Accept: application/xml"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "amex"
    .end annotation
.end method
