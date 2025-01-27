.class public abstract Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran;
.super Ljava/lang/Object;
.source "AbstractAppenderFactoryUsingJoran.java"

# interfaces
.implements Lch/qos/logback/core/sift/AppenderFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lch/qos/logback/core/sift/AppenderFactory<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected key:Ljava/lang/String;

.field protected parentPropertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    .line 35
    .local p0, "this":Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran;, "Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran<TE;>;"
    .local p1, "eventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    .local p3, "parentPropertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran;->removeSiftElement(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran;->eventList:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran;->key:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran;->parentPropertyMap:Ljava/util/Map;

    .line 40
    return-void
.end method


# virtual methods
.method public buildAppender(Lch/qos/logback/core/Context;Ljava/lang/String;)Lch/qos/logback/core/Appender;
    .locals 2
    .param p1, "context"    # Lch/qos/logback/core/Context;
    .param p2, "discriminatingValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Context;",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/Appender<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran;, "Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran<TE;>;"
    invoke-virtual {p0, p2}, Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran;->getSiftingJoranConfigurator(Ljava/lang/String;)Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;

    move-result-object v0

    .line 50
    .local v0, "sjc":Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;, "Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase<TE;>;"
    invoke-virtual {v0, p1}, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->setContext(Lch/qos/logback/core/Context;)V

    .line 51
    iget-object v1, p0, Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran;->eventList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->doConfigure(Ljava/util/List;)V

    .line 52
    invoke-virtual {v0}, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->getAppender()Lch/qos/logback/core/Appender;

    move-result-object v1

    return-object v1
.end method

.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran;, "Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran;->eventList:Ljava/util/List;

    return-object v0
.end method

.method public abstract getSiftingJoranConfigurator(Ljava/lang/String;)Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase<",
            "TE;>;"
        }
    .end annotation
.end method

.method removeSiftElement(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran;, "Lch/qos/logback/core/sift/AbstractAppenderFactoryUsingJoran<TE;>;"
    .local p1, "eventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
