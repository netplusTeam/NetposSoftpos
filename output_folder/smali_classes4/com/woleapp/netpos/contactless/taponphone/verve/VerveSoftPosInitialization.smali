.class public final Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;
.super Ljava/util/Observable;
.source "VerveSoftPosInitialization.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \n2\u00020\u0001:\u0001\nB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;",
        "Ljava/util/Observable;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "isDeviceReady",
        "",
        "()Z",
        "setDeviceReady",
        "(Z)V",
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
.field public static final Companion:Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isDeviceReady:Z


# direct methods
.method public static synthetic $r8$lambda$ntfAwBHlpB1bMaW-Or_L2BnS_6A(Landroid/content/Context;Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;->_init_$lambda-0(Landroid/content/Context;Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;->Companion:Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization$Companion;

    .line 41
    const-class v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 18
    nop

    .line 19
    new-instance v0, Ljava/lang/Thread;

    .line 38
    new-instance v1, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;)V

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 39
    nop

    .line 12
    return-void
.end method

.method private static final _init_$lambda-0(Landroid/content/Context;Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;)V
    .locals 7
    .param p0, "$context"    # Landroid/content/Context;
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p0}, Lcom/alcineo/softpos/payment/api/SoftposAPI;->initialize(Landroid/content/Context;)V

    .line 22
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;->TAG:Ljava/lang/String;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n                    \n                    -----------------------------------------------------\n                    DUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 26
    invoke-static {}, Lcom/alcineo/softpos/payment/api/DeviceInfoAPI;->getDeviceUid()[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 26
    nop

    .line 23
    const-string v3, "\n                    SoftPOS library version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 27
    invoke-static {}, Lcom/alcineo/softpos/payment/api/SoftposPropertiesAPI;->getSoftposLibraryVersion()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 27
    nop

    .line 23
    const-string v3, "\n                    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {v2}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 28
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 29
    nop

    .line 30
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 31
    sget-object v4, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    const-string v5, "SECURITY_PATCH"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v5, Lkotlin/text/Regex;

    const-string v6, "-"

    invoke-direct {v5, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v6, ""

    invoke-virtual {v5, v4, v6}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 30
    nop

    .line 28
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "\nAndroid version %s, security patch %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 33
    nop

    .line 23
    const-string v2, "\n--------------------------------------------------------------------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;->setChanged()V

    .line 36
    iput-boolean v5, p1, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;->isDeviceReady:Z

    .line 37
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;->notifyObservers(Ljava/lang/Object;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final isDeviceReady()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;->isDeviceReady:Z

    return v0
.end method

.method public final setDeviceReady(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 13
    iput-boolean p1, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;->isDeviceReady:Z

    return-void
.end method
