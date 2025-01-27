.class public Lcom/sleepycat/je/utilint/PropUtil;
.super Ljava/lang/Object;
.source "PropUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;
    }
.end annotation


# static fields
.field private static final NS_IN_HOUR:J = 0x34630b8a000L

.field private static final NS_IN_MINUTE:J = 0xdf8475800L

.field private static final NS_IN_MS:J = 0xf4240L

.field private static final NS_IN_SEC:J = 0x3b9aca00L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static durationToMillis(JLjava/util/concurrent/TimeUnit;)I
    .locals 5
    .param p0, "val"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 39
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 41
    const/4 v0, 0x0

    return v0

    .line 43
    :cond_0
    if-eqz p2, :cond_4

    .line 48
    cmp-long v2, p0, v0

    if-ltz v2, :cond_3

    .line 52
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 53
    .local v2, "newVal":J
    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 55
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_1
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-gtz v0, :cond_2

    .line 62
    long-to-int v0, v2

    return v0

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duration argument may not be greater than Integer.MAX_VALUE milliseconds: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    .end local v2    # "newVal":J
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration argument may not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration TimeUnit argument may not be null if interval is non-zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static formatDuration(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/concurrent/TimeUnit;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static millisToDuration(ILjava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p0, "val"    # I
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 72
    if-eqz p1, :cond_0

    .line 76
    int-to-long v0, p0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TimeUnit argument may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseDuration(Ljava/lang/String;)I
    .locals 7
    .param p0, "property"    # Ljava/lang/String;

    .line 88
    invoke-static {p0}, Lcom/sleepycat/je/utilint/PropUtil;->parseDurationNS(Ljava/lang/String;)J

    move-result-wide v0

    .line 89
    .local v0, "ns":J
    const-wide/32 v2, 0xf4240

    div-long v2, v0, v2

    .line 92
    .local v2, "millis":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 93
    const/4 v4, 0x1

    return v4

    .line 95
    :cond_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 101
    long-to-int v4, v2

    return v4

    .line 96
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duration argument may not be greater than Integer.MAX_VALUE milliseconds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static parseDurationNS(Ljava/lang/String;)J
    .locals 9
    .param p0, "property"    # Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/StringTokenizer;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 114
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " \t"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v0, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 126
    .local v1, "time":J
    nop

    .line 129
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "unitName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_0

    .line 137
    :try_start_1
    invoke-static {v3}, Ljava/util/concurrent/TimeUnit;->valueOf(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object v4

    .line 138
    .local v4, "unit":Ljava/util/concurrent/TimeUnit;
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v1, v2, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v4, v5

    .line 148
    .local v4, "ns":J
    goto :goto_0

    .line 139
    .end local v4    # "ns":J
    :catch_0
    move-exception v4

    .line 141
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-static {v3}, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;->valueOf(Ljava/lang/String;)Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

    move-result-object v5

    .line 142
    .local v5, "unit":Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;
    invoke-virtual {v5, v1, v2}, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;->toNanos(J)J

    move-result-wide v6
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-wide v5, v6

    .line 147
    .local v5, "ns":J
    move-wide v4, v5

    .line 149
    .end local v3    # "unitName":Ljava/lang/String;
    .end local v5    # "ns":J
    .local v4, "ns":J
    :goto_0
    goto :goto_1

    .line 143
    .restart local v3    # "unitName":Ljava/lang/String;
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v5

    .line 144
    .local v5, "e2":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duration argument has unknown unit name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 132
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "e2":Ljava/lang/IllegalArgumentException;
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duration argument has extra characters after unit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 151
    .end local v3    # "unitName":Ljava/lang/String;
    :cond_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 154
    .local v4, "ns":J
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v3, v1, v6

    if-lez v3, :cond_2

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 155
    const-wide/16 v6, 0x1

    return-wide v6

    .line 157
    :cond_2
    return-wide v4

    .line 122
    .end local v1    # "time":J
    .end local v4    # "ns":J
    :catch_2
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duration argument does not start with a long integer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Duration argument is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
