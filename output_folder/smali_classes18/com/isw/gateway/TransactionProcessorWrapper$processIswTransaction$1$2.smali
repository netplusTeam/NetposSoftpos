.class final Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$2;
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
        "Ljava/lang/Throwable;",
        "Lio/reactivex/SingleSource<",
        "+",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a*\u0012\u000e\u0008\u0001\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0014\u0012\u000e\u0008\u0001\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/SingleSource;",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
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

    iput-object p1, p0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$2;->this$0:Lcom/isw/gateway/TransactionProcessorWrapper;

    iput-object p2, p0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$2;->$timeMgr:Lcom/danbamitale/epmslib/utils/IsoTimeManager;

    iput-object p3, p0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$2;->$cardData:Lcom/danbamitale/epmslib/entities/CardData;

    iput-wide p4, p0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$2;->$transactionTime:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Throwable;)Lio/reactivex/SingleSource;
    .locals 35
    .param p1, "it"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/SingleSource<",
            "+",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interswitch error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 180
    instance-of v2, v1, Lretrofit2/HttpException;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lretrofit2/HttpException;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, v0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$2;->this$0:Lcom/isw/gateway/TransactionProcessorWrapper;

    iget-object v4, v0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$2;->$timeMgr:Lcom/danbamitale/epmslib/utils/IsoTimeManager;

    iget-object v7, v0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$2;->$cardData:Lcom/danbamitale/epmslib/entities/CardData;

    iget-wide v8, v0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$2;->$transactionTime:J

    .local v2, "httpException":Lretrofit2/HttpException;
    const/16 v17, 0x0

    .line 182
    .local v17, "$i$a$-let-TransactionProcessorWrapper$processIswTransaction$1$2$1":I
    new-instance v5, Lcom/isw/iswclient/response/CashOutResponnse;

    move-object/from16 v18, v5

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0xfff

    const/16 v34, 0x0

    invoke-direct/range {v18 .. v34}, Lcom/isw/iswclient/response/CashOutResponnse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v6, v5

    .local v6, "$this$invoke_u24lambda_u241_u24lambda_u240":Lcom/isw/iswclient/response/CashOutResponnse;
    const/4 v10, 0x0

    .line 183
    .local v10, "$i$a$-apply-TransactionProcessorWrapper$processIswTransaction$1$2$1$1":I
    invoke-static {v3}, Lcom/isw/gateway/TransactionProcessorWrapper;->access$getAmount$p(Lcom/isw/gateway/TransactionProcessorWrapper;)J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Lcom/isw/iswclient/response/CashOutResponnse;->setAmountAuthorized(J)V

    .line 184
    invoke-static {v3}, Lcom/isw/gateway/TransactionProcessorWrapper;->access$getOtherAmount$p(Lcom/isw/gateway/TransactionProcessorWrapper;)J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Lcom/isw/iswclient/response/CashOutResponnse;->setAmountOther(J)V

    .line 185
    const-string v11, "A3"

    invoke-virtual {v6, v11}, Lcom/isw/iswclient/response/CashOutResponnse;->setField39(Ljava/lang/String;)V

    .line 186
    nop

    .line 182
    .end local v6    # "$this$invoke_u24lambda_u241_u24lambda_u240":Lcom/isw/iswclient/response/CashOutResponnse;
    .end local v10    # "$i$a$-apply-TransactionProcessorWrapper$processIswTransaction$1$2$1$1":I
    nop

    .line 187
    invoke-virtual {v3}, Lcom/isw/gateway/TransactionProcessorWrapper;->getTransactionRequestData()Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getSTAN()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getTime()Ljava/lang/String;

    move-result-object v6

    .line 188
    :cond_1
    nop

    .line 189
    nop

    .line 190
    invoke-virtual {v3}, Lcom/isw/gateway/TransactionProcessorWrapper;->getTransactionRequestData()Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getIswParameters()Lcom/isw/iswclient/request/IswParameters;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 191
    invoke-static {v3}, Lcom/isw/gateway/TransactionProcessorWrapper;->access$getAmount$p(Lcom/isw/gateway/TransactionProcessorWrapper;)J

    move-result-wide v11

    .line 192
    invoke-virtual {v3}, Lcom/isw/gateway/TransactionProcessorWrapper;->getTransactionRequestData()Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v13}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getIswParameters()Lcom/isw/iswclient/request/IswParameters;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v13}, Lcom/isw/iswclient/request/IswParameters;->getInterSwitchThreshold()J

    move-result-wide v13

    .line 193
    invoke-virtual {v2}, Lretrofit2/HttpException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    .line 194
    invoke-virtual {v3}, Lcom/isw/gateway/TransactionProcessorWrapper;->getTransactionRequestData()Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;->getRRN()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v4}, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->getFullDate()Ljava/lang/String;

    move-result-object v3

    .line 195
    const/4 v4, 0x2

    .line 196
    const/16 v0, 0xe

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v0

    goto :goto_1

    .line 194
    :cond_2
    move-object/from16 v16, v3

    .line 186
    :goto_1
    invoke-static/range {v5 .. v16}, Lcom/isw/iswclient/response/CashOutResponnseKt;->toTransactionResponse(Lcom/isw/iswclient/response/CashOutResponnse;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/CardData;JLcom/isw/iswclient/request/IswParameters;JJLjava/lang/String;Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0

    .line 201
    .end local v2    # "httpException":Lretrofit2/HttpException;
    .end local v17    # "$i$a$-let-TransactionProcessorWrapper$processIswTransaction$1$2$1":I
    :cond_3
    invoke-static/range {p1 .. p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 178
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$2;->invoke(Ljava/lang/Throwable;)Lio/reactivex/SingleSource;

    move-result-object v0

    return-object v0
.end method
