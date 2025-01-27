.class public interface abstract Lcom/woleapp/netpos/contactless/network/AccountLookUpService;
.super Ljava/lang/Object;
.source "AccountLookUpService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\'J.\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00032\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J2\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\u00032\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J,\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J,\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00032\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J\u000e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0003H\'J,\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00032\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J,\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00032\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u001e2\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J,\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00032\u0008\u0008\u0001\u0010\u001b\u001a\u00020 2\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J.\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00032\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J.\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u00032\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'J.\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00032\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\'\u00a8\u0006%"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/AccountLookUpService;",
        "",
        "confirmOTP",
        "Lio/reactivex/Single;",
        "Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;",
        "Lcom/woleapp/netpos/contactless/model/ConfirmOTPRequest;",
        "partnerId",
        "",
        "confirmOTPToSetPassword",
        "Lcom/woleapp/netpos/contactless/model/GeneralResponse;",
        "payload",
        "Lcom/google/gson/JsonObject;",
        "deviceSerialId",
        "findAccount",
        "Lretrofit2/Response;",
        "Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpResponse;",
        "accountNumber",
        "Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpRequest;",
        "findAccountForFirstBankUser",
        "getBranches",
        "Lcom/woleapp/netpos/contactless/model/GetFBNBranchResponse;",
        "stateId",
        "",
        "getStates",
        "Lcom/woleapp/netpos/contactless/model/GetStatesResponse;",
        "registerExistingAccount",
        "Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;",
        "registerExistingAccountRegisterRequest",
        "Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterRequest;",
        "registerExistingAccountForBankT",
        "Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;",
        "registerExistingAccountForFBN",
        "Lcom/woleapp/netpos/contactless/model/RegistrationForExistingFBNUsersRequest;",
        "resetPassword",
        "resetPasswordForProvidus",
        "Lcom/woleapp/netpos/contactless/model/ResetPasswordResponseForProvidus;",
        "setNewPassword",
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
.method public abstract confirmOTP(Lcom/woleapp/netpos/contactless/model/ConfirmOTPRequest;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/ConfirmOTPRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "partnerId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/ConfirmOTPRequest;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "confirm-otp"
    .end annotation
.end method

.method public abstract confirmOTPToSetPassword(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Lcom/google/gson/JsonObject;
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
            "Lcom/google/gson/JsonObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/GeneralResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/confirm-reset-otp"
    .end annotation
.end method

.method public abstract findAccount(Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpRequest;
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
            "Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "account-lookup"
    .end annotation
.end method

.method public abstract findAccountForFirstBankUser(Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpRequest;
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
            "Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "account-lookup"
    .end annotation
.end method

.method public abstract getBranches(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "stateId"
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
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/GetFBNBranchResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "get-bank-branches/{stateId}"
    .end annotation
.end method

.method public abstract getStates()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/GetStatesResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "get-states"
    .end annotation
.end method

.method public abstract registerExistingAccount(Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterRequest;
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
            "Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/register-existing-user"
    .end annotation
.end method

.method public abstract registerExistingAccountForBankT(Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;
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
            "Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/register-existing-user"
    .end annotation
.end method

.method public abstract registerExistingAccountForFBN(Lcom/woleapp/netpos/contactless/model/RegistrationForExistingFBNUsersRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Lcom/woleapp/netpos/contactless/model/RegistrationForExistingFBNUsersRequest;
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
            "Lcom/woleapp/netpos/contactless/model/RegistrationForExistingFBNUsersRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/register-existing-user"
    .end annotation
.end method

.method public abstract resetPassword(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Lcom/google/gson/JsonObject;
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
            "Lcom/google/gson/JsonObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/GeneralResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/reset-password-request"
    .end annotation
.end method

.method public abstract resetPasswordForProvidus(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Lcom/google/gson/JsonObject;
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
            "Lcom/google/gson/JsonObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/ResetPasswordResponseForProvidus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/reset-password-request"
    .end annotation
.end method

.method public abstract setNewPassword(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Lcom/google/gson/JsonObject;
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
            "Lcom/google/gson/JsonObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/GeneralResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/auth/new-password"
    .end annotation
.end method
