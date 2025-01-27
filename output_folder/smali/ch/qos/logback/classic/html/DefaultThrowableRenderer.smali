.class public Lch/qos/logback/classic/html/DefaultThrowableRenderer;
.super Ljava/lang/Object;
.source "DefaultThrowableRenderer.java"

# interfaces
.implements Lch/qos/logback/core/html/IThrowableRenderer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lch/qos/logback/core/html/IThrowableRenderer<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# static fields
.field static final TRACE_PREFIX:Ljava/lang/String; = "<br />&nbsp;&nbsp;&nbsp;&nbsp;"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public printFirstLine(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 57
    invoke-interface {p2}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCommonFrames()I

    move-result v0

    .line 58
    .local v0, "commonFrames":I
    if-lez v0, :cond_0

    .line 59
    const-string v1, "<br />"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Caused by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_0
    invoke-interface {p2}, Lch/qos/logback/classic/spi/IThrowableProxy;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lch/qos/logback/classic/spi/IThrowableProxy;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lch/qos/logback/core/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    return-void
.end method

.method public render(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/ILoggingEvent;)V
    .locals 2
    .param p1, "sbuf"    # Ljava/lang/StringBuilder;
    .param p2, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 28
    invoke-interface {p2}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v0

    .line 29
    .local v0, "tp":Lch/qos/logback/classic/spi/IThrowableProxy;
    const-string v1, "<tr><td class=\"Exception\" colspan=\"6\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    :goto_0
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0, p1, v0}, Lch/qos/logback/classic/html/DefaultThrowableRenderer;->render(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 32
    invoke-interface {v0}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCause()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_0
    const-string v1, "</td></tr>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    return-void
.end method

.method render(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 5
    .param p1, "sbuf"    # Ljava/lang/StringBuilder;
    .param p2, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 38
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/classic/html/DefaultThrowableRenderer;->printFirstLine(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V

    .line 40
    invoke-interface {p2}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCommonFrames()I

    move-result v0

    .line 41
    .local v0, "commonFrames":I
    invoke-interface {p2}, Lch/qos/logback/classic/spi/IThrowableProxy;->getStackTraceElementProxyArray()[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    move-result-object v1

    .line 43
    .local v1, "stepArray":[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    sub-int/2addr v3, v0

    const-string v4, "<br />&nbsp;&nbsp;&nbsp;&nbsp;"

    if-ge v2, v3, :cond_0

    .line 44
    aget-object v3, v1, v2

    .line 45
    .local v3, "step":Lch/qos/logback/classic/spi/StackTraceElementProxy;
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3}, Lch/qos/logback/classic/spi/StackTraceElementProxy;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lch/qos/logback/core/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    sget-object v4, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .end local v3    # "step":Lch/qos/logback/classic/spi/StackTraceElementProxy;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v2    # "i":I
    :cond_0
    if-lez v0, :cond_1

    .line 51
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v2, "\t... "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " common frames omitted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_1
    return-void
.end method

.method public bridge synthetic render(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1, p2}, Lch/qos/logback/classic/html/DefaultThrowableRenderer;->render(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/ILoggingEvent;)V

    return-void
.end method
