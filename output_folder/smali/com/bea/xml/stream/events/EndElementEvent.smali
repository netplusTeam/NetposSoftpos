.class public Lcom/bea/xml/stream/events/EndElementEvent;
.super Lcom/bea/xml/stream/events/NamedEvent;
.source "EndElementEvent.java"

# interfaces
.implements Ljavax/xml/stream/events/EndElement;


# instance fields
.field private outOfScopeNamespaces:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/bea/xml/stream/events/NamedEvent;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/EndElementEvent;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;)V
    .locals 0
    .param p1, "name"    # Ljavax/xml/namespace/QName;

    .line 42
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/events/NamedEvent;-><init>(Ljavax/xml/namespace/QName;)V

    .line 43
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/EndElementEvent;->init()V

    .line 44
    return-void
.end method


# virtual methods
.method public addNamespace(Ljavax/xml/stream/events/Namespace;)V
    .locals 1
    .param p1, "n"    # Ljavax/xml/stream/events/Namespace;

    .line 54
    iget-object v0, p0, Lcom/bea/xml/stream/events/EndElementEvent;->outOfScopeNamespaces:Ljava/util/List;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/events/EndElementEvent;->outOfScopeNamespaces:Ljava/util/List;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/events/EndElementEvent;->outOfScopeNamespaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method protected doWriteAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/EndElementEvent;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 77
    .local v0, "name":Ljavax/xml/namespace/QName;
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "prefix":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 79
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 80
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 82
    :cond_0
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 83
    const/16 v2, 0x3e

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 84
    return-void
.end method

.method public getNamespaces()Ljava/util/Iterator;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/bea/xml/stream/events/EndElementEvent;->outOfScopeNamespaces:Ljava/util/List;

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/bea/xml/stream/util/EmptyIterator;->emptyIterator:Lcom/bea/xml/stream/util/EmptyIterator;

    return-object v0

    .line 51
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 1

    .line 46
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/events/EndElementEvent;->setEventType(I)V

    .line 47
    return-void
.end method

.method public reset()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/bea/xml/stream/events/EndElementEvent;->outOfScopeNamespaces:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/events/EndElementEvent;->nameAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/EndElementEvent;->getNamespaces()Ljava/util/Iterator;

    move-result-object v1

    .line 66
    .local v1, "ni":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

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

    .line 68
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    return-object v0
.end method
