.class public Lcom/sleepycat/je/utilint/CronScheduleParser;
.super Ljava/lang/Object;
.source "CronScheduleParser.java"


# static fields
.field public static final cons1:Ljava/lang/String; = "The standard string should be \'* * * * *\', i.e. there are 5 fields and 4 blank spaces."

.field public static final cons2:Ljava/lang/String; = "Each field can only be an int value or *."

.field public static final cons3:Ljava/lang/String; = "Can not specify dayOfWeek and dayOfMonth simultaneously."

.field public static final cons4:Ljava/lang/String; = "Can not specify dayOfMonth or month."

.field public static final cons5:Ljava/lang/String; = "Range Error: "

.field public static final cons6:Ljava/lang/String; = "If the day of the week is a concrete day, then the minute and the hour should also be concrete."

.field public static final cons7:Ljava/lang/String; = "If the hour is a concrete day, then minute should also be concrete"

.field private static final errorMess:Ljava/lang/String; = "The format of je.env.verifySchedule is invalid. "

.field private static final fieldNum:I = 0x5

.field private static final millsOneDay:J = 0x5265c00L

.field private static final millsOneHour:J = 0x36ee80L

.field private static final millsOneMinute:J = 0xea60L

.field public static final nullCons:Ljava/lang/String; = "The argument should not be null."

.field public static volatile setCurCalHook:Lcom/sleepycat/je/utilint/TestHook; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final spaceNum:I = 0x4


# instance fields
.field private delay:J

.field private interval:J

