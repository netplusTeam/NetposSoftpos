.class public final Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;
.super Landroidx/work/Worker;
.source "SaveAppCampaignToDbWorker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u0010*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;",
        "Landroidx/work/Worker;",
        "context",
        "Landroid/content/Context;",
        "workerParameters",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "appNotificationDao",
        "Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;",
        "compositeDisposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "gson",
        "Lcom/google/gson/Gson;",
        "ioScheduler",
        "Lio/reactivex/Scheduler;",
        "mainThreadScheduler",
        "kotlin.jvm.PlatformType",
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
.field private final appNotificationDao:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

.field private final compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private final gson:Lcom/google/gson/Gson;

.field private final ioScheduler:Lio/reactivex/Scheduler;

.field private final mainThreadScheduler:Lio/reactivex/Scheduler;


# direct methods
.method public static synthetic $r8$lambda$01COcKTuEnzJoJHf32GjLmP0fWc(Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;Lkotlin/jvm/internal/Ref$LongRef;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Long;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;->doWork$lambda-4$lambda-3(Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;Lkotlin/jvm/internal/Ref$LongRef;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Long;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "workerParameters"    # Landroidx/work/WorkerParameters;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 20
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;->gson:Lcom/google/gson/Gson;

    .line 21
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 22
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    const-string v1, "io()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;->ioScheduler:Lio/reactivex/Scheduler;

    .line 23
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;->mainThreadScheduler:Lio/reactivex/Scheduler;

    .line 25
    sget-object v0, Lcom/woleapp/netpos/contactless/database/AppDatabase;->Companion:Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;->getDatabaseInstance(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->getAppNotificationDao()Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;->appNotificationDao:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

    .line 16
    return-void
.end method

.method private static final doWork$lambda-4$lambda-3(Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;Lkotlin/jvm/internal/Ref$LongRef;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Long;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;
    .param p1, "$affectedRows"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p2, "$latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "rows"    # Ljava/lang/Long;
    .param p4, "error"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$affectedRows"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$latch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    if-eqz p3, :cond_0

    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .local v0, "it":J
    const/4 v2, 0x0

    .line 38
    .local v2, "$i$a$-let-SaveAppCampaignToDbWorker$doWork$numOfAffectedRows$1$1$1":I
    iput-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 39
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 40
    nop

    .line 37
    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-SaveAppCampaignToDbWorker$doWork$numOfAffectedRows$1$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 40
    move-object v0, p0

    .local v0, "$this$doWork_u24lambda_u2d4_u24lambda_u2d3_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;
    const/4 v3, 0x0

    .line 41
    .local v3, "$i$a$-run-SaveAppCampaignToDbWorker$doWork$numOfAffectedRows$1$1$2":I
    iput-wide v1, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 42
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 43
    nop

    .line 45
    .end local v0    # "$this$doWork_u24lambda_u2d4_u24lambda_u2d3_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;
    .end local v3    # "$i$a$-run-SaveAppCampaignToDbWorker$doWork$numOfAffectedRows$1$1$2":I
    :cond_1
    if-eqz p4, :cond_2

    move-object v0, p4

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 46
    .local v3, "$i$a$-let-SaveAppCampaignToDbWorker$doWork$numOfAffectedRows$1$1$3":I
    iput-wide v1, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 47
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 48
    nop

    .line 45
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-SaveAppCampaignToDbWorker$doWork$numOfAffectedRows$1$1$3":I
    nop

    .line 49
    :cond_2
    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 10

    .line 28
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "WORKER_INPUT_APP_NOTIFICATION_TAG"

    invoke-virtual {v0, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "inputData":Ljava/lang/String;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    .line 30
    .local v1, "notificationToSaveToDb":Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v1

    .local v4, "notification":Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    const/4 v5, 0x0

    .line 31
    .local v5, "$i$a$-let-SaveAppCampaignToDbWorker$doWork$numOfAffectedRows$1":I
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 32
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 33
    .local v7, "affectedRows":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v8, p0, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;->appNotificationDao:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

    invoke-interface {v8, v4}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;->insertMessage(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)Lio/reactivex/Single;

    move-result-object v8

    .line 34
    iget-object v9, p0, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;->ioScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v8, v9}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v8

    .line 35
    iget-object v9, p0, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;->mainThreadScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v8, v9}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v8

    .line 36
    new-instance v9, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v7, v6}, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;Lkotlin/jvm/internal/Ref$LongRef;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v8, v9}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v8

    const-string v9, "appNotificationDao.inser\u2026      }\n                }"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v9, p0, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v8, v9}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 50
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 51
    iget-wide v4, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 30
    .end local v4    # "notification":Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    .end local v5    # "$i$a$-let-SaveAppCampaignToDbWorker$doWork$numOfAffectedRows$1":I
    .end local v6    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v7    # "affectedRows":Lkotlin/jvm/internal/Ref$LongRef;
    goto :goto_0

    .line 52
    :cond_0
    move-wide v4, v2

    .line 30
    :goto_0
    nop

    .line 54
    .local v4, "numOfAffectedRows":J
    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    const-string v3, "success()"

    goto :goto_1

    :cond_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    const-string v3, "retry()"

    :goto_1
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public onStopped()V
    .locals 1

    .line 58
    invoke-super {p0}, Landroidx/work/Worker;->onStopped()V

    .line 59
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 60
    return-void
.end method
