.class public Lorg/apache/commons/lang/time/DurationFormatUtils;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    }
.end annotation


# static fields
.field static final H:Ljava/lang/Object;

.field public static final ISO_EXTENDED_FORMAT_PATTERN:Ljava/lang/String; = "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

.field static final M:Ljava/lang/Object;

.field static final S:Ljava/lang/Object;

.field static final d:Ljava/lang/Object;

.field static final m:Ljava/lang/Object;

.field static final s:Ljava/lang/Object;

.field static final y:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 477
    const-string/jumbo v0, "y"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->y:Ljava/lang/Object;

    .line 478
    const-string v0, "M"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->M:Ljava/lang/Object;

    .line 479
    const-string v0, "d"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->d:Ljava/lang/Object;

    .line 480
    const-string v0, "H"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->H:Ljava/lang/Object;

    .line 481
    const-string v0, "m"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->m:Ljava/lang/Object;

    .line 482
    const-string v0, "s"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->s:Ljava/lang/Object;

    .line 483
    const-string v0, "S"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->S:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static format([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;IIIIIIIZ)Ljava/lang/String;
    .locals 11
    .param p0, "tokens"    # [Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    .param p1, "years"    # I
    .param p2, "months"    # I
    .param p3, "days"    # I
    .param p4, "hours"    # I
    .param p5, "minutes"    # I
    .param p6, "seconds"    # I
    .param p7, "milliseconds"    # I
    .param p8, "padWithZeros"    # Z

    .line 424
    move-object v0, p0

    new-instance v1, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>()V

    .line 425
    .local v1, "buffer":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v2, 0x0

    .line 426
    .local v2, "lastOutputSeconds":Z
    array-length v3, v0

    .line 427
    .local v3, "sz":I
    const/4 v4, 0x0

    move v5, v4

    move v4, v2

    move/from16 v2, p7

    .end local p7    # "milliseconds":I
    .local v2, "milliseconds":I
    .local v4, "lastOutputSeconds":Z
    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_11

    .line 428
    aget-object v6, v0, v5

    .line 429
    .local v6, "token":Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    invoke-virtual {v6}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 430
    .local v7, "value":Ljava/lang/Object;
    invoke-virtual {v6}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->getCount()I

    move-result v8

    .line 431
    .local v8, "count":I
    instance-of v9, v7, Ljava/lang/StringBuffer;

    if-eqz v9, :cond_0

    .line 432
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    goto/16 :goto_2

    .line 434
    :cond_0
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->y:Ljava/lang/Object;

    const/16 v10, 0x30

    if-ne v7, v9, :cond_2

    .line 435
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz p8, :cond_1

    invoke-static {v9, v8, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :cond_1
    invoke-virtual {v1, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 437
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 438
    :cond_2
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->M:Ljava/lang/Object;

    if-ne v7, v9, :cond_4

    .line 439
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz p8, :cond_3

    invoke-static {v9, v8, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :cond_3
    invoke-virtual {v1, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 441
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 442
    :cond_4
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->d:Ljava/lang/Object;

    if-ne v7, v9, :cond_6

    .line 443
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz p8, :cond_5

    invoke-static {v9, v8, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :cond_5
    invoke-virtual {v1, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 445
    const/4 v4, 0x0

    goto :goto_2

    .line 446
    :cond_6
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->H:Ljava/lang/Object;

    if-ne v7, v9, :cond_8

    .line 447
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz p8, :cond_7

    invoke-static {v9, v8, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :cond_7
    invoke-virtual {v1, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 449
    const/4 v4, 0x0

    goto :goto_2

    .line 450
    :cond_8
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->m:Ljava/lang/Object;

    if-ne v7, v9, :cond_a

    .line 451
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz p8, :cond_9

    invoke-static {v9, v8, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :cond_9
    invoke-virtual {v1, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 453
    const/4 v4, 0x0

    goto :goto_2

    .line 454
    :cond_a
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->s:Ljava/lang/Object;

    if-ne v7, v9, :cond_c

    .line 455
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz p8, :cond_b

    invoke-static {v9, v8, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :cond_b
    invoke-virtual {v1, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 457
    const/4 v4, 0x1

    goto :goto_2

    .line 458
    :cond_c
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->S:Ljava/lang/Object;

    if-ne v7, v9, :cond_10

    .line 459
    if-eqz v4, :cond_e

    .line 460
    add-int/lit16 v2, v2, 0x3e8

    .line 461
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz p8, :cond_d

    invoke-static {v9, v8, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    .line 464
    .local v9, "str":Ljava/lang/String;
    :cond_d
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 465
    .end local v9    # "str":Ljava/lang/String;
    goto :goto_1

    .line 466
    :cond_e
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz p8, :cond_f

    invoke-static {v9, v8, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :cond_f
    invoke-virtual {v1, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 470
    :goto_1
    const/4 v4, 0x0

    .line 427
    .end local v6    # "token":Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "count":I
    :cond_10
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 474
    .end local v5    # "i":I
    :cond_11
    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static formatDuration(JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "durationMillis"    # J
    .param p2, "format"    # Ljava/lang/String;

    .line 112
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 17
    .param p0, "durationMillis"    # J
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "padWithZeros"    # Z

    .line 130
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/lang/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    move-result-object v9

    .line 132
    .local v9, "tokens":[Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    const/4 v0, 0x0

    .line 133
    .local v0, "days":I
    const/4 v1, 0x0

    .line 134
    .local v1, "hours":I
    const/4 v2, 0x0

    .line 135
    .local v2, "minutes":I
    const/4 v3, 0x0

    .line 136
    .local v3, "seconds":I
    const/4 v4, 0x0

    .line 138
    .local v4, "milliseconds":I
    sget-object v5, Lorg/apache/commons/lang/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v9, v5}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    const-wide/32 v5, 0x5265c00

    div-long v7, p0, v5

    long-to-int v0, v7

    .line 140
    int-to-long v7, v0

    mul-long/2addr v7, v5

    sub-long v5, p0, v7

    move v10, v0

    .end local p0    # "durationMillis":J
    .local v5, "durationMillis":J
    goto :goto_0

    .line 138
    .end local v5    # "durationMillis":J
    .restart local p0    # "durationMillis":J
    :cond_0
    move-wide/from16 v5, p0

    move v10, v0

    .line 142
    .end local v0    # "days":I
    .end local p0    # "durationMillis":J
    .restart local v5    # "durationMillis":J
    .local v10, "days":I
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    const-wide/32 v7, 0x36ee80

    div-long v11, v5, v7

    long-to-int v1, v11

    .line 144
    int-to-long v11, v1

    mul-long/2addr v11, v7

    sub-long/2addr v5, v11

    move v11, v1

    goto :goto_1

    .line 142
    :cond_1
    move v11, v1

    .line 146
    .end local v1    # "hours":I
    .local v11, "hours":I
    :goto_1
    sget-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    const-wide/32 v0, 0xea60

    div-long v7, v5, v0

    long-to-int v2, v7

    .line 148
    int-to-long v7, v2

    mul-long/2addr v7, v0

    sub-long/2addr v5, v7

    move v12, v2

    goto :goto_2

    .line 146
    :cond_2
    move v12, v2

    .line 150
    .end local v2    # "minutes":I
    .local v12, "minutes":I
    :goto_2
    sget-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    const-wide/16 v0, 0x3e8

    div-long v7, v5, v0

    long-to-int v3, v7

    .line 152
    int-to-long v7, v3

    mul-long/2addr v7, v0

    sub-long/2addr v5, v7

    move v13, v3

    move-wide v14, v5

    goto :goto_3

    .line 150
    :cond_3
    move v13, v3

    move-wide v14, v5

    .line 154
    .end local v3    # "seconds":I
    .end local v5    # "durationMillis":J
    .local v13, "seconds":I
    .local v14, "durationMillis":J
    :goto_3
    sget-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->S:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    long-to-int v4, v14

    move/from16 v16, v4

    goto :goto_4

    .line 154
    :cond_4
    move/from16 v16, v4

    .line 158
    .end local v4    # "milliseconds":I
    .local v16, "milliseconds":I
    :goto_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    move/from16 v7, v16

    move/from16 v8, p3

    invoke-static/range {v0 .. v8}, Lorg/apache/commons/lang/time/DurationFormatUtils;->format([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;IIIIIIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationHMS(J)Ljava/lang/String;
    .locals 1
    .param p0, "durationMillis"    # J

    .line 82
    const-string v0, "H:mm:ss.SSS"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationISO(J)Ljava/lang/String;
    .locals 2
    .param p0, "durationMillis"    # J

    .line 97
    const-string v0, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationWords(JZZ)Ljava/lang/String;
    .locals 10
    .param p0, "durationMillis"    # J
    .param p2, "suppressLeadingZeroElements"    # Z
    .param p3, "suppressTrailingZeroElements"    # Z

    .line 180
    const-string v0, "d\' days \'H\' hours \'m\' minutes \'s\' seconds\'"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "duration":Ljava/lang/String;
    const-string v1, " 0 minutes"

    const-string v2, " 0 hours"

    const-string v3, " 0 seconds"

    const-string v4, " 0 days"

    const-string v5, " "

    const-string v6, ""

    if-eqz p2, :cond_1

    .line 183
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0, v4, v6}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, "tmp":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 186
    move-object v0, v7

    .line 187
    invoke-static {v0, v2, v6}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 188
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 189
    move-object v0, v7

    .line 190
    invoke-static {v0, v1, v6}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 191
    move-object v0, v7

    .line 192
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 193
    invoke-static {v7, v3, v6}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 199
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .end local v7    # "tmp":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 203
    invoke-static {v0, v3, v6}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "tmp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 205
    move-object v0, v3

    .line 206
    invoke-static {v0, v1, v6}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .end local v3    # "tmp":Ljava/lang/String;
    .local v1, "tmp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v3, v7, :cond_2

    .line 208
    move-object v0, v1

    .line 209
    invoke-static {v0, v2, v6}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 211
    invoke-static {v1, v4, v6}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    const-string v1, " 1 seconds"

    const-string v2, " 1 second"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v1, " 1 minutes"

    const-string v2, " 1 minute"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string v1, " 1 hours"

    const-string v2, " 1 hour"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v1, " 1 days"

    const-string v2, " 1 day"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatPeriod(JJLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "format"    # Ljava/lang/String;

    .line 249
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    const/4 v5, 0x1

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 23
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "padWithZeros"    # Z
    .param p6, "timezone"    # Ljava/util/TimeZone;

    .line 284
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/lang/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    move-result-object v9

    .line 288
    .local v9, "tokens":[Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v10

    .line 289
    .local v10, "start":Ljava/util/Calendar;
    new-instance v0, Ljava/util/Date;

    move-wide/from16 v11, p0

    invoke-direct {v0, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 290
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v13

    .line 291
    .local v13, "end":Ljava/util/Calendar;
    new-instance v0, Ljava/util/Date;

    move-wide/from16 v14, p2

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 294
    const/16 v0, 0xe

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    .line 295
    .local v1, "milliseconds":I
    const/16 v0, 0xd

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v2, v0

    .line 296
    .local v2, "seconds":I
    const/16 v0, 0xc

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v3, v0

    .line 297
    .local v3, "minutes":I
    const/16 v0, 0xb

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v4, v0

    .line 298
    .local v4, "hours":I
    const/4 v0, 0x5

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int/2addr v5, v6

    .line 299
    .local v5, "days":I
    const/4 v6, 0x2

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v7, v8

    .line 300
    .local v7, "months":I
    const/4 v8, 0x1

    invoke-virtual {v13, v8}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v17

    sub-int v16, v16, v17

    .line 303
    .local v16, "years":I
    :goto_0
    if-gez v1, :cond_0

    .line 304
    add-int/lit16 v1, v1, 0x3e8

    .line 305
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 307
    :cond_0
    :goto_1
    if-gez v2, :cond_1

    .line 308
    add-int/lit8 v2, v2, 0x3c

    .line 309
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 311
    :cond_1
    :goto_2
    if-gez v3, :cond_2

    .line 312
    add-int/lit8 v3, v3, 0x3c

    .line 313
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 315
    :cond_2
    :goto_3
    if-gez v4, :cond_3

    .line 316
    add-int/lit8 v4, v4, 0x18

    .line 317
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 320
    :cond_3
    sget-object v6, Lorg/apache/commons/lang/time/DurationFormatUtils;->M:Ljava/lang/Object;

    invoke-static {v9, v6}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 321
    :goto_4
    if-gez v5, :cond_4

    .line 322
    invoke-virtual {v10, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 323
    add-int/lit8 v7, v7, -0x1

    .line 324
    const/4 v6, 0x2

    invoke-virtual {v10, v6, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    .line 327
    :cond_4
    :goto_5
    if-gez v7, :cond_5

    .line 328
    add-int/lit8 v7, v7, 0xc

    .line 329
    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    .line 332
    :cond_5
    sget-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v16, :cond_7

    .line 333
    :goto_6
    if-eqz v16, :cond_6

    .line 334
    mul-int/lit8 v0, v16, 0xc

    add-int/2addr v7, v0

    .line 335
    const/16 v16, 0x0

    goto :goto_6

    .line 333
    :cond_6
    move/from16 v17, v16

    move/from16 v16, v7

    goto/16 :goto_b

    .line 387
    :cond_7
    move/from16 v17, v16

    move/from16 v16, v7

    goto/16 :goto_b

    .line 341
    :cond_8
    sget-object v6, Lorg/apache/commons/lang/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v9, v6}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 342
    invoke-virtual {v13, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 343
    .local v6, "target":I
    if-gez v7, :cond_9

    .line 345
    add-int/lit8 v6, v6, -0x1

    .line 348
    :cond_9
    :goto_7
    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, v6, :cond_c

    .line 349
    const/4 v0, 0x6

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    sub-int v19, v19, v20

    add-int v5, v5, v19

    .line 352
    instance-of v0, v10, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_a

    .line 353
    move/from16 v20, v6

    const/4 v0, 0x2

    .end local v6    # "target":I
    .local v20, "target":I
    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v8, :cond_b

    const/4 v0, 0x5

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v0, 0x1d

    if-ne v6, v0, :cond_b

    .line 356
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 352
    .end local v20    # "target":I
    .restart local v6    # "target":I
    :cond_a
    move/from16 v20, v6

    .line 360
    .end local v6    # "target":I
    .restart local v20    # "target":I
    :cond_b
    :goto_8
    invoke-virtual {v10, v8, v8}, Ljava/util/Calendar;->add(II)V

    .line 362
    const/4 v0, 0x6

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v5, v0

    move/from16 v6, v20

    const/4 v0, 0x5

    goto :goto_7

    .line 365
    .end local v20    # "target":I
    .restart local v6    # "target":I
    :cond_c
    move/from16 v20, v6

    .end local v6    # "target":I
    .restart local v20    # "target":I
    const/16 v16, 0x0

    .line 368
    .end local v20    # "target":I
    :cond_d
    :goto_9
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-eq v6, v8, :cond_e

    .line 369
    const/4 v6, 0x5

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    add-int/2addr v5, v8

    .line 370
    const/4 v8, 0x1

    invoke-virtual {v10, v0, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_9

    .line 373
    :cond_e
    const/4 v6, 0x5

    const/4 v0, 0x0

    move v7, v0

    .line 375
    :goto_a
    if-gez v5, :cond_f

    .line 376
    invoke-virtual {v10, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    add-int/2addr v5, v0

    .line 377
    add-int/lit8 v7, v7, -0x1

    .line 378
    const/4 v0, 0x2

    const/4 v8, 0x1

    invoke-virtual {v10, v0, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_a

    .line 375
    :cond_f
    move/from16 v17, v16

    move/from16 v16, v7

    .line 387
    .end local v7    # "months":I
    .local v16, "months":I
    .local v17, "years":I
    :goto_b
    sget-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 388
    mul-int/lit8 v0, v5, 0x18

    add-int/2addr v4, v0

    .line 389
    const/4 v5, 0x0

    move/from16 v18, v5

    goto :goto_c

    .line 387
    :cond_10
    move/from16 v18, v5

    .line 391
    .end local v5    # "days":I
    .local v18, "days":I
    :goto_c
    sget-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 392
    mul-int/lit8 v0, v4, 0x3c

    add-int/2addr v3, v0

    .line 393
    const/4 v4, 0x0

    move/from16 v19, v4

    goto :goto_d

    .line 391
    :cond_11
    move/from16 v19, v4

    .line 395
    .end local v4    # "hours":I
    .local v19, "hours":I
    :goto_d
    sget-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 396
    mul-int/lit8 v0, v3, 0x3c

    add-int/2addr v2, v0

    .line 397
    const/4 v3, 0x0

    move/from16 v20, v3

    goto :goto_e

    .line 395
    :cond_12
    move/from16 v20, v3

    .line 399
    .end local v3    # "minutes":I
    .local v20, "minutes":I
    :goto_e
    sget-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v9, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 400
    mul-int/lit16 v0, v2, 0x3e8

    add-int/2addr v1, v0

    .line 401
    const/4 v2, 0x0

    move/from16 v21, v1

    move/from16 v22, v2

    goto :goto_f

    .line 399
    :cond_13
    move/from16 v21, v1

    move/from16 v22, v2

    .line 404
    .end local v1    # "milliseconds":I
    .end local v2    # "seconds":I
    .local v21, "milliseconds":I
    .local v22, "seconds":I
    :goto_f
    move-object v0, v9

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v22

    move/from16 v7, v21

    move/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lorg/apache/commons/lang/time/DurationFormatUtils;->format([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;IIIIIIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPeriodISO(JJ)Ljava/lang/String;
    .locals 7
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J

    .line 236
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    const-string v4, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

    const/4 v5, 0x0

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static lexx(Ljava/lang/String;)[Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    .locals 10
    .param p0, "format"    # Ljava/lang/String;

    .line 492
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 493
    .local v0, "array":[C
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 495
    .local v1, "list":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .line 496
    .local v2, "inLiteral":Z
    const/4 v3, 0x0

    .line 497
    .local v3, "buffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 498
    .local v4, "previous":Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    array-length v5, v0

    .line 499
    .local v5, "sz":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_5

    .line 500
    aget-char v7, v0, v6

    .line 501
    .local v7, "ch":C
    if-eqz v2, :cond_0

    const/16 v8, 0x27

    if-eq v7, v8, :cond_0

    .line 502
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 503
    goto :goto_4

    .line 505
    :cond_0
    const/4 v8, 0x0

    .line 506
    .local v8, "value":Ljava/lang/Object;
    sparse-switch v7, :sswitch_data_0

    .line 526
    if-nez v3, :cond_2

    .line 527
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v9

    .line 528
    new-instance v9, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    invoke-direct {v9, v3}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 518
    :sswitch_0
    sget-object v8, Lorg/apache/commons/lang/time/DurationFormatUtils;->y:Ljava/lang/Object;

    goto :goto_2

    .line 523
    :sswitch_1
    sget-object v8, Lorg/apache/commons/lang/time/DurationFormatUtils;->s:Ljava/lang/Object;

    goto :goto_2

    .line 522
    :sswitch_2
    sget-object v8, Lorg/apache/commons/lang/time/DurationFormatUtils;->m:Ljava/lang/Object;

    goto :goto_2

    .line 520
    :sswitch_3
    sget-object v8, Lorg/apache/commons/lang/time/DurationFormatUtils;->d:Ljava/lang/Object;

    goto :goto_2

    .line 524
    :sswitch_4
    sget-object v8, Lorg/apache/commons/lang/time/DurationFormatUtils;->S:Ljava/lang/Object;

    goto :goto_2

    .line 519
    :sswitch_5
    sget-object v8, Lorg/apache/commons/lang/time/DurationFormatUtils;->M:Ljava/lang/Object;

    goto :goto_2

    .line 521
    :sswitch_6
    sget-object v8, Lorg/apache/commons/lang/time/DurationFormatUtils;->H:Ljava/lang/Object;

    goto :goto_2

    .line 509
    :sswitch_7
    if-eqz v2, :cond_1

    .line 510
    const/4 v3, 0x0

    .line 511
    const/4 v2, 0x0

    goto :goto_2

    .line 513
    :cond_1
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v9

    .line 514
    new-instance v9, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    invoke-direct {v9, v3}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    const/4 v2, 0x1

    .line 517
    goto :goto_2

    .line 530
    :cond_2
    :goto_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 533
    :goto_2
    if-eqz v8, :cond_4

    .line 534
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v8, :cond_3

    .line 535
    invoke-virtual {v4}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->increment()V

    goto :goto_3

    .line 537
    :cond_3
    new-instance v9, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    invoke-direct {v9, v8}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    .line 538
    .local v9, "token":Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    move-object v4, v9

    .line 541
    .end local v9    # "token":Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    :goto_3
    const/4 v3, 0x0

    .line 499
    .end local v7    # "ch":C
    .end local v8    # "value":Ljava/lang/Object;
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 544
    .end local v6    # "i":I
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    check-cast v6, [Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    return-object v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_7
        0x48 -> :sswitch_6
        0x4d -> :sswitch_5
        0x53 -> :sswitch_4
        0x64 -> :sswitch_3
        0x6d -> :sswitch_2
        0x73 -> :sswitch_1
        0x79 -> :sswitch_0
    .end sparse-switch
.end method
