.class public interface abstract Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;
.super Ljava/lang/Object;
.source "MqttLocalDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\'J\u0014\u0010\u0004\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0005H\'J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0005H\'J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00052\u0006\u0010\u000b\u001a\u00020\u0007H\'\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;",
        "",
        "deleteAllEvents",
        "Lio/reactivex/Completable;",
        "getLocalEvents",
        "Lio/reactivex/Single;",
        "",
        "Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;",
        "getNumberOfFailedTransactions",
        "",
        "insertNewTransaction",
        "mqttEventsLocal",
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
.method public abstract deleteAllEvents()Lio/reactivex/Completable;
.end method

.method public abstract getLocalEvents()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getNumberOfFailedTransactions()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewTransaction(Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method
