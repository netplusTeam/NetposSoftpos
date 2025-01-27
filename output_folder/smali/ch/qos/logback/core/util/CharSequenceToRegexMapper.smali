.class Lch/qos/logback/core/util/CharSequenceToRegexMapper;
.super Ljava/lang/Object;
.source "CharSequenceToRegexMapper.java"


# instance fields
.field symbols:Ljava/text/DateFormatSymbols;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Ljava/text/DateFormatSymbols;->getInstance()Ljava/text/DateFormatSymbols;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbols:Ljava/text/DateFormatSymbols;

    return-void
.end method

.method static findMinMaxLengthsInSymbols([Ljava/lang/String;)[I
    .locals 7
    .param p0, "symbols"    # [Ljava/lang/String;

    .line 114
    const v0, 0x7fffffff

    .line 115
    .local v0, "min":I
    const/4 v1, 0x0

    .line 116
    .local v1, "max":I
    move-object v2, p0

    .local v2, "arr$":[Ljava/lang/String;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 117
    .local v5, "symbol":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 119
    .local v6, "len":I
    if-nez v6, :cond_0

    .line 120
    goto :goto_1

    .line 121
    :cond_0
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 122
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 116
    .end local v5    # "symbol":Ljava/lang/String;
    .end local v6    # "len":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 124
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2
.end method

.method private getRegexForAmPms()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbolArrayToRegex([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRegexForLongDaysOfTheWeek()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbolArrayToRegex([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRegexForLongMonths()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbolArrayToRegex([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRegexForShortDaysOfTheWeek()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbolArrayToRegex([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private number(I)Ljava/lang/String;
    .locals 2
    .param p1, "occurrences"    # I

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\d{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private symbolArrayToRegex([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "symbolArray"    # [Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->findMinMaxLengthsInSymbols([Ljava/lang/String;)[I

    move-result-object v0

    .line 110
    .local v0, "minMax":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method getRegexForShortMonths()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbolArrayToRegex([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toRegex(Lch/qos/logback/core/util/CharSequenceState;)Ljava/lang/String;
    .locals 5
    .param p1, "css"    # Lch/qos/logback/core/util/CharSequenceState;

    .line 29
    iget v0, p1, Lch/qos/logback/core/util/CharSequenceState;->occurrences:I

    .line 30
    .local v0, "occurrences":I
    iget-char v1, p1, Lch/qos/logback/core/util/CharSequenceState;->c:C

    .line 31
    .local v1, "c":C
    iget-char v2, p1, Lch/qos/logback/core/util/CharSequenceState;->c:C

    const-string v3, ""

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 76
    if-ne v0, v4, :cond_4

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 63
    :sswitch_0
    invoke-direct {p0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->getRegexForAmPms()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 69
    :sswitch_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Forward slashes are not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :sswitch_2
    const-string v2, "(\\+|-)\\d{4}"

    return-object v2

    .line 36
    :sswitch_3
    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 37
    invoke-direct {p0, v0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->number(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 38
    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 39
    invoke-virtual {p0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->getRegexForShortMonths()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 41
    :cond_1
    invoke-direct {p0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->getRegexForLongMonths()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 34
    :sswitch_4
    const-string v2, ".*"

    return-object v2

    .line 57
    :sswitch_5
    const/4 v2, 0x4

    if-lt v0, v2, :cond_2

    .line 58
    invoke-direct {p0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->getRegexForLongDaysOfTheWeek()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 60
    :cond_2
    invoke-direct {p0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->getRegexForShortDaysOfTheWeek()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 55
    :sswitch_6
    invoke-direct {p0, v0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->number(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 67
    :sswitch_7
    const-string v2, "\\."

    return-object v2

    .line 71
    :sswitch_8
    if-ne v0, v4, :cond_3

    .line 72
    return-object v3

    .line 74
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Too many single quotes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_8
        0x2e -> :sswitch_7
        0x44 -> :sswitch_6
        0x45 -> :sswitch_5
        0x46 -> :sswitch_6
        0x47 -> :sswitch_4
        0x48 -> :sswitch_6
        0x4b -> :sswitch_6
        0x4d -> :sswitch_3
        0x53 -> :sswitch_6
        0x57 -> :sswitch_6
        0x5a -> :sswitch_2
        0x5c -> :sswitch_1
        0x61 -> :sswitch_0
        0x64 -> :sswitch_6
        0x68 -> :sswitch_6
        0x6b -> :sswitch_6
        0x6d -> :sswitch_6
        0x73 -> :sswitch_6
        0x77 -> :sswitch_6
        0x79 -> :sswitch_6
        0x7a -> :sswitch_4
    .end sparse-switch
.end method
