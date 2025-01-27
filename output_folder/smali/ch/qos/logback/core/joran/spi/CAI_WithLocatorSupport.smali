.class Lch/qos/logback/core/joran/spi/CAI_WithLocatorSupport;
.super Lch/qos/logback/core/spi/ContextAwareImpl;
.source "Interpreter.java"


# direct methods
.method constructor <init>(Lch/qos/logback/core/Context;Lch/qos/logback/core/joran/spi/Interpreter;)V
    .locals 0
    .param p1, "context"    # Lch/qos/logback/core/Context;
    .param p2, "interpreter"    # Lch/qos/logback/core/joran/spi/Interpreter;

    .line 336
    invoke-direct {p0, p1, p2}, Lch/qos/logback/core/spi/ContextAwareImpl;-><init>(Lch/qos/logback/core/Context;Ljava/lang/Object;)V

    .line 337
    return-void
.end method


# virtual methods
.method protected getOrigin()Ljava/lang/Object;
    .locals 4

    .line 341
    invoke-super {p0}, Lch/qos/logback/core/spi/ContextAwareImpl;->getOrigin()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/spi/Interpreter;

    .line 342
    .local v0, "i":Lch/qos/logback/core/joran/spi/Interpreter;
    iget-object v1, v0, Lch/qos/logback/core/joran/spi/Interpreter;->locator:Lorg/xml/sax/Locator;

    .line 343
    .local v1, "locator":Lorg/xml/sax/Locator;
    if-eqz v1, :cond_0

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 346
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@NA:NA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
