.class public final Lcom/woleapp/netpos/contactless/network/StormApiClient;
.super Ljava/lang/Object;
.source "StormApiClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/network/StormApiClient;",
        "",
        "()V",
        "Companion",
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
.field private static final BASE_URL:Ljava/lang/String;

.field private static final BASE_URL_BILLS:Ljava/lang/String;

.field private static BILLS_INSTANCE:Lcom/woleapp/netpos/contactless/network/StormApiService;

.field public static final Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

.field private static INSTANCE:Lcom/woleapp/netpos/contactless/network/StormApiService;

.field private static NIPINSTANCE:Lcom/woleapp/netpos/contactless/network/NipService;

.field private static final NIP_BASE_URL:Ljava/lang/String;

.field private static masterPassQRServiceInstance:Lcom/woleapp/netpos/contactless/network/MasterPassQRService;

.field private static nibssQRServiceInstance:Lcom/woleapp/netpos/contactless/network/NibssQRService;

.field private static smsServiceInstance:Lcom/woleapp/netpos/contactless/network/SmsService;

.field private static zenithQrServiceInstance:Lcom/woleapp/netpos/contactless/network/ZenithQrService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    .line 38
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_NOTIFICATION_BASE_URL_NO_API()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->BASE_URL:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getBASE_URL_BILLS()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->BASE_URL_BILLS:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_NOTIFICATION_BASE_URL_NO_API()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->NIP_BASE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBASE_URL$cp()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->BASE_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getBASE_URL_BILLS$cp()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->BASE_URL_BILLS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getBILLS_INSTANCE$cp()Lcom/woleapp/netpos/contactless/network/StormApiService;
    .locals 1

    .line 16
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->BILLS_INSTANCE:Lcom/woleapp/netpos/contactless/network/StormApiService;

    return-object v0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/woleapp/netpos/contactless/network/StormApiService;
    .locals 1

    .line 16
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->INSTANCE:Lcom/woleapp/netpos/contactless/network/StormApiService;

    return-object v0
.end method

.method public static final synthetic access$getMasterPassQRServiceInstance$cp()Lcom/woleapp/netpos/contactless/network/MasterPassQRService;
    .locals 1

    .line 16
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->masterPassQRServiceInstance:Lcom/woleapp/netpos/contactless/network/MasterPassQRService;

    return-object v0
.end method

.method public static final synthetic access$getNIPINSTANCE$cp()Lcom/woleapp/netpos/contactless/network/NipService;
    .locals 1

    .line 16
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->NIPINSTANCE:Lcom/woleapp/netpos/contactless/network/NipService;

    return-object v0
.end method

.method public static final synthetic access$getNIP_BASE_URL$cp()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->NIP_BASE_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getNibssQRServiceInstance$cp()Lcom/woleapp/netpos/contactless/network/NibssQRService;
    .locals 1

    .line 16
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->nibssQRServiceInstance:Lcom/woleapp/netpos/contactless/network/NibssQRService;

    return-object v0
.end method

.method public static final synthetic access$getSmsServiceInstance$cp()Lcom/woleapp/netpos/contactless/network/SmsService;
    .locals 1

    .line 16
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->smsServiceInstance:Lcom/woleapp/netpos/contactless/network/SmsService;

    return-object v0
.end method

.method public static final synthetic access$getZenithQrServiceInstance$cp()Lcom/woleapp/netpos/contactless/network/ZenithQrService;
    .locals 1

    .line 16
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->zenithQrServiceInstance:Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    return-object v0
.end method

.method public static final synthetic access$setBILLS_INSTANCE$cp(Lcom/woleapp/netpos/contactless/network/StormApiService;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/woleapp/netpos/contactless/network/StormApiService;

    .line 16
    sput-object p0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->BILLS_INSTANCE:Lcom/woleapp/netpos/contactless/network/StormApiService;

    return-void
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/woleapp/netpos/contactless/network/StormApiService;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/woleapp/netpos/contactless/network/StormApiService;

    .line 16
    sput-object p0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->INSTANCE:Lcom/woleapp/netpos/contactless/network/StormApiService;

    return-void
.end method

.method public static final synthetic access$setMasterPassQRServiceInstance$cp(Lcom/woleapp/netpos/contactless/network/MasterPassQRService;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/woleapp/netpos/contactless/network/MasterPassQRService;

    .line 16
    sput-object p0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->masterPassQRServiceInstance:Lcom/woleapp/netpos/contactless/network/MasterPassQRService;

    return-void
.end method

.method public static final synthetic access$setNIPINSTANCE$cp(Lcom/woleapp/netpos/contactless/network/NipService;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/woleapp/netpos/contactless/network/NipService;

    .line 16
    sput-object p0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->NIPINSTANCE:Lcom/woleapp/netpos/contactless/network/NipService;

    return-void
.end method

.method public static final synthetic access$setNibssQRServiceInstance$cp(Lcom/woleapp/netpos/contactless/network/NibssQRService;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/woleapp/netpos/contactless/network/NibssQRService;

    .line 16
    sput-object p0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->nibssQRServiceInstance:Lcom/woleapp/netpos/contactless/network/NibssQRService;

    return-void
.end method

.method public static final synthetic access$setSmsServiceInstance$cp(Lcom/woleapp/netpos/contactless/network/SmsService;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/woleapp/netpos/contactless/network/SmsService;

    .line 16
    sput-object p0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->smsServiceInstance:Lcom/woleapp/netpos/contactless/network/SmsService;

    return-void
.end method

.method public static final synthetic access$setZenithQrServiceInstance$cp(Lcom/woleapp/netpos/contactless/network/ZenithQrService;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    .line 16
    sput-object p0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->zenithQrServiceInstance:Lcom/woleapp/netpos/contactless/network/ZenithQrService;

    return-void
.end method
