.class public final Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ContactlessRegViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContactlessRegViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactlessRegViewModel.kt\ncom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,603:1\n1#2:604\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J8\u0010L\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020N O*\n\u0012\u0004\u0012\u00020N\u0018\u00010\u00070\u00070M2\u0006\u0010P\u001a\u00020\u00162\u0006\u0010Q\u001a\u00020\u00162\u0006\u0010R\u001a\u00020\u0016J\u0006\u0010S\u001a\u00020TJ\u0006\u0010U\u001a\u00020TJ\u0006\u0010V\u001a\u00020TJ&\u0010W\u001a\u00020T2\u0006\u0010X\u001a\u00020\u00162\u0006\u0010P\u001a\u00020\u00162\u0006\u0010Y\u001a\u00020\u00162\u0006\u0010Q\u001a\u00020\u0016J\u001e\u0010Z\u001a\u00020T2\u0006\u0010[\u001a\u00020\\2\u0006\u0010R\u001a\u00020\u00162\u0006\u0010Q\u001a\u00020\u0016J\u001e\u0010]\u001a\u00020T2\u0006\u0010P\u001a\u00020\u00162\u0006\u0010Q\u001a\u00020\u00162\u0006\u0010R\u001a\u00020\u0016J\u001e\u0010^\u001a\u00020T2\u0006\u0010_\u001a\u00020`2\u0006\u0010R\u001a\u00020\u00162\u0006\u0010Q\u001a\u00020\u0016J\u0006\u0010a\u001a\u00020TJ\u0008\u0010b\u001a\u00020TH\u0014J\u001e\u0010c\u001a\u00020T2\u0006\u0010P\u001a\u00020d2\u0006\u0010Q\u001a\u00020\u00162\u0006\u0010R\u001a\u00020\u0016J\u001e\u0010e\u001a\u00020T2\u0006\u0010P\u001a\u00020f2\u0006\u0010Q\u001a\u00020\u00162\u0006\u0010R\u001a\u00020\u0016J\u001e\u0010g\u001a\u00020T2\u0006\u0010[\u001a\u00020\\2\u0006\u0010R\u001a\u00020\u00162\u0006\u0010Q\u001a\u00020\u0016J\u001e\u0010h\u001a\u00020T2\u0006\u0010[\u001a\u00020\\2\u0006\u0010R\u001a\u00020\u00162\u0006\u0010Q\u001a\u00020\u0016J\u0010\u0010i\u001a\u00020T2\u0006\u0010j\u001a\u00020\u0016H\u0002J\u0010\u0010k\u001a\u00020T2\u0006\u0010P\u001a\u00020\u0016H\u0002J\u0010\u0010l\u001a\u00020T2\u0006\u0010m\u001a\u00020\u0016H\u0002J\u0010\u0010n\u001a\u00020T2\u0006\u0010o\u001a\u00020\u0016H\u0002J\u0010\u0010p\u001a\u00020T2\u0006\u0010q\u001a\u00020\u0016H\u0002J\u0010\u0010r\u001a\u00020T2\u0006\u0010X\u001a\u00020\u0016H\u0002J\u0010\u0010s\u001a\u00020T2\u0006\u0010t\u001a\u00020\u0016H\u0002J\u0010\u0010u\u001a\u00020T2\u0006\u0010X\u001a\u00020\u0016H\u0002J\u001e\u0010v\u001a\u00020T2\u0006\u0010[\u001a\u00020\\2\u0006\u0010R\u001a\u00020\u00162\u0006\u0010Q\u001a\u00020\u0016R\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00150\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00150\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00150\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u001d\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00070\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010!R\u001d\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00070\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010!R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010(\u001a\u00020\u0016X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001d\u0010-\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00070\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010!R\u001d\u0010/\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00070\u001f8F\u00a2\u0006\u0006\u001a\u0004\u00080\u0010!R\u001d\u00101\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00070\u001f8F\u00a2\u0006\u0006\u001a\u0004\u00082\u0010!R\u001d\u00103\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00070\u001f8F\u00a2\u0006\u0006\u001a\u0004\u00084\u0010!R!\u00105\u001a\u0012\u0012\u0004\u0012\u00020706j\u0008\u0012\u0004\u0012\u000207`8\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010:R!\u0010;\u001a\u0012\u0012\u0004\u0012\u00020<06j\u0008\u0012\u0004\u0012\u00020<`8\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010:R\u001d\u0010>\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00150\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010!R\u001d\u0010@\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00070\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010!R\u0017\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010!R\u001d\u0010D\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00150\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010!R\u001d\u0010F\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00150\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010!R\u001d\u0010H\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\u00070\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010!R\u001d\u0010J\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00070\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010!\u00a8\u0006w"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "contactlessRegRepo",
        "Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;",
        "(Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;)V",
        "_accountNumberResponse",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/woleapp/netpos/contactless/util/Resource;",
        "Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpResponse;",
        "_confirmOTPResponse",
        "Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;",
        "_confirmOtpToResetPasswordResponse",
        "Lcom/woleapp/netpos/contactless/model/GeneralResponse;",
        "_existingRegRequestResponse",
        "Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;",
        "_firstBankAccountNumberResponse",
        "_getBranchResponse",
        "Lcom/woleapp/netpos/contactless/model/GetFBNBranchResponse;",
        "_getStatesResponse",
        "Lcom/woleapp/netpos/contactless/model/GetStatesResponse;",
        "_message",
        "Lcom/woleapp/netpos/contactless/util/Event;",
        "",
        "_newPasswordResponse",
        "_otpBankPMessage",
        "_otpMessage",
        "_registerMessage",
        "_resetPasswordForProvidusResponse",
        "Lcom/woleapp/netpos/contactless/model/ResetPasswordResponseForProvidus;",
        "_resetPasswordResponse",
        "accountNumberResponse",
        "Landroidx/lifecycle/LiveData;",
        "getAccountNumberResponse",
        "()Landroidx/lifecycle/LiveData;",
        "confirmOTPResponse",
        "getConfirmOTPResponse",
        "confirmOtpToResetPasswordResponse",
        "getConfirmOtpToResetPasswordResponse",
        "disposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "errorMsg",
        "getErrorMsg",
        "()Ljava/lang/String;",
        "setErrorMsg",
        "(Ljava/lang/String;)V",
        "existingRegRequestResponse",
        "getExistingRegRequestResponse",
        "firstBankAccountNumberResponse",
        "getFirstBankAccountNumberResponse",
        "getBranchResponse",
        "getGetBranchResponse",
        "getStatesResponse",
        "getGetStatesResponse",
        "listOfBranches",
        "Ljava/util/ArrayList;",
        "Lcom/woleapp/netpos/contactless/model/FBNBranch;",
        "Lkotlin/collections/ArrayList;",
        "getListOfBranches",
        "()Ljava/util/ArrayList;",
        "listOfStates",
        "Lcom/woleapp/netpos/contactless/model/FBNState;",
        "getListOfStates",
        "message",
        "getMessage",
        "newPasswordResponse",
        "getNewPasswordResponse",
        "otpBankPMessage",
        "getOtpBankPMessage",
        "otpMessage",
        "getOtpMessage",
        "registerMessage",
        "getRegisterMessage",
        "resetPasswordForProvidusResponse",
        "getResetPasswordForProvidusResponse",
        "resetPasswordResponse",
        "getResetPasswordResponse",
        "accountLookUp",
        "Lio/reactivex/Single;",
        "",
        "kotlin.jvm.PlatformType",
        "accountNumber",
        "partnerId",
        "deviceSerialId",
        "clearExistingCustomerLiveData",
        "",
        "clearLiveData",
        "clearOTPResponseLiveData",
        "confirmOTP",
        "phoneNumber",
        "otp",
        "confirmOTPToSetPassword",
        "payload",
        "Lcom/google/gson/JsonObject;",
        "findAccountForFirstBankUser",
        "getBranches",
        "stateInt",
        "",
        "getStates",
        "onCleared",
        "registerExistingAccount",
        "Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterRequest;",
        "registerExistingAccountForFBN",
        "Lcom/woleapp/netpos/contactless/model/RegistrationForExistingFBNUsersRequest;",
        "resetPassword",
        "resetPasswordForProvidus",
        "saveAccountNumber",
        "ActNumber",
        "saveAccountNumberToResetPasswordForProvidus",
        "saveBusinessAddress",
        "businessAddress",
        "saveBusinessName",
        "businessName",
        "saveEmail",
        "email",
        "saveExistingPhoneNumber",
        "saveFullName",
        "fullName",
        "savePhoneNumber",
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
.field private _accountNumberResponse:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private _confirmOTPResponse:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private _confirmOtpToResetPasswordResponse:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/GeneralResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private _existingRegRequestResponse:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private _firstBankAccountNumberResponse:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private _getBranchResponse:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/GetFBNBranchResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private _getStatesResponse:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/GetStatesResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _message:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private _newPasswordResponse:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/GeneralResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _otpBankPMessage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _otpMessage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _registerMessage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private _resetPasswordForProvidusResponse:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/ResetPasswordResponseForProvidus;",
            ">;>;"
        }
    .end annotation
