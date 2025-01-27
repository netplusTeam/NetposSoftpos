.class public interface abstract Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;
.super Ljava/lang/Object;
.source "NetPosTransactionsService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J(\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00032\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000c\u001a\u00020\rH\'\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/NetPosTransactionsService;",
        "",
        "logTransactionBeforeConnectingToNibss",
        "Lio/reactivex/Single;",
        "Lcom/woleapp/netpos/contactless/model/ResponseBodyAfterLoginToBackend;",
        "dataToLog",
        "Lcom/woleapp/netpos/contactless/model/TransactionToLogBeforeConnectingToNibbs;",
        "updateLogAfterConnectingToNibss",
        "Lretrofit2/Response;",
        "Lcom/woleapp/netpos/contactless/model/LogToBackendResponse;",
        "rrn",
        "",
        "data",
        "Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;",
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
.method public abstract logTransactionBeforeConnectingToNibss(Lcom/woleapp/netpos/contactless/model/TransactionToLogBeforeConnectingToNibbs;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/TransactionToLogBeforeConnectingToNibbs;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/TransactionToLogBeforeConnectingToNibbs;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/ResponseBodyAfterLoginToBackend;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/pos_transaction"
    .end annotation
.end method

.method public abstract updateLogAfterConnectingToNibss(Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "rrn"
        .end annotation
    .end param
    .param p2    # Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/woleapp/netpos/contactless/model/LogToBackendResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/pos_transaction/{rrn}"
    .end annotation
.end method
