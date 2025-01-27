.class public abstract Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;
.super Lch/qos/logback/core/joran/GenericConfigurator;
.source "SiftingJoranConfiguratorBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/joran/GenericConfigurator;"
    }
.end annotation


# static fields
.field static final ONE_AND_ONLY_ONE_URL:Ljava/lang/String; = "http://logback.qos.ch/codes.html#1andOnly1"


# instance fields
.field errorEmmissionCount:I

.field protected final key:Ljava/lang/String;

.field protected final parentPropertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final value:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;, "Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase<TE;>;"
    .local p3, "parentPropertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lch/qos/logback/core/joran/GenericConfigurator;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->errorEmmissionCount:I

    .line 37
    iput-object p1, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->key:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->value:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->parentPropertyMap:Ljava/util/Map;

    .line 40
    return-void
.end method


# virtual methods
.method protected addImplicitRules(Lch/qos/logback/core/joran/spi/Interpreter;)V
    .locals 3
    .param p1, "interpreter"    # Lch/qos/logback/core/joran/spi/Interpreter;

    .line 46
    .local p0, "this":Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;, "Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase<TE;>;"
    new-instance v0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;

    invoke-virtual {p0}, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->getBeanDescriptionCache()Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;-><init>(Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;)V

    .line 47
    .local v0, "nestedComplexIA":Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;
    iget-object v1, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->setContext(Lch/qos/logback/core/Context;)V

    .line 48
    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/Interpreter;->addImplicitAction(Lch/qos/logback/core/joran/action/ImplicitAction;)V

    .line 50
    new-instance v1, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;

    invoke-virtual {p0}, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->getBeanDescriptionCache()Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;-><init>(Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;)V

    .line 51
    .local v1, "nestedSimpleIA":Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;
    iget-object v2, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v1, v2}, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;->setContext(Lch/qos/logback/core/Context;)V

    .line 52
    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/Interpreter;->addImplicitAction(Lch/qos/logback/core/joran/action/ImplicitAction;)V

    .line 53
    return-void
.end method

.method protected addInstanceRules(Lch/qos/logback/core/joran/spi/RuleStore;)V
    .locals 2
    .param p1, "rs"    # Lch/qos/logback/core/joran/spi/RuleStore;

    .line 57
    .local p0, "this":Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;, "Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase<TE;>;"
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/property"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/PropertyAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/PropertyAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 58
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/timestamp"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/TimestampAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/TimestampAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 59
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/define"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/DefinePropertyAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/DefinePropertyAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 60
    return-void
.end method

.method public doConfigure(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 82
    .local p0, "this":Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;, "Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase<TE;>;"
    .local p1, "eventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    invoke-super {p0, p1}, Lch/qos/logback/core/joran/GenericConfigurator;->doConfigure(Ljava/util/List;)V

    .line 83
    return-void
.end method

.method public abstract getAppender()Lch/qos/logback/core/Appender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/Appender<",
            "TE;>;"
        }
    .end annotation
.end method

.method protected oneAndOnlyOneCheck(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;, "Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase<TE;>;"
    .local p1, "appenderMap":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v0, 0x0

    .line 68
    .local v0, "errMsg":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 69
    iget v1, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->errorEmmissionCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->errorEmmissionCount:I

    .line 70
    const-string v0, "No nested appenders found within the <sift> element in SiftingAppender."

    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 72
    iget v1, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->errorEmmissionCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->errorEmmissionCount:I

    .line 73
    const-string v0, "Only and only one appender can be nested the <sift> element in SiftingAppender. See also http://logback.qos.ch/codes.html#1andOnly1"

    .line 76
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->errorEmmissionCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 77
    invoke-virtual {p0, v0}, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->addError(Ljava/lang/String;)V

    .line 79
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    .local p0, "this":Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;, "Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
