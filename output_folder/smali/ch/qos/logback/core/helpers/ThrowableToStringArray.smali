.class public Lch/qos/logback/core/helpers/ThrowableToStringArray;
.super Ljava/lang/Object;
.source "ThrowableToStringArray.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 25
    .local v0, "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lch/qos/logback/core/helpers/ThrowableToStringArray;->extract(Ljava/util/List;Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)V

    .line 26
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static extract(Ljava/util/List;Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "parentSTE"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ")V"
        }
    .end annotation

    .line 32
    .local p0, "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 33
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {v0, p2}, Lch/qos/logback/core/helpers/ThrowableToStringArray;->findNumberOfCommonFrames([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I

    move-result v1

    .line 35
    .local v1, "numberOfcommonFrames":I
    invoke-static {p1, p2}, Lch/qos/logback/core/helpers/ThrowableToStringArray;->formatFirstLine(Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    .end local v2    # "i":I
    :cond_0
    if-eqz v1, :cond_1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " common frames omitted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 45
    .local v2, "cause":Ljava/lang/Throwable;
    if-eqz v2, :cond_2

    .line 46
    invoke-static {p0, v2, v0}, Lch/qos/logback/core/helpers/ThrowableToStringArray;->extract(Ljava/util/List;Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)V

    .line 48
    :cond_2
    return-void
.end method

.method private static findNumberOfCommonFrames([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I
    .locals 5
    .param p0, "ste"    # [Ljava/lang/StackTraceElement;
    .param p1, "parentSTE"    # [Ljava/lang/StackTraceElement;

    .line 64
    if-nez p1, :cond_0

    .line 65
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 69
    .local v0, "steIndex":I
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 70
    .local v1, "parentIndex":I
    const/4 v2, 0x0

    .line 71
    .local v2, "count":I
    :goto_0
    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    .line 72
    aget-object v3, p0, v0

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 77
    add-int/lit8 v0, v0, -0x1

    .line 78
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 80
    :cond_1
    return v2
.end method

.method private static formatFirstLine(Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "parentSTE"    # [Ljava/lang/StackTraceElement;

    .line 51
    const-string v0, ""

    .line 52
    .local v0, "prefix":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 53
    const-string v0, "Caused by: "

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    :cond_1
    return-object v1
.end method
