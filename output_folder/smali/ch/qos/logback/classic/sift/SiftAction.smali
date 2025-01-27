.class public Lch/qos/logback/classic/sift/SiftAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "SiftAction.java"

# interfaces
.implements Lch/qos/logback/core/joran/event/InPlayListener;


# instance fields
.field seList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "ic"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/sift/SiftAction;->seList:Ljava/util/List;

    .line 34
    invoke-virtual {p1, p0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->addInPlayListener(Lch/qos/logback/core/joran/event/InPlayListener;)V

    .line 35
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 6
    .param p1, "ic"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 39
    invoke-virtual {p1, p0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->removeInPlayListener(Lch/qos/logback/core/joran/event/InPlayListener;)Z

    .line 40
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lch/qos/logback/classic/sift/SiftingAppender;

    if-eqz v1, :cond_0

    .line 42
    move-object v1, v0

    check-cast v1, Lch/qos/logback/classic/sift/SiftingAppender;

    .line 43
    .local v1, "sa":Lch/qos/logback/classic/sift/SiftingAppender;
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getCopyOfPropertyMap()Ljava/util/Map;

    move-result-object v2

    .line 44
    .local v2, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lch/qos/logback/classic/sift/AppenderFactoryUsingJoran;

    iget-object v4, p0, Lch/qos/logback/classic/sift/SiftAction;->seList:Ljava/util/List;

    invoke-virtual {v1}, Lch/qos/logback/classic/sift/SiftingAppender;->getDiscriminatorKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lch/qos/logback/classic/sift/AppenderFactoryUsingJoran;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    .line 45
    .local v3, "appenderFactory":Lch/qos/logback/classic/sift/AppenderFactoryUsingJoran;
    invoke-virtual {v1, v3}, Lch/qos/logback/classic/sift/SiftingAppender;->setAppenderFactory(Lch/qos/logback/core/sift/AppenderFactory;)V

    .line 47
    .end local v1    # "sa":Lch/qos/logback/classic/sift/SiftingAppender;
    .end local v2    # "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "appenderFactory":Lch/qos/logback/classic/sift/AppenderFactoryUsingJoran;
    :cond_0
    return-void
.end method

.method public getSeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lch/qos/logback/classic/sift/SiftAction;->seList:Ljava/util/List;

    return-object v0
.end method

.method public inPlay(Lch/qos/logback/core/joran/event/SaxEvent;)V
    .locals 1
    .param p1, "event"    # Lch/qos/logback/core/joran/event/SaxEvent;

    .line 50
    iget-object v0, p0, Lch/qos/logback/classic/sift/SiftAction;->seList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method
