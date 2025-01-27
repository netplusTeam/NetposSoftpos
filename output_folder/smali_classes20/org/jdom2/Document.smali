.class public Lorg/jdom2/Document;
.super Lorg/jdom2/CloneBase;
.source "Document.java"

# interfaces
.implements Lorg/jdom2/Parent;


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field protected baseURI:Ljava/lang/String;

.field transient content:Lorg/jdom2/ContentList;

.field private transient propertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lorg/jdom2/CloneBase;-><init>()V

    .line 83
    new-instance v0, Lorg/jdom2/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom2/ContentList;-><init>(Lorg/jdom2/Parent;)V

    iput-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/Document;->baseURI:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lorg/jdom2/Document;->propertyMap:Ljava/util/HashMap;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    invoke-direct {p0}, Lorg/jdom2/CloneBase;-><init>()V

    .line 83
    new-instance v0, Lorg/jdom2/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom2/ContentList;-><init>(Lorg/jdom2/Parent;)V

    iput-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/Document;->baseURI:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lorg/jdom2/Document;->propertyMap:Ljava/util/HashMap;

    .line 169
    invoke-virtual {p0, p1}, Lorg/jdom2/Document;->setContent(Ljava/util/Collection;)Lorg/jdom2/Document;

    .line 170
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;)V
    .locals 1
    .param p1, "rootElement"    # Lorg/jdom2/Element;

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/jdom2/Document;-><init>(Lorg/jdom2/Element;Lorg/jdom2/DocType;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;Lorg/jdom2/DocType;)V
    .locals 1
    .param p1, "rootElement"    # Lorg/jdom2/Element;
    .param p2, "docType"    # Lorg/jdom2/DocType;

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jdom2/Document;-><init>(Lorg/jdom2/Element;Lorg/jdom2/DocType;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;Lorg/jdom2/DocType;Ljava/lang/String;)V
    .locals 1
    .param p1, "rootElement"    # Lorg/jdom2/Element;
    .param p2, "docType"    # Lorg/jdom2/DocType;
    .param p3, "baseURI"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lorg/jdom2/CloneBase;-><init>()V

    .line 83
    new-instance v0, Lorg/jdom2/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom2/ContentList;-><init>(Lorg/jdom2/Parent;)V

    iput-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/Document;->baseURI:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lorg/jdom2/Document;->propertyMap:Ljava/util/HashMap;

    .line 116
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lorg/jdom2/Document;->setRootElement(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    .line 119
    :cond_0
    if-eqz p2, :cond_1

    .line 120
    invoke-virtual {p0, p2}, Lorg/jdom2/Document;->setDocType(Lorg/jdom2/DocType;)Lorg/jdom2/Document;

    .line 122
    :cond_1
    if-eqz p3, :cond_2

    .line 123
    invoke-virtual {p0, p3}, Lorg/jdom2/Document;->setBaseURI(Ljava/lang/String;)V

    .line 125
    :cond_2
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 912
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 914
    new-instance v0, Lorg/jdom2/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom2/ContentList;-><init>(Lorg/jdom2/Parent;)V

    iput-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    .line 916
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 917
    .local v0, "cs":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 918
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Content;

    invoke-virtual {p0, v1}, Lorg/jdom2/Document;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Document;

    goto :goto_0

    .line 921
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 893
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 894
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->size()I

    move-result v0

    .line 895
    .local v0, "cs":I
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 896
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 897
    invoke-virtual {p0, v1}, Lorg/jdom2/Document;->getContent(I)Lorg/jdom2/Content;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 896
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 899
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addContent(ILjava/util/Collection;)Lorg/jdom2/Document;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Lorg/jdom2/Document;"
        }
    .end annotation

    .line 373
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom2/ContentList;->addAll(ILjava/util/Collection;)Z

    .line 374
    return-object p0
.end method

.method public addContent(ILorg/jdom2/Content;)Lorg/jdom2/Document;
    .locals 1
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom2/Content;

    .line 353
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom2/ContentList;->add(ILorg/jdom2/Content;)V

    .line 354
    return-object p0
.end method

.method public addContent(Ljava/util/Collection;)Lorg/jdom2/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Lorg/jdom2/Document;"
        }
    .end annotation

    .line 337
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->addAll(Ljava/util/Collection;)Z

    .line 338
    return-object p0
