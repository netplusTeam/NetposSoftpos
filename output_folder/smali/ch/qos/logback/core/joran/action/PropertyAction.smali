.class public Lch/qos/logback/core/joran/action/PropertyAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "PropertyAction.java"


# static fields
.field static INVALID_ATTRIBUTES:Ljava/lang/String; = null

.field static final RESOURCE_ATTRIBUTE:Ljava/lang/String; = "resource"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "In <property> element, either the \"file\" attribute alone, or the \"resource\" element alone, or both the \"name\" and \"value\" attributes must be set."

    sput-object v0, Lch/qos/logback/core/joran/action/PropertyAction;->INVALID_ATTRIBUTES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 10
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;

    .line 55
    const-string/jumbo v0, "substitutionProperty"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "[substitutionProperty] element has been deprecated. Please use the [property] element instead."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/PropertyAction;->addWarn(Ljava/lang/String;)V

    .line 59
    :cond_0
    const-string v0, "name"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "value"

    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "scope"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "scopeStr":Ljava/lang/String;
    invoke-static {v2}, Lch/qos/logback/core/joran/action/ActionUtil;->stringToScope(Ljava/lang/String;)Lch/qos/logback/core/joran/action/ActionUtil$Scope;

    move-result-object v3

    .line 65
    .local v3, "scope":Lch/qos/logback/core/joran/action/ActionUtil$Scope;
    invoke-virtual {p0, p3}, Lch/qos/logback/core/joran/action/PropertyAction;->checkFileAttributeSanity(Lorg/xml/sax/Attributes;)Z

    move-result v4

    const-string v5, "]."

    if-eqz v4, :cond_1

    .line 66
    const-string v4, "file"

    invoke-interface {p3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "file":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 70
    .local v6, "istream":Ljava/io/FileInputStream;
    invoke-virtual {p0, p1, v6, v3}, Lch/qos/logback/core/joran/action/PropertyAction;->loadAndSetProperties(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/io/InputStream;Lch/qos/logback/core/joran/action/ActionUtil$Scope;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "istream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 73
    :catch_0
    move-exception v6

    .line 74
    .local v6, "e1":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not read properties file ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v6}, Lch/qos/logback/core/joran/action/PropertyAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 71
    .end local v6    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 72
    .local v6, "e":Ljava/io/FileNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find properties file ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lch/qos/logback/core/joran/action/PropertyAction;->addError(Ljava/lang/String;)V

    .line 75
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 76
    .end local v4    # "file":Ljava/lang/String;
    :goto_1
    goto :goto_3

    :cond_1
    invoke-virtual {p0, p3}, Lch/qos/logback/core/joran/action/PropertyAction;->checkResourceAttributeSanity(Lorg/xml/sax/Attributes;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    const-string/jumbo v4, "resource"

    invoke-interface {p3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "resource":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-static {v4}, Lch/qos/logback/core/util/Loader;->getResourceBySelfClassLoader(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    .line 80
    .local v6, "resourceURL":Ljava/net/URL;
    if-nez v6, :cond_2

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find resource ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lch/qos/logback/core/joran/action/PropertyAction;->addError(Ljava/lang/String;)V

    goto :goto_2

    .line 84
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    .line 85
    .local v7, "istream":Ljava/io/InputStream;
    invoke-virtual {p0, p1, v7, v3}, Lch/qos/logback/core/joran/action/PropertyAction;->loadAndSetProperties(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/io/InputStream;Lch/qos/logback/core/joran/action/ActionUtil$Scope;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 88
    .end local v7    # "istream":Ljava/io/InputStream;
    goto :goto_2

    .line 86
    :catch_2
    move-exception v7

    .line 87
    .local v7, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not read resource file ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v7}, Lch/qos/logback/core/joran/action/PropertyAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .end local v4    # "resource":Ljava/lang/String;
    .end local v6    # "resourceURL":Ljava/net/URL;
    .end local v7    # "e":Ljava/io/IOException;
    :goto_2
    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lch/qos/logback/core/joran/action/PropertyAction;->checkValueNameAttributesSanity(Lorg/xml/sax/Attributes;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 91
    invoke-static {v1}, Lch/qos/logback/core/pattern/util/RegularEscapeUtil;->basicEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {p1, v0, v1, v3}, Lch/qos/logback/core/joran/action/ActionUtil;->setProperty(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Ljava/lang/String;Lch/qos/logback/core/joran/action/ActionUtil$Scope;)V

    goto :goto_3

    .line 98
    :cond_4
    sget-object v4, Lch/qos/logback/core/joran/action/PropertyAction;->INVALID_ATTRIBUTES:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lch/qos/logback/core/joran/action/PropertyAction;->addError(Ljava/lang/String;)V

    .line 100
    :goto_3
    return-void
.end method

.method checkFileAttributeSanity(Lorg/xml/sax/Attributes;)Z
    .locals 5
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .line 110
    const-string v0, "file"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "file":Ljava/lang/String;
    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "value"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v3, "resource"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "resource":Ljava/lang/String;
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method checkResourceAttributeSanity(Lorg/xml/sax/Attributes;)Z
    .locals 5
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .line 119
    const-string v0, "file"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "file":Ljava/lang/String;
    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "value"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v3, "resource"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "resource":Ljava/lang/String;
    invoke-static {v3}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method checkValueNameAttributesSanity(Lorg/xml/sax/Attributes;)Z
    .locals 5
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .line 128
    const-string v0, "file"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "file":Ljava/lang/String;
    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "value"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v3, "resource"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "resource":Ljava/lang/String;
    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;

    .line 137
    return-void
.end method

.method public finish(Lch/qos/logback/core/joran/spi/InterpretationContext;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;

    .line 140
    return-void
.end method

.method loadAndSetProperties(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/io/InputStream;Lch/qos/logback/core/joran/action/ActionUtil$Scope;)V
    .locals 1
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "istream"    # Ljava/io/InputStream;
    .param p3, "scope"    # Lch/qos/logback/core/joran/action/ActionUtil$Scope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 104
    .local v0, "props":Ljava/util/Properties;
    invoke-virtual {v0, p2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 105
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 106
    invoke-static {p1, v0, p3}, Lch/qos/logback/core/joran/action/ActionUtil;->setProperties(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/util/Properties;Lch/qos/logback/core/joran/action/ActionUtil$Scope;)V

    .line 107
    return-void
.end method
