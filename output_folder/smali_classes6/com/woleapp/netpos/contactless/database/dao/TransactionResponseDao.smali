.class public interface abstract Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;
.super Ljava/lang/Object;
.source "TransactionResponseDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008g\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\'J\u0014\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0003H\'J\u001c\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0006\u0010\r\u001a\u00020\u000eH\'J\u001c\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0006\u0010\t\u001a\u00020\nH\'J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00112\u0006\u0010\u0012\u001a\u00020\u0005H\'J\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00112\u0006\u0010\u0012\u001a\u00020\u0005H\'\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;",
        "",
        "getEndOfDayTransaction",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "beginningOfDay",
        "",
        "endOfDay",
        "terminalId",
        "",
        "getRefundableTransactions",
        "getTransactionByTransactionType",
        "transactionType",
        "Lcom/danbamitale/epmslib/entities/TransactionType;",
        "getTransactions",
        "insertNewTransaction",
        "Lio/reactivex/Single;",
        "transactionResponse",
        "updateTransaction",
        "",
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
.method public abstract getEndOfDayTransaction(JJLjava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getRefundableTransactions()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTransactionByTransactionType(Lcom/danbamitale/epmslib/entities/TransactionType;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/danbamitale/epmslib/entities/TransactionType;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTransactions(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract insertNewTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