.end field

.field private _resetPasswordResponse:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/GeneralResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final contactlessRegRepo:Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

.field private final disposable:Lio/reactivex/disposables/CompositeDisposable;

.field public errorMsg:Ljava/lang/String;

.field private final listOfBranches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/woleapp/netpos/contactless/model/FBNBranch;",
            ">;"
        }
    .end annotation
.end field

.field private final listOfStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/woleapp/netpos/contactless/model/FBNState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8AS2jDRdL0ivwNq75SdvsUPp82g(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->accountLookUp$lambda-0(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lretrofit2/Response;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S_-7EWqizuKsFVWneCK5cRX0vxE(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/ResetPasswordResponseForProvidus;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->resetPasswordForProvidus$lambda-34(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/ResetPasswordResponseForProvidus;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WvRdzeTlFWnwS0b8e5hJpx1Unq0(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->registerExistingAccountForFBN$lambda-50(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aMkngkW1V5814At9HnogpkU7bdA(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/GeneralResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->resetPassword$lambda-30(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/GeneralResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cUGLQVn07YNmEG-NmSFA5vrUCgA(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/GeneralResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->confirmOTPToSetPassword$lambda-38(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/GeneralResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dgMo3xid3P58M6GzcHdD66L8Z5E(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/GeneralResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->setNewPassword$lambda-42(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/GeneralResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$doFARSEWdx1v3QBC8t5O0e3v8u8(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/GetFBNBranchResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->getBranches$lambda-26(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/GetFBNBranchResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eUzYhGr4GP9aVQGVanCNrZyI-PY(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->registerExistingAccount$lambda-46(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m0dv00-E0H-Shr9Qa_lpUjHM0z4(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/GetStatesResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->getStates$lambda-22(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/GetStatesResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tU1tKAPl8o-Gcr53ZPSBhKNxREc(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->confirmOTP$lambda-18(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uKNxorHpZvFHe0bOtqvhs3DZ0dY(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->findAccountForFirstBankUser$lambda-9(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;)V
    .locals 1
    .param p1, "contactlessRegRepo"    # Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contactlessRegRepo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->contactlessRegRepo:Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    .line 31
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_accountNumberResponse:Landroidx/lifecycle/MutableLiveData;

    .line 38
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_firstBankAccountNumberResponse:Landroidx/lifecycle/MutableLiveData;

    .line 42
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_confirmOTPResponse:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_getStatesResponse:Landroidx/lifecycle/MutableLiveData;

    .line 50
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_getBranchResponse:Landroidx/lifecycle/MutableLiveData;

    .line 54
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_resetPasswordResponse:Landroidx/lifecycle/MutableLiveData;

    .line 58
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_resetPasswordForProvidusResponse:Landroidx/lifecycle/MutableLiveData;

    .line 62
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_confirmOtpToResetPasswordResponse:Landroidx/lifecycle/MutableLiveData;

    .line 66
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_newPasswordResponse:Landroidx/lifecycle/MutableLiveData;

    .line 70
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_existingRegRequestResponse:Landroidx/lifecycle/MutableLiveData;

    .line 73
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 77
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_otpMessage:Landroidx/lifecycle/MutableLiveData;

    .line 81
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_otpBankPMessage:Landroidx/lifecycle/MutableLiveData;

    .line 85
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_registerMessage:Landroidx/lifecycle/MutableLiveData;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->listOfStates:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->listOfBranches:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method private static final accountLookUp$lambda-0(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;
    .param p1, "it"    # Lretrofit2/Response;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpResponse;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpResponse;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->savePhoneNumber(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpResponse;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpResponse;->getAccount_number()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->saveAccountNumber(Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    .line 101
    const-string v1, "{\n                    sa\u2026ody()))\n                }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 106
    :cond_0
    nop

    .line 107
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 108
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->setErrorMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "gson":Lcom/google/gson/Gson;
    goto :goto_1

    .line 111
    :catch_0
    move-exception v0

    .line 114
    :goto_1
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    .line 105
    const-string v1, "{\n                    tr\u2026orMsg))\n                }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    check-cast v0, Lio/reactivex/SingleSource;

    .line 101
    return-object v0
.end method

.method private static final confirmOTP$lambda-18(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;
    .param p1, "data"    # Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "Error"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    if-eqz p1, :cond_5

    move-object v1, p1

    .local v1, "it":Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;
    const/4 v2, 0x0

    .line 212
    .local v2, "$i$a$-let-ContactlessRegViewModel$confirmOTP$1$1":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_confirmOTPResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v4, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;->getData()Lcom/woleapp/netpos/contactless/model/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/model/Data;->getPhone()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 604
    .local v3, "it1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 214
    .local v4, "$i$a$-let-ContactlessRegViewModel$confirmOTP$1$1$1":I
    invoke-direct {p0, v3}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->saveExistingPhoneNumber(Ljava/lang/String;)V

    .line 215
    .end local v3    # "it1":Ljava/lang/String;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$confirmOTP$1$1$1":I
    :cond_0
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;->getData()Lcom/woleapp/netpos/contactless/model/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/model/Data;->getEmail()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 604
    .restart local v3    # "it1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 215
    .local v4, "$i$a$-let-ContactlessRegViewModel$confirmOTP$1$1$2":I
    invoke-direct {p0, v3}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->saveEmail(Ljava/lang/String;)V

    .line 216
    .end local v3    # "it1":Ljava/lang/String;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$confirmOTP$1$1$2":I
    :cond_1
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;->getData()Lcom/woleapp/netpos/contactless/model/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/model/Data;->getBusinessName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 604
    .restart local v3    # "it1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 216
    .local v4, "$i$a$-let-ContactlessRegViewModel$confirmOTP$1$1$3":I
    invoke-direct {p0, v3}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->saveBusinessName(Ljava/lang/String;)V

    .line 217
    .end local v3    # "it1":Ljava/lang/String;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$confirmOTP$1$1$3":I
    :cond_2
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;->getData()Lcom/woleapp/netpos/contactless/model/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/model/Data;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 604
    .restart local v3    # "it1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 217
    .local v4, "$i$a$-let-ContactlessRegViewModel$confirmOTP$1$1$4":I
    invoke-direct {p0, v3}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->saveBusinessAddress(Ljava/lang/String;)V

    .line 218
    .end local v3    # "it1":Ljava/lang/String;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$confirmOTP$1$1$4":I
    :cond_3
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;->getData()Lcom/woleapp/netpos/contactless/model/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/model/Data;->getFullName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 604
    .restart local v3    # "it1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 218
    .local v4, "$i$a$-let-ContactlessRegViewModel$confirmOTP$1$1$5":I
    invoke-direct {p0, v3}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->saveFullName(Ljava/lang/String;)V

    .line 219
    .end local v3    # "it1":Ljava/lang/String;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$confirmOTP$1$1$5":I
    :cond_4
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_otpMessage:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v5, "Success"

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 220
    nop

    .line 211
    .end local v1    # "it":Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$confirmOTP$1$1":I
    nop

    .line 221
    :cond_5
    if-eqz p2, :cond_a

    move-object v1, p2

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 222
    .local v2, "$i$a$-let-ContactlessRegViewModel$confirmOTP$1$2":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_confirmOTPResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    instance-of v3, v1, Lretrofit2/HttpException;

    if-eqz v3, :cond_6

    move-object v5, v1

    check-cast v5, Lretrofit2/HttpException;

    :cond_6
    move-object v3, v5

    .local v3, "httpException":Lretrofit2/HttpException;
    const/4 v4, 0x0

    .line 226
    .local v4, "$i$a$-let-ContactlessRegViewModel$confirmOTP$1$2$1":I
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    .line 227
    :cond_7
    const-string v5, "{\"message\":\"Unexpected error\"}"

    .line 226
    :cond_8
    nop

    .line 225
    nop

    .line 228
    .local v5, "errorMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_otpMessage:Landroidx/lifecycle/MutableLiveData;

    .line 229
    nop

    .line 230
    nop

    .line 231
    :try_start_0
    sget-object v7, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v8, Lcom/woleapp/netpos/contactless/model/BankPExistingCustomerError;

    invoke-virtual {v7, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/woleapp/netpos/contactless/model/BankPExistingCustomerError;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/BankPExistingCustomerError;->getMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_9

    .line 232
    goto :goto_0

    .line 231
    :cond_9
    move-object v0, v7

    .line 232
    :goto_0
    goto :goto_1

    .line 233
    :catch_0
    move-exception v7

    .line 234
    .local v7, "e":Ljava/lang/Exception;
    nop

    .line 229
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v7, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 228
    invoke-virtual {v6, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 238
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "message"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, "otpErrorMessage":Ljava/lang/String;
    iget-object v7, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_otpBankPMessage:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v7, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 243
    nop

    .line 224
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "httpException":Lretrofit2/HttpException;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$confirmOTP$1$2$1":I
    .end local v5    # "errorMessage":Ljava/lang/String;
    .end local v6    # "otpErrorMessage":Ljava/lang/String;
    nop

    .line 244
    nop

    .line 221
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$confirmOTP$1$2":I
    nop

    .line 245
    :cond_a
    return-void
.end method

.method private static final confirmOTPToSetPassword$lambda-38(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/GeneralResponse;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;
    .param p1, "data"    # Lcom/woleapp/netpos/contactless/model/GeneralResponse;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "Error"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Lcom/woleapp/netpos/contactless/model/GeneralResponse;
    const/4 v2, 0x0

    .line 414
    .local v2, "$i$a$-let-ContactlessRegViewModel$confirmOTPToSetPassword$1$1":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_confirmOtpToResetPasswordResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v4, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 415
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/GeneralResponse;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 416
    nop

    .line 413
    .end local v1    # "it":Lcom/woleapp/netpos/contactless/model/GeneralResponse;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$confirmOTPToSetPassword$1$1":I
    nop

    .line 417
    :cond_0
    if-eqz p2, :cond_5

    move-object v1, p2

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 418
    .local v2, "$i$a$-let-ContactlessRegViewModel$confirmOTPToSetPassword$1$2":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_confirmOtpToResetPasswordResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 420
    instance-of v3, v1, Lretrofit2/HttpException;

    if-eqz v3, :cond_1

    move-object v5, v1

    check-cast v5, Lretrofit2/HttpException;

    :cond_1
    move-object v3, v5

    .local v3, "httpException":Lretrofit2/HttpException;
    const/4 v4, 0x0

    .line 422
    .local v4, "$i$a$-let-ContactlessRegViewModel$confirmOTPToSetPassword$1$2$1":I
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 423
    :cond_2
    const-string v5, "{\"message\":\"Unexpected error\"}"

    .line 422
    :cond_3
    nop

    .line 421
    nop

    .line 424
    .local v5, "errorMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 425
    nop

    .line 426
    nop

    .line 427
    :try_start_0
    sget-object v7, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v8, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;->getMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_4

    .line 428
    goto :goto_0

    .line 427
    :cond_4
    move-object v0, v7

    .line 428
    :goto_0
    goto :goto_1

    .line 429
    :catch_0
    move-exception v7

    .line 430
    .local v7, "e":Ljava/lang/Exception;
    nop

    .line 425
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v7, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 424
    invoke-virtual {v6, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 434
    nop

    .line 420
    .end local v3    # "httpException":Lretrofit2/HttpException;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$confirmOTPToSetPassword$1$2$1":I
    .end local v5    # "errorMessage":Ljava/lang/String;
    nop

    .line 435
    nop

    .line 417
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$confirmOTPToSetPassword$1$2":I
    nop

    .line 436
    :cond_5
    return-void
.end method

.method private static final findAccountForFirstBankUser$lambda-9(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;
    .param p1, "$accountNumber"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;
    .param p3, "error"    # Ljava/lang/Throwable;

    const-string v0, "Error"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$accountNumber"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    if-eqz p2, :cond_8

    move-object v1, p2

    .local v1, "it":Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;
    const/4 v2, 0x0

    .line 163
    .local v2, "$i$a$-let-ContactlessRegViewModel$findAccountForFirstBankUser$1$1":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_firstBankAccountNumberResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v4, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->saveAccountNumber(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;->getData()Lcom/woleapp/netpos/contactless/model/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/model/Data;->getPhone()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 604
    .local v3, "it1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 165
    .local v4, "$i$a$-let-ContactlessRegViewModel$findAccountForFirstBankUser$1$1$1":I
    invoke-direct {p0, v3}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->saveExistingPhoneNumber(Ljava/lang/String;)V

    .line 166
    .end local v3    # "it1":Ljava/lang/String;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$findAccountForFirstBankUser$1$1$1":I
    :cond_0
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;->getData()Lcom/woleapp/netpos/contactless/model/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/model/Data;->getEmail()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 604
    .restart local v3    # "it1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 166
    .local v4, "$i$a$-let-ContactlessRegViewModel$findAccountForFirstBankUser$1$1$2":I
    invoke-direct {p0, v3}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->saveEmail(Ljava/lang/String;)V

    .line 167
    .end local v3    # "it1":Ljava/lang/String;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$findAccountForFirstBankUser$1$1$2":I
    :cond_1
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;->getData()Lcom/woleapp/netpos/contactless/model/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/model/Data;->getBusinessName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 604
    .restart local v3    # "it1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 167
    .local v4, "$i$a$-let-ContactlessRegViewModel$findAccountForFirstBankUser$1$1$3":I
    invoke-direct {p0, v3}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->saveBusinessName(Ljava/lang/String;)V

    .line 168
    .end local v3    # "it1":Ljava/lang/String;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$findAccountForFirstBankUser$1$1$3":I
    :cond_2
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;->getData()Lcom/woleapp/netpos/contactless/model/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/model/Data;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 604
    .restart local v3    # "it1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 168
    .local v4, "$i$a$-let-ContactlessRegViewModel$findAccountForFirstBankUser$1$1$4":I
    invoke-direct {p0, v3}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->saveBusinessAddress(Ljava/lang/String;)V

    .line 169
    .end local v3    # "it1":Ljava/lang/String;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$findAccountForFirstBankUser$1$1$4":I
    :cond_3
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;->getData()Lcom/woleapp/netpos/contactless/model/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/model/Data;->getFullName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 604
    .restart local v3    # "it1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 169
    .local v4, "$i$a$-let-ContactlessRegViewModel$findAccountForFirstBankUser$1$1$5":I
    invoke-direct {p0, v3}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->saveFullName(Ljava/lang/String;)V

    .line 170
    .end local v3    # "it1":Ljava/lang/String;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$findAccountForFirstBankUser$1$1$5":I
    :cond_4
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_7

    .line 171
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v5, "Successful"

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 173
    :cond_7
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 175
    :goto_2
    nop

    .line 162
    .end local v1    # "it":Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$findAccountForFirstBankUser$1$1":I
    nop

    .line 176
    :cond_8
    if-eqz p3, :cond_d

    move-object v1, p3

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 177
    .local v2, "$i$a$-let-ContactlessRegViewModel$findAccountForFirstBankUser$1$2":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_firstBankAccountNumberResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 179
    instance-of v3, v1, Lretrofit2/HttpException;

    if-eqz v3, :cond_9

    move-object v5, v1

    check-cast v5, Lretrofit2/HttpException;

    :cond_9
    move-object v3, v5

    .local v3, "httpException":Lretrofit2/HttpException;
    const/4 v4, 0x0

    .line 181
    .local v4, "$i$a$-let-ContactlessRegViewModel$findAccountForFirstBankUser$1$2$1":I
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    .line 182
    :cond_a
    const-string v5, "{\"message\":\"Unexpected error\"}"

    .line 181
    :cond_b
    nop

    .line 180
    nop

    .line 183
    .local v5, "errorMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 184
    nop

    .line 185
    nop

    .line 186
    :try_start_0
    sget-object v7, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v8, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;->getMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_c

    .line 187
    goto :goto_3

    .line 186
    :cond_c
    move-object v0, v7

    .line 187
    :goto_3
    goto :goto_4

    .line 188
    :catch_0
    move-exception v7

    .line 189
    .local v7, "e":Ljava/lang/Exception;
    nop

    .line 184
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_4
    new-instance v7, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v6, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 193
    nop

    .line 179
    .end local v3    # "httpException":Lretrofit2/HttpException;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$findAccountForFirstBankUser$1$2$1":I
    .end local v5    # "errorMessage":Ljava/lang/String;
    nop

    .line 194
    nop

    .line 176
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$findAccountForFirstBankUser$1$2":I
    nop

    .line 195
    :cond_d
    return-void
.end method

.method private static final getBranches$lambda-26(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/GetFBNBranchResponse;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;
    .param p1, "data"    # Lcom/woleapp/netpos/contactless/model/GetFBNBranchResponse;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "Error"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    if-eqz p1, :cond_1

    move-object v1, p1

    .local v1, "it":Lcom/woleapp/netpos/contactless/model/GetFBNBranchResponse;
    const/4 v2, 0x0

    .line 297
    .local v2, "$i$a$-let-ContactlessRegViewModel$getBranches$1$1":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_getBranchResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v4, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 298
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/GetFBNBranchResponse;->getData()Lcom/woleapp/netpos/contactless/model/FBNBranches;

    move-result-object v4

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/FBNBranches;->getRows()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_0

    .line 299
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->listOfBranches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/GetFBNBranchResponse;->getData()Lcom/woleapp/netpos/contactless/model/FBNBranches;

    move-result-object v6

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/FBNBranches;->getRows()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    .end local v3    # "i":I
    :cond_0
    nop

    .line 296
    .end local v1    # "it":Lcom/woleapp/netpos/contactless/model/GetFBNBranchResponse;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$getBranches$1$1":I
    nop

    .line 302
    :cond_1
    if-eqz p2, :cond_6

    move-object v1, p2

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 303
    .local v2, "$i$a$-let-ContactlessRegViewModel$getBranches$1$2":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_getBranchResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 305
    instance-of v3, v1, Lretrofit2/HttpException;

    if-eqz v3, :cond_2

    move-object v5, v1

    check-cast v5, Lretrofit2/HttpException;

    :cond_2
    move-object v3, v5

    .local v3, "httpException":Lretrofit2/HttpException;
    const/4 v4, 0x0

    .line 307
    .local v4, "$i$a$-let-ContactlessRegViewModel$getBranches$1$2$1":I
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    .line 308
    :cond_3
    const-string v5, "{\"message\":\"Unexpected error\"}"

    .line 307
    :cond_4
    nop

    .line 306
    nop

    .line 309
    .local v5, "errorMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 310
    nop

    .line 311
    nop

    .line 312
    :try_start_0
    sget-object v7, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v8, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;->getMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_5

    .line 313
    goto :goto_1

    .line 312
    :cond_5
    move-object v0, v7

    .line 313
    :goto_1
    goto :goto_2

    .line 314
    :catch_0
    move-exception v7

    .line 315
    .local v7, "e":Ljava/lang/Exception;
    nop

    .line 310
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    new-instance v7, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 309
    invoke-virtual {v6, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 319
    nop

    .line 305
    .end local v3    # "httpException":Lretrofit2/HttpException;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$getBranches$1$2$1":I
    .end local v5    # "errorMessage":Ljava/lang/String;
    nop

    .line 320
    nop

    .line 302
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$getBranches$1$2":I
    nop

    .line 321
    :cond_6
    return-void
.end method

.method private static final getStates$lambda-22(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/GetStatesResponse;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;
    .param p1, "data"    # Lcom/woleapp/netpos/contactless/model/GetStatesResponse;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "Error"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    if-eqz p1, :cond_1

    move-object v1, p1

    .local v1, "it":Lcom/woleapp/netpos/contactless/model/GetStatesResponse;
    const/4 v2, 0x0

    .line 257
    .local v2, "$i$a$-let-ContactlessRegViewModel$getStates$1$1":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_getStatesResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v4, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 258
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/GetStatesResponse;->getData()Lcom/woleapp/netpos/contactless/model/States;

    move-result-object v4

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/States;->getRows()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_0

    .line 259
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->listOfStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/GetStatesResponse;->getData()Lcom/woleapp/netpos/contactless/model/States;

    move-result-object v6

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/States;->getRows()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 261
    .end local v3    # "i":I
    :cond_0
    nop

    .line 256
    .end local v1    # "it":Lcom/woleapp/netpos/contactless/model/GetStatesResponse;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$getStates$1$1":I
    nop

    .line 262
    :cond_1
    if-eqz p2, :cond_6

    move-object v1, p2

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 263
    .local v2, "$i$a$-let-ContactlessRegViewModel$getStates$1$2":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_getStatesResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 265
    instance-of v3, v1, Lretrofit2/HttpException;

    if-eqz v3, :cond_2

    move-object v5, v1

    check-cast v5, Lretrofit2/HttpException;

    :cond_2
    move-object v3, v5

    .local v3, "httpException":Lretrofit2/HttpException;
    const/4 v4, 0x0

    .line 267
    .local v4, "$i$a$-let-ContactlessRegViewModel$getStates$1$2$1":I
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    .line 268
    :cond_3
    const-string v5, "{\"message\":\"Unexpected error\"}"

    .line 267
    :cond_4
    nop

    .line 266
    nop

    .line 269
    .local v5, "errorMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 270
    nop

    .line 271
    nop

    .line 272
    :try_start_0
    sget-object v7, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v8, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;->getMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_5

    .line 273
    goto :goto_1

    .line 272
    :cond_5
    move-object v0, v7

    .line 273
    :goto_1
    goto :goto_2

    .line 274
    :catch_0
    move-exception v7

    .line 275
    .local v7, "e":Ljava/lang/Exception;
    nop

    .line 270
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    new-instance v7, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {v6, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 279
    nop

    .line 265
    .end local v3    # "httpException":Lretrofit2/HttpException;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$getStates$1$2$1":I
    .end local v5    # "errorMessage":Ljava/lang/String;
    nop

    .line 280
    nop

    .line 262
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$getStates$1$2":I
    nop

    .line 281
    :cond_6
    return-void
.end method

.method private static final registerExistingAccount$lambda-46(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;
    .param p1, "data"    # Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "Error"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;
    const/4 v2, 0x0

    .line 490
    .local v2, "$i$a$-let-ContactlessRegViewModel$registerExistingAccount$1$1":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_existingRegRequestResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v4, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 491
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_registerMessage:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 492
    nop

    .line 489
    .end local v1    # "it":Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$registerExistingAccount$1$1":I
    nop

    .line 493
    :cond_0
    if-eqz p2, :cond_5

    move-object v1, p2

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 494
    .local v2, "$i$a$-let-ContactlessRegViewModel$registerExistingAccount$1$2":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_existingRegRequestResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    instance-of v3, v1, Lretrofit2/HttpException;

    if-eqz v3, :cond_1

    move-object v5, v1

    check-cast v5, Lretrofit2/HttpException;

    :cond_1
    move-object v3, v5

    .local v3, "httpException":Lretrofit2/HttpException;
    const/4 v4, 0x0

    .line 498
    .local v4, "$i$a$-let-ContactlessRegViewModel$registerExistingAccount$1$2$1":I
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 499
    :cond_2
    const-string v5, "{\"message\":\"Unexpected error\"}"

    .line 498
    :cond_3
    nop

    .line 497
    nop

    .line 500
    .local v5, "errorMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_registerMessage:Landroidx/lifecycle/MutableLiveData;

    .line 501
    nop

    .line 502
    nop

    .line 503
    :try_start_0
    sget-object v7, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v8, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;->getMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_4

    .line 504
    goto :goto_0

    .line 503
    :cond_4
    move-object v0, v7

    .line 504
    :goto_0
    goto :goto_1

    .line 505
    :catch_0
    move-exception v7

    .line 506
    .local v7, "e":Ljava/lang/Exception;
    nop

    .line 501
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v7, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 500
    invoke-virtual {v6, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 510
    nop

    .line 496
    .end local v3    # "httpException":Lretrofit2/HttpException;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$registerExistingAccount$1$2$1":I
    .end local v5    # "errorMessage":Ljava/lang/String;
    nop

    .line 511
    nop

    .line 493
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$registerExistingAccount$1$2":I
    nop

    .line 512
    :cond_5
    return-void
.end method

.method private static final registerExistingAccountForFBN$lambda-50(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;
    .param p1, "data"    # Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "Error"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;
    const/4 v2, 0x0

    .line 528
    .local v2, "$i$a$-let-ContactlessRegViewModel$registerExistingAccountForFBN$1$1":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_existingRegRequestResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v4, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 529
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_registerMessage:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 530
    nop

    .line 527
    .end local v1    # "it":Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$registerExistingAccountForFBN$1$1":I
    nop

    .line 531
    :cond_0
    if-eqz p2, :cond_5

    move-object v1, p2

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 532
    .local v2, "$i$a$-let-ContactlessRegViewModel$registerExistingAccountForFBN$1$2":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_existingRegRequestResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    instance-of v3, v1, Lretrofit2/HttpException;

    if-eqz v3, :cond_1

    move-object v5, v1

    check-cast v5, Lretrofit2/HttpException;

    :cond_1
    move-object v3, v5

    .local v3, "httpException":Lretrofit2/HttpException;
    const/4 v4, 0x0

    .line 536
    .local v4, "$i$a$-let-ContactlessRegViewModel$registerExistingAccountForFBN$1$2$1":I
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 537
    :cond_2
    const-string v5, "{\"message\":\"Unexpected error\"}"

    .line 536
    :cond_3
    nop

    .line 535
    nop

    .line 538
    .local v5, "errorMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_registerMessage:Landroidx/lifecycle/MutableLiveData;

    .line 539
    nop

    .line 540
    nop

    .line 541
    :try_start_0
    sget-object v7, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v8, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;->getMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_4

    .line 542
    goto :goto_0

    .line 541
    :cond_4
    move-object v0, v7

    .line 542
    :goto_0
    goto :goto_1

    .line 543
    :catch_0
    move-exception v7

    .line 544
    .local v7, "e":Ljava/lang/Exception;
    nop

    .line 539
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v7, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 538
    invoke-virtual {v6, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 548
    nop

    .line 534
    .end local v3    # "httpException":Lretrofit2/HttpException;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$registerExistingAccountForFBN$1$2$1":I
    .end local v5    # "errorMessage":Ljava/lang/String;
    nop

    .line 549
    nop

    .line 531
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$registerExistingAccountForFBN$1$2":I
    nop

    .line 550
    :cond_5
    return-void
.end method

.method private static final resetPassword$lambda-30(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/GeneralResponse;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;
    .param p1, "data"    # Lcom/woleapp/netpos/contactless/model/GeneralResponse;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "Error"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Lcom/woleapp/netpos/contactless/model/GeneralResponse;
    const/4 v2, 0x0

    .line 337
    .local v2, "$i$a$-let-ContactlessRegViewModel$resetPassword$1$1":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_resetPasswordResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v4, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 338
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/GeneralResponse;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 339
    nop

    .line 336
    .end local v1    # "it":Lcom/woleapp/netpos/contactless/model/GeneralResponse;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$resetPassword$1$1":I
    nop

    .line 340
    :cond_0
    if-eqz p2, :cond_5

    move-object v1, p2

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 341
    .local v2, "$i$a$-let-ContactlessRegViewModel$resetPassword$1$2":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_resetPasswordResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 343
    instance-of v3, v1, Lretrofit2/HttpException;

    if-eqz v3, :cond_1

    move-object v5, v1

    check-cast v5, Lretrofit2/HttpException;

    :cond_1
    move-object v3, v5

    .local v3, "httpException":Lretrofit2/HttpException;
    const/4 v4, 0x0

    .line 345
    .local v4, "$i$a$-let-ContactlessRegViewModel$resetPassword$1$2$1":I
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 346
    :cond_2
    const-string v5, "{\"message\":\"Unexpected error\"}"

    .line 345
    :cond_3
    nop

    .line 344
    nop

    .line 347
    .local v5, "errorMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 348
    nop

    .line 349
    nop

    .line 350
    :try_start_0
    sget-object v7, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v8, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;->getMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_4

    .line 351
    goto :goto_0

    .line 350
    :cond_4
    move-object v0, v7

    .line 351
    :goto_0
    goto :goto_1

    .line 352
    :catch_0
    move-exception v7

    .line 353
    .local v7, "e":Ljava/lang/Exception;
    nop

    .line 348
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v7, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 347
    invoke-virtual {v6, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 357
    nop

    .line 343
    .end local v3    # "httpException":Lretrofit2/HttpException;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$resetPassword$1$2$1":I
    .end local v5    # "errorMessage":Ljava/lang/String;
    nop

    .line 358
    nop

    .line 340
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$resetPassword$1$2":I
    nop

    .line 359
    :cond_5
    return-void
.end method

.method private static final resetPasswordForProvidus$lambda-34(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/ResetPasswordResponseForProvidus;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;
    .param p1, "data"    # Lcom/woleapp/netpos/contactless/model/ResetPasswordResponseForProvidus;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "Error"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Lcom/woleapp/netpos/contactless/model/ResetPasswordResponseForProvidus;
    const/4 v2, 0x0

    .line 375
    .local v2, "$i$a$-let-ContactlessRegViewModel$resetPasswordForProvidus$1$1":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_resetPasswordForProvidusResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v4, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 376
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ResetPasswordResponseForProvidus;->getAccountNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->saveAccountNumberToResetPasswordForProvidus(Ljava/lang/String;)V

    .line 377
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ResetPasswordResponseForProvidus;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 378
    nop

    .line 374
    .end local v1    # "it":Lcom/woleapp/netpos/contactless/model/ResetPasswordResponseForProvidus;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$resetPasswordForProvidus$1$1":I
    nop

    .line 379
    :cond_0
    if-eqz p2, :cond_5

    move-object v1, p2

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 380
    .local v2, "$i$a$-let-ContactlessRegViewModel$resetPasswordForProvidus$1$2":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_resetPasswordForProvidusResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 382
    instance-of v3, v1, Lretrofit2/HttpException;

    if-eqz v3, :cond_1

    move-object v5, v1

    check-cast v5, Lretrofit2/HttpException;

    :cond_1
    move-object v3, v5

    .local v3, "httpException":Lretrofit2/HttpException;
    const/4 v4, 0x0

    .line 384
    .local v4, "$i$a$-let-ContactlessRegViewModel$resetPasswordForProvidus$1$2$1":I
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 385
    :cond_2
    const-string v5, "{\"message\":\"Unexpected error\"}"

    .line 384
    :cond_3
    nop

    .line 383
    nop

    .line 386
    .local v5, "errorMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 387
    nop

    .line 388
    nop

    .line 389
    :try_start_0
    sget-object v7, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v8, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;->getMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_4

    .line 390
    goto :goto_0

    .line 389
    :cond_4
    move-object v0, v7

    .line 390
    :goto_0
    goto :goto_1

    .line 391
    :catch_0
    move-exception v7

    .line 392
    .local v7, "e":Ljava/lang/Exception;
    nop

    .line 387
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v7, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 386
    invoke-virtual {v6, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 396
    nop

    .line 382
    .end local v3    # "httpException":Lretrofit2/HttpException;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$resetPasswordForProvidus$1$2$1":I
    .end local v5    # "errorMessage":Ljava/lang/String;
    nop

    .line 397
    nop

    .line 379
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$resetPasswordForProvidus$1$2":I
    nop

    .line 398
    :cond_5
    return-void
.end method

.method private final saveAccountNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "ActNumber"    # Ljava/lang/String;

    .line 571
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAVED_ACCOUNT_NUM_SIGNED_UP"

    invoke-static {v1, v0}, Lcom/pixplicity/easyprefs/library/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method private final saveAccountNumberToResetPasswordForProvidus(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountNumber"    # Ljava/lang/String;

    .line 595
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACCOUNT_NUMBER_FOR_PROVIDUS"

    invoke-static {v1, v0}, Lcom/pixplicity/easyprefs/library/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method private final saveBusinessAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "businessAddress"    # Ljava/lang/String;

    .line 583
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BUSINESS_ADDRESS"

    invoke-static {v1, v0}, Lcom/pixplicity/easyprefs/library/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method private final saveBusinessName(Ljava/lang/String;)V
    .locals 2
    .param p1, "businessName"    # Ljava/lang/String;

    .line 575
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BUSINESS_NAME"

    invoke-static {v1, v0}, Lcom/pixplicity/easyprefs/library/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method private final saveEmail(Ljava/lang/String;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .line 591
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMAIL_ADDRESS"

    invoke-static {v1, v0}, Lcom/pixplicity/easyprefs/library/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method private final saveExistingPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 587
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PHONE_NUMBER"

    invoke-static {v1, v0}, Lcom/pixplicity/easyprefs/library/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method private final saveFullName(Ljava/lang/String;)V
    .locals 2
    .param p1, "fullName"    # Ljava/lang/String;

    .line 579
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FULL_NAME"

    invoke-static {v1, v0}, Lcom/pixplicity/easyprefs/library/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method private final savePhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 567
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAVE_PHONE_NUMBER"

    invoke-static {v1, v0}, Lcom/pixplicity/easyprefs/library/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method private static final setNewPassword$lambda-42(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/GeneralResponse;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;
    .param p1, "data"    # Lcom/woleapp/netpos/contactless/model/GeneralResponse;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "Error"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Lcom/woleapp/netpos/contactless/model/GeneralResponse;
    const/4 v2, 0x0

    .line 452
    .local v2, "$i$a$-let-ContactlessRegViewModel$setNewPassword$1$1":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_newPasswordResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {v4, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 453
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/GeneralResponse;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 454
    nop

    .line 451
    .end local v1    # "it":Lcom/woleapp/netpos/contactless/model/GeneralResponse;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$setNewPassword$1$1":I
    nop

    .line 455
    :cond_0
    if-eqz p2, :cond_5

    move-object v1, p2

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 456
    .local v2, "$i$a$-let-ContactlessRegViewModel$setNewPassword$1$2":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_newPasswordResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 458
    instance-of v3, v1, Lretrofit2/HttpException;

    if-eqz v3, :cond_1

    move-object v5, v1

    check-cast v5, Lretrofit2/HttpException;

    :cond_1
    move-object v3, v5

    .local v3, "httpException":Lretrofit2/HttpException;
    const/4 v4, 0x0

    .line 460
    .local v4, "$i$a$-let-ContactlessRegViewModel$setNewPassword$1$2$1":I
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 461
    :cond_2
    const-string v5, "{\"message\":\"Unexpected error\"}"

    .line 460
    :cond_3
    nop

    .line 459
    nop

    .line 462
    .local v5, "errorMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 463
    nop

    .line 464
    nop

    .line 465
    :try_start_0
    sget-object v7, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v8, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/ExistingCustomerError;->getMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_4

    .line 466
    goto :goto_0

    .line 465
    :cond_4
    move-object v0, v7

    .line 466
    :goto_0
    goto :goto_1

    .line 467
    :catch_0
    move-exception v7

    .line 468
    .local v7, "e":Ljava/lang/Exception;
    nop

    .line 463
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v7, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 462
    invoke-virtual {v6, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 472
    nop

    .line 458
    .end local v3    # "httpException":Lretrofit2/HttpException;
    .end local v4    # "$i$a$-let-ContactlessRegViewModel$setNewPassword$1$2$1":I
    .end local v5    # "errorMessage":Ljava/lang/String;
    nop

    .line 473
    nop

    .line 455
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-ContactlessRegViewModel$setNewPassword$1$2":I
    nop

    .line 474
    :cond_5
    return-void
.end method


# virtual methods
.method public final accountLookUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
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
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const-string v0, "accountNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->contactlessRegRepo:Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    invoke-virtual {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->findAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda5;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "contactlessRegRepo.findA\u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    return-object v0
.end method

.method public final clearExistingCustomerLiveData()V
    .locals 3

    .line 559
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_existingRegRequestResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 560
    return-void
.end method

.method public final clearLiveData()V
    .locals 3

    .line 563
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_firstBankAccountNumberResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 564
    return-void
.end method

.method public final clearOTPResponseLiveData()V
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_confirmOTPResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 556
    return-void
.end method

.method public final confirmOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "accountNumber"    # Ljava/lang/String;
    .param p3, "otp"    # Ljava/lang/String;
    .param p4, "partnerId"    # Ljava/lang/String;

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountNumber"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otp"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_confirmOTPResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->loading(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 207
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->contactlessRegRepo:Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->confirmOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 208
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 209
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 210
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 247
    return-void
.end method

.method public final confirmOTPToSetPassword(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "payload"    # Lcom/google/gson/JsonObject;
    .param p2, "deviceSerialId"    # Ljava/lang/String;
    .param p3, "partnerId"    # Ljava/lang/String;

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_confirmOtpToResetPasswordResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->loading(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 409
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->contactlessRegRepo:Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    invoke-virtual {v1, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->confirmOTPToSetPassword(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 410
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 411
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 412
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda4;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 438
    return-void
.end method

.method public final findAccountForFirstBankUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "accountNumber"    # Ljava/lang/String;
    .param p2, "partnerId"    # Ljava/lang/String;
    .param p3, "deviceSerialId"    # Ljava/lang/String;

    const-string v0, "accountNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_firstBankAccountNumberResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->loading(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 158
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->contactlessRegRepo:Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    invoke-virtual {v1, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->findAccountForFirstBankUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 159
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 160
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 161
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda6;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 197
    return-void
.end method

.method public final getAccountNumberResponse()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpResponse;",
            ">;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_accountNumberResponse:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getBranches(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "stateInt"    # I
    .param p2, "deviceSerialId"    # Ljava/lang/String;
    .param p3, "partnerId"    # Ljava/lang/String;

    const-string v0, "deviceSerialId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_getBranchResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->loading(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 292
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->contactlessRegRepo:Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    invoke-virtual {v1, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->getBranches(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 293
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 294
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 295
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 323
    return-void
.end method

.method public final getConfirmOTPResponse()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;",
            ">;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_confirmOTPResponse:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getConfirmOtpToResetPasswordResponse()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/GeneralResponse;",
            ">;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_confirmOtpToResetPasswordResponse:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->errorMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "errorMsg"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExistingRegRequestResponse()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;",
            ">;>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_existingRegRequestResponse:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getFirstBankAccountNumberResponse()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;",
            ">;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_firstBankAccountNumberResponse:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getGetBranchResponse()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/GetFBNBranchResponse;",
            ">;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_getBranchResponse:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getGetStatesResponse()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/GetStatesResponse;",
            ">;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_getStatesResponse:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getListOfBranches()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/woleapp/netpos/contactless/model/FBNBranch;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->listOfBranches:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getListOfStates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/woleapp/netpos/contactless/model/FBNState;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->listOfStates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMessage()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getNewPasswordResponse()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/GeneralResponse;",
            ">;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_newPasswordResponse:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getOtpBankPMessage()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_otpBankPMessage:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getOtpMessage()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_otpMessage:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getRegisterMessage()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_registerMessage:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getResetPasswordForProvidusResponse()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/ResetPasswordResponseForProvidus;",
            ">;>;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_resetPasswordForProvidusResponse:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getResetPasswordResponse()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Lcom/woleapp/netpos/contactless/model/GeneralResponse;",
            ">;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_resetPasswordResponse:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getStates()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_getStatesResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->loading(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 252
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->contactlessRegRepo:Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->getStates()Lio/reactivex/Single;

    move-result-object v1

    .line 253
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 254
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 255
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda7;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 283
    return-void
.end method

.method protected onCleared()V
    .locals 1

    .line 599
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 600
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 601
    return-void
.end method

.method public final registerExistingAccount(Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "accountNumber"    # Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterRequest;
    .param p2, "partnerId"    # Ljava/lang/String;
    .param p3, "deviceSerialId"    # Ljava/lang/String;

    const-string v0, "accountNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_existingRegRequestResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->loading(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 485
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->contactlessRegRepo:Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    invoke-virtual {v1, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->registerExistingAccount(Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 486
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 487
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 488
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda9;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 484
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 514
    return-void
.end method

.method public final registerExistingAccountForFBN(Lcom/woleapp/netpos/contactless/model/RegistrationForExistingFBNUsersRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "accountNumber"    # Lcom/woleapp/netpos/contactless/model/RegistrationForExistingFBNUsersRequest;
    .param p2, "partnerId"    # Ljava/lang/String;
    .param p3, "deviceSerialId"    # Ljava/lang/String;

    const-string v0, "accountNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_existingRegRequestResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->loading(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 522
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 523
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->contactlessRegRepo:Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    invoke-virtual {v1, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->registerExistingAccountForFBN(Lcom/woleapp/netpos/contactless/model/RegistrationForExistingFBNUsersRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 524
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 525
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 526
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda8;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 522
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 552
    return-void
.end method

.method public final resetPassword(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "payload"    # Lcom/google/gson/JsonObject;
    .param p2, "deviceSerialId"    # Ljava/lang/String;
    .param p3, "partnerId"    # Ljava/lang/String;

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_resetPasswordResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->loading(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 332
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->contactlessRegRepo:Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    invoke-virtual {v1, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->resetPassword(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 333
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 334
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 335
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 331
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 361
    return-void
.end method

.method public final resetPasswordForProvidus(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "payload"    # Lcom/google/gson/JsonObject;
    .param p2, "deviceSerialId"    # Ljava/lang/String;
    .param p3, "partnerId"    # Ljava/lang/String;

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_resetPasswordForProvidusResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->loading(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 370
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->contactlessRegRepo:Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    invoke-virtual {v1, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->resetPasswordForProvidus(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 371
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 372
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 373
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda10;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 369
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 400
    return-void
.end method

.method public final setErrorMsg(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public final setNewPassword(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "payload"    # Lcom/google/gson/JsonObject;
    .param p2, "deviceSerialId"    # Ljava/lang/String;
    .param p3, "partnerId"    # Ljava/lang/String;

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->_newPasswordResponse:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->loading(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 447
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->contactlessRegRepo:Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    invoke-virtual {v1, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->setNewPassword(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 448
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 449
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 450
    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda3;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 446
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 476
    return-void
.end method
