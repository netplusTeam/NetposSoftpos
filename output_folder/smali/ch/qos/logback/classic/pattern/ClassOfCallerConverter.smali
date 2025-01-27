.class public Lch/qos/logback/classic/pattern/ClassOfCallerConverter;
.super Lch/qos/logback/classic/pattern/NamedConverter;
.source "ClassOfCallerConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lch/qos/logback/classic/pattern/NamedConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFullyQualifiedName(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 23
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getCallerData()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 24
    .local v0, "cda":[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 25
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 27
    :cond_0
    const-string v1, "?"

    return-object v1
.end method
