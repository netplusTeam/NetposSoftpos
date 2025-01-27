.class public Lcom/visa/vac/tc/utils/CrashReportBuilder;
.super Lcom/visa/vac/tc/utils/BaseDeviceInfoBuilder;
.source "SourceFile"


# static fields
.field private static BuildConfig:I

.field private static getInstance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/utils/CrashReportBuilder;->BuildConfig:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/utils/CrashReportBuilder;->getInstance:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/visa/vac/tc/utils/BaseDeviceInfoBuilder;-><init>()V

    return-void
.end method

.method public static fromException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    .line 27
    nop

    .line 14
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-static {}, Lcom/visa/vac/tc/utils/PreferenceManager;->INSTANCE()Lcom/visa/vac/tc/utils/PreferenceManager;

    move-result-object v2

    const-string v3, "transactionUrl"

    invoke-virtual {v2, v3}, Lcom/visa/vac/tc/utils/PreferenceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/visa/vac/tc/utils/CrashReportBuilder;->populate(Ljava/util/Map;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 1032
    const-string v2, "TY"

    const-string v3, "RESPONSE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    const-string v2, "LL"

    const-string v3, "SEVERE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    const-string v2, "E"

    const-string v3, "CRASH"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    const-string v2, "ENV"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    invoke-static {p0}, Lcom/visa/vac/tc/utils/Util;->toString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 1038
    const-string v1, "X"

    invoke-static {p0}, Lcom/visa/vac/tc/utils/CrashReportBuilder;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p1}, Lcom/visa/vac/tc/utils/CrashReportBuilder;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 21
    nop

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const/16 v2, 0x32

    const/4 v3, 0x0

    if-lt p1, v2, :cond_0

    .line 27
    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/visa/vac/tc/utils/CrashReportBuilder;->getInstance:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v4, p1, 0x80

    sput v4, Lcom/visa/vac/tc/utils/CrashReportBuilder;->BuildConfig:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_2

    .line 22
    :goto_1
    :pswitch_0
    goto :goto_3

    .line 27
    :cond_1
    const/16 v1, 0x31

    :goto_2
    packed-switch v1, :pswitch_data_1

    const/16 p1, 0x65

    :try_start_1
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 22
    :pswitch_1
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 23
    :goto_3
    const-string p1, "ACTION_DURING_CRASH"

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    sget p0, Lcom/visa/vac/tc/utils/CrashReportBuilder;->BuildConfig:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/visa/vac/tc/utils/CrashReportBuilder;->getInstance:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_4

    .line 25
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    :goto_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_1
    .end packed-switch
.end method
