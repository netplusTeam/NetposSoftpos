.class public Lch/qos/logback/classic/spi/LoggingEventVO;
.super Ljava/lang/Object;
.source "LoggingEventVO.java"

# interfaces
.implements Lch/qos/logback/classic/spi/ILoggingEvent;
.implements Ljava/io/Serializable;


# static fields
.field private static final NULL_ARGUMENT_ARRAY:I = -0x1

.field private static final NULL_ARGUMENT_ARRAY_ELEMENT:Ljava/lang/String; = "NULL_ARGUMENT_ARRAY_ELEMENT"

.field private static final serialVersionUID:J = 0x5af38006fcec0a48L


# instance fields
.field private transient argumentArray:[Ljava/lang/Object;

.field private callerDataArray:[Ljava/lang/StackTraceElement;

.field private transient formattedMessage:Ljava/lang/String;

.field private transient level:Lch/qos/logback/classic/Level;

.field private loggerContextVO:Lch/qos/logback/classic/spi/LoggerContextVO;

.field private loggerName:Ljava/lang/String;

.field private marker:Lorg/slf4j/Marker;

.field private mdcPropertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private threadName:Ljava/lang/String;

.field private throwableProxy:Lch/qos/logback/classic/spi/ThrowableProxyVO;

.field private timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lch/qos/logback/classic/spi/ILoggingEvent;)Lch/qos/logback/classic/spi/LoggingEventVO;
    .locals 3
    .param p0, "le"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 63
    new-instance v0, Lch/qos/logback/classic/spi/LoggingEventVO;

    invoke-direct {v0}, Lch/qos/logback/classic/spi/LoggingEventVO;-><init>()V

    .line 64
    .local v0, "ledo":Lch/qos/logback/classic/spi/LoggingEventVO;
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/spi/LoggingEventVO;->loggerName:Ljava/lang/String;

    .line 65
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerContextVO()Lch/qos/logback/classic/spi/LoggerContextVO;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/spi/LoggingEventVO;->loggerContextVO:Lch/qos/logback/classic/spi/LoggerContextVO;

    .line 66
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/spi/LoggingEventVO;->threadName:Ljava/lang/String;

    .line 67
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/spi/LoggingEventVO;->level:Lch/qos/logback/classic/Level;

    .line 68
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/spi/LoggingEventVO;->message:Ljava/lang/String;

    .line 69
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getArgumentArray()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/spi/LoggingEventVO;->argumentArray:[Ljava/lang/Object;

    .line 70
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMarker()Lorg/slf4j/Marker;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/spi/LoggingEventVO;->marker:Lorg/slf4j/Marker;

    .line 71
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMDCPropertyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/spi/LoggingEventVO;->mdcPropertyMap:Ljava/util/Map;

    .line 72
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getTimeStamp()J

    move-result-wide v1

    iput-wide v1, v0, Lch/qos/logback/classic/spi/LoggingEventVO;->timeStamp:J

    .line 73
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v1

    invoke-static {v1}, Lch/qos/logback/classic/spi/ThrowableProxyVO;->build(Lch/qos/logback/classic/spi/IThrowableProxy;)Lch/qos/logback/classic/spi/ThrowableProxyVO;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/spi/LoggingEventVO;->throwableProxy:Lch/qos/logback/classic/spi/ThrowableProxyVO;

    .line 76
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->hasCallerData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getCallerData()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/spi/LoggingEventVO;->callerDataArray:[Ljava/lang/StackTraceElement;

    .line 79
    :cond_0
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 179
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 180
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 181
    .local v0, "levelInt":I
    invoke-static {v0}, Lch/qos/logback/classic/Level;->toLevel(I)Lch/qos/logback/classic/Level;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->level:Lch/qos/logback/classic/Level;

    .line 183
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 184
    .local v1, "argArrayLen":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 185
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->argumentArray:[Ljava/lang/Object;

    .line 186
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 187
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 188
    .local v3, "val":Ljava/lang/Object;
    const-string v4, "NULL_ARGUMENT_ARRAY_ELEMENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    iget-object v4, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->argumentArray:[Ljava/lang/Object;

    aput-object v3, v4, v2

    .line 186
    .end local v3    # "val":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 161
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->level:Lch/qos/logback/classic/Level;

    iget v0, v0, Lch/qos/logback/classic/Level;->levelInt:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 162
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->argumentArray:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 163
    array-length v0, v0

    .line 164
    .local v0, "len":I
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->argumentArray:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 166
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 169
    :cond_0
    const-string v2, "NULL_ARGUMENT_ARRAY_ELEMENT"

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 165
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "len":I
    .end local v1    # "i":I
    :cond_1
    goto :goto_2

    .line 173
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 176
    :goto_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 207
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 208
    return v0

    .line 209
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 210
    return v1

    .line 211
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 212
    return v1

    .line 213
    :cond_2
    move-object v2, p1

    check-cast v2, Lch/qos/logback/classic/spi/LoggingEventVO;

    .line 214
    .local v2, "other":Lch/qos/logback/classic/spi/LoggingEventVO;
    iget-object v3, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->message:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 215
    iget-object v3, v2, Lch/qos/logback/classic/spi/LoggingEventVO;->message:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 216
    return v1

    .line 217
    :cond_3
    iget-object v4, v2, Lch/qos/logback/classic/spi/LoggingEventVO;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 218
    return v1

    .line 220
    :cond_4
    iget-object v3, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->loggerName:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 221
    iget-object v3, v2, Lch/qos/logback/classic/spi/LoggingEventVO;->loggerName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 222
    return v1

    .line 223
    :cond_5
    iget-object v4, v2, Lch/qos/logback/classic/spi/LoggingEventVO;->loggerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 224
    return v1

    .line 226
    :cond_6
    iget-object v3, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->threadName:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 227
    iget-object v3, v2, Lch/qos/logback/classic/spi/LoggingEventVO;->threadName:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 228
    return v1

    .line 229
    :cond_7
    iget-object v4, v2, Lch/qos/logback/classic/spi/LoggingEventVO;->threadName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 230
    return v1

    .line 231
    :cond_8
    iget-wide v3, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->timeStamp:J

    iget-wide v5, v2, Lch/qos/logback/classic/spi/LoggingEventVO;->timeStamp:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    .line 232
    return v1

    .line 234
    :cond_9
    iget-object v3, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->marker:Lorg/slf4j/Marker;

    if-nez v3, :cond_a

    .line 235
    iget-object v3, v2, Lch/qos/logback/classic/spi/LoggingEventVO;->marker:Lorg/slf4j/Marker;

    if-eqz v3, :cond_b

    .line 236
    return v1

    .line 237
    :cond_a
    iget-object v4, v2, Lch/qos/logback/classic/spi/LoggingEventVO;->marker:Lorg/slf4j/Marker;

    invoke-interface {v3, v4}, Lorg/slf4j/Marker;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 238
    return v1

    .line 240
    :cond_b
    iget-object v3, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->mdcPropertyMap:Ljava/util/Map;

    if-nez v3, :cond_c

    .line 241
    iget-object v3, v2, Lch/qos/logback/classic/spi/LoggingEventVO;->mdcPropertyMap:Ljava/util/Map;

    if-eqz v3, :cond_d

    .line 242
    return v1

    .line 243
    :cond_c
    iget-object v4, v2, Lch/qos/logback/classic/spi/LoggingEventVO;->mdcPropertyMap:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 244
    return v1

    .line 245
    :cond_d
    return v0
.end method

.method public getArgumentArray()[Ljava/lang/Object;
    .locals 1

    .line 117
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->argumentArray:[Ljava/lang/Object;

    return-object v0
.end method

.method public getCallerData()[Ljava/lang/StackTraceElement;
    .locals 1

    .line 125
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->callerDataArray:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public getContextBirthTime()J
    .locals 2

    .line 141
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->loggerContextVO:Lch/qos/logback/classic/spi/LoggerContextVO;

    invoke-virtual {v0}, Lch/qos/logback/classic/spi/LoggerContextVO;->getBirthTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContextLoggerRemoteView()Lch/qos/logback/classic/spi/LoggerContextVO;
    .locals 1

    .line 145
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->loggerContextVO:Lch/qos/logback/classic/spi/LoggerContextVO;

    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 2

    .line 103
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->formattedMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 104
    return-object v0

    .line 107
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->argumentArray:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->message:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->formattedMessage:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->message:Ljava/lang/String;

    iput-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->formattedMessage:Ljava/lang/String;

    .line 113
    :goto_0
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->formattedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Lch/qos/logback/classic/Level;
    .locals 1

    .line 95
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->level:Lch/qos/logback/classic/Level;

    return-object v0
.end method

.method public getLoggerContextVO()Lch/qos/logback/classic/spi/LoggerContextVO;
    .locals 1

    .line 87
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->loggerContextVO:Lch/qos/logback/classic/spi/LoggerContextVO;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public getMDCPropertyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->mdcPropertyMap:Ljava/util/Map;

    return-object v0
.end method

.method public getMarker()Lorg/slf4j/Marker;
    .locals 1

    .line 133
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->marker:Lorg/slf4j/Marker;

    return-object v0
.end method

.method public getMdc()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->mdcPropertyMap:Ljava/util/Map;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;
    .locals 1

    .line 121
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->throwableProxy:Lch/qos/logback/classic/spi/ThrowableProxyVO;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 137
    iget-wide v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->timeStamp:J

    return-wide v0
.end method

.method public hasCallerData()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->callerDataArray:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 197
    const/16 v0, 0x1f

    .line 198
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 199
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->message:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 200
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->threadName:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    .line 201
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lch/qos/logback/classic/spi/LoggingEventVO;->timeStamp:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 202
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public prepareForDeferredProcessing()V
    .locals 0

    .line 157
    return-void
.end method
