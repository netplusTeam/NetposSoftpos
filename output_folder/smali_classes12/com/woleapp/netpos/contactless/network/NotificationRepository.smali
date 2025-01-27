.class public final Lcom/woleapp/netpos/contactless/network/NotificationRepository;
.super Ljava/lang/Object;
.source "NotificationRepository.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\"\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nJ*\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nJ$\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00062\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/NotificationRepository;",
        "",
        "notificationService",
        "Lcom/woleapp/netpos/contactless/network/NotificationService;",
        "(Lcom/woleapp/netpos/contactless/network/NotificationService;)V",
        "deleteAccount",
        "Lio/reactivex/Single;",
        "Lretrofit2/Response;",
        "Lcom/woleapp/netpos/contactless/model/FeedbackResponse;",
        "username",
        "",
        "deviceId",
        "feedbackFromMerchants",
        "feedbackRequest",
        "Lcom/woleapp/netpos/contactless/model/FeedbackRequest;",
        "terminalId",
        "registerDeviceToken",
        "Lcom/woleapp/netpos/contactless/model/RegisterDeviceTokenResponse;",
        "deviceRegistrationToken",
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
.field private final notificationService:Lcom/woleapp/netpos/contactless/network/NotificationService;


# direct methods
.method public constructor <init>(Lcom/woleapp/netpos/contactless/network/NotificationService;)V
    .locals 1
    .param p1, "notificationService"    # Lcom/woleapp/netpos/contactless/network/NotificationService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "notificationService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/network/NotificationRepository;->notificationService:Lcom/woleapp/netpos/contactless/network/NotificationService;

    .line 10
    return-void
.end method


# virtual methods
.method public final deleteAccount(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/woleapp/netpos/contactless/model/FeedbackResponse;",
            ">;>;"
        }
    .end annotation

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/NotificationRepository;->notificationService:Lcom/woleapp/netpos/contactless/network/NotificationService;

    .line 29
    new-instance v1, Lcom/woleapp/netpos/contactless/model/AccountDeletionRequest;

    invoke-direct {v1, p2, p1}, Lcom/woleapp/netpos/contactless/model/AccountDeletionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-interface {v0, v1}, Lcom/woleapp/netpos/contactless/network/NotificationService;->deleteAccount(Lcom/woleapp/netpos/contactless/model/AccountDeletionRequest;)Lio/reactivex/Single;

    move-result-object v0

    .line 30
    return-object v0
.end method

.method public final feedbackFromMerchants(Lcom/woleapp/netpos/contactless/model/FeedbackRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .param p1, "feedbackRequest"    # Lcom/woleapp/netpos/contactless/model/FeedbackRequest;
    .param p2, "terminalId"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/FeedbackRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/woleapp/netpos/contactless/model/FeedbackResponse;",
            ">;>;"
        }
    .end annotation

    const-string v0, "feedbackRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "username"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/NotificationRepository;->notificationService:Lcom/woleapp/netpos/contactless/network/NotificationService;

    .line 23
    nop

    .line 22
    invoke-interface {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/NotificationService;->feedbackFromMerchants(Lcom/woleapp/netpos/contactless/model/FeedbackRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 24
    return-object v0
.end method

.method public final registerDeviceToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .param p1, "deviceRegistrationToken"    # Ljava/lang/String;
    .param p2, "terminalId"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/RegisterDeviceTokenResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "deviceRegistrationToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "username"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/NotificationRepository;->notificationService:Lcom/woleapp/netpos/contactless/network/NotificationService;

    .line 17
    new-instance v1, Lcom/woleapp/netpos/contactless/model/NotificationRegisterDeviceTokenModel;

    invoke-direct {v1, p1, p2, p3}, Lcom/woleapp/netpos/contactless/model/NotificationRegisterDeviceTokenModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-interface {v0, v1}, Lcom/woleapp/netpos/contactless/network/NotificationService;->registerDeviceToken(Lcom/woleapp/netpos/contactless/model/NotificationRegisterDeviceTokenModel;)Lio/reactivex/Single;

    move-result-object v0

    .line 18
    return-object v0
.end method
