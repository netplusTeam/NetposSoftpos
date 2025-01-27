.class public Lorg/jdom2/input/DOMBuilder;
.super Ljava/lang/Object;
.source "DOMBuilder.java"


# instance fields
.field private factory:Lorg/jdom2/JDOMFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lorg/jdom2/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    iput-object v0, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    .line 113
    return-void
.end method

.method private buildTree(Lorg/w3c/dom/Node;Lorg/jdom2/Document;Lorg/jdom2/Element;Z)V
    .locals 26
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "doc"    # Lorg/jdom2/Document;
    .param p3, "current"    # Lorg/jdom2/Element;
    .param p4, "atRoot"    # Z

    .line 248
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_10

    :pswitch_1
    move-object v3, v5

    .local v3, "nodeName":Ljava/lang/String;
    move-object v6, v5

    .local v6, "children":Lorg/w3c/dom/NodeList;
    move v7, v4

    .local v7, "attsize":I
    move-object v8, v5

    .local v8, "element":Lorg/jdom2/Element;
    move-object v9, v5

    .local v9, "attributeList":Lorg/w3c/dom/NamedNodeMap;
    move-object v10, v5

    .local v4, "colon":I
    .local v10, "localName":Ljava/lang/String;
    move-object v11, v5

    .local v11, "uri":Ljava/lang/String;
    move-object v12, v5

    .local v12, "ns":Lorg/jdom2/Namespace;
    move-object v13, v5

    .line 468
    .local v5, "nodes":Lorg/w3c/dom/NodeList;
    .local v13, "prefix":Ljava/lang/String;
    iget-object v14, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v15, p1

    check-cast v15, Lorg/w3c/dom/DocumentType;

    invoke-virtual {v0, v15}, Lorg/jdom2/input/DOMBuilder;->build(Lorg/w3c/dom/DocumentType;)Lorg/jdom2/DocType;

    move-result-object v15

    invoke-interface {v14, v1, v15}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto/16 :goto_10

    .line 250
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "colon":I
    .end local v5    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v6    # "children":Lorg/w3c/dom/NodeList;
    .end local v7    # "attsize":I
    .end local v8    # "element":Lorg/jdom2/Element;
    .end local v9    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "localName":Ljava/lang/String;
    .end local v11    # "uri":Ljava/lang/String;
    .end local v12    # "ns":Lorg/jdom2/Namespace;
    .end local v13    # "prefix":Ljava/lang/String;
    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 251
    .local v3, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 252
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v0, v6, v1, v2, v7}, Lorg/jdom2/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom2/Document;Lorg/jdom2/Element;Z)V

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 254
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_0
    goto/16 :goto_10

    .line 248
    .end local v3    # "nodes":Lorg/w3c/dom/NodeList;
    :pswitch_3
    move-object v3, v5

    .local v3, "nodeName":Ljava/lang/String;
    move-object v6, v5

    .restart local v6    # "children":Lorg/w3c/dom/NodeList;
    move v7, v4

    .restart local v7    # "attsize":I
    move-object v8, v5

    .restart local v8    # "element":Lorg/jdom2/Element;
    move-object v9, v5

    .restart local v9    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    move-object v10, v5

    .local v4, "colon":I
    .restart local v10    # "localName":Ljava/lang/String;
    move-object v11, v5

    .restart local v11    # "uri":Ljava/lang/String;
    move-object v12, v5

    .restart local v12    # "ns":Lorg/jdom2/Namespace;
    move-object v13, v5

    .line 451
    .local v5, "nodes":Lorg/w3c/dom/NodeList;
    .restart local v13    # "prefix":Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 452
    iget-object v14, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v15, p1

    check-cast v15, Lorg/w3c/dom/Comment;

    invoke-virtual {v0, v15}, Lorg/jdom2/input/DOMBuilder;->build(Lorg/w3c/dom/Comment;)Lorg/jdom2/Comment;

    move-result-object v15

    invoke-interface {v14, v1, v15}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto/16 :goto_10

    .line 454
    :cond_1
    iget-object v14, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v15, p1

    check-cast v15, Lorg/w3c/dom/Comment;

    invoke-virtual {v0, v15}, Lorg/jdom2/input/DOMBuilder;->build(Lorg/w3c/dom/Comment;)Lorg/jdom2/Comment;

    move-result-object v15

    invoke-interface {v14, v2, v15}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 456
    goto/16 :goto_10

    .line 248
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "colon":I
    .end local v5    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v6    # "children":Lorg/w3c/dom/NodeList;
    .end local v7    # "attsize":I
    .end local v8    # "element":Lorg/jdom2/Element;
    .end local v9    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "localName":Ljava/lang/String;
    .end local v11    # "uri":Ljava/lang/String;
    .end local v12    # "ns":Lorg/jdom2/Namespace;
    .end local v13    # "prefix":Ljava/lang/String;
    :pswitch_4
    move-object v3, v5

    .restart local v3    # "nodeName":Ljava/lang/String;
    move-object v6, v5

    .restart local v6    # "children":Lorg/w3c/dom/NodeList;
    move v7, v4

    .restart local v7    # "attsize":I
    move-object v8, v5

    .restart local v8    # "element":Lorg/jdom2/Element;
    move-object v9, v5

    .restart local v9    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    move-object v10, v5

    .restart local v4    # "colon":I
    .restart local v10    # "localName":Ljava/lang/String;
    move-object v11, v5

    .restart local v11    # "uri":Ljava/lang/String;
    move-object v12, v5

    .restart local v12    # "ns":Lorg/jdom2/Namespace;
    move-object v13, v5

    .line 443
    .restart local v5    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v13    # "prefix":Ljava/lang/String;
    if-eqz p4, :cond_2

    .line 444
    iget-object v14, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v15, p1

    check-cast v15, Lorg/w3c/dom/ProcessingInstruction;

    invoke-virtual {v0, v15}, Lorg/jdom2/input/DOMBuilder;->build(Lorg/w3c/dom/ProcessingInstruction;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v15

    invoke-interface {v14, v1, v15}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto/16 :goto_10

    .line 446
    :cond_2
    iget-object v14, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v15, p1

    check-cast v15, Lorg/w3c/dom/ProcessingInstruction;

    invoke-virtual {v0, v15}, Lorg/jdom2/input/DOMBuilder;->build(Lorg/w3c/dom/ProcessingInstruction;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v15

    invoke-interface {v14, v2, v15}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 448
    goto/16 :goto_10

    .line 248
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "colon":I
    .end local v5    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v6    # "children":Lorg/w3c/dom/NodeList;
    .end local v7    # "attsize":I
    .end local v8    # "element":Lorg/jdom2/Element;
    .end local v9    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "localName":Ljava/lang/String;
    .end local v11    # "uri":Ljava/lang/String;
    .end local v12    # "ns":Lorg/jdom2/Namespace;
    .end local v13    # "prefix":Ljava/lang/String;
    :pswitch_5
    move-object v3, v5

    .restart local v3    # "nodeName":Ljava/lang/String;
    move-object v6, v5

    .restart local v6    # "children":Lorg/w3c/dom/NodeList;
    move v7, v4

    .restart local v7    # "attsize":I
    move-object v8, v5

    .restart local v8    # "element":Lorg/jdom2/Element;
    move-object v9, v5

    .restart local v9    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    move-object v10, v5

    .restart local v4    # "colon":I
    .restart local v10    # "localName":Ljava/lang/String;
    move-object v11, v5

    .restart local v11    # "uri":Ljava/lang/String;
    move-object v12, v5

    .restart local v12    # "ns":Lorg/jdom2/Namespace;
    move-object v13, v5

    .line 464
    .restart local v5    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v13    # "prefix":Ljava/lang/String;
    goto/16 :goto_10

    .line 248
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "colon":I
    .end local v5    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v6    # "children":Lorg/w3c/dom/NodeList;
    .end local v7    # "attsize":I
    .end local v8    # "element":Lorg/jdom2/Element;
    .end local v9    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "localName":Ljava/lang/String;
    .end local v11    # "uri":Ljava/lang/String;
    .end local v12    # "ns":Lorg/jdom2/Namespace;
    .end local v13    # "prefix":Ljava/lang/String;
    :pswitch_6
    move-object v3, v5

    .restart local v3    # "nodeName":Ljava/lang/String;
    move-object v6, v5

    .restart local v6    # "children":Lorg/w3c/dom/NodeList;
    move v7, v4

    .restart local v7    # "attsize":I
    move-object v8, v5

    .restart local v8    # "element":Lorg/jdom2/Element;
    move-object v9, v5

    .restart local v9    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    move-object v10, v5

    .restart local v4    # "colon":I
    .restart local v10    # "localName":Ljava/lang/String;
    move-object v11, v5

    .restart local v11    # "uri":Ljava/lang/String;
    move-object v12, v5

    .restart local v12    # "ns":Lorg/jdom2/Namespace;
    move-object v13, v5

    .line 459
    .restart local v5    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v13    # "prefix":Ljava/lang/String;
    iget-object v14, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v15, p1

    check-cast v15, Lorg/w3c/dom/EntityReference;

    invoke-virtual {v0, v15}, Lorg/jdom2/input/DOMBuilder;->build(Lorg/w3c/dom/EntityReference;)Lorg/jdom2/EntityRef;

    move-result-object v15

    invoke-interface {v14, v2, v15}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 460
    goto/16 :goto_10

    .line 248
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "colon":I
    .end local v5    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v6    # "children":Lorg/w3c/dom/NodeList;
    .end local v7    # "attsize":I
    .end local v8    # "element":Lorg/jdom2/Element;
    .end local v9    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "localName":Ljava/lang/String;
    .end local v11    # "uri":Ljava/lang/String;
    .end local v12    # "ns":Lorg/jdom2/Namespace;
    .end local v13    # "prefix":Ljava/lang/String;
    :pswitch_7
    move-object v3, v5

    .restart local v3    # "nodeName":Ljava/lang/String;
    move-object v6, v5

    .restart local v6    # "children":Lorg/w3c/dom/NodeList;
    move v7, v4

    .restart local v7    # "attsize":I
    move-object v8, v5

    .restart local v8    # "element":Lorg/jdom2/Element;
    move-object v9, v5

    .restart local v9    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    move-object v10, v5

    .restart local v4    # "colon":I
    .restart local v10    # "localName":Ljava/lang/String;
    move-object v11, v5

    .restart local v11    # "uri":Ljava/lang/String;
    move-object v12, v5

    .restart local v12    # "ns":Lorg/jdom2/Namespace;
    move-object v13, v5

    .line 438
    .restart local v5    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v13    # "prefix":Ljava/lang/String;
    iget-object v14, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v15, p1

    check-cast v15, Lorg/w3c/dom/CDATASection;

    invoke-virtual {v0, v15}, Lorg/jdom2/input/DOMBuilder;->build(Lorg/w3c/dom/CDATASection;)Lorg/jdom2/CDATA;

    move-result-object v15

    invoke-interface {v14, v2, v15}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 439
    goto/16 :goto_10

    .line 248
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "colon":I
    .end local v5    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v6    # "children":Lorg/w3c/dom/NodeList;
    .end local v7    # "attsize":I
    .end local v8    # "element":Lorg/jdom2/Element;
    .end local v9    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "localName":Ljava/lang/String;
    .end local v11    # "uri":Ljava/lang/String;
    .end local v12    # "ns":Lorg/jdom2/Namespace;
    .end local v13    # "prefix":Ljava/lang/String;
    :pswitch_8
    move-object v3, v5

    .restart local v3    # "nodeName":Ljava/lang/String;
    move-object v6, v5

    .restart local v6    # "children":Lorg/w3c/dom/NodeList;
    move v7, v4

    .restart local v7    # "attsize":I
    move-object v8, v5

    .restart local v8    # "element":Lorg/jdom2/Element;
    move-object v9, v5

    .restart local v9    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    move-object v10, v5

    .restart local v4    # "colon":I
    .restart local v10    # "localName":Ljava/lang/String;
    move-object v11, v5

    .restart local v11    # "uri":Ljava/lang/String;
    move-object v12, v5

    .restart local v12    # "ns":Lorg/jdom2/Namespace;
    move-object v13, v5

    .line 434
    .restart local v5    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v13    # "prefix":Ljava/lang/String;
    iget-object v14, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v15, p1

    check-cast v15, Lorg/w3c/dom/Text;

    invoke-virtual {v0, v15}, Lorg/jdom2/input/DOMBuilder;->build(Lorg/w3c/dom/Text;)Lorg/jdom2/Text;

    move-result-object v15

    invoke-interface {v14, v2, v15}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 435
    goto/16 :goto_10

    .line 248
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "colon":I
    .end local v5    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v6    # "children":Lorg/w3c/dom/NodeList;
    .end local v7    # "attsize":I
    .end local v8    # "element":Lorg/jdom2/Element;
    .end local v9    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "localName":Ljava/lang/String;
    .end local v11    # "uri":Ljava/lang/String;
    .end local v12    # "ns":Lorg/jdom2/Namespace;
    .end local v13    # "prefix":Ljava/lang/String;
    :pswitch_9
    move-object v3, v5

    .line 257
    .local v3, "nodes":Lorg/w3c/dom/NodeList;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, "nodeName":Ljava/lang/String;
    const-string v6, ""

    .line 259
    .local v6, "prefix":Ljava/lang/String;
    move-object v7, v5

    .line 260
    .local v7, "localName":Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 261
    .local v9, "colon":I
    if-ltz v9, :cond_3

    .line 262
    invoke-virtual {v5, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 263
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 267
    :cond_3
    const/4 v10, 0x0

    .line 268
    .local v10, "ns":Lorg/jdom2/Namespace;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    .line 269
    .restart local v11    # "uri":Ljava/lang/String;
    if-nez v11, :cond_5

    .line 270
    if-nez v2, :cond_4

    sget-object v12, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v6}, Lorg/jdom2/Element;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v12

    :goto_1
    move-object v10, v12

    goto :goto_2

    .line 274
    :cond_5
    invoke-static {v6, v11}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v10

    .line 277
    :goto_2
    iget-object v12, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v12, v7, v10}, Lorg/jdom2/JDOMFactory;->element(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v12

    .line 279
    .local v12, "element":Lorg/jdom2/Element;
    if-eqz p4, :cond_6

    .line 281
    iget-object v13, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v13, v1, v12}, Lorg/jdom2/JDOMFactory;->setRoot(Lorg/jdom2/Document;Lorg/jdom2/Element;)V

    goto :goto_3

    .line 284
    :cond_6
    iget-object v13, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v13, v2, v12}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 288
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    .line 289
    .local v13, "attributeList":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v13}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    .line 291
    .local v14, "attsize":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    const-string/jumbo v4, "xmlns"

    if-ge v15, v14, :cond_a

    .line 292
    invoke-interface {v13, v15}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Attr;

    .line 294
    .local v16, "att":Lorg/w3c/dom/Attr;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v8

    .line 295
    .local v8, "attname":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 296
    const-string v4, ""

    .line 297
    .local v4, "attPrefix":Ljava/lang/String;
    const/16 v2, 0x3a

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 298
    if-ltz v9, :cond_7

    .line 299
    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 302
    :cond_7
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "attvalue":Ljava/lang/String;
    move-object/from16 v17, v3

    .end local v3    # "nodes":Lorg/w3c/dom/NodeList;
    .local v17, "nodes":Lorg/w3c/dom/NodeList;
    invoke-static {v4, v2}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v3

    .line 312
    .local v3, "declaredNS":Lorg/jdom2/Namespace;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 317
    invoke-virtual {v12, v3}, Lorg/jdom2/Element;->setNamespace(Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    goto :goto_5

    .line 320
    :cond_8
    move-object/from16 v18, v2

    .end local v2    # "attvalue":Ljava/lang/String;
    .local v18, "attvalue":Ljava/lang/String;
    iget-object v2, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v2, v12, v3}, Lorg/jdom2/JDOMFactory;->addNamespaceDeclaration(Lorg/jdom2/Element;Lorg/jdom2/Namespace;)V

    goto :goto_5

    .line 295
    .end local v4    # "attPrefix":Ljava/lang/String;
    .end local v17    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v18    # "attvalue":Ljava/lang/String;
    .local v3, "nodes":Lorg/w3c/dom/NodeList;
    :cond_9
    move-object/from16 v17, v3

    .line 291
    .end local v3    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v8    # "attname":Ljava/lang/String;
    .end local v16    # "att":Lorg/w3c/dom/Attr;
    .restart local v17    # "nodes":Lorg/w3c/dom/NodeList;
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    const/4 v4, 0x0

    const/16 v8, 0x3a

    goto :goto_4

    .end local v17    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v3    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_a
    move-object/from16 v17, v3

    .line 326
    .end local v3    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v15    # "i":I
    .restart local v17    # "nodes":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v14, :cond_17

    .line 327
    invoke-interface {v13, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Attr;

    .line 329
    .local v3, "att":Lorg/w3c/dom/Attr;
    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v8

    .line 331
    .restart local v8    # "attname":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_16

    .line 332
    const-string v15, ""

    .line 333
    .local v15, "attPrefix":Ljava/lang/String;
    move-object/from16 v16, v8

    .line 334
    .local v16, "attLocalName":Ljava/lang/String;
    move-object/from16 v18, v4

    const/16 v4, 0x3a

    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 335
    if-ltz v9, :cond_b

    .line 336
    const/4 v4, 0x0

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 337
    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v4, v16

    goto :goto_7

    .line 335
    :cond_b
    move-object/from16 v4, v16

    .line 340
    .end local v16    # "attLocalName":Ljava/lang/String;
    .local v4, "attLocalName":Ljava/lang/String;
    :goto_7
    move-object/from16 v16, v5

    .end local v5    # "nodeName":Ljava/lang/String;
    .local v16, "nodeName":Ljava/lang/String;
    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 343
    .local v5, "attvalue":Ljava/lang/String;
    const/16 v19, 0x0

    .line 344
    .local v19, "attNS":Lorg/jdom2/Namespace;
    move-object/from16 v20, v6

    .end local v6    # "prefix":Ljava/lang/String;
    .local v20, "prefix":Ljava/lang/String;
    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, "attURI":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_d

    if-eqz v6, :cond_c

    move-object/from16 v21, v3

    .end local v3    # "att":Lorg/w3c/dom/Attr;
    .local v21, "att":Lorg/w3c/dom/Attr;
    const-string v3, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_8

    .end local v21    # "att":Lorg/w3c/dom/Attr;
    .restart local v3    # "att":Lorg/w3c/dom/Attr;
    :cond_c
    move-object/from16 v21, v3

    .line 346
    .end local v3    # "att":Lorg/w3c/dom/Attr;
    .restart local v21    # "att":Lorg/w3c/dom/Attr;
    :goto_8
    sget-object v3, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    move-object/from16 v24, v7

    move-object/from16 v23, v8

    move/from16 v22, v9

    .end local v19    # "attNS":Lorg/jdom2/Namespace;
    .local v3, "attNS":Lorg/jdom2/Namespace;
    goto/16 :goto_c

    .line 345
    .end local v21    # "att":Lorg/w3c/dom/Attr;
    .local v3, "att":Lorg/w3c/dom/Attr;
    .restart local v19    # "attNS":Lorg/jdom2/Namespace;
    :cond_d
    move-object/from16 v21, v3

    .line 357
    .end local v3    # "att":Lorg/w3c/dom/Attr;
    .restart local v21    # "att":Lorg/w3c/dom/Attr;
    :cond_e
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_10

    .line 364
    if-nez v6, :cond_f

    .line 371
    invoke-virtual {v12, v15}, Lorg/jdom2/Element;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v3

    move-object/from16 v24, v7

    move-object/from16 v23, v8

    move/from16 v22, v9

    .end local v19    # "attNS":Lorg/jdom2/Namespace;
    .local v3, "attNS":Lorg/jdom2/Namespace;
    goto/16 :goto_c

    .line 373
    .end local v3    # "attNS":Lorg/jdom2/Namespace;
    .restart local v19    # "attNS":Lorg/jdom2/Namespace;
    :cond_f
    invoke-static {v15, v6}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v3

    move-object/from16 v24, v7

    move-object/from16 v23, v8

    move/from16 v22, v9

    .end local v19    # "attNS":Lorg/jdom2/Namespace;
    .restart local v3    # "attNS":Lorg/jdom2/Namespace;
    goto/16 :goto_c

    .line 380
    .end local v3    # "attNS":Lorg/jdom2/Namespace;
    .restart local v19    # "attNS":Lorg/jdom2/Namespace;
    :cond_10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 381
    .local v3, "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    invoke-virtual {v12}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_13

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v7

    .end local v7    # "localName":Ljava/lang/String;
    .local v24, "localName":Ljava/lang/String;
    move-object/from16 v7, v23

    check-cast v7, Lorg/jdom2/Namespace;

    .line 382
    .local v7, "nss":Lorg/jdom2/Namespace;
    invoke-virtual {v7}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_11

    move-object/from16 v23, v8

    .end local v8    # "attname":Ljava/lang/String;
    .local v23, "attname":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 383
    move-object/from16 v19, v7

    .line 384
    goto :goto_a

    .line 382
    .end local v23    # "attname":Ljava/lang/String;
    .restart local v8    # "attname":Ljava/lang/String;
    :cond_11
    move-object/from16 v23, v8

    .line 386
    .end local v8    # "attname":Ljava/lang/String;
    .restart local v23    # "attname":Ljava/lang/String;
    :cond_12
    invoke-virtual {v7}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .end local v7    # "nss":Lorg/jdom2/Namespace;
    move-object/from16 v8, v23

    move-object/from16 v7, v24

    goto :goto_9

    .line 381
    .end local v23    # "attname":Ljava/lang/String;
    .end local v24    # "localName":Ljava/lang/String;
    .local v7, "localName":Ljava/lang/String;
    .restart local v8    # "attname":Ljava/lang/String;
    :cond_13
    move-object/from16 v24, v7

    move-object/from16 v23, v8

    .line 388
    .end local v7    # "localName":Ljava/lang/String;
    .end local v8    # "attname":Ljava/lang/String;
    .end local v22    # "i$":Ljava/util/Iterator;
    .restart local v23    # "attname":Ljava/lang/String;
    .restart local v24    # "localName":Ljava/lang/String;
    :goto_a
    if-nez v19, :cond_15

    .line 400
    const/4 v7, 0x0

    .line 401
    .local v7, "cnt":I
    const-string v8, "attns"

    .line 402
    .local v8, "base":Ljava/lang/String;
    move/from16 v22, v9

    .end local v9    # "colon":I
    .local v22, "colon":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 403
    .local v9, "pfx":Ljava/lang/String;
    :goto_b
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 404
    add-int/lit8 v7, v7, 0x1

    .line 405
    move-object/from16 v25, v3

    .end local v3    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    .local v25, "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, v25

    goto :goto_b

    .line 407
    .end local v25    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    .restart local v3    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    :cond_14
    move-object/from16 v25, v3

    .end local v3    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    .restart local v25    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    invoke-static {v9, v6}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v3

    .end local v19    # "attNS":Lorg/jdom2/Namespace;
    .local v3, "attNS":Lorg/jdom2/Namespace;
    goto :goto_c

    .line 388
    .end local v7    # "cnt":I
    .end local v8    # "base":Ljava/lang/String;
    .end local v22    # "colon":I
    .end local v25    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    .local v3, "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    .local v9, "colon":I
    .restart local v19    # "attNS":Lorg/jdom2/Namespace;
    :cond_15
    move-object/from16 v25, v3

    move/from16 v22, v9

    .end local v3    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    .end local v9    # "colon":I
    .restart local v22    # "colon":I
    .restart local v25    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    move-object/from16 v3, v19

    .line 412
    .end local v19    # "attNS":Lorg/jdom2/Namespace;
    .end local v25    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    .local v3, "attNS":Lorg/jdom2/Namespace;
    :goto_c
    iget-object v7, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v7, v4, v5, v3}, Lorg/jdom2/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v7

    .line 414
    .local v7, "attribute":Lorg/jdom2/Attribute;
    iget-object v8, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v8, v12, v7}, Lorg/jdom2/JDOMFactory;->setAttribute(Lorg/jdom2/Element;Lorg/jdom2/Attribute;)V

    move/from16 v9, v22

    goto :goto_d

    .line 331
    .end local v4    # "attLocalName":Ljava/lang/String;
    .end local v15    # "attPrefix":Ljava/lang/String;
    .end local v16    # "nodeName":Ljava/lang/String;
    .end local v20    # "prefix":Ljava/lang/String;
    .end local v21    # "att":Lorg/w3c/dom/Attr;
    .end local v22    # "colon":I
    .end local v23    # "attname":Ljava/lang/String;
    .end local v24    # "localName":Ljava/lang/String;
    .local v3, "att":Lorg/w3c/dom/Attr;
    .local v5, "nodeName":Ljava/lang/String;
    .local v6, "prefix":Ljava/lang/String;
    .local v7, "localName":Ljava/lang/String;
    .local v8, "attname":Ljava/lang/String;
    .restart local v9    # "colon":I
    :cond_16
    move-object/from16 v21, v3

    move-object/from16 v18, v4

    move-object/from16 v16, v5

    move-object/from16 v20, v6

    move-object/from16 v24, v7

    move-object/from16 v23, v8

    .line 326
    .end local v3    # "att":Lorg/w3c/dom/Attr;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v7    # "localName":Ljava/lang/String;
    .end local v8    # "attname":Ljava/lang/String;
    .restart local v16    # "nodeName":Ljava/lang/String;
    .restart local v20    # "prefix":Ljava/lang/String;
    .restart local v24    # "localName":Ljava/lang/String;
    :goto_d
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v16

    move-object/from16 v4, v18

    move-object/from16 v6, v20

    move-object/from16 v7, v24

    goto/16 :goto_6

    .end local v16    # "nodeName":Ljava/lang/String;
    .end local v20    # "prefix":Ljava/lang/String;
    .end local v24    # "localName":Ljava/lang/String;
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v6    # "prefix":Ljava/lang/String;
    .restart local v7    # "localName":Ljava/lang/String;
    :cond_17
    move-object/from16 v16, v5

    move-object/from16 v20, v6

    move-object/from16 v24, v7

    .line 421
    .end local v2    # "i":I
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v7    # "localName":Ljava/lang/String;
    .restart local v16    # "nodeName":Ljava/lang/String;
    .restart local v20    # "prefix":Ljava/lang/String;
    .restart local v24    # "localName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 422
    .local v2, "children":Lorg/w3c/dom/NodeList;
    if-eqz v2, :cond_19

    .line 423
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 424
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v3, :cond_19

    .line 425
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 426
    .local v5, "item":Lorg/w3c/dom/Node;
    if-eqz v5, :cond_18

    .line 427
    const/4 v6, 0x0

    invoke-direct {v0, v5, v1, v12, v6}, Lorg/jdom2/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom2/Document;Lorg/jdom2/Element;Z)V

    goto :goto_f

    .line 426
    :cond_18
    const/4 v6, 0x0

    .line 424
    .end local v5    # "item":Lorg/w3c/dom/Node;
    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 471
    .end local v2    # "children":Lorg/w3c/dom/NodeList;
    .end local v3    # "size":I
    .end local v4    # "i":I
    .end local v9    # "colon":I
    .end local v10    # "ns":Lorg/jdom2/Namespace;
    .end local v11    # "uri":Ljava/lang/String;
    .end local v12    # "element":Lorg/jdom2/Element;
    .end local v13    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    .end local v14    # "attsize":I
    .end local v16    # "nodeName":Ljava/lang/String;
    .end local v17    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v20    # "prefix":Ljava/lang/String;
    .end local v24    # "localName":Ljava/lang/String;
    :cond_19
    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public build(Lorg/w3c/dom/CDATASection;)Lorg/jdom2/CDATA;
    .locals 2
    .param p1, "cdata"    # Lorg/w3c/dom/CDATASection;

    .line 165
    iget-object v0, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/CDATASection;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jdom2/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/w3c/dom/Comment;)Lorg/jdom2/Comment;
    .locals 2
    .param p1, "comment"    # Lorg/w3c/dom/Comment;

    .line 187
    iget-object v0, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/Comment;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jdom2/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/w3c/dom/DocumentType;)Lorg/jdom2/DocType;
    .locals 5
    .param p1, "doctype"    # Lorg/w3c/dom/DocumentType;

    .line 220
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "publicID":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "systemID":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "internalDTD":Ljava/lang/String;
    iget-object v3, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jdom2/JDOMFactory;->docType(Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v3

    .line 225
    .local v3, "docType":Lorg/jdom2/DocType;
    invoke-virtual {v3, v0}, Lorg/jdom2/DocType;->setPublicID(Ljava/lang/String;)Lorg/jdom2/DocType;

    .line 226
    invoke-virtual {v3, v1}, Lorg/jdom2/DocType;->setSystemID(Ljava/lang/String;)Lorg/jdom2/DocType;

    .line 227
    invoke-virtual {v3, v2}, Lorg/jdom2/DocType;->setInternalSubset(Ljava/lang/String;)V

    .line 228
    return-object v3
.end method

.method public build(Lorg/w3c/dom/Document;)Lorg/jdom2/Document;
    .locals 3
    .param p1, "domDocument"    # Lorg/w3c/dom/Document;

    .line 140
    iget-object v0, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/jdom2/JDOMFactory;->document(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    move-result-object v0

    .line 141
    .local v0, "doc":Lorg/jdom2/Document;
    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jdom2/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom2/Document;Lorg/jdom2/Element;Z)V

    .line 142
    return-object v0
.end method

.method public build(Lorg/w3c/dom/Element;)Lorg/jdom2/Element;
    .locals 3
    .param p1, "domElement"    # Lorg/w3c/dom/Element;

    .line 152
    iget-object v0, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/jdom2/JDOMFactory;->document(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    move-result-object v0

    .line 153
    .local v0, "doc":Lorg/jdom2/Document;
    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jdom2/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom2/Document;Lorg/jdom2/Element;Z)V

    .line 154
    invoke-virtual {v0}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v1

    return-object v1
.end method

.method public build(Lorg/w3c/dom/EntityReference;)Lorg/jdom2/EntityRef;
    .locals 2
    .param p1, "er"    # Lorg/w3c/dom/EntityReference;

    .line 209
    iget-object v0, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jdom2/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/w3c/dom/ProcessingInstruction;)Lorg/jdom2/ProcessingInstruction;
    .locals 3
    .param p1, "pi"    # Lorg/w3c/dom/ProcessingInstruction;

    .line 198
    iget-object v0, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jdom2/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/w3c/dom/Text;)Lorg/jdom2/Text;
    .locals 2
    .param p1, "text"    # Lorg/w3c/dom/Text;

    .line 176
    iget-object v0, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jdom2/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object v0

    return-object v0
.end method

.method public getFactory()Lorg/jdom2/JDOMFactory;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    return-object v0
.end method

.method public setFactory(Lorg/jdom2/JDOMFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;

    .line 122
    iput-object p1, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    .line 123
    return-void
.end method
