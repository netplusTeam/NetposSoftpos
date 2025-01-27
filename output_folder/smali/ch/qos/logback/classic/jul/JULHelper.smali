.class public Lch/qos/logback/classic/jul/JULHelper;
.super Ljava/lang/Object;
.source "JULHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asJULLevel(Lch/qos/logback/classic/Level;)Ljava/util/logging/Level;
    .locals 3
    .param p0, "lbLevel"    # Lch/qos/logback/classic/Level;

    .line 34
    if-eqz p0, :cond_0

    .line 37
    iget v0, p0, Lch/qos/logback/classic/Level;->levelInt:I

    sparse-switch v0, :sswitch_data_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected level ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :sswitch_0
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    return-object v0

    .line 49
    :sswitch_1
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    return-object v0

    .line 47
    :sswitch_2
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    return-object v0

    .line 45
    :sswitch_3
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    return-object v0

    .line 43
    :sswitch_4
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object v0

    .line 41
    :sswitch_5
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    return-object v0

    .line 39
    :sswitch_6
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    return-object v0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected level [null]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_6
        0x1388 -> :sswitch_5
        0x2710 -> :sswitch_4
        0x4e20 -> :sswitch_3
        0x7530 -> :sswitch_2
        0x9c40 -> :sswitch_1
        0x7fffffff -> :sswitch_0
    .end sparse-switch
.end method

.method public static asJULLogger(Lch/qos/logback/classic/Logger;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "logger"    # Lch/qos/logback/classic/Logger;

    .line 70
    invoke-virtual {p0}, Lch/qos/logback/classic/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/qos/logback/classic/jul/JULHelper;->asJULLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static asJULLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2
    .param p0, "loggerName"    # Ljava/lang/String;

    .line 65
    invoke-static {p0}, Lch/qos/logback/classic/jul/JULHelper;->asJULLoggerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "julLoggerName":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    return-object v1
.end method

.method public static asJULLoggerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "loggerName"    # Ljava/lang/String;

    .line 58
    const-string v0, "ROOT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, ""

    return-object v0

    .line 61
    :cond_0
    return-object p0
.end method

.method public static final isRegularNonRootLogger(Ljava/util/logging/Logger;)Z
    .locals 2
    .param p0, "julLogger"    # Ljava/util/logging/Logger;

    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    return v0

    .line 24
    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static final isRoot(Ljava/util/logging/Logger;)Z
    .locals 2
    .param p0, "julLogger"    # Ljava/util/logging/Logger;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return v0

    .line 30
    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
