.class public Lch/qos/logback/core/db/BindDataSourceToJNDIAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "BindDataSourceToJNDIAction.java"


# static fields
.field static final DATA_SOURCE_CLASS:Ljava/lang/String; = "dataSourceClass"

.field static final PASSWORD:Ljava/lang/String; = "password"

.field static final URL:Ljava/lang/String; = "url"

.field static final USER:Ljava/lang/String; = "user"


# instance fields
.field private final beanDescriptionCache:Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;)V
    .locals 0
    .param p1, "beanDescriptionCache"    # Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    .line 41
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    .line 42
    iput-object p1, p0, Lch/qos/logback/core/db/BindDataSourceToJNDIAction;->beanDescriptionCache:Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    .line 43
    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 10
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;

    .line 50
    const-string v0, "dataSourceClass"

    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "dsClassName":Ljava/lang/String;
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "dsClassName is a required parameter"

    invoke-virtual {p0, v1}, Lch/qos/logback/core/db/BindDataSourceToJNDIAction;->addWarn(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->addError(Ljava/lang/String;)V

    .line 56
    return-void

    .line 59
    :cond_0
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "urlStr":Ljava/lang/String;
    const-string/jumbo v3, "user"

    invoke-virtual {p1, v3}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "userStr":Ljava/lang/String;
    const-string/jumbo v5, "password"

    invoke-virtual {p1, v5}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "passwordStr":Ljava/lang/String;
    :try_start_0
    const-class v7, Ljavax/sql/DataSource;

    iget-object v8, p0, Lch/qos/logback/core/db/BindDataSourceToJNDIAction;->context:Lch/qos/logback/core/Context;

    invoke-static {v0, v7, v8}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/sql/DataSource;

    .line 66
    .local v7, "ds":Ljavax/sql/DataSource;
    new-instance v8, Lch/qos/logback/core/joran/util/PropertySetter;

    iget-object v9, p0, Lch/qos/logback/core/db/BindDataSourceToJNDIAction;->beanDescriptionCache:Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    invoke-direct {v8, v9, v7}, Lch/qos/logback/core/joran/util/PropertySetter;-><init>(Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;Ljava/lang/Object;)V

    .line 67
    .local v8, "setter":Lch/qos/logback/core/joran/util/PropertySetter;
    iget-object v9, p0, Lch/qos/logback/core/db/BindDataSourceToJNDIAction;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v8, v9}, Lch/qos/logback/core/joran/util/PropertySetter;->setContext(Lch/qos/logback/core/Context;)V

    .line 69
    invoke-static {v2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 70
    invoke-virtual {v8, v1, v2}, Lch/qos/logback/core/joran/util/PropertySetter;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    invoke-static {v4}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    invoke-virtual {v8, v3, v4}, Lch/qos/logback/core/joran/util/PropertySetter;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_2
    invoke-static {v6}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 78
    invoke-virtual {v8, v5, v6}, Lch/qos/logback/core/joran/util/PropertySetter;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_3
    new-instance v1, Ljavax/naming/InitialContext;

    invoke-direct {v1}, Ljavax/naming/InitialContext;-><init>()V

    .line 82
    .local v1, "ctx":Ljavax/naming/Context;
    const-string v3, "dataSource"

    invoke-interface {v1, v3, v7}, Ljavax/naming/Context;->rebind(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1    # "ctx":Ljavax/naming/Context;
    .end local v7    # "ds":Ljavax/sql/DataSource;
    .end local v8    # "setter":Lch/qos/logback/core/joran/util/PropertySetter;
    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "oops":Ljava/lang/Exception;
    const-string v3, "Could not bind  datasource. Reported error follows."

    invoke-virtual {p0, v3, v1}, Lch/qos/logback/core/db/BindDataSourceToJNDIAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not not bind  datasource of type ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lch/qos/logback/core/joran/spi/InterpretationContext;->addError(Ljava/lang/String;)V

    .line 87
    .end local v1    # "oops":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;

    .line 90
    return-void
.end method
