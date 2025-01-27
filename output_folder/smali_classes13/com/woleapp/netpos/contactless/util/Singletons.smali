.class public final Lcom/woleapp/netpos/contactless/util/Singletons;
.super Ljava/lang/Object;
.source "Singletons.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/util/Singletons;",
        "",
        "()V",
        "gson",
        "Lcom/google/gson/Gson;",
        "getGson",
        "()Lcom/google/gson/Gson;",
        "getConfigData",
        "Lcom/danbamitale/epmslib/entities/ConfigData;",
        "getCurrentlyLoggedInUser",
        "Lcom/woleapp/netpos/contactless/model/User;",
        "getKeyHolder",
        "Lcom/danbamitale/epmslib/entities/KeyHolder;",
        "getNetPlusPayMid",
        "",
        "getSavedConfigurationData",
        "Lcom/woleapp/netpos/contactless/model/ConfigurationData;",
        "setUseStormTid",
        "",
        "useStormTid",
        "",
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
.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

.field private static final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    .line 39
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConfigData()Lcom/danbamitale/epmslib/entities/ConfigData;
    .locals 3

    .line 56
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->gson:Lcom/google/gson/Gson;

    const-string v1, "pref_config_data"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/danbamitale/epmslib/entities/ConfigData;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danbamitale/epmslib/entities/ConfigData;

    return-object v0
.end method

.method public final getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;
    .locals 3

    .line 41
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->gson:Lcom/google/gson/Gson;

    const-string v1, "user"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/woleapp/netpos/contactless/model/User;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/User;

    return-object v0
.end method

.method public final getGson()Lcom/google/gson/Gson;
    .locals 1

    .line 39
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public final getKeyHolder()Lcom/danbamitale/epmslib/entities/KeyHolder;
    .locals 3

    .line 54
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->gson:Lcom/google/gson/Gson;

    const-string v1, "pref_keyholder"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/danbamitale/epmslib/entities/KeyHolder;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danbamitale/epmslib/entities/KeyHolder;

    return-object v0
.end method

.method public final getNetPlusPayMid()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/User;->getNetplusPayMid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_MERCHANT_ID()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getSavedConfigurationData()Lcom/woleapp/netpos/contactless/model/ConfigurationData;
    .locals 4

    .line 46
    new-instance v0, Lcom/woleapp/netpos/contactless/model/ConfigurationData;

    .line 47
    sget-object v1, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getCONFIGURATION_DATA_IP()Ljava/lang/String;

    move-result-object v1

    .line 48
    sget-object v2, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getCONFIGURATION_DATA_PORT()Ljava/lang/String;

    move-result-object v2

    .line 49
    nop

    .line 50
    nop

    .line 46
    const-string v3, "3CDDE1CC6FDD225C9A8BC3EB065509A6"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/woleapp/netpos/contactless/model/ConfigurationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setUseStormTid(Z)V
    .locals 1
    .param p1, "useStormTid"    # Z

    .line 37
    const-string v0, "pref_use_storm_tid"

    invoke-static {v0, p1}, Lcom/pixplicity/easyprefs/library/Prefs;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