.end method

.method public addContent(Lorg/jdom2/Content;)Lorg/jdom2/Document;
    .locals 1
    .param p1, "child"    # Lorg/jdom2/Content;

    .line 320
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    .line 321
    return-object p0
.end method

.method public bridge synthetic addContent(ILjava/util/Collection;)Lorg/jdom2/Parent;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/util/Collection;

    .line 75
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/Document;->addContent(ILjava/util/Collection;)Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addContent(ILorg/jdom2/Content;)Lorg/jdom2/Parent;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/jdom2/Content;

    .line 75
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/Document;->addContent(ILorg/jdom2/Content;)Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addContent(Ljava/util/Collection;)Lorg/jdom2/Parent;
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;

    .line 75
    invoke-virtual {p0, p1}, Lorg/jdom2/Document;->addContent(Ljava/util/Collection;)Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addContent(Lorg/jdom2/Content;)Lorg/jdom2/Parent;
    .locals 1
    .param p1, "x0"    # Lorg/jdom2/Content;

    .line 75
    invoke-virtual {p0, p1}, Lorg/jdom2/Document;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public canContainContent(Lorg/jdom2/Content;IZ)V
    .locals 4
    .param p1, "child"    # Lorg/jdom2/Content;
    .param p2, "index"    # I
    .param p3, "replace"    # Z

    .line 793
    instance-of v0, p1, Lorg/jdom2/Element;

    if-eqz v0, :cond_3

    .line 794
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfFirstElement()I

    move-result v0

    .line 795
    .local v0, "cre":I
    if-eqz p3, :cond_0

    if-ne v0, p2, :cond_0

    .line 796
    return-void

    .line 798
    :cond_0
    if-gez v0, :cond_2

    .line 802
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1}, Lorg/jdom2/ContentList;->indexOfDocType()I

    move-result v1

    if-ge v1, p2, :cond_1

    goto :goto_0

    .line 803
    :cond_1
    new-instance v1, Lorg/jdom2/IllegalAddException;

    const-string v2, "A root element cannot be added before the DocType"

    invoke-direct {v1, v2}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 799
    :cond_2
    new-instance v1, Lorg/jdom2/IllegalAddException;

    const-string v2, "Cannot add a second root element, only one is allowed"

    invoke-direct {v1, v2}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 807
    .end local v0    # "cre":I
    :cond_3
    :goto_0
    instance-of v0, p1, Lorg/jdom2/DocType;

    if-eqz v0, :cond_7

    .line 808
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfDocType()I

    move-result v0

    .line 809
    .local v0, "cdt":I
    if-eqz p3, :cond_4

    if-ne v0, p2, :cond_4

    .line 811
    return-void

    .line 813
    :cond_4
    if-gez v0, :cond_6

    .line 817
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1}, Lorg/jdom2/ContentList;->indexOfFirstElement()I

    move-result v1

    .line 818
    .local v1, "firstElt":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    if-lt v1, p2, :cond_5

    goto :goto_1

    .line 819
    :cond_5
    new-instance v2, Lorg/jdom2/IllegalAddException;

    const-string v3, "A DocType cannot be added after the root element"

    invoke-direct {v2, v3}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 814
    .end local v1    # "firstElt":I
    :cond_6
    new-instance v1, Lorg/jdom2/IllegalAddException;

    const-string v2, "Cannot add a second doctype, only one is allowed"

    invoke-direct {v1, v2}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 824
    .end local v0    # "cdt":I
    :cond_7
    :goto_1
    instance-of v0, p1, Lorg/jdom2/CDATA;

    if-nez v0, :cond_a

    .line 828
    instance-of v0, p1, Lorg/jdom2/Text;

    if-nez v0, :cond_9

    .line 832
    instance-of v0, p1, Lorg/jdom2/EntityRef;

    if-nez v0, :cond_8

    .line 836
    return-void

    .line 833
    :cond_8
    new-instance v0, Lorg/jdom2/IllegalAddException;

    const-string v1, "An EntityRef is not allowed at the document root"

    invoke-direct {v0, v1}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_9
    new-instance v0, Lorg/jdom2/IllegalAddException;

    const-string v1, "A Text is not allowed at the document root"

    invoke-direct {v0, v1}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_a
    new-instance v0, Lorg/jdom2/IllegalAddException;

    const-string v1, "A CDATA is not allowed at the document root"

    invoke-direct {v0, v1}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lorg/jdom2/Document;->clone()Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/CloneBase;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lorg/jdom2/Document;->clone()Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/Document;
    .locals 5

    .line 684
    invoke-super {p0}, Lorg/jdom2/CloneBase;->clone()Lorg/jdom2/CloneBase;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Document;

    .line 688
    .local v0, "doc":Lorg/jdom2/Document;
    new-instance v1, Lorg/jdom2/ContentList;

    invoke-direct {v1, v0}, Lorg/jdom2/ContentList;-><init>(Lorg/jdom2/Parent;)V

    iput-object v1, v0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    .line 692
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v2}, Lorg/jdom2/ContentList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 693
    iget-object v2, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v2, v1}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v2

    .line 694
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lorg/jdom2/Element;

    if-eqz v3, :cond_0

    .line 695
    move-object v3, v2

    check-cast v3, Lorg/jdom2/Element;

    invoke-virtual {v3}, Lorg/jdom2/Element;->clone()Lorg/jdom2/Element;

    move-result-object v3

    .line 696
    .local v3, "element":Lorg/jdom2/Element;
    iget-object v4, v0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v4, v3}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    .line 697
    .end local v3    # "element":Lorg/jdom2/Element;
    goto :goto_1

    .line 698
    :cond_0
    instance-of v3, v2, Lorg/jdom2/Comment;

    if-eqz v3, :cond_1

    .line 699
    move-object v3, v2

    check-cast v3, Lorg/jdom2/Comment;

    invoke-virtual {v3}, Lorg/jdom2/Comment;->clone()Lorg/jdom2/Comment;

    move-result-object v3

    .line 700
    .local v3, "comment":Lorg/jdom2/Comment;
    iget-object v4, v0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v4, v3}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    .line 701
    .end local v3    # "comment":Lorg/jdom2/Comment;
    goto :goto_1

    .line 702
    :cond_1
    instance-of v3, v2, Lorg/jdom2/ProcessingInstruction;

    if-eqz v3, :cond_2

    .line 703
    move-object v3, v2

    check-cast v3, Lorg/jdom2/ProcessingInstruction;

    invoke-virtual {v3}, Lorg/jdom2/ProcessingInstruction;->clone()Lorg/jdom2/ProcessingInstruction;

    move-result-object v3

    .line 704
    .local v3, "pi":Lorg/jdom2/ProcessingInstruction;
    iget-object v4, v0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v4, v3}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    .line 705
    .end local v3    # "pi":Lorg/jdom2/ProcessingInstruction;
    goto :goto_1

    .line 706
    :cond_2
    instance-of v3, v2, Lorg/jdom2/DocType;

    if-eqz v3, :cond_3

    .line 707
    move-object v3, v2

    check-cast v3, Lorg/jdom2/DocType;

    invoke-virtual {v3}, Lorg/jdom2/DocType;->clone()Lorg/jdom2/DocType;

    move-result-object v3

    .line 708
    .local v3, "dt":Lorg/jdom2/DocType;
    iget-object v4, v0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v4, v3}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    .line 692
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "dt":Lorg/jdom2/DocType;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    .end local v1    # "i":I
    :cond_4
    return-object v0
