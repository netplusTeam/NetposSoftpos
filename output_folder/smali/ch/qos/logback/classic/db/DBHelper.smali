.class public Lch/qos/logback/classic/db/DBHelper;
.super Ljava/lang/Object;
.source "DBHelper.java"


# static fields
.field public static final EXCEPTION_EXISTS:S = 0x2s

.field public static final PROPERTIES_EXIST:S = 0x1s


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeReferenceMask(Lch/qos/logback/classic/spi/ILoggingEvent;)S
    .locals 4
    .param p0, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 28
    const/4 v0, 0x0

    .line 30
    .local v0, "mask":S
    const/4 v1, 0x0

    .line 31
    .local v1, "mdcPropSize":I
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMDCPropertyMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 32
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMDCPropertyMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    .line 34
    :cond_0
    const/4 v2, 0x0

    .line 35
    .local v2, "contextPropSize":I
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerContextVO()Lch/qos/logback/classic/spi/LoggerContextVO;

    move-result-object v3

    invoke-virtual {v3}, Lch/qos/logback/classic/spi/LoggerContextVO;->getPropertyMap()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 36
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerContextVO()Lch/qos/logback/classic/spi/LoggerContextVO;

    move-result-object v3

    invoke-virtual {v3}, Lch/qos/logback/classic/spi/LoggerContextVO;->getPropertyMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 39
    :cond_1
    if-gtz v1, :cond_2

    if-lez v2, :cond_3

    .line 40
    :cond_2
    const/4 v0, 0x1

    .line 42
    :cond_3
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 43
    or-int/lit8 v3, v0, 0x2

    int-to-short v0, v3

    .line 45
    :cond_4
    return v0
.end method
