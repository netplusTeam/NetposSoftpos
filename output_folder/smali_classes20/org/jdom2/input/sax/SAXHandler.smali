.class public Lorg/jdom2/input/sax/SAXHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXHandler.java"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/DTDHandler;


# instance fields
.field private atRoot:Z

.field private currentDocument:Lorg/jdom2/Document;

.field private currentElement:Lorg/jdom2/Element;

.field private currentLocator:Lorg/xml/sax/Locator;

.field private final declaredNamespaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation
.end field

.field private entityDepth:I

.field private expand:Z

.field private final externalEntities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lorg/jdom2/JDOMFactory;

.field private ignoringBoundaryWhite:Z

.field private ignoringWhite:Z

.field private inCDATA:Z

.field private inDTD:Z

.field private inInternalSubset:Z

.field private final internalSubset:Ljava/lang/StringBuilder;

.field private lastcol:I

.field private lastline:I

.field private previousCDATA:Z

.field private suppress:Z

.field private final textBuffer:Lorg/jdom2/input/sax/TextBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jdom2/input/sax/SAXHandler;-><init>(Lorg/jdom2/JDOMFactory;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/JDOMFactory;)V
    .locals 2
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;

    .line 206
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->declaredNamespaces:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    .line 136
    new-instance v0, Lorg/jdom2/input/sax/TextBuffer;

    invoke-direct {v0}, Lorg/jdom2/input/sax/TextBuffer;-><init>()V

    iput-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->textBuffer:Lorg/jdom2/input/sax/TextBuffer;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->externalEntities:Ljava/util/Map;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    .line 145
    iput-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentElement:Lorg/jdom2/Element;

    .line 148
    iput-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    .line 158
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->inDTD:Z

    .line 161
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    .line 164
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->previousCDATA:Z

    .line 167
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->inCDATA:Z

    .line 170
    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->expand:Z

    .line 176
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    .line 179
    iput v1, p0, Lorg/jdom2/input/sax/SAXHandler;->entityDepth:I

    .line 182
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringWhite:Z

    .line 185
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringBoundaryWhite:Z

    .line 187
    iput v1, p0, Lorg/jdom2/input/sax/SAXHandler;->lastline:I

    iput v1, p0, Lorg/jdom2/input/sax/SAXHandler;->lastcol:I

    .line 207
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/jdom2/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    .line 208
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->reset()V

    .line 209
    return-void
.end method

.method private appendExternalId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "publicID"    # Ljava/lang/String;
    .param p2, "systemID"    # Ljava/lang/String;

    .line 1112
    const/16 v0, 0x22

    if-eqz p1, :cond_0

    .line 1113
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v2, " PUBLIC \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1115
    :cond_0
    if-eqz p2, :cond_2

    .line 1116
    if-nez p1, :cond_1

    .line 1117
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v2, " SYSTEM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1119
    :cond_1
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1121
    :goto_0
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1123
    :cond_2
    return-void
.end method

.method private transferNamespaces(Lorg/jdom2/Element;)V
    .locals 3
    .param p1, "element"    # Lorg/jdom2/Element;

    .line 734
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Namespace;

    .line 735
    .local v1, "ns":Lorg/jdom2/Namespace;
    invoke-virtual {p1}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 736
    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z

    .line 738
    .end local v1    # "ns":Lorg/jdom2/Namespace;
    :cond_0
    goto :goto_0

    .line 739
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 740
    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "eName"    # Ljava/lang/String;
    .param p2, "aName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "valueDefault"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .line 415
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    .line 416
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, "  <!ATTLIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    const/16 v0, 0x22

    if-eqz p4, :cond_1

    .line 421
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 423
    :cond_1
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    :goto_0
    if-eqz p4, :cond_2

    const-string v1, "#FIXED"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 426
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v2, " \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    :cond_2
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    return-void
.end method

