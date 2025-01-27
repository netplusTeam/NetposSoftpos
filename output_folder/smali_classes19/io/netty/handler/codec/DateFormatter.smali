.class public final Lio/netty/handler/codec/DateFormatter;
.super Ljava/lang/Object;
.source "DateFormatter.java"


# static fields
.field private static final CALENDAR_MONTH_TO_SHORT_NAME:[Ljava/lang/String;

.field private static final DAY_OF_WEEK_TO_SHORT_NAME:[Ljava/lang/String;

.field private static final DELIMITERS:Ljava/util/BitSet;

.field private static final INSTANCES:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Lio/netty/handler/codec/DateFormatter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cal:Ljava/util/GregorianCalendar;

.field private dayOfMonth:I

.field private dayOfMonthFound:Z

.field private hours:I

.field private minutes:I

.field private month:I

.field private monthFound:Z

.field private final sb:Ljava/lang/StringBuilder;

.field private seconds:I

.field private timeFound:Z

.field private year:I

.field private yearFound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 48
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lio/netty/handler/codec/DateFormatter;->DELIMITERS:Ljava/util/BitSet;

    .line 50
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 51
    const/16 v0, 0x20

    .local v0, "c":C
    :goto_0
    const/16 v1, 0x2f

    if-gt v0, v1, :cond_0

    .line 52
    sget-object v1, Lio/netty/handler/codec/DateFormatter;->DELIMITERS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 51
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_0

    .line 54
    .end local v0    # "c":C
    :cond_0
    const/16 v0, 0x3b

    .restart local v0    # "c":C
    :goto_1
    const/16 v1, 0x40

    if-gt v0, v1, :cond_1

    .line 55
    sget-object v1, Lio/netty/handler/codec/DateFormatter;->DELIMITERS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 54
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_1

    .line 57
    .end local v0    # "c":C
    :cond_1
    const/16 v0, 0x5b

    .restart local v0    # "c":C
    :goto_2
    const/16 v1, 0x60

    if-gt v0, v1, :cond_2

    .line 58
    sget-object v1, Lio/netty/handler/codec/DateFormatter;->DELIMITERS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 57
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_2

    .line 60
    .end local v0    # "c":C
    :cond_2
    const/16 v0, 0x7b

    .restart local v0    # "c":C
    :goto_3
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_3

    .line 61
    sget-object v1, Lio/netty/handler/codec/DateFormatter;->DELIMITERS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 60
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_3

    .line 65
    .end local v0    # "c":C
    :cond_3
    const-string v1, "Sun"

    const-string v2, "Mon"

    const-string v3, "Tue"

    const-string v4, "Wed"

    const-string v5, "Thu"

    const-string v6, "Fri"

    const-string v7, "Sat"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/DateFormatter;->DAY_OF_WEEK_TO_SHORT_NAME:[Ljava/lang/String;

    .line 68
    const-string v1, "Jan"

    const-string v2, "Feb"

    const-string v3, "Mar"

    const-string v4, "Apr"

    const-string v5, "May"

    const-string v6, "Jun"

    const-string v7, "Jul"

    const-string v8, "Aug"

    const-string v9, "Sep"

    const-string v10, "Oct"

    const-string v11, "Nov"

    const-string v12, "Dec"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/DateFormatter;->CALENDAR_MONTH_TO_SHORT_NAME:[Ljava/lang/String;

    .line 71
    new-instance v0, Lio/netty/handler/codec/DateFormatter$1;

    invoke-direct {v0}, Lio/netty/handler/codec/DateFormatter$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/DateFormatter;->INSTANCES:Lio/netty/util/concurrent/FastThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lio/netty/handler/codec/DateFormatter;->cal:Ljava/util/GregorianCalendar;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/DateFormatter;->sb:Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Lio/netty/handler/codec/DateFormatter;->reset()V

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/DateFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/codec/DateFormatter$1;

    .line 46
    invoke-direct {p0}, Lio/netty/handler/codec/DateFormatter;-><init>()V

    return-void
.end method

.method public static append(Ljava/util/Date;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 124
    invoke-static {}, Lio/netty/handler/codec/DateFormatter;->formatter()Lio/netty/handler/codec/DateFormatter;

    move-result-object v0

    const-string v1, "date"

    invoke-static {p0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    const-string v2, "sb"

    invoke-static {p1, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/DateFormatter;->append0(Ljava/util/Date;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private append0(Ljava/util/Date;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 429
    iget-object v0, p0, Lio/netty/handler/codec/DateFormatter;->cal:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 431
    sget-object v0, Lio/netty/handler/codec/DateFormatter;->DAY_OF_WEEK_TO_SHORT_NAME:[Ljava/lang/String;

    iget-object v1, p0, Lio/netty/handler/codec/DateFormatter;->cal:Ljava/util/GregorianCalendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget-object v0, p0, Lio/netty/handler/codec/DateFormatter;->cal:Ljava/util/GregorianCalendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 433
    sget-object v0, Lio/netty/handler/codec/DateFormatter;->CALENDAR_MONTH_TO_SHORT_NAME:[Ljava/lang/String;

    iget-object v3, p0, Lio/netty/handler/codec/DateFormatter;->cal:Ljava/util/GregorianCalendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    iget-object v0, p0, Lio/netty/handler/codec/DateFormatter;->cal:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    iget-object v0, p0, Lio/netty/handler/codec/DateFormatter;->cal:Ljava/util/GregorianCalendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    invoke-static {v0, p2}, Lio/netty/handler/codec/DateFormatter;->appendZeroLeftPadded(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 436
    iget-object v0, p0, Lio/netty/handler/codec/DateFormatter;->cal:Ljava/util/GregorianCalendar;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    invoke-static {v0, p2}, Lio/netty/handler/codec/DateFormatter;->appendZeroLeftPadded(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    iget-object v0, p0, Lio/netty/handler/codec/DateFormatter;->cal:Ljava/util/GregorianCalendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    invoke-static {v0, p2}, Lio/netty/handler/codec/DateFormatter;->appendZeroLeftPadded(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static appendZeroLeftPadded(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "value"    # I
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 441
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 442
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private computeDate()Ljava/util/Date;
    .locals 3

    .line 414
    iget-object v0, p0, Lio/netty/handler/codec/DateFormatter;->cal:Ljava/util/GregorianCalendar;

    iget v1, p0, Lio/netty/handler/codec/DateFormatter;->dayOfMonth:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 415
    iget-object v0, p0, Lio/netty/handler/codec/DateFormatter;->cal:Ljava/util/GregorianCalendar;

    iget v1, p0, Lio/netty/handler/codec/DateFormatter;->month:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 416
    iget-object v0, p0, Lio/netty/handler/codec/DateFormatter;->cal:Ljava/util/GregorianCalendar;

    iget v1, p0, Lio/netty/handler/codec/DateFormatter;->year:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 417
    iget-object v0, p0, Lio/netty/handler/codec/DateFormatter;->cal:Ljava/util/GregorianCalendar;

    iget v1, p0, Lio/netty/handler/codec/DateFormatter;->hours:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 418
    iget-object v0, p0, Lio/netty/handler/codec/DateFormatter;->cal:Ljava/util/GregorianCalendar;

    iget v1, p0, Lio/netty/handler/codec/DateFormatter;->minutes:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 419
    iget-object v0, p0, Lio/netty/handler/codec/DateFormatter;->cal:Ljava/util/GregorianCalendar;

    iget v1, p0, Lio/netty/handler/codec/DateFormatter;->seconds:I

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 420
    iget-object v0, p0, Lio/netty/handler/codec/DateFormatter;->cal:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 114
    invoke-static {}, Lio/netty/handler/codec/DateFormatter;->formatter()Lio/netty/handler/codec/DateFormatter;

    move-result-object v0

    const-string v1, "date"

    invoke-static {p0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/DateFormatter;->format0(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private format0(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .line 424
    iget-object v0, p0, Lio/netty/handler/codec/DateFormatter;->sb:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DateFormatter;->append0(Ljava/util/Date;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 425
    iget-object v0, p0, Lio/netty/handler/codec/DateFormatter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatter()Lio/netty/handler/codec/DateFormatter;
    .locals 1

    .line 128
    sget-object v0, Lio/netty/handler/codec/DateFormatter;->INSTANCES:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/DateFormatter;

    .line 129
    .local v0, "formatter":Lio/netty/handler/codec/DateFormatter;
    invoke-virtual {v0}, Lio/netty/handler/codec/DateFormatter;->reset()V

    .line 130
    return-object v0
.end method

.method private static getNumericalValue(C)I
    .locals 1
    .param p0, "c"    # C

    .line 143
    add-int/lit8 v0, p0, -0x30

    return v0
.end method

.method private static isDelim(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 135
    sget-object v0, Lio/netty/handler/codec/DateFormatter;->DELIMITERS:Ljava/util/BitSet;

    invoke-virtual {v0, p0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 139
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private normalizeAndValidate()Z
    .locals 5

    .line 394
    iget v0, p0, Lio/netty/handler/codec/DateFormatter;->dayOfMonth:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_4

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_4

    iget v0, p0, Lio/netty/handler/codec/DateFormatter;->hours:I

    const/16 v3, 0x17

    if-gt v0, v3, :cond_4

    iget v0, p0, Lio/netty/handler/codec/DateFormatter;->minutes:I

    const/16 v3, 0x3b

    if-gt v0, v3, :cond_4

    iget v0, p0, Lio/netty/handler/codec/DateFormatter;->seconds:I

    if-le v0, v3, :cond_0

    goto :goto_1

    .line 402
    :cond_0
    iget v0, p0, Lio/netty/handler/codec/DateFormatter;->year:I

    const/16 v3, 0x46

    if-lt v0, v3, :cond_1

    const/16 v4, 0x63

    if-gt v0, v4, :cond_1

    .line 403
    add-int/lit16 v0, v0, 0x76c

    iput v0, p0, Lio/netty/handler/codec/DateFormatter;->year:I

    goto :goto_0

    .line 404
    :cond_1
    if-ltz v0, :cond_2

    if-ge v0, v3, :cond_2

    .line 405
    add-int/lit16 v0, v0, 0x7d0

    iput v0, p0, Lio/netty/handler/codec/DateFormatter;->year:I

    goto :goto_0

    .line 406
    :cond_2
    const/16 v3, 0x641

    if-ge v0, v3, :cond_3

    .line 408
    return v1

    .line 410
    :cond_3
    :goto_0
    return v2

    .line 399
    :cond_4
    :goto_1
    return v1
.end method

.method private parse0(Ljava/lang/CharSequence;II)Ljava/util/Date;
    .locals 2
    .param p1, "txt"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 364
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/DateFormatter;->parse1(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 365
    .local v0, "allPartsFound":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/netty/handler/codec/DateFormatter;->normalizeAndValidate()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lio/netty/handler/codec/DateFormatter;->computeDate()Ljava/util/Date;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private parse1(Ljava/lang/CharSequence;II)Z
    .locals 6
    .param p1, "txt"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 370
    const/4 v0, -0x1

    .line 372
    .local v0, "tokenStart":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ge v1, p3, :cond_3

    .line 373
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 375
    .local v4, "c":C
    invoke-static {v4}, Lio/netty/handler/codec/DateFormatter;->isDelim(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 376
    if-eq v0, v3, :cond_2

    .line 378
    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/DateFormatter;->parseToken(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    return v2

    .line 381
    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    .line 383
    :cond_1
    if-ne v0, v3, :cond_2

    .line 385
    move v0, v1

    .line 372
    .end local v4    # "c":C
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    .end local v1    # "i":I
    :cond_3
    if-eq v0, v3, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/DateFormatter;->parseToken(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public static parseHttpDate(Ljava/lang/CharSequence;)Ljava/util/Date;
    .locals 2
    .param p0, "txt"    # Ljava/lang/CharSequence;

    .line 85
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/handler/codec/DateFormatter;->parseHttpDate(Ljava/lang/CharSequence;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseHttpDate(Ljava/lang/CharSequence;II)Ljava/util/Date;
    .locals 3
    .param p0, "txt"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 96
    sub-int v0, p2, p1

    .line 97
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 98
    const/4 v1, 0x0

    return-object v1

    .line 99
    :cond_0
    if-ltz v0, :cond_2

    .line 101
    const/16 v1, 0x40

    if-gt v0, v1, :cond_1

    .line 105
    invoke-static {}, Lio/netty/handler/codec/DateFormatter;->formatter()Lio/netty/handler/codec/DateFormatter;

    move-result-object v1

    const-string v2, "txt"

    invoke-static {p0, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {v1, v2, p1, p2}, Lio/netty/handler/codec/DateFormatter;->parse0(Ljava/lang/CharSequence;II)Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 102
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t parse more than 64 chars,looks like a user error or a malformed header"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t have end < start"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseToken(Ljava/lang/CharSequence;II)Z
    .locals 3
    .param p1, "txt"    # Ljava/lang/CharSequence;
    .param p2, "tokenStart"    # I
    .param p3, "tokenEnd"    # I

    .line 336
    iget-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->timeFound:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 337
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/DateFormatter;->tryParseTime(Ljava/lang/CharSequence;II)Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->timeFound:Z

    .line 338
    if-eqz v0, :cond_1

    .line 339
    iget-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->dayOfMonthFound:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->monthFound:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->yearFound:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 343
    :cond_1
    iget-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->dayOfMonthFound:Z

    if-nez v0, :cond_3

    .line 344
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/DateFormatter;->tryParseDayOfMonth(Ljava/lang/CharSequence;II)Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->dayOfMonthFound:Z

    .line 345
    if-eqz v0, :cond_3

    .line 346
    iget-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->timeFound:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->monthFound:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->yearFound:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 350
    :cond_3
    iget-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->monthFound:Z

    if-nez v0, :cond_5

    .line 351
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/DateFormatter;->tryParseMonth(Ljava/lang/CharSequence;II)Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->monthFound:Z

    .line 352
    if-eqz v0, :cond_5

    .line 353
    iget-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->timeFound:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->dayOfMonthFound:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->yearFound:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1

    .line 357
    :cond_5
    iget-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->yearFound:Z

    if-nez v0, :cond_6

    .line 358
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/DateFormatter;->tryParseYear(Ljava/lang/CharSequence;II)Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->yearFound:Z

    .line 360
    :cond_6
    iget-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->timeFound:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->dayOfMonthFound:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->monthFound:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->yearFound:Z

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    return v1
.end method

.method private tryParseDayOfMonth(Ljava/lang/CharSequence;II)Z
    .locals 6
    .param p1, "txt"    # Ljava/lang/CharSequence;
    .param p2, "tokenStart"    # I
    .param p3, "tokenEnd"    # I

    .line 243
    sub-int v0, p3, p2

    .line 245
    .local v0, "len":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 246
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 247
    .local v2, "c0":C
    invoke-static {v2}, Lio/netty/handler/codec/DateFormatter;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    invoke-static {v2}, Lio/netty/handler/codec/DateFormatter;->getNumericalValue(C)I

    move-result v3

    iput v3, p0, Lio/netty/handler/codec/DateFormatter;->dayOfMonth:I

    .line 249
    return v1

    .line 247
    .end local v2    # "c0":C
    :cond_0
    goto :goto_0

    .line 252
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 253
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 254
    .restart local v2    # "c0":C
    add-int/lit8 v3, p2, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 255
    .local v3, "c1":C
    invoke-static {v2}, Lio/netty/handler/codec/DateFormatter;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Lio/netty/handler/codec/DateFormatter;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 256
    invoke-static {v2}, Lio/netty/handler/codec/DateFormatter;->getNumericalValue(C)I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    invoke-static {v3}, Lio/netty/handler/codec/DateFormatter;->getNumericalValue(C)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lio/netty/handler/codec/DateFormatter;->dayOfMonth:I

    .line 257
    return v1

    .line 252
    .end local v2    # "c0":C
    .end local v3    # "c1":C
    :cond_2
    :goto_0
    nop

    .line 261
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private tryParseMonth(Ljava/lang/CharSequence;II)Z
    .locals 16
    .param p1, "txt"    # Ljava/lang/CharSequence;
    .param p2, "tokenStart"    # I
    .param p3, "tokenEnd"    # I

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sub-int v2, p3, p2

    .line 267
    .local v2, "len":I
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 268
    return v4

    .line 271
    :cond_0
    invoke-interface/range {p1 .. p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lio/netty/util/AsciiString;->toLowerCase(C)C

    move-result v5

    .line 272
    .local v5, "monthChar1":C
    add-int/lit8 v6, p2, 0x1

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lio/netty/util/AsciiString;->toLowerCase(C)C

    move-result v6

    .line 273
    .local v6, "monthChar2":C
    add-int/lit8 v7, p2, 0x2

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lio/netty/util/AsciiString;->toLowerCase(C)C

    move-result v7

    .line 275
    .local v7, "monthChar3":C
    const/16 v8, 0x6e

    const/16 v9, 0x6a

    const/4 v10, 0x1

    const/16 v11, 0x61

    if-ne v5, v9, :cond_1

    if-ne v6, v11, :cond_1

    if-ne v7, v8, :cond_1

    .line 276
    iput v4, v0, Lio/netty/handler/codec/DateFormatter;->month:I

    goto/16 :goto_0

    .line 277
    :cond_1
    const/16 v12, 0x66

    const/16 v13, 0x65

    if-ne v5, v12, :cond_2

    if-ne v6, v13, :cond_2

    const/16 v12, 0x62

    if-ne v7, v12, :cond_2

    .line 278
    iput v10, v0, Lio/netty/handler/codec/DateFormatter;->month:I

    goto/16 :goto_0

    .line 279
    :cond_2
    const/16 v12, 0x72

    const/16 v14, 0x6d

    if-ne v5, v14, :cond_3

    if-ne v6, v11, :cond_3

    if-ne v7, v12, :cond_3

    .line 280
    const/4 v3, 0x2

    iput v3, v0, Lio/netty/handler/codec/DateFormatter;->month:I

    goto/16 :goto_0

    .line 281
    :cond_3
    const/16 v15, 0x70

    if-ne v5, v11, :cond_4

    if-ne v6, v15, :cond_4

    if-ne v7, v12, :cond_4

    .line 282
    iput v3, v0, Lio/netty/handler/codec/DateFormatter;->month:I

    goto/16 :goto_0

    .line 283
    :cond_4
    if-ne v5, v14, :cond_5

    if-ne v6, v11, :cond_5

    const/16 v3, 0x79

    if-ne v7, v3, :cond_5

    .line 284
    const/4 v3, 0x4

    iput v3, v0, Lio/netty/handler/codec/DateFormatter;->month:I

    goto :goto_0

    .line 285
    :cond_5
    const/16 v3, 0x75

    if-ne v5, v9, :cond_6

    if-ne v6, v3, :cond_6

    if-ne v7, v8, :cond_6

    .line 286
    const/4 v3, 0x5

    iput v3, v0, Lio/netty/handler/codec/DateFormatter;->month:I

    goto :goto_0

    .line 287
    :cond_6
    if-ne v5, v9, :cond_7

    if-ne v6, v3, :cond_7

    const/16 v9, 0x6c

    if-ne v7, v9, :cond_7

    .line 288
    const/4 v3, 0x6

    iput v3, v0, Lio/netty/handler/codec/DateFormatter;->month:I

    goto :goto_0

    .line 289
    :cond_7
    if-ne v5, v11, :cond_8

    if-ne v6, v3, :cond_8

    const/16 v3, 0x67

    if-ne v7, v3, :cond_8

    .line 290
    const/4 v3, 0x7

    iput v3, v0, Lio/netty/handler/codec/DateFormatter;->month:I

    goto :goto_0

    .line 291
    :cond_8
    const/16 v3, 0x73

    if-ne v5, v3, :cond_9

    if-ne v6, v13, :cond_9

    if-ne v7, v15, :cond_9

    .line 292
    const/16 v3, 0x8

    iput v3, v0, Lio/netty/handler/codec/DateFormatter;->month:I

    goto :goto_0

    .line 293
    :cond_9
    const/16 v3, 0x63

    const/16 v9, 0x6f

    if-ne v5, v9, :cond_a

    if-ne v6, v3, :cond_a

    const/16 v11, 0x74

    if-ne v7, v11, :cond_a

    .line 294
    const/16 v3, 0x9

    iput v3, v0, Lio/netty/handler/codec/DateFormatter;->month:I

    goto :goto_0

    .line 295
    :cond_a
    if-ne v5, v8, :cond_b

    if-ne v6, v9, :cond_b

    const/16 v8, 0x76

    if-ne v7, v8, :cond_b

    .line 296
    const/16 v3, 0xa

    iput v3, v0, Lio/netty/handler/codec/DateFormatter;->month:I

    goto :goto_0

    .line 297
    :cond_b
    const/16 v8, 0x64

    if-ne v5, v8, :cond_c

    if-ne v6, v13, :cond_c

    if-ne v7, v3, :cond_c

    .line 298
    const/16 v3, 0xb

    iput v3, v0, Lio/netty/handler/codec/DateFormatter;->month:I

    .line 303
    :goto_0
    return v10

    .line 300
    :cond_c
    return v4
.end method

.method private tryParseTime(Ljava/lang/CharSequence;II)Z
    .locals 12
    .param p1, "txt"    # Ljava/lang/CharSequence;
    .param p2, "tokenStart"    # I
    .param p3, "tokenEnd"    # I

    .line 179
    sub-int v0, p3, p2

    .line 182
    .local v0, "len":I
    const/4 v1, 0x0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_8

    const/16 v2, 0x8

    if-le v0, v2, :cond_0

    goto :goto_3

    .line 186
    :cond_0
    const/4 v2, -0x1

    .line 187
    .local v2, "localHours":I
    const/4 v3, -0x1

    .line 188
    .local v3, "localMinutes":I
    const/4 v4, -0x1

    .line 189
    .local v4, "localSeconds":I
    const/4 v5, 0x0

    .line 190
    .local v5, "currentPartNumber":I
    const/4 v6, 0x0

    .line 191
    .local v6, "currentPartValue":I
    const/4 v7, 0x0

    .line 193
    .local v7, "numDigits":I
    move v8, p2

    .local v8, "i":I
    :goto_0
    if-ge v8, p3, :cond_5

    .line 194
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 195
    .local v9, "c":C
    invoke-static {v9}, Lio/netty/handler/codec/DateFormatter;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 196
    mul-int/lit8 v10, v6, 0xa

    invoke-static {v9}, Lio/netty/handler/codec/DateFormatter;->getNumericalValue(C)I

    move-result v11

    add-int/2addr v10, v11

    .line 197
    .end local v6    # "currentPartValue":I
    .local v10, "currentPartValue":I
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x2

    if-le v7, v6, :cond_1

    .line 198
    return v1

    .line 197
    :cond_1
    move v6, v10

    goto :goto_2

    .line 200
    .end local v10    # "currentPartValue":I
    .restart local v6    # "currentPartValue":I
    :cond_2
    const/16 v10, 0x3a

    if-ne v9, v10, :cond_4

    .line 201
    if-nez v7, :cond_3

    .line 203
    return v1

    .line 205
    :cond_3
    packed-switch v5, :pswitch_data_0

    .line 216
    return v1

    .line 212
    :pswitch_0
    move v3, v6

    .line 213
    goto :goto_1

    .line 208
    :pswitch_1
    move v2, v6

    .line 209
    nop

    .line 218
    :goto_1
    const/4 v6, 0x0

    .line 219
    add-int/lit8 v5, v5, 0x1

    .line 220
    const/4 v7, 0x0

    .line 193
    .end local v9    # "c":C
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 223
    .restart local v9    # "c":C
    :cond_4
    return v1

    .line 227
    .end local v8    # "i":I
    .end local v9    # "c":C
    :cond_5
    if-lez v7, :cond_6

    .line 229
    move v4, v6

    .line 232
    :cond_6
    if-ltz v2, :cond_7

    if-ltz v3, :cond_7

    if-ltz v4, :cond_7

    .line 233
    iput v2, p0, Lio/netty/handler/codec/DateFormatter;->hours:I

    .line 234
    iput v3, p0, Lio/netty/handler/codec/DateFormatter;->minutes:I

    .line 235
    iput v4, p0, Lio/netty/handler/codec/DateFormatter;->seconds:I

    .line 236
    const/4 v1, 0x1

    return v1

    .line 239
    :cond_7
    return v1

    .line 183
    .end local v2    # "localHours":I
    .end local v3    # "localMinutes":I
    .end local v4    # "localSeconds":I
    .end local v5    # "currentPartNumber":I
    .end local v6    # "currentPartValue":I
    .end local v7    # "numDigits":I
    :cond_8
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private tryParseYear(Ljava/lang/CharSequence;II)Z
    .locals 8
    .param p1, "txt"    # Ljava/lang/CharSequence;
    .param p2, "tokenStart"    # I
    .param p3, "tokenEnd"    # I

    .line 307
    sub-int v0, p3, p2

    .line 309
    .local v0, "len":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 310
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 311
    .local v1, "c0":C
    add-int/lit8 v3, p2, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 312
    .local v3, "c1":C
    invoke-static {v1}, Lio/netty/handler/codec/DateFormatter;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lio/netty/handler/codec/DateFormatter;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    invoke-static {v1}, Lio/netty/handler/codec/DateFormatter;->getNumericalValue(C)I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    invoke-static {v3}, Lio/netty/handler/codec/DateFormatter;->getNumericalValue(C)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lio/netty/handler/codec/DateFormatter;->year:I

    .line 314
    return v2

    .line 317
    .end local v1    # "c0":C
    .end local v3    # "c1":C
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 318
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 319
    .restart local v1    # "c0":C
    add-int/lit8 v3, p2, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 320
    .restart local v3    # "c1":C
    add-int/lit8 v4, p2, 0x2

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 321
    .local v4, "c2":C
    add-int/lit8 v5, p2, 0x3

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 322
    .local v5, "c3":C
    invoke-static {v1}, Lio/netty/handler/codec/DateFormatter;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v3}, Lio/netty/handler/codec/DateFormatter;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lio/netty/handler/codec/DateFormatter;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Lio/netty/handler/codec/DateFormatter;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 323
    invoke-static {v1}, Lio/netty/handler/codec/DateFormatter;->getNumericalValue(C)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    .line 324
    invoke-static {v3}, Lio/netty/handler/codec/DateFormatter;->getNumericalValue(C)I

    move-result v7

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v6, v7

    .line 325
    invoke-static {v4}, Lio/netty/handler/codec/DateFormatter;->getNumericalValue(C)I

    move-result v7

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v6, v7

    .line 326
    invoke-static {v5}, Lio/netty/handler/codec/DateFormatter;->getNumericalValue(C)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lio/netty/handler/codec/DateFormatter;->year:I

    .line 327
    return v2

    .line 317
    .end local v1    # "c0":C
    .end local v3    # "c1":C
    .end local v4    # "c2":C
    .end local v5    # "c3":C
    :cond_1
    nop

    .line 331
    :cond_2
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->timeFound:Z

    .line 165
    const/4 v1, -0x1

    iput v1, p0, Lio/netty/handler/codec/DateFormatter;->hours:I

    .line 166
    iput v1, p0, Lio/netty/handler/codec/DateFormatter;->minutes:I

    .line 167
    iput v1, p0, Lio/netty/handler/codec/DateFormatter;->seconds:I

    .line 168
    iput-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->dayOfMonthFound:Z

    .line 169
    iput v1, p0, Lio/netty/handler/codec/DateFormatter;->dayOfMonth:I

    .line 170
    iput-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->monthFound:Z

    .line 171
    iput v1, p0, Lio/netty/handler/codec/DateFormatter;->month:I

    .line 172
    iput-boolean v0, p0, Lio/netty/handler/codec/DateFormatter;->yearFound:Z

    .line 173
    iput v1, p0, Lio/netty/handler/codec/DateFormatter;->year:I

    .line 174
    iget-object v1, p0, Lio/netty/handler/codec/DateFormatter;->cal:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->clear()V

    .line 175
    iget-object v1, p0, Lio/netty/handler/codec/DateFormatter;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 176
    return-void
.end method
