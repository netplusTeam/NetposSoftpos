.class public Lch/qos/logback/classic/util/LevelToSyslogSeverity;
.super Ljava/lang/Object;
.source "LevelToSyslogSeverity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lch/qos/logback/classic/spi/ILoggingEvent;)I
    .locals 4
    .param p0, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 28
    invoke-interface {p0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v0

    .line 30
    .local v0, "level":Lch/qos/logback/classic/Level;
    iget v1, v0, Lch/qos/logback/classic/Level;->levelInt:I

    sparse-switch v1, :sswitch_data_0

    .line 41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid level for a printing method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :sswitch_0
    const/4 v1, 0x3

    return v1

    .line 34
    :sswitch_1
    const/4 v1, 0x4

    return v1

    .line 36
    :sswitch_2
    const/4 v1, 0x6

    return v1

    .line 39
    :sswitch_3
    const/4 v1, 0x7

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1388 -> :sswitch_3
        0x2710 -> :sswitch_3
        0x4e20 -> :sswitch_2
        0x7530 -> :sswitch_1
        0x9c40 -> :sswitch_0
    .end sparse-switch
.end method