.end method

.method public cloneContent()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Lorg/jdom2/Document;->getContentSize()I

    move-result v0

    .line 380
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 381
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 382
    invoke-virtual {p0, v2}, Lorg/jdom2/Document;->getContent(I)Lorg/jdom2/Content;

    move-result-object v3

    .line 383
    .local v3, "child":Lorg/jdom2/Content;
    invoke-virtual {v3}, Lorg/jdom2/Content;->clone()Lorg/jdom2/Content;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    .end local v3    # "child":Lorg/jdom2/Content;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public detachRootElement()Lorg/jdom2/Element;
    .locals 2

    .line 252
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfFirstElement()I

    move-result v0

    .line 253
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 254
    const/4 v1, 0x0

    return-object v1

    .line 255
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jdom2/Document;->removeContent(I)Lorg/jdom2/Content;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "ob"    # Ljava/lang/Object;

    .line 664
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getBaseURI()Ljava/lang/String;
    .locals 1

    .line 530
    iget-object v0, p0, Lorg/jdom2/Document;->baseURI:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    return-object v0

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root element not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContent(Lorg/jdom2/filter/Filter;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Lorg/jdom2/Content;",
            ">(",
            "Lorg/jdom2/filter/Filter<",
            "TF;>;)",
            "Ljava/util/List<",
            "TF;>;"
        }
    .end annotation

    .line 434
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TF;>;"
    invoke-virtual {p0}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->getView(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root element not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContent(I)Lorg/jdom2/Content;
    .locals 1
    .param p1, "index"    # I

    .line 390
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public getContentSize()I
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->size()I

    move-result v0

    return v0
.end method

.method public getDescendants()Lorg/jdom2/util/IteratorIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdom2/util/IteratorIterable<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .line 722
    new-instance v0, Lorg/jdom2/DescendantIterator;

    invoke-direct {v0, p0}, Lorg/jdom2/DescendantIterator;-><init>(Lorg/jdom2/Parent;)V

    return-object v0
.end method

.method public getDescendants(Lorg/jdom2/filter/Filter;)Lorg/jdom2/util/IteratorIterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Lorg/jdom2/Content;",
            ">(",
            "Lorg/jdom2/filter/Filter<",
            "TF;>;)",
            "Lorg/jdom2/util/IteratorIterable<",
            "TF;>;"
        }
    .end annotation

    .line 736
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TF;>;"
    new-instance v0, Lorg/jdom2/FilterIterator;

    new-instance v1, Lorg/jdom2/DescendantIterator;

    invoke-direct {v1, p0}, Lorg/jdom2/DescendantIterator;-><init>(Lorg/jdom2/Parent;)V

    invoke-direct {v0, v1, p1}, Lorg/jdom2/FilterIterator;-><init>(Lorg/jdom2/DescendantIterator;Lorg/jdom2/filter/Filter;)V

    return-object v0
