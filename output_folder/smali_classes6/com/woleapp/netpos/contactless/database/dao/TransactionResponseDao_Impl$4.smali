.class Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$4;
.super Ljava/lang/Object;
.source "TransactionResponseDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->updateTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

.field final synthetic val$transactionResponse:Lcom/danbamitale/epmslib/entities/TransactionResponse;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;Lcom/danbamitale/epmslib/entities/TransactionResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$transactionResponse"
        }
    .end annotation

    .line 375
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$4;->this$0:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$4;->val$transactionResponse:Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "_total":I
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$4;->this$0:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->access$100(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$4;->this$0:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->access$300(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$4;->val$transactionResponse:Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-virtual {v1, v2}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$4;->this$0:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->access$100(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 383
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$4;->this$0:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->access$100(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 383
    return-object v1

    .line 385
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$4;->this$0:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->access$100(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 386
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$4;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
