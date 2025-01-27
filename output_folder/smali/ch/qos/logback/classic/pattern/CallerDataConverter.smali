.class public Lch/qos/logback/classic/pattern/CallerDataConverter;
.super Lch/qos/logback/classic/pattern/ClassicConverter;
.source "CallerDataConverter.java"


# static fields
.field public static final DEFAULT_CALLER_LINE_PREFIX:Ljava/lang/String; = "Caller+"

.field public static final DEFAULT_RANGE_DELIMITER:Ljava/lang/String; = ".."


# instance fields
.field final MAX_ERROR_COUNT:I

.field private depthEnd:I

.field private depthStart:I

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lch/qos/logback/classic/pattern/ClassicConverter;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthStart:I

    .line 41
    const/4 v1, 0x5

    iput v1, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthEnd:I

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->evaluatorList:Ljava/util/List;

    .line 44
    const/4 v1, 0x4

    iput v1, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->MAX_ERROR_COUNT:I

    .line 45
    iput v0, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->errorCount:I

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

    .line 106
    .local p1, "ee":Lch/qos/logback/core/boolex/EventEvaluator;, "Lch/qos/logback/core/boolex/EventEvaluator<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    iget-object v0, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->evaluatorList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->evaluatorList:Ljava/util/List;

    .line 109
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->evaluatorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method private checkRange()V
    .locals 3

    .line 98
    iget v0, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthStart:I

    const-string v1, ", "

    if-ltz v0, :cond_1

    iget v2, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthEnd:I

    if-gez v2, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    if-lt v0, v2, :cond_2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid depthEnd range ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthStart:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] (start greater or equal to end)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/pattern/CallerDataConverter;->addError(Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid depthStart/depthEnd range ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthStart:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] (negative values are not allowed)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/pattern/CallerDataConverter;->addError(Ljava/lang/String;)V

    .line 103
    :cond_2
    :goto_1
    return-void
.end method

