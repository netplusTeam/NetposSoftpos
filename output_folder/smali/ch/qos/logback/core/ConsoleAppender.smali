.class public Lch/qos/logback/core/ConsoleAppender;
.super Lch/qos/logback/core/OutputStreamAppender;
.source "ConsoleAppender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/OutputStreamAppender<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final WindowsAnsiOutputStream_CLASS_NAME:Ljava/lang/String; = "org.fusesource.jansi.WindowsAnsiOutputStream"


# instance fields
.field protected target:Lch/qos/logback/core/joran/spi/ConsoleTarget;

.field protected withJansi:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    .local p0, "this":Lch/qos/logback/core/ConsoleAppender;, "Lch/qos/logback/core/ConsoleAppender<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/OutputStreamAppender;-><init>()V

    .line 40
    sget-object v0, Lch/qos/logback/core/joran/spi/ConsoleTarget;->SystemOut:Lch/qos/logback/core/joran/spi/ConsoleTarget;

    iput-object v0, p0, Lch/qos/logback/core/ConsoleAppender;->target:Lch/qos/logback/core/joran/spi/ConsoleTarget;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/ConsoleAppender;->withJansi:Z

    return-void
.end method

.method private getTargetStreamForWindows(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "targetStream"    # Ljava/io/OutputStream;

    .line 87
    .local p0, "this":Lch/qos/logback/core/ConsoleAppender;, "Lch/qos/logback/core/ConsoleAppender<TE;>;"
    :try_start_0
    const-string v0, "Enabling JANSI WindowsAnsiOutputStream for the console."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/ConsoleAppender;->addInfo(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v0, "org.fusesource.jansi.WindowsAnsiOutputStream"

    const-class v1, Ljava/lang/Object;

    iget-object v2, p0, Lch/qos/logback/core/ConsoleAppender;->context:Lch/qos/logback/core/Context;

    const-class v3, Ljava/io/OutputStream;

    invoke-static {v0, v1, v2, v3, p1}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassNameAndParameter(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, "windowsAnsiOutputStream":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 91
    .end local v0    # "windowsAnsiOutputStream":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to create WindowsAnsiOutputStream. Falling back on the default stream."

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/ConsoleAppender;->addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    return-object p1
.end method

.method private targetWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .line 69
    .local p0, "this":Lch/qos/logback/core/ConsoleAppender;, "Lch/qos/logback/core/ConsoleAppender<TE;>;"
    new-instance v0, Lch/qos/logback/core/status/WarnStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lch/qos/logback/core/joran/spi/ConsoleTarget;->values()[Lch/qos/logback/core/joran/spi/ConsoleTarget;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    .local v0, "status":Lch/qos/logback/core/status/Status;
    new-instance v1, Lch/qos/logback/core/status/WarnStatus;

    const-string v2, "Using previously set target, System.out by default."

    invoke-direct {v1, v2, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lch/qos/logback/core/status/Status;->add(Lch/qos/logback/core/status/Status;)V

    .line 71
    invoke-virtual {p0, v0}, Lch/qos/logback/core/ConsoleAppender;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 72
    return-void
.end method


# virtual methods
.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 65
    .local p0, "this":Lch/qos/logback/core/ConsoleAppender;, "Lch/qos/logback/core/ConsoleAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/ConsoleAppender;->target:Lch/qos/logback/core/joran/spi/ConsoleTarget;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ConsoleTarget;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isWithJansi()Z
    .locals 1

    .line 101
    .local p0, "this":Lch/qos/logback/core/ConsoleAppender;, "Lch/qos/logback/core/ConsoleAppender<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/ConsoleAppender;->withJansi:Z

    return v0
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 50
    .local p0, "this":Lch/qos/logback/core/ConsoleAppender;, "Lch/qos/logback/core/ConsoleAppender<TE;>;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/qos/logback/core/joran/spi/ConsoleTarget;->findByName(Ljava/lang/String;)Lch/qos/logback/core/joran/spi/ConsoleTarget;

    move-result-object v0

    .line 51
    .local v0, "t":Lch/qos/logback/core/joran/spi/ConsoleTarget;
    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0, p1}, Lch/qos/logback/core/ConsoleAppender;->targetWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    iput-object v0, p0, Lch/qos/logback/core/ConsoleAppender;->target:Lch/qos/logback/core/joran/spi/ConsoleTarget;

    .line 56
    :goto_0
    return-void
.end method

.method public setWithJansi(Z)V
    .locals 0
    .param p1, "withJansi"    # Z

    .line 111
    .local p0, "this":Lch/qos/logback/core/ConsoleAppender;, "Lch/qos/logback/core/ConsoleAppender<TE;>;"
    iput-boolean p1, p0, Lch/qos/logback/core/ConsoleAppender;->withJansi:Z

    .line 112
    return-void
.end method

.method public start()V
    .locals 2

    .line 76
    .local p0, "this":Lch/qos/logback/core/ConsoleAppender;, "Lch/qos/logback/core/ConsoleAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/ConsoleAppender;->target:Lch/qos/logback/core/joran/spi/ConsoleTarget;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ConsoleTarget;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 78
    .local v0, "targetStream":Ljava/io/OutputStream;
    invoke-static {}, Lch/qos/logback/core/util/EnvUtil;->isWindows()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lch/qos/logback/core/ConsoleAppender;->withJansi:Z

    if-eqz v1, :cond_0

    .line 79
    invoke-direct {p0, v0}, Lch/qos/logback/core/ConsoleAppender;->getTargetStreamForWindows(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 81
    :cond_0
    invoke-virtual {p0, v0}, Lch/qos/logback/core/ConsoleAppender;->setOutputStream(Ljava/io/OutputStream;)V

    .line 82
    invoke-super {p0}, Lch/qos/logback/core/OutputStreamAppender;->start()V

    .line 83
    return-void
.end method
