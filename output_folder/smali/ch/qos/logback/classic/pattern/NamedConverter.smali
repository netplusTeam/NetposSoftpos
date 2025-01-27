.class public abstract Lch/qos/logback/classic/pattern/NamedConverter;
.super Lch/qos/logback/classic/pattern/ClassicConverter;
.source "NamedConverter.java"


# instance fields
.field abbreviator:Lch/qos/logback/classic/pattern/Abbreviator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lch/qos/logback/classic/pattern/ClassicConverter;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/pattern/NamedConverter;->abbreviator:Lch/qos/logback/classic/pattern/Abbreviator;

    return-void
.end method


# virtual methods
.method public convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 48
    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/NamedConverter;->getFullyQualifiedName(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "fqn":Ljava/lang/String;
    iget-object v1, p0, Lch/qos/logback/classic/pattern/NamedConverter;->abbreviator:Lch/qos/logback/classic/pattern/Abbreviator;

    if-nez v1, :cond_0

    .line 51
    return-object v0

    .line 53
    :cond_0
    invoke-interface {v1, v0}, Lch/qos/logback/classic/pattern/Abbreviator;->abbreviate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 18
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/NamedConverter;->convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getFullyQualifiedName(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
.end method

.method public start()V
    .locals 3

    .line 32
    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/NamedConverter;->getFirstOption()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "optStr":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 35
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 36
    .local v1, "targetLen":I
    if-nez v1, :cond_0

    .line 37
    new-instance v2, Lch/qos/logback/classic/pattern/ClassNameOnlyAbbreviator;

    invoke-direct {v2}, Lch/qos/logback/classic/pattern/ClassNameOnlyAbbreviator;-><init>()V

    iput-object v2, p0, Lch/qos/logback/classic/pattern/NamedConverter;->abbreviator:Lch/qos/logback/classic/pattern/Abbreviator;

    goto :goto_0

    .line 38
    :cond_0
    if-lez v1, :cond_1

    .line 39
    new-instance v2, Lch/qos/logback/classic/pattern/TargetLengthBasedClassNameAbbreviator;

    invoke-direct {v2, v1}, Lch/qos/logback/classic/pattern/TargetLengthBasedClassNameAbbreviator;-><init>(I)V

    iput-object v2, p0, Lch/qos/logback/classic/pattern/NamedConverter;->abbreviator:Lch/qos/logback/classic/pattern/Abbreviator;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "targetLen":I
    :cond_1
    :goto_0
    goto :goto_1

    .line 41
    :catch_0
    move-exception v1

    .line 45
    :cond_2
    :goto_1
    return-void
.end method
