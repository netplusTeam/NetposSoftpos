.class public Lorg/apache/commons/lang/time/FastDateFormat;
.super Ljava/text/Format;
.source "FastDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/time/FastDateFormat$Pair;,
        Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;,
        Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;,
        Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;,
        Lorg/apache/commons/lang/time/FastDateFormat$TwentyFourHourField;,
        Lorg/apache/commons/lang/time/FastDateFormat$TwelveHourField;,
        Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitMonthField;,
        Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitYearField;,
        Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitNumberField;,
        Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;,
        Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedMonthField;,
        Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedNumberField;,
        Lorg/apache/commons/lang/time/FastDateFormat$TextField;,
        Lorg/apache/commons/lang/time/FastDateFormat$StringLiteral;,
        Lorg/apache/commons/lang/time/FastDateFormat$CharacterLiteral;,
        Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;,
        Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    }
.end annotation


# static fields
.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static final cDateInstanceCache:Ljava/util/Map;

.field private static final cDateTimeInstanceCache:Ljava/util/Map;

.field private static cDefaultPattern:Ljava/lang/String; = null

.field private static final cInstanceCache:Ljava/util/Map;

.field private static final cTimeInstanceCache:Ljava/util/Map;

.field private static final cTimeZoneDisplayCache:Ljava/util/Map;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private final mLocaleForced:Z

.field private transient mMaxLengthEstimate:I

.field private final mPattern:Ljava/lang/String;

