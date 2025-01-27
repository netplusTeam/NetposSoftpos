.class public Lch/qos/logback/core/joran/event/SaxEvent;
.super Ljava/lang/Object;
.source "SaxEvent.java"


# instance fields
.field public final localName:Ljava/lang/String;

.field public final locator:Lorg/xml/sax/Locator;

.field public final namespaceURI:Ljava/lang/String;

.field public final qName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "locator"    # Lorg/xml/sax/Locator;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lch/qos/logback/core/joran/event/SaxEvent;->namespaceURI:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lch/qos/logback/core/joran/event/SaxEvent;->localName:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lch/qos/logback/core/joran/event/SaxEvent;->qName:Ljava/lang/String;

    .line 31
    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0, p4}, Lorg/xml/sax/helpers/LocatorImpl;-><init>(Lorg/xml/sax/Locator;)V

    iput-object v0, p0, Lch/qos/logback/core/joran/event/SaxEvent;->locator:Lorg/xml/sax/Locator;

    .line 32
    return-void
.end method


# virtual methods
.method public getLocalName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEvent;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocator()Lorg/xml/sax/Locator;
    .locals 1

    .line 39
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEvent;->locator:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEvent;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getQName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEvent;->qName:Ljava/lang/String;

    return-object v0
.end method
