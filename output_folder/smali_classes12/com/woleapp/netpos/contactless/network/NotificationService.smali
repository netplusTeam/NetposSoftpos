.class public interface abstract Lcom/woleapp/netpos/contactless/network/NotificationService;
.super Ljava/lang/Object;
.source "NotificationService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\'J2\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0008\u0008\u0001\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\r\u001a\u00020\u000cH\'J\u0018\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00032\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u0011H\'\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/NotificationService;",
        "",
        "deleteAccount",
        "Lio/reactivex/Single;",
        "Lretrofit2/Response;",
        "Lcom/woleapp/netpos/contactless/model/FeedbackResponse;",
        "accountDeletionRequest",
        "Lcom/woleapp/netpos/contactless/model/AccountDeletionRequest;",
        "feedbackFromMerchants",
        "feedbackRequest",
        "Lcom/woleapp/netpos/contactless/model/FeedbackRequest;",
        "partnerId",
        "",
        "deviceSerialId",
        "registerDeviceToken",
        "Lcom/woleapp/netpos/contactless/model/RegisterDeviceTokenResponse;",
        "notificationRegisterDeviceTokenModel",
        "Lcom/woleapp/netpos/contactless/model/NotificationRegisterDeviceTokenModel;",
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
.method public abstract deleteAccount(Lcom/woleapp/netpos/contactless/model/AccountDeletionRequest;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/AccountDeletionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/AccountDeletionRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/woleapp/netpos/contactless/model/FeedbackResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/delete-account"
    .end annotation
.end method

.method public abstract feedbackFromMerchants(Lcom/woleapp/netpos/contactless/model/FeedbackRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/FeedbackRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "partnerId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "deviceSerialId"
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "merchant-feedback"
    .end annotation
.end method

.method public abstract registerDeviceToken(Lcom/woleapp/netpos/contactless/model/NotificationRegisterDeviceTokenModel;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/NotificationRegisterDeviceTokenModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/NotificationRegisterDeviceTokenModel;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/RegisterDeviceTokenResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "registerDeviceToken"
    .end annotation
.end method
