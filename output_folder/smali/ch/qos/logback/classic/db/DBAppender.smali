.class public Lch/qos/logback/classic/db/DBAppender;
.super Lch/qos/logback/core/db/DBAppenderBase;
.source "DBAppender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/db/DBAppenderBase<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# static fields
.field static final ARG0_INDEX:I = 0x7

.field static final ARG1_INDEX:I = 0x8

.field static final ARG2_INDEX:I = 0x9

.field static final ARG3_INDEX:I = 0xa

.field static final CALLER_CLASS_INDEX:I = 0xc

.field static final CALLER_FILENAME_INDEX:I = 0xb

.field static final CALLER_LINE_INDEX:I = 0xe

.field static final CALLER_METHOD_INDEX:I = 0xd

.field static final EMPTY_CALLER_DATA:Ljava/lang/StackTraceElement;

.field static final EVENT_ID_INDEX:I = 0xf

.field static final FORMATTED_MESSAGE_INDEX:I = 0x2

.field protected static final GET_GENERATED_KEYS_METHOD:Ljava/lang/reflect/Method;

.field static final LEVEL_STRING_INDEX:I = 0x4

.field static final LOGGER_NAME_INDEX:I = 0x3

.field static final REFERENCE_FLAG_INDEX:I = 0x6

.field static final THREAD_NAME_INDEX:I = 0x5

.field static final TIMESTMP_INDEX:I = 0x1


# instance fields
.field private dbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

.field protected insertExceptionSQL:Ljava/lang/String;

.field protected insertPropertiesSQL:Ljava/lang/String;

.field protected insertSQL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 67
    invoke-static {}, Lch/qos/logback/classic/spi/CallerData;->naInstance()Ljava/lang/StackTraceElement;

    move-result-object v0

    sput-object v0, Lch/qos/logback/classic/db/DBAppender;->EMPTY_CALLER_DATA:Ljava/lang/StackTraceElement;

    .line 74
    :try_start_0
    const-class v0, Ljava/sql/PreparedStatement;

    const-string v1, "getGeneratedKeys"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .local v0, "getGeneratedKeysMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 75
    .end local v0    # "getGeneratedKeysMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    move-object v0, v1

    .line 78
    .local v0, "getGeneratedKeysMethod":Ljava/lang/reflect/Method;
    :goto_0
    sput-object v0, Lch/qos/logback/classic/db/DBAppender;->GET_GENERATED_KEYS_METHOD:Ljava/lang/reflect/Method;

    .line 79
    .end local v0    # "getGeneratedKeysMethod":Ljava/lang/reflect/Method;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lch/qos/logback/core/db/DBAppenderBase;-><init>()V

    return-void
.end method

