.class Lcom/itextpdf/forms/xfa/Xml2SomDatasets;
.super Lcom/itextpdf/forms/xfa/Xml2Som;
.source "Xml2SomDatasets.java"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .line 63
    invoke-direct {p0}, Lcom/itextpdf/forms/xfa/Xml2Som;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->order:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->name2Node:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->stack:Ljava/util/Stack;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->anform:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->inverseSearch:Ljava/util/Map;

    .line 69
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->processDatasetsInternal(Lorg/w3c/dom/Node;)V

    .line 70
    return-void
.end method

.method private static hasChildren(Lorg/w3c/dom/Node;)Z
    .locals 5
    .param p0, "n"    # Lorg/w3c/dom/Node;

    .line 118
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "http://www.xfa.org/schema/xfa-data/1.0/"

    const-string v2, "dataNode"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 119
    .local v0, "dataNodeN":Lorg/w3c/dom/Node;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "dataNode":Ljava/lang/String;
    const-string v4, "dataGroup"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    return v1

    .line 123
    :cond_0
    const-string v4, "dataValue"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 124
    return v2

    .line 126
    .end local v3    # "dataNode":Ljava/lang/String;
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-nez v3, :cond_2

    .line 127
    return v2

    .line 128
    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    .line 129
    .local v3, "n2":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v3, :cond_4

    .line 130
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v1, :cond_3

    .line 131
    return v1

    .line 133
    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_0

    .line 135
    :cond_4
    return v2
.end method

.method private processDatasetsInternal(Lorg/w3c/dom/Node;)V
    .locals 8
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .line 139
    if-eqz p1, :cond_3

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v0, "ss":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 142
    .local v1, "n2":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v1, :cond_3

    .line 143
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 144
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->escapeSom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "s":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 146
    .local v4, "i":Ljava/lang/Integer;
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 147
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 149
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 150
    :goto_1
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v6, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->stack:Ljava/util/Stack;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    const-string v3, "%s[%s]"

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {v1}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->hasChildren(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    invoke-direct {p0, v1}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->processDatasetsInternal(Lorg/w3c/dom/Node;)V

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->printStack()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "unstack":Ljava/lang/String;
    iget-object v5, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->order:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p0, v3}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->inverseSearchAdd(Ljava/lang/String;)V

    .line 158
    iget-object v5, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->name2Node:Ljava/util/Map;

    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v5, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->stack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 161
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "unstack":Ljava/lang/String;
    .end local v4    # "i":Ljava/lang/Integer;
    :cond_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 164
    .end local v0    # "ss":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "n2":Lorg/w3c/dom/Node;
    :cond_3
    return-void
.end method


# virtual methods
.method public insertNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 11
    .param p1, "n"    # Lorg/w3c/dom/Node;
    .param p2, "shortName"    # Ljava/lang/String;

    .line 80
    invoke-static {p2}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->splitParts(Ljava/lang/String;)Ljava/util/Stack;

    move-result-object v0

    .line 81
    .local v0, "localStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 82
    .local v1, "doc":Lorg/w3c/dom/Document;
    const/4 v2, 0x0

    .line 83
    .local v2, "n2":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 84
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 85
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_0
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 87
    invoke-virtual {v0, v3}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 88
    .local v5, "part":Ljava/lang/String;
    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 89
    .local v6, "idx":I
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "name":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 91
    const/4 v8, -0x1

    .line 92
    .local v8, "found":I
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_2

    .line 93
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v4, :cond_1

    .line 94
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->escapeSom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "s":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 96
    add-int/lit8 v8, v8, 0x1

    .line 97
    if-ne v8, v6, :cond_1

    .line 98
    goto :goto_3

    .line 92
    .end local v9    # "s":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_2

    .line 102
    :cond_2
    :goto_3
    if-ge v8, v6, :cond_3

    .line 103
    const/4 v9, 0x0

    invoke-interface {v1, v9, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 104
    invoke-interface {p1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 105
    const-string v9, "http://www.xfa.org/schema/xfa-data/1.0/"

    const-string v10, "dataNode"

    invoke-interface {v1, v9, v10}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 106
    .local v9, "attr":Lorg/w3c/dom/Node;
    const-string v10, "dataGroup"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 107
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    invoke-interface {v10, v9}, Lorg/w3c/dom/NamedNodeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 102
    .end local v9    # "attr":Lorg/w3c/dom/Node;
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 109
    :cond_3
    move-object p1, v2

    .line 86
    .end local v5    # "part":Ljava/lang/String;
    .end local v6    # "idx":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "found":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 111
    .end local v3    # "k":I
    :cond_4
    iget-object v3, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->inverseSearch:Ljava/util/Map;

    invoke-static {v3, v0, p2}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->inverseSearchAdd(Ljava/util/Map;Ljava/util/Stack;Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->name2Node:Ljava/util/Map;

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v3, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->order:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-object v2
.end method
