.class public Lcom/sleepycat/je/utilint/DbLsn;
.super Ljava/lang/Object;
.source "DbLsn.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final INT_MASK:J = 0xffffffffL

.field public static final MAX_FILE_NUM:J = 0xffffffffL

.field public static final MAX_FILE_OFFSET:J = 0xffffffffL

.field public static final NULL_LSN:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static calcDiff(JJJJ)J
    .locals 4
    .param p0, "fileDistance"    # J
    .param p2, "logFileSize"    # J
    .param p4, "laterLsn"    # J
    .param p6, "earlierLsn"    # J

    .line 233
    mul-long v0, p0, p2

    .line 234
    .local v0, "diff":J
    invoke-static {p4, p5}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 235
    invoke-static {p6, p7}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 236
    return-wide v0
.end method

.method private static compareLong(JJ)I
    .locals 1
    .param p0, "l1"    # J
    .param p2, "l2"    # J

    .line 117
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 118
    const/4 v0, -0x1

    return v0

    .line 119
    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    .line 120
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static compareTo(JJ)I
    .locals 8
    .param p0, "lsn1"    # J
    .param p2, "lsn2"    # J

    .line 127
    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 134
    invoke-static {p0, p1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    .line 135
    .local v0, "fileNumber1":J
    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v2

    .line 136
    .local v2, "fileNumber2":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 137
    invoke-static {p0, p1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v4

    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/sleepycat/je/utilint/DbLsn;->compareLong(JJ)I

    move-result v4

    return v4

    .line 139
    :cond_0
    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->compareLong(JJ)I

    move-result v4

    return v4

    .line 129
    .end local v0    # "fileNumber1":J
    .end local v2    # "fileNumber2":J
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NULL_LSN lsn1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    invoke-static {p0, p1}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lsn2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    invoke-static {p2, p3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public static convertIntFileOffsetToLong(I)J
    .locals 4
    .param p0, "storedLsn"    # I

    .line 113
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static dumpString(JI)Ljava/lang/String;
    .locals 2
    .param p0, "lsn"    # J
    .param p2, "nSpaces"    # I

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p2}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {p0, p1}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFileNumber(J)J
    .locals 4
    .param p0, "lsn"    # J

    .line 90
    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static getFileOffset(J)J
    .locals 2
    .param p0, "lsn"    # J

    .line 98
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    return-wide v0
.end method

.method public static getFileOffsetAsInt(J)I
    .locals 2
    .param p0, "lsn"    # J

    .line 109
    invoke-static {p0, p1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getNoCleaningDistance(JJJ)J
    .locals 16
    .param p0, "thisLsn"    # J
    .param p2, "otherLsn"    # J
    .param p4, "logFileSize"    # J

    .line 170
    const-wide/16 v0, 0x0

    .line 172
    .local v0, "diff":J
    const-wide/16 v2, -0x1

    cmp-long v4, p0, v2

    if-eqz v4, :cond_3

    .line 174
    invoke-static/range {p0 .. p1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v12

    .line 175
    .local v12, "myFile":J
    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 176
    const-wide/16 v2, 0x0

    .end local p2    # "otherLsn":J
    .local v2, "otherLsn":J
    goto :goto_0

    .line 175
    .end local v2    # "otherLsn":J
    .restart local p2    # "otherLsn":J
    :cond_0
    move-wide/from16 v2, p2

    .line 178
    .end local p2    # "otherLsn":J
    .restart local v2    # "otherLsn":J
    :goto_0
    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v14

    .line 179
    .local v14, "otherFile":J
    cmp-long v4, v12, v14

    if-nez v4, :cond_1

    .line 180
    invoke-static/range {p0 .. p1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v4

    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    goto :goto_1

    .line 181
    :cond_1
    cmp-long v4, v12, v14

    if-lez v4, :cond_2

    .line 182
    sub-long v4, v12, v14

    move-wide/from16 v6, p4

    move-wide/from16 v8, p0

    move-wide v10, v2

    invoke-static/range {v4 .. v11}, Lcom/sleepycat/je/utilint/DbLsn;->calcDiff(JJJJ)J

    move-result-wide v0

    goto :goto_1

    .line 185
    :cond_2
    sub-long v4, v14, v12

    move-wide/from16 v6, p4

    move-wide v8, v2

    move-wide/from16 v10, p0

    invoke-static/range {v4 .. v11}, Lcom/sleepycat/je/utilint/DbLsn;->calcDiff(JJJJ)J

    move-result-wide v0

    .line 188
    :goto_1
    return-wide v0

    .line 172
    .end local v2    # "otherLsn":J
    .end local v12    # "myFile":J
    .end local v14    # "otherFile":J
    .restart local p2    # "otherLsn":J
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public static getNoFormatString(J)Ljava/lang/String;
    .locals 3
    .param p0, "lsn"    # J

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    invoke-static {p0, p1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    return-object v0
.end method

.method public static getTrueDistance(JJLcom/sleepycat/je/log/FileManager;)J
    .locals 18
    .param p0, "thisLsn"    # J
    .param p2, "otherLsn"    # J
    .param p4, "fileManager"    # Lcom/sleepycat/je/log/FileManager;

    .line 252
    invoke-static/range {p0 .. p3}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-gez v0, :cond_0

    .line 253
    move-wide/from16 v0, p0

    .line 254
    .local v0, "lsn1":J
    move-wide/from16 v2, p2

    .local v2, "lsn2":J
    goto :goto_0

    .line 256
    .end local v0    # "lsn1":J
    .end local v2    # "lsn2":J
    :cond_0
    move-wide/from16 v0, p2

    .line 257
    .restart local v0    # "lsn1":J
    move-wide/from16 v2, p0

    .line 260
    .restart local v2    # "lsn2":J
    :goto_0
    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v4

    .line 261
    .local v4, "file1":J
    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v6

    .line 263
    .local v6, "file2":J
    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v8

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 265
    .local v8, "dist":J
    cmp-long v10, v4, v6

    if-nez v10, :cond_1

    .line 266
    return-wide v8

    .line 269
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/log/FileManager;->getAllFileNumbers()[Ljava/lang/Long;

    move-result-object v10

    .line 271
    .local v10, "fileNums":[Ljava/lang/Long;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    .line 272
    .local v11, "idx1":I
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v10, v12}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    .line 278
    .local v12, "idx2":I
    move v13, v11

    .local v13, "i":I
    :goto_1
    if-ge v13, v12, :cond_2

    .line 279
    aget-object v14, v10, v13

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-wide/from16 v16, v0

    move-object/from16 v0, p4

    .end local v0    # "lsn1":J
    .local v16, "lsn1":J
    invoke-virtual {v0, v14, v15}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(J)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "path":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v14

    add-long/2addr v8, v14

    .line 278
    .end local v1    # "path":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v0, v16

    goto :goto_1

    .line 283
    .end local v13    # "i":I
    .end local v16    # "lsn1":J
    .restart local v0    # "lsn1":J
    :cond_2
    return-wide v8
.end method

.method public static getWithCleaningDistance(JJJLcom/sleepycat/je/log/FileManager;)J
    .locals 19
    .param p0, "thisLsn"    # J
    .param p2, "otherLsn"    # J
    .param p4, "logFileSize"    # J
    .param p6, "fileManager"    # Lcom/sleepycat/je/log/FileManager;

    .line 200
    const-wide/16 v0, 0x0

    .line 202
    .local v0, "diff":J
    const-wide/16 v2, -0x1

    cmp-long v4, p0, v2

    if-eqz v4, :cond_3

    .line 204
    invoke-static/range {p0 .. p1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v12

    .line 205
    .local v12, "myFile":J
    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 206
    const-wide/16 v2, 0x0

    .end local p2    # "otherLsn":J
    .local v2, "otherLsn":J
    goto :goto_0

    .line 205
    .end local v2    # "otherLsn":J
    .restart local p2    # "otherLsn":J
    :cond_0
    move-wide/from16 v2, p2

    .line 208
    .end local p2    # "otherLsn":J
    .restart local v2    # "otherLsn":J
    :goto_0
    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v14

    .line 209
    .local v14, "otherFile":J
    cmp-long v4, v12, v14

    if-nez v4, :cond_1

    .line 210
    invoke-static/range {p0 .. p1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v4

    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/je/log/FileManager;->getAllFileNumbers()[Ljava/lang/Long;

    move-result-object v10

    .line 214
    .local v10, "fileNums":[Ljava/lang/Long;
    nop

    .line 215
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 214
    invoke-static {v10, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    .line 216
    .local v11, "myFileIdx":I
    nop

    .line 217
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v10, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 218
    .local v8, "otherFileIdx":I
    if-le v11, v8, :cond_2

    .line 219
    sub-int v4, v11, v8

    int-to-long v4, v4

    move-wide/from16 v6, p4

    move/from16 v16, v8

    .end local v8    # "otherFileIdx":I
    .local v16, "otherFileIdx":I
    move-wide/from16 v8, p0

    move-object/from16 v17, v10

    move/from16 v18, v11

    .end local v10    # "fileNums":[Ljava/lang/Long;
    .end local v11    # "myFileIdx":I
    .local v17, "fileNums":[Ljava/lang/Long;
    .local v18, "myFileIdx":I
    move-wide v10, v2

    invoke-static/range {v4 .. v11}, Lcom/sleepycat/je/utilint/DbLsn;->calcDiff(JJJJ)J

    move-result-wide v0

    goto :goto_1

    .line 222
    .end local v16    # "otherFileIdx":I
    .end local v17    # "fileNums":[Ljava/lang/Long;
    .end local v18    # "myFileIdx":I
    .restart local v8    # "otherFileIdx":I
    .restart local v10    # "fileNums":[Ljava/lang/Long;
    .restart local v11    # "myFileIdx":I
    :cond_2
    move/from16 v16, v8

    move-object/from16 v17, v10

    move/from16 v18, v11

    .end local v8    # "otherFileIdx":I
    .end local v10    # "fileNums":[Ljava/lang/Long;
    .end local v11    # "myFileIdx":I
    .restart local v16    # "otherFileIdx":I
    .restart local v17    # "fileNums":[Ljava/lang/Long;
    .restart local v18    # "myFileIdx":I
    sub-int v8, v16, v18

    int-to-long v4, v8

    move-wide/from16 v6, p4

    move-wide v8, v2

    move-wide/from16 v10, p0

    invoke-static/range {v4 .. v11}, Lcom/sleepycat/je/utilint/DbLsn;->calcDiff(JJJJ)J

    move-result-wide v0

    .line 226
    .end local v16    # "otherFileIdx":I
    .end local v17    # "fileNums":[Ljava/lang/Long;
    .end local v18    # "myFileIdx":I
    :goto_1
    return-wide v0

    .line 202
    .end local v2    # "otherLsn":J
    .end local v12    # "myFile":J
    .end local v14    # "otherFile":J
    .restart local p2    # "otherLsn":J
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public static isTransient(J)Z
    .locals 4
    .param p0, "lsn"    # J

    .line 70
    invoke-static {p0, p1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTransientOrNull(J)Z
    .locals 2
    .param p0, "lsn"    # J

    .line 74
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/sleepycat/je/utilint/DbLsn;->isTransient(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static longToLsn(Ljava/lang/Long;)J
    .locals 2
    .param p0, "lsn"    # Ljava/lang/Long;

    .line 78
    if-nez p0, :cond_0

    .line 79
    const-wide/16 v0, -0x1

    return-wide v0

    .line 82
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static makeLsn(JI)J
    .locals 5
    .param p0, "fileNumber"    # J
    .param p2, "fileOffset"    # I

    .line 54
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long/2addr v2, p0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static makeLsn(JJ)J
    .locals 5
    .param p0, "fileNumber"    # J
    .param p2, "fileOffset"    # J

    .line 45
    const-wide v0, 0xffffffffL

    and-long v2, p2, v0

    and-long/2addr v0, p0

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static makeTransientLsn(J)J
    .locals 2
    .param p0, "fileOffset"    # J

    .line 63
    const-wide v0, 0xffffffffL

    invoke-static {v0, v1, p0, p1}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 3
    .param p0, "lsn"    # J

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<DbLsn val=\"0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    invoke-static {p0, p1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    invoke-static {p0, p1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    return-object v0
.end method
