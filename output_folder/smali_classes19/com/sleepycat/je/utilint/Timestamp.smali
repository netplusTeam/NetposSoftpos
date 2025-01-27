.class public Lcom/sleepycat/je/utilint/Timestamp;
.super Ljava/util/Date;
.source "Timestamp.java"


# static fields
.field static final serialVersionUID:J = 0x2618d5c80153bf65L


# instance fields
.field private nanos:I


# direct methods
.method public constructor <init>(J)V
    .locals 6
    .param p1, "time"    # J

    .line 28
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    mul-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 29
    rem-long v2, p1, v0

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/sleepycat/je/utilint/Timestamp;->nanos:I

    .line 30
    if-gez v2, :cond_0

    .line 31
    const v3, 0x3b9aca00

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sleepycat/je/utilint/Timestamp;->nanos:I

    .line 32
    div-long v2, p1, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    mul-long/2addr v2, v0

    invoke-super {p0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Lcom/sleepycat/je/utilint/Timestamp;)Z
    .locals 3
    .param p1, "ts"    # Lcom/sleepycat/je/utilint/Timestamp;

    .line 139
    invoke-super {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 140
    iget v0, p0, Lcom/sleepycat/je/utilint/Timestamp;->nanos:I

    iget v2, p1, Lcom/sleepycat/je/utilint/Timestamp;->nanos:I

    if-ne v0, v2, :cond_0

    .line 141
    const/4 v0, 0x1

    return v0

    .line 143
    :cond_0
    return v1

    .line 146
    :cond_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "ts"    # Ljava/lang/Object;

    .line 151
    instance-of v0, p1, Lcom/sleepycat/je/utilint/Timestamp;

    if-eqz v0, :cond_0

    .line 152
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/utilint/Timestamp;->equals(Lcom/sleepycat/je/utilint/Timestamp;)Z

    move-result v0

    return v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTime()J
    .locals 4

    .line 37
    invoke-super {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 38
    .local v0, "time":J
    iget v2, p0, Lcom/sleepycat/je/utilint/Timestamp;->nanos:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 21

    .line 43
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    .line 44
    .local v0, "year":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 45
    .local v1, "month":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getDate()I

    move-result v2

    .line 46
    .local v2, "day":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getHours()I

    move-result v3

    .line 47
    .local v3, "hour":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    .line 48
    .local v4, "minute":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getSeconds()I

    move-result v5

    .line 56
    .local v5, "second":I
    const-string v6, "000000000"

    .line 57
    .local v6, "zeros":Ljava/lang/String;
    const-string v7, "0000"

    .line 60
    .local v7, "yearZeros":Ljava/lang/String;
    const-string v8, ""

    const/4 v9, 0x0

    const/16 v10, 0x3e8

    if-ge v0, v10, :cond_0

    .line 62
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, "yearString":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    rsub-int/lit8 v11, v11, 0x4

    invoke-virtual {v7, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 66
    .end local v8    # "yearString":Ljava/lang/String;
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 69
    .restart local v8    # "yearString":Ljava/lang/String;
    :goto_0
    const-string v10, "0"

    const/16 v11, 0xa

    if-ge v1, v11, :cond_1

    .line 70
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "monthString":Ljava/lang/String;
    goto :goto_1

    .line 72
    .end local v12    # "monthString":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 75
    .restart local v12    # "monthString":Ljava/lang/String;
    :goto_1
    if-ge v2, v11, :cond_2

    .line 76
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .local v13, "dayString":Ljava/lang/String;
    goto :goto_2

    .line 78
    .end local v13    # "dayString":Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 81
    .restart local v13    # "dayString":Ljava/lang/String;
    :goto_2
    if-ge v3, v11, :cond_3

    .line 82
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .local v14, "hourString":Ljava/lang/String;
    goto :goto_3

    .line 84
    .end local v14    # "hourString":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 87
    .restart local v14    # "hourString":Ljava/lang/String;
    :goto_3
    if-ge v4, v11, :cond_4

    .line 88
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .local v15, "minuteString":Ljava/lang/String;
    goto :goto_4

    .line 90
    .end local v15    # "minuteString":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 93
    .restart local v15    # "minuteString":Ljava/lang/String;
    :goto_4
    if-ge v5, v11, :cond_5

    .line 94
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "secondString":Ljava/lang/String;
    goto :goto_5

    .line 96
    .end local v10    # "secondString":Ljava/lang/String;
    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 99
    .restart local v10    # "secondString":Ljava/lang/String;
    :goto_5
    move-object/from16 v11, p0

    iget v9, v11, Lcom/sleepycat/je/utilint/Timestamp;->nanos:I

    if-nez v9, :cond_6

    .line 100
    const-string v9, "0"

    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v17, v2

    .local v9, "nanosString":Ljava/lang/String;
    goto :goto_7

    .line 102
    .end local v9    # "nanosString":Ljava/lang/String;
    :cond_6
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 105
    .restart local v9    # "nanosString":Ljava/lang/String;
    move/from16 v16, v0

    .end local v0    # "year":I
    .local v16, "year":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v18, v1

    .end local v1    # "month":I
    .local v18, "month":I
    rsub-int/lit8 v1, v17, 0x9

    move/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "day":I
    .local v17, "day":I
    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .end local v9    # "nanosString":Ljava/lang/String;
    .local v0, "nanosString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    .line 110
    .local v1, "nanosChar":[C
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, v2, v9, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 111
    const/16 v2, 0x8

    .line 112
    .local v2, "truncIndex":I
    :goto_6
    aget-char v9, v1, v2

    move-object/from16 v19, v0

    .end local v0    # "nanosString":Ljava/lang/String;
    .local v19, "nanosString":Ljava/lang/String;
    const/16 v0, 0x30

    if-ne v9, v0, :cond_7

    .line 113
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v19

    goto :goto_6

    .line 116
    :cond_7
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v9, v2, 0x1

    move/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "truncIndex":I
    .local v20, "truncIndex":I
    invoke-direct {v0, v1, v2, v9}, Ljava/lang/String;-><init>([CII)V

    move-object v9, v0

    .line 120
    .end local v1    # "nanosChar":[C
    .end local v19    # "nanosString":Ljava/lang/String;
    .end local v20    # "truncIndex":I
    .restart local v9    # "nanosString":Ljava/lang/String;
    :goto_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 121
    .local v0, "timestampBuf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
