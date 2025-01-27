.class public Lch/qos/logback/classic/spi/ThrowableProxyUtil;
.super Ljava/lang/Object;
.source "ThrowableProxyUtil.java"


# static fields
.field private static final BUILDER_CAPACITY:I = 0x800

.field public static final REGULAR_EXCEPTION_INDENT:I = 0x1

.field public static final SUPPRESSED_EXCEPTION_INDENT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asString(Lch/qos/logback/classic/spi/IThrowableProxy;)Ljava/lang/String;
    .locals 3
    .param p0, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p0}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->recursiveAppend(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static build(Lch/qos/logback/classic/spi/ThrowableProxy;Ljava/lang/Throwable;Lch/qos/logback/classic/spi/ThrowableProxy;)V
    .locals 3
    .param p0, "nestedTP"    # Lch/qos/logback/classic/spi/ThrowableProxy;
    .param p1, "nestedThrowable"    # Ljava/lang/Throwable;
    .param p2, "parentTP"    # Lch/qos/logback/classic/spi/ThrowableProxy;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 34
    .local v0, "nestedSTE":[Ljava/lang/StackTraceElement;
    const/4 v1, -0x1

    .line 35
    .local v1, "commonFramesCount":I
    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {p2}, Lch/qos/logback/classic/spi/ThrowableProxy;->getStackTraceElementProxyArray()[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    move-result-object v2

    invoke-static {v0, v2}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->findNumberOfCommonFrames([Ljava/lang/StackTraceElement;[Lch/qos/logback/classic/spi/StackTraceElementProxy;)I

    move-result v1

    .line 39
    :cond_0
    iput v1, p0, Lch/qos/logback/classic/spi/ThrowableProxy;->commonFrames:I

    .line 40
    invoke-static {v0}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->steArrayToStepArray([Ljava/lang/StackTraceElement;)[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    move-result-object v2

    iput-object v2, p0, Lch/qos/logback/classic/spi/ThrowableProxy;->stackTraceElementProxyArray:[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    .line 41
    return-void
.end method

.method static findNumberOfCommonFrames([Ljava/lang/StackTraceElement;[Lch/qos/logback/classic/spi/StackTraceElementProxy;)I
    .locals 6
    .param p0, "steArray"    # [Ljava/lang/StackTraceElement;
    .param p1, "parentSTEPArray"    # [Lch/qos/logback/classic/spi/StackTraceElementProxy;

    .line 55
    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 60
    .local v0, "steIndex":I
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 61
    .local v1, "parentIndex":I
    const/4 v2, 0x0

    .line 62
    .local v2, "count":I
    :goto_0
    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    .line 63
    aget-object v3, p0, v0

    .line 64
    .local v3, "ste":Ljava/lang/StackTraceElement;
    aget-object v4, p1, v1

    iget-object v4, v4, Lch/qos/logback/classic/spi/StackTraceElementProxy;->ste:Ljava/lang/StackTraceElement;

    .line 65
    .local v4, "otherSte":Ljava/lang/StackTraceElement;
    invoke-virtual {v3, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 70
    add-int/lit8 v0, v0, -0x1

    .line 71
    nop

    .end local v3    # "ste":Ljava/lang/StackTraceElement;
    .end local v4    # "otherSte":Ljava/lang/StackTraceElement;
    add-int/lit8 v1, v1, -0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    return v2

    .line 56
    .end local v0    # "steIndex":I
    .end local v1    # "parentIndex":I
    .end local v2    # "count":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static indent(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "indent"    # I

    .line 100
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 101
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "j":I
    :cond_0
    return-void
.end method

.method private static recursiveAppend(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "indent"    # I
    .param p3, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 85
    if-nez p3, :cond_0

    .line 86
    return-void

    .line 87
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->subjoinFirstLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 88
    sget-object v0, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {p0, p2, p3}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->subjoinSTEPArray(Ljava/lang/StringBuilder;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 90
    invoke-interface {p3}, Lch/qos/logback/classic/spi/IThrowableProxy;->getSuppressed()[Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v0

    .line 91
    .local v0, "suppressed":[Lch/qos/logback/classic/spi/IThrowableProxy;
    if-eqz v0, :cond_1

    .line 92
    move-object v1, v0

    .local v1, "arr$":[Lch/qos/logback/classic/spi/IThrowableProxy;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 93
    .local v4, "current":Lch/qos/logback/classic/spi/IThrowableProxy;
    add-int/lit8 v5, p2, 0x1

    const-string v6, "Suppressed: "

    invoke-static {p0, v6, v5, v4}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->recursiveAppend(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 92
    .end local v4    # "current":Lch/qos/logback/classic/spi/IThrowableProxy;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "arr$":[Lch/qos/logback/classic/spi/IThrowableProxy;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-interface {p3}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCause()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v1

    const-string v2, "Caused by: "

    invoke-static {p0, v2, p2, v1}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->recursiveAppend(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 97
    return-void
.end method

.method static steArrayToStepArray([Ljava/lang/StackTraceElement;)[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    .locals 4
    .param p0, "stea"    # [Ljava/lang/StackTraceElement;

    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Lch/qos/logback/classic/spi/StackTraceElementProxy;

    return-object v0

    .line 47
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lch/qos/logback/classic/spi/StackTraceElementProxy;

    .line 48
    .local v0, "stepa":[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 49
    new-instance v2, Lch/qos/logback/classic/spi/StackTraceElementProxy;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lch/qos/logback/classic/spi/StackTraceElementProxy;-><init>(Ljava/lang/StackTraceElement;)V

    aput-object v2, v0, v1

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static subjoinExceptionMessage(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 2
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 182
    invoke-interface {p1}, Lch/qos/logback/classic/spi/IThrowableProxy;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lch/qos/logback/classic/spi/IThrowableProxy;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    return-void
.end method

.method public static subjoinFirstLine(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 2
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 167
    invoke-interface {p1}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCommonFrames()I

    move-result v0

    .line 168
    .local v0, "commonFrames":I
    if-lez v0, :cond_0

    .line 169
    const-string v1, "Caused by: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_0
    invoke-static {p0, p1}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->subjoinExceptionMessage(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 172
    return-void
.end method

.method private static subjoinFirstLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "indent"    # I
    .param p3, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 106
    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, v0}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->indent(Ljava/lang/StringBuilder;I)V

    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_0
    invoke-static {p0, p3}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->subjoinExceptionMessage(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 111
    return-void
.end method

.method public static subjoinFirstLineRootCauseFirst(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 175
    invoke-interface {p1}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCause()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "Wrapped by: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_0
    invoke-static {p0, p1}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->subjoinExceptionMessage(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 179
    return-void
.end method

.method public static subjoinPackagingData(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/StackTraceElementProxy;)V
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "step"    # Lch/qos/logback/classic/spi/StackTraceElementProxy;

    .line 114
    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p1}, Lch/qos/logback/classic/spi/StackTraceElementProxy;->getClassPackagingData()Lch/qos/logback/classic/spi/ClassPackagingData;

    move-result-object v0

    .line 116
    .local v0, "cpd":Lch/qos/logback/classic/spi/ClassPackagingData;
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Lch/qos/logback/classic/spi/ClassPackagingData;->isExact()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    const-string v1, " ~["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    :cond_0
    const-string v1, " ["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :goto_0
    invoke-virtual {v0}, Lch/qos/logback/classic/spi/ClassPackagingData;->getCodeLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lch/qos/logback/classic/spi/ClassPackagingData;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .end local v0    # "cpd":Lch/qos/logback/classic/spi/ClassPackagingData;
    :cond_1
    return-void
.end method

.method public static subjoinSTEP(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/StackTraceElementProxy;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "step"    # Lch/qos/logback/classic/spi/StackTraceElementProxy;

    .line 129
    invoke-virtual {p1}, Lch/qos/logback/classic/spi/StackTraceElementProxy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {p0, p1}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->subjoinPackagingData(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/StackTraceElementProxy;)V

    .line 131
    return-void
.end method

.method public static subjoinSTEPArray(Ljava/lang/StringBuilder;ILch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "indentLevel"    # I
    .param p2, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 149
    invoke-interface {p2}, Lch/qos/logback/classic/spi/IThrowableProxy;->getStackTraceElementProxyArray()[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    move-result-object v0

    .line 150
    .local v0, "stepArray":[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    invoke-interface {p2}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCommonFrames()I

    move-result v1

    .line 152
    .local v1, "commonFrames":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 153
    aget-object v3, v0, v2

    .line 154
    .local v3, "step":Lch/qos/logback/classic/spi/StackTraceElementProxy;
    invoke-static {p0, p1}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->indent(Ljava/lang/StringBuilder;I)V

    .line 155
    invoke-static {p0, v3}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->subjoinSTEP(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/StackTraceElementProxy;)V

    .line 156
    sget-object v4, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .end local v3    # "step":Lch/qos/logback/classic/spi/StackTraceElementProxy;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v2    # "i":I
    :cond_0
    if-lez v1, :cond_1

    .line 160
    invoke-static {p0, p1}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->indent(Ljava/lang/StringBuilder;I)V

    .line 161
    const-string v2, "... "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " common frames omitted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_1
    return-void
.end method

.method public static subjoinSTEPArray(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 140
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->subjoinSTEPArray(Ljava/lang/StringBuilder;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 141
    return-void
.end method
