.class public Lch/qos/logback/core/status/StatusUtil;
.super Ljava/lang/Object;
.source "StatusUtil.java"


# instance fields
.field sm:Lch/qos/logback/core/status/StatusManager;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/Context;)V
    .locals 1
    .param p1, "context"    # Lch/qos/logback/core/Context;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-interface {p1}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/status/StatusUtil;->sm:Lch/qos/logback/core/status/StatusManager;

    .line 35
    return-void
.end method

.method public constructor <init>(Lch/qos/logback/core/status/StatusManager;)V
    .locals 0
    .param p1, "sm"    # Lch/qos/logback/core/status/StatusManager;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lch/qos/logback/core/status/StatusUtil;->sm:Lch/qos/logback/core/status/StatusManager;

    .line 31
    return-void
.end method

.method public static contextHasStatusListener(Lch/qos/logback/core/Context;)Z
    .locals 4
    .param p0, "context"    # Lch/qos/logback/core/Context;

    .line 47
    invoke-interface {p0}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    .line 48
    .local v0, "sm":Lch/qos/logback/core/status/StatusManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 49
    return v1

    .line 50
    :cond_0
    invoke-interface {v0}, Lch/qos/logback/core/status/StatusManager;->getCopyOfStatusListenerList()Ljava/util/List;

    move-result-object v2

    .line 51
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/status/StatusListener;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 52
    :cond_2
    :goto_0
    return v1
.end method

.method public static filterStatusListByTimeThreshold(Ljava/util/List;J)Ljava/util/List;
    .locals 5
    .param p1, "threshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/status/Status;",
            ">;J)",
            "Ljava/util/List<",
            "Lch/qos/logback/core/status/Status;",
            ">;"
        }
    .end annotation

    .line 58
    .local p0, "rawList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/status/Status;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "filteredList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/status/Status;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/status/Status;

    .line 60
    .local v2, "s":Lch/qos/logback/core/status/Status;
    invoke-interface {v2}, Lch/qos/logback/core/status/Status;->getDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-ltz v3, :cond_0

    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v2    # "s":Lch/qos/logback/core/status/Status;
    :cond_0
    goto :goto_0

    .line 63
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 81
    new-instance v0, Lch/qos/logback/core/status/ErrorStatus;

    invoke-direct {v0, p2, p1, p3}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/status/StatusUtil;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 82
    return-void
.end method

.method public addInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .line 73
    new-instance v0, Lch/qos/logback/core/status/InfoStatus;

    invoke-direct {v0, p2, p1}, Lch/qos/logback/core/status/InfoStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/status/StatusUtil;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 74
    return-void
.end method

.method public addStatus(Lch/qos/logback/core/status/Status;)V
    .locals 1
    .param p1, "status"    # Lch/qos/logback/core/status/Status;

    .line 67
    iget-object v0, p0, Lch/qos/logback/core/status/StatusUtil;->sm:Lch/qos/logback/core/status/StatusManager;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p1}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    .line 70
    :cond_0
    return-void
.end method

.method public addWarn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .line 77
    new-instance v0, Lch/qos/logback/core/status/WarnStatus;

    invoke-direct {v0, p2, p1}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/status/StatusUtil;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 78
    return-void
.end method