.end method

.method public getDocType()Lorg/jdom2/DocType;
    .locals 2

    .line 266
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfDocType()I

    move-result v0

    .line 267
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 268
    const/4 v1, 0x0

    return-object v1

    .line 270
    :cond_0
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v1

    check-cast v1, Lorg/jdom2/DocType;

    return-object v1
.end method

.method public getDocument()Lorg/jdom2/Document;
    .locals 0

    .line 756
    return-object p0
.end method

.method public getNamespacesInScope()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .line 855
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jdom2/Namespace;

    sget-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNamespacesInherited()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .line 867
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNamespacesIntroduced()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .line 861
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jdom2/Namespace;

    sget-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/jdom2/Parent;
    .locals 1

    .line 745
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 785
    iget-object v0, p0, Lorg/jdom2/Document;->propertyMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 786
    const/4 v0, 0x0

    return-object v0

    .line 788
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRootElement()Lorg/jdom2/Element;
    .locals 3

    .line 218
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfFirstElement()I

    move-result v0

    .line 219
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 222
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    return-object v1

    .line 220
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Root element not set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasRootElement()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfFirstElement()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 674
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Lorg/jdom2/Content;)I
    .locals 1
    .param p1, "child"    # Lorg/jdom2/Content;

    .line 179
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public removeContent()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 447
    .local v0, "old":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1}, Lorg/jdom2/ContentList;->clear()V

    .line 448
    return-object v0
.end method

.method public removeContent(Lorg/jdom2/filter/Filter;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Lorg/jdom2/Content;",
            ">(",
            "Lorg/jdom2/filter/Filter<",
            "TF;>;)",
            "Ljava/util/List<",
            "TF;>;"
        }
    .end annotation

    .line 459
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TF;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v0, "old":Ljava/util/List;, "Ljava/util/List<TF;>;"
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1, p1}, Lorg/jdom2/ContentList;->getView(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 461
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<TF;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Content;

    .line 463
    .local v2, "child":Lorg/jdom2/Content;, "TF;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 465
    .end local v2    # "child":Lorg/jdom2/Content;, "TF;"
    goto :goto_0

    .line 466
    :cond_0
    return-object v0
.end method

.method public removeContent(I)Lorg/jdom2/Content;
    .locals 1
    .param p1, "index"    # I

    .line 582
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public removeContent(Lorg/jdom2/Content;)Z
    .locals 1
    .param p1, "child"    # Lorg/jdom2/Content;

    .line 577
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setBaseURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .line 518
    iput-object p1, p0, Lorg/jdom2/Document;->baseURI:Ljava/lang/String;

    .line 519
    return-void
.end method

.method public setContent(ILjava/util/Collection;)Lorg/jdom2/Document;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Lorg/jdom2/Document;"
        }
    .end annotation

    .line 570
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    .line 571
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom2/ContentList;->addAll(ILjava/util/Collection;)Z

    .line 572
    return-object p0
