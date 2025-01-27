.class public interface abstract Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;
.super Ljava/lang/Object;
.source "ContactlessRegistrationService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J.\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0007H\'J.\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010\r\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0007H\'J.\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0007H\'\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;",
        "",
        "register",
        "Lio/reactivex/Single;",
        "Lcom/woleapp/netpos/contactless/model/RegistrationModel;",
        "registrationModel",
        "bank",
        "",
        "deviceSerialId",
        "registerExistingAccountForZenith",
        "Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;",
        "registerExistingAccountRegisterRequest",
        "Lcom/woleapp/netpos/contactless/model/RegistrationZenithModel;",
        "partnerId",
        "registerFBN",
        "Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;",
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
.method public abstract register(Lcom/woleapp/netpos/contactless/model/RegistrationModel;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/RegistrationModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "bank"
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
            "Lcom/woleapp/netpos/contactless/model/RegistrationModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/RegistrationModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/register"
    .end annotation
.end method

.method public abstract registerExistingAccountForZenith(Lcom/woleapp/netpos/contactless/model/RegistrationZenithModel;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/RegistrationZenithModel;
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
            "Lcom/woleapp/netpos/contactless/model/RegistrationZenithModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/register-zenith-account"
    .end annotation
.end method

.method public abstract registerFBN(Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "bank"
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
            "Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/RegistrationModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/register"
    .end annotation
.end method
