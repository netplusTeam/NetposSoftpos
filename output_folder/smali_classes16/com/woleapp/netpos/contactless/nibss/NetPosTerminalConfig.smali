.class public final Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;
.super Ljava/lang/Object;
.source "NetPosTerminalConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;",
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
.field public static final Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

.field private static configData:Lcom/danbamitale/epmslib/entities/ConfigData;

.field private static configurationData:Lcom/woleapp/netpos/contactless/model/ConfigurationData;

.field private static configurationStatus:I

.field private static connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

.field private static final disposables:Lio/reactivex/disposables/CompositeDisposable;

.field private static isConfigurationInProcess:Z

.field private static keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

.field private static final mutableLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sendIntent:Landroid/content/Intent;

.field private static terminalConfigurator:Lcom/danbamitale/epmslib/processors/TerminalConfigurator;

.field private static terminalId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    .line 30
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getSavedConfigurationData()Lcom/woleapp/netpos/contactless/model/ConfigurationData;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->configurationData:Lcom/woleapp/netpos/contactless/model/ConfigurationData;

    .line 31
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 39
    new-instance v0, Lcom/danbamitale/epmslib/entities/ConnectionData;

    .line 40
    sget-object v1, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->configurationData:Lcom/woleapp/netpos/contactless/model/ConfigurationData;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ConfigurationData;->getIp()Ljava/lang/String;

    move-result-object v2

    .line 41
    sget-object v1, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->configurationData:Lcom/woleapp/netpos/contactless/model/ConfigurationData;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/ConfigurationData;->getPort()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 42
    nop

    .line 39
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/danbamitale/epmslib/entities/ConnectionData;-><init>(Ljava/lang/String;IZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    .line 46
    const/4 v0, -0x1

    sput v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->configurationStatus:I

    .line 47
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/16 v2, -0x63

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->mutableLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.woleapp.netpos.TERMINAL_CONFIGURATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->sendIntent:Landroid/content/Intent;

    .line 52
    new-instance v0, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;

    sget-object v1, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    invoke-direct {v0, v1}, Lcom/danbamitale/epmslib/processors/TerminalConfigurator;-><init>(Lcom/danbamitale/epmslib/entities/ConnectionData;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->terminalConfigurator:Lcom/danbamitale/epmslib/processors/TerminalConfigurator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getConfigData$cp()Lcom/danbamitale/epmslib/entities/ConfigData;
    .locals 1

    .line 28
    sget-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->configData:Lcom/danbamitale/epmslib/entities/ConfigData;

    return-object v0
.end method

.method public static final synthetic access$getConfigurationData$cp()Lcom/woleapp/netpos/contactless/model/ConfigurationData;
    .locals 1

    .line 28
    sget-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->configurationData:Lcom/woleapp/netpos/contactless/model/ConfigurationData;

    return-object v0
.end method

.method public static final synthetic access$getConfigurationStatus$cp()I
    .locals 1

    .line 28
    sget v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->configurationStatus:I

    return v0
.end method

.method public static final synthetic access$getConnectionData$cp()Lcom/danbamitale/epmslib/entities/ConnectionData;
    .locals 1

    .line 28
    sget-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    return-object v0
.end method

.method public static final synthetic access$getDisposables$cp()Lio/reactivex/disposables/CompositeDisposable;
    .locals 1

    .line 28
    sget-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    return-object v0
.end method

.method public static final synthetic access$getKeyHolder$cp()Lcom/danbamitale/epmslib/entities/KeyHolder;
    .locals 1

    .line 28
    sget-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

    return-object v0
.end method

.method public static final synthetic access$getMutableLiveData$cp()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 28
    sget-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->mutableLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public static final synthetic access$getSendIntent$cp()Landroid/content/Intent;
    .locals 1

    .line 28
    sget-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->sendIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static final synthetic access$getTerminalConfigurator$cp()Lcom/danbamitale/epmslib/processors/TerminalConfigurator;
    .locals 1

    .line 28
    sget-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->terminalConfigurator:Lcom/danbamitale/epmslib/processors/TerminalConfigurator;

    return-object v0
.end method

.method public static final synthetic access$getTerminalId$cp()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->terminalId:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isConfigurationInProcess$cp()Z
    .locals 1

    .line 28
    sget-boolean v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->isConfigurationInProcess:Z

    return v0
.end method

.method public static final synthetic access$setConfigData$cp(Lcom/danbamitale/epmslib/entities/ConfigData;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/danbamitale/epmslib/entities/ConfigData;

    .line 28
    sput-object p0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->configData:Lcom/danbamitale/epmslib/entities/ConfigData;

    return-void
.end method

.method public static final synthetic access$setConfigurationInProcess$cp(Z)V
    .locals 0
    .param p0, "<set-?>"    # Z

    .line 28
    sput-boolean p0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->isConfigurationInProcess:Z

    return-void
.end method

.method public static final synthetic access$setConfigurationStatus$cp(I)V
    .locals 0
    .param p0, "<set-?>"    # I

    .line 28
    sput p0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->configurationStatus:I

    return-void
.end method

.method public static final synthetic access$setConnectionData$cp(Lcom/danbamitale/epmslib/entities/ConnectionData;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/danbamitale/epmslib/entities/ConnectionData;

    .line 28
    sput-object p0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    return-void
.end method

.method public static final synthetic access$setKeyHolder$cp(Lcom/danbamitale/epmslib/entities/KeyHolder;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/danbamitale/epmslib/entities/KeyHolder;

    .line 28
    sput-object p0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

    return-void
.end method

.method public static final synthetic access$setTerminalId$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;

    .line 28
    sput-object p0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->terminalId:Ljava/lang/String;

    return-void
.end method