.field private transient mRules:[Lorg/apache/commons/lang/time/FastDateFormat$Rule;

.field private final mTimeZone:Ljava/util/TimeZone;

.field private final mTimeZoneForced:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 111
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cInstanceCache:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cDateInstanceCache:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cTimeInstanceCache:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cDateTimeInstanceCache:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cTimeZoneDisplayCache:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 535
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 536
    if-eqz p1, :cond_4

    .line 539
    iput-object p1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    .line 541
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    .line 542
    if-nez p2, :cond_1

    .line 543
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    .line 545
    :cond_1
    iput-object p2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    .line 547
    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocaleForced:Z

    .line 548
    if-nez p3, :cond_3

    .line 549
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 551
    :cond_3
    iput-object p3, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    .line 552
    return-void

    .line 537
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The pattern must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDateInstance(I)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "style"    # I

    .line 235
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "style"    # I
    .param p1, "locale"    # Ljava/util/Locale;

    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/TimeZone;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 266
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 7
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    const-class v0, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v0

    .line 281
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 282
    .local v1, "key":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 283
    new-instance v2, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v2, v1, p1}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 286
    :cond_0
    if-nez p2, :cond_1

    .line 287
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    move-object p2, v2

    .line 290
    :cond_1
    new-instance v2, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v2, v1, p2}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 292
    sget-object v2, Lorg/apache/commons/lang/time/FastDateFormat;->cDateInstanceCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang/time/FastDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .local v3, "format":Lorg/apache/commons/lang/time/FastDateFormat;
    if-nez v3, :cond_2

    .line 295
    :try_start_1
    invoke-static {p0, p2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v4

    check-cast v4, Ljava/text/SimpleDateFormat;

    .line 296
    .local v4, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, "pattern":Ljava/lang/String;
    invoke-static {v5, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v6

    move-object v3, v6

    .line 298
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    .end local v4    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v5    # "pattern":Ljava/lang/String;
    goto :goto_0

    .line 300
    :catch_0
    move-exception v2

    .line 301
    .local v2, "ex":Ljava/lang/ClassCastException;
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "No date pattern for locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    .end local v2    # "ex":Ljava/lang/ClassCastException;
    :cond_2
    :goto_0
    monitor-exit v0

    return-object v3

    .line 280
    .end local v1    # "key":Ljava/lang/Object;
    .end local v3    # "format":Lorg/apache/commons/lang/time/FastDateFormat;
    .end local p0    # "style":I
    .end local p1    # "timeZone":Ljava/util/TimeZone;
    .end local p2    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getDateTimeInstance(II)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I

    .line 407
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .line 424
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/TimeZone;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;

    .line 442
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 7
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    const-class v0, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v0

    .line 460
    :try_start_0
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 461
    .local v1, "key":Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 462
    new-instance v2, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v2, v1, p2}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 464
    :cond_0
    if-nez p3, :cond_1

    .line 465
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    move-object p3, v2

    .line 467
    :cond_1
    new-instance v2, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v2, v1, p3}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 469
    sget-object v2, Lorg/apache/commons/lang/time/FastDateFormat;->cDateTimeInstanceCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang/time/FastDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    .local v3, "format":Lorg/apache/commons/lang/time/FastDateFormat;
    if-nez v3, :cond_2

    .line 472
    :try_start_1
    invoke-static {p0, p1, p3}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v4

    check-cast v4, Ljava/text/SimpleDateFormat;

    .line 474
    .local v4, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, "pattern":Ljava/lang/String;
    invoke-static {v5, p2, p3}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v6

    move-object v3, v6

    .line 476
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    .end local v4    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v5    # "pattern":Ljava/lang/String;
    goto :goto_0

    .line 478
    :catch_0
    move-exception v2

    .line 479
    .local v2, "ex":Ljava/lang/ClassCastException;
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "No date time pattern for locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    .end local v2    # "ex":Ljava/lang/ClassCastException;
    :cond_2
    :goto_0
    monitor-exit v0

    return-object v3

    .line 459
    .end local v1    # "key":Ljava/lang/Object;
    .end local v3    # "format":Lorg/apache/commons/lang/time/FastDateFormat;
    .end local p0    # "dateStyle":I
    .end local p1    # "timeStyle":I
    .end local p2    # "timeZone":Ljava/util/TimeZone;
    .end local p3    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getDefaultPattern()Ljava/lang/String;
    .locals 2

    const-class v0, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v0

    .line 513
    :try_start_0
    sget-object v1, Lorg/apache/commons/lang/time/FastDateFormat;->cDefaultPattern:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 514
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/time/FastDateFormat;->cDefaultPattern:Ljava/lang/String;

    .line 516
    :cond_0
    sget-object v1, Lorg/apache/commons/lang/time/FastDateFormat;->cDefaultPattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 512
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance()Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 2

    .line 154
    invoke-static {}, Lorg/apache/commons/lang/time/FastDateFormat;->getDefaultPattern()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;

    .line 167
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 196
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 182
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 4
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    const-class v0, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v0

    .line 213
    :try_start_0
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 214
    .local v1, "emptyFormat":Lorg/apache/commons/lang/time/FastDateFormat;
    sget-object v2, Lorg/apache/commons/lang/time/FastDateFormat;->cInstanceCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang/time/FastDateFormat;

    .line 215
    .local v3, "format":Lorg/apache/commons/lang/time/FastDateFormat;
    if-nez v3, :cond_0

    .line 216
    move-object v3, v1

    .line 217
    invoke-virtual {v3}, Lorg/apache/commons/lang/time/FastDateFormat;->init()V

    .line 218
    invoke-interface {v2, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_0
    monitor-exit v0

    return-object v3

    .line 212
    .end local v1    # "emptyFormat":Lorg/apache/commons/lang/time/FastDateFormat;
    .end local v3    # "format":Lorg/apache/commons/lang/time/FastDateFormat;
    .end local p0    # "pattern":Ljava/lang/String;
    .end local p1    # "timeZone":Ljava/util/TimeZone;
    .end local p2    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getTimeInstance(I)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "style"    # I

    .line 319
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "style"    # I
    .param p1, "locale"    # Ljava/util/Locale;

    .line 334
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/FastDateFormat;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/TimeZone;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 1
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 350
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .locals 7
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    const-class v0, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v0

    .line 366
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 367
    .local v1, "key":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 368
    new-instance v2, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v2, v1, p1}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 370
    :cond_0
    if-eqz p2, :cond_1

    .line 371
    new-instance v2, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v2, v1, p2}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 374
    :cond_1
    sget-object v2, Lorg/apache/commons/lang/time/FastDateFormat;->cTimeInstanceCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/lang/time/FastDateFormat;

    .line 375
    .local v3, "format":Lorg/apache/commons/lang/time/FastDateFormat;
    if-nez v3, :cond_3

    .line 376
    if-nez p2, :cond_2

    .line 377
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, v4

    .line 381
    :cond_2
    :try_start_1
    invoke-static {p0, p2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v4

    check-cast v4, Ljava/text/SimpleDateFormat;

    .line 382
    .local v4, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "pattern":Ljava/lang/String;
    invoke-static {v5, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v6

    move-object v3, v6

    .line 384
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    .end local v4    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v5    # "pattern":Ljava/lang/String;
    goto :goto_0

    .line 386
    :catch_0
    move-exception v2

    .line 387
    .local v2, "ex":Ljava/lang/ClassCastException;
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "No date pattern for locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    .end local v2    # "ex":Ljava/lang/ClassCastException;
    :cond_3
    :goto_0
    monitor-exit v0

    return-object v3

    .line 365
    .end local v1    # "key":Ljava/lang/Object;
    .end local v3    # "format":Lorg/apache/commons/lang/time/FastDateFormat;
    .end local p0    # "style":I
    .end local p1    # "timeZone":Ljava/util/TimeZone;
    .end local p2    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "daylight"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    const-class v0, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v0

    .line 497
    :try_start_0
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 498
    .local v1, "key":Ljava/lang/Object;
    sget-object v2, Lorg/apache/commons/lang/time/FastDateFormat;->cTimeZoneDisplayCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 499
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 501
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 502
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :cond_0
    monitor-exit v0

    return-object v3

    .line 496
    .end local v1    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/String;
    .end local p0    # "tz":Ljava/util/TimeZone;
    .end local p1    # "daylight":Z
    .end local p2    # "style":I
    .end local p3    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1028
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1029
    invoke-virtual {p0}, Lorg/apache/commons/lang/time/FastDateFormat;->init()V

    .line 1030
    return-void
.end method


# virtual methods
.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 887
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mRules:[Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    .line 888
    .local v0, "rules":[Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mRules:[Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    array-length v1, v1

    .line 889
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 890
    aget-object v3, v0, v2

    invoke-interface {v3, p2, p1}, Lorg/apache/commons/lang/time/FastDateFormat$Rule;->appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V

    .line 889
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 892
    .end local v2    # "i":I
    :cond_0
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 977
    instance-of v0, p1, Lorg/apache/commons/lang/time/FastDateFormat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 978
    return v1

    .line 980
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/lang/time/FastDateFormat;

    .line 981
    .local v0, "other":Lorg/apache/commons/lang/time/FastDateFormat;
    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    iget-object v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    iget-object v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    if-eq v2, v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    iget-boolean v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocaleForced:Z

    iget-boolean v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocaleForced:Z

    if-ne v2, v3, :cond_4

    .line 988
    const/4 v1, 0x1

    return v1

    .line 990
    :cond_4
    return v1
.end method

.method public format(J)Ljava/lang/String;
    .locals 1
    .param p1, "millis"    # J

    .line 809
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 831
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    .line 819
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 820
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 821
    new-instance v1, Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mMaxLengthEstimate:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/time/FastDateFormat;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "millis"    # J
    .param p3, "buf"    # Ljava/lang/StringBuffer;

    .line 844
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p3}, Lorg/apache/commons/lang/time/FastDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 789
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 790
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 791
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 792
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 793
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 794
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 796
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-nez p1, :cond_3

    const-string v2, "<null>"

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 870
    iget-boolean v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 872
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/util/Calendar;

    .line 873
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 875
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 856
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 857
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 858
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 952
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMaxLengthEstimate()I
    .locals 1

    .line 965
    iget v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mMaxLengthEstimate:I

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 918
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 932
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getTimeZoneOverridesCalendar()Z
    .locals 1

    .line 943
    iget-boolean v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 999
    const/4 v0, 0x0

    .line 1000
    .local v0, "total":I
    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1001
    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1002
    iget-boolean v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    add-int/2addr v0, v1

    .line 1003
    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1004
    iget-boolean v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocaleForced:Z

    add-int/2addr v0, v1

    .line 1005
    return v0
.end method

.method protected init()V
    .locals 4

    .line 558
    invoke-virtual {p0}, Lorg/apache/commons/lang/time/FastDateFormat;->parsePattern()Ljava/util/List;

    move-result-object v0

    .line 559
    .local v0, "rulesList":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    check-cast v1, [Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    iput-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mRules:[Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    .line 561
    const/4 v2, 0x0

    .line 562
    .local v2, "len":I
    array-length v1, v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 563
    iget-object v3, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mRules:[Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/apache/commons/lang/time/FastDateFormat$Rule;->estimateLength()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 566
    .end local v1    # "i":I
    :cond_0
    iput v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mMaxLengthEstimate:I

    .line 567
    return-void
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 905
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 906
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 907
    const/4 v0, 0x0

    return-object v0
.end method

.method protected parsePattern()Ljava/util/List;
    .locals 22

    .line 578
    move-object/from16 v0, p0

    new-instance v1, Ljava/text/DateFormatSymbols;

    iget-object v2, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 579
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v2, "rules":Ljava/util/List;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, "ERAs":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v4

    .line 583
    .local v4, "months":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    .line 584
    .local v5, "shortMonths":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v6

    .line 585
    .local v6, "weekdays":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v7

    .line 586
    .local v7, "shortWeekdays":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v8

    .line 588
    .local v8, "AmPmStrings":[Ljava/lang/String;
    iget-object v9, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 589
    .local v9, "length":I
    const/4 v10, 0x1

    new-array v11, v10, [I

    .line 591
    .local v11, "indexRef":[I
    const/4 v12, 0x0

    .local v12, "i":I
    const/4 v13, 0x0

    move-object v14, v13

    :goto_0
    if-ge v12, v9, :cond_9

    .line 592
    const/4 v15, 0x0

    aput v12, v11, v15

    .line 593
    iget-object v10, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Lorg/apache/commons/lang/time/FastDateFormat;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v10

    .line 594
    .local v10, "token":Ljava/lang/String;
    aget v12, v11, v15

    .line 596
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    .line 597
    .local v15, "tokenLen":I
    if-nez v15, :cond_0

    .line 598
    move-object/from16 v16, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    goto/16 :goto_3

    .line 602
    :cond_0
    move-object/from16 v16, v1

    const/4 v1, 0x0

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .local v16, "symbols":Ljava/text/DateFormatSymbols;
    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 604
    .local v17, "c":C
    const/4 v1, 0x4

    sparse-switch v17, :sswitch_data_0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .local v18, "weekdays":[Ljava/lang/String;
    .local v19, "shortWeekdays":[Ljava/lang/String;
    .local v20, "length":I
    .local v21, "indexRef":[I
    move-object v1, v13

    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    move-object v6, v14

    .line 691
    .local v6, "sub":Ljava/lang/String;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Illegal pattern component: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 669
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .local v6, "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    .local v13, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :sswitch_0
    if-lt v15, v1, :cond_1

    .line 670
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;

    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    iget-object v6, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    move-object/from16 v19, v7

    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    iget-boolean v7, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    move/from16 v20, v9

    .end local v9    # "length":I
    .restart local v20    # "length":I
    iget-object v9, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    move-object/from16 v21, v11

    const/4 v11, 0x1

    .end local v11    # "indexRef":[I
    .restart local v21    # "indexRef":[I
    invoke-direct {v1, v6, v7, v9, v11}, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;ZLjava/util/Locale;I)V

    move-object v13, v1

    const/4 v6, 0x1

    .end local v13    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_2

    .line 669
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    .restart local v13    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :cond_1
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .line 672
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .end local v13    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;

    iget-object v6, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    iget-boolean v7, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    iget-object v9, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    const/4 v11, 0x0

    invoke-direct {v1, v6, v7, v9, v11}, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;ZLjava/util/Locale;I)V

    .line 674
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_1
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v6, v13

    .line 609
    .local v6, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    if-lt v15, v1, :cond_2

    .line 610
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v6

    move-object v13, v6

    move v6, v1

    goto/16 :goto_2

    .line 612
    .end local v6    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :cond_2
    sget-object v1, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitYearField;->INSTANCE:Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitYearField;

    .line 614
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .local v6, "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_2
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v1, v13

    .line 654
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 655
    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_3
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v1, v13

    .line 639
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 640
    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_4
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v1, v13

    .line 636
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 637
    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_5
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v1, v13

    .line 663
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    new-instance v6, Lorg/apache/commons/lang/time/FastDateFormat$TwentyFourHourField;

    const/16 v7, 0xb

    invoke-virtual {v0, v7, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/lang/time/FastDateFormat$TwentyFourHourField;-><init>(Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;)V

    move-object v1, v6

    .line 664
    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_6
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v1, v13

    .line 630
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    new-instance v6, Lorg/apache/commons/lang/time/FastDateFormat$TwelveHourField;

    const/16 v7, 0xa

    invoke-virtual {v0, v7, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/lang/time/FastDateFormat$TwelveHourField;-><init>(Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;)V

    move-object v1, v6

    .line 631
    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_7
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v1, v13

    .line 627
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 628
    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_8
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v1, v13

    .line 660
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    new-instance v6, Lorg/apache/commons/lang/time/FastDateFormat$TextField;

    const/16 v7, 0x9

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/lang/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    move-object v1, v6

    .line 661
    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_9
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v1, v13

    .line 676
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    const/4 v6, 0x1

    if-ne v15, v6, :cond_3

    .line 677
    sget-object v1, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;

    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 679
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :cond_3
    sget-object v1, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;

    .line 681
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_a
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v6, v13

    .line 657
    .local v6, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    invoke-virtual {v0, v1, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 658
    .end local v6    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .local v6, "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_b
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v1, v13

    .line 642
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 643
    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_c
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v6, v13

    .line 616
    .local v6, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    const/4 v7, 0x2

    if-lt v15, v1, :cond_4

    .line 617
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat$TextField;

    invoke-direct {v1, v7, v4}, Lorg/apache/commons/lang/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    move-object v13, v1

    const/4 v6, 0x1

    .end local v6    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_2

    .line 618
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :cond_4
    const/4 v1, 0x3

    if-ne v15, v1, :cond_5

    .line 619
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat$TextField;

    invoke-direct {v1, v7, v5}, Lorg/apache/commons/lang/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    move-object v13, v1

    const/4 v6, 0x1

    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_2

    .line 620
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :cond_5
    if-ne v15, v7, :cond_6

    .line 621
    sget-object v1, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitMonthField;->INSTANCE:Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitMonthField;

    move-object v13, v1

    const/4 v6, 0x1

    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_2

    .line 623
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :cond_6
    sget-object v1, Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedMonthField;->INSTANCE:Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedMonthField;

    .line 625
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .local v6, "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_d
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v1, v13

    .line 666
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    const/16 v6, 0xa

    invoke-virtual {v0, v6, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 667
    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_e
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v1, v13

    .line 633
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 634
    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 606
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_f
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat$TextField;

    const/4 v6, 0x0

    invoke-direct {v1, v6, v3}, Lorg/apache/commons/lang/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    .line 607
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_10
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v1, v13

    .line 651
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    const/16 v6, 0x8

    invoke-virtual {v0, v6, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 652
    move-object v13, v1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_11
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v6, v13

    .line 645
    .local v6, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    new-instance v7, Lorg/apache/commons/lang/time/FastDateFormat$TextField;

    const/4 v9, 0x7

    if-ge v15, v1, :cond_7

    move-object/from16 v1, v19

    goto :goto_1

    :cond_7
    move-object/from16 v1, v18

    :goto_1
    invoke-direct {v7, v9, v1}, Lorg/apache/commons/lang/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    move-object v1, v7

    .line 646
    .end local v6    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    move-object v13, v1

    const/4 v6, 0x1

    goto :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .local v6, "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_12
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v1, v13

    .line 648
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    const/4 v6, 0x6

    invoke-virtual {v0, v6, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 649
    move-object v13, v1

    const/4 v6, 0x1

    goto :goto_2

    .line 604
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :sswitch_13
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    move-object v1, v13

    .line 683
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 684
    .local v7, "sub":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v6, :cond_8

    .line 685
    new-instance v9, Lorg/apache/commons/lang/time/FastDateFormat$CharacterLiteral;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-direct {v9, v11}, Lorg/apache/commons/lang/time/FastDateFormat$CharacterLiteral;-><init>(C)V

    move-object v1, v9

    move-object v13, v1

    move-object v14, v7

    goto :goto_2

    .line 687
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :cond_8
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat$StringLiteral;

    invoke-direct {v1, v7}, Lorg/apache/commons/lang/time/FastDateFormat$StringLiteral;-><init>(Ljava/lang/String;)V

    .line 689
    .restart local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    move-object v13, v1

    move-object v14, v7

    .line 694
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v7    # "sub":Ljava/lang/String;
    .restart local v13    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :goto_2
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    .end local v10    # "token":Ljava/lang/String;
    .end local v13    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    .end local v15    # "tokenLen":I
    .end local v17    # "c":C
    add-int/lit8 v12, v12, 0x1

    move v10, v6

    move-object/from16 v1, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v9, v20

    move-object/from16 v11, v21

    goto/16 :goto_0

    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "indexRef":[I
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .local v7, "shortWeekdays":[Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v11    # "indexRef":[I
    :cond_9
    move-object/from16 v16, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object/from16 v21, v11

    .line 697
    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .end local v9    # "length":I
    .end local v11    # "indexRef":[I
    .end local v12    # "i":I
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "indexRef":[I
    :goto_3
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_13
        0x44 -> :sswitch_12
        0x45 -> :sswitch_11
        0x46 -> :sswitch_10
        0x47 -> :sswitch_f
        0x48 -> :sswitch_e
        0x4b -> :sswitch_d
        0x4d -> :sswitch_c
        0x53 -> :sswitch_b
        0x57 -> :sswitch_a
        0x5a -> :sswitch_9
        0x61 -> :sswitch_8
        0x64 -> :sswitch_7
        0x68 -> :sswitch_6
        0x6b -> :sswitch_5
        0x6d -> :sswitch_4
        0x73 -> :sswitch_3
        0x77 -> :sswitch_2
        0x79 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method protected parseToken(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 13
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "indexRef"    # [I

    .line 708
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/text/StrBuilder;-><init>()V

    .line 710
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    aget v2, p2, v1

    .line 711
    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 713
    .local v3, "length":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 714
    .local v4, "c":C
    const/16 v5, 0x5a

    const/16 v6, 0x41

    if-lt v4, v6, :cond_0

    if-le v4, v5, :cond_1

    :cond_0
    const/16 v7, 0x7a

    const/16 v8, 0x61

    if-lt v4, v8, :cond_2

    if-gt v4, v7, :cond_2

    .line 717
    :cond_1
    invoke-virtual {v0, v4}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 719
    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v3, :cond_9

    .line 720
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 721
    .local v5, "peek":C
    if-ne v5, v4, :cond_9

    .line 722
    invoke-virtual {v0, v4}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 723
    nop

    .end local v5    # "peek":C
    add-int/lit8 v2, v2, 0x1

    .line 727
    goto :goto_0

    .line 730
    :cond_2
    const/16 v9, 0x27

    invoke-virtual {v0, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 732
    const/4 v10, 0x0

    .line 734
    .local v10, "inLiteral":Z
    :goto_1
    if-ge v2, v3, :cond_9

    .line 735
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 737
    const/4 v11, 0x1

    if-ne v4, v9, :cond_5

    .line 738
    add-int/lit8 v12, v2, 0x1

    if-ge v12, v3, :cond_3

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v9, :cond_3

    .line 740
    add-int/lit8 v2, v2, 0x1

    .line 741
    invoke-virtual {v0, v4}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_3

    .line 743
    :cond_3
    if-nez v10, :cond_4

    move v12, v11

    goto :goto_2

    :cond_4
    move v12, v1

    :goto_2
    move v10, v12

    goto :goto_3

    .line 745
    :cond_5
    if-nez v10, :cond_8

    if-lt v4, v6, :cond_6

    if-le v4, v5, :cond_7

    :cond_6
    if-lt v4, v8, :cond_8

    if-gt v4, v7, :cond_8

    .line 747
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 748
    goto :goto_4

    .line 750
    :cond_8
    invoke-virtual {v0, v4}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 734
    :goto_3
    add-int/2addr v2, v11

    goto :goto_1

    .line 755
    .end local v10    # "inLiteral":Z
    :cond_9
    :goto_4
    aput v2, p2, v1

    .line 756
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;
    .locals 1
    .param p1, "field"    # I
    .param p2, "padding"    # I

    .line 767
    packed-switch p2, :pswitch_data_0

    .line 773
    new-instance v0, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;-><init>(II)V

    return-object v0

    .line 771
    :pswitch_0
    new-instance v0, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitNumberField;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitNumberField;-><init>(I)V

    return-object v0

    .line 769
    :pswitch_1
    new-instance v0, Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedNumberField;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedNumberField;-><init>(I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1014
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FastDateFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