.method public containsException(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 157
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lch/qos/logback/core/status/StatusUtil;->sm:Lch/qos/logback/core/status/StatusManager;

    invoke-interface {v0}, Lch/qos/logback/core/status/StatusManager;->getCopyOfStatusList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 158
    .local v0, "stati":Ljava/util/Iterator;, "Ljava/util/Iterator<Lch/qos/logback/core/status/Status;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/status/Status;

    .line 160
    .local v1, "status":Lch/qos/logback/core/status/Status;
    invoke-interface {v1}, Lch/qos/logback/core/status/Status;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    .line 161
    .local v2, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v2, :cond_1

    .line 162
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    const/4 v3, 0x1

    return v3

    .line 165
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    .line 167
    .end local v1    # "status":Lch/qos/logback/core/status/Status;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    goto :goto_0

    .line 168
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public containsMatch(ILjava/lang/String;)Z
    .locals 2
    .param p1, "level"    # I
    .param p2, "regex"    # Ljava/lang/String;

    .line 128
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lch/qos/logback/core/status/StatusUtil;->containsMatch(JILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public containsMatch(JILjava/lang/String;)Z
    .locals 7
    .param p1, "threshold"    # J
    .param p3, "level"    # I
    .param p4, "regex"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lch/qos/logback/core/status/StatusUtil;->sm:Lch/qos/logback/core/status/StatusManager;

    invoke-interface {v0}, Lch/qos/logback/core/status/StatusManager;->getCopyOfStatusList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lch/qos/logback/core/status/StatusUtil;->filterStatusListByTimeThreshold(Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "filteredList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/status/Status;>;"
    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 114
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/status/Status;

    .line 115
    .local v3, "status":Lch/qos/logback/core/status/Status;
    invoke-interface {v3}, Lch/qos/logback/core/status/Status;->getLevel()I

    move-result v4

    if-eq p3, v4, :cond_0

    .line 116
    goto :goto_0

    .line 118
    :cond_0
    invoke-interface {v3}, Lch/qos/logback/core/status/Status;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "msg":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 120
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    const/4 v6, 0x1

    return v6

    .line 123
    .end local v3    # "status":Lch/qos/logback/core/status/Status;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    goto :goto_0

    .line 124
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public containsMatch(Ljava/lang/String;)Z
    .locals 6
    .param p1, "regex"    # Ljava/lang/String;

    .line 132
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 133
    .local v0, "p":Ljava/util/regex/Pattern;
    iget-object v1, p0, Lch/qos/logback/core/status/StatusUtil;->sm:Lch/qos/logback/core/status/StatusManager;

    invoke-interface {v1}, Lch/qos/logback/core/status/StatusManager;->getCopyOfStatusList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/status/Status;

    .line 134
    .local v2, "status":Lch/qos/logback/core/status/Status;
    invoke-interface {v2}, Lch/qos/logback/core/status/Status;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 136
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 137
    const/4 v5, 0x1

    return v5

    .line 139
    .end local v2    # "status":Lch/qos/logback/core/status/Status;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    goto :goto_0

    .line 140
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getHighestLevel(J)I
    .locals 5
    .param p1, "threshold"    # J

    .line 93
    iget-object v0, p0, Lch/qos/logback/core/status/StatusUtil;->sm:Lch/qos/logback/core/status/StatusManager;

    invoke-interface {v0}, Lch/qos/logback/core/status/StatusManager;->getCopyOfStatusList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lch/qos/logback/core/status/StatusUtil;->filterStatusListByTimeThreshold(Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, "filteredList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/status/Status;>;"
    const/4 v1, 0x0

    .line 95
    .local v1, "maxLevel":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/status/Status;

    .line 96
    .local v3, "s":Lch/qos/logback/core/status/Status;
    invoke-interface {v3}, Lch/qos/logback/core/status/Status;->getLevel()I

    move-result v4

    if-le v4, v1, :cond_0

    .line 97
    invoke-interface {v3}, Lch/qos/logback/core/status/Status;->getLevel()I

    move-result v1

    .line 98
    .end local v3    # "s":Lch/qos/logback/core/status/Status;
    :cond_0
    goto :goto_0

    .line 99
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return v1
.end method

.method public hasXMLParsingErrors(J)Z
    .locals 2
    .param p1, "threshold"    # J

    .line 85
    const/4 v0, 0x2

    const-string v1, "XML_PARSING"

    invoke-virtual {p0, p1, p2, v0, v1}, Lch/qos/logback/core/status/StatusUtil;->containsMatch(JILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isErrorFree(J)Z
    .locals 2
    .param p1, "threshold"    # J

    .line 103
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/status/StatusUtil;->getHighestLevel(J)I

    move-result v0

    const/4 v1, 0x2

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWarningOrErrorFree(J)Z
    .locals 2
    .param p1, "threshold"    # J

    .line 107
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/status/StatusUtil;->getHighestLevel(J)I

    move-result v0

    const/4 v1, 0x1

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public matchCount(Ljava/lang/String;)I
    .locals 7
    .param p1, "regex"    # Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "count":I
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 146
    .local v1, "p":Ljava/util/regex/Pattern;
    iget-object v2, p0, Lch/qos/logback/core/status/StatusUtil;->sm:Lch/qos/logback/core/status/StatusManager;

    invoke-interface {v2}, Lch/qos/logback/core/status/StatusManager;->getCopyOfStatusList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/status/Status;

    .line 147
    .local v3, "status":Lch/qos/logback/core/status/Status;
    invoke-interface {v3}, Lch/qos/logback/core/status/Status;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "msg":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 149
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 150
    add-int/lit8 v0, v0, 0x1

    .line 152
    .end local v3    # "status":Lch/qos/logback/core/status/Status;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    goto :goto_0

    .line 153
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public noXMLParsingErrorsOccurred(J)Z
    .locals 1
    .param p1, "threshold"    # J

    .line 89
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/status/StatusUtil;->hasXMLParsingErrors(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public timeOfLastReset()J
    .locals 8

    .line 177
    iget-object v0, p0, Lch/qos/logback/core/status/StatusUtil;->sm:Lch/qos/logback/core/status/StatusManager;

    invoke-interface {v0}, Lch/qos/logback/core/status/StatusManager;->getCopyOfStatusList()Ljava/util/List;

    move-result-object v0

    .line 178
    .local v0, "statusList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/status/Status;>;"
    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    .line 179
    return-wide v1

    .line 181
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 182
    .local v3, "len":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 183
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch/qos/logback/core/status/Status;

    .line 184
    .local v5, "s":Lch/qos/logback/core/status/Status;
    invoke-interface {v5}, Lch/qos/logback/core/status/Status;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Will reset and reconfigure context "

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 185
    invoke-interface {v5}, Lch/qos/logback/core/status/Status;->getDate()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 182
    .end local v5    # "s":Lch/qos/logback/core/status/Status;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 188
    .end local v4    # "i":I
    :cond_2
    return-wide v1
.end method