.field private final time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cronSchedule"    # Ljava/lang/String;

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/utilint/CronScheduleParser;-><init>(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 3
    .param p1, "cronSchedule"    # Ljava/lang/String;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    sget-object v0, Lcom/sleepycat/je/utilint/CronScheduleParser;->setCurCalHook:Lcom/sleepycat/je/utilint/TestHook;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/utilint/CronScheduleParser;->setCurCalHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 113
    invoke-interface {v0}, Lcom/sleepycat/je/utilint/TestHook;->getHookValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 115
    .local v0, "curCal":Ljava/util/Calendar;
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/utilint/CronScheduleParser;->time:J

    .line 116
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/CronScheduleParser;->validate(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/utilint/CronScheduleParser;->parser(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 118
    return-void
.end method

.method private assertDelay()V
    .locals 4

    .line 181
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/CronScheduleParser;->delay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 185
    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delay is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/utilint/CronScheduleParser;->delay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; interval is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/utilint/CronScheduleParser;->interval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkSame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "cronvSchedule1"    # Ljava/lang/String;
    .param p1, "cronSchedule2"    # Ljava/lang/String;

    .line 133
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 134
    return v0

    .line 137
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    return v0

    .line 145
    :cond_2
    return v1

    .line 138
    :cond_3
    :goto_0
    return v1
.end method

.method private parser(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 19
    .param p1, "cronSchedule"    # Ljava/lang/String;
    .param p2, "curCal"    # Ljava/util/Calendar;

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 189
    .local v3, "curDayOfWeek":I
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 190
    .local v5, "curHour":I
    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 199
    .local v7, "curMinute":I
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Calendar;

    .line 200
    .local v8, "scheduleCal":Ljava/util/Calendar;
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 201
    const/16 v9, 0xe

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 202
    const-string v9, " "

    move-object/from16 v11, p1

    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 205
    .local v9, "timeArray":[Ljava/lang/String;
    const/4 v12, 0x4

    aget-object v13, v9, v12

    const-string v14, "*"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v15, 0x1

    if-nez v13, :cond_1

    .line 206
    const-wide/32 v13, 0x240c8400

    iput-wide v13, v0, Lcom/sleepycat/je/utilint/CronScheduleParser;->interval:J

    .line 207
    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v15

    .line 208
    .local v12, "tmpDayOfWeek":I
    aget-object v13, v9, v15

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 209
    .local v13, "tmpHour":I
    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 211
    .local v10, "tmpMinute":I
    invoke-virtual {v8, v2, v12}, Ljava/util/Calendar;->set(II)V

    .line 212
    invoke-virtual {v8, v4, v13}, Ljava/util/Calendar;->set(II)V

    .line 213
    invoke-virtual {v8, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 215
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    cmp-long v4, v14, v17

    if-gez v4, :cond_0

    .line 217
    const/4 v4, 0x5

    invoke-virtual {v8, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 219
    :cond_0
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    sub-long v14, v14, v16

    iput-wide v14, v0, Lcom/sleepycat/je/utilint/CronScheduleParser;->delay:J

    .line 221
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/utilint/CronScheduleParser;->assertDelay()V

    .line 222
    return-void

    .line 225
    .end local v10    # "tmpMinute":I
    .end local v12    # "tmpDayOfWeek":I
    .end local v13    # "tmpHour":I
    :cond_1
    aget-object v12, v9, v15

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 226
    const-wide/32 v12, 0x5265c00

    iput-wide v12, v0, Lcom/sleepycat/je/utilint/CronScheduleParser;->interval:J

    .line 227
    aget-object v12, v9, v15

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 228
    .local v12, "tmpHour":I
    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 234
    .restart local v10    # "tmpMinute":I
    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 235
    invoke-virtual {v8, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 236
    invoke-virtual {v8, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 238
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    cmp-long v2, v13, v17

    if-gez v2, :cond_2

    .line 240
    const/4 v2, 0x5

    invoke-virtual {v8, v2, v15}, Ljava/util/Calendar;->add(II)V

    .line 242
    :cond_2
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    sub-long/2addr v13, v15

    iput-wide v13, v0, Lcom/sleepycat/je/utilint/CronScheduleParser;->delay:J

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/utilint/CronScheduleParser;->assertDelay()V

    .line 245
    return-void

    .line 248
    .end local v10    # "tmpMinute":I
    .end local v12    # "tmpHour":I
    :cond_3
    aget-object v12, v9, v10

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 249
    const-wide/32 v12, 0x36ee80

    iput-wide v12, v0, Lcom/sleepycat/je/utilint/CronScheduleParser;->interval:J

    .line 250
    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 256
    .restart local v10    # "tmpMinute":I
    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 257
    invoke-virtual {v8, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 258
    invoke-virtual {v8, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 260
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v2, v12, v16

    if-gez v2, :cond_4

    .line 262
    const/16 v2, 0xa

    invoke-virtual {v8, v2, v15}, Ljava/util/Calendar;->add(II)V

    .line 264
    :cond_4
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    sub-long/2addr v12, v14

    iput-wide v12, v0, Lcom/sleepycat/je/utilint/CronScheduleParser;->delay:J

    .line 266
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/utilint/CronScheduleParser;->assertDelay()V

    .line 267
    return-void

    .line 270
    .end local v10    # "tmpMinute":I
    :cond_5
    aget-object v2, v9, v10

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 271
    const-wide/32 v12, 0xea60

    iput-wide v12, v0, Lcom/sleepycat/je/utilint/CronScheduleParser;->interval:J

    .line 272
    const-wide/16 v12, 0x0

    iput-wide v12, v0, Lcom/sleepycat/je/utilint/CronScheduleParser;->delay:J

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/utilint/CronScheduleParser;->assertDelay()V

    .line 274
    return-void

    .line 276
    :cond_6
    return-void
.end method

.method private validate(Ljava/lang/String;)V
    .locals 9
    .param p1, "cronSchedule"    # Ljava/lang/String;

    .line 280
    if-eqz p1, :cond_12

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "spaceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 290
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 291
    .local v2, "c":C
    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 292
    add-int/lit8 v0, v0, 0x1

    .line 289
    .end local v2    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 296
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_11

    .line 300
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "timeArray":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const-string v6, "*"

    if-ge v5, v3, :cond_3

    aget-object v7, v2, v5

    .line 306
    .local v7, "str":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    goto :goto_2

    .line 307
    :catch_0
    move-exception v8

    .line 308
    .local v8, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 304
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 309
    .restart local v7    # "str":Ljava/lang/String;
    .restart local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "The format of je.env.verifySchedule is invalid. Each field can only be an int value or *."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const/4 v3, 0x2

    aget-object v5, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    aget-object v5, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 319
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "The format of je.env.verifySchedule is invalid. Can not specify dayOfWeek and dayOfMonth simultaneously."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_5
    :goto_3
    aget-object v3, v2, v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 333
    aget-object v3, v2, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 334
    aget-object v3, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 335
    .local v3, "min":I
    if-ltz v3, :cond_6

    const/16 v5, 0x3b

    if-gt v3, v5, :cond_6

    goto :goto_4

    .line 336
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The format of je.env.verifySchedule is invalid. Range Error: The minute should be (0-59)."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    .end local v3    # "min":I
    :cond_7
    :goto_4
    const/4 v3, 0x1

    aget-object v5, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 342
    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 343
    .local v5, "hour":I
    if-ltz v5, :cond_8

    const/16 v7, 0x17

    if-gt v5, v7, :cond_8

    goto :goto_5

    .line 344
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "The format of je.env.verifySchedule is invalid. Range Error: The hour should be (0-23)."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 349
    .end local v5    # "hour":I
    :cond_9
    :goto_5
    aget-object v5, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 350
    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 351
    .local v5, "dayOfWeek":I
    if-ltz v5, :cond_a

    const/4 v7, 0x6

    if-gt v5, v7, :cond_a

    goto :goto_6

    .line 352
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "The format of je.env.verifySchedule is invalid. Range Error: The day of the week shouldbe (0-6)."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    .end local v5    # "dayOfWeek":I
    :cond_b
    :goto_6
    aget-object v1, v2, v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 363
    aget-object v1, v2, v4

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    aget-object v1, v2, v3

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_7

    .line 364
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "The format of je.env.verifySchedule is invalid. If the day of the week is a concrete day, then the minute and the hour should also be concrete."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 371
    :cond_d
    :goto_7
    aget-object v1, v2, v3

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 372
    aget-object v1, v2, v4

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_8

    .line 373
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "The format of je.env.verifySchedule is invalid. If the hour is a concrete day, then minute should also be concrete"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    :cond_f
    :goto_8
    return-void

    .line 326
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "The format of je.env.verifySchedule is invalid. Can not specify dayOfMonth or month."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    .end local v2    # "timeArray":[Ljava/lang/String;
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The format of je.env.verifySchedule is invalid. The standard string should be \'* * * * *\', i.e. there are 5 fields and 4 blank spaces."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    .end local v0    # "spaceCount":I
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The format of je.env.verifySchedule is invalid. The argument should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDelayTime()J
    .locals 2

    .line 160
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/CronScheduleParser;->delay:J

    return-wide v0
.end method

.method public getInterval()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/CronScheduleParser;->interval:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .line 152
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/CronScheduleParser;->time:J

    return-wide v0
.end method
