.class public final Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker;
.super Landroidx/work/Worker;
.source "SaveTransactionFromFirebaseMessagingServiceToDbWorker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker;",
        "Landroidx/work/Worker;",
        "context",
        "Landroid/content/Context;",
        "workerParameters",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "compositeDisposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "transactionResponseDao",
        "Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "onStopped",
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


# instance fields
.field private final compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private final transactionResponseDao:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;


# direct methods
.method public static synthetic $r8$lambda$EbDn86DjsYrU4fshYpItUrsa6nA(Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker;Lkotlin/jvm/internal/Ref$LongRef;Ljava/lang/Long;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker;->doWork$lambda-4$lambda-3(Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker;Lkotlin/jvm/internal/Ref$LongRef;Ljava/lang/Long;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "workerParameters"    # Landroidx/work/WorkerParameters;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 20
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 22
    sget-object v0, Lcom/woleapp/netpos/contactless/database/AppDatabase;->Companion:Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;->getDatabaseInstance(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->transactionResponseDao()Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker;->transactionResponseDao:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    .line 16
    return-void
.end method

.method private static final doWork$lambda-4$lambda-3(Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker;Lkotlin/jvm/internal/Ref$LongRef;Ljava/lang/Long;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker;
    .param p1, "$numberOfAffectedRows"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p2, "t1"    # Ljava/lang/Long;
    .param p3, "t2"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$numberOfAffectedRows"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-wide/16 v0, 0x0

    if-eqz p2, :cond_0

    move-object v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .local v2, "it":J
    const/4 v4, 0x0

    .line 35
    .local v4, "$i$a$-let-SaveTransactionFromFirebaseMessagingServiceToDbWorker$doWork$affectedRows$1$1$1":I
    iput-wide v2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 36
    iget-wide v2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 34
    .end local v2    # "it":J
    .end local v4    # "$i$a$-let-SaveTransactionFromFirebaseMessagingServiceToDbWorker$doWork$affectedRows$1$1$1":I
    goto :goto_0

    .line 37
    :cond_0
    move-object v2, p0

    .local v2, "$this$doWork_u24lambda_u2d4_u24lambda_u2d3_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker;
    const/4 v3, 0x0

    .line 38
    .local v3, "$i$a$-run-SaveTransactionFromFirebaseMessagingServiceToDbWorker$doWork$affectedRows$1$1$2":I
    iput-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 39
    nop

    .line 37
    .end local v2    # "$this$doWork_u24lambda_u2d4_u24lambda_u2d3_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker;
    .end local v3    # "$i$a$-run-SaveTransactionFromFirebaseMessagingServiceToDbWorker$doWork$affectedRows$1$1$2":I
    :goto_0
    nop

    .line 42
    if-eqz p3, :cond_1

    move-object v2, p3

    .local v2, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 43
    .local v3, "$i$a$-let-SaveTransactionFromFirebaseMessagingServiceToDbWorker$doWork$affectedRows$1$1$3":I
    iput-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 44
    nop

    .line 42
    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-SaveTransactionFromFirebaseMessagingServiceToDbWorker$doWork$affectedRows$1$1$3":I
    nop

    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 48

    .line 25
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    const-string v2, "WORKER_INPUT_PBT_TRANSACTION_TAG"

    invoke-virtual {v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "inputData":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    .line 26
    nop

    .line 28
    .local v2, "transactionToSave":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const-wide/16 v43, 0x0

    if-eqz v2, :cond_0

    move-object v3, v2

    .local v3, "pbtTransaction":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/16 v45, 0x0

    .line 29
    .local v45, "$i$a$-let-SaveTransactionFromFirebaseMessagingServiceToDbWorker$doWork$affectedRows$1":I
    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    move-object v15, v4

    .line 30
    .local v15, "numberOfAffectedRows":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v13, v0, Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker;->transactionResponseDao:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAmount()J

    move-result-wide v6

    const/16 v8, 0x64

    int-to-long v8, v8

    mul-long/2addr v6, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v46, v13

    move-wide/from16 v13, v16

    const/16 v16, 0x0

    move-object/from16 v47, v15

    .end local v15    # "numberOfAffectedRows":Lkotlin/jvm/internal/Ref$LongRef;
    .local v47, "numberOfAffectedRows":Lkotlin/jvm/internal/Ref$LongRef;
    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, -0x5

    const/16 v42, 0x0

    invoke-static/range {v3 .. v42}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->copy$default(Lcom/danbamitale/epmslib/entities/TransactionResponse;Lcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/danbamitale/epmslib/entities/PosMode;JLjava/lang/String;ILjava/lang/Object;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object v4

    move-object/from16 v5, v46

    invoke-interface {v5, v4}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;->insertNewTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/Single;

    move-result-object v4

    .line 31
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v4

    .line 32
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v4

    .line 33
    new-instance v5, Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker$$ExternalSyntheticLambda0;

    move-object/from16 v6, v47

    .end local v47    # "numberOfAffectedRows":Lkotlin/jvm/internal/Ref$LongRef;
    .local v6, "numberOfAffectedRows":Lkotlin/jvm/internal/Ref$LongRef;
    invoke-direct {v5, v0, v6}, Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker;Lkotlin/jvm/internal/Ref$LongRef;)V

    invoke-virtual {v4, v5}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v4

    const-string v5, "transactionResponseDao.i\u2026      }\n                }"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v5, v0, Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v4, v5}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 46
    iget-wide v3, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 28
    .end local v3    # "pbtTransaction":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v6    # "numberOfAffectedRows":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v45    # "$i$a$-let-SaveTransactionFromFirebaseMessagingServiceToDbWorker$doWork$affectedRows$1":I
    goto :goto_0

    .line 47
    :cond_0
    move-wide/from16 v3, v43

    .line 28
    :goto_0
    nop

    .line 48
    .local v3, "affectedRows":J
    cmp-long v5, v3, v43

    if-lez v5, :cond_1

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v5

    const-string v6, "success()"

    goto :goto_1

    :cond_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v5

    const-string v6, "retry()"

    :goto_1
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v5
.end method

.method public onStopped()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroidx/work/Worker;->onStopped()V

    .line 53
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 54
    return-void
.end method
