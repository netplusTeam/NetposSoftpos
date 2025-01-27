.class public final Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;
.super Ljava/lang/Object;
.source "ContactlessRegRepository.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J,\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tJ$\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00062\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tJ*\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00130\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tJ$\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tJ$\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00062\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tJ\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0006J$\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00062\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tJ$\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00062\u0006\u0010\u001e\u001a\u00020!2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tJ$\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00062\u0006\u0010\u001e\u001a\u00020#2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tJ$\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00062\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tJ$\u0010%\u001a\u0008\u0012\u0004\u0012\u00020&0\u00062\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tJ$\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00062\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;",
        "",
        "accountLookUpService",
        "Lcom/woleapp/netpos/contactless/network/AccountLookUpService;",
        "(Lcom/woleapp/netpos/contactless/network/AccountLookUpService;)V",
        "confirmOTP",
        "Lio/reactivex/Single;",
        "Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;",
        "phoneNumber",
        "",
        "accountNumber",
        "otp",
        "partnerId",
        "confirmOTPToSetPassword",
        "Lcom/woleapp/netpos/contactless/model/GeneralResponse;",
        "payload",
        "Lcom/google/gson/JsonObject;",
        "deviceSerialId",
        "findAccount",
        "Lretrofit2/Response;",
        "Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpResponse;",
        "findAccountForFirstBankUser",
        "getBranches",
        "Lcom/woleapp/netpos/contactless/model/GetFBNBranchResponse;",
        "stateId",
        "",
        "getStates",
        "Lcom/woleapp/netpos/contactless/model/GetStatesResponse;",
        "registerExistingAccount",
        "Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;",
        "existingAccountRegisterRequest",
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


# instance fields
.field private final accountLookUpService:Lcom/woleapp/netpos/contactless/network/AccountLookUpService;


# direct methods
.method public constructor <init>(Lcom/woleapp/netpos/contactless/network/AccountLookUpService;)V
    .locals 1
    .param p1, "accountLookUpService"    # Lcom/woleapp/netpos/contactless/network/AccountLookUpService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountLookUpService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->accountLookUpService:Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    .line 10
    return-void
.end method


# virtual methods
.method public final confirmOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "accountNumber"    # Ljava/lang/String;
    .param p3, "otp"    # Ljava/lang/String;
    .param p4, "partnerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountNumber"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otp"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->accountLookUpService:Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    .line 26
    new-instance v1, Lcom/woleapp/netpos/contactless/model/ConfirmOTPRequest;

    invoke-direct {v1, p1, p2, p3}, Lcom/woleapp/netpos/contactless/model/ConfirmOTPRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-interface {v0, v1, p4}, Lcom/woleapp/netpos/contactless/network/AccountLookUpService;->confirmOTP(Lcom/woleapp/netpos/contactless/model/ConfirmOTPRequest;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 27
    return-object v0
.end method

.method public final confirmOTPToSetPassword(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .param p1, "payload"    # Lcom/google/gson/JsonObject;
    .param p2, "partnerId"    # Ljava/lang/String;
    .param p3, "deviceSerialId"    # Ljava/lang/String;
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

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->accountLookUpService:Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    invoke-interface {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/AccountLookUpService;->confirmOTPToSetPassword(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final findAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .param p1, "accountNumber"    # Ljava/lang/String;
    .param p2, "partnerId"    # Ljava/lang/String;
    .param p3, "deviceSerialId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpResponse;",
            ">;>;"
        }
    .end annotation

    const-string v0, "accountNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->accountLookUpService:Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    .line 15
    new-instance v1, Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpRequest;

    invoke-direct {v1, p1}, Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpRequest;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-interface {v0, v1, p2, p3}, Lcom/woleapp/netpos/contactless/network/AccountLookUpService;->findAccount(Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final findAccountForFirstBankUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .param p1, "accountNumber"    # Ljava/lang/String;
    .param p2, "partnerId"    # Ljava/lang/String;
    .param p3, "deviceSerialId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "accountNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->accountLookUpService:Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    .line 21
    new-instance v1, Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpRequest;

    invoke-direct {v1, p1}, Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpRequest;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-interface {v0, v1, p2, p3}, Lcom/woleapp/netpos/contactless/network/AccountLookUpService;->findAccountForFirstBankUser(Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final getBranches(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .param p1, "stateId"    # I
    .param p2, "partnerId"    # Ljava/lang/String;
    .param p3, "deviceSerialId"    # Ljava/lang/String;
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

    const-string v0, "partnerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->accountLookUpService:Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    invoke-interface {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/AccountLookUpService;->getBranches(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final getStates()Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/model/GetStatesResponse;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->accountLookUpService:Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    invoke-interface {v0}, Lcom/woleapp/netpos/contactless/network/AccountLookUpService;->getStates()Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final registerExistingAccount(Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .param p1, "existingAccountRegisterRequest"    # Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterRequest;
    .param p2, "partnerId"    # Ljava/lang/String;
    .param p3, "deviceSerialId"    # Ljava/lang/String;
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

    const-string v0, "existingAccountRegisterRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->accountLookUpService:Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    .line 34
    nop

    .line 33
    invoke-interface {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/AccountLookUpService;->registerExistingAccount(Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 35
    return-object v0
.end method

.method public final registerExistingAccountForBankT(Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .param p1, "existingAccountRegisterRequest"    # Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;
    .param p2, "partnerId"    # Ljava/lang/String;
    .param p3, "deviceSerialId"    # Ljava/lang/String;
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

    const-string v0, "existingAccountRegisterRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->accountLookUpService:Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    .line 49
    nop

    .line 48
    invoke-interface {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/AccountLookUpService;->registerExistingAccountForBankT(Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 50
    return-object v0
.end method

.method public final registerExistingAccountForFBN(Lcom/woleapp/netpos/contactless/model/RegistrationForExistingFBNUsersRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .param p1, "existingAccountRegisterRequest"    # Lcom/woleapp/netpos/contactless/model/RegistrationForExistingFBNUsersRequest;
    .param p2, "partnerId"    # Ljava/lang/String;
    .param p3, "deviceSerialId"    # Ljava/lang/String;
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

    const-string v0, "existingAccountRegisterRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->accountLookUpService:Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    .line 42
    nop

    .line 41
    invoke-interface {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/AccountLookUpService;->registerExistingAccountForFBN(Lcom/woleapp/netpos/contactless/model/RegistrationForExistingFBNUsersRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 43
    return-object v0
.end method

.method public final resetPassword(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .param p1, "payload"    # Lcom/google/gson/JsonObject;
    .param p2, "partnerId"    # Ljava/lang/String;
    .param p3, "deviceSerialId"    # Ljava/lang/String;
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

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->accountLookUpService:Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    invoke-interface {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/AccountLookUpService;->resetPassword(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final resetPasswordForProvidus(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .param p1, "payload"    # Lcom/google/gson/JsonObject;
    .param p2, "partnerId"    # Ljava/lang/String;
    .param p3, "deviceSerialId"    # Ljava/lang/String;
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

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->accountLookUpService:Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    invoke-interface {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/AccountLookUpService;->resetPasswordForProvidus(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public final setNewPassword(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .param p1, "payload"    # Lcom/google/gson/JsonObject;
    .param p2, "partnerId"    # Ljava/lang/String;
    .param p3, "deviceSerialId"    # Ljava/lang/String;
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

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->accountLookUpService:Lcom/woleapp/netpos/contactless/network/AccountLookUpService;

    invoke-interface {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/AccountLookUpService;->setNewPassword(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method
