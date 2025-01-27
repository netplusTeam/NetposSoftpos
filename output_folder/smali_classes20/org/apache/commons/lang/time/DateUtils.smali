.class public Lorg/apache/commons/lang/time/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/time/DateUtils$DateIterator;
    }
.end annotation


# static fields
.field public static final MILLIS_IN_DAY:I = 0x5265c00

.field public static final MILLIS_IN_HOUR:I = 0x36ee80

.field public static final MILLIS_IN_MINUTE:I = 0xea60

.field public static final MILLIS_IN_SECOND:I = 0x3e8

.field public static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MILLIS_PER_HOUR:J = 0x36ee80L

.field public static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final MILLIS_PER_SECOND:J = 0x3e8L

.field private static final MODIFY_CEILING:I = 0x2

.field private static final MODIFY_ROUND:I = 0x1

.field private static final MODIFY_TRUNCATE:I = 0x0

.field public static final RANGE_MONTH_MONDAY:I = 0x6

.field public static final RANGE_MONTH_SUNDAY:I = 0x5

.field public static final RANGE_WEEK_CENTER:I = 0x4

.field public static final RANGE_WEEK_MONDAY:I = 0x2

.field public static final RANGE_WEEK_RELATIVE:I = 0x3

.field public static final RANGE_WEEK_SUNDAY:I = 0x1

.field public static final SEMI_MONTH:I = 0x3e9

.field public static final UTC_TIME_ZONE:Ljava/util/TimeZone;