.method private extractFirstCaller([Ljava/lang/StackTraceElement;)Ljava/lang/StackTraceElement;
    .locals 2
    .param p1, "callerDataArray"    # [Ljava/lang/StackTraceElement;

    .line 169
    sget-object v0, Lch/qos/logback/classic/db/DBAppender;->EMPTY_CALLER_DATA:Ljava/lang/StackTraceElement;

    .line 170
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-direct {p0, p1}, Lch/qos/logback/classic/db/DBAppender;->hasAtLeastOneNonNullElement([Ljava/lang/StackTraceElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 172
    :cond_0
    return-object v0
.end method

.method private hasAtLeastOneNonNullElement([Ljava/lang/StackTraceElement;)Z
    .locals 2
    .param p1, "callerDataArray"    # [Ljava/lang/StackTraceElement;

    .line 176
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method asStringTruncatedTo254(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "s":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_0
    if-nez v0, :cond_1

    .line 149
    const/4 v1, 0x0

    return-object v1

    .line 151
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xfe

    if-gt v1, v2, :cond_2

    .line 152
    return-object v0

    .line 154
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method bindCallerDataWithPreparedStatement(Ljava/sql/PreparedStatement;[Ljava/lang/StackTraceElement;)V
    .locals 3
    .param p1, "stmt"    # Ljava/sql/PreparedStatement;
    .param p2, "callerDataArray"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 160
    invoke-direct {p0, p2}, Lch/qos/logback/classic/db/DBAppender;->extractFirstCaller([Ljava/lang/StackTraceElement;)Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 162
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 166
    return-void
.end method

.method bindLoggingEventArgumentsWithPreparedStatement(Ljava/sql/PreparedStatement;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "stmt"    # Ljava/sql/PreparedStatement;
    .param p2, "argArray"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 130
    if-eqz p2, :cond_0

    array-length v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    .local v0, "arrayLen":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x4

    if-ge v1, v0, :cond_1

    if-ge v1, v2, :cond_1

    .line 133
    add-int/lit8 v2, v1, 0x7

    aget-object v3, p2, v1

    invoke-virtual {p0, v3}, Lch/qos/logback/classic/db/DBAppender;->asStringTruncatedTo254(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    .end local v1    # "i":I
    :cond_1
    if-ge v0, v2, :cond_2

    .line 136
    move v1, v0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 137
    add-int/lit8 v3, v1, 0x7

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 140
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method bindLoggingEventWithInsertStatement(Ljava/sql/PreparedStatement;Lch/qos/logback/classic/spi/ILoggingEvent;)V
    .locals 3
    .param p1, "stmt"    # Ljava/sql/PreparedStatement;
    .param p2, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 120
    invoke-interface {p2}, Lch/qos/logback/classic/spi/ILoggingEvent;->getTimeStamp()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 121
    invoke-interface {p2}, Lch/qos/logback/classic/spi/ILoggingEvent;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 122
    invoke-interface {p2}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 123
    invoke-interface {p2}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v0

    invoke-virtual {v0}, Lch/qos/logback/classic/Level;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 124
    invoke-interface {p2}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 125
    invoke-static {p2}, Lch/qos/logback/classic/db/DBHelper;->computeReferenceMask(Lch/qos/logback/classic/spi/ILoggingEvent;)S

    move-result v0

    const/4 v1, 0x6

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setShort(IS)V

    .line 126
    return-void
.end method

.method buildExceptionStatement(Lch/qos/logback/classic/spi/IThrowableProxy;SLjava/sql/PreparedStatement;J)S
    .locals 13
    .param p1, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;
    .param p2, "baseIndex"    # S
    .param p3, "insertExceptionStatement"    # Ljava/sql/PreparedStatement;
    .param p4, "eventId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v0, "buf":Ljava/lang/StringBuilder;
    move-object v1, p1

    invoke-static {v0, p1}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->subjoinFirstLine(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, p2, 0x1

    int-to-short v8, v2

    .end local p2    # "baseIndex":S
    .local v8, "baseIndex":S
    move-object v2, p0

    move-object/from16 v3, p3

    move v5, p2

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lch/qos/logback/classic/db/DBAppender;->updateExceptionStatement(Ljava/sql/PreparedStatement;Ljava/lang/String;SJ)V

    .line 257
    invoke-interface {p1}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCommonFrames()I

    move-result v2

    .line 258
    .local v2, "commonFrames":I
    invoke-interface {p1}, Lch/qos/logback/classic/spi/IThrowableProxy;->getStackTraceElementProxyArray()[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    move-result-object v3

    .line 259
    .local v3, "stepArray":[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    sub-int/2addr v5, v2

    const/16 v6, 0x9

    if-ge v4, v5, :cond_0

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v5

    .line 261
    .local v11, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    aget-object v5, v3, v4

    invoke-static {v11, v5}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->subjoinSTEP(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/StackTraceElementProxy;)V

    .line 263
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v5, v8, 0x1

    int-to-short v12, v5

    .end local v8    # "baseIndex":S
    .local v12, "baseIndex":S
    move-object v5, p0

    move-object/from16 v6, p3

    move-wide/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lch/qos/logback/classic/db/DBAppender;->updateExceptionStatement(Ljava/sql/PreparedStatement;Ljava/lang/String;SJ)V

    .line 259
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v4, v4, 0x1

    move v8, v12

    goto :goto_0

    .line 266
    .end local v4    # "i":I
    .end local v12    # "baseIndex":S
    .restart local v8    # "baseIndex":S
    :cond_0
    if-lez v2, :cond_1

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " common frames omitted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v5, v8, 0x1

    int-to-short v11, v5

    .end local v8    # "baseIndex":S
    .local v11, "baseIndex":S
    move-object v5, p0

    move-object/from16 v6, p3

    move-wide/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lch/qos/logback/classic/db/DBAppender;->updateExceptionStatement(Ljava/sql/PreparedStatement;Ljava/lang/String;SJ)V

    move v8, v11

    .line 272
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "baseIndex":S
    .restart local v8    # "baseIndex":S
    :cond_1
    return v8
.end method

.method protected getGeneratedKeysMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 198
    sget-object v0, Lch/qos/logback/classic/db/DBAppender;->GET_GENERATED_KEYS_METHOD:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method protected getInsertSQL()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lch/qos/logback/classic/db/DBAppender;->insertSQL:Ljava/lang/String;

    return-object v0
.end method

.method protected insertProperties(Ljava/util/Map;Ljava/sql/Connection;J)V
    .locals 6
    .param p2, "connection"    # Ljava/sql/Connection;
    .param p3, "eventId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/sql/Connection;",
            "J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 207
    .local p1, "mergedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 208
    .local v0, "propertiesKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 209
    const/4 v1, 0x0

    .line 211
    .local v1, "insertPropertiesStatement":Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v2, p0, Lch/qos/logback/classic/db/DBAppender;->insertPropertiesSQL:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    move-object v1, v2

    .line 213
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 214
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 216
    .local v4, "value":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v1, v5, p3, p4}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 217
    const/4 v5, 0x2

    invoke-interface {v1, v5, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 218
    const/4 v5, 0x3

    invoke-interface {v1, v5, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 220
    iget-boolean v5, p0, Lch/qos/logback/classic/db/DBAppender;->cnxSupportsBatchUpdates:Z

    if-eqz v5, :cond_0

    .line 221
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->addBatch()V

    goto :goto_1

    .line 223
    :cond_0
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->execute()Z

    .line 225
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 227
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-boolean v2, p0, Lch/qos/logback/classic/db/DBAppender;->cnxSupportsBatchUpdates:Z

    if-eqz v2, :cond_2

    .line 228
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeBatch()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_2
    invoke-static {v1}, Lch/qos/logback/core/db/DBHelper;->closeStatement(Ljava/sql/Statement;)V

    .line 232
    goto :goto_2

    .line 231
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lch/qos/logback/core/db/DBHelper;->closeStatement(Ljava/sql/Statement;)V

    throw v2

    .line 234
    .end local v1    # "insertPropertiesStatement":Ljava/sql/PreparedStatement;
    :cond_3
    :goto_2
    return-void
.end method

.method protected insertThrowable(Lch/qos/logback/classic/spi/IThrowableProxy;Ljava/sql/Connection;J)V
    .locals 8
    .param p1, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;
    .param p2, "connection"    # Ljava/sql/Connection;
    .param p3, "eventId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, "exceptionStatement":Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v1, p0, Lch/qos/logback/classic/db/DBAppender;->insertExceptionSQL:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 281
    .end local v0    # "exceptionStatement":Ljava/sql/PreparedStatement;
    .local v5, "exceptionStatement":Ljava/sql/PreparedStatement;
    const/4 v0, 0x0

    .line 282
    .local v0, "baseIndex":S
    :goto_0
    if-eqz p1, :cond_0

    .line 283
    move-object v2, p0

    move-object v3, p1

    move v4, v0

    move-wide v6, p3

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lch/qos/logback/classic/db/DBAppender;->buildExceptionStatement(Lch/qos/logback/classic/spi/IThrowableProxy;SLjava/sql/PreparedStatement;J)S

    move-result v1

    move v0, v1

    .line 284
    invoke-interface {p1}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCause()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v1

    move-object p1, v1

    goto :goto_0

    .line 287
    :cond_0
    iget-boolean v1, p0, Lch/qos/logback/classic/db/DBAppender;->cnxSupportsBatchUpdates:Z

    if-eqz v1, :cond_1

    .line 288
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->executeBatch()[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    .end local v0    # "baseIndex":S
    :cond_1
    invoke-static {v5}, Lch/qos/logback/core/db/DBHelper;->closeStatement(Ljava/sql/Statement;)V

    .line 292
    nop

    .line 294
    return-void

    .line 291
    :catchall_0
    move-exception v0

    goto :goto_1

    .end local v5    # "exceptionStatement":Ljava/sql/PreparedStatement;
    .local v0, "exceptionStatement":Ljava/sql/PreparedStatement;
    :catchall_1
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    .end local v0    # "exceptionStatement":Ljava/sql/PreparedStatement;
    .restart local v5    # "exceptionStatement":Ljava/sql/PreparedStatement;
    :goto_1
    invoke-static {v5}, Lch/qos/logback/core/db/DBHelper;->closeStatement(Ljava/sql/Statement;)V

    throw v0
.end method

.method mergePropertyMaps(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/util/Map;
    .locals 3
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v0, "mergedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerContextVO()Lch/qos/logback/classic/spi/LoggerContextVO;

    move-result-object v1

    invoke-virtual {v1}, Lch/qos/logback/classic/spi/LoggerContextVO;->getPropertyMap()Ljava/util/Map;

    move-result-object v1

    .line 185
    .local v1, "loggerContextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMDCPropertyMap()Ljava/util/Map;

    move-result-object v2

    .line 186
    .local v2, "mdcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 187
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 189
    :cond_0
    if-eqz v2, :cond_1

    .line 190
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 193
    :cond_1
    return-object v0
.end method

.method protected secondarySubAppend(Lch/qos/logback/classic/spi/ILoggingEvent;Ljava/sql/Connection;J)V
    .locals 2
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;
    .param p2, "connection"    # Ljava/sql/Connection;
    .param p3, "eventId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lch/qos/logback/classic/db/DBAppender;->mergePropertyMaps(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/util/Map;

    move-result-object v0

    .line 112
    .local v0, "mergedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v0, p2, p3, p4}, Lch/qos/logback/classic/db/DBAppender;->insertProperties(Ljava/util/Map;Ljava/sql/Connection;J)V

    .line 114
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3, p4}, Lch/qos/logback/classic/db/DBAppender;->insertThrowable(Lch/qos/logback/classic/spi/IThrowableProxy;Ljava/sql/Connection;J)V

    .line 117
    :cond_0
    return-void
.end method

.method protected bridge synthetic secondarySubAppend(Ljava/lang/Object;Ljava/sql/Connection;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1, p2, p3, p4}, Lch/qos/logback/classic/db/DBAppender;->secondarySubAppend(Lch/qos/logback/classic/spi/ILoggingEvent;Ljava/sql/Connection;J)V

    return-void
.end method

.method public setDbNameResolver(Lch/qos/logback/classic/db/names/DBNameResolver;)V
    .locals 0
    .param p1, "dbNameResolver"    # Lch/qos/logback/classic/db/names/DBNameResolver;

    .line 82
    iput-object p1, p0, Lch/qos/logback/classic/db/DBAppender;->dbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    .line 83
    return-void
.end method

.method public start()V
    .locals 1

    .line 87
    iget-object v0, p0, Lch/qos/logback/classic/db/DBAppender;->dbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;

    invoke-direct {v0}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/db/DBAppender;->dbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    .line 89
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/db/DBAppender;->dbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    invoke-static {v0}, Lch/qos/logback/classic/db/SQLBuilder;->buildInsertExceptionSQL(Lch/qos/logback/classic/db/names/DBNameResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/db/DBAppender;->insertExceptionSQL:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lch/qos/logback/classic/db/DBAppender;->dbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    invoke-static {v0}, Lch/qos/logback/classic/db/SQLBuilder;->buildInsertPropertiesSQL(Lch/qos/logback/classic/db/names/DBNameResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/db/DBAppender;->insertPropertiesSQL:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lch/qos/logback/classic/db/DBAppender;->dbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    invoke-static {v0}, Lch/qos/logback/classic/db/SQLBuilder;->buildInsertSQL(Lch/qos/logback/classic/db/names/DBNameResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/db/DBAppender;->insertSQL:Ljava/lang/String;

    .line 92
    invoke-super {p0}, Lch/qos/logback/core/db/DBAppenderBase;->start()V

    .line 93
    return-void
.end method

.method protected subAppend(Lch/qos/logback/classic/spi/ILoggingEvent;Ljava/sql/Connection;Ljava/sql/PreparedStatement;)V
    .locals 2
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;
    .param p2, "connection"    # Ljava/sql/Connection;
    .param p3, "insertStatement"    # Ljava/sql/PreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p3, p1}, Lch/qos/logback/classic/db/DBAppender;->bindLoggingEventWithInsertStatement(Ljava/sql/PreparedStatement;Lch/qos/logback/classic/spi/ILoggingEvent;)V

    .line 99
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getArgumentArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lch/qos/logback/classic/db/DBAppender;->bindLoggingEventArgumentsWithPreparedStatement(Ljava/sql/PreparedStatement;[Ljava/lang/Object;)V

    .line 102
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getCallerData()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lch/qos/logback/classic/db/DBAppender;->bindCallerDataWithPreparedStatement(Ljava/sql/PreparedStatement;[Ljava/lang/StackTraceElement;)V

    .line 104
    invoke-interface {p3}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0

    .line 105
    .local v0, "updateCount":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 106
    const-string v1, "Failed to insert loggingEvent"

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/db/DBAppender;->addWarn(Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method

.method protected bridge synthetic subAppend(Ljava/lang/Object;Ljava/sql/Connection;Ljava/sql/PreparedStatement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1, p2, p3}, Lch/qos/logback/classic/db/DBAppender;->subAppend(Lch/qos/logback/classic/spi/ILoggingEvent;Ljava/sql/Connection;Ljava/sql/PreparedStatement;)V

    return-void
.end method

.method updateExceptionStatement(Ljava/sql/PreparedStatement;Ljava/lang/String;SJ)V
    .locals 1
    .param p1, "exceptionStatement"    # Ljava/sql/PreparedStatement;
    .param p2, "txt"    # Ljava/lang/String;
    .param p3, "i"    # S
    .param p4, "eventId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x1

    invoke-interface {p1, v0, p4, p5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 242
    const/4 v0, 0x2

    invoke-interface {p1, v0, p3}, Ljava/sql/PreparedStatement;->setShort(IS)V

    .line 243
    const/4 v0, 0x3

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 244
    iget-boolean v0, p0, Lch/qos/logback/classic/db/DBAppender;->cnxSupportsBatchUpdates:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->addBatch()V

    goto :goto_0

    .line 247
    :cond_0
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->execute()Z

    .line 249
    :goto_0
    return-void
.end method
