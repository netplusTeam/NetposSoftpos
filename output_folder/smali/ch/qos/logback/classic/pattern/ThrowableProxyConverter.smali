.class public Lch/qos/logback/classic/pattern/ThrowableProxyConverter;
.super Lch/qos/logback/classic/pattern/ThrowableHandlingConverter;
.source "ThrowableProxyConverter.java"


# static fields
.field protected static final BUILDER_CAPACITY:I = 0x800


# instance fields
.field errorCount:I

.field evaluatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/core/boolex/EventEvaluator<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field ignoredStackTraceLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lengthOption:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lch/qos/logback/classic/pattern/ThrowableHandlingConverter;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->ignoredStackTraceLines:Ljava/util/List;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->errorCount:I

    return-void
.end method

.method private addEvaluator(Lch/qos/logback/core/boolex/EventEvaluator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/boolex/EventEvaluator<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p1, "ee":Lch/qos/logback/core/boolex/EventEvaluator;, "Lch/qos/logback/core/boolex/EventEvaluator<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    iget-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    .line 91
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method private addIgnoreStackTraceLine(Ljava/lang/String;)V
    .locals 1
    .param p1, "ignoredStackTraceLine"    # Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->ignoredStackTraceLines:Ljava/util/List;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->ignoredStackTraceLines:Ljava/util/List;

    .line 98
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->ignoredStackTraceLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method private isIgnoredStackTraceLine(Ljava/lang/String;)Z
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->ignoredStackTraceLines:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 234
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 235
    .local v1, "ignoredStackTraceLine":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const/4 v2, 0x1

    return v2

    .line 238
    .end local v1    # "ignoredStackTraceLine":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 240
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private printIgnoredCount(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "ignoredCount"    # I

    .line 229
    const-string v0, " ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " skipped]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    return-void
.end method

.method private printStackLine(Ljava/lang/StringBuilder;ILch/qos/logback/classic/spi/StackTraceElementProxy;)V
    .locals 0
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "ignoredCount"    # I
    .param p3, "element"    # Lch/qos/logback/classic/spi/StackTraceElementProxy;

    .line 221
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p0, p1, p3}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->extraData(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/StackTraceElementProxy;)V

    .line 223
    if-lez p2, :cond_0

    .line 224
    invoke-direct {p0, p1, p2}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->printIgnoredCount(Ljava/lang/StringBuilder;I)V

    .line 226
    :cond_0
    return-void
.end method

