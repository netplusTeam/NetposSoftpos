.class public Lch/qos/logback/classic/spi/CallerData;
.super Ljava/lang/Object;
.source "CallerData.java"


# static fields
.field public static final CALLER_DATA_NA:Ljava/lang/String;

.field public static final EMPTY_CALLER_DATA_ARRAY:[Ljava/lang/StackTraceElement;

.field public static final LINE_NA:I = -0x1

.field private static final LOG4J_CATEGORY:Ljava/lang/String; = "org.apache.log4j.Category"

.field public static final NA:Ljava/lang/String; = "?"

.field private static final SLF4J_BOUNDARY:Ljava/lang/String; = "org.slf4j.Logger"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?#?:?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/qos/logback/classic/spi/CallerData;->CALLER_DATA_NA:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Lch/qos/logback/classic/spi/CallerData;->EMPTY_CALLER_DATA_ARRAY:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract(Ljava/lang/Throwable;Ljava/lang/String;ILjava/util/List;)[Ljava/lang/StackTraceElement;
    .locals 7
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "fqnOfInvokingClass"    # Ljava/lang/String;
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation

    .line 56
    .local p3, "frameworkPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 63
    .local v0, "steArray":[Ljava/lang/StackTraceElement;
    const/4 v1, -0x1

    .line 64
    .local v1, "found":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    const/4 v4, -0x1

    if-ge v2, v3, :cond_3

    .line 65
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1, p3}, Lch/qos/logback/classic/spi/CallerData;->isInFrameworkSpace(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 69
    :cond_1
    if-eq v1, v4, :cond_2

    .line 70
    goto :goto_2

    .line 64
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "i":I
    :cond_3
    :goto_2
    if-ne v1, v4, :cond_4

    .line 77
    sget-object v2, Lch/qos/logback/classic/spi/CallerData;->EMPTY_CALLER_DATA_ARRAY:[Ljava/lang/StackTraceElement;

    return-object v2

    .line 80
    :cond_4
    array-length v2, v0

    sub-int/2addr v2, v1

    .line 81
    .local v2, "availableDepth":I
    if-ge p2, v2, :cond_5

    move v3, p2

    goto :goto_3

    :cond_5
    move v3, v2

    .line 83
    .local v3, "desiredDepth":I
    :goto_3
    new-array v4, v3, [Ljava/lang/StackTraceElement;

    .line 84
    .local v4, "callerDataArray":[Ljava/lang/StackTraceElement;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v3, :cond_6

    .line 85
    add-int v6, v1, v5

    aget-object v6, v0, v6

    aput-object v6, v4, v5

    .line 84
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 87
    .end local v5    # "i":I
    :cond_6
    return-object v4
.end method

.method static isInFrameworkSpace(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p0, "currentClass"    # Ljava/lang/String;
    .param p1, "fqnOfInvokingClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 93
    .local p2, "frameworkPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.apache.log4j.Category"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.slf4j.Logger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p2}, Lch/qos/logback/classic/spi/CallerData;->isInFrameworkSpaceList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isInFrameworkSpaceList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .param p0, "currentClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 105
    .local p1, "frameworkPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 106
    return v0

    .line 108
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    const/4 v0, 0x1

    return v0

    .line 111
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 112
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return v0
.end method

.method public static naInstance()Ljava/lang/StackTraceElement;
    .locals 3

    .line 122
    new-instance v0, Ljava/lang/StackTraceElement;

    const-string v1, "?"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v1, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
