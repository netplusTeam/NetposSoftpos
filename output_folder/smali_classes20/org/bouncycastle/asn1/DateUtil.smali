.class Lorg/bouncycastle/asn1/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field static EN_Locale:Ljava/util/Locale;

.field private static ZERO:Ljava/lang/Long;

.field private static final localeCache:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/DateUtil;->longValueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/DateUtil;->ZERO:Ljava/lang/Long;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/DateUtil;->localeCache:Ljava/util/Map;

    .line 5
    invoke-static {}, Lorg/bouncycastle/asn1/DateUtil;->forEN()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/DateUtil;->EN_Locale:Ljava/util/Locale;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static epochAdjust(Ljava/util/Date;)Ljava/util/Date;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 7
    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/DateUtil;->localeCache:Ljava/util/Map;

    monitor-enter v1

    .line 9
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_2

    .line 13
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMddHHmmssz"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v3, "19700101000000GMT+00:00"

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 18
    sget-object v2, Lorg/bouncycastle/asn1/DateUtil;->ZERO:Ljava/lang/Long;

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {v2, v3}, Lorg/bouncycastle/asn1/DateUtil;->longValueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 18
    :goto_0
    nop

    .line 25
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_2
    sget-object v0, Lorg/bouncycastle/asn1/DateUtil;->ZERO:Ljava/lang/Long;

    if-eq v2, v0, :cond_3

    .line 30
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    monitor-exit v1

    return-object v0

    .line 33
    :cond_3
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static forEN()Ljava/util/Locale;
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    const/4 v2, 0x0

    .line 7
    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_2

    .line 9
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    aget-object v0, v0, v2

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static longValueOf(J)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