.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 756
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    if-nez v0, :cond_3

    if-nez p3, :cond_0

    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inCDATA:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 759
    :cond_0
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->previousCDATA:Z

    iget-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->inCDATA:Z

    if-eq v0, v1, :cond_1

    .line 760
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 763
    :cond_1
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->textBuffer:Lorg/jdom2/input/sax/TextBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jdom2/input/sax/TextBuffer;->append([CII)V

    .line 765
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_2

    .line 766
    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lorg/jdom2/input/sax/SAXHandler;->lastline:I

    .line 767
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lorg/jdom2/input/sax/SAXHandler;->lastcol:I

    .line 769
    :cond_2
    return-void

    .line 757
    :cond_3
    :goto_0
    return-void
.end method

.method public comment([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1032
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    .line 1033
    return-void

    .line 1035
    :cond_0
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 1037
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 1038
    .local v0, "commentText":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->inDTD:Z

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->expand:Z

    if-nez v2, :cond_1

    .line 1039
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v2, "  <!--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    return-void

    .line 1042
    :cond_1
    if-nez v1, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1043
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v1, v0}, Lorg/jdom2/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v1

    iget-object v3, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v3}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v3

    invoke-interface {v2, v1, v3, v0}, Lorg/jdom2/JDOMFactory;->comment(IILjava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v1

    .line 1047
    .local v1, "comment":Lorg/jdom2/Comment;
    :goto_0
    iget-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    if-eqz v2, :cond_3

    .line 1048
    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v3, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    invoke-interface {v2, v3, v1}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto :goto_1

    .line 1050
    :cond_3
    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->getCurrentElement()Lorg/jdom2/Element;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 1053
    .end local v1    # "comment":Lorg/jdom2/Comment;
    :cond_4
    :goto_1
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;

    .line 442
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    .line 443
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, "  <!ELEMENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    return-void
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1005
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    .line 1006
    return-void

    .line 1008
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->previousCDATA:Z

    .line 1009
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 1010
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->previousCDATA:Z

    .line 1011
    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inCDATA:Z

    .line 1012
    return-void
.end method

.method public endDTD()V
    .locals 2

    .line 918
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    invoke-virtual {v0}, Lorg/jdom2/Document;->getDocType()Lorg/jdom2/DocType;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/DocType;->setInternalSubset(Ljava/lang/String;)V

    .line 920
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inDTD:Z

    .line 921
    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    .line 922
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 866
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    .line 867
    return-void

    .line 869
    :cond_0
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 871
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    if-nez v0, :cond_2

    .line 872
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getParent()Lorg/jdom2/Parent;

    move-result-object v0

    .line 873
    .local v0, "p":Lorg/jdom2/Parent;
    instance-of v1, v0, Lorg/jdom2/Document;

    if-eqz v1, :cond_1

    .line 874
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    goto :goto_0

    .line 876
    :cond_1
    move-object v1, v0

    check-cast v1, Lorg/jdom2/Element;

    iput-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->currentElement:Lorg/jdom2/Element;

    .line 878
    .end local v0    # "p":Lorg/jdom2/Parent;
    :goto_0
    nop

    .line 883
    return-void

    .line 879
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed XML document (missing opening tag for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 978
    iget v0, p0, Lorg/jdom2/input/sax/SAXHandler;->entityDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jdom2/input/sax/SAXHandler;->entityDepth:I

    .line 979
    if-nez v0, :cond_0

    .line 982
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    .line 984
    :cond_0
    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    .line 987
    :cond_1
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->externalEntities:Ljava/util/Map;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    .line 390
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-direct {p0, p2, p3}, Lorg/jdom2/input/sax/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    return-void
.end method

.method protected flushCharacters()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 801
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringBoundaryWhite:Z

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->textBuffer:Lorg/jdom2/input/sax/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/TextBuffer;->isAllWhitespace()Z

    move-result v0

    if-nez v0, :cond_1

    .line 803
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->textBuffer:Lorg/jdom2/input/sax/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/TextBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters(Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :cond_0
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->textBuffer:Lorg/jdom2/input/sax/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/TextBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters(Ljava/lang/String;)V

    .line 808
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->textBuffer:Lorg/jdom2/input/sax/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/TextBuffer;->clear()V

    .line 809
    return-void
.end method

.method protected flushCharacters(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 822
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inCDATA:Z

    if-nez v0, :cond_0

    .line 823
    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->previousCDATA:Z

    .line 824
    return-void

    .line 834
    :cond_0
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->previousCDATA:Z

    if-eqz v0, :cond_2

    .line 835
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v0, p1}, Lorg/jdom2/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget v1, p0, Lorg/jdom2/input/sax/SAXHandler;->lastline:I

    iget v2, p0, Lorg/jdom2/input/sax/SAXHandler;->lastcol:I

    invoke-interface {v0, v1, v2, p1}, Lorg/jdom2/JDOMFactory;->cdata(IILjava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v0

    .line 837
    .local v0, "cdata":Lorg/jdom2/CDATA;
    :goto_0
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->getCurrentElement()Lorg/jdom2/Element;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 838
    .end local v0    # "cdata":Lorg/jdom2/CDATA;
    goto :goto_2

    .line 839
    :cond_2
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v0, p1}, Lorg/jdom2/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget v1, p0, Lorg/jdom2/input/sax/SAXHandler;->lastline:I

    iget v2, p0, Lorg/jdom2/input/sax/SAXHandler;->lastcol:I

    invoke-interface {v0, v1, v2, p1}, Lorg/jdom2/JDOMFactory;->text(IILjava/lang/String;)Lorg/jdom2/Text;

    move-result-object v0

    .line 841
    .local v0, "text":Lorg/jdom2/Text;
    :goto_1
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->getCurrentElement()Lorg/jdom2/Element;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 844
    .end local v0    # "text":Lorg/jdom2/Text;
    :goto_2
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inCDATA:Z

    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->previousCDATA:Z

    .line 845
    return-void
.end method

.method public getCurrentElement()Lorg/jdom2/Element;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1133
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentElement:Lorg/jdom2/Element;

    if-eqz v0, :cond_0

    .line 1137
    return-object v0

    .line 1134
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Ill-formed XML document (multiple root elements detected)"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocument()Lorg/jdom2/Document;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    return-object v0
.end method

.method public getDocumentLocator()Lorg/xml/sax/Locator;
    .locals 1

    .line 1165
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method public getExpandEntities()Z
    .locals 1

    .line 308
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->expand:Z

    return v0
.end method

.method public getFactory()Lorg/jdom2/JDOMFactory;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    return-object v0
.end method

.method public getIgnoringBoundaryWhitespace()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringBoundaryWhite:Z

    return v0
.end method

.method public getIgnoringElementContentWhitespace()Z
    .locals 1

    .line 361
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringWhite:Z

    return v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 788
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringWhite:Z

    if-nez v0, :cond_0

    .line 789
    invoke-virtual {p0, p1, p2, p3}, Lorg/jdom2/input/sax/SAXHandler;->characters([CII)V

    .line 791
    :cond_0
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 461
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    .line 462
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 468
    :cond_1
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :goto_0
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1069
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    .line 1070
    return-void

    .line 1072
    :cond_0
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, "  <!NOTATION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-direct {p0, p2, p3}, Lorg/jdom2/input/sax/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 490
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    .line 491
    return-void

    .line 493
    :cond_0
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 495
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v0, p1, p2}, Lorg/jdom2/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v0

    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v2

    invoke-interface {v1, v0, v2, p1, p2}, Lorg/jdom2/JDOMFactory;->processingInstruction(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    .line 500
    .local v0, "pi":Lorg/jdom2/ProcessingInstruction;
    :goto_0
    iget-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    if-eqz v1, :cond_2

    .line 501
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    invoke-interface {v1, v2, v0}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto :goto_1

    .line 503
    :cond_2
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->getCurrentElement()Lorg/jdom2/Element;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 505
    :goto_1
    return-void
.end method

.method protected pushElement(Lorg/jdom2/Element;)V
    .locals 2
    .param p1, "element"    # Lorg/jdom2/Element;

    .line 256
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    invoke-virtual {v0, p1}, Lorg/jdom2/Document;->setRootElement(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->currentElement:Lorg/jdom2/Element;

    invoke-interface {v0, v1, p1}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 263
    :goto_0
    iput-object p1, p0, Lorg/jdom2/input/sax/SAXHandler;->currentElement:Lorg/jdom2/Element;

    .line 264
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    .line 228
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v1, v0}, Lorg/jdom2/JDOMFactory;->document(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    .line 229
    iput-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentElement:Lorg/jdom2/Element;

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    .line 231
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->inDTD:Z

    .line 232
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    .line 233
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->previousCDATA:Z

    .line 234
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->inCDATA:Z

    .line 235
    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->expand:Z

    .line 236
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    .line 237
    iput v1, p0, Lorg/jdom2/input/sax/SAXHandler;->entityDepth:I

    .line 238
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 239
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 240
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->textBuffer:Lorg/jdom2/input/sax/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/TextBuffer;->clear()V

    .line 241
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->externalEntities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 242
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringWhite:Z

    .line 243
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringBoundaryWhite:Z

    .line 244
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->resetSubCLass()V

    .line 245
    return-void
.end method

.method protected resetSubCLass()V
    .locals 0

    .line 218
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .line 1155
    iput-object p1, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    .line 1156
    return-void
.end method

.method public setExpandEntities(Z)V
    .locals 0
    .param p1, "expand"    # Z

    .line 297
    iput-boolean p1, p0, Lorg/jdom2/input/sax/SAXHandler;->expand:Z

    .line 298
    return-void
.end method

.method public setIgnoringBoundaryWhitespace(Z)V
    .locals 0
    .param p1, "ignoringBoundaryWhite"    # Z

    .line 336
    iput-boolean p1, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringBoundaryWhite:Z

    .line 337
    return-void
.end method

.method public setIgnoringElementContentWhitespace(Z)V
    .locals 0
    .param p1, "ignoringWhite"    # Z

    .line 323
    iput-boolean p1, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringWhite:Z

    .line 324
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 520
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    return-void

    .line 523
    :cond_0
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 525
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v0, p1}, Lorg/jdom2/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v0

    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v2

    invoke-interface {v1, v0, v2, p1}, Lorg/jdom2/JDOMFactory;->entityRef(IILjava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    .line 529
    .local v0, "er":Lorg/jdom2/EntityRef;
    :goto_0
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->getCurrentElement()Lorg/jdom2/Element;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 530
    return-void
.end method

.method public startCDATA()V
    .locals 1

    .line 994
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    .line 995
    return-void

    .line 997
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inCDATA:Z

    .line 998
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 901
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 903
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v0, p1, p2, p3}, Lorg/jdom2/JDOMFactory;->docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lorg/jdom2/JDOMFactory;->docType(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v0

    .line 907
    .local v0, "doctype":Lorg/jdom2/DocType;
    :goto_0
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    invoke-interface {v1, v2, v0}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 908
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->inDTD:Z

    .line 909
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    .line 910
    return-void
.end method

.method public startDocument()V
    .locals 2

    .line 366
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_0

    .line 367
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jdom2/Document;->setBaseURI(Ljava/lang/String;)V

    .line 369
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 20
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 575
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-boolean v4, v0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    if-eqz v4, :cond_0

    .line 576
    return-void

    .line 578
    :cond_0
    const-string v4, ""

    .line 581
    .local v4, "prefix":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x3a

    const/4 v8, 0x0

    if-nez v6, :cond_3

    .line 582
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 584
    .local v6, "colon":I
    if-lez v6, :cond_1

    .line 585
    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 589
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 590
    :cond_2
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 596
    .end local v6    # "colon":I
    .end local p2    # "localName":Ljava/lang/String;
    .local v1, "localName":Ljava/lang/String;
    :cond_3
    move-object/from16 v6, p1

    invoke-static {v4, v6}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v9

    .line 598
    .local v9, "namespace":Lorg/jdom2/Namespace;
    iget-object v10, v0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-nez v10, :cond_4

    iget-object v10, v0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v10, v1, v9}, Lorg/jdom2/JDOMFactory;->element(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v10

    goto :goto_0

    :cond_4
    iget-object v11, v0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v10}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v10

    iget-object v12, v0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v12}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v12

    invoke-interface {v11, v10, v12, v1, v9}, Lorg/jdom2/JDOMFactory;->element(IILjava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v10

    .line 605
    .local v10, "element":Lorg/jdom2/Element;
    :goto_0
    iget-object v11, v0, Lorg/jdom2/input/sax/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_5

    .line 606
    invoke-direct {v0, v10}, Lorg/jdom2/input/sax/SAXHandler;->transferNamespaces(Lorg/jdom2/Element;)V

    .line 609
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 611
    iget-boolean v11, v0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    if-eqz v11, :cond_6

    .line 612
    iget-object v11, v0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v12, v0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    invoke-interface {v11, v12, v10}, Lorg/jdom2/JDOMFactory;->setRoot(Lorg/jdom2/Document;Lorg/jdom2/Element;)V

    .line 614
    iput-boolean v8, v0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    goto :goto_1

    .line 616
    :cond_6
    iget-object v11, v0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-virtual/range {p0 .. p0}, Lorg/jdom2/input/sax/SAXHandler;->getCurrentElement()Lorg/jdom2/Element;

    move-result-object v12

    invoke-interface {v11, v12, v10}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 618
    :goto_1
    iput-object v10, v0, Lorg/jdom2/input/sax/SAXHandler;->currentElement:Lorg/jdom2/Element;

    .line 621
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v12

    .local v12, "len":I
    :goto_2
    if-ge v11, v12, :cond_15

    .line 623
    const-string v13, ""

    .line 624
    .local v13, "attPrefix":Ljava/lang/String;
    invoke-interface {v3, v11}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v14

    .line 625
    .local v14, "attLocalName":Ljava/lang/String;
    invoke-interface {v3, v11}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v15

    .line 626
    .local v15, "attQName":Ljava/lang/String;
    instance-of v8, v3, Lorg/xml/sax/ext/Attributes2;

    if-eqz v8, :cond_7

    move-object v8, v3

    check-cast v8, Lorg/xml/sax/ext/Attributes2;

    invoke-interface {v8, v11}, Lorg/xml/sax/ext/Attributes2;->isSpecified(I)Z

    move-result v8

    goto :goto_3

    :cond_7
    const/4 v8, 0x1

    .line 630
    .local v8, "specified":Z
    :goto_3
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const-string/jumbo v7, "xmlns"

    if-nez v16, :cond_b

    .line 635
    move-object/from16 v16, v1

    .end local v1    # "localName":Ljava/lang/String;
    .local v16, "localName":Ljava/lang/String;
    const-string/jumbo v1, "xmlns:"

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 636
    move-object/from16 p2, v4

    move-object/from16 v17, v5

    const/4 v6, 0x0

    goto/16 :goto_a

    .line 639
    :cond_8
    const/16 v1, 0x3a

    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 641
    .local v2, "attColon":I
    if-lez v2, :cond_9

    .line 642
    const/4 v1, 0x0

    invoke-virtual {v15, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 646
    :cond_9
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 647
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 635
    .end local v2    # "attColon":I
    :cond_a
    move-object/from16 p2, v4

    move-object/from16 v17, v5

    const/4 v6, 0x0

    goto/16 :goto_a

    .line 630
    .end local v16    # "localName":Ljava/lang/String;
    .restart local v1    # "localName":Ljava/lang/String;
    :cond_b
    move-object/from16 v16, v1

    .line 651
    .end local v1    # "localName":Ljava/lang/String;
    .restart local v16    # "localName":Ljava/lang/String;
    :cond_c
    :goto_4
    invoke-interface {v3, v11}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jdom2/AttributeType;->getAttributeType(Ljava/lang/String;)Lorg/jdom2/AttributeType;

    move-result-object v1

    .line 653
    .local v1, "attType":Lorg/jdom2/AttributeType;
    invoke-interface {v3, v11}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, "attValue":Ljava/lang/String;
    move-object/from16 p2, v4

    .end local v4    # "prefix":Ljava/lang/String;
    .local p2, "prefix":Ljava/lang/String;
    invoke-interface {v3, v11}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    .line 656
    .local v4, "attURI":Ljava/lang/String;
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    const-string v7, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 662
    move-object/from16 v17, v5

    const/4 v6, 0x0

    goto/16 :goto_a

    .line 669
    :cond_d
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 681
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 682
    .local v7, "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    invoke-virtual {v10}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Lorg/jdom2/Namespace;

    .line 683
    .local v3, "nss":Lorg/jdom2/Namespace;
    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_e

    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 685
    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v13

    .line 686
    goto :goto_6

    .line 688
    :cond_e
    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    .end local v3    # "nss":Lorg/jdom2/Namespace;
    move-object/from16 v6, p1

    move-object/from16 v3, p4

    goto :goto_5

    .line 691
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_f
    :goto_6
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 703
    const/4 v3, 0x0

    .line 704
    .local v3, "cnt":I
    const-string v6, "attns"

    .line 705
    .local v6, "base":Ljava/lang/String;
    move-object/from16 v17, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v6

    .end local v6    # "base":Ljava/lang/String;
    .local v18, "base":Ljava/lang/String;
    const-string v6, "attns"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 706
    .local v5, "pfx":Ljava/lang/String;
    :goto_7
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 707
    add-int/lit8 v3, v3, 0x1

    .line 708
    move-object/from16 v19, v7

    .end local v7    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    .local v19, "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, v19

    goto :goto_7

    .line 710
    .end local v19    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    .restart local v7    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    :cond_10
    move-object/from16 v19, v7

    .end local v7    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    .restart local v19    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    move-object v13, v5

    goto :goto_8

    .line 691
    .end local v3    # "cnt":I
    .end local v5    # "pfx":Ljava/lang/String;
    .end local v18    # "base":Ljava/lang/String;
    .end local v19    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    .restart local v7    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    :cond_11
    move-object/from16 v17, v5

    move-object/from16 v19, v7

    .end local v7    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    .restart local v19    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    goto :goto_8

    .line 669
    .end local v19    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    :cond_12
    move-object/from16 v17, v5

    .line 713
    :goto_8
    invoke-static {v13, v4}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v3

    .line 715
    .local v3, "attNs":Lorg/jdom2/Namespace;
    iget-object v5, v0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v5, v14, v2, v1, v3}, Lorg/jdom2/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v5

    .line 717
    .local v5, "attribute":Lorg/jdom2/Attribute;
    if-nez v8, :cond_13

    .line 719
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/jdom2/Attribute;->setSpecified(Z)V

    goto :goto_9

    .line 717
    :cond_13
    const/4 v6, 0x0

    .line 721
    :goto_9
    iget-object v7, v0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v7, v10, v5}, Lorg/jdom2/JDOMFactory;->setAttribute(Lorg/jdom2/Element;Lorg/jdom2/Attribute;)V

    goto :goto_a

    .line 656
    .end local v3    # "attNs":Lorg/jdom2/Namespace;
    .end local v5    # "attribute":Lorg/jdom2/Attribute;
    :cond_14
    move-object/from16 v17, v5

    const/4 v6, 0x0

    .line 621
    .end local v1    # "attType":Lorg/jdom2/AttributeType;
    .end local v2    # "attValue":Ljava/lang/String;
    .end local v4    # "attURI":Ljava/lang/String;
    .end local v8    # "specified":Z
    .end local v13    # "attPrefix":Ljava/lang/String;
    .end local v14    # "attLocalName":Ljava/lang/String;
    .end local v15    # "attQName":Ljava/lang/String;
    :goto_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move v8, v6

    move-object/from16 v1, v16

    move-object/from16 v5, v17

    const/16 v7, 0x3a

    move-object/from16 v6, p1

    goto/16 :goto_2

    .line 724
    .end local v11    # "i":I
    .end local v12    # "len":I
    .end local v16    # "localName":Ljava/lang/String;
    .end local p2    # "prefix":Ljava/lang/String;
    .local v1, "localName":Ljava/lang/String;
    .local v4, "prefix":Ljava/lang/String;
    :cond_15
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 926
    iget v0, p0, Lorg/jdom2/input/sax/SAXHandler;->entityDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jdom2/input/sax/SAXHandler;->entityDepth:I

    .line 928
    iget-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->expand:Z

    if-nez v2, :cond_6

    if-le v0, v1, :cond_0

    goto/16 :goto_1

    .line 934
    :cond_0
    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 935
    iput-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    .line 936
    return-void

    .line 940
    :cond_1
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inDTD:Z

    if-nez v0, :cond_5

    const-string v0, "amp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "lt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "gt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "apos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "quot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 944
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->expand:Z

    if-nez v0, :cond_5

    .line 945
    const/4 v0, 0x0

    .line 946
    .local v0, "pub":Ljava/lang/String;
    const/4 v3, 0x0

    .line 947
    .local v3, "sys":Ljava/lang/String;
    iget-object v4, p0, Lorg/jdom2/input/sax/SAXHandler;->externalEntities:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 948
    .local v4, "ids":[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 949
    aget-object v0, v4, v2

    .line 950
    aget-object v3, v4, v1

    .line 960
    :cond_2
    iget-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    if-nez v2, :cond_4

    .line 961
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 962
    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v2, p1, v0, v3}, Lorg/jdom2/JDOMFactory;->entityRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v6

    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v7

    move-object v8, p1

    move-object v9, v0

    move-object v10, v3

    invoke-interface/range {v5 .. v10}, Lorg/jdom2/JDOMFactory;->entityRef(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v2

    .line 969
    .local v2, "entity":Lorg/jdom2/EntityRef;
    :goto_0
    iget-object v5, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->getCurrentElement()Lorg/jdom2/Element;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 971
    .end local v2    # "entity":Lorg/jdom2/EntityRef;
    :cond_4
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    .line 974
    .end local v0    # "pub":Ljava/lang/String;
    .end local v3    # "sys":Ljava/lang/String;
    .end local v4    # "ids":[Ljava/lang/String;
    :cond_5
    return-void

    .line 930
    :cond_6
    :goto_1
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 545
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    .line 546
    return-void

    .line 548
    :cond_0
    invoke-static {p1, p2}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    .line 549
    .local v0, "ns":Lorg/jdom2/Namespace;
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;

    .line 1093
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    .line 1094
    return-void

    .line 1096
    :cond_0
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    invoke-direct {p0, p2, p3}, Lorg/jdom2/input/sax/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, " NDATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    return-void
.end method