.end method

.method public setContent(ILorg/jdom2/Content;)Lorg/jdom2/Document;
    .locals 1
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom2/Content;

    .line 549
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom2/ContentList;->set(ILorg/jdom2/Content;)Lorg/jdom2/Content;

    .line 550
    return-object p0
.end method

.method public setContent(Ljava/util/Collection;)Lorg/jdom2/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Lorg/jdom2/Document;"
        }
    .end annotation

    .line 504
    .local p1, "newContent":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->clearAndSet(Ljava/util/Collection;)V

    .line 505
    return-object p0
.end method

.method public setContent(Lorg/jdom2/Content;)Lorg/jdom2/Document;
    .locals 1
    .param p1, "child"    # Lorg/jdom2/Content;

    .line 613
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->clear()V

    .line 614
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    .line 615
    return-object p0
.end method

.method public setDocType(Lorg/jdom2/DocType;)Lorg/jdom2/Document;
    .locals 3
    .param p1, "docType"    # Lorg/jdom2/DocType;

    .line 287
    if-nez p1, :cond_1

    .line 289
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfDocType()I

    move-result v0

    .line 290
    .local v0, "docTypeIndex":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    .line 291
    :cond_0
    return-object p0

    .line 294
    .end local v0    # "docTypeIndex":I
    :cond_1
    invoke-virtual {p1}, Lorg/jdom2/DocType;->getParent()Lorg/jdom2/Document;

    move-result-object v0

    if-nez v0, :cond_3

    .line 300
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfDocType()I

    move-result v0

    .line 301
    .restart local v0    # "docTypeIndex":I
    if-gez v0, :cond_2

    .line 302
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lorg/jdom2/ContentList;->add(ILorg/jdom2/Content;)V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1, v0, p1}, Lorg/jdom2/ContentList;->set(ILorg/jdom2/Content;)Lorg/jdom2/Content;

    .line 308
    :goto_0
    return-object p0

    .line 295
    .end local v0    # "docTypeIndex":I
    :cond_3
    new-instance v0, Lorg/jdom2/IllegalAddException;

    const-string v1, "The DocType already is attached to a document"

    invoke-direct {v0, p1, v1}, Lorg/jdom2/IllegalAddException;-><init>(Lorg/jdom2/DocType;Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 770
    iget-object v0, p0, Lorg/jdom2/Document;->propertyMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 771
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jdom2/Document;->propertyMap:Ljava/util/HashMap;

    .line 773
    :cond_0
    iget-object v0, p0, Lorg/jdom2/Document;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    return-void
.end method

.method public setRootElement(Lorg/jdom2/Element;)Lorg/jdom2/Document;
    .locals 2
    .param p1, "rootElement"    # Lorg/jdom2/Element;

    .line 236
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfFirstElement()I

    move-result v0

    .line 237
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 238
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1, p1}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_0
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1, v0, p1}, Lorg/jdom2/ContentList;->set(ILorg/jdom2/Content;)Lorg/jdom2/Content;

    .line 243
    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Document: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 633
    .local v0, "stringForm":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jdom2/Document;->getDocType()Lorg/jdom2/DocType;

    move-result-object v1

    .line 634
    .local v1, "docType":Lorg/jdom2/DocType;
    if-eqz v1, :cond_0

    .line 635
    invoke-virtual {v1}, Lorg/jdom2/DocType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 638
    :cond_0
    const-string v2, " No DOCTYPE declaration, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    :goto_0
    invoke-virtual {p0}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 642
    .local v2, "rootElement":Lorg/jdom2/Element;
    :goto_1
    if-eqz v2, :cond_2

    .line 643
    const-string v3, "Root is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jdom2/Element;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 646
    :cond_2
    const-string v3, " No root element"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    :goto_2
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
