.class public abstract Lch/qos/logback/core/joran/action/Action;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "Action.java"


# static fields
.field public static final ACTION_CLASS_ATTRIBUTE:Ljava/lang/String; = "actionClass"

.field public static final CLASS_ATTRIBUTE:Ljava/lang/String; = "class"

.field public static final FILE_ATTRIBUTE:Ljava/lang/String; = "file"

.field public static final KEY_ATTRIBUTE:Ljava/lang/String; = "key"

.field public static final NAME_ATTRIBUTE:Ljava/lang/String; = "name"

.field public static final PATTERN_ATTRIBUTE:Ljava/lang/String; = "pattern"

.field public static final SCOPE_ATTRIBUTE:Ljava/lang/String; = "scope"

.field public static final VALUE_ATTRIBUTE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation
.end method

.method public body(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "ic"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public abstract end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation
.end method

.method protected getColumnNumber(Lch/qos/logback/core/joran/spi/InterpretationContext;)I
    .locals 3
    .param p1, "ic"    # Lch/qos/logback/core/joran/spi/InterpretationContext;

    .line 77
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getJoranInterpreter()Lch/qos/logback/core/joran/spi/Interpreter;

    move-result-object v0

    .line 78
    .local v0, "ji":Lch/qos/logback/core/joran/spi/Interpreter;
    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/Interpreter;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v1

    .line 79
    .local v1, "locator":Lorg/xml/sax/Locator;
    if-eqz v1, :cond_0

    .line 80
    invoke-interface {v1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v2

    return v2

    .line 82
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method protected getLineColStr(Lch/qos/logback/core/joran/spi/InterpretationContext;)Ljava/lang/String;
    .locals 2
    .param p1, "ic"    # Lch/qos/logback/core/joran/spi/InterpretationContext;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/action/Action;->getLineNumber(Lch/qos/logback/core/joran/spi/InterpretationContext;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", column: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/action/Action;->getColumnNumber(Lch/qos/logback/core/joran/spi/InterpretationContext;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLineNumber(Lch/qos/logback/core/joran/spi/InterpretationContext;)I
    .locals 3
    .param p1, "ic"    # Lch/qos/logback/core/joran/spi/InterpretationContext;

    .line 86
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getJoranInterpreter()Lch/qos/logback/core/joran/spi/Interpreter;

    move-result-object v0

    .line 87
    .local v0, "ji":Lch/qos/logback/core/joran/spi/Interpreter;
    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/Interpreter;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v1

    .line 88
    .local v1, "locator":Lorg/xml/sax/Locator;
    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    return v2

    .line 91
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
