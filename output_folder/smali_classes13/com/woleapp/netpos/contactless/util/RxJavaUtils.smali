.class public final Lcom/woleapp/netpos/contactless/util/RxJavaUtils;
.super Ljava/lang/Object;
.source "RxJavaUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0000\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/util/RxJavaUtils;",
        "",
        "()V",
        "getSingleTransformer",
        "Lio/reactivex/SingleTransformer;",
        "T",
        "errorTag",
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


# static fields
.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/util/RxJavaUtils;


# direct methods
.method public static synthetic $r8$lambda$Q0f4IOoIaxd1YfBm8XVZ1smcaLM(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/util/RxJavaUtils;->getSingleTransformer$lambda-1$lambda-0(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R-bD3hTpkjjT21WOletMa9S-tkU(Ljava/lang/String;Lio/reactivex/Single;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/util/RxJavaUtils;->getSingleTransformer$lambda-1(Ljava/lang/String;Lio/reactivex/Single;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/util/RxJavaUtils;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/util/RxJavaUtils;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/util/RxJavaUtils;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RxJavaUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getSingleTransformer$lambda-1(Ljava/lang/String;Lio/reactivex/Single;)Lio/reactivex/SingleSource;
    .locals 2
    .param p0, "$errorTag"    # Ljava/lang/String;
    .param p1, "it"    # Lio/reactivex/Single;

    const-string v0, "$errorTag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 12
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 13
    new-instance v1, Lcom/woleapp/netpos/contactless/util/RxJavaUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/util/RxJavaUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method private static final getSingleTransformer$lambda-1$lambda-0(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "$errorTag"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    const-string v0, "$errorTag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void
.end method


# virtual methods
.method public final getSingleTransformer(Ljava/lang/String;)Lio/reactivex/SingleTransformer;
    .locals 1
    .param p1, "errorTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/SingleTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    const-string v0, "errorTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/woleapp/netpos/contactless/util/RxJavaUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/woleapp/netpos/contactless/util/RxJavaUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 16
    return-object v0
.end method
