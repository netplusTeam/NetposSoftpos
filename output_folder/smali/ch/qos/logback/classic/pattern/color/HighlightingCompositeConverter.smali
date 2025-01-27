.class public Lch/qos/logback/classic/pattern/color/HighlightingCompositeConverter;
.super Lch/qos/logback/core/pattern/color/ForegroundCompositeConverterBase;
.source "HighlightingCompositeConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/pattern/color/ForegroundCompositeConverterBase<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lch/qos/logback/core/pattern/color/ForegroundCompositeConverterBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getForegroundColorCode(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 29
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v0

    .line 30
    .local v0, "level":Lch/qos/logback/classic/Level;
    invoke-virtual {v0}, Lch/qos/logback/classic/Level;->toInt()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 38
    const-string v1, "39"

    return-object v1

    .line 32
    :sswitch_0
    const-string v1, "1;31"

    return-object v1

    .line 34
    :sswitch_1
    const-string v1, "31"

    return-object v1

    .line 36
    :sswitch_2
    const-string v1, "34"

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4e20 -> :sswitch_2
        0x7530 -> :sswitch_1
        0x9c40 -> :sswitch_0
    .end sparse-switch
.end method

.method protected bridge synthetic getForegroundColorCode(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 25
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/color/HighlightingCompositeConverter;->getForegroundColorCode(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
