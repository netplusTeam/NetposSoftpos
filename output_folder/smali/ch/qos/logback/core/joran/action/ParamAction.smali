.class public Lch/qos/logback/core/joran/action/ParamAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "ParamAction.java"


# static fields
.field static NO_NAME:Ljava/lang/String;

.field static NO_VALUE:Ljava/lang/String;


# instance fields
.field private final beanDescriptionCache:Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

.field inError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "No name attribute in <param> element"

    sput-object v0, Lch/qos/logback/core/joran/action/ParamAction;->NO_NAME:Ljava/lang/String;

    .line 24
    const-string v0, "No value attribute in <param> element"

    sput-object v0, Lch/qos/logback/core/joran/action/ParamAction;->NO_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;)V
    .locals 1
    .param p1, "beanDescriptionCache"    # Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    .line 28
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/ParamAction;->inError:Z

    .line 29
    iput-object p1, p0, Lch/qos/logback/core/joran/action/ParamAction;->beanDescriptionCache:Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    .line 30
    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;

    .line 33
    const-string v0, "name"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "value"

    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 37
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/ParamAction;->inError:Z

    .line 38
    sget-object v2, Lch/qos/logback/core/joran/action/ParamAction;->NO_NAME:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lch/qos/logback/core/joran/action/ParamAction;->addError(Ljava/lang/String;)V

    .line 39
    return-void

    .line 42
    :cond_0
    if-nez v1, :cond_1

    .line 43
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/ParamAction;->inError:Z

    .line 44
    sget-object v2, Lch/qos/logback/core/joran/action/ParamAction;->NO_VALUE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lch/qos/logback/core/joran/action/ParamAction;->addError(Ljava/lang/String;)V

    .line 45
    return-void

    .line 49
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v2

    .line 52
    .local v2, "o":Ljava/lang/Object;
    new-instance v3, Lch/qos/logback/core/joran/util/PropertySetter;

    iget-object v4, p0, Lch/qos/logback/core/joran/action/ParamAction;->beanDescriptionCache:Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    invoke-direct {v3, v4, v2}, Lch/qos/logback/core/joran/util/PropertySetter;-><init>(Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;Ljava/lang/Object;)V

    .line 53
    .local v3, "propSetter":Lch/qos/logback/core/joran/util/PropertySetter;
    iget-object v4, p0, Lch/qos/logback/core/joran/action/ParamAction;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v3, v4}, Lch/qos/logback/core/joran/util/PropertySetter;->setContext(Lch/qos/logback/core/Context;)V

    .line 54
    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v3, v0, v1}, Lch/qos/logback/core/joran/util/PropertySetter;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "localName"    # Ljava/lang/String;

    .line 65
    return-void
.end method

.method public finish(Lch/qos/logback/core/joran/spi/InterpretationContext;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;

    .line 68
    return-void
.end method
