.class public final Lcom/woleapp/netpos/contactless/util/NotificationClient;
.super Ljava/lang/Object;
.source "NotificationClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/util/NotificationClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/util/NotificationClient;",
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

.field public static final Companion:Lcom/woleapp/netpos/contactless/util/NotificationClient$Companion;

.field private static INSTANCE:Lcom/woleapp/netpos/contactless/network/NotificationService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/util/NotificationClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/util/NotificationClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/util/NotificationClient;->Companion:Lcom/woleapp/netpos/contactless/util/NotificationClient$Companion;

    .line 34
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_NOTIFICATION_BASE_URL()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/util/NotificationClient;->BASE_URL:Ljava/lang/String;

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
    sget-object v0, Lcom/woleapp/netpos/contactless/util/NotificationClient;->BASE_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/woleapp/netpos/contactless/network/NotificationService;
    .locals 1

    .line 16
    sget-object v0, Lcom/woleapp/netpos/contactless/util/NotificationClient;->INSTANCE:Lcom/woleapp/netpos/contactless/network/NotificationService;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/woleapp/netpos/contactless/network/NotificationService;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/woleapp/netpos/contactless/network/NotificationService;

    .line 16
    sput-object p0, Lcom/woleapp/netpos/contactless/util/NotificationClient;->INSTANCE:Lcom/woleapp/netpos/contactless/network/NotificationService;

    return-void
.end method
