.class public Lch/qos/logback/classic/joran/action/InsertFromJNDIAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "InsertFromJNDIAction.java"


# static fields
.field public static final AS_ATTR:Ljava/lang/String; = "as"

.field public static final ENV_ENTRY_NAME_ATTR:Ljava/lang/String; = "env-entry-name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "errorCount":I
    const-string v1, "env-entry-name"

    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "envEntryName":Ljava/lang/String;
    const-string v2, "as"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "asKey":Ljava/lang/String;
    const-string/jumbo v3, "scope"

    invoke-interface {p3, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "scopeStr":Ljava/lang/String;
    invoke-static {v3}, Lch/qos/logback/core/joran/action/ActionUtil;->stringToScope(Ljava/lang/String;)Lch/qos/logback/core/joran/action/ActionUtil$Scope;

    move-result-object v4

    .line 50
    .local v4, "scope":Lch/qos/logback/core/joran/action/ActionUtil$Scope;
    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lch/qos/logback/classic/joran/action/InsertFromJNDIAction;->getLineColStr(Lch/qos/logback/core/joran/spi/InterpretationContext;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "lineColStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[env-entry-name] missing, around "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lch/qos/logback/classic/joran/action/InsertFromJNDIAction;->addError(Ljava/lang/String;)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 56
    .end local v5    # "lineColStr":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    invoke-virtual {p0, p1}, Lch/qos/logback/classic/joran/action/InsertFromJNDIAction;->getLineColStr(Lch/qos/logback/core/joran/spi/InterpretationContext;)Ljava/lang/String;

    move-result-object v5

    .line 58
    .restart local v5    # "lineColStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[as] missing, around "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lch/qos/logback/classic/joran/action/InsertFromJNDIAction;->addError(Ljava/lang/String;)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 62
    .end local v5    # "lineColStr":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 63
    return-void

    .line 67
    :cond_2
    :try_start_0
    invoke-static {}, Lch/qos/logback/classic/util/JNDIUtil;->getInitialContext()Ljavax/naming/Context;

    move-result-object v5

    .line 68
    .local v5, "ctx":Ljavax/naming/Context;
    invoke-static {v5, v1}, Lch/qos/logback/classic/util/JNDIUtil;->lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "envEntryValue":Ljava/lang/String;
    invoke-static {v6}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] has null or empty value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lch/qos/logback/classic/joran/action/InsertFromJNDIAction;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting variable ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] to ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] in ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] scope"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lch/qos/logback/classic/joran/action/InsertFromJNDIAction;->addInfo(Ljava/lang/String;)V

    .line 73
    invoke-static {p1, v2, v6, v4}, Lch/qos/logback/core/joran/action/ActionUtil;->setProperty(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Ljava/lang/String;Lch/qos/logback/core/joran/action/ActionUtil$Scope;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v5    # "ctx":Ljavax/naming/Context;
    :goto_0
    goto :goto_1

    .line 75
    .end local v6    # "envEntryValue":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 76
    .local v5, "e":Ljavax/naming/NamingException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to lookup JNDI env-entry ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lch/qos/logback/classic/joran/action/InsertFromJNDIAction;->addError(Ljava/lang/String;)V

    .line 79
    .end local v5    # "e":Ljavax/naming/NamingException;
    :goto_1
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;

    .line 82
    return-void
.end method
