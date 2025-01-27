.class public Lch/qos/logback/core/util/StatusPrinter;
.super Ljava/lang/Object;
.source "StatusPrinter.java"


# static fields
.field static cachingDateFormat:Lch/qos/logback/core/util/CachingDateFormatter;

.field private static ps:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v0, Lch/qos/logback/core/util/StatusPrinter;->ps:Ljava/io/PrintStream;

    .line 31
    new-instance v0, Lch/qos/logback/core/util/CachingDateFormatter;

    const-string v1, "HH:mm:ss,SSS"

    invoke-direct {v0, v1}, Lch/qos/logback/core/util/CachingDateFormatter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lch/qos/logback/core/util/StatusPrinter;->cachingDateFormat:Lch/qos/logback/core/util/CachingDateFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendThrowable(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V
    .locals 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 146
    invoke-static {p1}, Lch/qos/logback/core/helpers/ThrowableToStringArray;->convert(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "stringRep":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 149
    .local v4, "s":Ljava/lang/String;
    const-string v5, "Caused by: "

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 151
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 153
    const-string v5, "\t... "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 156
    :cond_1
    const-string v5, "\tat "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .end local v4    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2
    return-void
.end method

.method public static buildStr(Ljava/lang/StringBuilder;Ljava/lang/String;Lch/qos/logback/core/status/Status;)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "indentation"    # Ljava/lang/String;
    .param p2, "s"    # Lch/qos/logback/core/status/Status;

    .line 164
    invoke-interface {p2}, Lch/qos/logback/core/status/Status;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "prefix":Ljava/lang/String;
    goto :goto_0

    .line 167
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .restart local v0    # "prefix":Ljava/lang/String;
    :goto_0
    sget-object v1, Lch/qos/logback/core/util/StatusPrinter;->cachingDateFormat:Lch/qos/logback/core/util/CachingDateFormatter;

    if-eqz v1, :cond_1

    .line 171
    invoke-interface {p2}, Lch/qos/logback/core/status/Status;->getDate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lch/qos/logback/core/util/CachingDateFormatter;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "dateStr":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .end local v1    # "dateStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-interface {p2}, Lch/qos/logback/core/status/Status;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 177
    invoke-interface {p2}, Lch/qos/logback/core/status/Status;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {p0, v1}, Lch/qos/logback/core/util/StatusPrinter;->appendThrowable(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    .line 179
    :cond_2
    invoke-interface {p2}, Lch/qos/logback/core/status/Status;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    invoke-interface {p2}, Lch/qos/logback/core/status/Status;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 181
    .local v1, "ite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lch/qos/logback/core/status/Status;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/status/Status;

    .line 183
    .local v2, "child":Lch/qos/logback/core/status/Status;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lch/qos/logback/core/util/StatusPrinter;->buildStr(Ljava/lang/StringBuilder;Ljava/lang/String;Lch/qos/logback/core/status/Status;)V

    .line 184
    .end local v2    # "child":Lch/qos/logback/core/status/Status;
    goto :goto_1

    .line 186
    .end local v1    # "ite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lch/qos/logback/core/status/Status;>;"
    :cond_3
    return-void
.end method

.method private static buildStrFromStatusList(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lch/qos/logback/core/status/Status;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p1, "statusList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/status/Status;>;"
    if-nez p1, :cond_0

    .line 136
    return-void

    .line 137
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/status/Status;

    .line 138
    .local v1, "s":Lch/qos/logback/core/status/Status;
    const-string v2, ""

    invoke-static {p0, v2, v1}, Lch/qos/logback/core/util/StatusPrinter;->buildStr(Ljava/lang/StringBuilder;Ljava/lang/String;Lch/qos/logback/core/status/Status;)V

    .line 139
    .end local v1    # "s":Lch/qos/logback/core/status/Status;
    goto :goto_0

    .line 140
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static print(Lch/qos/logback/core/Context;)V
    .locals 2
    .param p0, "context"    # Lch/qos/logback/core/Context;

    .line 97
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lch/qos/logback/core/util/StatusPrinter;->print(Lch/qos/logback/core/Context;J)V

    .line 98
    return-void
.end method

.method public static print(Lch/qos/logback/core/Context;J)V
    .locals 4
    .param p0, "context"    # Lch/qos/logback/core/Context;
    .param p1, "threshold"    # J

    .line 105
    if-eqz p0, :cond_1

    .line 109
    invoke-interface {p0}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    .line 110
    .local v0, "sm":Lch/qos/logback/core/status/StatusManager;
    if-nez v0, :cond_0

    .line 111
    sget-object v1, Lch/qos/logback/core/util/StatusPrinter;->ps:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARN: Context named \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lch/qos/logback/core/Context;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" has no status manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-static {v0, p1, p2}, Lch/qos/logback/core/util/StatusPrinter;->print(Lch/qos/logback/core/status/StatusManager;J)V

    .line 115
    :goto_0
    return-void

    .line 106
    .end local v0    # "sm":Lch/qos/logback/core/status/StatusManager;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static print(Lch/qos/logback/core/status/StatusManager;)V
    .locals 2
    .param p0, "sm"    # Lch/qos/logback/core/status/StatusManager;

    .line 118
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lch/qos/logback/core/util/StatusPrinter;->print(Lch/qos/logback/core/status/StatusManager;J)V

    .line 119
    return-void
.end method

.method public static print(Lch/qos/logback/core/status/StatusManager;J)V
    .locals 4
    .param p0, "sm"    # Lch/qos/logback/core/status/StatusManager;
    .param p1, "threshold"    # J

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lch/qos/logback/core/status/StatusManager;->getCopyOfStatusList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lch/qos/logback/core/status/StatusUtil;->filterStatusListByTimeThreshold(Ljava/util/List;J)Ljava/util/List;

    move-result-object v1

    .line 124
    .local v1, "filteredList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/status/Status;>;"
    invoke-static {v0, v1}, Lch/qos/logback/core/util/StatusPrinter;->buildStrFromStatusList(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 125
    sget-object v2, Lch/qos/logback/core/util/StatusPrinter;->ps:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static print(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/status/Status;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p0, "statusList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/status/Status;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lch/qos/logback/core/util/StatusPrinter;->buildStrFromStatusList(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 131
    sget-object v1, Lch/qos/logback/core/util/StatusPrinter;->ps:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static printIfErrorsOccured(Lch/qos/logback/core/Context;)V
    .locals 4
    .param p0, "context"    # Lch/qos/logback/core/Context;

    .line 76
    if-eqz p0, :cond_2

    .line 80
    invoke-interface {p0}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    .line 81
    .local v0, "sm":Lch/qos/logback/core/status/StatusManager;
    if-nez v0, :cond_0

    .line 82
    sget-object v1, Lch/qos/logback/core/util/StatusPrinter;->ps:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARN: Context named \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lch/qos/logback/core/Context;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" has no status manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    new-instance v1, Lch/qos/logback/core/status/StatusUtil;

    invoke-direct {v1, p0}, Lch/qos/logback/core/status/StatusUtil;-><init>(Lch/qos/logback/core/Context;)V

    .line 85
    .local v1, "statusUtil":Lch/qos/logback/core/status/StatusUtil;
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lch/qos/logback/core/status/StatusUtil;->getHighestLevel(J)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 86
    invoke-static {v0}, Lch/qos/logback/core/util/StatusPrinter;->print(Lch/qos/logback/core/status/StatusManager;)V

    .line 89
    .end local v1    # "statusUtil":Lch/qos/logback/core/status/StatusUtil;
    :cond_1
    :goto_0
    return-void

    .line 77
    .end local v0    # "sm":Lch/qos/logback/core/status/StatusManager;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static printInCaseOfErrorsOrWarnings(Lch/qos/logback/core/Context;)V
    .locals 2
    .param p0, "context"    # Lch/qos/logback/core/Context;

    .line 44
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lch/qos/logback/core/util/StatusPrinter;->printInCaseOfErrorsOrWarnings(Lch/qos/logback/core/Context;J)V

    .line 45
    return-void
.end method

.method public static printInCaseOfErrorsOrWarnings(Lch/qos/logback/core/Context;J)V
    .locals 4
    .param p0, "context"    # Lch/qos/logback/core/Context;
    .param p1, "threshold"    # J

    .line 54
    if-eqz p0, :cond_2

    .line 58
    invoke-interface {p0}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    .line 59
    .local v0, "sm":Lch/qos/logback/core/status/StatusManager;
    if-nez v0, :cond_0

    .line 60
    sget-object v1, Lch/qos/logback/core/util/StatusPrinter;->ps:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARN: Context named \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lch/qos/logback/core/Context;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" has no status manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_0
    new-instance v1, Lch/qos/logback/core/status/StatusUtil;

    invoke-direct {v1, p0}, Lch/qos/logback/core/status/StatusUtil;-><init>(Lch/qos/logback/core/Context;)V

    .line 63
    .local v1, "statusUtil":Lch/qos/logback/core/status/StatusUtil;
    invoke-virtual {v1, p1, p2}, Lch/qos/logback/core/status/StatusUtil;->getHighestLevel(J)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 64
    invoke-static {v0, p1, p2}, Lch/qos/logback/core/util/StatusPrinter;->print(Lch/qos/logback/core/status/StatusManager;J)V

    .line 67
    .end local v1    # "statusUtil":Lch/qos/logback/core/status/StatusUtil;
    :cond_1
    :goto_0
    return-void

    .line 55
    .end local v0    # "sm":Lch/qos/logback/core/status/StatusManager;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setPrintStream(Ljava/io/PrintStream;)V
    .locals 0
    .param p0, "printStream"    # Ljava/io/PrintStream;

    .line 34
    sput-object p0, Lch/qos/logback/core/util/StatusPrinter;->ps:Ljava/io/PrintStream;

    .line 35
    return-void
.end method