.method private recursiveAppend(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "indent"    # I
    .param p4, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 157
    if-nez p4, :cond_0

    .line 158
    return-void

    .line 159
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->subjoinFirstLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 160
    sget-object v0, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0, p1, p3, p4}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->subjoinSTEPArray(Ljava/lang/StringBuilder;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 162
    invoke-interface {p4}, Lch/qos/logback/classic/spi/IThrowableProxy;->getSuppressed()[Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v0

    .line 163
    .local v0, "suppressed":[Lch/qos/logback/classic/spi/IThrowableProxy;
    if-eqz v0, :cond_1

    .line 164
    move-object v1, v0

    .local v1, "arr$":[Lch/qos/logback/classic/spi/IThrowableProxy;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 165
    .local v4, "current":Lch/qos/logback/classic/spi/IThrowableProxy;
    add-int/lit8 v5, p3, 0x1

    const-string v6, "Suppressed: "

    invoke-direct {p0, p1, v6, v5, v4}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->recursiveAppend(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 164
    .end local v4    # "current":Lch/qos/logback/classic/spi/IThrowableProxy;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "arr$":[Lch/qos/logback/classic/spi/IThrowableProxy;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-interface {p4}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCause()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v1

    const-string v2, "Caused by: "

    invoke-direct {p0, p1, v2, p3, v1}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->recursiveAppend(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 169
    return-void
.end method

.method private subjoinExceptionMessage(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 180
    invoke-interface {p2}, Lch/qos/logback/classic/spi/IThrowableProxy;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lch/qos/logback/classic/spi/IThrowableProxy;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    return-void
.end method

.method private subjoinFirstLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "indent"    # I
    .param p4, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 172
    add-int/lit8 v0, p3, -0x1

    invoke-static {p1, v0}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->indent(Ljava/lang/StringBuilder;I)V

    .line 173
    if-eqz p2, :cond_0

    .line 174
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_0
    invoke-direct {p0, p1, p4}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->subjoinExceptionMessage(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 177
    return-void
.end method


# virtual methods
.method public convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 9
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 112
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v0

    .line 113
    .local v0, "tp":Lch/qos/logback/classic/spi/IThrowableProxy;
    const-string v1, ""

    if-nez v0, :cond_0

    .line 114
    return-object v1

    .line 118
    :cond_0
    iget-object v2, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 119
    const/4 v2, 0x1

    .line 120
    .local v2, "printStack":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 121
    iget-object v4, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lch/qos/logback/core/boolex/EventEvaluator;

    .line 123
    .local v4, "ee":Lch/qos/logback/core/boolex/EventEvaluator;, "Lch/qos/logback/core/boolex/EventEvaluator<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    :try_start_0
    invoke-interface {v4, p1}, Lch/qos/logback/core/boolex/EventEvaluator;->evaluate(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lch/qos/logback/core/boolex/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    .line 124
    const/4 v2, 0x0

    .line 125
    goto :goto_2

    .line 137
    :cond_1
    goto :goto_1

    .line 127
    :catch_0
    move-exception v5

    .line 128
    .local v5, "eex":Lch/qos/logback/core/boolex/EvaluationException;
    iget v6, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->errorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->errorCount:I

    .line 129
    iget v6, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->errorCount:I

    const-string v7, "Exception thrown for evaluator named ["

    const/4 v8, 0x4

    if-ge v6, v8, :cond_2

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lch/qos/logback/core/boolex/EventEvaluator;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 131
    :cond_2
    iget v6, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->errorCount:I

    if-ne v6, v8, :cond_3

    .line 132
    new-instance v6, Lch/qos/logback/core/status/ErrorStatus;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lch/qos/logback/core/boolex/EventEvaluator;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p0, v5}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 133
    .local v6, "errorStatus":Lch/qos/logback/core/status/ErrorStatus;
    new-instance v7, Lch/qos/logback/core/status/ErrorStatus;

    const-string v8, "This was the last warning about this evaluator\'s errors.We don\'t want the StatusManager to get flooded."

    invoke-direct {v7, v8, p0}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Lch/qos/logback/core/status/ErrorStatus;->add(Lch/qos/logback/core/status/Status;)V

    .line 135
    invoke-virtual {p0, v6}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 120
    .end local v4    # "ee":Lch/qos/logback/core/boolex/EventEvaluator;, "Lch/qos/logback/core/boolex/EventEvaluator<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    .end local v5    # "eex":Lch/qos/logback/core/boolex/EvaluationException;
    .end local v6    # "errorStatus":Lch/qos/logback/core/status/ErrorStatus;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    .end local v3    # "i":I
    :cond_4
    :goto_2
    if-nez v2, :cond_5

    .line 141
    return-object v1

    .line 145
    .end local v2    # "printStack":Z
    :cond_5
    invoke-virtual {p0, v0}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->throwableProxyToString(Lch/qos/logback/classic/spi/IThrowableProxy;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 35
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected extraData(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/StackTraceElementProxy;)V
    .locals 0
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "step"    # Lch/qos/logback/classic/spi/StackTraceElementProxy;

    .line 108
    return-void
.end method

.method public start()V
    .locals 8

    .line 48
    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->getFirstOption()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "lengthStr":Ljava/lang/String;
    const/4 v1, 0x1

    const v2, 0x7fffffff

    if-nez v0, :cond_0

    .line 51
    iput v2, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->lengthOption:I

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v3, "full"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    iput v2, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->lengthOption:I

    goto :goto_0

    .line 56
    :cond_1
    const-string/jumbo v3, "short"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    iput v1, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->lengthOption:I

    goto :goto_0

    .line 60
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->lengthOption:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 61
    :catch_0
    move-exception v3

    .line 62
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] as an integer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->addError(Ljava/lang/String;)V

    .line 63
    iput v2, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->lengthOption:I

    .line 68
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :goto_0
    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->getOptionList()Ljava/util/List;

    move-result-object v2

    .line 70
    .local v2, "optionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_4

    .line 71
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 72
    .local v1, "optionListSize":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 73
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 74
    .local v4, "evaluatorOrIgnoredStackTraceLine":Ljava/lang/String;
    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->getContext()Lch/qos/logback/core/Context;

    move-result-object v5

    .line 75
    .local v5, "context":Lch/qos/logback/core/Context;
    const-string v6, "EVALUATOR_MAP"

    invoke-interface {v5, v6}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 76
    .local v6, "evaluatorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lch/qos/logback/core/boolex/EventEvaluator<*>;>;"
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lch/qos/logback/core/boolex/EventEvaluator;

    .line 77
    .local v7, "ee":Lch/qos/logback/core/boolex/EventEvaluator;, "Lch/qos/logback/core/boolex/EventEvaluator<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    if-eqz v7, :cond_3

    .line 78
    invoke-direct {p0, v7}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->addEvaluator(Lch/qos/logback/core/boolex/EventEvaluator;)V

    goto :goto_2

    .line 80
    :cond_3
    invoke-direct {p0, v4}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->addIgnoreStackTraceLine(Ljava/lang/String;)V

    .line 72
    .end local v4    # "evaluatorOrIgnoredStackTraceLine":Ljava/lang/String;
    .end local v5    # "context":Lch/qos/logback/core/Context;
    .end local v6    # "evaluatorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lch/qos/logback/core/boolex/EventEvaluator<*>;>;"
    .end local v7    # "ee":Lch/qos/logback/core/boolex/EventEvaluator;, "Lch/qos/logback/core/boolex/EventEvaluator<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 84
    .end local v1    # "optionListSize":I
    .end local v3    # "i":I
    :cond_4
    invoke-super {p0}, Lch/qos/logback/classic/pattern/ThrowableHandlingConverter;->start()V

    .line 85
    return-void
.end method

.method public stop()V
    .locals 1

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    .line 103
    invoke-super {p0}, Lch/qos/logback/classic/pattern/ThrowableHandlingConverter;->stop()V

    .line 104
    return-void
.end method

.method protected subjoinSTEPArray(Ljava/lang/StringBuilder;ILch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 8
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I
    .param p3, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 184
    invoke-interface {p3}, Lch/qos/logback/classic/spi/IThrowableProxy;->getStackTraceElementProxyArray()[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    move-result-object v0

    .line 185
    .local v0, "stepArray":[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    invoke-interface {p3}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCommonFrames()I

    move-result v1

    .line 187
    .local v1, "commonFrames":I
    iget v2, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->lengthOption:I

    array-length v3, v0

    if-le v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 189
    .local v3, "unrestrictedPrinting":Z
    :goto_0
    if-eqz v3, :cond_1

    array-length v2, v0

    .line 190
    .local v2, "maxIndex":I
    :cond_1
    if-lez v1, :cond_2

    if-eqz v3, :cond_2

    .line 191
    sub-int/2addr v2, v1

    .line 194
    :cond_2
    const/4 v4, 0x0

    .line 195
    .local v4, "ignoredCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_5

    .line 196
    aget-object v6, v0, v5

    .line 197
    .local v6, "element":Lch/qos/logback/classic/spi/StackTraceElementProxy;
    invoke-virtual {v6}, Lch/qos/logback/classic/spi/StackTraceElementProxy;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->isIgnoredStackTraceLine(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 198
    invoke-static {p1, p2}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->indent(Ljava/lang/StringBuilder;I)V

    .line 199
    invoke-direct {p0, p1, v4, v6}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->printStackLine(Ljava/lang/StringBuilder;ILch/qos/logback/classic/spi/StackTraceElementProxy;)V

    .line 200
    const/4 v4, 0x0

    .line 201
    sget-object v7, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 203
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 204
    array-length v7, v0

    if-ge v2, v7, :cond_4

    .line 205
    add-int/lit8 v2, v2, 0x1

    .line 195
    .end local v6    # "element":Lch/qos/logback/classic/spi/StackTraceElementProxy;
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 209
    .end local v5    # "i":I
    :cond_5
    if-lez v4, :cond_6

    .line 210
    invoke-direct {p0, p1, v4}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->printIgnoredCount(Ljava/lang/StringBuilder;I)V

    .line 211
    sget-object v5, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_6
    if-lez v1, :cond_7

    if-eqz v3, :cond_7

    .line 215
    invoke-static {p1, p2}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->indent(Ljava/lang/StringBuilder;I)V

    .line 216
    const-string v5, "... "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p3}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCommonFrames()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " common frames omitted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_7
    return-void
.end method

.method protected throwableProxyToString(Lch/qos/logback/classic/spi/IThrowableProxy;)Ljava/lang/String;
    .locals 3
    .param p1, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 151
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->recursiveAppend(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
