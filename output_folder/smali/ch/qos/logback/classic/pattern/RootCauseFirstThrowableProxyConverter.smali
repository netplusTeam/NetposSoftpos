.class public Lch/qos/logback/classic/pattern/RootCauseFirstThrowableProxyConverter;
.super Lch/qos/logback/classic/pattern/ExtendedThrowableProxyConverter;
.source "RootCauseFirstThrowableProxyConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lch/qos/logback/classic/pattern/ExtendedThrowableProxyConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected recursiveAppendRootCauseFirst(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "indent"    # I
    .param p4, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 34
    invoke-interface {p4}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCause()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {p4}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCause()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lch/qos/logback/classic/pattern/RootCauseFirstThrowableProxyConverter;->recursiveAppendRootCauseFirst(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 36
    const/4 p2, 0x0

    .line 38
    :cond_0
    add-int/lit8 v0, p3, -0x1

    invoke-static {p1, v0}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->indent(Ljava/lang/StringBuilder;I)V

    .line 39
    if-eqz p2, :cond_1

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_1
    invoke-static {p1, p4}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->subjoinFirstLineRootCauseFirst(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 43
    sget-object v0, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0, p1, p3, p4}, Lch/qos/logback/classic/pattern/RootCauseFirstThrowableProxyConverter;->subjoinSTEPArray(Ljava/lang/StringBuilder;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 45
    invoke-interface {p4}, Lch/qos/logback/classic/spi/IThrowableProxy;->getSuppressed()[Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v0

    .line 46
    .local v0, "suppressed":[Lch/qos/logback/classic/spi/IThrowableProxy;
    if-eqz v0, :cond_2

    .line 47
    move-object v1, v0

    .local v1, "arr$":[Lch/qos/logback/classic/spi/IThrowableProxy;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 48
    .local v4, "current":Lch/qos/logback/classic/spi/IThrowableProxy;
    add-int/lit8 v5, p3, 0x1

    const-string v6, "Suppressed: "

    invoke-virtual {p0, p1, v6, v5, v4}, Lch/qos/logback/classic/pattern/RootCauseFirstThrowableProxyConverter;->recursiveAppendRootCauseFirst(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 47
    .end local v4    # "current":Lch/qos/logback/classic/spi/IThrowableProxy;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "arr$":[Lch/qos/logback/classic/spi/IThrowableProxy;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2
    return-void
.end method

.method protected throwableProxyToString(Lch/qos/logback/classic/spi/IThrowableProxy;)Ljava/lang/String;
    .locals 3
    .param p1, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 29
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lch/qos/logback/classic/pattern/RootCauseFirstThrowableProxyConverter;->recursiveAppendRootCauseFirst(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