.field private static final fields:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 61
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/time/DateUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    .line 89
    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0xe

    const/4 v4, 0x0

    aput v3, v2, v4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    const/16 v3, 0xd

    aput v3, v2, v4

    aput-object v2, v0, v1

    new-array v2, v1, [I

    const/16 v3, 0xc

    aput v3, v2, v4

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    aput v1, v2, v4

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v1, v1, [I

    aput v4, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    return-void

    :array_0
    .array-data 4
        0xb
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x5
        0x9
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x3e9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method public static add(Ljava/util/Date;II)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "calendarField"    # I
    .param p2, "amount"    # I

    .line 523
    if-eqz p0, :cond_0

    .line 526
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 527
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 528
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 529
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 524
    .end local v0    # "c":Ljava/util/Calendar;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addDays(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 451
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addHours(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 465
    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 507
    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 479
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMonths(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 423
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 493
    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addWeeks(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 437
    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addYears(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 409
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "field"    # I

    .line 928
    if-eqz p0, :cond_0

    .line 931
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 932
    .local v0, "ceiled":Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 933
    return-object v0

    .line 929
    .end local v0    # "ceiled":Ljava/util/Calendar;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ceiling(Ljava/lang/Object;I)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/lang/Object;
    .param p1, "field"    # I

    .line 958
    if-eqz p0, :cond_2

    .line 961
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 962
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->ceiling(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 963
    :cond_0
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 964
    move-object v0, p0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 966
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find ceiling of for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ceiling(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .line 901
    if-eqz p0, :cond_0

    .line 904
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 905
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 906
    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 907
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 902
    .end local v0    # "gval":Ljava/util/Calendar;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getFragment(Ljava/util/Calendar;II)J
    .locals 8
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I
    .param p2, "unit"    # I

    .line 1709
    if-eqz p0, :cond_0

    .line 1712
    invoke-static {p2}, Lorg/apache/commons/lang/time/DateUtils;->getMillisPerUnit(I)J

    move-result-wide v0

    .line 1713
    .local v0, "millisPerUnit":J
    const-wide/16 v2, 0x0

    .line 1716
    .local v2, "result":J
    const-wide/32 v4, 0x5265c00

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1721
    :pswitch_0
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v6, v4

    div-long/2addr v6, v0

    add-long/2addr v2, v6

    goto :goto_0

    .line 1718
    :pswitch_1
    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v6, v4

    div-long/2addr v6, v0

    add-long/2addr v2, v6

    .line 1719
    nop

    .line 1725
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 1747
    :pswitch_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "The fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " is not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1745
    :pswitch_3
    goto :goto_1

    .line 1733
    :pswitch_4
    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1736
    :pswitch_5
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1739
    :pswitch_6
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1742
    :pswitch_7
    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1743
    nop

    .line 1749
    :goto_1
    return-wide v2

    .line 1710
    .end local v0    # "millisPerUnit":J
    .end local v2    # "result":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
    .end packed-switch
.end method

.method private static getFragment(Ljava/util/Date;II)J
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I
    .param p2, "unit"    # I

    .line 1689
    if-eqz p0, :cond_0

    .line 1692
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1693
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1694
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v1

    return-wide v1

    .line 1690
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFragmentInDays(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .line 1674
    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInDays(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .line 1473
    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .line 1632
    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .line 1433
    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .line 1513
    const/16 v0, 0xe

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .line 1313
    const/16 v0, 0xe

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .line 1592
    const/16 v0, 0xc

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .line 1393
    const/16 v0, 0xc

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Calendar;I)J
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .line 1552
    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .line 1353
    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMillisPerUnit(I)J
    .locals 5
    .param p0, "unit"    # I

    .line 1835
    const-wide v0, 0x7fffffffffffffffL

    .line 1836
    .local v0, "result":J
    packed-switch p0, :pswitch_data_0

    .line 1853
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "The unit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " cannot be represented is milleseconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1851
    :pswitch_1
    const-wide/16 v0, 0x1

    .line 1852
    goto :goto_0

    .line 1848
    :pswitch_2
    const-wide/16 v0, 0x3e8

    .line 1849
    goto :goto_0

    .line 1845
    :pswitch_3
    const-wide/32 v0, 0xea60

    .line 1846
    goto :goto_0

    .line 1842
    :pswitch_4
    const-wide/32 v0, 0x36ee80

    .line 1843
    goto :goto_0

    .line 1839
    :pswitch_5
    const-wide/32 v0, 0x5265c00

    .line 1840
    nop

    .line 1855
    :goto_0
    return-wide v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static indexOfSignChars(Ljava/lang/String;I)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "startPos"    # I

    .line 370
    const/16 v0, 0x2b

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/StringUtils;->indexOf(Ljava/lang/String;CI)I

    move-result v0

    .line 371
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 372
    const/16 v1, 0x2d

    invoke-static {p0, v1, p1}, Lorg/apache/commons/lang/StringUtils;->indexOf(Ljava/lang/String;CI)I

    move-result v0

    .line 374
    :cond_0
    return v0
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .line 197
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_0

    move v0, v3

    :cond_0
    return v0

    .line 198
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 3
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .line 173
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 177
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 178
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 179
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 180
    invoke-static {v0, v1}, Lorg/apache/commons/lang/time/DateUtils;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    return v2

    .line 174
    .end local v0    # "cal1":Ljava/util/Calendar;
    .end local v1    # "cal2":Ljava/util/Calendar;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSameInstant(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .line 236
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 239
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 237
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSameInstant(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 4
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .line 218
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 221
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 219
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSameLocalTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .line 256
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 259
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 257
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static iterator(Ljava/lang/Object;I)Ljava/util/Iterator;
    .locals 3
    .param p0, "focus"    # Ljava/lang/Object;
    .param p1, "rangeStyle"    # I

    .line 1267
    if-eqz p0, :cond_2

    .line 1270
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 1271
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->iterator(Ljava/util/Date;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 1272
    :cond_0
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 1273
    move-object v0, p0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 1275
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not iterate based on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1268
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;
    .locals 10
    .param p0, "focus"    # Ljava/util/Calendar;
    .param p1, "rangeStyle"    # I

    .line 1176
    if-eqz p0, :cond_7

    .line 1179
    const/4 v0, 0x0

    .line 1180
    .local v0, "start":Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 1181
    .local v1, "end":Ljava/util/Calendar;
    const/4 v2, 0x1

    .line 1182
    .local v2, "startCutoff":I
    const/4 v3, 0x7

    .line 1183
    .local v3, "endCutoff":I
    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x7

    packed-switch p1, :pswitch_data_0

    .line 1224
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "The range style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " is not valid."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1187
    :pswitch_0
    const/4 v8, 0x2

    invoke-static {p0, v8}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 1189
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    check-cast v1, Ljava/util/Calendar;

    .line 1190
    invoke-virtual {v1, v8, v5}, Ljava/util/Calendar;->add(II)V

    .line 1191
    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->add(II)V

    .line 1193
    const/4 v8, 0x6

    if-ne p1, v8, :cond_0

    .line 1194
    const/4 v2, 0x2

    .line 1195
    const/4 v3, 0x1

    goto :goto_1

    .line 1203
    :pswitch_1
    invoke-static {p0, v6}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 1204
    invoke-static {p0, v6}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v1

    .line 1205
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1218
    :pswitch_2
    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v2, v8, -0x3

    .line 1219
    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v3, v8, 0x3

    goto :goto_0

    .line 1214
    :pswitch_3
    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1215
    add-int/lit8 v3, v2, -0x1

    .line 1216
    goto :goto_0

    .line 1210
    :pswitch_4
    const/4 v2, 0x2

    .line 1211
    const/4 v3, 0x1

    .line 1212
    goto :goto_0

    .line 1208
    :pswitch_5
    nop

    .line 1222
    :goto_0
    nop

    .line 1226
    :cond_0
    :goto_1
    if-ge v2, v5, :cond_1

    .line 1227
    add-int/lit8 v2, v2, 0x7

    .line 1229
    :cond_1
    if-le v2, v7, :cond_2

    .line 1230
    add-int/lit8 v2, v2, -0x7

    .line 1232
    :cond_2
    if-ge v3, v5, :cond_3

    .line 1233
    add-int/lit8 v3, v3, 0x7

    .line 1235
    :cond_3
    if-le v3, v7, :cond_4

    .line 1236
    add-int/lit8 v3, v3, -0x7

    .line 1238
    :cond_4
    :goto_2
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-eq v8, v2, :cond_5

    .line 1239
    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 1241
    :cond_5
    :goto_3
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v3, :cond_6

    .line 1242
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_3

    .line 1244
    :cond_6
    new-instance v4, Lorg/apache/commons/lang/time/DateUtils$DateIterator;

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/lang/time/DateUtils$DateIterator;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v4

    .line 1177
    .end local v0    # "start":Ljava/util/Calendar;
    .end local v1    # "end":Ljava/util/Calendar;
    .end local v2    # "startCutoff":I
    .end local v3    # "endCutoff":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static iterator(Ljava/util/Date;I)Ljava/util/Iterator;
    .locals 2
    .param p0, "focus"    # Ljava/util/Date;
    .param p1, "rangeStyle"    # I

    .line 1143
    if-eqz p0, :cond_0

    .line 1146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1147
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1148
    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 1144
    .end local v0    # "gval":Ljava/util/Calendar;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static modify(Ljava/util/Calendar;II)V
    .locals 20
    .param p0, "val"    # Ljava/util/Calendar;
    .param p1, "field"    # I
    .param p2, "modType"    # I

    .line 980
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const v5, 0x10b07600

    if-gt v4, v5, :cond_1c

    .line 984
    const/16 v4, 0xe

    if-ne v1, v4, :cond_0

    .line 985
    return-void

    .line 994
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 995
    .local v5, "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 996
    .local v6, "time":J
    const/4 v8, 0x0

    .line 999
    .local v8, "done":Z
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1000
    .local v4, "millisecs":I
    if-eqz v2, :cond_1

    const/16 v9, 0x1f4

    if-ge v4, v9, :cond_2

    .line 1001
    :cond_1
    int-to-long v9, v4

    sub-long/2addr v6, v9

    .line 1003
    :cond_2
    const/16 v9, 0xd

    if-ne v1, v9, :cond_3

    .line 1004
    const/4 v8, 0x1

    .line 1008
    :cond_3
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1009
    .local v9, "seconds":I
    const/16 v10, 0x1e

    if-nez v8, :cond_5

    if-eqz v2, :cond_4

    if-ge v9, v10, :cond_5

    .line 1010
    :cond_4
    int-to-long v11, v9

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    sub-long/2addr v6, v11

    .line 1012
    :cond_5
    const/16 v11, 0xc

    if-ne v1, v11, :cond_6

    .line 1013
    const/4 v8, 0x1

    .line 1017
    :cond_6
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 1018
    .local v12, "minutes":I
    if-nez v8, :cond_8

    if-eqz v2, :cond_7

    if-ge v12, v10, :cond_8

    .line 1019
    :cond_7
    int-to-long v13, v12

    const-wide/32 v15, 0xea60

    mul-long/2addr v13, v15

    sub-long/2addr v6, v13

    .line 1023
    :cond_8
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    cmp-long v10, v13, v6

    if-eqz v10, :cond_9

    .line 1024
    invoke-virtual {v5, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 1025
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1029
    :cond_9
    const/4 v10, 0x0

    .line 1030
    .local v10, "roundUp":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    sget-object v14, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    array-length v14, v14

    if-ge v13, v14, :cond_1b

    .line 1031
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    sget-object v15, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v11, v15, v13

    array-length v3, v11

    move/from16 v18, v4

    .end local v4    # "millisecs":I
    .local v18, "millisecs":I
    const/4 v4, 0x5

    const/16 v19, 0x0

    if-ge v14, v3, :cond_11

    .line 1032
    aget v3, v11, v14

    if-ne v3, v1, :cond_10

    .line 1034
    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    if-eqz v10, :cond_f

    .line 1035
    :cond_a
    const/16 v3, 0x3e9

    if-ne v1, v3, :cond_c

    .line 1039
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v11, 0x1

    if-ne v3, v11, :cond_b

    .line 1040
    const/16 v3, 0xf

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 1042
    :cond_b
    const/16 v3, -0xf

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 1043
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v11}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 1046
    :cond_c
    const/16 v3, 0x9

    if-ne v1, v3, :cond_e

    .line 1050
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-nez v11, :cond_d

    .line 1051
    const/16 v4, 0xc

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 1053
    :cond_d
    const/16 v11, -0xc

    invoke-virtual {v0, v3, v11}, Ljava/util/Calendar;->add(II)V

    .line 1054
    const/4 v3, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 1060
    :cond_e
    const/4 v3, 0x1

    aget v4, v11, v19

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 1063
    :cond_f
    :goto_2
    return-void

    .line 1031
    :cond_10
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v18

    const/4 v3, 0x1

    const/16 v11, 0xc

    goto :goto_1

    .line 1067
    .end local v14    # "j":I
    :cond_11
    const/4 v3, 0x0

    .line 1068
    .local v3, "offset":I
    const/4 v14, 0x0

    .line 1070
    .local v14, "offsetSet":Z
    sparse-switch v1, :sswitch_data_0

    const/16 v4, 0xc

    const/16 v17, 0x1

    goto :goto_6

    .line 1072
    :sswitch_0
    aget v11, v11, v19

    if-ne v11, v4, :cond_14

    .line 1076
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v17, 0x1

    add-int/lit8 v4, v4, -0x1

    .line 1079
    .end local v3    # "offset":I
    .local v4, "offset":I
    const/16 v3, 0xf

    if-lt v4, v3, :cond_12

    .line 1080
    add-int/lit8 v4, v4, -0xf

    move v3, v4

    goto :goto_3

    .line 1079
    :cond_12
    move v3, v4

    .line 1083
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :goto_3
    const/4 v4, 0x7

    if-le v3, v4, :cond_13

    move/from16 v4, v17

    goto :goto_4

    :cond_13
    move/from16 v4, v19

    :goto_4
    move v10, v4

    .line 1084
    const/4 v14, 0x1

    const/16 v4, 0xc

    goto :goto_6

    .line 1072
    :cond_14
    const/16 v17, 0x1

    const/16 v4, 0xc

    goto :goto_6

    .line 1088
    :sswitch_1
    const/16 v17, 0x1

    aget v4, v11, v19

    const/16 v11, 0xb

    if-ne v4, v11, :cond_17

    .line 1091
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1092
    const/16 v4, 0xc

    if-lt v3, v4, :cond_15

    .line 1093
    add-int/lit8 v3, v3, -0xc

    .line 1095
    :cond_15
    const/4 v11, 0x6

    if-lt v3, v11, :cond_16

    move/from16 v11, v17

    goto :goto_5

    :cond_16
    move/from16 v11, v19

    :goto_5
    move v10, v11

    .line 1096
    const/4 v14, 0x1

    goto :goto_6

    .line 1088
    :cond_17
    const/16 v4, 0xc

    .line 1100
    :goto_6
    if-nez v14, :cond_19

    .line 1101
    aget-object v11, v15, v13

    aget v11, v11, v19

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v11

    .line 1102
    .local v11, "min":I
    aget-object v16, v15, v13

    aget v4, v16, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    .line 1104
    .local v4, "max":I
    aget-object v16, v15, v13

    aget v2, v16, v19

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int v3, v2, v11

    .line 1106
    sub-int v2, v4, v11

    const/16 v16, 0x2

    div-int/lit8 v2, v2, 0x2

    if-le v3, v2, :cond_18

    move/from16 v2, v17

    goto :goto_7

    :cond_18
    move/from16 v2, v19

    :goto_7
    move v10, v2

    .line 1109
    .end local v4    # "max":I
    .end local v11    # "min":I
    :cond_19
    if-eqz v3, :cond_1a

    .line 1110
    aget-object v2, v15, v13

    aget v2, v2, v19

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 1030
    .end local v3    # "offset":I
    .end local v14    # "offsetSet":Z
    :cond_1a
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p2

    move/from16 v3, v17

    move/from16 v4, v18

    const/16 v11, 0xc

    goto/16 :goto_0

    .end local v18    # "millisecs":I
    .local v4, "millisecs":I
    :cond_1b
    move/from16 v18, v4

    .line 1113
    .end local v4    # "millisecs":I
    .end local v13    # "i":I
    .restart local v18    # "millisecs":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "The field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 981
    .end local v5    # "date":Ljava/util/Date;
    .end local v6    # "time":J
    .end local v8    # "done":Z
    .end local v9    # "seconds":I
    .end local v10    # "roundUp":Z
    .end local v12    # "minutes":I
    .end local v18    # "millisecs":I
    :cond_1c
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Calendar value too large for accurate calculations"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "parsePatterns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 285
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDateStrictly(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "parsePatterns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 305
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static parseDateWithLeniency(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/Date;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "parsePatterns"    # [Ljava/lang/String;
    .param p2, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 325
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 329
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 330
    .local v0, "parser":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 331
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 332
    .local v1, "pos":Ljava/text/ParsePosition;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 334
    aget-object v4, p1, v3

    .line 337
    .local v4, "pattern":Ljava/lang/String;
    aget-object v5, p1, v3

    const-string v6, "ZZ"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 338
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 341
    :cond_0
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 344
    move-object v5, p0

    .line 346
    .local v5, "str2":Ljava/lang/String;
    aget-object v7, p1, v3

    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 347
    invoke-static {v5, v2}, Lorg/apache/commons/lang/time/DateUtils;->indexOfSignChars(Ljava/lang/String;I)I

    move-result v6

    .line 348
    .local v6, "signIdx":I
    :goto_1
    if-ltz v6, :cond_1

    .line 349
    invoke-static {v5, v6}, Lorg/apache/commons/lang/time/DateUtils;->reformatTimezone(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 350
    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lorg/apache/commons/lang/time/DateUtils;->indexOfSignChars(Ljava/lang/String;I)I

    move-result v6

    goto :goto_1

    .line 354
    .end local v6    # "signIdx":I
    :cond_1
    invoke-virtual {v0, v5, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v6

    .line 355
    .local v6, "date":Ljava/util/Date;
    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 356
    return-object v6

    .line 332
    .end local v4    # "pattern":Ljava/lang/String;
    .end local v5    # "str2":Ljava/lang/String;
    .end local v6    # "date":Ljava/util/Date;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    .end local v3    # "i":I
    :cond_3
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unable to parse the date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 326
    .end local v0    # "parser":Ljava/text/SimpleDateFormat;
    .end local v1    # "pos":Ljava/text/ParsePosition;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Date and Patterns must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static reformatTimezone(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "signIdx"    # I

    .line 385
    move-object v0, p0

    .line 386
    .local v0, "str2":Ljava/lang/String;
    if-ltz p1, :cond_0

    add-int/lit8 v1, p1, 0x5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    :cond_0
    return-object v0
.end method

.method public static round(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "field"    # I

    .line 746
    if-eqz p0, :cond_0

    .line 749
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 750
    .local v0, "rounded":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 751
    return-object v0

    .line 747
    .end local v0    # "rounded":Ljava/util/Calendar;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static round(Ljava/lang/Object;I)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/lang/Object;
    .param p1, "field"    # I

    .line 785
    if-eqz p0, :cond_2

    .line 788
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 789
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->round(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 790
    :cond_0
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 791
    move-object v0, p0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->round(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 793
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not round "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static round(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .line 708
    if-eqz p0, :cond_0

    .line 711
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 712
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 713
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 714
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 709
    .end local v0    # "gval":Ljava/util/Calendar;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static set(Ljava/util/Date;II)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "calendarField"    # I
    .param p2, "amount"    # I

    .line 652
    if-eqz p0, :cond_0

    .line 656
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 657
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 658
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 659
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 660
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 653
    .end local v0    # "c":Ljava/util/Calendar;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDays(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 574
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setHours(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 590
    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 635
    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 605
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMonths(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 559
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 620
    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setYears(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 544
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static toCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .line 673
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 674
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 675
    return-object v0
.end method

.method public static truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "field"    # I

    .line 841
    if-eqz p0, :cond_0

    .line 844
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 845
    .local v0, "truncated":Ljava/util/Calendar;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 846
    return-object v0

    .line 842
    .end local v0    # "truncated":Ljava/util/Calendar;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static truncate(Ljava/lang/Object;I)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/lang/Object;
    .param p1, "field"    # I

    .line 870
    if-eqz p0, :cond_2

    .line 873
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 874
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 875
    :cond_0
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 876
    move-object v0, p0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 878
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not truncate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static truncate(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .line 815
    if-eqz p0, :cond_0

    .line 818
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 819
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 820
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 821
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 816
    .end local v0    # "gval":Ljava/util/Calendar;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I
    .locals 4
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;
    .param p2, "field"    # I

    .line 1801
    invoke-static {p0, p2}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 1802
    .local v0, "truncatedCal1":Ljava/util/Calendar;
    invoke-static {p1, p2}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v1

    .line 1803
    .local v1, "truncatedCal2":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    return v2
.end method

.method public static truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I
    .locals 3
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;
    .param p2, "field"    # I

    .line 1821
    invoke-static {p0, p2}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 1822
    .local v0, "truncatedDate1":Ljava/util/Date;
    invoke-static {p1, p2}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    .line 1823
    .local v1, "truncatedDate2":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    return v2
.end method

.method public static truncatedEquals(Ljava/util/Calendar;Ljava/util/Calendar;I)Z
    .locals 1
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;
    .param p2, "field"    # I

    .line 1766
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/time/DateUtils;->truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static truncatedEquals(Ljava/util/Date;Ljava/util/Date;I)Z
    .locals 1
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;
    .param p2, "field"    # I

    .line 1783
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/time/DateUtils;->truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
