.class public Lcom/bea/xml/stream/events/StartElementEvent;
.super Lcom/bea/xml/stream/events/NamedEvent;
.source "StartElementEvent.java"

# interfaces
.implements Ljavax/xml/stream/events/StartElement;


# instance fields
.field private attributes:Ljava/util/List;

.field private context:Ljavax/xml/namespace/NamespaceContext;

.field private namespaces:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/bea/xml/stream/events/NamedEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;)V
    .locals 0
    .param p1, "name"    # Ljavax/xml/namespace/QName;

    .line 44
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/events/NamedEvent;-><init>(Ljavax/xml/namespace/QName;)V

    .line 45
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/StartElementEvent;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/events/StartElement;)V
    .locals 3
    .param p1, "element"    # Ljavax/xml/stream/events/StartElement;

    .line 54
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/events/NamedEvent;-><init>(Ljavax/xml/namespace/QName;)V

    .line 55
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/StartElementEvent;->init()V

    .line 56
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/events/StartElementEvent;->setName(Ljavax/xml/namespace/QName;)V

    .line 58
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v0

    .line 59
    .local v0, "ai":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Attribute;

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/events/StartElementEvent;->addAttribute(Ljavax/xml/stream/events/Attribute;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v1

    .line 63
    .local v1, "ni":Ljava/util/Iterator;
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v1

    .line 64
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/stream/events/Namespace;

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/events/StartElementEvent;->addNamespace(Ljavax/xml/stream/events/Namespace;)V

    goto :goto_1

    .line 66
    :cond_1
    return-void
.end method


# virtual methods
.method public addAttribute(Ljavax/xml/stream/events/Attribute;)V
    .locals 1
    .param p1, "attribute"    # Ljavax/xml/stream/events/Attribute;

    .line 91
    iget-object v0, p0, Lcom/bea/xml/stream/events/StartElementEvent;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/events/StartElementEvent;->attributes:Ljava/util/List;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/events/StartElementEvent;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public addNamespace(Ljavax/xml/stream/events/Namespace;)V
    .locals 1
    .param p1, "attribute"    # Ljavax/xml/stream/events/Namespace;

    .line 96
    iget-object v0, p0, Lcom/bea/xml/stream/events/StartElementEvent;->namespaces:Ljava/util/List;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/events/StartElementEvent;->namespaces:Ljava/util/List;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/events/StartElementEvent;->namespaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method protected doWriteAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 128
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 129
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/StartElementEvent;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 130
    .local v0, "name":Ljavax/xml/namespace/QName;
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "prefix":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 132
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 133
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 135
    :cond_0
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/StartElementEvent;->getNamespaces()Ljava/util/Iterator;

    move-result-object v2

    .line 139
    .local v2, "ni":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_1

    .line 140
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/stream/events/XMLEvent;

    .line 143
    .local v3, "evt":Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v3, p1}, Ljavax/xml/stream/events/XMLEvent;->writeAsEncodedUnicode(Ljava/io/Writer;)V

    .line 144
    .end local v3    # "evt":Ljavax/xml/stream/events/XMLEvent;
    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/StartElementEvent;->getAttributes()Ljava/util/Iterator;

    move-result-object v3

    .line 148
    .local v3, "ai":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 149
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 150
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/xml/stream/events/XMLEvent;

    .line 151
    .local v5, "evt":Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v5, p1}, Ljavax/xml/stream/events/XMLEvent;->writeAsEncodedUnicode(Ljava/io/Writer;)V

    .line 152
    .end local v5    # "evt":Ljavax/xml/stream/events/XMLEvent;
    goto :goto_1

    .line 154
    :cond_2
    const/16 v4, 0x3e

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 155
    return-void
.end method

.method public getAttributeByName(Ljavax/xml/namespace/QName;)Ljavax/xml/stream/events/Attribute;
    .locals 4
    .param p1, "name"    # Ljavax/xml/namespace/QName;

    .line 78
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/StartElementEvent;->getAttributes()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/stream/events/Attribute;

    .line 82
    .local v2, "a":Ljavax/xml/stream/events/Attribute;
    invoke-interface {v2}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    return-object v2

    .line 84
    .end local v2    # "a":Ljavax/xml/stream/events/Attribute;
    :cond_1
    goto :goto_0

    .line 85
    :cond_2
    return-object v0
.end method

.method public getAttributes()Ljava/util/Iterator;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/bea/xml/stream/events/StartElementEvent;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lcom/bea/xml/stream/util/EmptyIterator;->emptyIterator:Lcom/bea/xml/stream/util/EmptyIterator;

    return-object v0

    .line 70
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/bea/xml/stream/events/StartElementEvent;->context:Ljavax/xml/namespace/NamespaceContext;

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/bea/xml/stream/events/StartElementEvent;->context:Ljavax/xml/namespace/NamespaceContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    invoke-interface {v0, p1}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaces()Ljava/util/Iterator;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/bea/xml/stream/events/StartElementEvent;->namespaces:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lcom/bea/xml/stream/util/EmptyIterator;->emptyIterator:Lcom/bea/xml/stream/util/EmptyIterator;

    return-object v0

    .line 74
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 1

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/events/StartElementEvent;->setEventType(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/bea/xml/stream/events/StartElementEvent;->attributes:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/events/StartElementEvent;->namespaces:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/bea/xml/stream/events/StartElementEvent;->context:Ljavax/xml/namespace/NamespaceContext;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bea/xml/stream/events/StartElementEvent;->context:Ljavax/xml/namespace/NamespaceContext;

    .line 52
    :cond_2
    return-void
.end method

.method public setAttributes(Ljava/util/List;)V
    .locals 0
    .param p1, "attributes"    # Ljava/util/List;

    .line 88
    iput-object p1, p0, Lcom/bea/xml/stream/events/StartElementEvent;->attributes:Ljava/util/List;

    .line 89
    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 0
    .param p1, "c"    # Ljavax/xml/namespace/NamespaceContext;

    .line 106
    iput-object p1, p0, Lcom/bea/xml/stream/events/StartElementEvent;->context:Ljavax/xml/namespace/NamespaceContext;

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 113
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/events/StartElementEvent;->nameAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/StartElementEvent;->getAttributes()Ljava/util/Iterator;

    move-result-object v1

    .line 115
    .local v1, "ai":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_0

    .line 116
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/StartElementEvent;->getNamespaces()Ljava/util/Iterator;

    move-result-object v2

    .line 118
    .local v2, "ni":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 121
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    return-object v0
.end method
