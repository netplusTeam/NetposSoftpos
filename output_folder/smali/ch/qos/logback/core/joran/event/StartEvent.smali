.class public Lch/qos/logback/core/joran/event/StartEvent;
.super Lch/qos/logback/core/joran/event/SaxEvent;
.source "StartEvent.java"


# instance fields
.field public final attributes:Lorg/xml/sax/Attributes;

.field public final elementPath:Lch/qos/logback/core/joran/spi/ElementPath;


# direct methods
.method constructor <init>(Lch/qos/logback/core/joran/spi/ElementPath;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "elementPath"    # Lch/qos/logback/core/joran/spi/ElementPath;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "qName"    # Ljava/lang/String;
    .param p5, "attributes"    # Lorg/xml/sax/Attributes;
    .param p6, "locator"    # Lorg/xml/sax/Locator;

    .line 27
    invoke-direct {p0, p2, p3, p4, p6}, Lch/qos/logback/core/joran/event/SaxEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Locator;)V

    .line 29
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0, p5}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    iput-object v0, p0, Lch/qos/logback/core/joran/event/StartEvent;->attributes:Lorg/xml/sax/Attributes;

    .line 30
    iput-object p1, p0, Lch/qos/logback/core/joran/event/StartEvent;->elementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    .line 31
    return-void
.end method


# virtual methods
.method public getAttributes()Lorg/xml/sax/Attributes;
    .locals 1

    .line 34
    iget-object v0, p0, Lch/qos/logback/core/joran/event/StartEvent;->attributes:Lorg/xml/sax/Attributes;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StartEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lch/qos/logback/core/joran/event/StartEvent;->getQName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lch/qos/logback/core/joran/event/StartEvent;->attributes:Lorg/xml/sax/Attributes;

    if-eqz v1, :cond_1

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lch/qos/logback/core/joran/event/StartEvent;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 43
    if-lez v1, :cond_0

    .line 44
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    :cond_0
    iget-object v2, p0, Lch/qos/logback/core/joran/event/StartEvent;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/joran/event/StartEvent;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v3, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "i":I
    :cond_1
    const-string v1, ")  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lch/qos/logback/core/joran/event/StartEvent;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lch/qos/logback/core/joran/event/StartEvent;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
