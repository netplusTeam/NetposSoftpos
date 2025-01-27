.class public Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;
.super Lorg/xmlpull/v1/builder/XmlPullBuilder;
.source "XmlPullBuilderImpl.java"


# static fields
.field private static final PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

.field private static final PROPERTY_XMLDECL_VERSION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;-><init>()V

    return-void
.end method

.method private parseDocumentStart(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlDocument;
    .locals 5
    .param p1, "pp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "doc":Lorg/xmlpull/v1/builder/XmlDocument;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 115
    const-string v2, "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 116
    .local v1, "xmlDeclVersion":Ljava/lang/String;
    const-string v2, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 117
    .local v2, "xmlDeclStandalone":Ljava/lang/Boolean;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "characterEncoding":Ljava/lang/String;
    new-instance v4, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;

    invoke-direct {v4, v1, v2, v3}, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    move-object v0, v4

    .line 119
    .end local v1    # "xmlDeclVersion":Ljava/lang/String;
    .end local v2    # "xmlDeclStandalone":Ljava/lang/Boolean;
    .end local v3    # "characterEncoding":Ljava/lang/String;
    nop

    .line 124
    return-object v0

    .line 110
    :cond_0
    new-instance v2, Lorg/xmlpull/v1/builder/XmlBuilderException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "parser must be positioned on beginning of document and not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .end local v0    # "doc":Lorg/xmlpull/v1/builder/XmlDocument;
    .end local p1    # "pp":Lorg/xmlpull/v1/XmlPullParser;
    throw v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .restart local v0    # "doc":Lorg/xmlpull/v1/builder/XmlDocument;
    .restart local p1    # "pp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v4, "could not read XML document prolog"

    invoke-direct {v3, v4, v2}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 120
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v3, "could not parse XML document prolog"

    invoke-direct {v2, v3, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private serializeContainer(Lorg/xmlpull/v1/builder/XmlContainer;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "node"    # Lorg/xmlpull/v1/builder/XmlContainer;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlSerializable;

    if-eqz v0, :cond_0

    .line 230
    move-object v0, p1

    check-cast v0, Lorg/xmlpull/v1/builder/XmlSerializable;

    invoke-interface {v0, p2}, Lorg/xmlpull/v1/builder/XmlSerializable;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 231
    :cond_0
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlDocument;

    if-eqz v0, :cond_1

    .line 232
    move-object v0, p1

    check-cast v0, Lorg/xmlpull/v1/builder/XmlDocument;

    invoke-direct {p0, v0, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeDocument(Lorg/xmlpull/v1/builder/XmlDocument;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 233
    :cond_1
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlElement;

    if-eqz v0, :cond_2

    .line 234
    move-object v0, p1

    check-cast v0, Lorg/xmlpull/v1/builder/XmlElement;

    invoke-direct {p0, v0, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeFragment(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 239
    :goto_0
    return-void

    .line 236
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "could not serialzie unknown XML container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private serializeDocument(Lorg/xmlpull/v1/builder/XmlDocument;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "doc"    # Lorg/xmlpull/v1/builder/XmlDocument;
    .param p2, "ser"    # Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlDocument;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlDocument;->isStandalone()Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    nop

    .line 300
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlDocument;->getDocumentElement()Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeFragment(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 302
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 303
    nop

    .line 306
    return-void

    .line 304
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v2, "serializing XML document end failed"

    invoke-direct {v1, v2, v0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 298
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v2, "serialziing XML document start failed"

    invoke-direct {v1, v2, v0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private serializeFragment(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "el"    # Lorg/xmlpull/v1/builder/XmlElement;
    .param p2, "ser"    # Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    invoke-virtual {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeStartTag(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 312
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->children()Ljava/util/Iterator;

    move-result-object v0

    .line 314
    .local v0, "iter":Ljava/util/Iterator;
    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 316
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 317
    .local v1, "child":Ljava/lang/Object;
    instance-of v2, v1, Lorg/xmlpull/v1/builder/XmlSerializable;

    if-eqz v2, :cond_1

    .line 318
    move-object v2, v1

    check-cast v2, Lorg/xmlpull/v1/builder/XmlSerializable;

    invoke-interface {v2, p2}, Lorg/xmlpull/v1/builder/XmlSerializable;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 319
    :cond_1
    instance-of v2, v1, Lorg/xmlpull/v1/builder/XmlElement;

    if-eqz v2, :cond_2

    .line 320
    move-object v2, v1

    check-cast v2, Lorg/xmlpull/v1/builder/XmlElement;

    invoke-direct {p0, v2, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeFragment(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {p0, v1, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeItem(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 329
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v1    # "child":Ljava/lang/Object;
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeEndTag(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 330
    return-void
.end method


# virtual methods
.method public newDocument(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDocument;
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .param p3, "characterEncoding"    # Ljava/lang/String;

    .line 42
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-object v0
.end method

.method public newFragment(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 3
    .param p1, "elementName"    # Ljava/lang/String;

    .line 47
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lorg/xmlpull/v1/builder/XmlNamespace;

    invoke-direct {v0, v1, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;-><init>(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)V

    return-object v0
.end method

.method public newFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "elementNamespaceName"    # Ljava/lang/String;
    .param p2, "elementName"    # Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;

    invoke-direct {v0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newFragment(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "elementNamespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;
    .param p2, "elementName"    # Ljava/lang/String;

    .line 57
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;

    invoke-direct {v0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;-><init>(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)V

    return-object v0
.end method

.method public newNamespace(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 2
    .param p1, "namespaceName"    # Ljava/lang/String;

    .line 65
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceName"    # Ljava/lang/String;

    .line 70
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;

    invoke-direct {v0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlDocument;
    .locals 2
    .param p1, "pp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 75
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->parseDocumentStart(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlDocument;

    move-result-object v0

    .line 76
    .local v0, "doc":Lorg/xmlpull/v1/builder/XmlDocument;
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->parseFragment(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v1

    .line 77
    .local v1, "root":Lorg/xmlpull/v1/builder/XmlElement;
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/builder/XmlDocument;->setDocumentElement(Lorg/xmlpull/v1/builder/XmlElement;)V

    .line 79
    return-object v0
.end method

.method public parseFragment(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 4

    .line 133
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 134
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 140
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    .line 141
    nop

    .line 142
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 143
    if-ne v2, v1, :cond_1

    .line 144
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v2

    .line 145
    invoke-interface {v0, v2}, Lorg/xmlpull/v1/builder/XmlElement;->addChild(Ljava/lang/Object;)V

    .line 146
    move-object v0, v2

    goto :goto_0

    .line 147
    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 148
    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->getParent()Lorg/xmlpull/v1/builder/XmlContainer;

    move-result-object v2

    .line 149
    if-nez v2, :cond_2

    .line 150
    return-object v0

    .line 152
    :cond_2
    move-object v0, v2

    check-cast v0, Lorg/xmlpull/v1/builder/XmlElement;

    goto :goto_0

    .line 155
    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 156
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/builder/XmlElement;->addChild(Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_4
    new-instance v1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected parser to be on start tag and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :catch_0
    move-exception p1

    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "could not read XML tree content"

    invoke-direct {v0, v1, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 160
    :catch_1
    move-exception p1

    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "could not build tree from XML"

    invoke-direct {v0, v1, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public parseItem(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 4
    .param p1, "pp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 85
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 86
    .local v0, "eventType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v1

    return-object v1

    .line 88
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 89
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 90
    :cond_1
    if-nez v0, :cond_2

    .line 91
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->parseDocumentStart(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlDocument;

    move-result-object v1

    return-object v1

    .line 93
    :cond_2
    new-instance v1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "currently unsupported event type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .end local p1    # "pp":Lorg/xmlpull/v1/XmlPullParser;
    throw v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0    # "eventType":I
    .restart local p1    # "pp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v2, "could not parse XML item"

    invoke-direct {v1, v2, v0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseLocation(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDocument;
    .locals 5
    .param p1, "locationUrl"    # Ljava/lang/String;

    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "url":Ljava/net/URL;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 208
    nop

    .line 212
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->parseInputStream(Ljava/io/InputStream;)Lorg/xmlpull/v1/builder/XmlDocument;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 214
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xmlpull/v1/builder/XmlBuilderException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "could not open connection to URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 209
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v2, Lorg/xmlpull/v1/builder/XmlBuilderException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "could not parse URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 11
    .param p1, "pp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 170
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 175
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v0, "el":Lorg/xmlpull/v1/builder/XmlElement;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v1

    .line 178
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 185
    const/4 v3, 0x0

    move v10, v3

    .local v10, "i":I
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-lt v10, v3, :cond_0

    .line 194
    return-object v0

    .line 187
    :cond_0
    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlPullParser;->isAttributeDefault(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v9, v2

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    move v9, v3

    :goto_2
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lorg/xmlpull/v1/builder/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

    .line 185
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 181
    .end local v10    # "i":I
    :cond_2
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "prefix":Ljava/lang/String;
    if-nez v3, :cond_3

    const-string v4, ""

    goto :goto_3

    :cond_3
    move-object v4, v3

    :goto_3
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/builder/XmlElement;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 178
    nop

    .end local v3    # "prefix":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "el":Lorg/xmlpull/v1/builder/XmlElement;
    .end local v1    # "i":I
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "parser must be on START_TAG and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .end local p1    # "pp":Lorg/xmlpull/v1/XmlPullParser;
    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .restart local p1    # "pp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v2, "could not parse XML start tag"

    invoke-direct {v1, v2, v0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public serialize(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlContainer;

    if-eqz v0, :cond_0

    .line 221
    move-object v0, p1

    check-cast v0, Lorg/xmlpull/v1/builder/XmlContainer;

    invoke-direct {p0, v0, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeContainer(Lorg/xmlpull/v1/builder/XmlContainer;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeItem(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 225
    :goto_0
    return-void
.end method

.method public serializeEndTag(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "el"    # Lorg/xmlpull/v1/builder/XmlElement;
    .param p2, "ser"    # Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->getNamespaceName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    nop

    .line 289
    return-void

    .line 287
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v2, "serializing XML end tag failed"

    invoke-direct {v1, v2, v0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public serializeItem(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "ser"    # Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    :try_start_0
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlSerializable;

    if-eqz v0, :cond_0

    .line 245
    move-object v0, p1

    check-cast v0, Lorg/xmlpull/v1/builder/XmlSerializable;

    invoke-interface {v0, p2}, Lorg/xmlpull/v1/builder/XmlSerializable;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 246
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 248
    :cond_1
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlComment;

    if-eqz v0, :cond_2

    .line 249
    move-object v0, p1

    check-cast v0, Lorg/xmlpull/v1/builder/XmlComment;

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlComment;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 253
    :goto_0
    nop

    .line 256
    return-void

    .line 251
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "could not serialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "item":Ljava/lang/Object;
    .end local p2    # "ser":Lorg/xmlpull/v1/XmlSerializer;
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .restart local p1    # "item":Ljava/lang/Object;
    .restart local p2    # "ser":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v2, "serializing XML start tag failed"

    invoke-direct {v1, v2, v0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public serializeStartTag(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "el"    # Lorg/xmlpull/v1/builder/XmlElement;
    .param p2, "ser"    # Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->hasNamespaceDeclarations()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->namespaces()Ljava/util/Iterator;

    move-result-object v0

    .line 263
    .local v0, "iter":Ljava/util/Iterator;
    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 265
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 266
    .local v1, "n":Lorg/xmlpull/v1/builder/XmlNamespace;
    invoke-interface {v1}, Lorg/xmlpull/v1/builder/XmlNamespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/xmlpull/v1/builder/XmlNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v1    # "n":Lorg/xmlpull/v1/builder/XmlNamespace;
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->getNamespaceName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 270
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->attributes()Ljava/util/Iterator;

    move-result-object v0

    .line 272
    .restart local v0    # "iter":Ljava/util/Iterator;
    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_3

    .line 274
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xmlpull/v1/builder/XmlAttribute;

    .line 275
    .local v1, "a":Lorg/xmlpull/v1/builder/XmlAttribute;
    invoke-interface {v1}, Lorg/xmlpull/v1/builder/XmlAttribute;->getNamespaceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/xmlpull/v1/builder/XmlAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/xmlpull/v1/builder/XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 278
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v1    # "a":Lorg/xmlpull/v1/builder/XmlAttribute;
    :cond_3
    :goto_3
    nop

    .line 281
    return-void

    .line 279
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v2, "serializing XML start tag failed"

    invoke-direct {v1, v2, v0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
