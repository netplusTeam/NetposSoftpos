.class final Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TransactionProcessorWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/gateway/TransactionProcessorWrapper;->processIswTransaction(Lcom/danbamitale/epmslib/entities/CardData;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/isw/iswclient/response/CashOutResponnse;",
        "Lio/reactivex/SingleSource<",
        "+",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a*\u0012\u000e\u0008\u0001\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0014\u0012\u000e\u0008\u0001\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/SingleSource;",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lcom/isw/iswclient/response/CashOutResponnse;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $cardData:Lcom/danbamitale/epmslib/entities/CardData;

.field final synthetic $timeMgr:Lcom/danbamitale/epmslib/utils/IsoTimeManager;

.field final synthetic $transactionTime:J

.field final synthetic this$0:Lcom/isw/gateway/TransactionProcessorWrapper;


# direct methods
.method constructor <init>(Lcom/isw/gateway/TransactionProcessorWrapper;Lcom/danbamitale/epmslib/utils/IsoTimeManager;Lcom/danbamitale/epmslib/entities/CardData;J)V
    .locals 1

    iput-object p1, p0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$1;->this$0:Lcom/isw/gateway/TransactionProcessorWrapper;

    iput-object p2, p0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$1;->$timeMgr:Lcom/danbamitale/epmslib/utils/IsoTimeManager;

    iput-object p3, p0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$1;->$cardData:Lcom/danbamitale/epmslib/entities/CardData;

    iput-wide p4, p0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$1;->$transactionTime:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/isw/iswclient/response/CashOutResponnse;)Lio/reactivex/SingleSource;
    .locals 16
    .param p1, "it"    # Lcom/isw/iswclient/response/CashOutResponnse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isw/iswclient/response/CashOutResponnse;",
            ")",
            "Lio/reactivex/SingleSource<",
            "+",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "it"

    move-object/from16 v15, p1

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    nop

    .line 169
    iget-object v1, v0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$1;->this$0:Lcom/isw/gateway/TransactionProcessorWrapper;

    invoke-virtual {v1}, Lcom/isw/gateway/TransactionProcessorWrapper;->getTransactionRequestData()Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getSTAN()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$1;->$timeMgr:Lcom/danbamitale/epmslib/utils/IsoTimeManager;

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getTime()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v3, v1

    .line 170
    iget-object v4, v0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$1;->$cardData:Lcom/danbamitale/epmslib/entities/CardData;

    .line 171
    iget-wide v5, v0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$1;->$transactionTime:J

    .line 172
    iget-object v1, v0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$1;->this$0:Lcom/isw/gateway/TransactionProcessorWrapper;

    invoke-virtual {v1}, Lcom/isw/gateway/TransactionProcessorWrapper;->getTransactionRequestData()Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getIswParameters()Lcom/isw/iswclient/request/IswParameters;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 173
    iget-object v1, v0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$1;->this$0:Lcom/isw/gateway/TransactionProcessorWrapper;

    invoke-static {v1}, Lcom/isw/gateway/TransactionProcessorWrapper;->access$getAmount$p(Lcom/isw/gateway/TransactionProcessorWrapper;)J

    move-result-wide v8

    .line 174
    iget-object v1, v0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$1;->this$0:Lcom/isw/gateway/TransactionProcessorWrapper;

    invoke-virtual {v1}, Lcom/isw/gateway/TransactionProcessorWrapper;->getTransactionRequestData()Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getIswParameters()Lcom/isw/iswclient/request/IswParameters;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/isw/iswclient/request/IswParameters;->getInterSwitchThreshold()J

    move-result-wide v10

    .line 168
    const/4 v12, 0x0

    .line 175
    iget-object v1, v0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$1;->this$0:Lcom/isw/gateway/TransactionProcessorWrapper;

    invoke-virtual {v1}, Lcom/isw/gateway/TransactionProcessorWrapper;->getTransactionRequestData()Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getRRN()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$1;->$timeMgr:Lcom/danbamitale/epmslib/utils/IsoTimeManager;

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getFullDate()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/16 v13, 0xe

    invoke-virtual {v1, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v13, v1

    .line 168
    const/16 v14, 0x40

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move-object v15, v1

    invoke-static/range {v2 .. v15}, Lcom/isw/iswclient/response/CashOutResponnseKt;->toTransactionResponse$default(Lcom/isw/iswclient/response/CashOutResponnse;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/CardData;JLcom/isw/iswclient/request/IswParameters;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object v1

    .line 167
    invoke-static {v1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v1

    check-cast v1, Lio/reactivex/SingleSource;

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 166
    move-object v0, p1

    check-cast v0, Lcom/isw/iswclient/response/CashOutResponnse;

    invoke-virtual {p0, v0}, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$1;->invoke(Lcom/isw/iswclient/response/CashOutResponnse;)Lio/reactivex/SingleSource;

    move-result-object v0

    return-object v0
.end method
