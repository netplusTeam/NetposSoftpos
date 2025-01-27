.class public interface abstract Lch/qos/logback/classic/jmx/JMXConfiguratorMBean;
.super Ljava/lang/Object;
.source "JMXConfiguratorMBean.java"


# virtual methods
.method public abstract getLoggerEffectiveLevel(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLoggerList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatuses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reloadByFileName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract reloadByURL(Ljava/net/URL;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation
.end method

.method public abstract reloadDefaultConfiguration()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation
.end method

.method public abstract setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V
.end method