.method private isRange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "depthStr"    # Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/CallerDataConverter;->getDefaultRangeDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private splitRange(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "depthStr"    # Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/CallerDataConverter;->getDefaultRangeDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 8
    .param p1, "le"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->evaluatorList:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "printCallerData":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->evaluatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 118
    iget-object v3, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->evaluatorList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/boolex/EventEvaluator;

    .line 120
    .local v3, "ee":Lch/qos/logback/core/boolex/EventEvaluator;, "Lch/qos/logback/core/boolex/EventEvaluator<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    :try_start_0
    invoke-interface {v3, p1}, Lch/qos/logback/core/boolex/EventEvaluator;->evaluate(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Lch/qos/logback/core/boolex/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 121
    const/4 v1, 0x1

    .line 122
    goto :goto_2

    .line 135
    :cond_0
    goto :goto_1

    .line 124
    :catch_0
    move-exception v4

    .line 125
    .local v4, "eex":Lch/qos/logback/core/boolex/EvaluationException;
    iget v5, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->errorCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->errorCount:I

    .line 126
    iget v5, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->errorCount:I

    const-string v6, "Exception thrown for evaluator named ["

    const/4 v7, 0x4

    if-ge v5, v7, :cond_1

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lch/qos/logback/core/boolex/EventEvaluator;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lch/qos/logback/classic/pattern/CallerDataConverter;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 128
    :cond_1
    iget v5, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->errorCount:I

    if-ne v5, v7, :cond_2

    .line 129
    new-instance v5, Lch/qos/logback/core/status/ErrorStatus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lch/qos/logback/core/boolex/EventEvaluator;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p0, v4}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 130
    .local v5, "errorStatus":Lch/qos/logback/core/status/ErrorStatus;
    new-instance v6, Lch/qos/logback/core/status/ErrorStatus;

    const-string v7, "This was the last warning about this evaluator\'s errors.We don\'t want the StatusManager to get flooded."

    invoke-direct {v6, v7, p0}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lch/qos/logback/core/status/ErrorStatus;->add(Lch/qos/logback/core/status/Status;)V

    .line 132
    invoke-virtual {p0, v5}, Lch/qos/logback/classic/pattern/CallerDataConverter;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 117
    .end local v3    # "ee":Lch/qos/logback/core/boolex/EventEvaluator;, "Lch/qos/logback/core/boolex/EventEvaluator<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    .end local v4    # "eex":Lch/qos/logback/core/boolex/EvaluationException;
    .end local v5    # "errorStatus":Lch/qos/logback/core/status/ErrorStatus;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v2    # "i":I
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 139
    const-string v2, ""

    return-object v2

    .line 143
    .end local v1    # "printCallerData":Z
    :cond_4
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getCallerData()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 144
    .local v1, "cda":[Ljava/lang/StackTraceElement;
    if-eqz v1, :cond_7

    array-length v2, v1

    iget v3, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthStart:I

    if-le v2, v3, :cond_7

    .line 145
    iget v2, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthEnd:I

    array-length v3, v1

    if-ge v2, v3, :cond_5

    goto :goto_3

    :cond_5
    array-length v2, v1

    .line 147
    .local v2, "limit":I
    :goto_3
    iget v3, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthStart:I

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_6

    .line 148
    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/CallerDataConverter;->getCallerLinePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const-string v4, "\t at "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    sget-object v4, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 154
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 156
    .end local v2    # "limit":I
    :cond_7
    sget-object v2, Lch/qos/logback/classic/spi/CallerData;->CALLER_DATA_NA:Ljava/lang/String;

    return-object v2
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 34
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/CallerDataConverter;->convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getCallerLinePrefix()Ljava/lang/String;
    .locals 1

    .line 161
    const-string v0, "Caller+"

    return-object v0
.end method

.method protected getDefaultRangeDelimiter()Ljava/lang/String;
    .locals 1

    .line 165
    const-string v0, ".."

    return-object v0
.end method

.method public start()V
    .locals 8

    .line 49
    const-string v0, "]"

    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/CallerDataConverter;->getFirstOption()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "depthStr":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 51
    return-void

    .line 55
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lch/qos/logback/classic/pattern/CallerDataConverter;->isRange(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    invoke-direct {p0, v1}, Lch/qos/logback/classic/pattern/CallerDataConverter;->splitRange(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "numbers":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 58
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthStart:I

    .line 59
    aget-object v4, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthEnd:I

    .line 60
    invoke-direct {p0}, Lch/qos/logback/classic/pattern/CallerDataConverter;->checkRange()V

    goto :goto_0

    .line 62
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse depth option as range ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lch/qos/logback/classic/pattern/CallerDataConverter;->addError(Ljava/lang/String;)V

    .line 64
    .end local v3    # "numbers":[Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 65
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lch/qos/logback/classic/pattern/CallerDataConverter;->depthEnd:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_1
    goto :goto_2

    .line 67
    :catch_0
    move-exception v3

    .line 68
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse depth option ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lch/qos/logback/classic/pattern/CallerDataConverter;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :goto_2
    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/CallerDataConverter;->getOptionList()Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "optionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_4

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 75
    .local v2, "optionListSize":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_3
    if-ge v3, v2, :cond_4

    .line 76
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 77
    .local v4, "evaluatorStr":Ljava/lang/String;
    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/CallerDataConverter;->getContext()Lch/qos/logback/core/Context;

    move-result-object v5

    .line 78
    .local v5, "context":Lch/qos/logback/core/Context;
    if-eqz v5, :cond_3

    .line 79
    const-string v6, "EVALUATOR_MAP"

    invoke-interface {v5, v6}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 80
    .local v6, "evaluatorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lch/qos/logback/core/boolex/EventEvaluator<*>;>;"
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lch/qos/logback/core/boolex/EventEvaluator;

    .line 81
    .local v7, "ee":Lch/qos/logback/core/boolex/EventEvaluator;, "Lch/qos/logback/core/boolex/EventEvaluator<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    if-eqz v7, :cond_3

    .line 82
    invoke-direct {p0, v7}, Lch/qos/logback/classic/pattern/CallerDataConverter;->addEvaluator(Lch/qos/logback/core/boolex/EventEvaluator;)V

    .line 75
    .end local v4    # "evaluatorStr":Ljava/lang/String;
    .end local v5    # "context":Lch/qos/logback/core/Context;
    .end local v6    # "evaluatorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lch/qos/logback/core/boolex/EventEvaluator<*>;>;"
    .end local v7    # "ee":Lch/qos/logback/core/boolex/EventEvaluator;, "Lch/qos/logback/core/boolex/EventEvaluator<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 87
    .end local v2    # "optionListSize":I
    .end local v3    # "i":I
    :cond_4
    return-void
.end method
