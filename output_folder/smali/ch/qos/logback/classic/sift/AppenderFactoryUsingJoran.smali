.class public Lch/qos/logback/classic/sift/AppenderFactoryUsingJoran;
.super Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran;
.source "AppenderFactoryUsingJoran.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p1, "eventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    .local p3, "parentPropertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getSiftingJoranConfigurator(Ljava/lang/String;)Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;
    .locals 3
    .param p1, "discriminatingValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lch/qos/logback/classic/sift/SiftingJoranConfigurator;

    iget-object v1, p0, Lch/qos/logback/classic/sift/AppenderFactoryUsingJoran;->key:Ljava/lang/String;

    iget-object v2, p0, Lch/qos/logback/classic/sift/AppenderFactoryUsingJoran;->parentPropertyMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lch/qos/logback/classic/sift/SiftingJoranConfigurator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method
