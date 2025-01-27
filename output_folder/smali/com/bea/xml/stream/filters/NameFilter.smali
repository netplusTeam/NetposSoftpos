.class public Lcom/bea/xml/stream/filters/NameFilter;
.super Ljava/lang/Object;
.source "NameFilter.java"

# interfaces
.implements Ljavax/xml/stream/EventFilter;
.implements Ljavax/xml/stream/StreamFilter;


# instance fields
.field private name:Ljavax/xml/namespace/QName;


# direct methods
.method public constructor <init>(Ljavax/xml/namespace/QName;)V
    .locals 0
    .param p1, "name"    # Ljavax/xml/namespace/QName;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bea/xml/stream/filters/NameFilter;->name:Ljavax/xml/namespace/QName;

    .line 32
    return-void
.end method


# virtual methods
.method public accept(Ljavax/xml/stream/XMLStreamReader;)Z
    .locals 4
    .param p1, "r"    # Ljavax/xml/stream/XMLStreamReader;

    .line 47
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->isEndElement()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 48
    :cond_0
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v0, "eName":Ljavax/xml/namespace/QName;
    iget-object v2, p0, Lcom/bea/xml/stream/filters/NameFilter;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v2, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    const/4 v1, 0x1

    return v1

    .line 52
    :cond_1
    return v1
.end method

.method public accept(Ljavax/xml/stream/events/XMLEvent;)Z
    .locals 3
    .param p1, "e"    # Ljavax/xml/stream/events/XMLEvent;

    .line 35
    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    .local v0, "eName":Ljavax/xml/namespace/QName;
    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    move-object v2, p1

    check-cast v2, Ljavax/xml/stream/events/StartElement;

    invoke-interface {v2}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_1
    move-object v2, p1

    check-cast v2, Ljavax/xml/stream/events/EndElement;

    invoke-interface {v2}, Ljavax/xml/stream/events/EndElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 41
    :goto_0
    iget-object v2, p0, Lcom/bea/xml/stream/filters/NameFilter;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v2, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    const/4 v1, 0x1

    return v1

    .line 43
    :cond_2
    return v1
.end method
